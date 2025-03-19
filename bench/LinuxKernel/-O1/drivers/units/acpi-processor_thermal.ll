; ModuleID = 'drivers/acpi/processor_thermal.c'
source_filename = "drivers/acpi/processor_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.16, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.18, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.acpi_processor = type { ptr, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, ptr, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, ptr, ptr, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.13, i32 }
%union.anon.13 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, ptr, %struct.acpi_tsd_package, [1 x %struct.cpumask], ptr, ptr, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device = type { i32, ptr, i64, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.14, i32, i32, %struct.list_head }
%struct.anon.14 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }

@processors = external dso_local global ptr, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [48 x i8] c"\013Failed to add freq constraint for CPU%d (%d)\0A\00", align 1, !dbg !0
@processor_cooling_ops = hidden constant %struct.thermal_cooling_device_ops { ptr @processor_get_max_state, ptr @processor_get_cur_state, ptr @processor_set_cur_state, ptr null, ptr null, ptr null }, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1, !dbg !2099
@.str.2 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1, !dbg !2104
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to create sysfs link 'thermal_cooling'\0A\00", align 1, !dbg !2106
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1, !dbg !2111
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to create sysfs link 'device'\0A\00", align 1, !dbg !2114
@acpi_processor_cpufreq_init = external dso_local global i8, align 1
@cpufreq_thermal_reduction_pctg = internal global i32 0, section ".data..percpu", align 4, !dbg !2119
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"\014Failed to update thermal freq constraint: CPU%d (%d)\0A\00", align 1, !dbg !2121

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_thermal_cpufreq_init(ptr noundef %policy) #0 align 16 !dbg !2132 {
entry:
  %policy.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3282, metadata !DIExpression()), !dbg !3294
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #9, !dbg !3295
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3283, metadata !DIExpression()), !dbg !3296
  store i32 0, ptr %cpu, align 4, !dbg !3297
  br label %for.cond, !dbg !3297

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3298
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1, !dbg !3298
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %related_cpus, i64 0, i64 0, !dbg !3298
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3298
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3298
  %1 = load i32, ptr %cpu, align 4, !dbg !3298
  %conv = zext i32 %1 to i64, !dbg !3298
  %call = call i64 @find_next_bit(ptr noundef %arraydecay1, i64 noundef 64, i64 noundef %conv) #10, !dbg !3298
  %conv2 = trunc i64 %call to i32, !dbg !3298
  store i32 %conv2, ptr %cpu, align 4, !dbg !3298
  %2 = load i32, ptr %cpu, align 4, !dbg !3298
  %cmp = icmp ult i32 %2, 64, !dbg !3298
  br i1 %cmp, label %for.body, label %for.end, !dbg !3297

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #9, !dbg !3299
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3284, metadata !DIExpression()), !dbg !3300
  br label %do.body, !dbg !3301

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3302
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3288, metadata !DIExpression()), !dbg !3302
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3302
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3301
  br label %do.cond, !dbg !3302

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3302

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !3303
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3291, metadata !DIExpression()), !dbg !3303
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !3303
  %4 = load i64, ptr %__ptr, align 8, !dbg !3303
  %5 = load i32, ptr %cpu, align 4, !dbg !3303
  %idxprom = zext i32 %5 to i64, !dbg !3303
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3303
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3303
  %add = add i64 %4, %6, !dbg !3303
  %7 = inttoptr i64 %add to ptr, !dbg !3303
  store ptr %7, ptr %tmp4, align 8, !dbg !3303
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !3301
  %8 = load ptr, ptr %tmp4, align 8, !dbg !3303
  store ptr %8, ptr %tmp, align 8, !dbg !3302
  %9 = load ptr, ptr %tmp, align 8, !dbg !3301
  %10 = load ptr, ptr %9, align 8, !dbg !3304
  store ptr %10, ptr %pr, align 8, !dbg !3300
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3293, metadata !DIExpression()), !dbg !3306
  %11 = load ptr, ptr %pr, align 8, !dbg !3307
  %tobool = icmp ne ptr %11, null, !dbg !3307
  br i1 %tobool, label %if.end, label %if.then, !dbg !3309

if.then:                                          ; preds = %do.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3310

if.end:                                           ; preds = %do.end
  %12 = load ptr, ptr %policy.addr, align 8, !dbg !3311
  %constraints = getelementptr inbounds %struct.cpufreq_policy, ptr %12, i32 0, i32 17, !dbg !3312
  %13 = load ptr, ptr %pr, align 8, !dbg !3313
  %thermal_req = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 15, !dbg !3314
  %call5 = call i32 @freq_qos_add_request(ptr noundef %constraints, ptr noundef %thermal_req, i32 noundef 2, i32 noundef 2147483647) #10, !dbg !3315
  store i32 %call5, ptr %ret, align 4, !dbg !3316
  %14 = load i32, ptr %ret, align 4, !dbg !3317
  %cmp6 = icmp slt i32 %14, 0, !dbg !3319
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !3320

if.then8:                                         ; preds = %if.end
  br label %do.body9, !dbg !3321

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !3324

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3324

do.end11:                                         ; preds = %do.cond10
  %15 = load i32, ptr %cpu, align 4, !dbg !3321
  %16 = load i32, ptr %ret, align 4, !dbg !3321
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %15, i32 noundef %16) #11, !dbg !3321
  store i32 %call13, ptr %tmp12, align 4, !dbg !3324
  %17 = load i32, ptr %tmp12, align 4, !dbg !3321
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3326

if.end14:                                         ; preds = %if.end
  %18 = load ptr, ptr %pr, align 8, !dbg !3327
  %cdev = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 12, !dbg !3328
  %19 = load ptr, ptr %cdev, align 8, !dbg !3328
  call void @thermal_cooling_device_update(ptr noundef %19) #10, !dbg !3329
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3330
  br label %cleanup, !dbg !3330

cleanup:                                          ; preds = %if.end14, %do.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !3330
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #9, !dbg !3330
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3331

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, ptr %cpu, align 4, !dbg !3298
  %inc = add i32 %20, 1, !dbg !3298
  store i32 %inc, ptr %cpu, align 4, !dbg !3298
  br label %for.cond, !dbg !3298, !llvm.loop !3332

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #9, !dbg !3336
  ret void, !dbg !3336

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !3337 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3344, metadata !DIExpression()), !dbg !3350
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3345, metadata !DIExpression()), !dbg !3351
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3346, metadata !DIExpression()), !dbg !3352
  %0 = load i64, ptr %size.addr, align 8, !dbg !3353
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3353
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3353

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3353
  %cmp = icmp ule i64 %2, 64, !dbg !3353
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3353

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3353
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3353
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3354

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3347, metadata !DIExpression()), !dbg !3356
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3357
  %5 = load i64, ptr %size.addr, align 8, !dbg !3357
  %cmp3 = icmp uge i64 %4, %5, !dbg !3357
  %lnot = xor i1 %cmp3, true, !dbg !3357
  %lnot4 = xor i1 %lnot, true, !dbg !3357
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3357
  %conv = sext i32 %lnot.ext to i64, !dbg !3357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3357
  %tobool = icmp ne i64 %expval, 0, !dbg !3357
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3359

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3360
  store i64 %6, ptr %retval, align 8, !dbg !3361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3361

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3362
  %8 = load i64, ptr %7, align 8, !dbg !3363
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3364
  %shl = shl i64 1, %9, !dbg !3364
  %sub = sub i64 -1, %shl, !dbg !3364
  %add = add i64 %sub, 1, !dbg !3364
  %10 = load i64, ptr %size.addr, align 8, !dbg !3364
  %sub6 = sub i64 %10, 1, !dbg !3364
  %sub7 = sub i64 63, %sub6, !dbg !3364
  %shr = lshr i64 -1, %sub7, !dbg !3364
  %and = and i64 %add, %shr, !dbg !3364
  %add8 = add i64 0, %and, !dbg !3364
  %and9 = and i64 %8, %add8, !dbg !3365
  store i64 %and9, ptr %val, align 8, !dbg !3366
  %11 = load i64, ptr %val, align 8, !dbg !3367
  %tobool10 = icmp ne i64 %11, 0, !dbg !3367
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3367

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3368
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3368
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3368

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3368
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3368
  %cast = trunc i64 %15 to i32, !dbg !3368
  %conv12 = sext i32 %cast to i64, !dbg !3368
  br label %cond.end, !dbg !3368

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3368
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !3368
  br label %cond.end, !dbg !3368

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3368
  br label %cond.end14, !dbg !3367

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3369
  br label %cond.end14, !dbg !3367

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3367
  store i64 %cond15, ptr %retval, align 8, !dbg !3370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3370

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !3371
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3372
  %19 = load i64, ptr %size.addr, align 8, !dbg !3373
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3374
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !3375
  store i64 %call17, ptr %retval, align 8, !dbg !3376
  br label %return, !dbg !3376

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3377
  ret i64 %21, !dbg !3377
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3378 dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3381 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3385 dso_local void @thermal_cooling_device_update(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_thermal_cpufreq_exit(ptr noundef %policy) #0 align 16 !dbg !3388 {
entry:
  %policy.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3390, metadata !DIExpression()), !dbg !3401
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #9, !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3391, metadata !DIExpression()), !dbg !3403
  store i32 0, ptr %cpu, align 4, !dbg !3404
  br label %for.cond, !dbg !3404

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3405
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1, !dbg !3405
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %related_cpus, i64 0, i64 0, !dbg !3405
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3405
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3405
  %1 = load i32, ptr %cpu, align 4, !dbg !3405
  %conv = zext i32 %1 to i64, !dbg !3405
  %call = call i64 @find_next_bit(ptr noundef %arraydecay1, i64 noundef 64, i64 noundef %conv) #10, !dbg !3405
  %conv2 = trunc i64 %call to i32, !dbg !3405
  store i32 %conv2, ptr %cpu, align 4, !dbg !3405
  %2 = load i32, ptr %cpu, align 4, !dbg !3405
  %cmp = icmp ult i32 %2, 64, !dbg !3405
  br i1 %cmp, label %for.body, label %for.end, !dbg !3404

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #9, !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3392, metadata !DIExpression()), !dbg !3407
  br label %do.body, !dbg !3408

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3409
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3396, metadata !DIExpression()), !dbg !3409
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3409
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3409
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3408
  br label %do.cond, !dbg !3409

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3409

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3399, metadata !DIExpression()), !dbg !3410
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !3410
  %4 = load i64, ptr %__ptr, align 8, !dbg !3410
  %5 = load i32, ptr %cpu, align 4, !dbg !3410
  %idxprom = zext i32 %5 to i64, !dbg !3410
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3410
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3410
  %add = add i64 %4, %6, !dbg !3410
  %7 = inttoptr i64 %add to ptr, !dbg !3410
  store ptr %7, ptr %tmp4, align 8, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !3408
  %8 = load ptr, ptr %tmp4, align 8, !dbg !3410
  store ptr %8, ptr %tmp, align 8, !dbg !3409
  %9 = load ptr, ptr %tmp, align 8, !dbg !3408
  %10 = load ptr, ptr %9, align 8, !dbg !3411
  store ptr %10, ptr %pr, align 8, !dbg !3407
  %11 = load ptr, ptr %pr, align 8, !dbg !3412
  %tobool = icmp ne ptr %11, null, !dbg !3412
  br i1 %tobool, label %if.end, label %if.then, !dbg !3414

if.then:                                          ; preds = %do.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3415

if.end:                                           ; preds = %do.end
  %12 = load ptr, ptr %pr, align 8, !dbg !3416
  %thermal_req = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 15, !dbg !3417
  %call5 = call i32 @freq_qos_remove_request(ptr noundef %thermal_req) #10, !dbg !3418
  %13 = load ptr, ptr %pr, align 8, !dbg !3419
  %cdev = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 12, !dbg !3420
  %14 = load ptr, ptr %cdev, align 8, !dbg !3420
  call void @thermal_cooling_device_update(ptr noundef %14) #10, !dbg !3421
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3422
  br label %cleanup, !dbg !3422

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #9, !dbg !3422
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3423

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %15 = load i32, ptr %cpu, align 4, !dbg !3405
  %inc = add i32 %15, 1, !dbg !3405
  store i32 %inc, ptr %cpu, align 4, !dbg !3405
  br label %for.cond, !dbg !3405, !llvm.loop !3424

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #9, !dbg !3426
  ret void, !dbg !3426

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3427 dso_local i32 @freq_qos_remove_request(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @processor_get_max_state(ptr noundef %cdev, ptr noundef %state) #0 align 16 !dbg !3430 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3432, metadata !DIExpression()), !dbg !3694
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3433, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #9, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3434, metadata !DIExpression()), !dbg !3697
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !3698
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !3699
  %1 = load ptr, ptr %devdata, align 8, !dbg !3699
  store ptr %1, ptr %device, align 8, !dbg !3697
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #9, !dbg !3700
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3693, metadata !DIExpression()), !dbg !3701
  %2 = load ptr, ptr %device, align 8, !dbg !3702
  %tobool = icmp ne ptr %2, null, !dbg !3702
  br i1 %tobool, label %if.end, label %if.then, !dbg !3704

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3705

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device, align 8, !dbg !3706
  %call = call ptr @acpi_driver_data(ptr noundef %3) #10, !dbg !3707
  store ptr %call, ptr %pr, align 8, !dbg !3708
  %4 = load ptr, ptr %pr, align 8, !dbg !3709
  %tobool1 = icmp ne ptr %4, null, !dbg !3709
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3711

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3712

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pr, align 8, !dbg !3713
  %call4 = call i32 @acpi_processor_max_state(ptr noundef %5) #10, !dbg !3714
  %conv = sext i32 %call4 to i64, !dbg !3714
  %6 = load ptr, ptr %state.addr, align 8, !dbg !3715
  store i64 %conv, ptr %6, align 8, !dbg !3716
  store i32 0, ptr %retval, align 4, !dbg !3717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3717

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #9, !dbg !3718
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #9, !dbg !3718
  %7 = load i32, ptr %retval, align 4, !dbg !3718
  ret i32 %7, !dbg !3718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @processor_get_cur_state(ptr noundef %cdev, ptr noundef %cur_state) #0 align 16 !dbg !3719 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca ptr, align 8
  %cur_state.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3721, metadata !DIExpression()), !dbg !3725
  store ptr %cur_state, ptr %cur_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur_state.addr, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #9, !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3723, metadata !DIExpression()), !dbg !3728
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !3729
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !3730
  %1 = load ptr, ptr %devdata, align 8, !dbg !3730
  store ptr %1, ptr %device, align 8, !dbg !3728
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #9, !dbg !3731
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3724, metadata !DIExpression()), !dbg !3732
  %2 = load ptr, ptr %device, align 8, !dbg !3733
  %tobool = icmp ne ptr %2, null, !dbg !3733
  br i1 %tobool, label %if.end, label %if.then, !dbg !3735

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3736

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device, align 8, !dbg !3737
  %call = call ptr @acpi_driver_data(ptr noundef %3) #10, !dbg !3738
  store ptr %call, ptr %pr, align 8, !dbg !3739
  %4 = load ptr, ptr %pr, align 8, !dbg !3740
  %tobool1 = icmp ne ptr %4, null, !dbg !3740
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3742

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3743

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pr, align 8, !dbg !3744
  %id = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 3, !dbg !3745
  %6 = load i32, ptr %id, align 8, !dbg !3745
  %call4 = call i32 @cpufreq_get_cur_state(i32 noundef %6) #10, !dbg !3746
  %conv = sext i32 %call4 to i64, !dbg !3746
  %7 = load ptr, ptr %cur_state.addr, align 8, !dbg !3747
  store i64 %conv, ptr %7, align 8, !dbg !3748
  %8 = load ptr, ptr %pr, align 8, !dbg !3749
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 7, !dbg !3751
  %bf.load = load i16, ptr %flags, align 8, !dbg !3752
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3752
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3752
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3752
  %tobool5 = icmp ne i8 %bf.cast, 0, !dbg !3749
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !3753

if.then6:                                         ; preds = %if.end3
  %9 = load ptr, ptr %pr, align 8, !dbg !3754
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 10, !dbg !3755
  %state = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 0, !dbg !3756
  %10 = load i32, ptr %state, align 8, !dbg !3756
  %conv7 = zext i32 %10 to i64, !dbg !3754
  %11 = load ptr, ptr %cur_state.addr, align 8, !dbg !3757
  %12 = load i64, ptr %11, align 8, !dbg !3758
  %add = add i64 %12, %conv7, !dbg !3758
  store i64 %add, ptr %11, align 8, !dbg !3758
  br label %if.end8, !dbg !3759

if.end8:                                          ; preds = %if.then6, %if.end3
  store i32 0, ptr %retval, align 4, !dbg !3760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3760

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #9, !dbg !3761
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #9, !dbg !3761
  %13 = load i32, ptr %retval, align 4, !dbg !3761
  ret i32 %13, !dbg !3761
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @processor_set_cur_state(ptr noundef %cdev, i64 noundef %state) #0 align 16 !dbg !3762 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca ptr, align 8
  %state.addr = alloca i64, align 8
  %device = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %result = alloca i32, align 4
  %max_pstate = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3764, metadata !DIExpression()), !dbg !3770
  store i64 %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3765, metadata !DIExpression()), !dbg !3771
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #9, !dbg !3772
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3766, metadata !DIExpression()), !dbg !3773
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !3774
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !3775
  %1 = load ptr, ptr %devdata, align 8, !dbg !3775
  store ptr %1, ptr %device, align 8, !dbg !3773
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #9, !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3767, metadata !DIExpression()), !dbg !3777
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !3778
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3768, metadata !DIExpression()), !dbg !3779
  store i32 0, ptr %result, align 4, !dbg !3779
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_pstate) #9, !dbg !3780
  call void @llvm.dbg.declare(metadata ptr %max_pstate, metadata !3769, metadata !DIExpression()), !dbg !3781
  %2 = load ptr, ptr %device, align 8, !dbg !3782
  %tobool = icmp ne ptr %2, null, !dbg !3782
  br i1 %tobool, label %if.end, label %if.then, !dbg !3784

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3785

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device, align 8, !dbg !3786
  %call = call ptr @acpi_driver_data(ptr noundef %3) #10, !dbg !3787
  store ptr %call, ptr %pr, align 8, !dbg !3788
  %4 = load ptr, ptr %pr, align 8, !dbg !3789
  %tobool1 = icmp ne ptr %4, null, !dbg !3789
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3791

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3792

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pr, align 8, !dbg !3793
  %id = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 3, !dbg !3794
  %6 = load i32, ptr %id, align 8, !dbg !3794
  %call4 = call i32 @cpufreq_get_max_state(i32 noundef %6) #10, !dbg !3795
  store i32 %call4, ptr %max_pstate, align 4, !dbg !3796
  %7 = load i64, ptr %state.addr, align 8, !dbg !3797
  %8 = load ptr, ptr %pr, align 8, !dbg !3799
  %call5 = call i32 @acpi_processor_max_state(ptr noundef %8) #10, !dbg !3800
  %conv = sext i32 %call5 to i64, !dbg !3800
  %cmp = icmp ugt i64 %7, %conv, !dbg !3801
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !3802

if.then7:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !3803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3803

if.end8:                                          ; preds = %if.end3
  %9 = load i64, ptr %state.addr, align 8, !dbg !3804
  %10 = load i32, ptr %max_pstate, align 4, !dbg !3806
  %conv9 = sext i32 %10 to i64, !dbg !3806
  %cmp10 = icmp ule i64 %9, %conv9, !dbg !3807
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !3808

if.then12:                                        ; preds = %if.end8
  %11 = load ptr, ptr %pr, align 8, !dbg !3809
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 7, !dbg !3812
  %bf.load = load i16, ptr %flags, align 8, !dbg !3813
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3813
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3813
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3813
  %conv13 = zext i8 %bf.cast to i32, !dbg !3809
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !3809
  br i1 %tobool14, label %land.lhs.true, label %if.end19, !dbg !3814

land.lhs.true:                                    ; preds = %if.then12
  %12 = load ptr, ptr %pr, align 8, !dbg !3815
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 10, !dbg !3816
  %state15 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 0, !dbg !3817
  %13 = load i32, ptr %state15, align 8, !dbg !3817
  %tobool16 = icmp ne i32 %13, 0, !dbg !3815
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !3818

if.then17:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %pr, align 8, !dbg !3819
  %call18 = call i32 @acpi_processor_set_throttling(ptr noundef %14, i32 noundef 0, i1 noundef zeroext false) #10, !dbg !3820
  store i32 %call18, ptr %result, align 4, !dbg !3821
  br label %if.end19, !dbg !3822

if.end19:                                         ; preds = %if.then17, %land.lhs.true, %if.then12
  %15 = load ptr, ptr %pr, align 8, !dbg !3823
  %id20 = getelementptr inbounds %struct.acpi_processor, ptr %15, i32 0, i32 3, !dbg !3824
  %16 = load i32, ptr %id20, align 8, !dbg !3824
  %17 = load i64, ptr %state.addr, align 8, !dbg !3825
  %conv21 = trunc i64 %17 to i32, !dbg !3825
  %call22 = call i32 @cpufreq_set_cur_state(i32 noundef %16, i32 noundef %conv21) #10, !dbg !3826
  br label %if.end28, !dbg !3827

if.else:                                          ; preds = %if.end8
  %18 = load ptr, ptr %pr, align 8, !dbg !3828
  %id23 = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 3, !dbg !3830
  %19 = load i32, ptr %id23, align 8, !dbg !3830
  %20 = load i32, ptr %max_pstate, align 4, !dbg !3831
  %call24 = call i32 @cpufreq_set_cur_state(i32 noundef %19, i32 noundef %20) #10, !dbg !3832
  %21 = load ptr, ptr %pr, align 8, !dbg !3833
  %22 = load i64, ptr %state.addr, align 8, !dbg !3834
  %23 = load i32, ptr %max_pstate, align 4, !dbg !3835
  %conv25 = sext i32 %23 to i64, !dbg !3835
  %sub = sub i64 %22, %conv25, !dbg !3836
  %conv26 = trunc i64 %sub to i32, !dbg !3834
  %call27 = call i32 @acpi_processor_set_throttling(ptr noundef %21, i32 noundef %conv26, i1 noundef zeroext false) #10, !dbg !3837
  store i32 %call27, ptr %result, align 4, !dbg !3838
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end19
  %24 = load i32, ptr %result, align 4, !dbg !3839
  store i32 %24, ptr %retval, align 4, !dbg !3840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3840

cleanup:                                          ; preds = %if.end28, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_pstate) #9, !dbg !3841
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !3841
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #9, !dbg !3841
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #9, !dbg !3841
  %25 = load i32, ptr %retval, align 4, !dbg !3841
  ret i32 %25, !dbg !3841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_thermal_init(ptr noundef %pr, ptr noundef %device) #0 align 16 !dbg !3842 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3846, metadata !DIExpression()), !dbg !3851
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3847, metadata !DIExpression()), !dbg !3852
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3848, metadata !DIExpression()), !dbg !3854
  store i32 0, ptr %result, align 4, !dbg !3854
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3855
  %call = call ptr @thermal_cooling_device_register(ptr noundef @.str.1, ptr noundef %0, ptr noundef @processor_cooling_ops) #10, !dbg !3856
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !3857
  %cdev = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 12, !dbg !3858
  store ptr %call, ptr %cdev, align 8, !dbg !3859
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !3860
  %cdev1 = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 12, !dbg !3862
  %3 = load ptr, ptr %cdev1, align 8, !dbg !3862
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %3) #10, !dbg !3863
  br i1 %call2, label %if.then, label %if.end, !dbg !3864

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !3865
  %cdev3 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 12, !dbg !3867
  %5 = load ptr, ptr %cdev3, align 8, !dbg !3867
  %call4 = call i64 @PTR_ERR(ptr noundef %5) #10, !dbg !3868
  %conv = trunc i64 %call4 to i32, !dbg !3868
  store i32 %conv, ptr %result, align 4, !dbg !3869
  %6 = load i32, ptr %result, align 4, !dbg !3870
  store i32 %6, ptr %retval, align 4, !dbg !3871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3871

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %device.addr, align 8, !dbg !3872
  %dev = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 18, !dbg !3873
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !3874
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !3875
  %cdev5 = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 12, !dbg !3876
  %9 = load ptr, ptr %cdev5, align 8, !dbg !3876
  %device6 = getelementptr inbounds %struct.thermal_cooling_device, ptr %9, i32 0, i32 3, !dbg !3877
  %kobj7 = getelementptr inbounds %struct.device, ptr %device6, i32 0, i32 0, !dbg !3878
  %call8 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj7, ptr noundef @.str.2) #10, !dbg !3879
  store i32 %call8, ptr %result, align 4, !dbg !3880
  %10 = load i32, ptr %result, align 4, !dbg !3881
  %tobool = icmp ne i32 %10, 0, !dbg !3881
  br i1 %tobool, label %if.then9, label %if.end11, !dbg !3883

if.then9:                                         ; preds = %if.end
  br label %do.body, !dbg !3884

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !3887

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3887

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %device.addr, align 8, !dbg !3884
  %dev10 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 18, !dbg !3884
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef @.str.3) #11, !dbg !3884
  br label %err_thermal_unregister, !dbg !3889

if.end11:                                         ; preds = %if.end
  %12 = load ptr, ptr %pr.addr, align 8, !dbg !3890
  %cdev12 = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 12, !dbg !3891
  %13 = load ptr, ptr %cdev12, align 8, !dbg !3891
  %device13 = getelementptr inbounds %struct.thermal_cooling_device, ptr %13, i32 0, i32 3, !dbg !3892
  %kobj14 = getelementptr inbounds %struct.device, ptr %device13, i32 0, i32 0, !dbg !3893
  %14 = load ptr, ptr %device.addr, align 8, !dbg !3894
  %dev15 = getelementptr inbounds %struct.acpi_device, ptr %14, i32 0, i32 18, !dbg !3895
  %kobj16 = getelementptr inbounds %struct.device, ptr %dev15, i32 0, i32 0, !dbg !3896
  %call17 = call i32 @sysfs_create_link(ptr noundef %kobj14, ptr noundef %kobj16, ptr noundef @.str.4) #10, !dbg !3897
  store i32 %call17, ptr %result, align 4, !dbg !3898
  %15 = load i32, ptr %result, align 4, !dbg !3899
  %tobool18 = icmp ne i32 %15, 0, !dbg !3899
  br i1 %tobool18, label %if.then19, label %if.end25, !dbg !3901

if.then19:                                        ; preds = %if.end11
  br label %do.body20, !dbg !3902

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !3905

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3905

do.end22:                                         ; preds = %do.cond21
  %16 = load ptr, ptr %pr.addr, align 8, !dbg !3902
  %cdev23 = getelementptr inbounds %struct.acpi_processor, ptr %16, i32 0, i32 12, !dbg !3902
  %17 = load ptr, ptr %cdev23, align 8, !dbg !3902
  %device24 = getelementptr inbounds %struct.thermal_cooling_device, ptr %17, i32 0, i32 3, !dbg !3902
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device24, ptr noundef @.str.5) #11, !dbg !3902
  br label %err_remove_sysfs_thermal, !dbg !3907

if.end25:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !3908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3908

err_remove_sysfs_thermal:                         ; preds = %do.end22
  call void @llvm.dbg.label(metadata !3849), !dbg !3909
  %18 = load ptr, ptr %device.addr, align 8, !dbg !3910
  %dev26 = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 18, !dbg !3911
  %kobj27 = getelementptr inbounds %struct.device, ptr %dev26, i32 0, i32 0, !dbg !3912
  call void @sysfs_remove_link(ptr noundef %kobj27, ptr noundef @.str.2) #10, !dbg !3913
  br label %err_thermal_unregister, !dbg !3913

err_thermal_unregister:                           ; preds = %err_remove_sysfs_thermal, %do.end
  call void @llvm.dbg.label(metadata !3850), !dbg !3914
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !3915
  %cdev28 = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 12, !dbg !3916
  %20 = load ptr, ptr %cdev28, align 8, !dbg !3916
  call void @thermal_cooling_device_unregister(ptr noundef %20) #10, !dbg !3917
  %21 = load i32, ptr %result, align 4, !dbg !3918
  store i32 %21, ptr %retval, align 4, !dbg !3919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3919

cleanup:                                          ; preds = %err_thermal_unregister, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !3920
  %22 = load i32, ptr %retval, align 4, !dbg !3920
  ret i32 %22, !dbg !3920
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3921 dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !3924 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3931
  %1 = ptrtoint ptr %0 to i64, !dbg !3931
  %2 = inttoptr i64 %1 to ptr, !dbg !3931
  %3 = ptrtoint ptr %2 to i64, !dbg !3931
  %cmp = icmp uge i64 %3, -4095, !dbg !3931
  %lnot = xor i1 %cmp, true, !dbg !3931
  %lnot1 = xor i1 %lnot, true, !dbg !3931
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3931
  %conv = sext i32 %lnot.ext to i64, !dbg !3931
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3931
  %tobool = icmp ne i64 %expval, 0, !dbg !3931
  ret i1 %tobool, !dbg !3932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !3933 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3937, metadata !DIExpression()), !dbg !3938
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3939
  %1 = ptrtoint ptr %0 to i64, !dbg !3940
  ret i64 %1, !dbg !3941
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3942 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3945 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3949 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3952 dso_local void @thermal_cooling_device_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_thermal_exit(ptr noundef %pr, ptr noundef %device) #0 align 16 !dbg !3953 {
entry:
  %pr.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3957, metadata !DIExpression()), !dbg !3959
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3958, metadata !DIExpression()), !dbg !3960
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3961
  %cdev = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 12, !dbg !3963
  %1 = load ptr, ptr %cdev, align 8, !dbg !3963
  %tobool = icmp ne ptr %1, null, !dbg !3961
  br i1 %tobool, label %if.then, label %if.end, !dbg !3964

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %device.addr, align 8, !dbg !3965
  %dev = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 18, !dbg !3967
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !3968
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str.2) #10, !dbg !3969
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !3970
  %cdev1 = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 12, !dbg !3971
  %4 = load ptr, ptr %cdev1, align 8, !dbg !3971
  %device2 = getelementptr inbounds %struct.thermal_cooling_device, ptr %4, i32 0, i32 3, !dbg !3972
  %kobj3 = getelementptr inbounds %struct.device, ptr %device2, i32 0, i32 0, !dbg !3973
  call void @sysfs_remove_link(ptr noundef %kobj3, ptr noundef @.str.4) #10, !dbg !3974
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !3975
  %cdev4 = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 12, !dbg !3976
  %6 = load ptr, ptr %cdev4, align 8, !dbg !3976
  call void @thermal_cooling_device_unregister(ptr noundef %6) #10, !dbg !3977
  %7 = load ptr, ptr %pr.addr, align 8, !dbg !3978
  %cdev5 = getelementptr inbounds %struct.acpi_processor, ptr %7, i32 0, i32 12, !dbg !3979
  store ptr null, ptr %cdev5, align 8, !dbg !3980
  br label %if.end, !dbg !3981

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3982
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #8 align 16 !dbg !3983 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3988, metadata !DIExpression()), !dbg !3989
  %0 = load i64, ptr %word.addr, align 8, !dbg !3990
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !3991, !srcloc !3992
  store i64 %1, ptr %word.addr, align 8, !dbg !3991
  %2 = load i64, ptr %word.addr, align 8, !dbg !3993
  ret i64 %2, !dbg !3994
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3995 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #3 align 16 !dbg !3996 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !4000, metadata !DIExpression()), !dbg !4001
  %0 = load ptr, ptr %d.addr, align 8, !dbg !4002
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !4003
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4003
  ret ptr %1, !dbg !4004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_max_state(ptr noundef %pr) #0 align 16 !dbg !4005 {
entry:
  %pr.addr = alloca ptr, align 8
  %max_state = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4007, metadata !DIExpression()), !dbg !4009
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_state) #9, !dbg !4010
  call void @llvm.dbg.declare(metadata ptr %max_state, metadata !4008, metadata !DIExpression()), !dbg !4011
  store i32 0, ptr %max_state, align 4, !dbg !4011
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4012
  %id = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 3, !dbg !4013
  %1 = load i32, ptr %id, align 8, !dbg !4013
  %call = call i32 @cpufreq_get_max_state(i32 noundef %1) #10, !dbg !4014
  %2 = load i32, ptr %max_state, align 4, !dbg !4015
  %add = add i32 %2, %call, !dbg !4015
  store i32 %add, ptr %max_state, align 4, !dbg !4015
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4016
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 7, !dbg !4018
  %bf.load = load i16, ptr %flags, align 8, !dbg !4019
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4019
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4019
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4019
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !4016
  br i1 %tobool, label %if.then, label %if.end, !dbg !4020

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !4021
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 10, !dbg !4022
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !4023
  %5 = load i32, ptr %state_count, align 8, !dbg !4023
  %sub = sub i32 %5, 1, !dbg !4024
  %6 = load i32, ptr %max_state, align 4, !dbg !4025
  %add1 = add i32 %6, %sub, !dbg !4025
  store i32 %add1, ptr %max_state, align 4, !dbg !4025
  br label %if.end, !dbg !4026

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %max_state, align 4, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_state) #9, !dbg !4028
  ret i32 %7, !dbg !4029
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_get_max_state(i32 noundef %cpu) #0 align 16 !dbg !4030 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4034, metadata !DIExpression()), !dbg !4035
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4036
  %call = call i32 @cpu_has_cpufreq(i32 noundef %0) #10, !dbg !4038
  %tobool = icmp ne i32 %call, 0, !dbg !4038
  br i1 %tobool, label %if.end, label %if.then, !dbg !4039

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4040
  br label %return, !dbg !4040

if.end:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !4041
  br label %return, !dbg !4041

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4042
  ret i32 %1, !dbg !4042
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_has_cpufreq(i32 noundef %cpu) #0 align 16 !dbg !4043 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %policy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4045, metadata !DIExpression()), !dbg !4047
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #9, !dbg !4048
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !4046, metadata !DIExpression()), !dbg !4049
  %0 = load i8, ptr @acpi_processor_cpufreq_init, align 1, !dbg !4050, !range !4052, !noundef !552
  %tobool = trunc i8 %0 to i1, !dbg !4050
  br i1 %tobool, label %if.end, label %if.then, !dbg !4053

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4054

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4055
  %call = call ptr @cpufreq_cpu_get(i32 noundef %1) #10, !dbg !4056
  store ptr %call, ptr %policy, align 8, !dbg !4057
  %2 = load ptr, ptr %policy, align 8, !dbg !4058
  %tobool1 = icmp ne ptr %2, null, !dbg !4058
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4060

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %policy, align 8, !dbg !4061
  call void @cpufreq_cpu_put(ptr noundef %3) #10, !dbg !4063
  store i32 1, ptr %retval, align 4, !dbg !4064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4064

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4065

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #9, !dbg !4066
  %4 = load i32, ptr %retval, align 4, !dbg !4066
  ret i32 %4, !dbg !4066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4067 dso_local ptr @cpufreq_cpu_get(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4070 dso_local void @cpufreq_cpu_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_get_cur_state(i32 noundef %cpu) #0 align 16 !dbg !4071 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4073, metadata !DIExpression()), !dbg !4079
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4080
  %call = call i32 @cpu_has_cpufreq(i32 noundef %0) #10, !dbg !4082
  %tobool = icmp ne i32 %call, 0, !dbg !4082
  br i1 %tobool, label %if.end, label %if.then, !dbg !4083

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4084
  br label %return, !dbg !4084

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4085

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4074, metadata !DIExpression()), !dbg !4086
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4086
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4085
  br label %do.end, !dbg !4086

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4087
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4077, metadata !DIExpression()), !dbg !4087
  store i64 ptrtoint (ptr @cpufreq_thermal_reduction_pctg to i64), ptr %__ptr, align 8, !dbg !4087
  %2 = load i64, ptr %__ptr, align 8, !dbg !4087
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !4087
  %call2 = call i32 @phys_package_first_cpu(i32 noundef %3) #10, !dbg !4087
  %idxprom = sext i32 %call2 to i64, !dbg !4087
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4087
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4087
  %add = add i64 %2, %4, !dbg !4087
  %5 = inttoptr i64 %add to ptr, !dbg !4087
  store ptr %5, ptr %tmp1, align 8, !dbg !4087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4085
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4087
  store ptr %6, ptr %tmp, align 8, !dbg !4086
  %7 = load ptr, ptr %tmp, align 8, !dbg !4085
  %8 = load i32, ptr %7, align 4, !dbg !4088
  store i32 %8, ptr %retval, align 4, !dbg !4089
  br label %return, !dbg !4089

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !4090
  ret i32 %9, !dbg !4090
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phys_package_first_cpu(i32 noundef %cpu) #0 align 16 !dbg !4091 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %id = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr10 = alloca i64, align 8
  %tmp11 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4095, metadata !DIExpression()), !dbg !4111
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4112
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4096, metadata !DIExpression()), !dbg !4113
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #9, !dbg !4114
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4097, metadata !DIExpression()), !dbg !4115
  br label %do.body, !dbg !4116

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4117
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4098, metadata !DIExpression()), !dbg !4117
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4117
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4116
  br label %do.cond, !dbg !4117

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4117

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4101, metadata !DIExpression()), !dbg !4118
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4118
  %1 = load i64, ptr %__ptr, align 8, !dbg !4118
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4118
  %idxprom = sext i32 %2 to i64, !dbg !4118
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4118
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4118
  %add = add i64 %1, %3, !dbg !4118
  %4 = inttoptr i64 %add to ptr, !dbg !4118
  store ptr %4, ptr %tmp1, align 8, !dbg !4118
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4116
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4118
  store ptr %5, ptr %tmp, align 8, !dbg !4117
  %6 = load ptr, ptr %tmp, align 8, !dbg !4116
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 26, !dbg !4119
  %7 = load i16, ptr %phys_proc_id, align 2, !dbg !4119
  %conv = zext i16 %7 to i32, !dbg !4119
  store i32 %conv, ptr %id, align 4, !dbg !4115
  store i32 0, ptr %i, align 4, !dbg !4120
  br label %for.cond, !dbg !4120

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, ptr %i, align 4, !dbg !4121
  %conv2 = sext i32 %8 to i64, !dbg !4121
  %call = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv2) #10, !dbg !4121
  %conv3 = trunc i64 %call to i32, !dbg !4121
  store i32 %conv3, ptr %i, align 4, !dbg !4121
  %9 = load i32, ptr %i, align 4, !dbg !4121
  %cmp = icmp ult i32 %9, 64, !dbg !4121
  br i1 %cmp, label %for.body, label %for.end, !dbg !4120

for.body:                                         ; preds = %for.cond
  br label %do.body5, !dbg !4122

do.body5:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #9, !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !4103, metadata !DIExpression()), !dbg !4123
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !4123
  %10 = load ptr, ptr %__vpp_verify6, align 8, !dbg !4123
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #9, !dbg !4122
  br label %do.cond7, !dbg !4123

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !4123

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr10) #9, !dbg !4124
  call void @llvm.dbg.declare(metadata ptr %__ptr10, metadata !4109, metadata !DIExpression()), !dbg !4124
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr10, align 8, !dbg !4124
  %11 = load i64, ptr %__ptr10, align 8, !dbg !4124
  %12 = load i32, ptr %i, align 4, !dbg !4124
  %idxprom12 = sext i32 %12 to i64, !dbg !4124
  %arrayidx13 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom12, !dbg !4124
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !4124
  %add14 = add i64 %11, %13, !dbg !4124
  %14 = inttoptr i64 %add14 to ptr, !dbg !4124
  store ptr %14, ptr %tmp11, align 8, !dbg !4124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr10) #9, !dbg !4122
  %15 = load ptr, ptr %tmp11, align 8, !dbg !4124
  store ptr %15, ptr %tmp9, align 8, !dbg !4123
  %16 = load ptr, ptr %tmp9, align 8, !dbg !4122
  %phys_proc_id15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 26, !dbg !4125
  %17 = load i16, ptr %phys_proc_id15, align 2, !dbg !4125
  %conv16 = zext i16 %17 to i32, !dbg !4125
  %18 = load i32, ptr %id, align 4, !dbg !4126
  %cmp17 = icmp eq i32 %conv16, %18, !dbg !4127
  br i1 %cmp17, label %if.then, label %if.end, !dbg !4128

if.then:                                          ; preds = %do.end8
  %19 = load i32, ptr %i, align 4, !dbg !4129
  store i32 %19, ptr %retval, align 4, !dbg !4130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4130

if.end:                                           ; preds = %do.end8
  br label %for.inc, !dbg !4126

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !dbg !4121
  %inc = add i32 %20, 1, !dbg !4121
  store i32 %inc, ptr %i, align 4, !dbg !4121
  br label %for.cond, !dbg !4121, !llvm.loop !4131

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4133

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #9, !dbg !4134
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4134
  %21 = load i32, ptr %retval, align 4, !dbg !4134
  ret i32 %21, !dbg !4134
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4135 dso_local i32 @acpi_processor_set_throttling(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_set_cur_state(i32 noundef %cpu, i32 noundef %state) #0 align 16 !dbg !4136 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %policy = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %max_freq = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__ptr11 = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  %__vpp_verify18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__ptr22 = alloca i64, align 8
  %tmp23 = alloca ptr, align 8
  %__vpp_verify34 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  %__ptr38 = alloca i64, align 8
  %tmp39 = alloca ptr, align 8
  %__vpp_verify57 = alloca ptr, align 8
  %tmp60 = alloca ptr, align 8
  %__ptr61 = alloca i64, align 8
  %tmp62 = alloca ptr, align 8
  %tmp78 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4140, metadata !DIExpression()), !dbg !4176
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4141, metadata !DIExpression()), !dbg !4177
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #9, !dbg !4178
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !4142, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #9, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4143, metadata !DIExpression()), !dbg !4181
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_freq) #9, !dbg !4182
  call void @llvm.dbg.declare(metadata ptr %max_freq, metadata !4144, metadata !DIExpression()), !dbg !4183
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4145, metadata !DIExpression()), !dbg !4185
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4146, metadata !DIExpression()), !dbg !4186
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4187
  %call = call i32 @cpu_has_cpufreq(i32 noundef %0) #10, !dbg !4189
  %tobool = icmp ne i32 %call, 0, !dbg !4189
  br i1 %tobool, label %if.end, label %if.then, !dbg !4190

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4191

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !4192
  br label %do.body, !dbg !4193

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4194
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4147, metadata !DIExpression()), !dbg !4194
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4194
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !4194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4193
  br label %do.cond, !dbg !4194

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4194

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4150, metadata !DIExpression()), !dbg !4195
  store i64 ptrtoint (ptr @cpufreq_thermal_reduction_pctg to i64), ptr %__ptr, align 8, !dbg !4195
  %3 = load i64, ptr %__ptr, align 8, !dbg !4195
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !4195
  %call2 = call i32 @phys_package_first_cpu(i32 noundef %4) #10, !dbg !4195
  %idxprom = sext i32 %call2 to i64, !dbg !4195
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4195
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4195
  %add = add i64 %3, %5, !dbg !4195
  %6 = inttoptr i64 %add to ptr, !dbg !4195
  store ptr %6, ptr %tmp1, align 8, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4193
  %7 = load ptr, ptr %tmp1, align 8, !dbg !4195
  store ptr %7, ptr %tmp, align 8, !dbg !4194
  %8 = load ptr, ptr %tmp, align 8, !dbg !4193
  store i32 %1, ptr %8, align 4, !dbg !4196
  store i32 0, ptr %i, align 4, !dbg !4197
  br label %for.cond, !dbg !4197

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, ptr %i, align 4, !dbg !4198
  %conv = sext i32 %9 to i64, !dbg !4198
  %call3 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #10, !dbg !4198
  %conv4 = trunc i64 %call3 to i32, !dbg !4198
  store i32 %conv4, ptr %i, align 4, !dbg !4198
  %10 = load i32, ptr %i, align 4, !dbg !4198
  %cmp = icmp ult i32 %10, 64, !dbg !4198
  br i1 %cmp, label %for.body, label %for.end, !dbg !4197

for.body:                                         ; preds = %for.cond
  br label %do.body6, !dbg !4199

do.body6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #9, !dbg !4200
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !4152, metadata !DIExpression()), !dbg !4200
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !4200
  %11 = load ptr, ptr %__vpp_verify7, align 8, !dbg !4200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #9, !dbg !4199
  br label %do.cond8, !dbg !4200

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !4200

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr11) #9, !dbg !4201
  call void @llvm.dbg.declare(metadata ptr %__ptr11, metadata !4159, metadata !DIExpression()), !dbg !4201
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr11, align 8, !dbg !4201
  %12 = load i64, ptr %__ptr11, align 8, !dbg !4201
  %13 = load i32, ptr %i, align 4, !dbg !4201
  %idxprom13 = sext i32 %13 to i64, !dbg !4201
  %arrayidx14 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom13, !dbg !4201
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !4201
  %add15 = add i64 %12, %14, !dbg !4201
  %15 = inttoptr i64 %add15 to ptr, !dbg !4201
  store ptr %15, ptr %tmp12, align 8, !dbg !4201
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr11) #9, !dbg !4199
  %16 = load ptr, ptr %tmp12, align 8, !dbg !4201
  store ptr %16, ptr %tmp10, align 8, !dbg !4200
  %17 = load ptr, ptr %tmp10, align 8, !dbg !4199
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 26, !dbg !4202
  %18 = load i16, ptr %phys_proc_id, align 2, !dbg !4202
  %conv16 = zext i16 %18 to i32, !dbg !4202
  br label %do.body17, !dbg !4203

do.body17:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify18) #9, !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify18, metadata !4161, metadata !DIExpression()), !dbg !4204
  store ptr null, ptr %__vpp_verify18, align 8, !dbg !4204
  %19 = load ptr, ptr %__vpp_verify18, align 8, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify18) #9, !dbg !4203
  br label %do.cond19, !dbg !4204

do.cond19:                                        ; preds = %do.body17
  br label %do.end20, !dbg !4204

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr22) #9, !dbg !4205
  call void @llvm.dbg.declare(metadata ptr %__ptr22, metadata !4164, metadata !DIExpression()), !dbg !4205
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr22, align 8, !dbg !4205
  %20 = load i64, ptr %__ptr22, align 8, !dbg !4205
  %21 = load i32, ptr %cpu.addr, align 4, !dbg !4205
  %idxprom24 = zext i32 %21 to i64, !dbg !4205
  %arrayidx25 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom24, !dbg !4205
  %22 = load i64, ptr %arrayidx25, align 8, !dbg !4205
  %add26 = add i64 %20, %22, !dbg !4205
  %23 = inttoptr i64 %add26 to ptr, !dbg !4205
  store ptr %23, ptr %tmp23, align 8, !dbg !4205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr22) #9, !dbg !4203
  %24 = load ptr, ptr %tmp23, align 8, !dbg !4205
  store ptr %24, ptr %tmp21, align 8, !dbg !4204
  %25 = load ptr, ptr %tmp21, align 8, !dbg !4203
  %phys_proc_id27 = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 26, !dbg !4206
  %26 = load i16, ptr %phys_proc_id27, align 2, !dbg !4206
  %conv28 = zext i16 %26 to i32, !dbg !4206
  %cmp29 = icmp ne i32 %conv16, %conv28, !dbg !4207
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4208

if.then31:                                        ; preds = %do.end20
  br label %for.inc, !dbg !4209

if.end32:                                         ; preds = %do.end20
  br label %do.body33, !dbg !4210

do.body33:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify34) #9, !dbg !4211
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify34, metadata !4166, metadata !DIExpression()), !dbg !4211
  store ptr null, ptr %__vpp_verify34, align 8, !dbg !4211
  %27 = load ptr, ptr %__vpp_verify34, align 8, !dbg !4211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify34) #9, !dbg !4210
  br label %do.cond35, !dbg !4211

do.cond35:                                        ; preds = %do.body33
  br label %do.end36, !dbg !4211

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr38) #9, !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %__ptr38, metadata !4169, metadata !DIExpression()), !dbg !4212
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr38, align 8, !dbg !4212
  %28 = load i64, ptr %__ptr38, align 8, !dbg !4212
  %29 = load i32, ptr %i, align 4, !dbg !4212
  %idxprom40 = sext i32 %29 to i64, !dbg !4212
  %arrayidx41 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom40, !dbg !4212
  %30 = load i64, ptr %arrayidx41, align 8, !dbg !4212
  %add42 = add i64 %28, %30, !dbg !4212
  %31 = inttoptr i64 %add42 to ptr, !dbg !4212
  store ptr %31, ptr %tmp39, align 8, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr38) #9, !dbg !4210
  %32 = load ptr, ptr %tmp39, align 8, !dbg !4212
  store ptr %32, ptr %tmp37, align 8, !dbg !4211
  %33 = load ptr, ptr %tmp37, align 8, !dbg !4210
  %34 = load ptr, ptr %33, align 8, !dbg !4213
  store ptr %34, ptr %pr, align 8, !dbg !4214
  %35 = load ptr, ptr %pr, align 8, !dbg !4215
  %thermal_req = getelementptr inbounds %struct.acpi_processor, ptr %35, i32 0, i32 15, !dbg !4215
  %call43 = call i32 @freq_qos_request_active(ptr noundef %thermal_req) #10, !dbg !4215
  %tobool44 = icmp ne i32 %call43, 0, !dbg !4215
  %lnot = xor i1 %tobool44, true, !dbg !4215
  %lnot45 = xor i1 %lnot, true, !dbg !4215
  %lnot46 = xor i1 %lnot45, true, !dbg !4215
  %lnot.ext = zext i1 %lnot46 to i32, !dbg !4215
  %conv47 = sext i32 %lnot.ext to i64, !dbg !4215
  %expval = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !4215
  %tobool48 = icmp ne i64 %expval, 0, !dbg !4215
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4217

if.then49:                                        ; preds = %do.end36
  br label %for.inc, !dbg !4218

if.end50:                                         ; preds = %do.end36
  %36 = load i32, ptr %i, align 4, !dbg !4219
  %call51 = call ptr @cpufreq_cpu_get(i32 noundef %36) #10, !dbg !4220
  store ptr %call51, ptr %policy, align 8, !dbg !4221
  %37 = load ptr, ptr %policy, align 8, !dbg !4222
  %tobool52 = icmp ne ptr %37, null, !dbg !4222
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !4224

if.then53:                                        ; preds = %if.end50
  store i32 -22, ptr %retval, align 4, !dbg !4225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4225

if.end54:                                         ; preds = %if.end50
  %38 = load ptr, ptr %policy, align 8, !dbg !4226
  %cpuinfo = getelementptr inbounds %struct.cpufreq_policy, ptr %38, i32 0, i32 6, !dbg !4227
  %max_freq55 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo, i32 0, i32 0, !dbg !4228
  %39 = load i32, ptr %max_freq55, align 8, !dbg !4228
  br label %do.body56, !dbg !4229

do.body56:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify57) #9, !dbg !4230
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify57, metadata !4171, metadata !DIExpression()), !dbg !4230
  store ptr null, ptr %__vpp_verify57, align 8, !dbg !4230
  %40 = load ptr, ptr %__vpp_verify57, align 8, !dbg !4230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify57) #9, !dbg !4229
  br label %do.cond58, !dbg !4230

do.cond58:                                        ; preds = %do.body56
  br label %do.end59, !dbg !4230

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr61) #9, !dbg !4231
  call void @llvm.dbg.declare(metadata ptr %__ptr61, metadata !4174, metadata !DIExpression()), !dbg !4231
  store i64 ptrtoint (ptr @cpufreq_thermal_reduction_pctg to i64), ptr %__ptr61, align 8, !dbg !4231
  %41 = load i64, ptr %__ptr61, align 8, !dbg !4231
  %42 = load i32, ptr %i, align 4, !dbg !4231
  %call63 = call i32 @phys_package_first_cpu(i32 noundef %42) #10, !dbg !4231
  %idxprom64 = sext i32 %call63 to i64, !dbg !4231
  %arrayidx65 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom64, !dbg !4231
  %43 = load i64, ptr %arrayidx65, align 8, !dbg !4231
  %add66 = add i64 %41, %43, !dbg !4231
  %44 = inttoptr i64 %add66 to ptr, !dbg !4231
  store ptr %44, ptr %tmp62, align 8, !dbg !4231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr61) #9, !dbg !4229
  %45 = load ptr, ptr %tmp62, align 8, !dbg !4231
  store ptr %45, ptr %tmp60, align 8, !dbg !4230
  %46 = load ptr, ptr %tmp60, align 8, !dbg !4229
  %47 = load i32, ptr %46, align 4, !dbg !4232
  %mul = mul i32 %47, 20, !dbg !4233
  %sub = sub i32 100, %mul, !dbg !4234
  %mul67 = mul i32 %39, %sub, !dbg !4235
  %div = udiv i32 %mul67, 100, !dbg !4236
  %conv68 = zext i32 %div to i64, !dbg !4237
  store i64 %conv68, ptr %max_freq, align 8, !dbg !4238
  %48 = load ptr, ptr %policy, align 8, !dbg !4239
  call void @cpufreq_cpu_put(ptr noundef %48) #10, !dbg !4240
  %49 = load ptr, ptr %pr, align 8, !dbg !4241
  %thermal_req69 = getelementptr inbounds %struct.acpi_processor, ptr %49, i32 0, i32 15, !dbg !4242
  %50 = load i64, ptr %max_freq, align 8, !dbg !4243
  %conv70 = trunc i64 %50 to i32, !dbg !4243
  %call71 = call i32 @freq_qos_update_request(ptr noundef %thermal_req69, i32 noundef %conv70) #10, !dbg !4244
  store i32 %call71, ptr %ret, align 4, !dbg !4245
  %51 = load i32, ptr %ret, align 4, !dbg !4246
  %cmp72 = icmp slt i32 %51, 0, !dbg !4248
  br i1 %cmp72, label %if.then74, label %if.end80, !dbg !4249

if.then74:                                        ; preds = %do.end59
  br label %do.body75, !dbg !4250

do.body75:                                        ; preds = %if.then74
  br label %do.cond76, !dbg !4253

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !4253

do.end77:                                         ; preds = %do.cond76
  %52 = load ptr, ptr %pr, align 8, !dbg !4250
  %id = getelementptr inbounds %struct.acpi_processor, ptr %52, i32 0, i32 3, !dbg !4250
  %53 = load i32, ptr %id, align 8, !dbg !4250
  %54 = load i32, ptr %ret, align 4, !dbg !4250
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %53, i32 noundef %54) #11, !dbg !4250
  store i32 %call79, ptr %tmp78, align 4, !dbg !4253
  %55 = load i32, ptr %tmp78, align 4, !dbg !4250
  br label %if.end80, !dbg !4255

if.end80:                                         ; preds = %do.end77, %do.end59
  br label %for.inc, !dbg !4256

for.inc:                                          ; preds = %if.end80, %if.then49, %if.then31
  %56 = load i32, ptr %i, align 4, !dbg !4198
  %inc = add i32 %56, 1, !dbg !4198
  store i32 %inc, ptr %i, align 4, !dbg !4198
  br label %for.cond, !dbg !4198, !llvm.loop !4257

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4259

cleanup:                                          ; preds = %for.end, %if.then53, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !4260
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4260
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_freq) #9, !dbg !4260
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #9, !dbg !4260
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #9, !dbg !4260
  %57 = load i32, ptr %retval, align 4, !dbg !4260
  ret i32 %57, !dbg !4260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @freq_qos_request_active(ptr noundef %req) #3 align 16 !dbg !4261 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !4263, metadata !DIExpression()), !dbg !4264
  %0 = load ptr, ptr %req.addr, align 8, !dbg !4265
  %qos = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 2, !dbg !4266
  %1 = load ptr, ptr %qos, align 8, !dbg !4266
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %1) #10, !dbg !4267
  %lnot = xor i1 %call, true, !dbg !4268
  %lnot.ext = zext i1 %lnot to i32, !dbg !4268
  ret i32 %lnot.ext, !dbg !4269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4270 dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #3 align 16 !dbg !4273 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4277
  %tobool = icmp ne ptr %0, null, !dbg !4277
  %lnot = xor i1 %tobool, true, !dbg !4277
  %lnot1 = xor i1 %lnot, true, !dbg !4277
  %lnot2 = xor i1 %lnot1, true, !dbg !4277
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4277
  %conv = sext i32 %lnot.ext to i64, !dbg !4277
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4277
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4277
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4278

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4279
  %2 = ptrtoint ptr %1 to i64, !dbg !4279
  %3 = inttoptr i64 %2 to ptr, !dbg !4279
  %4 = ptrtoint ptr %3 to i64, !dbg !4279
  %cmp = icmp uge i64 %4, -4095, !dbg !4279
  %lnot5 = xor i1 %cmp, true, !dbg !4279
  %lnot7 = xor i1 %lnot5, true, !dbg !4279
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4279
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4279
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !4279
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !4278
  br label %lor.end, !dbg !4278

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !4280
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130}
!llvm.ident = !{!2131}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/processor_thermal.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57025ebd5ce11bb1ec82e89a690dd28c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 48)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "processor_cooling_ops", scope: !9, file: !2, line: 272, type: !2002, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.processor_thermal.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/processor\22 -D KBUILD_BASENAME=\22processor_thermal\22 -D KBUILD_MODNAME=\22processor\22 -D __KBUILD_MODNAME=kmod_processor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/processor_thermal.ll drivers/acpi/processor_thermal.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !131, globals: !2098, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !25, !31, !35, !41, !46, !52, !59, !65, !72, !80, !88, !95, !101, !110, !115, !120, !126}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !20, line: 26, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!23 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!24 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !26, line: 41, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!29 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!30 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !26, line: 80, baseType: !13, size: 32, elements: !32)
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!34 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !36, line: 41, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!39 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!40 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !42, line: 65, baseType: !13, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!45 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !47, line: 16, baseType: !13, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!48 = !{!49, !50, !51}
!49 = !DIEnumerator(name: "TT_NONE", value: 0)
!50 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!51 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !53, line: 51, baseType: !13, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!56 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!57 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!58 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !60, line: 45, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!63 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!64 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !66, line: 487, baseType: !13, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!69 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!70 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!71 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !73, line: 620, baseType: !13, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!76 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!77 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!78 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!79 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !73, line: 597, baseType: !81, size: 32, elements: !82)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!84 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!85 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!86 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!87 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !26, line: 99, baseType: !13, size: 32, elements: !89)
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!91 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!92 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!93 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!94 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !96, line: 30, baseType: !13, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!99 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!100 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !66, line: 547, baseType: !13, size: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!104 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!105 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!106 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!107 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!108 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!109 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !66, line: 564, baseType: !13, size: 32, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!113 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!114 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !66, line: 577, baseType: !13, size: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!118 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!119 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !66, line: 503, baseType: !13, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!123 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!124 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!125 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 10, baseType: !13, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!128 = !{!129, !130}
!129 = !DIEnumerator(name: "false", value: 0)
!130 = !DIEnumerator(name: "true", value: 1)
!131 = !{!13, !132, !140, !259, !81, !1183, !2034, !2096, !453}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !135, line: 223, size: 7936, elements: !136)
!135 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5439c2680e180b2809cf646c46c358d2")
!136 = !{!137, !141, !146, !149, !150, !151, !152, !153, !170, !212, !263, !313, !323, !2031, !2032, !2033}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !134, file: !135, line: 224, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !139, line: 424, baseType: !140)
!139 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !134, file: !135, line: 225, baseType: !142, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 21, baseType: !144)
!143 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !145, line: 27, baseType: !13)
!145 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !134, file: !135, line: 226, baseType: !147, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !148, line: 287, baseType: !142)
!148 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !134, file: !135, line: 227, baseType: !142, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !134, file: !135, line: 228, baseType: !142, size: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !134, file: !135, line: 229, baseType: !81, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !134, file: !135, line: 230, baseType: !81, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !135, line: 233, baseType: !154, size: 16, offset: 256)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !135, line: 209, size: 16, elements: !155)
!155 = !{!156, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !154, file: !135, line: 210, baseType: !157, size: 1, flags: DIFlagBitField, extraData: i64 0)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 17, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !145, line: 21, baseType: !159)
!159 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !154, file: !135, line: 211, baseType: !157, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !154, file: !135, line: 212, baseType: !157, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !154, file: !135, line: 213, baseType: !157, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !154, file: !135, line: 214, baseType: !157, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !154, file: !135, line: 215, baseType: !157, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !154, file: !135, line: 216, baseType: !157, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !154, file: !135, line: 217, baseType: !157, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !154, file: !135, line: 218, baseType: !157, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !154, file: !135, line: 219, baseType: !157, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !154, file: !135, line: 220, baseType: !157, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !134, file: !135, line: 234, baseType: !171, size: 4736, offset: 320)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !135, line: 92, size: 4736, elements: !172)
!172 = !{!173, !174, !211}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !171, file: !135, line: 93, baseType: !81, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !135, line: 94, baseType: !175, size: 4608, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !135, line: 94, size: 4608, elements: !176)
!176 = !{!177, !194}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !175, file: !135, line: 95, baseType: !178, size: 3328)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 3328, elements: !192)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !135, line: 68, size: 416, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !179, file: !135, line: 69, baseType: !157, size: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !135, line: 70, baseType: !157, size: 8, offset: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !179, file: !135, line: 71, baseType: !142, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !179, file: !135, line: 72, baseType: !157, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !179, file: !135, line: 73, baseType: !157, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !179, file: !135, line: 74, baseType: !142, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !179, file: !135, line: 75, baseType: !157, size: 8, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !179, file: !135, line: 76, baseType: !189, size: 256, offset: 136)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 32)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !175, file: !135, line: 96, baseType: !195, size: 4608)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 4608, elements: !192)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !135, line: 79, size: 576, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !208, !209, !210}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !196, file: !135, line: 80, baseType: !142, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !196, file: !135, line: 81, baseType: !142, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !135, line: 82, baseType: !142, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !196, file: !135, line: 83, baseType: !142, size: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !196, file: !135, line: 84, baseType: !142, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !196, file: !135, line: 85, baseType: !142, size: 32, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !196, file: !135, line: 86, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 23, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !145, line: 31, baseType: !207)
!207 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !196, file: !135, line: 87, baseType: !157, size: 8, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !196, file: !135, line: 88, baseType: !157, size: 8, offset: 264)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !196, file: !135, line: 89, baseType: !189, size: 256, offset: 272)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !171, file: !135, line: 98, baseType: !81, size: 32, offset: 4672)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !134, file: !135, line: 235, baseType: !213, size: 64, offset: 5056)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !135, line: 130, size: 896, elements: !215)
!215 = !{!216, !217, !218, !231, !232, !233, !243, !251, !262}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !214, file: !135, line: 131, baseType: !13, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !214, file: !135, line: 132, baseType: !13, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !214, file: !135, line: 133, baseType: !219, size: 120, offset: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !135, line: 111, size: 120, elements: !220)
!220 = !{!221, !222, !226, !227, !228, !229, !230}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !219, file: !135, line: 112, baseType: !157, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !219, file: !135, line: 113, baseType: !223, size: 16, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !145, line: 24, baseType: !225)
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !219, file: !135, line: 114, baseType: !157, size: 8, offset: 24)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !219, file: !135, line: 115, baseType: !157, size: 8, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !219, file: !135, line: 116, baseType: !157, size: 8, offset: 40)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !219, file: !135, line: 117, baseType: !157, size: 8, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !219, file: !135, line: 118, baseType: !205, size: 64, offset: 56)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !214, file: !135, line: 134, baseType: !219, size: 120, offset: 184)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !214, file: !135, line: 135, baseType: !13, size: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !214, file: !135, line: 136, baseType: !234, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !135, line: 121, size: 384, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !235, file: !135, line: 122, baseType: !205, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !235, file: !135, line: 123, baseType: !205, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !235, file: !135, line: 124, baseType: !205, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !235, file: !135, line: 125, baseType: !205, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !235, file: !135, line: 126, baseType: !205, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !235, file: !135, line: 127, baseType: !205, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !214, file: !135, line: 137, baseType: !244, size: 320, offset: 448)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !135, line: 103, size: 320, elements: !245)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !244, file: !135, line: 104, baseType: !205, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !244, file: !135, line: 105, baseType: !205, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !244, file: !135, line: 106, baseType: !205, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !244, file: !135, line: 107, baseType: !205, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !244, file: !135, line: 108, baseType: !205, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !214, file: !135, line: 138, baseType: !252, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !253, line: 913, baseType: !254)
!253 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 64, elements: !260)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !253, line: 19, size: 64, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !255, file: !253, line: 19, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 64, elements: !260)
!259 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!260 = !{!261}
!261 = !DISubrange(count: 1)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !214, file: !135, line: 139, baseType: !13, size: 32, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !134, file: !135, line: 236, baseType: !264, size: 1600, offset: 5120)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !135, line: 175, size: 1600, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !280, !288, !289, !293, !300, !301, !302, !303, !304, !305}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !135, line: 176, baseType: !13, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !264, file: !135, line: 177, baseType: !13, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !264, file: !135, line: 178, baseType: !219, size: 120, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !264, file: !135, line: 179, baseType: !219, size: 120, offset: 184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !264, file: !135, line: 180, baseType: !13, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !264, file: !135, line: 181, baseType: !272, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !135, line: 162, size: 320, elements: !274)
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !273, file: !135, line: 163, baseType: !205, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !273, file: !135, line: 164, baseType: !205, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !273, file: !135, line: 165, baseType: !205, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !273, file: !135, line: 166, baseType: !205, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !273, file: !135, line: 167, baseType: !205, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !264, file: !135, line: 182, baseType: !281, size: 320, offset: 448)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !135, line: 144, size: 320, elements: !282)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !281, file: !135, line: 145, baseType: !205, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !281, file: !135, line: 146, baseType: !205, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !281, file: !135, line: 147, baseType: !205, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !281, file: !135, line: 148, baseType: !205, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !281, file: !135, line: 149, baseType: !205, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !264, file: !135, line: 183, baseType: !252, size: 64, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !264, file: !135, line: 184, baseType: !290, size: 64, offset: 832)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!81, !133}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !264, file: !135, line: 185, baseType: !294, size: 64, offset: 896)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!81, !133, !81, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !298, line: 35, baseType: !299)
!298 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!299 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !264, file: !135, line: 188, baseType: !142, size: 32, offset: 960)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !264, file: !135, line: 189, baseType: !157, size: 8, offset: 992)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !264, file: !135, line: 190, baseType: !157, size: 8, offset: 1000)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !264, file: !135, line: 191, baseType: !157, size: 8, offset: 1008)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !264, file: !135, line: 192, baseType: !13, size: 32, offset: 1024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !264, file: !135, line: 193, baseType: !306, size: 512, offset: 1056)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 512, elements: !311)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !135, line: 169, size: 32, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !307, file: !135, line: 170, baseType: !223, size: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !307, file: !135, line: 171, baseType: !223, size: 16, offset: 16)
!311 = !{!312}
!312 = !DISubrange(count: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !134, file: !135, line: 237, baseType: !314, size: 192, offset: 6720)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !135, line: 203, size: 192, elements: !315)
!315 = !{!316, !321, !322}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !135, line: 204, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !135, line: 198, size: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !317, file: !135, line: 199, baseType: !81, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !317, file: !135, line: 200, baseType: !81, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !314, file: !135, line: 205, baseType: !317, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !314, file: !135, line: 206, baseType: !317, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !134, file: !135, line: 238, baseType: !324, size: 64, offset: 6912)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !326, line: 98, size: 6848, elements: !327)
!326 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!327 = !{!328, !329, !331, !332, !1997, !1998, !1999, !2000, !2027, !2028, !2029, !2030}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !325, file: !326, line: 99, baseType: !81, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !325, file: !326, line: 100, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !325, file: !326, line: 101, baseType: !259, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !325, file: !326, line: 102, baseType: !333, size: 5824, offset: 192)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !66, line: 705, size: 5824, elements: !334)
!334 = !{!335, !985, !987, !990, !991, !1044, !1510, !1511, !1512, !1513, !1514, !1521, !1761, !1774, !1784, !1788, !1790, !1791, !1792, !1796, !1803, !1804, !1807, !1810, !1936, !1937, !1938, !1941, !1942, !1943, !1944, !1974, !1975, !1976, !1979, !1982, !1991, !1992, !1993, !1994, !1995, !1996}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !333, file: !66, line: 706, baseType: !336, size: 512)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !337, line: 64, size: 512, elements: !338)
!337 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!338 = !{!339, !342, !348, !350, !430, !855, !970, !980, !981, !982, !983, !984}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !337, line: 65, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !336, file: !337, line: 66, baseType: !343, size: 128, offset: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !298, line: 190, size: 128, elements: !344)
!344 = !{!345, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !298, line: 191, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !343, file: !298, line: 191, baseType: !346, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !336, file: !337, line: 67, baseType: !349, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !336, file: !337, line: 68, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !337, line: 168, size: 768, elements: !353)
!353 = !{!354, !355, !390, !391}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !352, file: !337, line: 169, baseType: !343, size: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !352, file: !337, line: 170, baseType: !356, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !357, line: 29, baseType: !358)
!357 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !357, line: 17, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !357, line: 18, baseType: !361, size: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !357, line: 18, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !361, file: !357, line: 19, baseType: !364, size: 32)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !365, line: 14, size: 32, elements: !366)
!365 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !364, file: !365, line: 15, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !369, line: 44, baseType: !370)
!369 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !369, line: 14, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !369, line: 15, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !369, line: 15, size: 32, elements: !374)
!374 = !{!375, !380, !385}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !373, file: !369, line: 16, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !298, line: 174, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 172, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !377, file: !298, line: 173, baseType: !81, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !369, line: 24, baseType: !381, size: 16)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !369, line: 24, size: 16, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !381, file: !369, line: 25, baseType: !157, size: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !381, file: !369, line: 26, baseType: !157, size: 8, offset: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !369, line: 28, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !369, line: 28, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !386, file: !369, line: 29, baseType: !223, size: 16)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !386, file: !369, line: 30, baseType: !223, size: 16, offset: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !352, file: !337, line: 171, baseType: !336, size: 512, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !352, file: !337, line: 172, baseType: !392, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !337, line: 133, size: 192, elements: !395)
!395 = !{!396, !403, !408}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !394, file: !337, line: 134, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!81, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !337, line: 135, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!340, !401}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !394, file: !337, line: 136, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!81, !401, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !337, line: 125, size: 20736, elements: !415)
!415 = !{!416, !420, !424, !425, !429}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !414, file: !337, line: 126, baseType: !417, size: 192)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 192, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 3)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !414, file: !337, line: 127, baseType: !421, size: 4096, offset: 192)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 4096, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !414, file: !337, line: 128, baseType: !81, size: 32, offset: 4288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !414, file: !337, line: 129, baseType: !426, size: 16384, offset: 4320)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 2048)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !414, file: !337, line: 130, baseType: !81, size: 32, offset: 20704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !336, file: !337, line: 69, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !337, line: 116, size: 384, elements: !434)
!434 = !{!435, !439, !467, !802, !833, !837}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !433, file: !337, line: 117, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !349}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !433, file: !337, line: 118, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !443, line: 254, size: 128, elements: !444)
!443 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!444 = !{!445, !460}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !442, file: !443, line: 255, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!449, !349, !454, !330}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !298, line: 66, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !451, line: 73, baseType: !452)
!451 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !451, line: 15, baseType: !453)
!453 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !443, line: 30, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !443, line: 31, baseType: !340, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !455, file: !443, line: 32, baseType: !459, size: 16, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !298, line: 24, baseType: !225)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !442, file: !443, line: 256, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!449, !349, !454, !340, !464}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !298, line: 61, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !451, line: 72, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !451, line: 16, baseType: !259)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !433, file: !337, line: 119, baseType: !468, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !443, line: 84, size: 320, elements: !472)
!472 = !{!473, !474, !478, !798, !800}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !471, file: !443, line: 85, baseType: !340, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !471, file: !443, line: 86, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!459, !349, !454, !81}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !471, file: !443, line: 88, baseType: !479, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!459, !349, !482, !81}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !443, line: 175, size: 512, elements: !484)
!484 = !{!485, !486, !487, !488, !495, !505, !506}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !483, file: !443, line: 176, baseType: !455, size: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !483, file: !443, line: 177, baseType: !464, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !483, file: !443, line: 178, baseType: !140, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !483, file: !443, line: 179, baseType: !489, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !494, line: 32, flags: DIFlagFwdDecl)
!494 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !483, file: !443, line: 180, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!449, !499, !349, !482, !330, !502, !464}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !501, line: 537, flags: DIFlagFwdDecl)
!501 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !298, line: 52, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !451, line: 88, baseType: !504)
!504 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !483, file: !443, line: 182, baseType: !496, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !483, file: !443, line: 184, baseType: !507, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!81, !499, !349, !482, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !494, line: 625, size: 1344, elements: !512)
!512 = !{!513, !530, !749, !755, !762, !763, !768, !769, !781, !782, !785, !789, !790, !791, !792, !793, !796}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !494, line: 628, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !494, line: 628, size: 128, elements: !515)
!515 = !{!516, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !494, line: 629, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !494, line: 629, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !517, file: !494, line: 631, baseType: !259, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !517, file: !494, line: 632, baseType: !259, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !514, file: !494, line: 635, baseType: !522, size: 128, align: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !298, line: 232, size: 128, align: 64, elements: !523)
!523 = !{!524, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !298, line: 233, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !522, file: !298, line: 234, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !525}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !511, file: !494, line: 639, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !494, line: 733, size: 10240, elements: !533)
!533 = !{!534, !745}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !494, line: 734, baseType: !535, size: 10240)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !532, file: !494, line: 734, size: 10240, elements: !536)
!536 = !{!537, !541, !555, !559, !560, !561, !562, !563, !564, !572, !573, !574, !580, !581, !590, !591, !592, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !639, !653, !656, !711, !712, !713, !716, !720, !721, !724, !725, !726, !732, !733}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !494, line: 739, baseType: !538, size: 512, align: 512)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !494, line: 739, size: 512, align: 512, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !538, file: !494, line: 747, baseType: !376, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !535, file: !494, line: 750, baseType: !542, size: 128, offset: 512)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !543, line: 218, size: 128, elements: !544)
!543 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!544 = !{!545, !553, !554}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !543, line: 219, baseType: !546, size: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !543, line: 219, size: 32, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !546, file: !543, line: 220, baseType: !356, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !546, file: !543, line: 221, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !543, line: 197, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 197, elements: !552)
!552 = !{}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !542, file: !543, line: 223, baseType: !13, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !542, file: !543, line: 224, baseType: !140, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !535, file: !494, line: 752, baseType: !556, size: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!259, !499, !259, !259, !259, !259}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !535, file: !494, line: 756, baseType: !259, size: 64, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !535, file: !494, line: 757, baseType: !259, size: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !535, file: !494, line: 760, baseType: !259, size: 64, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !535, file: !494, line: 761, baseType: !259, size: 64, offset: 896)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !535, file: !494, line: 763, baseType: !259, size: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !535, file: !494, line: 764, baseType: !565, size: 64, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !501, line: 299, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 299, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !567, file: !501, line: 299, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !571, line: 18, baseType: !259)
!571 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!572 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !535, file: !494, line: 773, baseType: !376, size: 32, offset: 1088)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !535, file: !494, line: 785, baseType: !376, size: 32, offset: 1120)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !535, file: !494, line: 795, baseType: !575, size: 64, offset: 1152)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !494, line: 726, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !576, file: !494, line: 727, baseType: !205, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !576, file: !494, line: 728, baseType: !81, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !535, file: !494, line: 801, baseType: !259, size: 64, offset: 1216)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !535, file: !494, line: 804, baseType: !582, size: 64, offset: 1280)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !583, line: 13, baseType: !584)
!583 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !298, line: 181, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 179, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !585, file: !298, line: 180, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 22, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !145, line: 30, baseType: !504)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !535, file: !494, line: 806, baseType: !81, size: 32, offset: 1344)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !535, file: !494, line: 808, baseType: !356, size: 32, offset: 1376)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !535, file: !494, line: 823, baseType: !593, size: 320, offset: 1408)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !594, line: 48, size: 320, elements: !595)
!594 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!595 = !{!596, !597, !598, !603, !605}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !593, file: !594, line: 49, baseType: !582, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !593, file: !594, line: 55, baseType: !582, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !593, file: !594, line: 57, baseType: !599, size: 32, offset: 128)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !600, line: 15, size: 32, elements: !601)
!600 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !599, file: !600, line: 20, baseType: !376, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !593, file: !594, line: 59, baseType: !604, size: 32, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !365, line: 23, baseType: !364)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !593, file: !594, line: 60, baseType: !343, size: 128, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !535, file: !494, line: 825, baseType: !343, size: 128, offset: 1728)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !535, file: !494, line: 845, baseType: !81, size: 32, offset: 1856)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !535, file: !494, line: 849, baseType: !259, size: 64, offset: 1920)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !535, file: !494, line: 850, baseType: !259, size: 64, offset: 1984)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !535, file: !494, line: 852, baseType: !259, size: 64, offset: 2048)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !535, file: !494, line: 853, baseType: !259, size: 64, offset: 2112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !535, file: !494, line: 854, baseType: !584, size: 64, offset: 2176)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !535, file: !494, line: 855, baseType: !259, size: 64, offset: 2240)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !535, file: !494, line: 856, baseType: !259, size: 64, offset: 2304)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !535, file: !494, line: 857, baseType: !259, size: 64, offset: 2368)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !535, file: !494, line: 858, baseType: !259, size: 64, offset: 2432)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !535, file: !494, line: 865, baseType: !618, size: 32, offset: 2496)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !619, line: 69, baseType: !620)
!619 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !619, line: 64, size: 32, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !620, file: !619, line: 65, baseType: !13, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !535, file: !494, line: 867, baseType: !356, size: 32, offset: 2528)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !535, file: !494, line: 869, baseType: !259, size: 64, offset: 2560)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !535, file: !494, line: 869, baseType: !259, size: 64, offset: 2624)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !535, file: !494, line: 869, baseType: !259, size: 64, offset: 2688)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !535, file: !494, line: 869, baseType: !259, size: 64, offset: 2752)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !535, file: !494, line: 870, baseType: !259, size: 64, offset: 2816)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !535, file: !494, line: 870, baseType: !259, size: 64, offset: 2880)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !535, file: !494, line: 870, baseType: !259, size: 64, offset: 2944)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !535, file: !494, line: 871, baseType: !259, size: 64, offset: 3008)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !535, file: !494, line: 871, baseType: !259, size: 64, offset: 3072)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !535, file: !494, line: 871, baseType: !259, size: 64, offset: 3136)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !535, file: !494, line: 871, baseType: !259, size: 64, offset: 3200)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !535, file: !494, line: 873, baseType: !636, size: 3328, offset: 3264)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 3328, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 52)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !535, file: !494, line: 875, baseType: !640, size: 1280, offset: 6592)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 1280, elements: !651)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !642, line: 22, size: 320, elements: !643)
!642 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!643 = !{!644, !645, !646, !647}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !641, file: !642, line: 23, baseType: !604, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !641, file: !642, line: 24, baseType: !588, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !641, file: !642, line: 26, baseType: !343, size: 128, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !641, file: !642, line: 28, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 20, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !145, line: 26, baseType: !81)
!651 = !{!652}
!652 = !DISubrange(count: 4)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !535, file: !494, line: 877, baseType: !654, size: 64, offset: 7872)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !494, line: 877, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !535, file: !494, line: 880, baseType: !657, size: 1088, offset: 7936)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !658, line: 72, baseType: !659)
!658 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 23, size: 1088, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !668, !669, !677, !678, !705, !706, !707}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !659, file: !658, line: 28, baseType: !205, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !659, file: !658, line: 38, baseType: !584, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !659, file: !658, line: 40, baseType: !259, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !659, file: !658, line: 43, baseType: !593, size: 320, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !659, file: !658, line: 44, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !658, line: 44, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !658, line: 48, baseType: !259, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !659, file: !658, line: 59, baseType: !670, size: 256, offset: 640)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !671, line: 66, size: 256, elements: !672)
!671 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!672 = !{!673, !674, !675, !676}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !670, file: !671, line: 67, baseType: !582, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !670, file: !671, line: 68, baseType: !604, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !670, file: !671, line: 70, baseType: !599, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !670, file: !671, line: 72, baseType: !343, size: 128, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !659, file: !658, line: 60, baseType: !140, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !659, file: !658, line: 61, baseType: !679, size: 64, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !682, line: 13, size: 1216, elements: !683)
!682 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!683 = !{!684, !685, !686, !687, !688, !689, !690, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !681, file: !682, line: 14, baseType: !140, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !681, file: !682, line: 15, baseType: !259, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !681, file: !682, line: 17, baseType: !259, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !681, file: !682, line: 17, baseType: !259, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !681, file: !682, line: 18, baseType: !259, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !681, file: !682, line: 18, baseType: !259, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !681, file: !682, line: 19, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !681, file: !682, line: 21, baseType: !453, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !681, file: !682, line: 23, baseType: !453, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !681, file: !682, line: 24, baseType: !453, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !681, file: !682, line: 25, baseType: !453, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !681, file: !682, line: 26, baseType: !453, size: 64, offset: 704)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !681, file: !682, line: 27, baseType: !453, size: 64, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !681, file: !682, line: 28, baseType: !453, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !681, file: !682, line: 29, baseType: !453, size: 64, offset: 896)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !681, file: !682, line: 30, baseType: !453, size: 64, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !681, file: !682, line: 31, baseType: !453, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !681, file: !682, line: 32, baseType: !453, size: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !681, file: !682, line: 33, baseType: !453, size: 64, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !659, file: !658, line: 63, baseType: !376, size: 32, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !659, file: !658, line: 69, baseType: !223, size: 16, offset: 1056)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !659, file: !658, line: 70, baseType: !708, size: 16, offset: 1072)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !145, line: 23, baseType: !710)
!710 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !494, line: 882, baseType: !259, size: 64, offset: 9024)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !535, file: !494, line: 885, baseType: !356, size: 32, offset: 9088)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !535, file: !494, line: 886, baseType: !714, size: 64, offset: 9152)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !494, line: 732, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !535, file: !494, line: 901, baseType: !717, size: 64, offset: 9216)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !719, line: 18, flags: DIFlagFwdDecl)
!719 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!720 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !535, file: !494, line: 904, baseType: !499, size: 64, offset: 9280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !535, file: !494, line: 906, baseType: !722, size: 64, offset: 9344)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !494, line: 906, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !535, file: !494, line: 930, baseType: !376, size: 32, offset: 9408)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !535, file: !494, line: 933, baseType: !376, size: 32, offset: 9440)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !535, file: !494, line: 935, baseType: !727, size: 64, offset: 9472)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !53, line: 103, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !727, file: !53, line: 104, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !53, line: 101, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !535, file: !494, line: 940, baseType: !582, size: 64, offset: 9536)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !535, file: !494, line: 942, baseType: !734, size: 256, offset: 9600)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !735, line: 98, size: 256, elements: !736)
!735 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !734, file: !735, line: 99, baseType: !582, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !734, file: !735, line: 100, baseType: !343, size: 128, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !734, file: !735, line: 101, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !735, line: 21, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !532, file: !494, line: 986, baseType: !746, offset: 10240)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: -1)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !511, file: !494, line: 640, baseType: !750, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !501, line: 297, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !501, line: 297, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !751, file: !501, line: 297, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !571, line: 19, baseType: !259)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !494, line: 646, baseType: !756, size: 64, offset: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !494, line: 646, size: 64, elements: !757)
!757 = !{!758, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !756, file: !494, line: 647, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !494, line: 542, baseType: !259)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !756, file: !494, line: 648, baseType: !760, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !511, file: !494, line: 666, baseType: !81, size: 32, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !511, file: !494, line: 667, baseType: !764, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !494, line: 579, size: 320, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !494, line: 580, baseType: !593, size: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !511, file: !494, line: 670, baseType: !297, size: 8, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !511, file: !494, line: 681, baseType: !770, size: 256, offset: 512)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !511, file: !494, line: 678, size: 256, elements: !771)
!771 = !{!772, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !770, file: !494, line: 679, baseType: !773, size: 192, align: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !774, line: 5, size: 192, align: 64, elements: !775)
!774 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!775 = !{!776, !777, !779}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !773, file: !774, line: 6, baseType: !259, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !773, file: !774, line: 7, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !773, file: !774, line: 8, baseType: !778, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !770, file: !494, line: 680, baseType: !259, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !511, file: !494, line: 689, baseType: !343, size: 128, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !511, file: !494, line: 691, baseType: !783, size: 64, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !494, line: 691, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !511, file: !494, line: 694, baseType: !786, size: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !494, line: 694, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !511, file: !494, line: 697, baseType: !259, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !511, file: !494, line: 699, baseType: !499, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !511, file: !494, line: 700, baseType: !140, size: 64, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !511, file: !494, line: 711, baseType: !582, size: 64, offset: 1216)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !511, file: !494, line: 717, baseType: !794, size: 64, offset: 1280)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !494, line: 717, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !511, file: !494, line: 722, baseType: !797, offset: 1344)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !494, line: 570, elements: !552)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !471, file: !443, line: 90, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !471, file: !443, line: 91, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !433, file: !337, line: 120, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!806, !401}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !20, line: 39, size: 384, elements: !809)
!809 = !{!810, !811, !815, !819, !825, !829}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !20, line: 40, baseType: !19, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !808, file: !20, line: 41, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!297}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !808, file: !20, line: 42, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!140}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !808, file: !20, line: 43, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!691, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !20, line: 19, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !808, file: !20, line: 44, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!691}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !808, file: !20, line: 45, baseType: !830, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !140}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !433, file: !337, line: 121, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!691, !401}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !433, file: !337, line: 122, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !401, !841, !848}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !719, line: 23, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !719, line: 21, size: 32, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !843, file: !719, line: 22, baseType: !846, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !298, line: 37, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !451, line: 49, baseType: !13)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !719, line: 28, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !719, line: 26, size: 32, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !850, file: !719, line: 27, baseType: !853, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !298, line: 38, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !451, line: 50, baseType: !13)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !336, file: !337, line: 70, baseType: !856, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !858, line: 190, size: 1152, elements: !859)
!858 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !962, !963, !964, !965, !966, !969}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !857, file: !858, line: 191, baseType: !376, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !857, file: !858, line: 192, baseType: !376, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !857, file: !858, line: 202, baseType: !856, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !857, file: !858, line: 203, baseType: !340, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !857, file: !858, line: 205, baseType: !773, size: 192, align: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !857, file: !858, line: 207, baseType: !691, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !857, file: !858, line: 208, baseType: !13, size: 32, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 209, baseType: !868, size: 256, offset: 512)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 209, size: 256, elements: !869)
!869 = !{!870, !882, !886}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !868, file: !858, line: 210, baseType: !871, size: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !858, line: 153, size: 256, elements: !872)
!872 = !{!873, !874, !878, !881}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !871, file: !858, line: 154, baseType: !259, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !871, file: !858, line: 156, baseType: !875, size: 64, offset: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !774, line: 12, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !875, file: !774, line: 13, baseType: !778, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !871, file: !858, line: 162, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !858, line: 162, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !871, file: !858, line: 167, baseType: !259, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !868, file: !858, line: 211, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !858, line: 170, size: 64, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !883, file: !858, line: 171, baseType: !856, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !868, file: !858, line: 212, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !858, line: 174, size: 256, elements: !888)
!888 = !{!889, !957, !960, !961}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !887, file: !858, line: 175, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !858, line: 271, size: 768, elements: !893)
!893 = !{!894, !917, !921, !925, !930, !934, !938, !942, !943, !944, !945, !953}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !892, file: !858, line: 276, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!81, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !858, line: 251, size: 1216, elements: !900)
!900 = !{!901, !902, !903, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !899, file: !858, line: 253, baseType: !856, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !899, file: !858, line: 254, baseType: !499, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !899, file: !858, line: 255, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !906, line: 66, flags: DIFlagFwdDecl)
!906 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !899, file: !858, line: 256, baseType: !140, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !899, file: !858, line: 259, baseType: !670, size: 256, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !899, file: !858, line: 260, baseType: !670, size: 256, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !899, file: !858, line: 261, baseType: !81, size: 32, offset: 768)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !858, line: 262, baseType: !343, size: 128, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !899, file: !858, line: 263, baseType: !330, size: 64, offset: 960)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !899, file: !858, line: 265, baseType: !464, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !899, file: !858, line: 266, baseType: !297, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !899, file: !858, line: 267, baseType: !297, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !899, file: !858, line: 268, baseType: !786, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !892, file: !858, line: 277, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !898}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !892, file: !858, line: 290, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!81, !904, !140}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !892, file: !858, line: 292, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!140, !904, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !892, file: !858, line: 293, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!140, !904, !140, !929}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !892, file: !858, line: 294, baseType: !935, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !904, !140}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !892, file: !858, line: 296, baseType: !939, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!449, !898, !330, !464, !502}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !892, file: !858, line: 306, baseType: !464, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !892, file: !858, line: 313, baseType: !297, size: 8, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !892, file: !858, line: 314, baseType: !939, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !892, file: !858, line: 317, baseType: !946, size: 64, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!949, !898, !951}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !950, line: 59, baseType: !13)
!950 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !858, line: 31, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !892, file: !858, line: 320, baseType: !954, size: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!81, !898, !510}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !887, file: !858, line: 176, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !858, line: 35, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !887, file: !858, line: 177, baseType: !502, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !887, file: !858, line: 178, baseType: !856, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !857, file: !858, line: 215, baseType: !140, size: 64, offset: 768)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !857, file: !858, line: 221, baseType: !205, size: 64, offset: 832)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 223, baseType: !225, size: 16, offset: 896)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !857, file: !858, line: 224, baseType: !459, size: 16, offset: 912)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !857, file: !858, line: 225, baseType: !967, size: 64, offset: 960)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !858, line: 36, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !857, file: !858, line: 227, baseType: !522, size: 128, align: 64, offset: 1024)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !336, file: !337, line: 71, baseType: !971, size: 32, offset: 448)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !972, line: 19, size: 32, elements: !973)
!972 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !971, file: !972, line: 20, baseType: !975, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !976, line: 113, baseType: !977)
!976 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !976, line: 111, size: 32, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !977, file: !976, line: 112, baseType: !376, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !336, file: !337, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !336, file: !337, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !336, file: !337, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !336, file: !337, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !336, file: !337, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !333, file: !66, line: 707, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !333, file: !66, line: 709, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !66, line: 37, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !333, file: !66, line: 711, baseType: !340, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !66, line: 712, baseType: !992, size: 64, offset: 704)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !66, line: 89, size: 384, elements: !995)
!995 = !{!996, !997, !998, !1004, !1009, !1013}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !994, file: !66, line: 90, baseType: !340, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !994, file: !66, line: 91, baseType: !468, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !994, file: !66, line: 92, baseType: !999, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!81, !1002, !413}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !994, file: !66, line: 93, baseType: !1005, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!330, !1002, !1008, !841, !848}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !994, file: !66, line: 95, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !986}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !994, file: !66, line: 97, baseType: !1014, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 286, size: 1472, elements: !1017)
!1017 = !{!1018, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1016, file: !73, line: 287, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!81, !986}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1016, file: !73, line: 288, baseType: !1010, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1016, file: !73, line: 289, baseType: !1019, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1016, file: !73, line: 290, baseType: !1019, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1016, file: !73, line: 291, baseType: !1019, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1016, file: !73, line: 292, baseType: !1019, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1016, file: !73, line: 293, baseType: !1019, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1016, file: !73, line: 294, baseType: !1019, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1016, file: !73, line: 295, baseType: !1019, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1016, file: !73, line: 296, baseType: !1019, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1016, file: !73, line: 297, baseType: !1019, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1016, file: !73, line: 298, baseType: !1019, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1016, file: !73, line: 299, baseType: !1019, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1016, file: !73, line: 300, baseType: !1019, size: 64, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1016, file: !73, line: 301, baseType: !1019, size: 64, offset: 896)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1016, file: !73, line: 302, baseType: !1019, size: 64, offset: 960)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1016, file: !73, line: 303, baseType: !1019, size: 64, offset: 1024)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1016, file: !73, line: 304, baseType: !1019, size: 64, offset: 1088)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1016, file: !73, line: 305, baseType: !1019, size: 64, offset: 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1016, file: !73, line: 306, baseType: !1019, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1016, file: !73, line: 307, baseType: !1019, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1016, file: !73, line: 308, baseType: !1019, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1016, file: !73, line: 309, baseType: !1019, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !333, file: !66, line: 714, baseType: !1045, size: 64, offset: 768)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1048, line: 80, size: 1344, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1509}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !1048, line: 81, baseType: !340, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1047, file: !1048, line: 82, baseType: !340, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1047, file: !1048, line: 83, baseType: !468, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1047, file: !1048, line: 84, baseType: !468, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1047, file: !1048, line: 85, baseType: !468, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1047, file: !1048, line: 87, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!81, !986, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !60, line: 96, size: 1152, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1445, !1446, !1447, !1448, !1461, !1472, !1473, !1474, !1475, !1476, !1484, !1485, !1486, !1487, !1488, !1489}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1060, file: !60, line: 97, baseType: !340, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1060, file: !60, line: 98, baseType: !1045, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1060, file: !60, line: 100, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1074, !1095, !1121, !1122, !1123, !1124, !1128, !1131, !1132, !1133, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1201, !1205, !1225, !1243, !1244, !1245, !1246, !1255, !1278, !1279, !1282, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1296, !1297, !1403, !1411, !1412, !1413, !1415, !1419, !1420, !1424, !1425, !1426, !1427, !1429, !1430, !1431, !1438, !1439, !1440, !1444}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1066, file: !12, line: 403, baseType: !11, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1066, file: !12, line: 406, baseType: !343, size: 128, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1066, file: !12, line: 409, baseType: !1071, size: 448, offset: 192)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 56)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1066, file: !12, line: 417, baseType: !1075, size: 768, offset: 640)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1083}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1075, file: !12, line: 46, baseType: !336, size: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1075, file: !12, line: 47, baseType: !1065, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1075, file: !12, line: 48, baseType: !349, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1075, file: !12, line: 49, baseType: !1081, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1075, file: !12, line: 50, baseType: !1084, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1086, line: 26, size: 256, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1085, file: !1086, line: 27, baseType: !13, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1085, file: !1086, line: 28, baseType: !1090, size: 192, offset: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1091, line: 43, size: 192, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1090, file: !1091, line: 44, baseType: !604, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1090, file: !1091, line: 45, baseType: !343, size: 128, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1066, file: !12, line: 418, baseType: !1096, size: 64, offset: 1408)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !1098)
!1098 = !{!1099, !1100, !1105, !1109, !1113, !1117}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1097, file: !12, line: 54, baseType: !455, size: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1097, file: !12, line: 55, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!449, !1096, !1104, !330}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1097, file: !12, line: 57, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!449, !1096, !1104, !340, !464}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1097, file: !12, line: 59, baseType: !1110, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1065, !340}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1097, file: !12, line: 60, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!81, !1065}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1097, file: !12, line: 61, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !1065}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1066, file: !12, line: 419, baseType: !340, size: 64, offset: 1472)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1066, file: !12, line: 420, baseType: !340, size: 64, offset: 1536)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1066, file: !12, line: 421, baseType: !349, size: 64, offset: 1600)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1066, file: !12, line: 424, baseType: !1125, size: 64, offset: 1664)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1066, file: !12, line: 425, baseType: !1129, size: 64, offset: 1728)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1066, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1066, file: !12, line: 435, baseType: !670, size: 256, offset: 1856)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1066, file: !12, line: 437, baseType: !1134, size: 64, offset: 2112)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1136, line: 69, size: 320, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1137 = !{!1138, !1139, !1140, !1157, !1159, !1163, !1164}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1135, file: !1136, line: 70, baseType: !340, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1135, file: !1136, line: 71, baseType: !1065, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1135, file: !1136, line: 72, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1136, line: 47, size: 256, elements: !1144)
!1144 = !{!1145, !1146, !1152, !1156}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1136, line: 49, baseType: !13, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1143, file: !1136, line: 51, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!81, !340, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1143, file: !1136, line: 53, baseType: !1153, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!81, !330, !1150}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1143, file: !1136, line: 55, baseType: !830, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1135, file: !1136, line: 73, baseType: !1158, size: 16, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1135, file: !1136, line: 74, baseType: !1160, size: 8, offset: 208)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !143, line: 16, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !145, line: 20, baseType: !1162)
!1162 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1136, line: 75, baseType: !157, size: 8, offset: 216)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !1136, line: 76, baseType: !1165, size: 64, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !1136, line: 76, size: 64, elements: !1166)
!1166 = !{!1167, !1168, !1175}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1165, file: !1136, line: 77, baseType: !140, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1165, file: !1136, line: 78, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1136, line: 86, size: 128, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1171, file: !1136, line: 87, baseType: !13, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1171, file: !1136, line: 88, baseType: !330, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1165, file: !1136, line: 79, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1136, line: 92, size: 256, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1184, !1185}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1178, file: !1136, line: 94, baseType: !13, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1178, file: !1136, line: 95, baseType: !13, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1178, file: !1136, line: 96, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1178, file: !1136, line: 97, baseType: !1141, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1178, file: !1136, line: 98, baseType: !140, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1066, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1066, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1066, file: !12, line: 442, baseType: !1125, size: 64, offset: 2240)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1066, file: !12, line: 443, baseType: !1129, size: 64, offset: 2304)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1066, file: !12, line: 444, baseType: !297, size: 8, offset: 2368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1066, file: !12, line: 451, baseType: !297, size: 8, offset: 2376)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1066, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1066, file: !12, line: 455, baseType: !1194, size: 64, offset: 2432)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1196, line: 23, size: 96, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1195, file: !1196, line: 24, baseType: !81, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1195, file: !1196, line: 24, baseType: !81, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1195, file: !1196, line: 24, baseType: !81, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1066, file: !12, line: 458, baseType: !1202, size: 64, offset: 2496)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!81}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1066, file: !12, line: 460, baseType: !1206, size: 4032, align: 512, offset: 2560)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 4032, elements: !1223)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1207, file: !12, line: 363, baseType: !140, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1207, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1207, file: !12, line: 367, baseType: !1212, size: 448, offset: 128)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1212, file: !12, line: 320, baseType: !1065, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1212, file: !12, line: 321, baseType: !1216, size: 384, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1217, line: 40, size: 384, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1216, file: !1217, line: 41, baseType: !1220, size: 384, align: 64)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 384, align: 64, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 2)
!1223 = !{!1224}
!1224 = !DISubrange(count: 7)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1066, file: !12, line: 463, baseType: !1226, size: 192, offset: 6592)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1227, line: 8, size: 192, elements: !1228)
!1227 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1228 = !{!1229, !1230, !1232}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1226, file: !1227, line: 10, baseType: !13, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1226, file: !1227, line: 11, baseType: !1231, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1226, file: !1227, line: 12, baseType: !1233, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1235, line: 59, size: 48, elements: !1236)
!1235 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1234, file: !1235, line: 60, baseType: !708, size: 16)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1234, file: !1235, line: 61, baseType: !708, size: 16, offset: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1234, file: !1235, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1234, file: !1235, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1234, file: !1235, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1234, file: !1235, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1066, file: !12, line: 465, baseType: !259, size: 64, offset: 6784)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1066, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1066, file: !12, line: 470, baseType: !343, size: 128, offset: 6912)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1066, file: !12, line: 471, baseType: !1247, size: 64, offset: 7040)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1249, line: 33, size: 96, elements: !1250)
!1249 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1248, file: !1249, line: 37, baseType: !81, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1248, file: !1249, line: 43, baseType: !81, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1248, file: !1249, line: 45, baseType: !225, size: 16, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 47, baseType: !225, size: 16, offset: 80)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1066, file: !12, line: 476, baseType: !1256, size: 64, offset: 7104)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !1258)
!1258 = !{!1259, !1275, !1276, !1277}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1257, file: !12, line: 379, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1262, line: 204, baseType: !1263)
!1262 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1262, line: 197, size: 192, elements: !1264)
!1264 = !{!1265, !1267, !1268, !1269, !1271, !1273}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1263, file: !1262, line: 198, baseType: !1266, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1262, line: 21, baseType: !144)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1263, file: !1262, line: 199, baseType: !159, size: 8, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1263, file: !1262, line: 200, baseType: !159, size: 8, offset: 40)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1263, file: !1262, line: 201, baseType: !1270, size: 16, offset: 48)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1262, line: 17, baseType: !224)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1263, file: !1262, line: 202, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1262, line: 16, baseType: !206)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1263, file: !1262, line: 203, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1262, line: 22, baseType: !206)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1257, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1257, file: !12, line: 381, baseType: !330, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1257, file: !12, line: 382, baseType: !330, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1066, file: !12, line: 477, baseType: !1257, size: 256, offset: 7168)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1066, file: !12, line: 480, baseType: !1280, size: 64, offset: 7424)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1066, file: !12, line: 483, baseType: !1283, size: 64, offset: 7488)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1066, file: !12, line: 488, baseType: !330, size: 64, offset: 7552)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1066, file: !12, line: 492, baseType: !140, size: 64, offset: 7616)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1066, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1066, file: !12, line: 495, baseType: !140, size: 64, offset: 7744)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1066, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1066, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1066, file: !12, line: 500, baseType: !1292, size: 64, offset: 7872)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1294, line: 45, baseType: !1295)
!1294 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1066, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1066, file: !12, line: 504, baseType: !1298, size: 64, offset: 8000)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1301, line: 96, size: 192, elements: !1302)
!1301 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1302 = !{!1303, !1304, !1364, !1367}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1300, file: !1301, line: 97, baseType: !13, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1300, file: !1301, line: 98, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1301, line: 24, size: 3072, elements: !1307)
!1307 = !{!1308, !1310, !1311, !1312, !1313, !1327, !1328, !1329, !1330, !1348, !1349, !1350, !1361, !1362, !1363}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1306, file: !1301, line: 26, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 128, elements: !1221)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1306, file: !1301, line: 27, baseType: !1309, size: 128, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1306, file: !1301, line: 28, baseType: !81, size: 32, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1306, file: !1301, line: 31, baseType: !356, size: 32, align: 512, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1306, file: !1301, line: 32, baseType: !1314, size: 960, offset: 576)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1315, line: 206, size: 960, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1316 = !{!1317, !1318, !1321, !1323, !1324, !1326}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1314, file: !1315, line: 207, baseType: !525, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1314, file: !1315, line: 208, baseType: !1319, size: 256, offset: 64)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, size: 256, elements: !651)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1314, file: !1315, line: 209, baseType: !1322, size: 256, offset: 320)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !651)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1314, file: !1315, line: 213, baseType: !453, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1314, file: !1315, line: 215, baseType: !1325, size: 256, offset: 640)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 256, elements: !651)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1314, file: !1315, line: 216, baseType: !157, size: 8, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1306, file: !1301, line: 33, baseType: !259, size: 64, offset: 1536)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1306, file: !1301, line: 34, baseType: !259, size: 64, offset: 1600)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1306, file: !1301, line: 35, baseType: !297, size: 8, offset: 1664)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1306, file: !1301, line: 36, baseType: !1331, size: 320, offset: 1728)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1332, line: 11, size: 320, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1333 = !{!1334, !1341, !1342, !1347}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1331, file: !1332, line: 16, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !298, line: 198, size: 128, elements: !1336)
!1336 = !{!1337, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1335, file: !298, line: 199, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1335, file: !298, line: 199, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1331, file: !1332, line: 17, baseType: !259, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1331, file: !1332, line: 18, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !1332, line: 19, baseType: !142, size: 32, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1306, file: !1301, line: 37, baseType: !734, size: 256, offset: 2048)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1306, file: !1301, line: 38, baseType: !522, size: 128, align: 64, offset: 2304)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1306, file: !1301, line: 39, baseType: !1351, size: 64, offset: 2432)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1301, line: 49, size: 768, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1301, line: 50, baseType: !356, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1352, file: !1301, line: 51, baseType: !1322, size: 256, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1352, file: !1301, line: 53, baseType: !1322, size: 256, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1352, file: !1301, line: 54, baseType: !259, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1352, file: !1301, line: 55, baseType: !1351, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1352, file: !1301, line: 56, baseType: !81, size: 32, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1352, file: !1301, line: 57, baseType: !81, size: 32, offset: 736)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1306, file: !1301, line: 40, baseType: !259, size: 64, offset: 2496)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1306, file: !1301, line: 42, baseType: !81, size: 32, offset: 2560)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1306, file: !1301, line: 43, baseType: !1299, size: 64, offset: 2624)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1300, file: !1301, line: 99, baseType: !1365, offset: 128)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1366, line: 211, elements: !552)
!1366 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1300, file: !1301, line: 100, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1301, line: 63, size: 3008, elements: !1370)
!1370 = !{!1371, !1372, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1402}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1369, file: !1301, line: 64, baseType: !1351, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1369, file: !1301, line: 65, baseType: !1373, size: 192, offset: 64)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, size: 192, elements: !418)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1369, file: !1301, line: 67, baseType: !81, size: 32, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1369, file: !1301, line: 68, baseType: !670, size: 256, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !1301, line: 69, baseType: !356, size: 32, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1369, file: !1301, line: 70, baseType: !670, size: 256, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1369, file: !1301, line: 71, baseType: !259, size: 64, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1369, file: !1301, line: 72, baseType: !259, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1369, file: !1301, line: 73, baseType: !259, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1369, file: !1301, line: 74, baseType: !259, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1369, file: !1301, line: 75, baseType: !259, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1369, file: !1301, line: 76, baseType: !259, size: 64, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1369, file: !1301, line: 77, baseType: !259, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1369, file: !1301, line: 78, baseType: !259, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1369, file: !1301, line: 79, baseType: !297, size: 8, offset: 1408)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1369, file: !1301, line: 80, baseType: !259, size: 64, offset: 1472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1369, file: !1301, line: 81, baseType: !670, size: 256, offset: 1536)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1369, file: !1301, line: 82, baseType: !1085, size: 256, offset: 1792)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1369, file: !1301, line: 84, baseType: !376, size: 32, offset: 2048)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1369, file: !1301, line: 87, baseType: !259, size: 64, offset: 2112)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1369, file: !1301, line: 88, baseType: !259, size: 64, offset: 2176)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1369, file: !1301, line: 89, baseType: !1394, size: 704, offset: 2240)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !735, line: 111, size: 704, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1401}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1394, file: !735, line: 112, baseType: !734, size: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1394, file: !735, line: 113, baseType: !1331, size: 320, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1394, file: !735, line: 116, baseType: !1399, size: 64, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !735, line: 18, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1394, file: !735, line: 117, baseType: !81, size: 32, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1369, file: !1301, line: 90, baseType: !1299, size: 64, offset: 2944)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1066, file: !12, line: 515, baseType: !1404, size: 64, offset: 8064)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1406, line: 117, size: 128, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1405, file: !1406, line: 118, baseType: !649, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1405, file: !1406, line: 119, baseType: !649, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1405, file: !1406, line: 120, baseType: !453, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1066, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1066, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1066, file: !12, line: 520, baseType: !1414, size: 64, offset: 8192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1066, file: !12, line: 523, baseType: !1416, size: 64, offset: 8256)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1066, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1066, file: !12, line: 525, baseType: !1421, size: 64, offset: 8384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1066, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1066, file: !12, line: 533, baseType: !140, size: 64, offset: 8512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1066, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1066, file: !12, line: 535, baseType: !1428, size: 64, offset: 8640)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1066, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1066, file: !12, line: 539, baseType: !81, size: 32, offset: 8736)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1066, file: !12, line: 540, baseType: !1432, size: 64, offset: 8768)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1434, line: 32, size: 64, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1433, file: !1434, line: 33, baseType: !649, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1433, file: !1434, line: 34, baseType: !649, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1066, file: !12, line: 563, baseType: !343, size: 128, offset: 8832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1066, file: !12, line: 565, baseType: !343, size: 128, offset: 8960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1066, file: !12, line: 568, baseType: !1441, size: 64, offset: 9088)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1066, file: !12, line: 570, baseType: !376, size: 32, offset: 9152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1060, file: !60, line: 101, baseType: !340, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1060, file: !60, line: 103, baseType: !297, size: 8, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1060, file: !60, line: 104, baseType: !59, size: 32, offset: 288)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1060, file: !60, line: 106, baseType: !1449, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1452, line: 282, size: 1600, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1453 = !{!1454, !1455, !1456, !1460}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1451, file: !1452, line: 283, baseType: !189, size: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !1452, line: 284, baseType: !189, size: 256, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1451, file: !1452, line: 285, baseType: !1457, size: 1024, offset: 512)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1451, file: !1452, line: 286, baseType: !691, size: 64, offset: 1536)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1060, file: !60, line: 107, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1452, line: 217, size: 256, elements: !1465)
!1465 = !{!1466, !1468, !1470, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1464, file: !1452, line: 218, baseType: !1467, size: 128)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !311)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1464, file: !1452, line: 219, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1452, line: 15, baseType: !259)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1464, file: !1452, line: 220, baseType: !144, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1464, file: !1452, line: 221, baseType: !144, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1060, file: !60, line: 109, baseType: !1019, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1060, file: !60, line: 110, baseType: !1010, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1060, file: !60, line: 111, baseType: !1019, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1060, file: !60, line: 112, baseType: !1010, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1060, file: !60, line: 113, baseType: !1477, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!81, !986, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 60, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 58, size: 32, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1481, file: !73, line: 59, baseType: !81, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1060, file: !60, line: 114, baseType: !1019, size: 64, offset: 768)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1060, file: !60, line: 115, baseType: !468, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1060, file: !60, line: 116, baseType: !468, size: 64, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1060, file: !60, line: 118, baseType: !1014, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1060, file: !60, line: 119, baseType: !1010, size: 64, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1060, file: !60, line: 121, baseType: !1490, size: 64, offset: 1088)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !60, line: 121, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1047, file: !1048, line: 88, baseType: !999, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1047, file: !1048, line: 89, baseType: !1019, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1047, file: !1048, line: 90, baseType: !1010, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1047, file: !1048, line: 91, baseType: !1010, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1047, file: !1048, line: 92, baseType: !1010, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1047, file: !1048, line: 94, baseType: !1019, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1047, file: !1048, line: 95, baseType: !1019, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1047, file: !1048, line: 97, baseType: !1477, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1047, file: !1048, line: 98, baseType: !1019, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1047, file: !1048, line: 100, baseType: !1019, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1047, file: !1048, line: 102, baseType: !1019, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1047, file: !1048, line: 103, baseType: !1010, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1047, file: !1048, line: 105, baseType: !1014, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1047, file: !1048, line: 107, baseType: !1506, size: 64, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1048, line: 107, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1047, file: !1048, line: 109, baseType: !297, size: 8, offset: 1280)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !333, file: !66, line: 715, baseType: !1059, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !333, file: !66, line: 717, baseType: !140, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !333, file: !66, line: 719, baseType: !140, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !333, file: !66, line: 721, baseType: !670, size: 256, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !333, file: !66, line: 725, baseType: !1515, size: 448, offset: 1280)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !66, line: 517, size: 448, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1515, file: !66, line: 518, baseType: !343, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1515, file: !66, line: 519, baseType: !343, size: 128, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1515, file: !66, line: 520, baseType: !343, size: 128, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1515, file: !66, line: 521, baseType: !65, size: 32, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !333, file: !66, line: 726, baseType: !1522, size: 2496, offset: 1728)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 663, size: 2496, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1568, !1569, !1570, !1571, !1572, !1573, !1642, !1643, !1644, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1682, !1686}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1522, file: !73, line: 664, baseType: !1480, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1522, file: !73, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1522, file: !73, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1522, file: !73, line: 667, baseType: !297, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1522, file: !73, line: 668, baseType: !297, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1522, file: !73, line: 669, baseType: !297, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1522, file: !73, line: 670, baseType: !297, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1522, file: !73, line: 671, baseType: !297, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1522, file: !73, line: 672, baseType: !297, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1522, file: !73, line: 673, baseType: !297, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1522, file: !73, line: 674, baseType: !297, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1522, file: !73, line: 675, baseType: !142, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !73, line: 676, baseType: !356, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1522, file: !73, line: 678, baseType: !343, size: 128, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1522, file: !73, line: 679, baseType: !1085, size: 256, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1522, file: !73, line: 680, baseType: !1540, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1542, line: 43, size: 1536, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1551, !1552, !1553, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1541, file: !1542, line: 44, baseType: !340, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1541, file: !1542, line: 45, baseType: !81, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1541, file: !1542, line: 46, baseType: !343, size: 128, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !1542, line: 47, baseType: !356, size: 32, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1541, file: !1542, line: 48, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 629, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1541, file: !1542, line: 49, baseType: !1331, size: 320, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1541, file: !1542, line: 50, baseType: !259, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1541, file: !1542, line: 51, baseType: !1554, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1555, line: 29, baseType: !588)
!1555 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1541, file: !1542, line: 52, baseType: !1554, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1541, file: !1542, line: 53, baseType: !1554, size: 64, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1541, file: !1542, line: 54, baseType: !1554, size: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1541, file: !1542, line: 55, baseType: !1554, size: 64, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1541, file: !1542, line: 56, baseType: !259, size: 64, offset: 1088)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1541, file: !1542, line: 57, baseType: !259, size: 64, offset: 1152)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1541, file: !1542, line: 58, baseType: !259, size: 64, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1541, file: !1542, line: 59, baseType: !259, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1541, file: !1542, line: 60, baseType: !259, size: 64, offset: 1344)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1541, file: !1542, line: 61, baseType: !986, size: 64, offset: 1408)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1541, file: !1542, line: 62, baseType: !297, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1541, file: !1542, line: 63, baseType: !297, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1522, file: !73, line: 681, baseType: !297, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1522, file: !73, line: 682, baseType: !297, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1522, file: !73, line: 683, baseType: !297, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1522, file: !73, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1522, file: !73, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1522, file: !73, line: 690, baseType: !1574, size: 512, offset: 640)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !42, line: 118, size: 512, elements: !1575)
!1575 = !{!1576, !1582, !1583, !1588, !1638, !1639, !1640, !1641}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1574, file: !42, line: 119, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1578, line: 9, size: 256, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1577, file: !1578, line: 10, baseType: !773, size: 192, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1577, file: !1578, line: 11, baseType: !1554, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1574, file: !42, line: 120, baseType: !1554, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1574, file: !42, line: 121, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!41, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1574, file: !42, line: 122, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !42, line: 159, size: 512, align: 512, elements: !1591)
!1591 = !{!1592, !1615, !1616, !1619, !1624, !1625, !1633, !1637}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1590, file: !42, line: 160, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !42, line: 215, size: 4608, align: 512, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !42, line: 216, baseType: !604, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1594, file: !42, line: 217, baseType: !13, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1594, file: !42, line: 218, baseType: !13, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1594, file: !42, line: 219, baseType: !13, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1594, file: !42, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1594, file: !42, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1594, file: !42, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1594, file: !42, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1594, file: !42, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1594, file: !42, line: 226, baseType: !13, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1594, file: !42, line: 227, baseType: !225, size: 16, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1594, file: !42, line: 228, baseType: !225, size: 16, offset: 208)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1594, file: !42, line: 229, baseType: !13, size: 32, offset: 224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1594, file: !42, line: 235, baseType: !1554, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1594, file: !42, line: 236, baseType: !1587, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1594, file: !42, line: 237, baseType: !1554, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1594, file: !42, line: 238, baseType: !1587, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1594, file: !42, line: 239, baseType: !1614, size: 4096, align: 512, offset: 512)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1590, size: 4096, align: 512, elements: !192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1590, file: !42, line: 161, baseType: !13, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1590, file: !42, line: 162, baseType: !1617, size: 32, offset: 96)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !298, line: 32, baseType: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !451, line: 96, baseType: !81)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1590, file: !42, line: 163, baseType: !1620, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !619, line: 274, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !619, line: 274, size: 32, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1621, file: !619, line: 274, baseType: !618, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1590, file: !42, line: 164, baseType: !1587, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1590, file: !42, line: 165, baseType: !1626, size: 128, offset: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1578, line: 14, size: 128, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1626, file: !1578, line: 15, baseType: !1629, size: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !774, line: 26, size: 128, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1629, file: !774, line: 27, baseType: !875, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1629, file: !774, line: 28, baseType: !778, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1590, file: !42, line: 166, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1554}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1590, file: !42, line: 167, baseType: !1554, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1574, file: !42, line: 123, baseType: !157, size: 8, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1574, file: !42, line: 124, baseType: !157, size: 8, offset: 456)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1574, file: !42, line: 125, baseType: !157, size: 8, offset: 464)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1574, file: !42, line: 126, baseType: !157, size: 8, offset: 472)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1522, file: !73, line: 691, baseType: !205, size: 64, offset: 1152)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1522, file: !73, line: 692, baseType: !734, size: 256, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1522, file: !73, line: 693, baseType: !1645, size: 192, offset: 1472)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1646, line: 41, baseType: !1647)
!1646 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1646, line: 37, size: 192, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1647, file: !1646, line: 38, baseType: !356, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1647, file: !1646, line: 39, baseType: !343, size: 128, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1522, file: !73, line: 694, baseType: !1549, size: 64, offset: 1664)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1522, file: !73, line: 695, baseType: !376, size: 32, offset: 1728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1522, file: !73, line: 696, baseType: !376, size: 32, offset: 1760)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1522, file: !73, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1522, file: !73, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1522, file: !73, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1522, file: !73, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1522, file: !73, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1522, file: !73, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1522, file: !73, line: 703, baseType: !297, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1522, file: !73, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1522, file: !73, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1522, file: !73, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1522, file: !73, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1522, file: !73, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1522, file: !73, line: 709, baseType: !13, size: 32, offset: 1824)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1522, file: !73, line: 710, baseType: !72, size: 32, offset: 1856)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1522, file: !73, line: 711, baseType: !80, size: 32, offset: 1888)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1522, file: !73, line: 712, baseType: !80, size: 32, offset: 1920)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1522, file: !73, line: 713, baseType: !81, size: 32, offset: 1952)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1522, file: !73, line: 714, baseType: !81, size: 32, offset: 1984)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1522, file: !73, line: 715, baseType: !205, size: 64, offset: 2048)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1522, file: !73, line: 716, baseType: !205, size: 64, offset: 2112)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1522, file: !73, line: 717, baseType: !205, size: 64, offset: 2176)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1522, file: !73, line: 718, baseType: !205, size: 64, offset: 2240)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1522, file: !73, line: 720, baseType: !1677, size: 64, offset: 2304)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 632, size: 64, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1678, file: !73, line: 633, baseType: !356, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1678, file: !73, line: 634, baseType: !13, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1522, file: !73, line: 721, baseType: !1683, size: 64, offset: 2368)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !986, !649}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1522, file: !73, line: 722, baseType: !1687, size: 64, offset: 2432)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !26, line: 117, size: 2432, elements: !1689)
!1689 = !{!1690, !1719, !1720, !1727, !1732, !1759, !1760}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1688, file: !26, line: 118, baseType: !1691, size: 320)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !26, line: 52, size: 320, elements: !1692)
!1692 = !{!1693, !1698, !1699, !1700, !1701, !1702}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1691, file: !26, line: 53, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1695, line: 82, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1694, file: !1695, line: 83, baseType: !343, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1691, file: !26, line: 54, baseType: !649, size: 32, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1691, file: !26, line: 55, baseType: !649, size: 32, offset: 160)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1691, file: !26, line: 56, baseType: !649, size: 32, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1691, file: !26, line: 57, baseType: !25, size: 32, offset: 224)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1691, file: !26, line: 58, baseType: !1703, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1705, line: 65, size: 384, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1704, file: !1705, line: 66, baseType: !593, size: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1704, file: !1705, line: 67, baseType: !1709, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1705, line: 54, size: 192, elements: !1711)
!1711 = !{!1712, !1717, !1718}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1710, file: !1705, line: 55, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1705, line: 51, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!81, !1709, !259, !140}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1710, file: !1705, line: 56, baseType: !1709, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1710, file: !1705, line: 57, baseType: !81, size: 32, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1688, file: !26, line: 119, baseType: !1691, size: 320, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1688, file: !26, line: 120, baseType: !1721, size: 1408, offset: 640)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !26, line: 85, size: 1408, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1721, file: !26, line: 86, baseType: !1691, size: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1721, file: !26, line: 87, baseType: !1704, size: 384, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1721, file: !26, line: 88, baseType: !1691, size: 320, offset: 704)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1721, file: !26, line: 89, baseType: !1704, size: 384, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !26, line: 121, baseType: !1728, size: 192, offset: 2048)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !26, line: 71, size: 192, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1728, file: !26, line: 72, baseType: !343, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1728, file: !26, line: 73, baseType: !649, size: 32, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1688, file: !26, line: 122, baseType: !1733, size: 64, offset: 2240)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !26, line: 107, size: 576, elements: !1735)
!1735 = !{!1736, !1737, !1758}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1734, file: !26, line: 108, baseType: !88, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1734, file: !26, line: 113, baseType: !1738, size: 448, offset: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1734, file: !26, line: 109, size: 448, elements: !1739)
!1739 = !{!1740, !1746, !1751}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1738, file: !26, line: 110, baseType: !1741, size: 320)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1695, line: 86, size: 320, elements: !1742)
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1741, file: !1695, line: 87, baseType: !81, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1741, file: !1695, line: 88, baseType: !343, size: 128, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1741, file: !1695, line: 89, baseType: !343, size: 128, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1738, file: !26, line: 111, baseType: !1747, size: 192)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !26, line: 66, size: 192, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1747, file: !26, line: 67, baseType: !343, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1747, file: !26, line: 68, baseType: !649, size: 32, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1738, file: !26, line: 112, baseType: !1752, size: 448)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !26, line: 92, size: 448, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1752, file: !26, line: 93, baseType: !31, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1752, file: !26, line: 94, baseType: !1741, size: 320, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1752, file: !26, line: 95, baseType: !1757, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1734, file: !26, line: 114, baseType: !986, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1688, file: !26, line: 123, baseType: !1733, size: 64, offset: 2304)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1688, file: !26, line: 124, baseType: !1733, size: 64, offset: 2368)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !333, file: !66, line: 727, baseType: !1762, size: 64, offset: 4224)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 742, size: 1792, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1771, !1772, !1773}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1763, file: !73, line: 743, baseType: !1016, size: 1472)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1763, file: !73, line: 744, baseType: !1019, size: 64, offset: 1472)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1763, file: !73, line: 745, baseType: !1768, size: 64, offset: 1536)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !986, !297}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1763, file: !73, line: 746, baseType: !1019, size: 64, offset: 1600)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1763, file: !73, line: 747, baseType: !1010, size: 64, offset: 1664)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1763, file: !73, line: 748, baseType: !1010, size: 64, offset: 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !333, file: !66, line: 736, baseType: !1775, size: 128, offset: 4288)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !66, line: 529, size: 128, elements: !1776)
!1776 = !{!1777, !1781}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1775, file: !66, line: 531, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1780, line: 13, flags: DIFlagFwdDecl)
!1780 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1775, file: !66, line: 532, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !66, line: 49, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !333, file: !66, line: 738, baseType: !1785, size: 64, offset: 4416)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !66, line: 738, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !333, file: !66, line: 740, baseType: !1789, size: 64, offset: 4480)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !333, file: !66, line: 741, baseType: !205, size: 64, offset: 4544)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !333, file: !66, line: 746, baseType: !205, size: 64, offset: 4608)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !333, file: !66, line: 747, baseType: !1793, size: 64, offset: 4672)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !66, line: 747, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !333, file: !66, line: 749, baseType: !1797, size: 64, offset: 4736)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !66, line: 428, size: 128, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1798, file: !66, line: 433, baseType: !13, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1798, file: !66, line: 434, baseType: !13, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1798, file: !66, line: 435, baseType: !259, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !333, file: !66, line: 751, baseType: !343, size: 128, offset: 4800)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !333, file: !66, line: 762, baseType: !1805, size: 64, offset: 4928)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !66, line: 762, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !333, file: !66, line: 770, baseType: !1808, offset: 4992)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1809, line: 5, elements: !552)
!1809 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !333, file: !66, line: 772, baseType: !1811, size: 64, offset: 4992)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1813, line: 48, size: 1152, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1814 = !{!1815, !1816, !1818, !1819, !1922, !1930, !1931, !1932, !1933, !1934, !1935}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 49, baseType: !340, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1812, file: !1813, line: 50, baseType: !1817, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1813, line: 25, baseType: !142)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1812, file: !1813, line: 51, baseType: !340, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1812, file: !1813, line: 52, baseType: !1820, size: 512, offset: 192)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1821, line: 41, size: 512, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1822 = !{!1823, !1825, !1918, !1919, !1920, !1921}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1820, file: !1821, line: 42, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1820, file: !1821, line: 43, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1821, line: 125, size: 1408, elements: !1829)
!1829 = !{!1830, !1834, !1838, !1844, !1848, !1849, !1853, !1857, !1861, !1865, !1869, !1870, !1874, !1878, !1882, !1893, !1894, !1895, !1896, !1906, !1910, !1914}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1828, file: !1821, line: 126, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1824, !1824}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1828, file: !1821, line: 127, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1824}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1828, file: !1821, line: 128, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!297, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1828, file: !1821, line: 129, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!691, !1842, !1002}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1828, file: !1821, line: 131, baseType: !1839, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1828, file: !1821, line: 133, baseType: !1850, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!95, !1842}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1828, file: !1821, line: 134, baseType: !1854, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!297, !1842, !340}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1828, file: !1821, line: 136, baseType: !1858, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!81, !1842, !340, !13, !140, !464}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1828, file: !1821, line: 141, baseType: !1862, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!81, !1842, !340, !1414, !464}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1828, file: !1821, line: 144, baseType: !1866, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!340, !1842}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1828, file: !1821, line: 145, baseType: !1866, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1828, file: !1821, line: 146, baseType: !1871, size: 64, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1824, !1842}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1828, file: !1821, line: 148, baseType: !1875, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1824, !1842, !1824}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1828, file: !1821, line: 151, baseType: !1879, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1824, !1842, !340}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1828, file: !1821, line: 153, baseType: !1883, size: 64, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!81, !1842, !340, !340, !13, !13, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1821, line: 94, size: 640, elements: !1888)
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1887, file: !1821, line: 95, baseType: !1824, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1887, file: !1821, line: 96, baseType: !13, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1887, file: !1821, line: 97, baseType: !1892, size: 512, offset: 128)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 512, elements: !192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1828, file: !1821, line: 158, baseType: !1875, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1828, file: !1821, line: 161, baseType: !1871, size: 64, offset: 1024)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1828, file: !1821, line: 163, baseType: !1831, size: 64, offset: 1088)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1828, file: !1821, line: 164, baseType: !1897, size: 64, offset: 1152)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!81, !1842, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1821, line: 73, size: 128, elements: !1902)
!1902 = !{!1903, !1904, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1901, file: !1821, line: 74, baseType: !13, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1901, file: !1821, line: 75, baseType: !13, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1901, file: !1821, line: 76, baseType: !1842, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1828, file: !1821, line: 166, baseType: !1907, size: 64, offset: 1216)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!140, !1824, !81}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1828, file: !1821, line: 167, baseType: !1911, size: 64, offset: 1280)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!81, !1842, !13}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1828, file: !1821, line: 168, baseType: !1915, size: 64, offset: 1344)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!81, !1824}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1820, file: !1821, line: 44, baseType: !986, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1820, file: !1821, line: 45, baseType: !343, size: 128, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1820, file: !1821, line: 46, baseType: !343, size: 128, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1821, line: 47, baseType: !157, size: 8, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1812, file: !1813, line: 54, baseType: !1923, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1813, line: 28, size: 256, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1924, file: !1813, line: 29, baseType: !330, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1924, file: !1813, line: 30, baseType: !81, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1924, file: !1813, line: 31, baseType: !140, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1924, file: !1813, line: 32, baseType: !1923, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1812, file: !1813, line: 55, baseType: !1923, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1812, file: !1813, line: 56, baseType: !1811, size: 64, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1812, file: !1813, line: 57, baseType: !1811, size: 64, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1812, file: !1813, line: 58, baseType: !1811, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1812, file: !1813, line: 62, baseType: !259, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1812, file: !1813, line: 63, baseType: !140, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !333, file: !66, line: 773, baseType: !1824, size: 64, offset: 5056)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !333, file: !66, line: 776, baseType: !81, size: 32, offset: 5120)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !333, file: !66, line: 778, baseType: !1939, size: 32, offset: 5152)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !298, line: 21, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !298, line: 18, baseType: !142)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !333, file: !66, line: 779, baseType: !142, size: 32, offset: 5184)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !333, file: !66, line: 781, baseType: !356, size: 32, offset: 5216)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !333, file: !66, line: 782, baseType: !343, size: 128, offset: 5248)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !333, file: !66, line: 784, baseType: !1945, size: 64, offset: 5376)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1948, line: 52, size: 768, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1958, !1962, !1963, !1964, !1965, !1969, !1973}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1948, line: 53, baseType: !340, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1947, file: !1948, line: 55, baseType: !468, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1947, file: !1948, line: 56, baseType: !468, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1947, file: !1948, line: 58, baseType: !999, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1947, file: !1948, line: 59, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!330, !1002, !1008}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1947, file: !1948, line: 61, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1945}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1947, file: !1948, line: 62, baseType: !1010, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1947, file: !1948, line: 64, baseType: !1019, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1947, file: !1948, line: 66, baseType: !806, size: 64, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1947, file: !1948, line: 67, baseType: !1966, size: 64, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!691, !1002}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1947, file: !1948, line: 69, baseType: !1970, size: 64, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1002, !841, !848}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1947, file: !1948, line: 71, baseType: !1014, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !333, file: !66, line: 785, baseType: !468, size: 64, offset: 5440)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !333, file: !66, line: 787, baseType: !1010, size: 64, offset: 5504)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !333, file: !66, line: 788, baseType: !1977, size: 64, offset: 5568)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !66, line: 46, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !333, file: !66, line: 789, baseType: !1980, size: 64, offset: 5632)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !66, line: 48, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !333, file: !66, line: 791, baseType: !1983, size: 64, offset: 5696)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !66, line: 597, size: 128, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1984, file: !66, line: 598, baseType: !101, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1984, file: !66, line: 599, baseType: !110, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1984, file: !66, line: 600, baseType: !115, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1984, file: !66, line: 601, baseType: !297, size: 8, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1984, file: !66, line: 602, baseType: !297, size: 8, offset: 104)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !333, file: !66, line: 793, baseType: !120, size: 32, offset: 5760)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !333, file: !66, line: 795, baseType: !297, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !333, file: !66, line: 796, baseType: !297, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !333, file: !66, line: 797, baseType: !297, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !333, file: !66, line: 798, baseType: !297, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !333, file: !66, line: 799, baseType: !297, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !325, file: !326, line: 103, baseType: !1811, size: 64, offset: 6016)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !325, file: !326, line: 104, baseType: !140, size: 64, offset: 6080)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !325, file: !326, line: 105, baseType: !140, size: 64, offset: 6144)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !325, file: !326, line: 106, baseType: !2001, size: 64, offset: 6208)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !326, line: 89, size: 384, elements: !2004)
!2004 = !{!2005, !2009, !2010, !2014, !2019, !2023}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2003, file: !326, line: 90, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!81, !324, !1428}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2003, file: !326, line: 91, baseType: !2006, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2003, file: !326, line: 92, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!81, !324, !259}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2003, file: !326, line: 93, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!81, !324, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2003, file: !326, line: 94, baseType: !2020, size: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!81, !324, !259, !2018}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2003, file: !326, line: 95, baseType: !2024, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!81, !324, !142, !1428}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !325, file: !326, line: 107, baseType: !297, size: 8, offset: 6272)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !325, file: !326, line: 108, baseType: !670, size: 256, offset: 6336)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !325, file: !326, line: 109, baseType: !343, size: 128, offset: 6592)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !325, file: !326, line: 110, baseType: !343, size: 128, offset: 6720)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !134, file: !135, line: 239, baseType: !986, size: 64, offset: 6976)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !134, file: !135, line: 240, baseType: !1752, size: 448, offset: 7040)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !134, file: !135, line: 241, baseType: !1752, size: 448, offset: 7488)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !2036, line: 83, size: 2368, elements: !2037)
!2036 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2037 = !{!2038, !2049, !2050, !2051, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2069, !2071, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !2036, line: 84, baseType: !2039, size: 32)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !2036, line: 84, size: 32, elements: !2040)
!2040 = !{!2041, !2048}
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !2036, line: 90, baseType: !2042, size: 32)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2039, file: !2036, line: 90, size: 32, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !2042, file: !2036, line: 91, baseType: !158, size: 8)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !2042, file: !2036, line: 93, baseType: !158, size: 8, offset: 8)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !2042, file: !2036, line: 95, baseType: !158, size: 8, offset: 16)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !2042, file: !2036, line: 96, baseType: !158, size: 8, offset: 24)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !2039, file: !2036, line: 99, baseType: !144, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !2035, file: !2036, line: 101, baseType: !158, size: 8, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !2035, file: !2036, line: 104, baseType: !81, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !2035, file: !2036, line: 107, baseType: !2052, size: 160, offset: 96)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 160, elements: !2053)
!2053 = !{!2054}
!2054 = !DISubrange(count: 5)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !2035, file: !2036, line: 109, baseType: !158, size: 8, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !2035, file: !2036, line: 110, baseType: !158, size: 8, offset: 264)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !2035, file: !2036, line: 112, baseType: !158, size: 8, offset: 272)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !2035, file: !2036, line: 113, baseType: !158, size: 8, offset: 280)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !2035, file: !2036, line: 115, baseType: !144, size: 32, offset: 288)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !2035, file: !2036, line: 117, baseType: !81, size: 32, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !2036, line: 123, baseType: !2062, size: 768, offset: 384)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !2036, line: 123, size: 768, elements: !2063)
!2063 = !{!2064, !2068}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !2062, file: !2036, line: 124, baseType: !2065, size: 768)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 768, elements: !2066)
!2066 = !{!2067}
!2067 = !DISubrange(count: 24)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !2062, file: !2036, line: 125, baseType: !259, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !2035, file: !2036, line: 127, baseType: !2070, size: 128, offset: 1152)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !311)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !2035, file: !2036, line: 128, baseType: !2072, size: 512, offset: 1280)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !422)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !2035, file: !2036, line: 130, baseType: !13, size: 32, offset: 1792)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !2035, file: !2036, line: 131, baseType: !81, size: 32, offset: 1824)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !2035, file: !2036, line: 133, baseType: !81, size: 32, offset: 1856)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !2035, file: !2036, line: 134, baseType: !81, size: 32, offset: 1888)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !2035, file: !2036, line: 135, baseType: !81, size: 32, offset: 1920)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !2035, file: !2036, line: 136, baseType: !81, size: 32, offset: 1952)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !2035, file: !2036, line: 137, baseType: !259, size: 64, offset: 1984)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !2035, file: !2036, line: 139, baseType: !205, size: 64, offset: 2048)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !2035, file: !2036, line: 141, baseType: !223, size: 16, offset: 2112)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !2035, file: !2036, line: 142, baseType: !223, size: 16, offset: 2128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !2035, file: !2036, line: 143, baseType: !223, size: 16, offset: 2144)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !2035, file: !2036, line: 144, baseType: !223, size: 16, offset: 2160)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !2035, file: !2036, line: 146, baseType: !223, size: 16, offset: 2176)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !2035, file: !2036, line: 148, baseType: !223, size: 16, offset: 2192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !2035, file: !2036, line: 150, baseType: !223, size: 16, offset: 2208)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !2035, file: !2036, line: 152, baseType: !223, size: 16, offset: 2224)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !2035, file: !2036, line: 153, baseType: !223, size: 16, offset: 2240)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !2035, file: !2036, line: 154, baseType: !223, size: 16, offset: 2256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !2035, file: !2036, line: 156, baseType: !223, size: 16, offset: 2272)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !2035, file: !2036, line: 158, baseType: !297, size: 8, offset: 2288)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !2035, file: !2036, line: 159, baseType: !142, size: 32, offset: 2304)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !2035, file: !2036, line: 161, baseType: !157, size: 8, offset: 2336)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2035, file: !2036, line: 162, baseType: !13, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!2098 = !{!0, !7, !2099, !2104, !2106, !2111, !2114, !2119, !2121}
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !2101, isLocal: true, isDefinition: true)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !2102)
!2102 = !{!2103}
!2103 = !DISubrange(count: 10)
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !2070, isLocal: true, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !2108, isLocal: true, isDefinition: true)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !2109)
!2109 = !{!2110}
!2110 = !DISubrange(count: 47)
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !2113, isLocal: true, isDefinition: true)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1223)
!2114 = !DIGlobalVariableExpression(var: !2115, expr: !DIExpression())
!2115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !2116, isLocal: true, isDefinition: true)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !2117)
!2117 = !{!2118}
!2118 = !DISubrange(count: 38)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(name: "cpufreq_thermal_reduction_pctg", scope: !9, file: !2, line: 31, type: !13, isLocal: true, isDefinition: true)
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !1071, isLocal: true, isDefinition: true)
!2123 = !{i32 7, !"Dwarf Version", i32 5}
!2124 = !{i32 2, !"Debug Info Version", i32 3}
!2125 = !{i32 1, !"wchar_size", i32 2}
!2126 = !{i32 8, !"cf-protection-branch", i32 1}
!2127 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2128 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2129 = !{i32 1, !"Code Model", i32 2}
!2130 = !{i32 1, !"override-stack-alignment", i32 8}
!2131 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2132 = distinct !DISubprogram(name: "acpi_thermal_cpufreq_init", scope: !2, file: !2, line: 129, type: !2133, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3281)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !36, line: 55, size: 5120, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143, !2147, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2184, !2185, !2186, !2187, !2188, !2190, !2191, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !3274, !3277, !3278, !3279, !3280}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !2136, file: !36, line: 57, baseType: !252, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !2136, file: !36, line: 58, baseType: !252, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !2136, file: !36, line: 59, baseType: !252, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2136, file: !36, line: 61, baseType: !13, size: 32, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2136, file: !36, line: 63, baseType: !13, size: 32, offset: 224)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2136, file: !36, line: 65, baseType: !2144, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2146, line: 17, flags: DIFlagFwdDecl)
!2146 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !2136, file: !36, line: 66, baseType: !2148, size: 96, offset: 320)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !36, line: 47, size: 96, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2148, file: !36, line: 48, baseType: !13, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2148, file: !36, line: 49, baseType: !13, size: 32, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2148, file: !36, line: 52, baseType: !13, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2136, file: !36, line: 68, baseType: !13, size: 32, offset: 416)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2136, file: !36, line: 69, baseType: !13, size: 32, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2136, file: !36, line: 70, baseType: !13, size: 32, offset: 480)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !2136, file: !36, line: 72, baseType: !13, size: 32, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2136, file: !36, line: 74, baseType: !13, size: 32, offset: 544)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !2136, file: !36, line: 75, baseType: !13, size: 32, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2136, file: !36, line: 76, baseType: !2160, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !36, line: 577, size: 832, elements: !2162)
!2162 = !{!2163, !2164, !2168, !2170, !2171, !2172, !2173, !2177, !2181, !2182, !2183}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2161, file: !36, line: 578, baseType: !2070, size: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2161, file: !36, line: 579, baseType: !2165, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!81, !2135}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2161, file: !36, line: 580, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2161, file: !36, line: 581, baseType: !2165, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2161, file: !36, line: 582, baseType: !2169, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2161, file: !36, line: 583, baseType: !2169, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !2161, file: !36, line: 584, baseType: !2174, size: 64, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!449, !2135, !330}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !2161, file: !36, line: 586, baseType: !2178, size: 64, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!81, !2135, !13}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2161, file: !36, line: 588, baseType: !343, size: 128, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2161, file: !36, line: 589, baseType: !1065, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !36, line: 590, baseType: !157, size: 8, offset: 768)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2136, file: !36, line: 77, baseType: !140, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !2136, file: !36, line: 78, baseType: !2070, size: 128, offset: 768)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !2136, file: !36, line: 80, baseType: !734, size: 256, offset: 896)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !2136, file: !36, line: 83, baseType: !1721, size: 1408, offset: 1152)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !2136, file: !36, line: 84, baseType: !2189, size: 64, offset: 2560)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !2136, file: !36, line: 85, baseType: !2189, size: 64, offset: 2624)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !2136, file: !36, line: 87, baseType: !2192, size: 64, offset: 2688)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !36, line: 690, size: 96, elements: !2194)
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !36, line: 691, baseType: !13, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2193, file: !36, line: 692, baseType: !13, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2193, file: !36, line: 693, baseType: !13, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !2136, file: !36, line: 88, baseType: !35, size: 32, offset: 2752)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !2136, file: !36, line: 90, baseType: !343, size: 128, offset: 2816)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2136, file: !36, line: 91, baseType: !336, size: 512, offset: 2944)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !2136, file: !36, line: 92, baseType: !1085, size: 256, offset: 3456)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2136, file: !36, line: 102, baseType: !593, size: 320, offset: 3712)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !2136, file: !36, line: 112, baseType: !297, size: 8, offset: 4032)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !2136, file: !36, line: 113, baseType: !297, size: 8, offset: 4040)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !2136, file: !36, line: 119, baseType: !297, size: 8, offset: 4048)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !2136, file: !36, line: 126, baseType: !297, size: 8, offset: 4056)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !2136, file: !36, line: 133, baseType: !13, size: 32, offset: 4064)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !2136, file: !36, line: 142, baseType: !297, size: 8, offset: 4096)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !2136, file: !36, line: 145, baseType: !297, size: 8, offset: 4104)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !2136, file: !36, line: 148, baseType: !13, size: 32, offset: 4128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !2136, file: !36, line: 149, baseType: !13, size: 32, offset: 4160)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !2136, file: !36, line: 152, baseType: !297, size: 8, offset: 4192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !2136, file: !36, line: 153, baseType: !356, size: 32, offset: 4224)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !2136, file: !36, line: 154, baseType: !1645, size: 192, offset: 4288)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !2136, file: !36, line: 155, baseType: !2216, size: 64, offset: 4480)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !906, line: 746, size: 58368, elements: !2218)
!2218 = !{!2219, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2304, !2315, !2335, !2339, !2342, !2373, !2374, !2375, !2376, !2380, !2382, !2383, !2384, !2385, !2386, !2387, !2398, !2399, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2498, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2534, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2569, !2575, !2580, !2581, !2582, !2585, !2586, !2589, !2596, !2601, !2604, !2607, !2610, !2614, !2617, !2620, !2626, !2627, !2628, !2634, !2635, !2636, !2637, !2638, !2641, !2642, !2643, !2652, !2660, !2661, !2662, !2663, !2664, !2669, !2670, !2671, !2674, !2675, !2678, !2681, !2684, !2687, !2690, !2691, !2777, !2788, !2789, !2790, !2791, !2797, !2802, !2803, !2804, !2807, !2808, !2811, !2814, !2815, !2818, !2819, !2820, !2823, !2824, !2825, !2826, !2827, !2828, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2860, !2863, !2929, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2941, !3013, !3015, !3016, !3017, !3018, !3019, !3020, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3050, !3051, !3052}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2217, file: !906, line: 752, baseType: !2220, size: 192)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2221, line: 56, size: 192, elements: !2222)
!2221 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2222 = !{!2223, !2224, !2225, !2226}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2220, file: !2221, line: 57, baseType: !259, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2220, file: !2221, line: 58, baseType: !259, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2220, file: !2221, line: 59, baseType: !142, size: 32, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2220, file: !2221, line: 61, baseType: !142, size: 32, offset: 160)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2217, file: !906, line: 754, baseType: !13, size: 32, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2217, file: !906, line: 767, baseType: !140, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2217, file: !906, line: 768, baseType: !975, size: 32, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2217, file: !906, line: 770, baseType: !13, size: 32, offset: 352)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2217, file: !906, line: 771, baseType: !13, size: 32, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2217, file: !906, line: 774, baseType: !81, size: 32, offset: 416)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2217, file: !906, line: 775, baseType: !2234, size: 128, offset: 448)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2235, line: 58, size: 128, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2236 = !{!2237, !2243, !2248, !2249}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2234, file: !2235, line: 59, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2239, line: 60, size: 64, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2240 = !{!2241}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2238, file: !2239, line: 61, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2235, line: 60, baseType: !2244, size: 32, offset: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2235, line: 60, size: 32, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2244, file: !2235, line: 61, baseType: !13, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2244, file: !2235, line: 62, baseType: !376, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2234, file: !2235, line: 65, baseType: !223, size: 16, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2234, file: !2235, line: 65, baseType: !223, size: 16, offset: 112)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2217, file: !906, line: 776, baseType: !13, size: 32, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2217, file: !906, line: 777, baseType: !259, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2217, file: !906, line: 778, baseType: !2216, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2217, file: !906, line: 787, baseType: !81, size: 32, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2217, file: !906, line: 788, baseType: !81, size: 32, offset: 800)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2217, file: !906, line: 790, baseType: !81, size: 32, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2217, file: !906, line: 792, baseType: !81, size: 32, offset: 864)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2217, file: !906, line: 793, baseType: !81, size: 32, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2217, file: !906, line: 794, baseType: !81, size: 32, offset: 928)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2217, file: !906, line: 795, baseType: !13, size: 32, offset: 960)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2217, file: !906, line: 797, baseType: !2261, size: 2048, offset: 1024)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !906, line: 551, size: 2048, elements: !2262)
!2262 = !{!2263, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2283, !2286, !2287, !2288}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2261, file: !906, line: 553, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !906, line: 411, size: 128, elements: !2265)
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2264, file: !906, line: 412, baseType: !259, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2264, file: !906, line: 413, baseType: !142, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2261, file: !906, line: 554, baseType: !773, size: 192, align: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2261, file: !906, line: 555, baseType: !205, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2261, file: !906, line: 556, baseType: !205, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2261, file: !906, line: 558, baseType: !343, size: 128, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2261, file: !906, line: 559, baseType: !13, size: 32, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2261, file: !906, line: 561, baseType: !205, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2261, file: !906, line: 562, baseType: !205, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2261, file: !906, line: 563, baseType: !205, size: 64, offset: 768)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2261, file: !906, line: 564, baseType: !205, size: 64, offset: 832)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2261, file: !906, line: 565, baseType: !588, size: 64, offset: 896)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2261, file: !906, line: 566, baseType: !205, size: 64, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2261, file: !906, line: 568, baseType: !205, size: 64, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2261, file: !906, line: 571, baseType: !81, size: 32, offset: 1088)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2261, file: !906, line: 572, baseType: !2282, size: 64, offset: 1152)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2261, file: !906, line: 574, baseType: !2284, size: 64, offset: 1216)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !906, line: 49, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2261, file: !906, line: 576, baseType: !2284, size: 64, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2261, file: !906, line: 578, baseType: !259, size: 64, offset: 1344)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2261, file: !906, line: 588, baseType: !2289, size: 512, align: 512, offset: 1536)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !906, line: 497, size: 512, align: 512, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2289, file: !906, line: 498, baseType: !205, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2289, file: !906, line: 499, baseType: !205, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2289, file: !906, line: 500, baseType: !205, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2289, file: !906, line: 501, baseType: !142, size: 32, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2289, file: !906, line: 502, baseType: !142, size: 32, offset: 224)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2289, file: !906, line: 503, baseType: !259, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2289, file: !906, line: 504, baseType: !259, size: 64, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2289, file: !906, line: 505, baseType: !259, size: 64, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2289, file: !906, line: 506, baseType: !2300, size: 64, align: 64, offset: 448)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !906, line: 445, size: 64, align: 64, elements: !2301)
!2301 = !{!2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2300, file: !906, line: 446, baseType: !13, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2300, file: !906, line: 447, baseType: !13, size: 32, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2217, file: !906, line: 798, baseType: !2305, size: 384, offset: 3072)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !906, line: 592, size: 384, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2305, file: !906, line: 593, baseType: !343, size: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2305, file: !906, line: 594, baseType: !259, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2305, file: !906, line: 595, baseType: !259, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2305, file: !906, line: 596, baseType: !13, size: 32, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2305, file: !906, line: 597, baseType: !225, size: 16, offset: 288)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2305, file: !906, line: 598, baseType: !225, size: 16, offset: 304)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2305, file: !906, line: 600, baseType: !2314, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2217, file: !906, line: 799, baseType: !2316, size: 1792, offset: 3456)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !906, line: 610, size: 1792, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2316, file: !906, line: 611, baseType: !773, size: 192, align: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2316, file: !906, line: 618, baseType: !205, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2316, file: !906, line: 619, baseType: !205, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2316, file: !906, line: 620, baseType: !205, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2316, file: !906, line: 621, baseType: !205, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2316, file: !906, line: 622, baseType: !205, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2316, file: !906, line: 629, baseType: !588, size: 64, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2316, file: !906, line: 630, baseType: !205, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !906, line: 631, baseType: !13, size: 32, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2316, file: !906, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2316, file: !906, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2316, file: !906, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2316, file: !906, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2316, file: !906, line: 662, baseType: !1574, size: 512, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2316, file: !906, line: 671, baseType: !1574, size: 512, offset: 1216)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2316, file: !906, line: 679, baseType: !2334, size: 64, offset: 1728)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2217, file: !906, line: 800, baseType: !2336, size: 64, offset: 5248)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2338)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !906, line: 800, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2217, file: !906, line: 809, baseType: !2340, size: 64, offset: 5312)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !906, line: 70, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2217, file: !906, line: 825, baseType: !2343, size: 2048, align: 512, offset: 5632)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !906, line: 509, size: 2048, align: 512, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2343, file: !906, line: 511, baseType: !205, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2343, file: !906, line: 512, baseType: !205, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2343, file: !906, line: 513, baseType: !205, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2343, file: !906, line: 514, baseType: !205, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2343, file: !906, line: 515, baseType: !205, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2343, file: !906, line: 516, baseType: !205, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2343, file: !906, line: 518, baseType: !205, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2343, file: !906, line: 519, baseType: !205, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2343, file: !906, line: 520, baseType: !588, size: 64, offset: 512)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2343, file: !906, line: 522, baseType: !205, size: 64, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2343, file: !906, line: 523, baseType: !205, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2343, file: !906, line: 524, baseType: !588, size: 64, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2343, file: !906, line: 526, baseType: !588, size: 64, offset: 768)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2343, file: !906, line: 527, baseType: !205, size: 64, offset: 832)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2343, file: !906, line: 529, baseType: !205, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2343, file: !906, line: 530, baseType: !205, size: 64, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2343, file: !906, line: 531, baseType: !205, size: 64, offset: 1024)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2343, file: !906, line: 532, baseType: !205, size: 64, offset: 1088)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2343, file: !906, line: 533, baseType: !205, size: 64, offset: 1152)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2343, file: !906, line: 535, baseType: !205, size: 64, offset: 1216)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2343, file: !906, line: 536, baseType: !205, size: 64, offset: 1280)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2343, file: !906, line: 537, baseType: !205, size: 64, offset: 1344)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2343, file: !906, line: 538, baseType: !205, size: 64, offset: 1408)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2343, file: !906, line: 539, baseType: !205, size: 64, offset: 1472)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2343, file: !906, line: 540, baseType: !205, size: 64, offset: 1536)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2343, file: !906, line: 541, baseType: !205, size: 64, offset: 1600)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2343, file: !906, line: 542, baseType: !205, size: 64, offset: 1664)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2343, file: !906, line: 543, baseType: !205, size: 64, offset: 1728)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2217, file: !906, line: 833, baseType: !13, size: 32, offset: 7680)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2217, file: !906, line: 836, baseType: !13, size: 32, offset: 7712)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2217, file: !906, line: 837, baseType: !81, size: 32, offset: 7744)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2217, file: !906, line: 838, baseType: !2377, size: 64, offset: 7808)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !253, line: 19, baseType: !255)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2217, file: !906, line: 839, baseType: !2381, size: 64, offset: 7872)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2217, file: !906, line: 840, baseType: !2379, size: 64, offset: 7936)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2217, file: !906, line: 841, baseType: !140, size: 64, offset: 8000)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2217, file: !906, line: 843, baseType: !225, size: 16, offset: 8064)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2217, file: !906, line: 845, baseType: !225, size: 16, offset: 8080)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2217, file: !906, line: 848, baseType: !81, size: 32, offset: 8096)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2217, file: !906, line: 849, baseType: !2388, size: 32, offset: 8128)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !906, line: 718, size: 32, elements: !2389)
!2389 = !{!2390, !2397}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2388, file: !906, line: 724, baseType: !2391, size: 32)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2388, file: !906, line: 719, size: 32, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2391, file: !906, line: 720, baseType: !157, size: 8)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2391, file: !906, line: 721, baseType: !157, size: 8, offset: 8)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2391, file: !906, line: 722, baseType: !157, size: 8, offset: 16)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2391, file: !906, line: 723, baseType: !157, size: 8, offset: 24)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2388, file: !906, line: 725, baseType: !142, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2217, file: !906, line: 850, baseType: !343, size: 128, offset: 8192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2217, file: !906, line: 851, baseType: !2400, size: 64, offset: 8320)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !906, line: 60, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2217, file: !906, line: 855, baseType: !259, size: 64, offset: 8384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2217, file: !906, line: 856, baseType: !157, size: 8, offset: 8448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2217, file: !906, line: 857, baseType: !157, size: 8, offset: 8456)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2217, file: !906, line: 858, baseType: !81, size: 32, offset: 8480)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2217, file: !906, line: 859, baseType: !343, size: 128, offset: 8512)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2217, file: !906, line: 860, baseType: !81, size: 32, offset: 8640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2217, file: !906, line: 861, baseType: !343, size: 128, offset: 8704)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2217, file: !906, line: 873, baseType: !2410, size: 256, offset: 8832)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !906, line: 376, size: 256, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2410, file: !906, line: 381, baseType: !259, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2410, file: !906, line: 384, baseType: !207, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2410, file: !906, line: 389, baseType: !207, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2410, file: !906, line: 392, baseType: !207, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2217, file: !906, line: 875, baseType: !343, size: 128, offset: 9088)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2217, file: !906, line: 877, baseType: !1741, size: 320, offset: 9216)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2217, file: !906, line: 878, baseType: !773, size: 192, align: 64, offset: 9536)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2217, file: !906, line: 881, baseType: !531, size: 64, offset: 9728)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2217, file: !906, line: 882, baseType: !531, size: 64, offset: 9792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2217, file: !906, line: 884, baseType: !81, size: 32, offset: 9856)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2217, file: !906, line: 885, baseType: !81, size: 32, offset: 9888)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2217, file: !906, line: 886, baseType: !81, size: 32, offset: 9920)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2217, file: !906, line: 888, baseType: !81, size: 32, offset: 9952)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2217, file: !906, line: 890, baseType: !259, size: 64, offset: 9984)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2217, file: !906, line: 893, baseType: !13, size: 32, offset: 10048)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2217, file: !906, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2217, file: !906, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2217, file: !906, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2217, file: !906, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2217, file: !906, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2217, file: !906, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2217, file: !906, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2217, file: !906, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2217, file: !906, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2217, file: !906, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2217, file: !906, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2217, file: !906, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2217, file: !906, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2217, file: !906, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2217, file: !906, line: 969, baseType: !259, size: 64, offset: 10176)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2217, file: !906, line: 971, baseType: !2443, size: 448, offset: 10240)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !47, line: 25, size: 448, elements: !2444)
!2444 = !{!2445, !2446, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2443, file: !47, line: 26, baseType: !259, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2443, file: !47, line: 27, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!453, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, scope: !2443, file: !47, line: 28, baseType: !2452, size: 320, offset: 128)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2443, file: !47, line: 28, size: 320, elements: !2453)
!2453 = !{!2454, !2463, !2488}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2452, file: !47, line: 37, baseType: !2455, size: 320)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !47, line: 30, size: 320, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2455, file: !47, line: 31, baseType: !2018, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2455, file: !47, line: 32, baseType: !142, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2455, file: !47, line: 33, baseType: !142, size: 32, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2455, file: !47, line: 34, baseType: !142, size: 32, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2455, file: !47, line: 35, baseType: !205, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2455, file: !47, line: 36, baseType: !2018, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2452, file: !47, line: 47, baseType: !2464, size: 192)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !47, line: 39, size: 192, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2487}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2464, file: !47, line: 40, baseType: !1617, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2464, file: !47, line: 41, baseType: !46, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2464, file: !47, line: 42, baseType: !2469, size: 64, offset: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2464, file: !47, line: 42, size: 64, elements: !2470)
!2470 = !{!2471, !2479}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2469, file: !47, line: 43, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2474, line: 7, size: 128, elements: !2475)
!2474 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2475 = !{!2476, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2473, file: !2474, line: 8, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !451, line: 93, baseType: !504)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2473, file: !2474, line: 9, baseType: !504, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2469, file: !47, line: 44, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2482, line: 7, size: 64, elements: !2483)
!2482 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2483 = !{!2484, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2481, file: !2482, line: 8, baseType: !2485, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2482, line: 5, baseType: !649)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2481, file: !2482, line: 9, baseType: !649, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2464, file: !47, line: 46, baseType: !205, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2452, file: !47, line: 55, baseType: !2489, size: 256)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !47, line: 49, size: 256, elements: !2490)
!2490 = !{!2491, !2494, !2495, !2496, !2497}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2489, file: !47, line: 50, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !47, line: 14, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2489, file: !47, line: 51, baseType: !81, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2489, file: !47, line: 52, baseType: !81, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2489, file: !47, line: 53, baseType: !259, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2489, file: !47, line: 54, baseType: !259, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2217, file: !906, line: 973, baseType: !2499, size: 32, offset: 10688)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !298, line: 27, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !451, line: 28, baseType: !81)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2217, file: !906, line: 974, baseType: !2499, size: 32, offset: 10720)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2217, file: !906, line: 978, baseType: !259, size: 64, offset: 10752)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2217, file: !906, line: 987, baseType: !2216, size: 64, offset: 10816)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2217, file: !906, line: 990, baseType: !2216, size: 64, offset: 10880)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2217, file: !906, line: 995, baseType: !343, size: 128, offset: 10944)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2217, file: !906, line: 996, baseType: !343, size: 128, offset: 11072)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2217, file: !906, line: 997, baseType: !2216, size: 64, offset: 11200)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2217, file: !906, line: 1005, baseType: !343, size: 128, offset: 11264)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2217, file: !906, line: 1006, baseType: !343, size: 128, offset: 11392)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2217, file: !906, line: 1009, baseType: !2511, size: 64, offset: 11520)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !2513, line: 59, size: 768, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!2514 = !{!2515, !2516, !2517, !2518, !2523, !2524, !2525, !2526}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2512, file: !2513, line: 61, baseType: !975, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2512, file: !2513, line: 62, baseType: !13, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2512, file: !2513, line: 63, baseType: !356, size: 32, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2512, file: !2513, line: 65, baseType: !2519, size: 256, offset: 128)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 256, elements: !651)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !298, line: 194, size: 64, elements: !2521)
!2521 = !{!2522}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2520, file: !298, line: 195, baseType: !1338, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2512, file: !2513, line: 66, baseType: !2520, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2512, file: !2513, line: 68, baseType: !1645, size: 192, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2512, file: !2513, line: 69, baseType: !522, size: 128, align: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2512, file: !2513, line: 70, baseType: !2527, offset: 768)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2528, elements: !747)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !2513, line: 54, size: 128, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2528, file: !2513, line: 55, baseType: !81, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2528, file: !2513, line: 56, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2513, line: 56, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2217, file: !906, line: 1010, baseType: !2535, size: 512, offset: 11584)
!2535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 512, elements: !651)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2217, file: !906, line: 1011, baseType: !343, size: 128, offset: 12096)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2217, file: !906, line: 1012, baseType: !343, size: 128, offset: 12224)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2217, file: !906, line: 1014, baseType: !1084, size: 64, offset: 12352)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2217, file: !906, line: 1017, baseType: !1231, size: 64, offset: 12416)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2217, file: !906, line: 1020, baseType: !1231, size: 64, offset: 12480)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2217, file: !906, line: 1023, baseType: !140, size: 64, offset: 12544)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2217, file: !906, line: 1025, baseType: !205, size: 64, offset: 12608)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2217, file: !906, line: 1026, baseType: !205, size: 64, offset: 12672)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2217, file: !906, line: 1031, baseType: !205, size: 64, offset: 12736)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2217, file: !906, line: 1032, baseType: !2546, size: 192, offset: 12800)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !906, line: 324, size: 192, elements: !2547)
!2547 = !{!2548, !2549, !2550}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2546, file: !906, line: 326, baseType: !205, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2546, file: !906, line: 327, baseType: !205, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2546, file: !906, line: 328, baseType: !604, size: 32, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2217, file: !906, line: 1041, baseType: !259, size: 64, offset: 12992)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2217, file: !906, line: 1042, baseType: !259, size: 64, offset: 13056)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2217, file: !906, line: 1045, baseType: !205, size: 64, offset: 13120)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2217, file: !906, line: 1048, baseType: !205, size: 64, offset: 13184)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2217, file: !906, line: 1051, baseType: !259, size: 64, offset: 13248)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2217, file: !906, line: 1052, baseType: !259, size: 64, offset: 13312)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2217, file: !906, line: 1055, baseType: !2558, size: 640, offset: 13376)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2559, line: 132, size: 640, elements: !2560)
!2559 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2560 = !{!2561, !2567, !2568}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2558, file: !2559, line: 133, baseType: !2562, size: 576)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 576, elements: !418)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2559, line: 117, size: 192, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2563, file: !2559, line: 118, baseType: !205, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2563, file: !2559, line: 119, baseType: !1626, size: 128, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2558, file: !2559, line: 134, baseType: !13, size: 32, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2558, file: !2559, line: 135, baseType: !13, size: 32, offset: 608)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2217, file: !906, line: 1058, baseType: !2570, size: 448, offset: 14016)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2559, line: 144, size: 448, elements: !2571)
!2571 = !{!2572, !2573, !2574}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2570, file: !2559, line: 145, baseType: !522, size: 128, align: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2570, file: !2559, line: 146, baseType: !670, size: 256, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2570, file: !2559, line: 147, baseType: !13, size: 32, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2217, file: !906, line: 1064, baseType: !2576, size: 64, offset: 14464)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2579, line: 11, flags: DIFlagFwdDecl)
!2579 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2217, file: !906, line: 1067, baseType: !2576, size: 64, offset: 14528)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2217, file: !906, line: 1070, baseType: !2576, size: 64, offset: 14592)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2217, file: !906, line: 1074, baseType: !2583, size: 64, offset: 14656)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !906, line: 1074, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2217, file: !906, line: 1084, baseType: !2070, size: 128, offset: 14720)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2217, file: !906, line: 1086, baseType: !2587, size: 64, offset: 14848)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !906, line: 55, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2217, file: !906, line: 1089, baseType: !2590, size: 64, offset: 14912)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2591, line: 12, size: 64, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2592 = !{!2593}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2590, file: !2591, line: 13, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2591, line: 8, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2217, file: !906, line: 1090, baseType: !2597, size: 128, offset: 14976)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2598, line: 13, size: 128, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2599 = !{!2600}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2597, file: !2598, line: 14, baseType: !343, size: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2217, file: !906, line: 1097, baseType: !2602, size: 64, offset: 15104)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !906, line: 50, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2217, file: !906, line: 1100, baseType: !2605, size: 64, offset: 15168)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !906, line: 1100, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2217, file: !906, line: 1103, baseType: !2608, size: 64, offset: 15232)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !906, line: 53, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2217, file: !906, line: 1107, baseType: !2611, size: 64, offset: 15296)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2613, line: 35, flags: DIFlagFwdDecl)
!2613 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2217, file: !906, line: 1110, baseType: !2615, size: 64, offset: 15360)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2559, line: 236, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2217, file: !906, line: 1111, baseType: !2618, size: 64, offset: 15424)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !906, line: 67, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2217, file: !906, line: 1112, baseType: !2621, size: 64, offset: 15488)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2622, line: 25, baseType: !2623)
!2622 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2622, line: 23, size: 64, elements: !2624)
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2623, file: !2622, line: 24, baseType: !258, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2217, file: !906, line: 1113, baseType: !2621, size: 64, offset: 15552)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2217, file: !906, line: 1115, baseType: !2621, size: 64, offset: 15616)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2217, file: !906, line: 1116, baseType: !2629, size: 192, offset: 15680)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2630, line: 32, size: 192, elements: !2631)
!2630 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2629, file: !2630, line: 33, baseType: !343, size: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2629, file: !2630, line: 34, baseType: !2621, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2217, file: !906, line: 1117, baseType: !259, size: 64, offset: 15872)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2217, file: !906, line: 1118, baseType: !464, size: 64, offset: 15936)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2217, file: !906, line: 1119, baseType: !13, size: 32, offset: 16000)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2217, file: !906, line: 1121, baseType: !525, size: 64, offset: 16064)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2217, file: !906, line: 1125, baseType: !2639, size: 64, offset: 16128)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !906, line: 43, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2217, file: !906, line: 1127, baseType: !842, size: 32, offset: 16192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2217, file: !906, line: 1128, baseType: !13, size: 32, offset: 16224)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2217, file: !906, line: 1130, baseType: !2644, size: 128, offset: 16256)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2645, line: 37, size: 128, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2646 = !{!2647, !2648, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2644, file: !2645, line: 38, baseType: !81, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2644, file: !2645, line: 39, baseType: !376, size: 32, offset: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2644, file: !2645, line: 40, baseType: !2650, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2645, line: 24, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2217, file: !906, line: 1131, baseType: !2653, size: 256, offset: 16384)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2654, line: 12, size: 256, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2653, file: !2654, line: 13, baseType: !330, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2653, file: !2654, line: 14, baseType: !259, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2653, file: !2654, line: 15, baseType: !259, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2653, file: !2654, line: 16, baseType: !297, size: 8, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2217, file: !906, line: 1134, baseType: !205, size: 64, offset: 16640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2217, file: !906, line: 1135, baseType: !205, size: 64, offset: 16704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2217, file: !906, line: 1138, baseType: !356, size: 32, offset: 16768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2217, file: !906, line: 1141, baseType: !604, size: 32, offset: 16800)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2217, file: !906, line: 1143, baseType: !2665, size: 64, offset: 16832)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !906, line: 735, size: 64, elements: !2666)
!2666 = !{!2667}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2665, file: !906, line: 736, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2217, file: !906, line: 1147, baseType: !1629, size: 128, offset: 16896)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2217, file: !906, line: 1149, baseType: !2216, size: 64, offset: 17024)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2217, file: !906, line: 1151, baseType: !2672, size: 64, offset: 17088)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !906, line: 1151, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2217, file: !906, line: 1188, baseType: !140, size: 64, offset: 17152)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2217, file: !906, line: 1191, baseType: !2676, size: 64, offset: 17216)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !906, line: 44, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2217, file: !906, line: 1194, baseType: !2679, size: 64, offset: 17280)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !906, line: 45, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2217, file: !906, line: 1197, baseType: !2682, size: 64, offset: 17344)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !906, line: 61, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2217, file: !906, line: 1199, baseType: !2685, size: 64, offset: 17408)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !906, line: 52, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2217, file: !906, line: 1202, baseType: !2688, size: 64, offset: 17472)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !906, line: 48, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2217, file: !906, line: 1205, baseType: !259, size: 64, offset: 17536)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2217, file: !906, line: 1206, baseType: !2692, size: 64, offset: 17600)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2630, line: 14, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2630, line: 12, size: 384, elements: !2695)
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !2630, line: 13, baseType: !2697, size: 384)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2694, file: !2630, line: 13, size: 384, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2697, file: !2630, line: 13, baseType: !81, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2697, file: !2630, line: 13, baseType: !81, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2697, file: !2630, line: 13, baseType: !81, size: 32, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2697, file: !2630, line: 13, baseType: !2703, size: 256, offset: 128)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2704, line: 37, size: 256, elements: !2705)
!2704 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2705 = !{!2706, !2711, !2724, !2730, !2739, !2766, !2771}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2703, file: !2704, line: 42, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 39, size: 64, elements: !2708)
!2708 = !{!2709, !2710}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2707, file: !2704, line: 40, baseType: !2500, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2707, file: !2704, line: 41, baseType: !847, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2703, file: !2704, line: 50, baseType: !2712, size: 192)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 45, size: 192, elements: !2713)
!2713 = !{!2714, !2716, !2717, !2723}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2712, file: !2704, line: 46, baseType: !2715, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !451, line: 95, baseType: !81)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2712, file: !2704, line: 47, baseType: !81, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2712, file: !2704, line: 48, baseType: !2718, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2704, line: 11, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2704, line: 8, size: 64, elements: !2720)
!2720 = !{!2721, !2722}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2719, file: !2704, line: 9, baseType: !81, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2719, file: !2704, line: 10, baseType: !140, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2712, file: !2704, line: 49, baseType: !81, size: 32, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2703, file: !2704, line: 57, baseType: !2725, size: 128)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 53, size: 128, elements: !2726)
!2726 = !{!2727, !2728, !2729}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2725, file: !2704, line: 54, baseType: !2500, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2725, file: !2704, line: 55, baseType: !847, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2725, file: !2704, line: 56, baseType: !2718, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2703, file: !2704, line: 66, baseType: !2731, size: 256)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 60, size: 256, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2738}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2731, file: !2704, line: 61, baseType: !2500, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2731, file: !2704, line: 62, baseType: !847, size: 32, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2731, file: !2704, line: 63, baseType: !81, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2731, file: !2704, line: 64, baseType: !2737, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !451, line: 94, baseType: !452)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2731, file: !2704, line: 65, baseType: !2737, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2703, file: !2704, line: 105, baseType: !2740, size: 256)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 69, size: 256, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2740, file: !2704, line: 70, baseType: !140, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !2704, line: 79, baseType: !2744, size: 192, offset: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2740, file: !2704, line: 79, size: 192, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2755, !2760}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2744, file: !2704, line: 81, baseType: !81, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2744, file: !2704, line: 86, baseType: !710, size: 16)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2744, file: !2704, line: 92, baseType: !2749, size: 192)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2744, file: !2704, line: 88, size: 192, elements: !2750)
!2750 = !{!2751, !2753, !2754}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2749, file: !2704, line: 89, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2749, file: !2704, line: 90, baseType: !140, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2749, file: !2704, line: 91, baseType: !140, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2744, file: !2704, line: 97, baseType: !2756, size: 96)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2744, file: !2704, line: 94, size: 96, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2756, file: !2704, line: 95, baseType: !2752, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2756, file: !2704, line: 96, baseType: !144, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2744, file: !2704, line: 103, baseType: !2761, size: 128)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2744, file: !2704, line: 99, size: 128, elements: !2762)
!2762 = !{!2763, !2764, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2761, file: !2704, line: 100, baseType: !259, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2761, file: !2704, line: 101, baseType: !144, size: 32, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2761, file: !2704, line: 102, baseType: !144, size: 32, offset: 96)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2703, file: !2704, line: 111, baseType: !2767, size: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 108, size: 128, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2767, file: !2704, line: 109, baseType: !453, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2767, file: !2704, line: 110, baseType: !81, size: 32, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2703, file: !2704, line: 118, baseType: !2772, size: 128)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !2704, line: 114, size: 128, elements: !2773)
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2772, file: !2704, line: 115, baseType: !140, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2772, file: !2704, line: 116, baseType: !81, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2772, file: !2704, line: 117, baseType: !13, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2217, file: !906, line: 1208, baseType: !2778, size: 448, offset: 17664)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2779, line: 12, size: 448, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2778, file: !2779, line: 15, baseType: !205, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2778, file: !2779, line: 17, baseType: !205, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2778, file: !2779, line: 19, baseType: !205, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2778, file: !2779, line: 21, baseType: !205, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2778, file: !2779, line: 29, baseType: !205, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2778, file: !2779, line: 35, baseType: !205, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2778, file: !2779, line: 44, baseType: !205, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2217, file: !906, line: 1215, baseType: !205, size: 64, offset: 18112)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2217, file: !906, line: 1217, baseType: !205, size: 64, offset: 18176)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2217, file: !906, line: 1219, baseType: !205, size: 64, offset: 18240)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2217, file: !906, line: 1223, baseType: !2792, size: 64, offset: 18304)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2793, line: 99, baseType: !2794)
!2793 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2793, line: 99, size: 64, elements: !2795)
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2794, file: !2793, line: 99, baseType: !258, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2217, file: !906, line: 1225, baseType: !2798, size: 32, offset: 18368)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !619, line: 275, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !619, line: 275, size: 32, elements: !2800)
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2799, file: !619, line: 275, baseType: !618, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2217, file: !906, line: 1226, baseType: !81, size: 32, offset: 18400)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2217, file: !906, line: 1227, baseType: !81, size: 32, offset: 18432)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2217, file: !906, line: 1231, baseType: !2805, size: 64, offset: 18496)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !906, line: 1231, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2217, file: !906, line: 1233, baseType: !343, size: 128, offset: 18560)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2217, file: !906, line: 1240, baseType: !2809, size: 64, offset: 18688)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !906, line: 62, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2217, file: !906, line: 1242, baseType: !2812, size: 64, offset: 18752)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !906, line: 1242, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2217, file: !906, line: 1244, baseType: !343, size: 128, offset: 18816)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2217, file: !906, line: 1245, baseType: !2816, size: 64, offset: 18944)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !906, line: 51, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2217, file: !906, line: 1246, baseType: !670, size: 256, offset: 19008)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2217, file: !906, line: 1247, baseType: !13, size: 32, offset: 19264)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2217, file: !906, line: 1250, baseType: !2821, size: 64, offset: 19328)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !906, line: 57, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2217, file: !906, line: 1251, baseType: !670, size: 256, offset: 19392)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2217, file: !906, line: 1252, baseType: !343, size: 128, offset: 19648)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2217, file: !906, line: 1259, baseType: !794, size: 64, offset: 19776)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2217, file: !906, line: 1260, baseType: !710, size: 16, offset: 19840)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2217, file: !906, line: 1261, baseType: !710, size: 16, offset: 19856)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2217, file: !906, line: 1314, baseType: !2829, size: 64, offset: 19904)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2831, line: 62, size: 256, align: 256, elements: !2832)
!2831 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2830, file: !2831, line: 75, baseType: !144, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2830, file: !2831, line: 90, baseType: !144, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2830, file: !2831, line: 112, baseType: !206, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !2831, line: 132, baseType: !144, size: 32, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2830, file: !2831, line: 140, baseType: !144, size: 32, offset: 160)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2830, file: !2831, line: 149, baseType: !144, size: 32, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2830, file: !2831, line: 154, baseType: !2840, offset: 224)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !747)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2217, file: !906, line: 1315, baseType: !142, size: 32, offset: 19968)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2217, file: !906, line: 1316, baseType: !142, size: 32, offset: 20000)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2217, file: !906, line: 1321, baseType: !259, size: 64, offset: 20032)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2217, file: !906, line: 1325, baseType: !81, size: 32, offset: 20096)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2217, file: !906, line: 1326, baseType: !81, size: 32, offset: 20128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2217, file: !906, line: 1327, baseType: !81, size: 32, offset: 20160)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2217, file: !906, line: 1328, baseType: !81, size: 32, offset: 20192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2217, file: !906, line: 1329, baseType: !522, size: 128, align: 64, offset: 20224)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2217, file: !906, line: 1332, baseType: !2850, size: 128, offset: 20352)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2851, line: 51, size: 128, elements: !2852)
!2851 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2852 = !{!2853, !2858, !2859}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2850, file: !2851, line: 60, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2855, line: 7, size: 64, elements: !2856)
!2855 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2856 = !{!2857}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2854, file: !2855, line: 12, baseType: !255, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2850, file: !2851, line: 63, baseType: !297, size: 8, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2850, file: !2851, line: 70, baseType: !297, size: 8, offset: 72)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2217, file: !906, line: 1335, baseType: !2861, size: 64, offset: 20480)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !906, line: 59, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2217, file: !906, line: 1337, baseType: !2864, size: 128, offset: 20544)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2851, line: 39, size: 128, elements: !2865)
!2865 = !{!2866, !2927, !2928}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2864, file: !2851, line: 40, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !494, line: 74, size: 512, align: 128, elements: !2869)
!2869 = !{!2870, !2871, !2921, !2926}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2868, file: !494, line: 75, baseType: !259, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !2868, file: !494, line: 83, baseType: !2872, size: 320, offset: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2868, file: !494, line: 83, size: 320, elements: !2873)
!2873 = !{!2874, !2895, !2909, !2913, !2920}
!2874 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !494, line: 84, baseType: !2875, size: 320)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !494, line: 84, size: 320, elements: !2876)
!2876 = !{!2877, !2888, !2889, !2894}
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !2875, file: !494, line: 90, baseType: !2878, size: 128)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2875, file: !494, line: 90, size: 128, elements: !2879)
!2879 = !{!2880, !2881, !2886, !2887}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2878, file: !494, line: 91, baseType: !343, size: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !494, line: 94, baseType: !2882, size: 128)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2878, file: !494, line: 94, size: 128, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2882, file: !494, line: 96, baseType: !140, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2882, file: !494, line: 98, baseType: !13, size: 32, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2878, file: !494, line: 102, baseType: !343, size: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2878, file: !494, line: 103, baseType: !343, size: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2875, file: !494, line: 106, baseType: !492, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2875, file: !494, line: 107, baseType: !2890, size: 64, offset: 192)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2875, file: !494, line: 107, size: 64, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2890, file: !494, line: 108, baseType: !259, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2890, file: !494, line: 109, baseType: !259, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2875, file: !494, line: 117, baseType: !259, size: 64, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !494, line: 119, baseType: !2896, size: 320)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !494, line: 119, size: 320, elements: !2897)
!2897 = !{!2898, !2899, !2902, !2903, !2904}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2896, file: !494, line: 124, baseType: !259, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2896, file: !494, line: 125, baseType: !2900, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !494, line: 125, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2896, file: !494, line: 126, baseType: !259, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2896, file: !494, line: 127, baseType: !259, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !494, line: 128, baseType: !2905, size: 64, offset: 256)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2896, file: !494, line: 128, size: 64, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2905, file: !494, line: 133, baseType: !259, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2905, file: !494, line: 138, baseType: !582, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !494, line: 141, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !494, line: 141, size: 64, elements: !2911)
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2910, file: !494, line: 142, baseType: !259, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !494, line: 144, baseType: !2914, size: 128)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !494, line: 144, size: 128, elements: !2915)
!2915 = !{!2916, !2919}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2914, file: !494, line: 146, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !494, line: 146, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2914, file: !494, line: 147, baseType: !140, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2872, file: !494, line: 161, baseType: !522, size: 128, align: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2868, file: !494, line: 164, baseType: !2922, size: 32, offset: 384)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2868, file: !494, line: 164, size: 32, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2922, file: !494, line: 169, baseType: !376, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2922, file: !494, line: 177, baseType: !13, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2868, file: !494, line: 181, baseType: !376, size: 32, offset: 416)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2864, file: !2851, line: 42, baseType: !144, size: 32, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2864, file: !2851, line: 43, baseType: !144, size: 32, offset: 96)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2217, file: !906, line: 1340, baseType: !2930, size: 64, offset: 20672)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !906, line: 69, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2217, file: !906, line: 1351, baseType: !81, size: 32, offset: 20736)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2217, file: !906, line: 1352, baseType: !81, size: 32, offset: 20768)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2217, file: !906, line: 1354, baseType: !259, size: 64, offset: 20800)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2217, file: !906, line: 1364, baseType: !205, size: 64, offset: 20864)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2217, file: !906, line: 1365, baseType: !205, size: 64, offset: 20928)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2217, file: !906, line: 1412, baseType: !259, size: 64, offset: 20992)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2217, file: !906, line: 1453, baseType: !2939, size: 64, offset: 21056)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !906, line: 1453, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2217, file: !906, line: 1457, baseType: !2942, size: 64, offset: 21120)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !53, line: 61, size: 576, elements: !2944)
!2944 = !{!2945, !2946, !2965, !2968, !2969, !3002, !3012}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2943, file: !53, line: 62, baseType: !52, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2943, file: !53, line: 64, baseType: !2947, size: 192, offset: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2943, file: !53, line: 64, size: 192, elements: !2948)
!2948 = !{!2949, !2960}
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !53, line: 65, baseType: !2950, size: 192)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !53, line: 65, size: 192, elements: !2951)
!2951 = !{!2952, !2959}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2950, file: !53, line: 66, baseType: !2953, size: 128)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2954, line: 50, size: 128, elements: !2955)
!2954 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2955 = !{!2956, !2957, !2958}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2953, file: !2954, line: 52, baseType: !259, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2953, file: !2954, line: 54, baseType: !13, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2953, file: !2954, line: 55, baseType: !13, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2950, file: !53, line: 67, baseType: !259, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !53, line: 70, baseType: !2961, size: 192)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !53, line: 70, size: 192, elements: !2962)
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2961, file: !53, line: 71, baseType: !522, size: 128, align: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2961, file: !53, line: 72, baseType: !259, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2943, file: !53, line: 76, baseType: !2966, size: 64, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !53, line: 76, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2943, file: !53, line: 77, baseType: !259, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2943, file: !53, line: 79, baseType: !2970, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2954, line: 25, size: 256, elements: !2972)
!2972 = !{!2973, !2979, !2983}
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !2971, file: !2954, line: 26, baseType: !2974, size: 128)
!2974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !2954, line: 26, size: 128, elements: !2975)
!2975 = !{!2976, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2974, file: !2954, line: 27, baseType: !2977, size: 128)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !311)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2974, file: !2954, line: 28, baseType: !2977, size: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2971, file: !2954, line: 31, baseType: !2980, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2982)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2954, line: 23, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2971, file: !2954, line: 33, baseType: !2984, size: 64, offset: 192)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !2954, line: 33, size: 64, elements: !2985)
!2985 = !{!2986, !2992, !2997}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2984, file: !2954, line: 38, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2954, line: 34, size: 64, elements: !2988)
!2988 = !{!2989, !2990, !2991}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2987, file: !2954, line: 35, baseType: !649, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2987, file: !2954, line: 36, baseType: !157, size: 8, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2987, file: !2954, line: 37, baseType: !157, size: 8, offset: 40)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2984, file: !2954, line: 42, baseType: !2993, size: 16)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2954, line: 39, size: 16, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2993, file: !2954, line: 40, baseType: !157, size: 8)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2993, file: !2954, line: 41, baseType: !157, size: 8, offset: 8)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2984, file: !2954, line: 46, baseType: !2998, size: 16)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2954, line: 43, size: 16, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2998, file: !2954, line: 44, baseType: !157, size: 8)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2998, file: !2954, line: 45, baseType: !157, size: 8, offset: 8)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2943, file: !53, line: 81, baseType: !3003, size: 64, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !53, line: 85, size: 384, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3011}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3004, file: !53, line: 86, baseType: !2966, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3004, file: !53, line: 87, baseType: !259, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3004, file: !53, line: 88, baseType: !259, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3004, file: !53, line: 89, baseType: !259, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3004, file: !53, line: 90, baseType: !297, size: 8, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3004, file: !53, line: 92, baseType: !3003, size: 64, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2943, file: !53, line: 82, baseType: !13, size: 32, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2217, file: !906, line: 1463, baseType: !3014, offset: 21184)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !906, line: 739, elements: !552)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2217, file: !906, line: 1470, baseType: !522, size: 128, align: 64, offset: 21184)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2217, file: !906, line: 1471, baseType: !975, size: 32, offset: 21312)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2217, file: !906, line: 1472, baseType: !81, size: 32, offset: 21344)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2217, file: !906, line: 1474, baseType: !2216, size: 64, offset: 21376)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2217, file: !906, line: 1475, baseType: !1331, size: 320, offset: 21440)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2217, file: !906, line: 1478, baseType: !3021, size: 64, offset: 21760)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3023, line: 49, size: 512, elements: !3024)
!3023 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3031, !3032, !3033, !3035}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3022, file: !3023, line: 50, baseType: !3021, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3022, file: !3023, line: 51, baseType: !140, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3022, file: !3023, line: 52, baseType: !259, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3022, file: !3023, line: 53, baseType: !259, size: 64, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3022, file: !3023, line: 54, baseType: !3030, size: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3022, file: !3023, line: 56, baseType: !13, size: 32, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3022, file: !3023, line: 58, baseType: !13, size: 32, offset: 352)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3022, file: !3023, line: 59, baseType: !3034, size: 64, offset: 384)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !298, line: 159, baseType: !205)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3022, file: !3023, line: 60, baseType: !691, size: 64, offset: 448)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2217, file: !906, line: 1482, baseType: !975, size: 32, offset: 21824)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2217, file: !906, line: 1489, baseType: !140, size: 64, offset: 21888)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2217, file: !906, line: 1504, baseType: !140, size: 64, offset: 21952)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2217, file: !906, line: 1505, baseType: !206, size: 64, offset: 22016)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2217, file: !906, line: 1506, baseType: !205, size: 64, offset: 22080)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2217, file: !906, line: 1507, baseType: !206, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2217, file: !906, line: 1508, baseType: !206, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2217, file: !906, line: 1509, baseType: !206, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2217, file: !906, line: 1510, baseType: !522, size: 128, align: 64, offset: 22208)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2217, file: !906, line: 1511, baseType: !81, size: 32, offset: 22336)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2217, file: !906, line: 1515, baseType: !3047, size: 64, offset: 22400)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2239, line: 56, size: 64, elements: !3048)
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3047, file: !2239, line: 57, baseType: !2242, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2217, file: !906, line: 1518, baseType: !3047, size: 64, offset: 22464)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2217, file: !906, line: 1528, baseType: !522, size: 128, align: 64, offset: 22528)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2217, file: !906, line: 1552, baseType: !3053, size: 35328, offset: 23040)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2036, line: 430, size: 35328, elements: !3054)
!3054 = !{!3055, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3084, !3085, !3086, !3087, !3088, !3089, !3092, !3093, !3094, !3095}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3053, file: !2036, line: 432, baseType: !3056, size: 192)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3057, size: 192, elements: !418)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3058, line: 16, size: 64, elements: !3059)
!3058 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3057, file: !3058, line: 17, baseType: !223, size: 16)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3057, file: !3058, line: 18, baseType: !223, size: 16, offset: 16)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3057, file: !3058, line: 19, baseType: !223, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3057, file: !3058, line: 19, baseType: !223, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3057, file: !3058, line: 19, baseType: !223, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3057, file: !3058, line: 19, baseType: !223, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3057, file: !3058, line: 19, baseType: !223, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3057, file: !3058, line: 20, baseType: !223, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3057, file: !3058, line: 20, baseType: !223, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3057, file: !3058, line: 20, baseType: !223, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3057, file: !3058, line: 20, baseType: !223, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3057, file: !3058, line: 20, baseType: !223, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3057, file: !3058, line: 20, baseType: !223, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3053, file: !2036, line: 436, baseType: !259, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3053, file: !2036, line: 440, baseType: !225, size: 16, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3053, file: !2036, line: 441, baseType: !225, size: 16, offset: 272)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3053, file: !2036, line: 442, baseType: !225, size: 16, offset: 288)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3053, file: !2036, line: 443, baseType: !225, size: 16, offset: 304)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3053, file: !2036, line: 447, baseType: !259, size: 64, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3053, file: !2036, line: 448, baseType: !259, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3053, file: !2036, line: 459, baseType: !3081, size: 256, offset: 448)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3082, size: 256, elements: !651)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2036, line: 428, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3053, file: !2036, line: 461, baseType: !259, size: 64, offset: 704)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3053, file: !2036, line: 463, baseType: !259, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3053, file: !2036, line: 465, baseType: !259, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3053, file: !2036, line: 466, baseType: !259, size: 64, offset: 896)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3053, file: !2036, line: 467, baseType: !259, size: 64, offset: 960)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3053, file: !2036, line: 473, baseType: !3090, size: 64, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2036, line: 10, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3053, file: !2036, line: 480, baseType: !259, size: 64, offset: 1088)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3053, file: !2036, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3053, file: !2036, line: 491, baseType: !142, size: 32, offset: 1184)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3053, file: !2036, line: 501, baseType: !3096, size: 33792, offset: 1536)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3097, line: 448, size: 33792, elements: !3098)
!3097 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3098 = !{!3099, !3100, !3101, !3265, !3266, !3272, !3273}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3096, file: !3097, line: 461, baseType: !13, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3096, file: !3097, line: 468, baseType: !259, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3096, file: !3097, line: 476, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3097, line: 356, size: 33280, align: 512, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3103, file: !3097, line: 358, baseType: !13, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3103, file: !3097, line: 361, baseType: !13, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3103, file: !3097, line: 364, baseType: !205, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3103, file: !3097, line: 367, baseType: !205, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3103, file: !3097, line: 370, baseType: !205, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3103, file: !3097, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3103, file: !3097, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3103, file: !3097, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3103, file: !3097, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3103, file: !3097, line: 397, baseType: !3115, size: 32768, offset: 512)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3097, line: 348, size: 32768, elements: !3116)
!3116 = !{!3117, !3132, !3169, !3246, !3261}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3115, file: !3097, line: 349, baseType: !3118, size: 896)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3097, line: 12, size: 896, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3131}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3118, file: !3097, line: 13, baseType: !142, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3118, file: !3097, line: 14, baseType: !142, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3118, file: !3097, line: 15, baseType: !142, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3118, file: !3097, line: 16, baseType: !142, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3118, file: !3097, line: 17, baseType: !142, size: 32, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3118, file: !3097, line: 18, baseType: !142, size: 32, offset: 160)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3118, file: !3097, line: 19, baseType: !142, size: 32, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3118, file: !3097, line: 22, baseType: !3128, size: 640, offset: 224)
!3128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !3129)
!3129 = !{!3130}
!3130 = !DISubrange(count: 20)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3118, file: !3097, line: 25, baseType: !142, size: 32, offset: 864)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3115, file: !3097, line: 350, baseType: !3133, size: 4096, align: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3097, line: 34, size: 4096, align: 128, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3154, !3155, !3156, !3158, !3160, !3164}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3133, file: !3097, line: 35, baseType: !223, size: 16)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3133, file: !3097, line: 36, baseType: !223, size: 16, offset: 16)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3133, file: !3097, line: 37, baseType: !223, size: 16, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3133, file: !3097, line: 38, baseType: !223, size: 16, offset: 48)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3097, line: 39, baseType: !3140, size: 128, offset: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3097, line: 39, size: 128, elements: !3141)
!3141 = !{!3142, !3147}
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3140, file: !3097, line: 40, baseType: !3143, size: 128)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3097, line: 40, size: 128, elements: !3144)
!3144 = !{!3145, !3146}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3143, file: !3097, line: 41, baseType: !205, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3143, file: !3097, line: 42, baseType: !205, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3140, file: !3097, line: 44, baseType: !3148, size: 128)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3097, line: 44, size: 128, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3148, file: !3097, line: 45, baseType: !142, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3148, file: !3097, line: 46, baseType: !142, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3148, file: !3097, line: 47, baseType: !142, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3148, file: !3097, line: 48, baseType: !142, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3133, file: !3097, line: 51, baseType: !142, size: 32, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3133, file: !3097, line: 52, baseType: !142, size: 32, offset: 224)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3133, file: !3097, line: 55, baseType: !3157, size: 1024, offset: 256)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1024, elements: !190)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3133, file: !3097, line: 58, baseType: !3159, size: 2048, offset: 1280)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2048, elements: !422)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3133, file: !3097, line: 60, baseType: !3161, size: 384, offset: 3328)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 384, elements: !3162)
!3162 = !{!3163}
!3163 = !DISubrange(count: 12)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3097, line: 62, baseType: !3165, size: 384, offset: 3712)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3097, line: 62, size: 384, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3165, file: !3097, line: 63, baseType: !3161, size: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3165, file: !3097, line: 64, baseType: !3161, size: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3115, file: !3097, line: 351, baseType: !3170, size: 1088)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3097, line: 79, size: 1088, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3245}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3170, file: !3097, line: 80, baseType: !142, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3170, file: !3097, line: 81, baseType: !142, size: 32, offset: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3170, file: !3097, line: 82, baseType: !142, size: 32, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3170, file: !3097, line: 83, baseType: !142, size: 32, offset: 96)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3170, file: !3097, line: 84, baseType: !142, size: 32, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3170, file: !3097, line: 85, baseType: !142, size: 32, offset: 160)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3170, file: !3097, line: 86, baseType: !142, size: 32, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3170, file: !3097, line: 88, baseType: !3128, size: 640, offset: 224)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3170, file: !3097, line: 89, baseType: !157, size: 8, offset: 864)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3170, file: !3097, line: 90, baseType: !157, size: 8, offset: 872)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3170, file: !3097, line: 91, baseType: !157, size: 8, offset: 880)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3170, file: !3097, line: 92, baseType: !157, size: 8, offset: 888)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3170, file: !3097, line: 93, baseType: !157, size: 8, offset: 896)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3170, file: !3097, line: 94, baseType: !157, size: 8, offset: 904)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3170, file: !3097, line: 95, baseType: !3187, size: 64, offset: 960)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3189, line: 11, size: 128, elements: !3190)
!3189 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3188, file: !3189, line: 12, baseType: !453, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3188, file: !3189, line: 13, baseType: !3193, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3195, line: 103, size: 1344, elements: !3196)
!3195 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3225, !3226, !3227}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3194, file: !3195, line: 109, baseType: !259, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3194, file: !3195, line: 110, baseType: !259, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3194, file: !3195, line: 111, baseType: !259, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3194, file: !3195, line: 112, baseType: !259, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3194, file: !3195, line: 113, baseType: !259, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3194, file: !3195, line: 114, baseType: !259, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3194, file: !3195, line: 117, baseType: !259, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3194, file: !3195, line: 118, baseType: !259, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3194, file: !3195, line: 119, baseType: !259, size: 64, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3194, file: !3195, line: 120, baseType: !259, size: 64, offset: 576)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3194, file: !3195, line: 121, baseType: !259, size: 64, offset: 640)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3194, file: !3195, line: 122, baseType: !259, size: 64, offset: 704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3194, file: !3195, line: 123, baseType: !259, size: 64, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3194, file: !3195, line: 124, baseType: !259, size: 64, offset: 832)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3194, file: !3195, line: 125, baseType: !259, size: 64, offset: 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3194, file: !3195, line: 139, baseType: !259, size: 64, offset: 960)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3194, file: !3195, line: 142, baseType: !259, size: 64, offset: 1024)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !3195, line: 144, baseType: !3215, size: 64, offset: 1088)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !3195, line: 144, size: 64, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3215, file: !3195, line: 146, baseType: !223, size: 16)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3215, file: !3195, line: 148, baseType: !205, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3215, file: !3195, line: 150, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3195, line: 59, size: 64, elements: !3221)
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3220, file: !3195, line: 61, baseType: !205, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3220, file: !3195, line: 63, baseType: !205, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3220, file: !3195, line: 65, baseType: !205, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3194, file: !3195, line: 153, baseType: !259, size: 64, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3194, file: !3195, line: 154, baseType: !259, size: 64, offset: 1216)
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !3195, line: 156, baseType: !3228, size: 64, offset: 1280)
!3228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !3195, line: 156, size: 64, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3228, file: !3195, line: 158, baseType: !223, size: 16)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3228, file: !3195, line: 160, baseType: !205, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3228, file: !3195, line: 162, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3195, line: 69, size: 64, elements: !3234)
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3233, file: !3195, line: 71, baseType: !205, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3233, file: !3195, line: 73, baseType: !205, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3233, file: !3195, line: 75, baseType: !205, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3233, file: !3195, line: 77, baseType: !205, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3233, file: !3195, line: 80, baseType: !205, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3233, file: !3195, line: 83, baseType: !205, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3233, file: !3195, line: 86, baseType: !205, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3233, file: !3195, line: 88, baseType: !205, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3233, file: !3195, line: 93, baseType: !205, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3233, file: !3195, line: 100, baseType: !205, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3170, file: !3097, line: 96, baseType: !142, size: 32, offset: 1024)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3115, file: !3097, line: 352, baseType: !3247, size: 4608, align: 512)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3097, line: 333, size: 4608, align: 512, elements: !3248)
!3248 = !{!3249, !3250, !3259}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3247, file: !3097, line: 334, baseType: !3133, size: 4096, align: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3247, file: !3097, line: 335, baseType: !3251, size: 512, offset: 4096)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3097, line: 312, size: 512, elements: !3252)
!3252 = !{!3253, !3254, !3255}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3251, file: !3097, line: 313, baseType: !205, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3251, file: !3097, line: 314, baseType: !205, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3251, file: !3097, line: 315, baseType: !3256, size: 384, offset: 128)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !3257)
!3257 = !{!3258}
!3258 = !DISubrange(count: 6)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3247, file: !3097, line: 336, baseType: !3260, offset: 4608)
!3260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, elements: !747)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3115, file: !3097, line: 353, baseType: !3262, size: 32768)
!3262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 32768, elements: !3263)
!3263 = !{!3264}
!3264 = !DISubrange(count: 4096)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3096, file: !3097, line: 484, baseType: !3102, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3096, file: !3097, line: 491, baseType: !3267, size: 128, offset: 256)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3097, line: 404, size: 128, elements: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3267, file: !3097, line: 424, baseType: !205, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3267, file: !3097, line: 432, baseType: !13, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3267, file: !3097, line: 440, baseType: !13, size: 32, offset: 96)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3096, file: !3097, line: 498, baseType: !3267, size: 128, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3096, file: !3097, line: 508, baseType: !3103, size: 33280, align: 512, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2136, file: !36, line: 158, baseType: !3275, size: 64, offset: 4544)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !36, line: 158, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2136, file: !36, line: 161, baseType: !140, size: 64, offset: 4608)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2136, file: !36, line: 164, baseType: !324, size: 64, offset: 4672)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !2136, file: !36, line: 166, baseType: !1710, size: 192, offset: 4736)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !2136, file: !36, line: 167, baseType: !1710, size: 192, offset: 4928)
!3281 = !{!3282, !3283, !3284, !3288, !3291, !3293}
!3282 = !DILocalVariable(name: "policy", arg: 1, scope: !2132, file: !2, line: 129, type: !2135)
!3283 = !DILocalVariable(name: "cpu", scope: !2132, file: !2, line: 131, type: !13)
!3284 = !DILocalVariable(name: "pr", scope: !3285, file: !2, line: 134, type: !133)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 133, column: 42)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !2, line: 133, column: 2)
!3287 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 133, column: 2)
!3288 = !DILocalVariable(name: "__vpp_verify", scope: !3289, file: !2, line: 134, type: !691)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 134, column: 31)
!3290 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 134, column: 31)
!3291 = !DILocalVariable(name: "__ptr", scope: !3292, file: !2, line: 134, type: !259)
!3292 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 134, column: 31)
!3293 = !DILocalVariable(name: "ret", scope: !3285, file: !2, line: 135, type: !81)
!3294 = !DILocation(line: 129, column: 55, scope: !2132)
!3295 = !DILocation(line: 131, column: 2, scope: !2132)
!3296 = !DILocation(line: 131, column: 15, scope: !2132)
!3297 = !DILocation(line: 133, column: 2, scope: !3287)
!3298 = !DILocation(line: 133, column: 2, scope: !3286)
!3299 = !DILocation(line: 134, column: 3, scope: !3285)
!3300 = !DILocation(line: 134, column: 26, scope: !3285)
!3301 = !DILocation(line: 134, column: 31, scope: !3290)
!3302 = !DILocation(line: 134, column: 31, scope: !3289)
!3303 = !DILocation(line: 134, column: 31, scope: !3292)
!3304 = !DILocation(line: 134, column: 31, scope: !3285)
!3305 = !DILocation(line: 135, column: 3, scope: !3285)
!3306 = !DILocation(line: 135, column: 7, scope: !3285)
!3307 = !DILocation(line: 137, column: 8, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 137, column: 7)
!3309 = !DILocation(line: 137, column: 7, scope: !3285)
!3310 = !DILocation(line: 138, column: 4, scope: !3308)
!3311 = !DILocation(line: 140, column: 31, scope: !3285)
!3312 = !DILocation(line: 140, column: 39, scope: !3285)
!3313 = !DILocation(line: 141, column: 10, scope: !3285)
!3314 = !DILocation(line: 141, column: 14, scope: !3285)
!3315 = !DILocation(line: 140, column: 9, scope: !3285)
!3316 = !DILocation(line: 140, column: 7, scope: !3285)
!3317 = !DILocation(line: 143, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 143, column: 7)
!3319 = !DILocation(line: 143, column: 11, scope: !3318)
!3320 = !DILocation(line: 143, column: 7, scope: !3285)
!3321 = !DILocation(line: 144, column: 4, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !2, line: 144, column: 4)
!3323 = distinct !DILexicalBlock(scope: !3318, file: !2, line: 143, column: 16)
!3324 = !DILocation(line: 144, column: 4, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !2, line: 144, column: 4)
!3326 = !DILocation(line: 146, column: 4, scope: !3323)
!3327 = !DILocation(line: 149, column: 33, scope: !3285)
!3328 = !DILocation(line: 149, column: 37, scope: !3285)
!3329 = !DILocation(line: 149, column: 3, scope: !3285)
!3330 = !DILocation(line: 150, column: 2, scope: !3286)
!3331 = !DILocation(line: 150, column: 2, scope: !3285)
!3332 = distinct !{!3332, !3297, !3333, !3334, !3335}
!3333 = !DILocation(line: 150, column: 2, scope: !3287)
!3334 = !{!"llvm.loop.mustprogress"}
!3335 = !{!"llvm.loop.unroll.disable"}
!3336 = !DILocation(line: 151, column: 1, scope: !2132)
!3337 = distinct !DISubprogram(name: "find_next_bit", scope: !3338, file: !3338, line: 54, type: !3339, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3343)
!3338 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!259, !3341, !259, !259}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!3343 = !{!3344, !3345, !3346, !3347}
!3344 = !DILocalVariable(name: "addr", arg: 1, scope: !3337, file: !3338, line: 54, type: !3341)
!3345 = !DILocalVariable(name: "size", arg: 2, scope: !3337, file: !3338, line: 54, type: !259)
!3346 = !DILocalVariable(name: "offset", arg: 3, scope: !3337, file: !3338, line: 55, type: !259)
!3347 = !DILocalVariable(name: "val", scope: !3348, file: !3338, line: 58, type: !259)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3338, line: 57, column: 31)
!3349 = distinct !DILexicalBlock(scope: !3337, file: !3338, line: 57, column: 6)
!3350 = !DILocation(line: 54, column: 50, scope: !3337)
!3351 = !DILocation(line: 54, column: 70, scope: !3337)
!3352 = !DILocation(line: 55, column: 22, scope: !3337)
!3353 = !DILocation(line: 57, column: 6, scope: !3349)
!3354 = !DILocation(line: 57, column: 6, scope: !3337)
!3355 = !DILocation(line: 58, column: 3, scope: !3348)
!3356 = !DILocation(line: 58, column: 17, scope: !3348)
!3357 = !DILocation(line: 60, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3348, file: !3338, line: 60, column: 7)
!3359 = !DILocation(line: 60, column: 7, scope: !3348)
!3360 = !DILocation(line: 61, column: 11, scope: !3358)
!3361 = !DILocation(line: 61, column: 4, scope: !3358)
!3362 = !DILocation(line: 63, column: 10, scope: !3348)
!3363 = !DILocation(line: 63, column: 9, scope: !3348)
!3364 = !DILocation(line: 63, column: 17, scope: !3348)
!3365 = !DILocation(line: 63, column: 15, scope: !3348)
!3366 = !DILocation(line: 63, column: 7, scope: !3348)
!3367 = !DILocation(line: 64, column: 10, scope: !3348)
!3368 = !DILocation(line: 64, column: 16, scope: !3348)
!3369 = !DILocation(line: 64, column: 29, scope: !3348)
!3370 = !DILocation(line: 64, column: 3, scope: !3348)
!3371 = !DILocation(line: 65, column: 2, scope: !3349)
!3372 = !DILocation(line: 67, column: 24, scope: !3337)
!3373 = !DILocation(line: 67, column: 30, scope: !3337)
!3374 = !DILocation(line: 67, column: 36, scope: !3337)
!3375 = !DILocation(line: 67, column: 9, scope: !3337)
!3376 = !DILocation(line: 67, column: 2, scope: !3337)
!3377 = !DILocation(line: 68, column: 1, scope: !3337)
!3378 = !DISubprogram(name: "freq_qos_add_request", scope: !26, file: !26, line: 304, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!81, !1757, !2189, !31, !649}
!3381 = !DISubprogram(name: "_printk", scope: !3382, file: !3382, line: 153, type: !3383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3382 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!81, !340, null}
!3385 = !DISubprogram(name: "thermal_cooling_device_update", scope: !326, file: !326, line: 352, type: !3386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !324}
!3388 = distinct !DISubprogram(name: "acpi_thermal_cpufreq_exit", scope: !2, file: !2, line: 153, type: !2133, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3389)
!3389 = !{!3390, !3391, !3392, !3396, !3399}
!3390 = !DILocalVariable(name: "policy", arg: 1, scope: !3388, file: !2, line: 153, type: !2135)
!3391 = !DILocalVariable(name: "cpu", scope: !3388, file: !2, line: 155, type: !13)
!3392 = !DILocalVariable(name: "pr", scope: !3393, file: !2, line: 158, type: !133)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !2, line: 157, column: 42)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !2, line: 157, column: 2)
!3395 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 157, column: 2)
!3396 = !DILocalVariable(name: "__vpp_verify", scope: !3397, file: !2, line: 158, type: !691)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 158, column: 31)
!3398 = distinct !DILexicalBlock(scope: !3393, file: !2, line: 158, column: 31)
!3399 = !DILocalVariable(name: "__ptr", scope: !3400, file: !2, line: 158, type: !259)
!3400 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 158, column: 31)
!3401 = !DILocation(line: 153, column: 55, scope: !3388)
!3402 = !DILocation(line: 155, column: 2, scope: !3388)
!3403 = !DILocation(line: 155, column: 15, scope: !3388)
!3404 = !DILocation(line: 157, column: 2, scope: !3395)
!3405 = !DILocation(line: 157, column: 2, scope: !3394)
!3406 = !DILocation(line: 158, column: 3, scope: !3393)
!3407 = !DILocation(line: 158, column: 26, scope: !3393)
!3408 = !DILocation(line: 158, column: 31, scope: !3398)
!3409 = !DILocation(line: 158, column: 31, scope: !3397)
!3410 = !DILocation(line: 158, column: 31, scope: !3400)
!3411 = !DILocation(line: 158, column: 31, scope: !3393)
!3412 = !DILocation(line: 160, column: 8, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3393, file: !2, line: 160, column: 7)
!3414 = !DILocation(line: 160, column: 7, scope: !3393)
!3415 = !DILocation(line: 161, column: 4, scope: !3413)
!3416 = !DILocation(line: 163, column: 28, scope: !3393)
!3417 = !DILocation(line: 163, column: 32, scope: !3393)
!3418 = !DILocation(line: 163, column: 3, scope: !3393)
!3419 = !DILocation(line: 165, column: 33, scope: !3393)
!3420 = !DILocation(line: 165, column: 37, scope: !3393)
!3421 = !DILocation(line: 165, column: 3, scope: !3393)
!3422 = !DILocation(line: 166, column: 2, scope: !3394)
!3423 = !DILocation(line: 166, column: 2, scope: !3393)
!3424 = distinct !{!3424, !3404, !3425, !3334, !3335}
!3425 = !DILocation(line: 166, column: 2, scope: !3395)
!3426 = !DILocation(line: 167, column: 1, scope: !3388)
!3427 = !DISubprogram(name: "freq_qos_remove_request", scope: !26, file: !26, line: 308, type: !3428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!81, !2189}
!3430 = distinct !DISubprogram(name: "processor_get_max_state", scope: !2, file: !2, line: 202, type: !2007, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3431)
!3431 = !{!3432, !3433, !3434, !3693}
!3432 = !DILocalVariable(name: "cdev", arg: 1, scope: !3430, file: !2, line: 202, type: !324)
!3433 = !DILocalVariable(name: "state", arg: 2, scope: !3430, file: !2, line: 203, type: !1428)
!3434 = !DILocalVariable(name: "device", scope: !3430, file: !2, line: 205, type: !3435)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3437, line: 367, size: 11200, elements: !3438)
!3437 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3454, !3472, !3548, !3576, !3600, !3621, !3627, !3636, !3668, !3682, !3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !3436, file: !3437, line: 368, baseType: !142, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !3436, file: !3437, line: 369, baseType: !81, size: 32, offset: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3436, file: !3437, line: 370, baseType: !138, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3436, file: !3437, line: 371, baseType: !1820, size: 512, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !3436, file: !3437, line: 372, baseType: !343, size: 128, offset: 640)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !3436, file: !3437, line: 373, baseType: !343, size: 128, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3436, file: !3437, line: 374, baseType: !3446, size: 32, offset: 896)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !3437, line: 181, size: 32, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3446, file: !3437, line: 182, baseType: !142, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3446, file: !3437, line: 183, baseType: !142, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3446, file: !3437, line: 184, baseType: !142, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3446, file: !3437, line: 185, baseType: !142, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3446, file: !3437, line: 186, baseType: !142, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3446, file: !3437, line: 187, baseType: !142, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3436, file: !3437, line: 375, baseType: !3455, size: 32, offset: 928)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !3437, line: 192, size: 32, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3455, file: !3437, line: 193, baseType: !142, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3455, file: !3437, line: 194, baseType: !142, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3455, file: !3437, line: 195, baseType: !142, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3455, file: !3437, line: 196, baseType: !142, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3455, file: !3437, line: 197, baseType: !142, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3455, file: !3437, line: 198, baseType: !142, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3455, file: !3437, line: 199, baseType: !142, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3455, file: !3437, line: 200, baseType: !142, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3455, file: !3437, line: 201, baseType: !142, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3455, file: !3437, line: 202, baseType: !142, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3455, file: !3437, line: 203, baseType: !142, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3455, file: !3437, line: 204, baseType: !142, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3455, file: !3437, line: 205, baseType: !142, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !3455, file: !3437, line: 206, baseType: !142, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3455, file: !3437, line: 207, baseType: !142, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !3436, file: !3437, line: 376, baseType: !3473, size: 960, offset: 960)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !3437, line: 238, size: 960, elements: !3474)
!3474 = !{!3475, !3477, !3478, !3486, !3488, !3489, !3490, !3495, !3498}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3473, file: !3437, line: 239, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !3437, line: 220, baseType: !2752)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !3473, file: !3437, line: 240, baseType: !81, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3473, file: !3437, line: 241, baseType: !3479, size: 32, offset: 96)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !3437, line: 230, size: 32, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3479, file: !3437, line: 231, baseType: !142, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3479, file: !3437, line: 232, baseType: !142, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3479, file: !3437, line: 233, baseType: !142, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !3479, file: !3437, line: 234, baseType: !142, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3479, file: !3437, line: 235, baseType: !142, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3473, file: !3437, line: 242, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !3437, line: 221, baseType: !205)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3473, file: !3437, line: 243, baseType: !330, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3473, file: !3437, line: 244, baseType: !343, size: 128, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3473, file: !3437, line: 245, baseType: !3491, size: 320, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !3437, line: 222, baseType: !3492)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !3493)
!3493 = !{!3494}
!3494 = !DISubrange(count: 40)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3473, file: !3437, line: 246, baseType: !3496, size: 160, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !3437, line: 223, baseType: !3497)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3129)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3473, file: !3437, line: 247, baseType: !3499, size: 64, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !139, line: 908, size: 192, elements: !3501)
!3501 = !{!3502, !3504, !3509, !3515, !3522, !3528, !3534, !3542}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3500, file: !139, line: 909, baseType: !3503, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !139, line: 644, baseType: !142)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3500, file: !139, line: 913, baseType: !3505, size: 128)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 910, size: 128, elements: !3506)
!3506 = !{!3507, !3508}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3505, file: !139, line: 911, baseType: !3503, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3505, file: !139, line: 912, baseType: !205, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3500, file: !139, line: 919, baseType: !3510, size: 128)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 915, size: 128, elements: !3511)
!3511 = !{!3512, !3513, !3514}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3510, file: !139, line: 916, baseType: !3503, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3510, file: !139, line: 917, baseType: !142, size: 32, offset: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3510, file: !139, line: 918, baseType: !330, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3500, file: !139, line: 925, baseType: !3516, size: 128)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 921, size: 128, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3516, file: !139, line: 922, baseType: !3503, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3516, file: !139, line: 923, baseType: !142, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3516, file: !139, line: 924, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3500, file: !139, line: 931, baseType: !3523, size: 128)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 927, size: 128, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3523, file: !139, line: 928, baseType: !3503, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3523, file: !139, line: 929, baseType: !142, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3523, file: !139, line: 930, baseType: !3499, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3500, file: !139, line: 937, baseType: !3529, size: 128)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 933, size: 128, elements: !3530)
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3529, file: !139, line: 934, baseType: !3503, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3529, file: !139, line: 935, baseType: !3503, size: 32, offset: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3529, file: !139, line: 936, baseType: !138, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3500, file: !139, line: 944, baseType: !3535, size: 192)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 939, size: 192, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3541}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3535, file: !139, line: 940, baseType: !3503, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3535, file: !139, line: 941, baseType: !142, size: 32, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3535, file: !139, line: 942, baseType: !3540, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !139, line: 128, baseType: !205)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3535, file: !139, line: 943, baseType: !142, size: 32, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3500, file: !139, line: 950, baseType: !3543, size: 96)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3500, file: !139, line: 946, size: 96, elements: !3544)
!3544 = !{!3545, !3546, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3543, file: !139, line: 947, baseType: !3503, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3543, file: !139, line: 948, baseType: !142, size: 32, offset: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3543, file: !139, line: 949, baseType: !142, size: 32, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3436, file: !3437, line: 377, baseType: !3549, size: 1408, offset: 1920)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !3437, line: 280, size: 1408, elements: !3550)
!3550 = !{!3551, !3552, !3562, !3575}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3549, file: !3437, line: 281, baseType: !81, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3549, file: !3437, line: 282, baseType: !3553, size: 32, offset: 32)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !3437, line: 259, size: 32, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3553, file: !3437, line: 260, baseType: !142, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3553, file: !3437, line: 261, baseType: !142, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3553, file: !3437, line: 262, baseType: !142, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3553, file: !3437, line: 263, baseType: !142, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3553, file: !3437, line: 264, baseType: !142, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3553, file: !3437, line: 265, baseType: !142, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3553, file: !3437, line: 266, baseType: !142, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3549, file: !3437, line: 283, baseType: !3563, size: 1280, offset: 64)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3564, size: 1280, elements: !2053)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !3437, line: 269, size: 256, elements: !3565)
!3565 = !{!3566, !3572, !3573, !3574}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3564, file: !3437, line: 274, baseType: !3567, size: 8)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3564, file: !3437, line: 270, size: 8, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3567, file: !3437, line: 271, baseType: !157, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3567, file: !3437, line: 272, baseType: !157, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3567, file: !3437, line: 273, baseType: !157, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3564, file: !3437, line: 275, baseType: !81, size: 32, offset: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3564, file: !3437, line: 276, baseType: !81, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3564, file: !3437, line: 277, baseType: !343, size: 128, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !3549, file: !3437, line: 284, baseType: !157, size: 8, offset: 1344)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3436, file: !3437, line: 378, baseType: !3577, size: 640, offset: 3328)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !3437, line: 330, size: 640, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3588, !3597, !3598, !3599}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3577, file: !3437, line: 331, baseType: !138, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3577, file: !3437, line: 332, baseType: !205, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3577, file: !3437, line: 333, baseType: !205, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3577, file: !3437, line: 334, baseType: !343, size: 128, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3577, file: !3437, line: 335, baseType: !3584, size: 8, offset: 320)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !3437, line: 320, size: 8, elements: !3585)
!3585 = !{!3586, !3587}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3584, file: !3437, line: 321, baseType: !157, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3584, file: !3437, line: 322, baseType: !157, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3577, file: !3437, line: 336, baseType: !3589, size: 128, offset: 384)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !3437, line: 325, size: 128, elements: !3590)
!3590 = !{!3591, !3596}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3589, file: !3437, line: 326, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3589, file: !3437, line: 327, baseType: !986, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3577, file: !3437, line: 337, baseType: !1540, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3577, file: !3437, line: 338, baseType: !81, size: 32, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3577, file: !3437, line: 339, baseType: !81, size: 32, offset: 608)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3436, file: !3437, line: 379, baseType: !3601, size: 192, offset: 3968)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !3437, line: 312, size: 192, elements: !3602)
!3602 = !{!3603, !3604, !3608, !3609}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3601, file: !3437, line: 313, baseType: !81, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3601, file: !3437, line: 314, baseType: !3605, size: 8, offset: 32)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !3437, line: 298, size: 8, elements: !3606)
!3606 = !{!3607}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3605, file: !3437, line: 299, baseType: !157, size: 8, flags: DIFlagBitField, extraData: i64 0)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !3601, file: !3437, line: 315, baseType: !81, size: 32, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3601, file: !3437, line: 316, baseType: !3610, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !3437, line: 302, size: 64, elements: !3612)
!3612 = !{!3613, !3618, !3619, !3620}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3611, file: !3437, line: 306, baseType: !3614, size: 8)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3611, file: !3437, line: 303, size: 8, elements: !3615)
!3615 = !{!3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3614, file: !3437, line: 304, baseType: !157, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3614, file: !3437, line: 305, baseType: !157, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3611, file: !3437, line: 307, baseType: !157, size: 8, offset: 8)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3611, file: !3437, line: 308, baseType: !157, size: 8, offset: 16)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3611, file: !3437, line: 309, baseType: !81, size: 32, offset: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3436, file: !3437, line: 380, baseType: !3622, size: 64, offset: 4160)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !3437, line: 212, size: 64, elements: !3623)
!3623 = !{!3624}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3622, file: !3437, line: 213, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3437, line: 86, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3436, file: !3437, line: 381, baseType: !3628, size: 384, offset: 4224)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !3437, line: 357, size: 384, elements: !3629)
!3629 = !{!3630, !3633, !3634, !3635}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3628, file: !3437, line: 358, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3628, file: !3437, line: 359, baseType: !343, size: 128, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !3628, file: !3437, line: 360, baseType: !3631, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !3628, file: !3437, line: 361, baseType: !343, size: 128, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3436, file: !3437, line: 382, baseType: !3637, size: 64, offset: 4608)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !3437, line: 124, size: 1216, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3647, !3651, !3655, !3656, !3657}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3638, file: !3437, line: 125, baseType: !1462, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3638, file: !3437, line: 126, baseType: !343, size: 128, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3638, file: !3437, line: 127, baseType: !3643, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!297, !340, !3646}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3638, file: !3437, line: 128, baseType: !3648, size: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!81, !3435, !1462}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3638, file: !3437, line: 129, baseType: !3652, size: 64, offset: 320)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !3435}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3638, file: !3437, line: 130, baseType: !1010, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !3638, file: !3437, line: 131, baseType: !1010, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3638, file: !3437, line: 132, baseType: !3658, size: 704, offset: 512)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !3437, line: 110, size: 704, elements: !3659)
!3659 = !{!3660, !3661, !3665, !3666, !3667}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3658, file: !3437, line: 111, baseType: !336, size: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !3658, file: !3437, line: 112, baseType: !3662, size: 64, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!81, !3435}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !3658, file: !3437, line: 113, baseType: !3652, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3658, file: !3437, line: 114, baseType: !297, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !3658, file: !3437, line: 115, baseType: !297, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !3436, file: !3437, line: 383, baseType: !3669, size: 64, offset: 4672)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !3437, line: 140, size: 256, elements: !3671)
!3671 = !{!3672, !3673, !3677, !3681}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3670, file: !3437, line: 141, baseType: !3435, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3670, file: !3437, line: 142, baseType: !3674, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!81, !3435, !142}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3670, file: !3437, line: 143, baseType: !3678, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !3435, !142}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3670, file: !3437, line: 144, baseType: !3652, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !3436, file: !3437, line: 384, baseType: !3683, size: 64, offset: 4736)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !3437, line: 364, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3436, file: !3437, line: 385, baseType: !140, size: 64, offset: 4800)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3436, file: !3437, line: 386, baseType: !333, size: 5824, offset: 4864)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !3436, file: !3437, line: 387, baseType: !13, size: 32, offset: 10688)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !3436, file: !3437, line: 388, baseType: !13, size: 32, offset: 10720)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !3436, file: !3437, line: 389, baseType: !343, size: 128, offset: 10752)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !3436, file: !3437, line: 390, baseType: !670, size: 256, offset: 10880)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3436, file: !3437, line: 391, baseType: !3652, size: 64, offset: 11136)
!3693 = !DILocalVariable(name: "pr", scope: !3430, file: !2, line: 206, type: !133)
!3694 = !DILocation(line: 202, column: 56, scope: !3430)
!3695 = !DILocation(line: 203, column: 19, scope: !3430)
!3696 = !DILocation(line: 205, column: 2, scope: !3430)
!3697 = !DILocation(line: 205, column: 22, scope: !3430)
!3698 = !DILocation(line: 205, column: 31, scope: !3430)
!3699 = !DILocation(line: 205, column: 37, scope: !3430)
!3700 = !DILocation(line: 206, column: 2, scope: !3430)
!3701 = !DILocation(line: 206, column: 25, scope: !3430)
!3702 = !DILocation(line: 208, column: 7, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3430, file: !2, line: 208, column: 6)
!3704 = !DILocation(line: 208, column: 6, scope: !3430)
!3705 = !DILocation(line: 209, column: 3, scope: !3703)
!3706 = !DILocation(line: 211, column: 24, scope: !3430)
!3707 = !DILocation(line: 211, column: 7, scope: !3430)
!3708 = !DILocation(line: 211, column: 5, scope: !3430)
!3709 = !DILocation(line: 212, column: 7, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3430, file: !2, line: 212, column: 6)
!3711 = !DILocation(line: 212, column: 6, scope: !3430)
!3712 = !DILocation(line: 213, column: 3, scope: !3710)
!3713 = !DILocation(line: 215, column: 36, scope: !3430)
!3714 = !DILocation(line: 215, column: 11, scope: !3430)
!3715 = !DILocation(line: 215, column: 3, scope: !3430)
!3716 = !DILocation(line: 215, column: 9, scope: !3430)
!3717 = !DILocation(line: 216, column: 2, scope: !3430)
!3718 = !DILocation(line: 217, column: 1, scope: !3430)
!3719 = distinct !DISubprogram(name: "processor_get_cur_state", scope: !2, file: !2, line: 220, type: !2007, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3720)
!3720 = !{!3721, !3722, !3723, !3724}
!3721 = !DILocalVariable(name: "cdev", arg: 1, scope: !3719, file: !2, line: 220, type: !324)
!3722 = !DILocalVariable(name: "cur_state", arg: 2, scope: !3719, file: !2, line: 221, type: !1428)
!3723 = !DILocalVariable(name: "device", scope: !3719, file: !2, line: 223, type: !3435)
!3724 = !DILocalVariable(name: "pr", scope: !3719, file: !2, line: 224, type: !133)
!3725 = !DILocation(line: 220, column: 56, scope: !3719)
!3726 = !DILocation(line: 221, column: 19, scope: !3719)
!3727 = !DILocation(line: 223, column: 2, scope: !3719)
!3728 = !DILocation(line: 223, column: 22, scope: !3719)
!3729 = !DILocation(line: 223, column: 31, scope: !3719)
!3730 = !DILocation(line: 223, column: 37, scope: !3719)
!3731 = !DILocation(line: 224, column: 2, scope: !3719)
!3732 = !DILocation(line: 224, column: 25, scope: !3719)
!3733 = !DILocation(line: 226, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 226, column: 6)
!3735 = !DILocation(line: 226, column: 6, scope: !3719)
!3736 = !DILocation(line: 227, column: 3, scope: !3734)
!3737 = !DILocation(line: 229, column: 24, scope: !3719)
!3738 = !DILocation(line: 229, column: 7, scope: !3719)
!3739 = !DILocation(line: 229, column: 5, scope: !3719)
!3740 = !DILocation(line: 230, column: 7, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 230, column: 6)
!3742 = !DILocation(line: 230, column: 6, scope: !3719)
!3743 = !DILocation(line: 231, column: 3, scope: !3741)
!3744 = !DILocation(line: 233, column: 37, scope: !3719)
!3745 = !DILocation(line: 233, column: 41, scope: !3719)
!3746 = !DILocation(line: 233, column: 15, scope: !3719)
!3747 = !DILocation(line: 233, column: 3, scope: !3719)
!3748 = !DILocation(line: 233, column: 13, scope: !3719)
!3749 = !DILocation(line: 234, column: 6, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 234, column: 6)
!3751 = !DILocation(line: 234, column: 10, scope: !3750)
!3752 = !DILocation(line: 234, column: 16, scope: !3750)
!3753 = !DILocation(line: 234, column: 6, scope: !3719)
!3754 = !DILocation(line: 235, column: 17, scope: !3750)
!3755 = !DILocation(line: 235, column: 21, scope: !3750)
!3756 = !DILocation(line: 235, column: 32, scope: !3750)
!3757 = !DILocation(line: 235, column: 4, scope: !3750)
!3758 = !DILocation(line: 235, column: 14, scope: !3750)
!3759 = !DILocation(line: 235, column: 3, scope: !3750)
!3760 = !DILocation(line: 236, column: 2, scope: !3719)
!3761 = !DILocation(line: 237, column: 1, scope: !3719)
!3762 = distinct !DISubprogram(name: "processor_set_cur_state", scope: !2, file: !2, line: 240, type: !2012, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3763)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769}
!3764 = !DILocalVariable(name: "cdev", arg: 1, scope: !3762, file: !2, line: 240, type: !324)
!3765 = !DILocalVariable(name: "state", arg: 2, scope: !3762, file: !2, line: 241, type: !259)
!3766 = !DILocalVariable(name: "device", scope: !3762, file: !2, line: 243, type: !3435)
!3767 = !DILocalVariable(name: "pr", scope: !3762, file: !2, line: 244, type: !133)
!3768 = !DILocalVariable(name: "result", scope: !3762, file: !2, line: 245, type: !81)
!3769 = !DILocalVariable(name: "max_pstate", scope: !3762, file: !2, line: 246, type: !81)
!3770 = !DILocation(line: 240, column: 56, scope: !3762)
!3771 = !DILocation(line: 241, column: 18, scope: !3762)
!3772 = !DILocation(line: 243, column: 2, scope: !3762)
!3773 = !DILocation(line: 243, column: 22, scope: !3762)
!3774 = !DILocation(line: 243, column: 31, scope: !3762)
!3775 = !DILocation(line: 243, column: 37, scope: !3762)
!3776 = !DILocation(line: 244, column: 2, scope: !3762)
!3777 = !DILocation(line: 244, column: 25, scope: !3762)
!3778 = !DILocation(line: 245, column: 2, scope: !3762)
!3779 = !DILocation(line: 245, column: 6, scope: !3762)
!3780 = !DILocation(line: 246, column: 2, scope: !3762)
!3781 = !DILocation(line: 246, column: 6, scope: !3762)
!3782 = !DILocation(line: 248, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3762, file: !2, line: 248, column: 6)
!3784 = !DILocation(line: 248, column: 6, scope: !3762)
!3785 = !DILocation(line: 249, column: 3, scope: !3783)
!3786 = !DILocation(line: 251, column: 24, scope: !3762)
!3787 = !DILocation(line: 251, column: 7, scope: !3762)
!3788 = !DILocation(line: 251, column: 5, scope: !3762)
!3789 = !DILocation(line: 252, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3762, file: !2, line: 252, column: 6)
!3791 = !DILocation(line: 252, column: 6, scope: !3762)
!3792 = !DILocation(line: 253, column: 3, scope: !3790)
!3793 = !DILocation(line: 255, column: 37, scope: !3762)
!3794 = !DILocation(line: 255, column: 41, scope: !3762)
!3795 = !DILocation(line: 255, column: 15, scope: !3762)
!3796 = !DILocation(line: 255, column: 13, scope: !3762)
!3797 = !DILocation(line: 257, column: 6, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3762, file: !2, line: 257, column: 6)
!3799 = !DILocation(line: 257, column: 39, scope: !3798)
!3800 = !DILocation(line: 257, column: 14, scope: !3798)
!3801 = !DILocation(line: 257, column: 12, scope: !3798)
!3802 = !DILocation(line: 257, column: 6, scope: !3762)
!3803 = !DILocation(line: 258, column: 3, scope: !3798)
!3804 = !DILocation(line: 260, column: 6, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3762, file: !2, line: 260, column: 6)
!3806 = !DILocation(line: 260, column: 15, scope: !3805)
!3807 = !DILocation(line: 260, column: 12, scope: !3805)
!3808 = !DILocation(line: 260, column: 6, scope: !3762)
!3809 = !DILocation(line: 261, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !2, line: 261, column: 7)
!3811 = distinct !DILexicalBlock(scope: !3805, file: !2, line: 260, column: 27)
!3812 = !DILocation(line: 261, column: 11, scope: !3810)
!3813 = !DILocation(line: 261, column: 17, scope: !3810)
!3814 = !DILocation(line: 261, column: 28, scope: !3810)
!3815 = !DILocation(line: 261, column: 31, scope: !3810)
!3816 = !DILocation(line: 261, column: 35, scope: !3810)
!3817 = !DILocation(line: 261, column: 46, scope: !3810)
!3818 = !DILocation(line: 261, column: 7, scope: !3811)
!3819 = !DILocation(line: 262, column: 43, scope: !3810)
!3820 = !DILocation(line: 262, column: 13, scope: !3810)
!3821 = !DILocation(line: 262, column: 11, scope: !3810)
!3822 = !DILocation(line: 262, column: 4, scope: !3810)
!3823 = !DILocation(line: 263, column: 25, scope: !3811)
!3824 = !DILocation(line: 263, column: 29, scope: !3811)
!3825 = !DILocation(line: 263, column: 33, scope: !3811)
!3826 = !DILocation(line: 263, column: 3, scope: !3811)
!3827 = !DILocation(line: 264, column: 2, scope: !3811)
!3828 = !DILocation(line: 265, column: 25, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3805, file: !2, line: 264, column: 9)
!3830 = !DILocation(line: 265, column: 29, scope: !3829)
!3831 = !DILocation(line: 265, column: 33, scope: !3829)
!3832 = !DILocation(line: 265, column: 3, scope: !3829)
!3833 = !DILocation(line: 266, column: 42, scope: !3829)
!3834 = !DILocation(line: 267, column: 5, scope: !3829)
!3835 = !DILocation(line: 267, column: 13, scope: !3829)
!3836 = !DILocation(line: 267, column: 11, scope: !3829)
!3837 = !DILocation(line: 266, column: 12, scope: !3829)
!3838 = !DILocation(line: 266, column: 10, scope: !3829)
!3839 = !DILocation(line: 269, column: 9, scope: !3762)
!3840 = !DILocation(line: 269, column: 2, scope: !3762)
!3841 = !DILocation(line: 270, column: 1, scope: !3762)
!3842 = distinct !DISubprogram(name: "acpi_processor_thermal_init", scope: !2, file: !2, line: 278, type: !3843, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!81, !133, !3435}
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DILocalVariable(name: "pr", arg: 1, scope: !3842, file: !2, line: 278, type: !133)
!3847 = !DILocalVariable(name: "device", arg: 2, scope: !3842, file: !2, line: 279, type: !3435)
!3848 = !DILocalVariable(name: "result", scope: !3842, file: !2, line: 281, type: !81)
!3849 = !DILabel(scope: !3842, name: "err_remove_sysfs_thermal", file: !2, line: 313)
!3850 = !DILabel(scope: !3842, name: "err_thermal_unregister", file: !2, line: 315)
!3851 = !DILocation(line: 278, column: 56, scope: !3842)
!3852 = !DILocation(line: 279, column: 25, scope: !3842)
!3853 = !DILocation(line: 281, column: 2, scope: !3842)
!3854 = !DILocation(line: 281, column: 6, scope: !3842)
!3855 = !DILocation(line: 283, column: 58, scope: !3842)
!3856 = !DILocation(line: 283, column: 13, scope: !3842)
!3857 = !DILocation(line: 283, column: 2, scope: !3842)
!3858 = !DILocation(line: 283, column: 6, scope: !3842)
!3859 = !DILocation(line: 283, column: 11, scope: !3842)
!3860 = !DILocation(line: 285, column: 13, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3842, file: !2, line: 285, column: 6)
!3862 = !DILocation(line: 285, column: 17, scope: !3861)
!3863 = !DILocation(line: 285, column: 6, scope: !3861)
!3864 = !DILocation(line: 285, column: 6, scope: !3842)
!3865 = !DILocation(line: 286, column: 20, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3861, file: !2, line: 285, column: 24)
!3867 = !DILocation(line: 286, column: 24, scope: !3866)
!3868 = !DILocation(line: 286, column: 12, scope: !3866)
!3869 = !DILocation(line: 286, column: 10, scope: !3866)
!3870 = !DILocation(line: 287, column: 10, scope: !3866)
!3871 = !DILocation(line: 287, column: 3, scope: !3866)
!3872 = !DILocation(line: 293, column: 30, scope: !3842)
!3873 = !DILocation(line: 293, column: 38, scope: !3842)
!3874 = !DILocation(line: 293, column: 42, scope: !3842)
!3875 = !DILocation(line: 294, column: 9, scope: !3842)
!3876 = !DILocation(line: 294, column: 13, scope: !3842)
!3877 = !DILocation(line: 294, column: 19, scope: !3842)
!3878 = !DILocation(line: 294, column: 26, scope: !3842)
!3879 = !DILocation(line: 293, column: 11, scope: !3842)
!3880 = !DILocation(line: 293, column: 9, scope: !3842)
!3881 = !DILocation(line: 296, column: 6, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3842, file: !2, line: 296, column: 6)
!3883 = !DILocation(line: 296, column: 6, scope: !3842)
!3884 = !DILocation(line: 297, column: 3, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !2, line: 297, column: 3)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !2, line: 296, column: 14)
!3887 = !DILocation(line: 297, column: 3, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !2, line: 297, column: 3)
!3889 = !DILocation(line: 299, column: 3, scope: !3886)
!3890 = !DILocation(line: 302, column: 30, scope: !3842)
!3891 = !DILocation(line: 302, column: 34, scope: !3842)
!3892 = !DILocation(line: 302, column: 40, scope: !3842)
!3893 = !DILocation(line: 302, column: 47, scope: !3842)
!3894 = !DILocation(line: 303, column: 9, scope: !3842)
!3895 = !DILocation(line: 303, column: 17, scope: !3842)
!3896 = !DILocation(line: 303, column: 21, scope: !3842)
!3897 = !DILocation(line: 302, column: 11, scope: !3842)
!3898 = !DILocation(line: 302, column: 9, scope: !3842)
!3899 = !DILocation(line: 305, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3842, file: !2, line: 305, column: 6)
!3901 = !DILocation(line: 305, column: 6, scope: !3842)
!3902 = !DILocation(line: 306, column: 3, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !2, line: 306, column: 3)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !2, line: 305, column: 14)
!3905 = !DILocation(line: 306, column: 3, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3903, file: !2, line: 306, column: 3)
!3907 = !DILocation(line: 308, column: 3, scope: !3904)
!3908 = !DILocation(line: 311, column: 2, scope: !3842)
!3909 = !DILocation(line: 313, column: 1, scope: !3842)
!3910 = !DILocation(line: 314, column: 21, scope: !3842)
!3911 = !DILocation(line: 314, column: 29, scope: !3842)
!3912 = !DILocation(line: 314, column: 33, scope: !3842)
!3913 = !DILocation(line: 314, column: 2, scope: !3842)
!3914 = !DILocation(line: 315, column: 1, scope: !3842)
!3915 = !DILocation(line: 316, column: 36, scope: !3842)
!3916 = !DILocation(line: 316, column: 40, scope: !3842)
!3917 = !DILocation(line: 316, column: 2, scope: !3842)
!3918 = !DILocation(line: 318, column: 9, scope: !3842)
!3919 = !DILocation(line: 318, column: 2, scope: !3842)
!3920 = !DILocation(line: 319, column: 1, scope: !3842)
!3921 = !DISubprogram(name: "thermal_cooling_device_register", scope: !326, file: !326, line: 342, type: !3922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!324, !340, !140, !2001}
!3924 = distinct !DISubprogram(name: "IS_ERR", scope: !3925, file: !3925, line: 59, type: !3926, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3928)
!3925 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!297, !691}
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "ptr", arg: 1, scope: !3924, file: !3925, line: 59, type: !691)
!3930 = !DILocation(line: 59, column: 60, scope: !3924)
!3931 = !DILocation(line: 61, column: 9, scope: !3924)
!3932 = !DILocation(line: 61, column: 2, scope: !3924)
!3933 = distinct !DISubprogram(name: "PTR_ERR", scope: !3925, file: !3925, line: 49, type: !3934, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!453, !691}
!3936 = !{!3937}
!3937 = !DILocalVariable(name: "ptr", arg: 1, scope: !3933, file: !3925, line: 49, type: !691)
!3938 = !DILocation(line: 49, column: 61, scope: !3933)
!3939 = !DILocation(line: 51, column: 16, scope: !3933)
!3940 = !DILocation(line: 51, column: 9, scope: !3933)
!3941 = !DILocation(line: 51, column: 2, scope: !3933)
!3942 = !DISubprogram(name: "sysfs_create_link", scope: !443, file: !443, line: 293, type: !3943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!81, !349, !349, !340}
!3945 = !DISubprogram(name: "_dev_err", scope: !3946, file: !3946, line: 50, type: !3947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !1002, !340, null}
!3949 = !DISubprogram(name: "sysfs_remove_link", scope: !443, file: !443, line: 298, type: !3950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{null, !349, !340}
!3952 = !DISubprogram(name: "thermal_cooling_device_unregister", scope: !326, file: !326, line: 353, type: !3386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3953 = distinct !DISubprogram(name: "acpi_processor_thermal_exit", scope: !2, file: !2, line: 321, type: !3954, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !133, !3435}
!3956 = !{!3957, !3958}
!3957 = !DILocalVariable(name: "pr", arg: 1, scope: !3953, file: !2, line: 321, type: !133)
!3958 = !DILocalVariable(name: "device", arg: 2, scope: !3953, file: !2, line: 322, type: !3435)
!3959 = !DILocation(line: 321, column: 57, scope: !3953)
!3960 = !DILocation(line: 322, column: 26, scope: !3953)
!3961 = !DILocation(line: 324, column: 6, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3953, file: !2, line: 324, column: 6)
!3963 = !DILocation(line: 324, column: 10, scope: !3962)
!3964 = !DILocation(line: 324, column: 6, scope: !3953)
!3965 = !DILocation(line: 325, column: 22, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 324, column: 16)
!3967 = !DILocation(line: 325, column: 30, scope: !3966)
!3968 = !DILocation(line: 325, column: 34, scope: !3966)
!3969 = !DILocation(line: 325, column: 3, scope: !3966)
!3970 = !DILocation(line: 326, column: 22, scope: !3966)
!3971 = !DILocation(line: 326, column: 26, scope: !3966)
!3972 = !DILocation(line: 326, column: 32, scope: !3966)
!3973 = !DILocation(line: 326, column: 39, scope: !3966)
!3974 = !DILocation(line: 326, column: 3, scope: !3966)
!3975 = !DILocation(line: 327, column: 37, scope: !3966)
!3976 = !DILocation(line: 327, column: 41, scope: !3966)
!3977 = !DILocation(line: 327, column: 3, scope: !3966)
!3978 = !DILocation(line: 328, column: 3, scope: !3966)
!3979 = !DILocation(line: 328, column: 7, scope: !3966)
!3980 = !DILocation(line: 328, column: 12, scope: !3966)
!3981 = !DILocation(line: 329, column: 2, scope: !3966)
!3982 = !DILocation(line: 330, column: 1, scope: !3953)
!3983 = distinct !DISubprogram(name: "variable__ffs", scope: !3984, file: !3984, line: 250, type: !3985, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3987)
!3984 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!259, !259}
!3987 = !{!3988}
!3988 = !DILocalVariable(name: "word", arg: 1, scope: !3983, file: !3984, line: 250, type: !259)
!3989 = !DILocation(line: 250, column: 66, scope: !3983)
!3990 = !DILocation(line: 254, column: 11, scope: !3983)
!3991 = !DILocation(line: 252, column: 2, scope: !3983)
!3992 = !{i64 300505}
!3993 = !DILocation(line: 255, column: 9, scope: !3983)
!3994 = !DILocation(line: 255, column: 2, scope: !3983)
!3995 = !DISubprogram(name: "_find_next_bit", scope: !3338, file: !3338, line: 11, type: !3339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3996 = distinct !DISubprogram(name: "acpi_driver_data", scope: !3437, file: !3437, line: 456, type: !3997, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!140, !3435}
!3999 = !{!4000}
!4000 = !DILocalVariable(name: "d", arg: 1, scope: !3996, file: !3437, line: 456, type: !3435)
!4001 = !DILocation(line: 456, column: 58, scope: !3996)
!4002 = !DILocation(line: 458, column: 9, scope: !3996)
!4003 = !DILocation(line: 458, column: 12, scope: !3996)
!4004 = !DILocation(line: 458, column: 2, scope: !3996)
!4005 = distinct !DISubprogram(name: "acpi_processor_max_state", scope: !2, file: !2, line: 187, type: !291, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4006)
!4006 = !{!4007, !4008}
!4007 = !DILocalVariable(name: "pr", arg: 1, scope: !4005, file: !2, line: 187, type: !133)
!4008 = !DILocalVariable(name: "max_state", scope: !4005, file: !2, line: 189, type: !81)
!4009 = !DILocation(line: 187, column: 60, scope: !4005)
!4010 = !DILocation(line: 189, column: 2, scope: !4005)
!4011 = !DILocation(line: 189, column: 6, scope: !4005)
!4012 = !DILocation(line: 195, column: 37, scope: !4005)
!4013 = !DILocation(line: 195, column: 41, scope: !4005)
!4014 = !DILocation(line: 195, column: 15, scope: !4005)
!4015 = !DILocation(line: 195, column: 12, scope: !4005)
!4016 = !DILocation(line: 196, column: 6, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4005, file: !2, line: 196, column: 6)
!4018 = !DILocation(line: 196, column: 10, scope: !4017)
!4019 = !DILocation(line: 196, column: 16, scope: !4017)
!4020 = !DILocation(line: 196, column: 6, scope: !4005)
!4021 = !DILocation(line: 197, column: 17, scope: !4017)
!4022 = !DILocation(line: 197, column: 21, scope: !4017)
!4023 = !DILocation(line: 197, column: 32, scope: !4017)
!4024 = !DILocation(line: 197, column: 44, scope: !4017)
!4025 = !DILocation(line: 197, column: 13, scope: !4017)
!4026 = !DILocation(line: 197, column: 3, scope: !4017)
!4027 = !DILocation(line: 199, column: 9, scope: !4005)
!4028 = !DILocation(line: 200, column: 1, scope: !4005)
!4029 = !DILocation(line: 199, column: 2, scope: !4005)
!4030 = distinct !DISubprogram(name: "cpufreq_get_max_state", scope: !2, file: !2, line: 69, type: !4031, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!81, !13}
!4033 = !{!4034}
!4034 = !DILocalVariable(name: "cpu", arg: 1, scope: !4030, file: !2, line: 69, type: !13)
!4035 = !DILocation(line: 69, column: 47, scope: !4030)
!4036 = !DILocation(line: 71, column: 23, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4030, file: !2, line: 71, column: 6)
!4038 = !DILocation(line: 71, column: 7, scope: !4037)
!4039 = !DILocation(line: 71, column: 6, scope: !4030)
!4040 = !DILocation(line: 72, column: 3, scope: !4037)
!4041 = !DILocation(line: 74, column: 2, scope: !4030)
!4042 = !DILocation(line: 75, column: 1, scope: !4030)
!4043 = distinct !DISubprogram(name: "cpu_has_cpufreq", scope: !2, file: !2, line: 54, type: !4031, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4044)
!4044 = !{!4045, !4046}
!4045 = !DILocalVariable(name: "cpu", arg: 1, scope: !4043, file: !2, line: 54, type: !13)
!4046 = !DILocalVariable(name: "policy", scope: !4043, file: !2, line: 56, type: !2135)
!4047 = !DILocation(line: 54, column: 41, scope: !4043)
!4048 = !DILocation(line: 56, column: 2, scope: !4043)
!4049 = !DILocation(line: 56, column: 25, scope: !4043)
!4050 = !DILocation(line: 58, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4043, file: !2, line: 58, column: 6)
!4052 = !{i8 0, i8 2}
!4053 = !DILocation(line: 58, column: 6, scope: !4043)
!4054 = !DILocation(line: 59, column: 3, scope: !4051)
!4055 = !DILocation(line: 61, column: 27, scope: !4043)
!4056 = !DILocation(line: 61, column: 11, scope: !4043)
!4057 = !DILocation(line: 61, column: 9, scope: !4043)
!4058 = !DILocation(line: 62, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4043, file: !2, line: 62, column: 6)
!4060 = !DILocation(line: 62, column: 6, scope: !4043)
!4061 = !DILocation(line: 63, column: 19, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4059, file: !2, line: 62, column: 14)
!4063 = !DILocation(line: 63, column: 3, scope: !4062)
!4064 = !DILocation(line: 64, column: 3, scope: !4062)
!4065 = !DILocation(line: 66, column: 2, scope: !4043)
!4066 = !DILocation(line: 67, column: 1, scope: !4043)
!4067 = !DISubprogram(name: "cpufreq_cpu_get", scope: !36, file: !36, line: 199, type: !4068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!2135, !13}
!4070 = !DISubprogram(name: "cpufreq_cpu_put", scope: !36, file: !36, line: 200, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4071 = distinct !DISubprogram(name: "cpufreq_get_cur_state", scope: !2, file: !2, line: 77, type: !4031, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4072)
!4072 = !{!4073, !4074, !4077}
!4073 = !DILocalVariable(name: "cpu", arg: 1, scope: !4071, file: !2, line: 77, type: !13)
!4074 = !DILocalVariable(name: "__vpp_verify", scope: !4075, file: !2, line: 82, type: !691)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !2, line: 82, column: 9)
!4076 = distinct !DILexicalBlock(scope: !4071, file: !2, line: 82, column: 9)
!4077 = !DILocalVariable(name: "__ptr", scope: !4078, file: !2, line: 82, type: !259)
!4078 = distinct !DILexicalBlock(scope: !4076, file: !2, line: 82, column: 9)
!4079 = !DILocation(line: 77, column: 47, scope: !4071)
!4080 = !DILocation(line: 79, column: 23, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4071, file: !2, line: 79, column: 6)
!4082 = !DILocation(line: 79, column: 7, scope: !4081)
!4083 = !DILocation(line: 79, column: 6, scope: !4071)
!4084 = !DILocation(line: 80, column: 3, scope: !4081)
!4085 = !DILocation(line: 82, column: 9, scope: !4076)
!4086 = !DILocation(line: 82, column: 9, scope: !4075)
!4087 = !DILocation(line: 82, column: 9, scope: !4078)
!4088 = !DILocation(line: 82, column: 9, scope: !4071)
!4089 = !DILocation(line: 82, column: 2, scope: !4071)
!4090 = !DILocation(line: 83, column: 1, scope: !4071)
!4091 = distinct !DISubprogram(name: "phys_package_first_cpu", scope: !2, file: !2, line: 43, type: !4092, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!81, !81}
!4094 = !{!4095, !4096, !4097, !4098, !4101, !4103, !4109}
!4095 = !DILocalVariable(name: "cpu", arg: 1, scope: !4091, file: !2, line: 43, type: !81)
!4096 = !DILocalVariable(name: "i", scope: !4091, file: !2, line: 45, type: !81)
!4097 = !DILocalVariable(name: "id", scope: !4091, file: !2, line: 46, type: !81)
!4098 = !DILocalVariable(name: "__vpp_verify", scope: !4099, file: !2, line: 46, type: !691)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !2, line: 46, column: 11)
!4100 = distinct !DILexicalBlock(scope: !4091, file: !2, line: 46, column: 11)
!4101 = !DILocalVariable(name: "__ptr", scope: !4102, file: !2, line: 46, type: !259)
!4102 = distinct !DILexicalBlock(scope: !4100, file: !2, line: 46, column: 11)
!4103 = !DILocalVariable(name: "__vpp_verify", scope: !4104, file: !2, line: 49, type: !691)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !2, line: 49, column: 7)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !2, line: 49, column: 7)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !2, line: 49, column: 7)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !2, line: 48, column: 2)
!4108 = distinct !DILexicalBlock(scope: !4091, file: !2, line: 48, column: 2)
!4109 = !DILocalVariable(name: "__ptr", scope: !4110, file: !2, line: 49, type: !259)
!4110 = distinct !DILexicalBlock(scope: !4105, file: !2, line: 49, column: 7)
!4111 = !DILocation(line: 43, column: 39, scope: !4091)
!4112 = !DILocation(line: 45, column: 2, scope: !4091)
!4113 = !DILocation(line: 45, column: 6, scope: !4091)
!4114 = !DILocation(line: 46, column: 2, scope: !4091)
!4115 = !DILocation(line: 46, column: 6, scope: !4091)
!4116 = !DILocation(line: 46, column: 11, scope: !4100)
!4117 = !DILocation(line: 46, column: 11, scope: !4099)
!4118 = !DILocation(line: 46, column: 11, scope: !4102)
!4119 = !DILocation(line: 46, column: 11, scope: !4091)
!4120 = !DILocation(line: 48, column: 2, scope: !4108)
!4121 = !DILocation(line: 48, column: 2, scope: !4107)
!4122 = !DILocation(line: 49, column: 7, scope: !4105)
!4123 = !DILocation(line: 49, column: 7, scope: !4104)
!4124 = !DILocation(line: 49, column: 7, scope: !4110)
!4125 = !DILocation(line: 49, column: 7, scope: !4106)
!4126 = !DILocation(line: 49, column: 42, scope: !4106)
!4127 = !DILocation(line: 49, column: 39, scope: !4106)
!4128 = !DILocation(line: 49, column: 7, scope: !4107)
!4129 = !DILocation(line: 50, column: 11, scope: !4106)
!4130 = !DILocation(line: 50, column: 4, scope: !4106)
!4131 = distinct !{!4131, !4120, !4132, !3334, !3335}
!4132 = !DILocation(line: 50, column: 11, scope: !4108)
!4133 = !DILocation(line: 51, column: 2, scope: !4091)
!4134 = !DILocation(line: 52, column: 1, scope: !4091)
!4135 = !DISubprogram(name: "acpi_processor_set_throttling", scope: !135, file: !135, line: 381, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4136 = distinct !DISubprogram(name: "cpufreq_set_cur_state", scope: !2, file: !2, line: 85, type: !4137, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!81, !13, !81}
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4150, !4152, !4159, !4161, !4164, !4166, !4169, !4171, !4174}
!4140 = !DILocalVariable(name: "cpu", arg: 1, scope: !4136, file: !2, line: 85, type: !13)
!4141 = !DILocalVariable(name: "state", arg: 2, scope: !4136, file: !2, line: 85, type: !81)
!4142 = !DILocalVariable(name: "policy", scope: !4136, file: !2, line: 87, type: !2135)
!4143 = !DILocalVariable(name: "pr", scope: !4136, file: !2, line: 88, type: !133)
!4144 = !DILocalVariable(name: "max_freq", scope: !4136, file: !2, line: 89, type: !259)
!4145 = !DILocalVariable(name: "i", scope: !4136, file: !2, line: 90, type: !81)
!4146 = !DILocalVariable(name: "ret", scope: !4136, file: !2, line: 90, type: !81)
!4147 = !DILocalVariable(name: "__vpp_verify", scope: !4148, file: !2, line: 95, type: !691)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !2, line: 95, column: 2)
!4149 = distinct !DILexicalBlock(scope: !4136, file: !2, line: 95, column: 2)
!4150 = !DILocalVariable(name: "__ptr", scope: !4151, file: !2, line: 95, type: !259)
!4151 = distinct !DILexicalBlock(scope: !4149, file: !2, line: 95, column: 2)
!4152 = !DILocalVariable(name: "__vpp_verify", scope: !4153, file: !2, line: 103, type: !691)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !2, line: 103, column: 7)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !2, line: 103, column: 7)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 103, column: 7)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !2, line: 102, column: 25)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !2, line: 102, column: 2)
!4158 = distinct !DILexicalBlock(scope: !4136, file: !2, line: 102, column: 2)
!4159 = !DILocalVariable(name: "__ptr", scope: !4160, file: !2, line: 103, type: !259)
!4160 = distinct !DILexicalBlock(scope: !4154, file: !2, line: 103, column: 7)
!4161 = !DILocalVariable(name: "__vpp_verify", scope: !4162, file: !2, line: 104, type: !691)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !2, line: 104, column: 7)
!4163 = distinct !DILexicalBlock(scope: !4155, file: !2, line: 104, column: 7)
!4164 = !DILocalVariable(name: "__ptr", scope: !4165, file: !2, line: 104, type: !259)
!4165 = distinct !DILexicalBlock(scope: !4163, file: !2, line: 104, column: 7)
!4166 = !DILocalVariable(name: "__vpp_verify", scope: !4167, file: !2, line: 107, type: !691)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !2, line: 107, column: 8)
!4168 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 107, column: 8)
!4169 = !DILocalVariable(name: "__ptr", scope: !4170, file: !2, line: 107, type: !259)
!4170 = distinct !DILexicalBlock(scope: !4168, file: !2, line: 107, column: 8)
!4171 = !DILocalVariable(name: "__vpp_verify", scope: !4172, file: !2, line: 116, type: !691)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !2, line: 116, column: 49)
!4173 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 116, column: 49)
!4174 = !DILocalVariable(name: "__ptr", scope: !4175, file: !2, line: 116, type: !259)
!4175 = distinct !DILexicalBlock(scope: !4173, file: !2, line: 116, column: 49)
!4176 = !DILocation(line: 85, column: 47, scope: !4136)
!4177 = !DILocation(line: 85, column: 56, scope: !4136)
!4178 = !DILocation(line: 87, column: 2, scope: !4136)
!4179 = !DILocation(line: 87, column: 25, scope: !4136)
!4180 = !DILocation(line: 88, column: 2, scope: !4136)
!4181 = !DILocation(line: 88, column: 25, scope: !4136)
!4182 = !DILocation(line: 89, column: 2, scope: !4136)
!4183 = !DILocation(line: 89, column: 16, scope: !4136)
!4184 = !DILocation(line: 90, column: 2, scope: !4136)
!4185 = !DILocation(line: 90, column: 6, scope: !4136)
!4186 = !DILocation(line: 90, column: 9, scope: !4136)
!4187 = !DILocation(line: 92, column: 23, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4136, file: !2, line: 92, column: 6)
!4189 = !DILocation(line: 92, column: 7, scope: !4188)
!4190 = !DILocation(line: 92, column: 6, scope: !4136)
!4191 = !DILocation(line: 93, column: 3, scope: !4188)
!4192 = !DILocation(line: 95, column: 24, scope: !4136)
!4193 = !DILocation(line: 95, column: 2, scope: !4149)
!4194 = !DILocation(line: 95, column: 2, scope: !4148)
!4195 = !DILocation(line: 95, column: 2, scope: !4151)
!4196 = !DILocation(line: 95, column: 22, scope: !4136)
!4197 = !DILocation(line: 102, column: 2, scope: !4158)
!4198 = !DILocation(line: 102, column: 2, scope: !4157)
!4199 = !DILocation(line: 103, column: 7, scope: !4154)
!4200 = !DILocation(line: 103, column: 7, scope: !4153)
!4201 = !DILocation(line: 103, column: 7, scope: !4160)
!4202 = !DILocation(line: 103, column: 7, scope: !4155)
!4203 = !DILocation(line: 104, column: 7, scope: !4163)
!4204 = !DILocation(line: 104, column: 7, scope: !4162)
!4205 = !DILocation(line: 104, column: 7, scope: !4165)
!4206 = !DILocation(line: 104, column: 7, scope: !4155)
!4207 = !DILocation(line: 103, column: 39, scope: !4155)
!4208 = !DILocation(line: 103, column: 7, scope: !4156)
!4209 = !DILocation(line: 105, column: 4, scope: !4155)
!4210 = !DILocation(line: 107, column: 8, scope: !4168)
!4211 = !DILocation(line: 107, column: 8, scope: !4167)
!4212 = !DILocation(line: 107, column: 8, scope: !4170)
!4213 = !DILocation(line: 107, column: 8, scope: !4156)
!4214 = !DILocation(line: 107, column: 6, scope: !4156)
!4215 = !DILocation(line: 109, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 109, column: 7)
!4217 = !DILocation(line: 109, column: 7, scope: !4156)
!4218 = !DILocation(line: 110, column: 4, scope: !4216)
!4219 = !DILocation(line: 112, column: 28, scope: !4156)
!4220 = !DILocation(line: 112, column: 12, scope: !4156)
!4221 = !DILocation(line: 112, column: 10, scope: !4156)
!4222 = !DILocation(line: 113, column: 8, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 113, column: 7)
!4224 = !DILocation(line: 113, column: 7, scope: !4156)
!4225 = !DILocation(line: 114, column: 4, scope: !4223)
!4226 = !DILocation(line: 116, column: 15, scope: !4156)
!4227 = !DILocation(line: 116, column: 23, scope: !4156)
!4228 = !DILocation(line: 116, column: 31, scope: !4156)
!4229 = !DILocation(line: 116, column: 49, scope: !4173)
!4230 = !DILocation(line: 116, column: 49, scope: !4172)
!4231 = !DILocation(line: 116, column: 49, scope: !4175)
!4232 = !DILocation(line: 116, column: 49, scope: !4156)
!4233 = !DILocation(line: 116, column: 67, scope: !4156)
!4234 = !DILocation(line: 116, column: 47, scope: !4156)
!4235 = !DILocation(line: 116, column: 40, scope: !4156)
!4236 = !DILocation(line: 116, column: 74, scope: !4156)
!4237 = !DILocation(line: 116, column: 14, scope: !4156)
!4238 = !DILocation(line: 116, column: 12, scope: !4156)
!4239 = !DILocation(line: 118, column: 19, scope: !4156)
!4240 = !DILocation(line: 118, column: 3, scope: !4156)
!4241 = !DILocation(line: 120, column: 34, scope: !4156)
!4242 = !DILocation(line: 120, column: 38, scope: !4156)
!4243 = !DILocation(line: 120, column: 51, scope: !4156)
!4244 = !DILocation(line: 120, column: 9, scope: !4156)
!4245 = !DILocation(line: 120, column: 7, scope: !4156)
!4246 = !DILocation(line: 121, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4156, file: !2, line: 121, column: 7)
!4248 = !DILocation(line: 121, column: 11, scope: !4247)
!4249 = !DILocation(line: 121, column: 7, scope: !4156)
!4250 = !DILocation(line: 122, column: 4, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !2, line: 122, column: 4)
!4252 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 121, column: 16)
!4253 = !DILocation(line: 122, column: 4, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !2, line: 122, column: 4)
!4255 = !DILocation(line: 124, column: 3, scope: !4252)
!4256 = !DILocation(line: 125, column: 2, scope: !4156)
!4257 = distinct !{!4257, !4197, !4258, !3334, !3335}
!4258 = !DILocation(line: 125, column: 2, scope: !4158)
!4259 = !DILocation(line: 126, column: 2, scope: !4136)
!4260 = !DILocation(line: 127, column: 1, scope: !4136)
!4261 = distinct !DISubprogram(name: "freq_qos_request_active", scope: !26, file: !26, line: 294, type: !3428, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4262)
!4262 = !{!4263}
!4263 = !DILocalVariable(name: "req", arg: 1, scope: !4261, file: !26, line: 294, type: !2189)
!4264 = !DILocation(line: 294, column: 68, scope: !4261)
!4265 = !DILocation(line: 296, column: 25, scope: !4261)
!4266 = !DILocation(line: 296, column: 30, scope: !4261)
!4267 = !DILocation(line: 296, column: 10, scope: !4261)
!4268 = !DILocation(line: 296, column: 9, scope: !4261)
!4269 = !DILocation(line: 296, column: 2, scope: !4261)
!4270 = !DISubprogram(name: "freq_qos_update_request", scope: !26, file: !26, line: 307, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!81, !2189, !649}
!4273 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !3925, file: !3925, line: 70, type: !3926, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4274)
!4274 = !{!4275}
!4275 = !DILocalVariable(name: "ptr", arg: 1, scope: !4273, file: !3925, line: 70, type: !691)
!4276 = !DILocation(line: 70, column: 68, scope: !4273)
!4277 = !DILocation(line: 72, column: 9, scope: !4273)
!4278 = !DILocation(line: 72, column: 24, scope: !4273)
!4279 = !DILocation(line: 72, column: 27, scope: !4273)
!4280 = !DILocation(line: 72, column: 2, scope: !4273)
