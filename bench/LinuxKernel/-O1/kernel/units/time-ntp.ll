; ModuleID = 'kernel/time/ntp.c'
source_filename = "kernel/time/ntp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.timezone = type { i32, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.audit_ntp_data = type { [6 x %struct.audit_ntp_val] }
%struct.audit_ntp_val = type { i64, i64 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i64, i64, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i64, [1 x i64], i64, i64, i64, i64, i64, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tick_usec = hidden global i64 10000, align 8, !dbg !0
@time_adjust = internal global i64 0, align 8, !dbg !256
@time_status = internal global i32 64, align 4, !dbg !381
@time_maxerror = internal global i64 16000000, align 8, !dbg !383
@time_esterror = internal global i64 16000000, align 8, !dbg !385
@tick_length_base = internal global i64 0, align 8, !dbg !250
@tick_length = internal global i64 0, align 8, !dbg !248
@time_offset = internal global i64 0, align 8, !dbg !252
@ntp_next_leap_sec = internal global i64 9223372036854775807, align 8, !dbg !389
@time_state = internal global i32 0, align 4, !dbg !393
@.str = private unnamed_addr constant [45 x i8] c"\015Clock: inserting leap second 23:59:60 UTC\0A\00", align 1, !dbg !221
@.str.1 = private unnamed_addr constant [44 x i8] c"\015Clock: deleting leap second 23:59:59 UTC\0A\00", align 1, !dbg !227
@sync_hrtimer = internal global %struct.hrtimer zeroinitializer, align 8, !dbg !258
@system_freezable_power_efficient_wq = external dso_local global ptr, align 8
@sync_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @sync_work, i64 8), ptr getelementptr (i8, ptr @sync_work, i64 8) }, ptr @sync_hw_clock }, align 8, !dbg !395
@time_freq = internal global i64 0, align 8, !dbg !254
@time_constant = internal global i64 2, align 8, !dbg !438
@__setup_str_ntp_tick_adj_setup = internal constant [14 x i8] c"ntp_tick_adj=\00", section ".init.rodata", align 1, !dbg !440
@__setup_ntp_tick_adj_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ntp_tick_adj_setup, ptr @ntp_tick_adj_setup, i32 0 }, section ".init.setup", align 8, !dbg !232
@tick_nsec = hidden global i64 0, align 8, !dbg !246
@ntp_tick_adj = internal global i64 0, align 8, !dbg !387
@sync_hw_clock.offset_nsec = internal global i64 500000000, align 8, !dbg !418
@persistent_clock_is_local = external dso_local global i32, align 4
@sys_tz = external dso_local global %struct.timezone, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"rtc0\00", align 1, !dbg !431
@time_reftime = internal global i64 0, align 8, !dbg !436
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_ntp_tick_adj_setup], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ntp_clear() #0 align 16 !dbg !454 {
entry:
  store i64 0, ptr @time_adjust, align 8, !dbg !457
  %0 = load i32, ptr @time_status, align 4, !dbg !458
  %or = or i32 %0, 64, !dbg !458
  store i32 %or, ptr @time_status, align 4, !dbg !458
  store i64 16000000, ptr @time_maxerror, align 8, !dbg !459
  store i64 16000000, ptr @time_esterror, align 8, !dbg !460
  call void @ntp_update_frequency() #9, !dbg !461
  %1 = load i64, ptr @tick_length_base, align 8, !dbg !462
  store i64 %1, ptr @tick_length, align 8, !dbg !463
  store i64 0, ptr @time_offset, align 8, !dbg !464
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8, !dbg !465
  call void @pps_clear() #9, !dbg !466
  ret void, !dbg !467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ntp_update_frequency() #0 align 16 !dbg !468 {
entry:
  %second_length = alloca i64, align 8
  %new_base = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %second_length) #10, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %second_length, metadata !470, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_base) #10, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %new_base, metadata !471, metadata !DIExpression()), !dbg !475
  %0 = load i64, ptr @tick_usec, align 8, !dbg !476
  %mul = mul i64 %0, 1000, !dbg !477
  %mul1 = mul i64 %mul, 100, !dbg !478
  %shl = shl i64 %mul1, 32, !dbg !479
  store i64 %shl, ptr %second_length, align 8, !dbg !480
  %1 = load i64, ptr @ntp_tick_adj, align 8, !dbg !481
  %2 = load i64, ptr %second_length, align 8, !dbg !482
  %add = add i64 %2, %1, !dbg !482
  store i64 %add, ptr %second_length, align 8, !dbg !482
  %3 = load i64, ptr @time_freq, align 8, !dbg !483
  %4 = load i64, ptr %second_length, align 8, !dbg !484
  %add2 = add i64 %4, %3, !dbg !484
  store i64 %add2, ptr %second_length, align 8, !dbg !484
  %5 = load i64, ptr %second_length, align 8, !dbg !485
  %call = call i64 @div_u64(i64 noundef %5, i32 noundef 1000) #9, !dbg !486
  %shr = lshr i64 %call, 32, !dbg !487
  store i64 %shr, ptr @tick_nsec, align 8, !dbg !488
  %6 = load i64, ptr %second_length, align 8, !dbg !489
  %call3 = call i64 @div_u64(i64 noundef %6, i32 noundef 1000) #9, !dbg !490
  store i64 %call3, ptr %new_base, align 8, !dbg !491
  %7 = load i64, ptr %new_base, align 8, !dbg !492
  %8 = load i64, ptr @tick_length_base, align 8, !dbg !493
  %sub = sub i64 %7, %8, !dbg !494
  %9 = load i64, ptr @tick_length, align 8, !dbg !495
  %add4 = add i64 %9, %sub, !dbg !495
  store i64 %add4, ptr @tick_length, align 8, !dbg !495
  %10 = load i64, ptr %new_base, align 8, !dbg !496
  store i64 %10, ptr @tick_length_base, align 8, !dbg !497
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_base) #10, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr %second_length) #10, !dbg !498
  ret void, !dbg !498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_clear() #1 align 16 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ntp_tick_length() #0 align 16 !dbg !501 {
entry:
  %0 = load i64, ptr @tick_length, align 8, !dbg !504
  ret i64 %0, !dbg !505
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ntp_get_next_leap() #0 align 16 !dbg !506 {
entry:
  %retval = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !508, metadata !DIExpression()), !dbg !510
  %0 = load i32, ptr @time_state, align 4, !dbg !511
  %cmp = icmp eq i32 %0, 1, !dbg !513
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !514

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @time_status, align 4, !dbg !515
  %and = and i32 %1, 16, !dbg !516
  %tobool = icmp ne i32 %and, 0, !dbg !516
  br i1 %tobool, label %if.then, label %if.end, !dbg !517

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, ptr @ntp_next_leap_sec, align 8, !dbg !518
  %call = call i64 @ktime_set(i64 noundef %2, i64 noundef 0) #9, !dbg !519
  store i64 %call, ptr %retval, align 8, !dbg !520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !520

if.end:                                           ; preds = %land.lhs.true, %entry
  store i64 9223372036854775807, ptr %ret, align 8, !dbg !521
  %3 = load i64, ptr %ret, align 8, !dbg !522
  store i64 %3, ptr %retval, align 8, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !523

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !524
  %4 = load i64, ptr %retval, align 8, !dbg !524
  ret i64 %4, !dbg !524
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) #1 align 16 !dbg !525 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !531, metadata !DIExpression()), !dbg !533
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !532, metadata !DIExpression()), !dbg !534
  %0 = load i64, ptr %secs.addr, align 8, !dbg !535
  %cmp = icmp sge i64 %0, 9223372036, !dbg !535
  %lnot = xor i1 %cmp, true, !dbg !535
  %lnot1 = xor i1 %lnot, true, !dbg !535
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !535
  %conv = sext i32 %lnot.ext to i64, !dbg !535
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !535
  %tobool = icmp ne i64 %expval, 0, !dbg !535
  br i1 %tobool, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !538
  br label %return, !dbg !538

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %secs.addr, align 8, !dbg !539
  %mul = mul i64 %1, 1000000000, !dbg !540
  %2 = load i64, ptr %nsecs.addr, align 8, !dbg !541
  %add = add i64 %mul, %2, !dbg !542
  store i64 %add, ptr %retval, align 8, !dbg !543
  br label %return, !dbg !543

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !544
  ret i64 %3, !dbg !544
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @second_overflow(i64 noundef %secs) #0 align 16 !dbg !545 {
entry:
  %secs.addr = alloca i64, align 8
  %delta = alloca i64, align 8
  %leap = alloca i32, align 4
  %rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !549, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #10, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !550, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %leap) #10, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %leap, metadata !551, metadata !DIExpression()), !dbg !560
  store i32 0, ptr %leap, align 4, !dbg !560
  call void @llvm.lifetime.start.p0(i64 4, ptr %rem) #10, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !552, metadata !DIExpression()), !dbg !562
  %0 = load i32, ptr @time_state, align 4, !dbg !563
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb20
    i32 3, label %sw.bb35
    i32 4, label %sw.bb36
  ], !dbg !564

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr @time_status, align 4, !dbg !565
  %and = and i32 %1, 16, !dbg !568
  %tobool = icmp ne i32 %and, 0, !dbg !568
  br i1 %tobool, label %if.then, label %if.else, !dbg !569

if.then:                                          ; preds = %sw.bb
  store i32 1, ptr @time_state, align 4, !dbg !570
  %2 = load i64, ptr %secs.addr, align 8, !dbg !572
  %call = call i64 @div_s64_rem(i64 noundef %2, i32 noundef 86400, ptr noundef %rem) #9, !dbg !573
  %3 = load i64, ptr %secs.addr, align 8, !dbg !574
  %add = add i64 %3, 86400, !dbg !575
  %4 = load i32, ptr %rem, align 4, !dbg !576
  %conv = sext i32 %4 to i64, !dbg !576
  %sub = sub i64 %add, %conv, !dbg !577
  store i64 %sub, ptr @ntp_next_leap_sec, align 8, !dbg !578
  br label %if.end9, !dbg !579

if.else:                                          ; preds = %sw.bb
  %5 = load i32, ptr @time_status, align 4, !dbg !580
  %and1 = and i32 %5, 32, !dbg !582
  %tobool2 = icmp ne i32 %and1, 0, !dbg !582
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !583

if.then3:                                         ; preds = %if.else
  store i32 2, ptr @time_state, align 4, !dbg !584
  %6 = load i64, ptr %secs.addr, align 8, !dbg !586
  %add4 = add i64 %6, 1, !dbg !587
  %call5 = call i64 @div_s64_rem(i64 noundef %add4, i32 noundef 86400, ptr noundef %rem) #9, !dbg !588
  %7 = load i64, ptr %secs.addr, align 8, !dbg !589
  %add6 = add i64 %7, 86400, !dbg !590
  %8 = load i32, ptr %rem, align 4, !dbg !591
  %conv7 = sext i32 %8 to i64, !dbg !591
  %sub8 = sub i64 %add6, %conv7, !dbg !592
  store i64 %sub8, ptr @ntp_next_leap_sec, align 8, !dbg !593
  br label %if.end, !dbg !594

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %sw.epilog, !dbg !595

sw.bb10:                                          ; preds = %entry
  %9 = load i32, ptr @time_status, align 4, !dbg !596
  %and11 = and i32 %9, 16, !dbg !598
  %tobool12 = icmp ne i32 %and11, 0, !dbg !598
  br i1 %tobool12, label %if.else14, label %if.then13, !dbg !599

if.then13:                                        ; preds = %sw.bb10
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8, !dbg !600
  store i32 0, ptr @time_state, align 4, !dbg !602
  br label %if.end19, !dbg !603

if.else14:                                        ; preds = %sw.bb10
  %10 = load i64, ptr %secs.addr, align 8, !dbg !604
  %11 = load i64, ptr @ntp_next_leap_sec, align 8, !dbg !606
  %cmp = icmp eq i64 %10, %11, !dbg !607
  br i1 %cmp, label %if.then16, label %if.end18, !dbg !608

if.then16:                                        ; preds = %if.else14
  store i32 -1, ptr %leap, align 4, !dbg !609
  store i32 3, ptr @time_state, align 4, !dbg !611
  br label %do.body, !dbg !612

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !614

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !614

do.end:                                           ; preds = %do.cond
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !612
  store i32 %call17, ptr %tmp, align 4, !dbg !614
  %12 = load i32, ptr %tmp, align 4, !dbg !612
  br label %if.end18, !dbg !616

if.end18:                                         ; preds = %do.end, %if.else14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then13
  br label %sw.epilog, !dbg !617

sw.bb20:                                          ; preds = %entry
  %13 = load i32, ptr @time_status, align 4, !dbg !618
  %and21 = and i32 %13, 32, !dbg !620
  %tobool22 = icmp ne i32 %and21, 0, !dbg !620
  br i1 %tobool22, label %if.else24, label %if.then23, !dbg !621

if.then23:                                        ; preds = %sw.bb20
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8, !dbg !622
  store i32 0, ptr @time_state, align 4, !dbg !624
  br label %if.end34, !dbg !625

if.else24:                                        ; preds = %sw.bb20
  %14 = load i64, ptr %secs.addr, align 8, !dbg !626
  %15 = load i64, ptr @ntp_next_leap_sec, align 8, !dbg !628
  %cmp25 = icmp eq i64 %14, %15, !dbg !629
  br i1 %cmp25, label %if.then27, label %if.end33, !dbg !630

if.then27:                                        ; preds = %if.else24
  store i32 1, ptr %leap, align 4, !dbg !631
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8, !dbg !633
  store i32 4, ptr @time_state, align 4, !dbg !634
  br label %do.body28, !dbg !635

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !637

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !637

do.end30:                                         ; preds = %do.cond29
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #11, !dbg !635
  store i32 %call32, ptr %tmp31, align 4, !dbg !637
  %16 = load i32, ptr %tmp31, align 4, !dbg !635
  br label %if.end33, !dbg !639

if.end33:                                         ; preds = %do.end30, %if.else24
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then23
  br label %sw.epilog, !dbg !640

sw.bb35:                                          ; preds = %entry
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8, !dbg !641
  store i32 4, ptr @time_state, align 4, !dbg !642
  br label %sw.epilog, !dbg !643

sw.bb36:                                          ; preds = %entry
  %17 = load i32, ptr @time_status, align 4, !dbg !644
  %and37 = and i32 %17, 48, !dbg !646
  %tobool38 = icmp ne i32 %and37, 0, !dbg !646
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !647

if.then39:                                        ; preds = %sw.bb36
  store i32 0, ptr @time_state, align 4, !dbg !648
  br label %if.end40, !dbg !649

if.end40:                                         ; preds = %if.then39, %sw.bb36
  br label %sw.epilog, !dbg !650

sw.epilog:                                        ; preds = %entry, %if.end40, %sw.bb35, %if.end34, %if.end19, %if.end9
  %18 = load i64, ptr @time_maxerror, align 8, !dbg !651
  %add41 = add i64 %18, 500, !dbg !651
  store i64 %add41, ptr @time_maxerror, align 8, !dbg !651
  %19 = load i64, ptr @time_maxerror, align 8, !dbg !652
  %cmp42 = icmp sgt i64 %19, 16000000, !dbg !654
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !655

if.then44:                                        ; preds = %sw.epilog
  store i64 16000000, ptr @time_maxerror, align 8, !dbg !656
  %20 = load i32, ptr @time_status, align 4, !dbg !658
  %or = or i32 %20, 64, !dbg !658
  store i32 %or, ptr @time_status, align 4, !dbg !658
  br label %if.end45, !dbg !659

if.end45:                                         ; preds = %if.then44, %sw.epilog
  %21 = load i64, ptr @tick_length_base, align 8, !dbg !660
  store i64 %21, ptr @tick_length, align 8, !dbg !661
  %22 = load i64, ptr @time_offset, align 8, !dbg !662
  %call46 = call i64 @ntp_offset_chunk(i64 noundef %22) #9, !dbg !663
  store i64 %call46, ptr %delta, align 8, !dbg !664
  %23 = load i64, ptr %delta, align 8, !dbg !665
  %24 = load i64, ptr @time_offset, align 8, !dbg !666
  %sub47 = sub i64 %24, %23, !dbg !666
  store i64 %sub47, ptr @time_offset, align 8, !dbg !666
  %25 = load i64, ptr %delta, align 8, !dbg !667
  %26 = load i64, ptr @tick_length, align 8, !dbg !668
  %add48 = add i64 %26, %25, !dbg !668
  store i64 %add48, ptr @tick_length, align 8, !dbg !668
  call void @pps_dec_valid() #9, !dbg !669
  %27 = load i64, ptr @time_adjust, align 8, !dbg !670
  %tobool49 = icmp ne i64 %27, 0, !dbg !670
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !672

if.then50:                                        ; preds = %if.end45
  br label %out, !dbg !673

if.end51:                                         ; preds = %if.end45
  %28 = load i64, ptr @time_adjust, align 8, !dbg !674
  %cmp52 = icmp sgt i64 %28, 500, !dbg !676
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !677

if.then54:                                        ; preds = %if.end51
  %29 = load i64, ptr @time_adjust, align 8, !dbg !678
  %sub55 = sub i64 %29, 500, !dbg !678
  store i64 %sub55, ptr @time_adjust, align 8, !dbg !678
  %30 = load i64, ptr @tick_length, align 8, !dbg !680
  %add56 = add i64 %30, 2147483648000, !dbg !680
  store i64 %add56, ptr @tick_length, align 8, !dbg !680
  br label %out, !dbg !681

if.end57:                                         ; preds = %if.end51
  %31 = load i64, ptr @time_adjust, align 8, !dbg !682
  %cmp58 = icmp slt i64 %31, -500, !dbg !684
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !685

if.then60:                                        ; preds = %if.end57
  %32 = load i64, ptr @time_adjust, align 8, !dbg !686
  %add61 = add i64 %32, 500, !dbg !686
  store i64 %add61, ptr @time_adjust, align 8, !dbg !686
  %33 = load i64, ptr @tick_length, align 8, !dbg !688
  %sub62 = sub i64 %33, 2147483648000, !dbg !688
  store i64 %sub62, ptr @tick_length, align 8, !dbg !688
  br label %out, !dbg !689

if.end63:                                         ; preds = %if.end57
  %34 = load i64, ptr @time_adjust, align 8, !dbg !690
  %mul = mul i64 %34, 1000, !dbg !691
  %div = sdiv i64 %mul, 1000, !dbg !692
  %shl = shl i64 %div, 32, !dbg !693
  %35 = load i64, ptr @tick_length, align 8, !dbg !694
  %add64 = add i64 %35, %shl, !dbg !694
  store i64 %add64, ptr @tick_length, align 8, !dbg !694
  store i64 0, ptr @time_adjust, align 8, !dbg !695
  br label %out, !dbg !696

out:                                              ; preds = %if.end63, %if.then60, %if.then54, %if.then50
  call void @llvm.dbg.label(metadata !555), !dbg !697
  %36 = load i32, ptr %leap, align 4, !dbg !698
  call void @llvm.lifetime.end.p0(i64 4, ptr %rem) #10, !dbg !699
  call void @llvm.lifetime.end.p0(i64 4, ptr %leap) #10, !dbg !699
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #10, !dbg !699
  ret i32 %36, !dbg !700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #1 align 16 !dbg !701 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !707, metadata !DIExpression()), !dbg !710
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !708, metadata !DIExpression()), !dbg !711
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !709, metadata !DIExpression()), !dbg !712
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !713
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !714
  %conv = sext i32 %1 to i64, !dbg !714
  %rem = srem i64 %0, %conv, !dbg !715
  %conv1 = trunc i64 %rem to i32, !dbg !713
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !716
  store i32 %conv1, ptr %2, align 4, !dbg !717
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !718
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !719
  %conv2 = sext i32 %4 to i64, !dbg !719
  %div = sdiv i64 %3, %conv2, !dbg !720
  ret i64 %div, !dbg !721
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !722 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ntp_offset_chunk(i64 noundef %offset) #1 align 16 !dbg !726 {
entry:
  %offset.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__s = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !730, metadata !DIExpression()), !dbg !734
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #10, !dbg !735
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !731, metadata !DIExpression()), !dbg !735
  %0 = load i64, ptr %offset.addr, align 8, !dbg !735
  store i64 %0, ptr %__x, align 8, !dbg !735
  call void @llvm.lifetime.start.p0(i64 8, ptr %__s) #10, !dbg !735
  call void @llvm.dbg.declare(metadata ptr %__s, metadata !733, metadata !DIExpression()), !dbg !735
  %1 = load i64, ptr @time_constant, align 8, !dbg !735
  %add = add i64 2, %1, !dbg !735
  store i64 %add, ptr %__s, align 8, !dbg !735
  %2 = load i64, ptr %__x, align 8, !dbg !735
  %cmp = icmp slt i64 %2, 0, !dbg !735
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !735

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__x, align 8, !dbg !735
  %sub = sub i64 0, %3, !dbg !735
  %4 = load i64, ptr %__s, align 8, !dbg !735
  %shr = ashr i64 %sub, %4, !dbg !735
  %sub1 = sub i64 0, %shr, !dbg !735
  br label %cond.end, !dbg !735

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__x, align 8, !dbg !735
  %6 = load i64, ptr %__s, align 8, !dbg !735
  %shr2 = ashr i64 %5, %6, !dbg !735
  br label %cond.end, !dbg !735

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub1, %cond.true ], [ %shr2, %cond.false ], !dbg !735
  store i64 %cond, ptr %tmp, align 8, !dbg !735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__s) #10, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #10, !dbg !736
  %7 = load i64, ptr %tmp, align 8, !dbg !735
  ret i64 %7, !dbg !737
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_dec_valid() #1 align 16 !dbg !738 {
entry:
  ret void, !dbg !739
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @update_persistent_clock64(i64 %now64.coerce0, i64 %now64.coerce1) #0 align 16 !dbg !740 {
entry:
  %now64 = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %now64, i32 0, i32 0
  store i64 %now64.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %now64, i32 0, i32 1
  store i64 %now64.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %now64, metadata !744, metadata !DIExpression()), !dbg !745
  ret i32 -19, !dbg !746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ntp_notify_cmos_timer() #0 align 16 !dbg !747 {
entry:
  %call = call i32 @ntp_synced() #9, !dbg !748
  %tobool = icmp ne i32 %call, 0, !dbg !748
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !750

land.lhs.true:                                    ; preds = %entry
  %call1 = call zeroext i1 @hrtimer_is_queued(ptr noundef @sync_hrtimer) #9, !dbg !751
  br i1 %call1, label %if.end, label %if.then, !dbg !752

if.then:                                          ; preds = %land.lhs.true
  %0 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !753
  %call2 = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef @sync_work) #9, !dbg !754
  br label %if.end, !dbg !754

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ntp_synced() #1 align 16 !dbg !756 {
entry:
  %0 = load i32, ptr @time_status, align 4, !dbg !759
  %and = and i32 %0, 64, !dbg !760
  %tobool = icmp ne i32 %and, 0, !dbg !761
  %lnot = xor i1 %tobool, true, !dbg !761
  %lnot.ext = zext i1 %lnot to i32, !dbg !761
  ret i32 %lnot.ext, !dbg !762
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hrtimer_is_queued(ptr noundef %timer) #1 align 16 !dbg !763 {
entry:
  %timer.addr = alloca ptr, align 8
  %tmp = alloca i8, align 1
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !769, metadata !DIExpression()), !dbg !770
  br label %do.body, !dbg !771

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !773

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !771
  %state = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4, !dbg !771
  %1 = load volatile i8, ptr %state, align 8, !dbg !771
  store i8 %1, ptr %tmp, align 1, !dbg !773
  %2 = load i8, ptr %tmp, align 1, !dbg !771
  %conv = zext i8 %2 to i32, !dbg !775
  %and = and i32 %conv, 1, !dbg !776
  %tobool = icmp ne i32 %and, 0, !dbg !777
  %lnot = xor i1 %tobool, true, !dbg !777
  %lnot1 = xor i1 %lnot, true, !dbg !778
  ret i1 %lnot1, !dbg !779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #1 align 16 !dbg !780 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !786, metadata !DIExpression()), !dbg !788
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !787, metadata !DIExpression()), !dbg !789
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !790
  %1 = load ptr, ptr %work.addr, align 8, !dbg !791
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #9, !dbg !792
  ret i1 %call, !dbg !793
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__do_adjtimex(ptr noundef %txc, ptr noundef %ts, ptr noundef %time_tai, ptr noundef %ad) #0 align 16 !dbg !794 {
entry:
  %txc.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %time_tai.addr = alloca ptr, align 8
  %ad.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %save_adjust = alloca i64, align 8
  %__x = alloca i64, align 8
  %__s = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__x29 = alloca i64, align 8
  %__s32 = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  store ptr %txc, ptr %txc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %txc.addr, metadata !840, metadata !DIExpression()), !dbg !855
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !841, metadata !DIExpression()), !dbg !856
  store ptr %time_tai, ptr %time_tai.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time_tai.addr, metadata !842, metadata !DIExpression()), !dbg !857
  store ptr %ad, ptr %ad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ad.addr, metadata !843, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %result, metadata !844, metadata !DIExpression()), !dbg !860
  %0 = load ptr, ptr %txc.addr, align 8, !dbg !861
  %modes = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 0, !dbg !862
  %1 = load i32, ptr %modes, align 8, !dbg !862
  %and = and i32 %1, 32768, !dbg !863
  %tobool = icmp ne i32 %and, 0, !dbg !863
  br i1 %tobool, label %if.then, label %if.else, !dbg !864

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_adjust) #10, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %save_adjust, metadata !845, metadata !DIExpression()), !dbg !866
  %2 = load i64, ptr @time_adjust, align 8, !dbg !867
  store i64 %2, ptr %save_adjust, align 8, !dbg !866
  %3 = load ptr, ptr %txc.addr, align 8, !dbg !868
  %modes1 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 0, !dbg !870
  %4 = load i32, ptr %modes1, align 8, !dbg !870
  %and2 = and i32 %4, 8192, !dbg !871
  %tobool3 = icmp ne i32 %and2, 0, !dbg !871
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !872

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %txc.addr, align 8, !dbg !873
  %offset = getelementptr inbounds %struct.__kernel_timex, ptr %5, i32 0, i32 2, !dbg !875
  %6 = load i64, ptr %offset, align 8, !dbg !875
  store i64 %6, ptr @time_adjust, align 8, !dbg !876
  call void @ntp_update_frequency() #9, !dbg !877
  %7 = load ptr, ptr %ad.addr, align 8, !dbg !878
  %8 = load i64, ptr %save_adjust, align 8, !dbg !879
  call void @audit_ntp_set_old(ptr noundef %7, i32 noundef 5, i64 noundef %8) #9, !dbg !880
  %9 = load ptr, ptr %ad.addr, align 8, !dbg !881
  %10 = load i64, ptr @time_adjust, align 8, !dbg !882
  call void @audit_ntp_set_new(ptr noundef %9, i32 noundef 5, i64 noundef %10) #9, !dbg !883
  br label %if.end, !dbg !884

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i64, ptr %save_adjust, align 8, !dbg !885
  %12 = load ptr, ptr %txc.addr, align 8, !dbg !886
  %offset5 = getelementptr inbounds %struct.__kernel_timex, ptr %12, i32 0, i32 2, !dbg !887
  store i64 %11, ptr %offset5, align 8, !dbg !888
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_adjust) #10, !dbg !889
  br label %if.end24, !dbg !890

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %txc.addr, align 8, !dbg !891
  %modes6 = getelementptr inbounds %struct.__kernel_timex, ptr %13, i32 0, i32 0, !dbg !893
  %14 = load i32, ptr %modes6, align 8, !dbg !893
  %tobool7 = icmp ne i32 %14, 0, !dbg !891
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !894

if.then8:                                         ; preds = %if.else
  %15 = load ptr, ptr %ad.addr, align 8, !dbg !895
  %16 = load i64, ptr @time_offset, align 8, !dbg !897
  call void @audit_ntp_set_old(ptr noundef %15, i32 noundef 0, i64 noundef %16) #9, !dbg !898
  %17 = load ptr, ptr %ad.addr, align 8, !dbg !899
  %18 = load i64, ptr @time_freq, align 8, !dbg !900
  call void @audit_ntp_set_old(ptr noundef %17, i32 noundef 1, i64 noundef %18) #9, !dbg !901
  %19 = load ptr, ptr %ad.addr, align 8, !dbg !902
  %20 = load i32, ptr @time_status, align 4, !dbg !903
  %conv = sext i32 %20 to i64, !dbg !903
  call void @audit_ntp_set_old(ptr noundef %19, i32 noundef 2, i64 noundef %conv) #9, !dbg !904
  %21 = load ptr, ptr %ad.addr, align 8, !dbg !905
  %22 = load ptr, ptr %time_tai.addr, align 8, !dbg !906
  %23 = load i32, ptr %22, align 4, !dbg !907
  %conv9 = sext i32 %23 to i64, !dbg !907
  call void @audit_ntp_set_old(ptr noundef %21, i32 noundef 3, i64 noundef %conv9) #9, !dbg !908
  %24 = load ptr, ptr %ad.addr, align 8, !dbg !909
  %25 = load i64, ptr @tick_usec, align 8, !dbg !910
  call void @audit_ntp_set_old(ptr noundef %24, i32 noundef 4, i64 noundef %25) #9, !dbg !911
  %26 = load ptr, ptr %txc.addr, align 8, !dbg !912
  %27 = load ptr, ptr %time_tai.addr, align 8, !dbg !913
  call void @process_adjtimex_modes(ptr noundef %26, ptr noundef %27) #9, !dbg !914
  %28 = load ptr, ptr %ad.addr, align 8, !dbg !915
  %29 = load i64, ptr @time_offset, align 8, !dbg !916
  call void @audit_ntp_set_new(ptr noundef %28, i32 noundef 0, i64 noundef %29) #9, !dbg !917
  %30 = load ptr, ptr %ad.addr, align 8, !dbg !918
  %31 = load i64, ptr @time_freq, align 8, !dbg !919
  call void @audit_ntp_set_new(ptr noundef %30, i32 noundef 1, i64 noundef %31) #9, !dbg !920
  %32 = load ptr, ptr %ad.addr, align 8, !dbg !921
  %33 = load i32, ptr @time_status, align 4, !dbg !922
  %conv10 = sext i32 %33 to i64, !dbg !922
  call void @audit_ntp_set_new(ptr noundef %32, i32 noundef 2, i64 noundef %conv10) #9, !dbg !923
  %34 = load ptr, ptr %ad.addr, align 8, !dbg !924
  %35 = load ptr, ptr %time_tai.addr, align 8, !dbg !925
  %36 = load i32, ptr %35, align 4, !dbg !926
  %conv11 = sext i32 %36 to i64, !dbg !926
  call void @audit_ntp_set_new(ptr noundef %34, i32 noundef 3, i64 noundef %conv11) #9, !dbg !927
  %37 = load ptr, ptr %ad.addr, align 8, !dbg !928
  %38 = load i64, ptr @tick_usec, align 8, !dbg !929
  call void @audit_ntp_set_new(ptr noundef %37, i32 noundef 4, i64 noundef %38) #9, !dbg !930
  br label %if.end12, !dbg !931

if.end12:                                         ; preds = %if.then8, %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #10, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !848, metadata !DIExpression()), !dbg !932
  %39 = load i64, ptr @time_offset, align 8, !dbg !932
  %mul = mul i64 %39, 1000, !dbg !932
  store i64 %mul, ptr %__x, align 8, !dbg !932
  call void @llvm.lifetime.start.p0(i64 4, ptr %__s) #10, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %__s, metadata !851, metadata !DIExpression()), !dbg !932
  store i32 32, ptr %__s, align 4, !dbg !932
  %40 = load i64, ptr %__x, align 8, !dbg !932
  %cmp = icmp slt i64 %40, 0, !dbg !932
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !932

cond.true:                                        ; preds = %if.end12
  %41 = load i64, ptr %__x, align 8, !dbg !932
  %sub = sub i64 0, %41, !dbg !932
  %42 = load i32, ptr %__s, align 4, !dbg !932
  %sh_prom = zext i32 %42 to i64, !dbg !932
  %shr = ashr i64 %sub, %sh_prom, !dbg !932
  %sub14 = sub i64 0, %shr, !dbg !932
  br label %cond.end, !dbg !932

cond.false:                                       ; preds = %if.end12
  %43 = load i64, ptr %__x, align 8, !dbg !932
  %44 = load i32, ptr %__s, align 4, !dbg !932
  %sh_prom15 = zext i32 %44 to i64, !dbg !932
  %shr16 = ashr i64 %43, %sh_prom15, !dbg !932
  br label %cond.end, !dbg !932

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub14, %cond.true ], [ %shr16, %cond.false ], !dbg !932
  store i64 %cond, ptr %tmp, align 8, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %__s) #10, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #10, !dbg !933
  %45 = load i64, ptr %tmp, align 8, !dbg !932
  %46 = load ptr, ptr %txc.addr, align 8, !dbg !934
  %offset17 = getelementptr inbounds %struct.__kernel_timex, ptr %46, i32 0, i32 2, !dbg !935
  store i64 %45, ptr %offset17, align 8, !dbg !936
  %47 = load i32, ptr @time_status, align 4, !dbg !937
  %and18 = and i32 %47, 8192, !dbg !939
  %tobool19 = icmp ne i32 %and18, 0, !dbg !939
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !940

if.then20:                                        ; preds = %cond.end
  %48 = load ptr, ptr %txc.addr, align 8, !dbg !941
  %offset21 = getelementptr inbounds %struct.__kernel_timex, ptr %48, i32 0, i32 2, !dbg !942
  %49 = load i64, ptr %offset21, align 8, !dbg !942
  %call = call i64 @div_s64(i64 noundef %49, i32 noundef 1000) #9, !dbg !943
  %50 = load ptr, ptr %txc.addr, align 8, !dbg !944
  %offset22 = getelementptr inbounds %struct.__kernel_timex, ptr %50, i32 0, i32 2, !dbg !945
  store i64 %call, ptr %offset22, align 8, !dbg !946
  br label %if.end23, !dbg !944

if.end23:                                         ; preds = %if.then20, %cond.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end
  %51 = load i32, ptr @time_state, align 4, !dbg !947
  store i32 %51, ptr %result, align 4, !dbg !948
  %52 = load i32, ptr @time_status, align 4, !dbg !949
  %call25 = call i32 @is_error_status(i32 noundef %52) #9, !dbg !951
  %tobool26 = icmp ne i32 %call25, 0, !dbg !951
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !952

if.then27:                                        ; preds = %if.end24
  store i32 5, ptr %result, align 4, !dbg !953
  br label %if.end28, !dbg !954

if.end28:                                         ; preds = %if.then27, %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x29) #10, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %__x29, metadata !852, metadata !DIExpression()), !dbg !955
  %53 = load i64, ptr @time_freq, align 8, !dbg !955
  %shr30 = ashr i64 %53, 19, !dbg !955
  %mul31 = mul i64 %shr30, 34359739, !dbg !955
  store i64 %mul31, ptr %__x29, align 8, !dbg !955
  call void @llvm.lifetime.start.p0(i64 4, ptr %__s32) #10, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %__s32, metadata !854, metadata !DIExpression()), !dbg !955
  store i32 32, ptr %__s32, align 4, !dbg !955
  %54 = load i64, ptr %__x29, align 8, !dbg !955
  %cmp34 = icmp slt i64 %54, 0, !dbg !955
  br i1 %cmp34, label %cond.true36, label %cond.false41, !dbg !955

cond.true36:                                      ; preds = %if.end28
  %55 = load i64, ptr %__x29, align 8, !dbg !955
  %sub37 = sub i64 0, %55, !dbg !955
  %56 = load i32, ptr %__s32, align 4, !dbg !955
  %sh_prom38 = zext i32 %56 to i64, !dbg !955
  %shr39 = ashr i64 %sub37, %sh_prom38, !dbg !955
  %sub40 = sub i64 0, %shr39, !dbg !955
  br label %cond.end44, !dbg !955

cond.false41:                                     ; preds = %if.end28
  %57 = load i64, ptr %__x29, align 8, !dbg !955
  %58 = load i32, ptr %__s32, align 4, !dbg !955
  %sh_prom42 = zext i32 %58 to i64, !dbg !955
  %shr43 = ashr i64 %57, %sh_prom42, !dbg !955
  br label %cond.end44, !dbg !955

cond.end44:                                       ; preds = %cond.false41, %cond.true36
  %cond45 = phi i64 [ %sub40, %cond.true36 ], [ %shr43, %cond.false41 ], !dbg !955
  store i64 %cond45, ptr %tmp33, align 8, !dbg !955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__s32) #10, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x29) #10, !dbg !956
  %59 = load i64, ptr %tmp33, align 8, !dbg !955
  %60 = load ptr, ptr %txc.addr, align 8, !dbg !957
  %freq = getelementptr inbounds %struct.__kernel_timex, ptr %60, i32 0, i32 3, !dbg !958
  store i64 %59, ptr %freq, align 8, !dbg !959
  %61 = load i64, ptr @time_maxerror, align 8, !dbg !960
  %62 = load ptr, ptr %txc.addr, align 8, !dbg !961
  %maxerror = getelementptr inbounds %struct.__kernel_timex, ptr %62, i32 0, i32 4, !dbg !962
  store i64 %61, ptr %maxerror, align 8, !dbg !963
  %63 = load i64, ptr @time_esterror, align 8, !dbg !964
  %64 = load ptr, ptr %txc.addr, align 8, !dbg !965
  %esterror = getelementptr inbounds %struct.__kernel_timex, ptr %64, i32 0, i32 5, !dbg !966
  store i64 %63, ptr %esterror, align 8, !dbg !967
  %65 = load i32, ptr @time_status, align 4, !dbg !968
  %66 = load ptr, ptr %txc.addr, align 8, !dbg !969
  %status = getelementptr inbounds %struct.__kernel_timex, ptr %66, i32 0, i32 6, !dbg !970
  store i32 %65, ptr %status, align 8, !dbg !971
  %67 = load i64, ptr @time_constant, align 8, !dbg !972
  %68 = load ptr, ptr %txc.addr, align 8, !dbg !973
  %constant = getelementptr inbounds %struct.__kernel_timex, ptr %68, i32 0, i32 8, !dbg !974
  store i64 %67, ptr %constant, align 8, !dbg !975
  %69 = load ptr, ptr %txc.addr, align 8, !dbg !976
  %precision = getelementptr inbounds %struct.__kernel_timex, ptr %69, i32 0, i32 9, !dbg !977
  store i64 1, ptr %precision, align 8, !dbg !978
  %70 = load ptr, ptr %txc.addr, align 8, !dbg !979
  %tolerance = getelementptr inbounds %struct.__kernel_timex, ptr %70, i32 0, i32 10, !dbg !980
  store i64 32768000, ptr %tolerance, align 8, !dbg !981
  %71 = load i64, ptr @tick_usec, align 8, !dbg !982
  %72 = load ptr, ptr %txc.addr, align 8, !dbg !983
  %tick = getelementptr inbounds %struct.__kernel_timex, ptr %72, i32 0, i32 12, !dbg !984
  store i64 %71, ptr %tick, align 8, !dbg !985
  %73 = load ptr, ptr %time_tai.addr, align 8, !dbg !986
  %74 = load i32, ptr %73, align 4, !dbg !987
  %75 = load ptr, ptr %txc.addr, align 8, !dbg !988
  %tai = getelementptr inbounds %struct.__kernel_timex, ptr %75, i32 0, i32 22, !dbg !989
  store i32 %74, ptr %tai, align 8, !dbg !990
  %76 = load ptr, ptr %txc.addr, align 8, !dbg !991
  call void @pps_fill_timex(ptr noundef %76) #9, !dbg !992
  %77 = load ptr, ptr %ts.addr, align 8, !dbg !993
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %77, i32 0, i32 0, !dbg !994
  %78 = load i64, ptr %tv_sec, align 8, !dbg !994
  %79 = load ptr, ptr %txc.addr, align 8, !dbg !995
  %time = getelementptr inbounds %struct.__kernel_timex, ptr %79, i32 0, i32 11, !dbg !996
  %tv_sec46 = getelementptr inbounds %struct.__kernel_timex_timeval, ptr %time, i32 0, i32 0, !dbg !997
  store i64 %78, ptr %tv_sec46, align 8, !dbg !998
  %80 = load ptr, ptr %ts.addr, align 8, !dbg !999
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %80, i32 0, i32 1, !dbg !1000
  %81 = load i64, ptr %tv_nsec, align 8, !dbg !1000
  %82 = load ptr, ptr %txc.addr, align 8, !dbg !1001
  %time47 = getelementptr inbounds %struct.__kernel_timex, ptr %82, i32 0, i32 11, !dbg !1002
  %tv_usec = getelementptr inbounds %struct.__kernel_timex_timeval, ptr %time47, i32 0, i32 1, !dbg !1003
  store i64 %81, ptr %tv_usec, align 8, !dbg !1004
  %83 = load i32, ptr @time_status, align 4, !dbg !1005
  %and48 = and i32 %83, 8192, !dbg !1007
  %tobool49 = icmp ne i32 %and48, 0, !dbg !1007
  br i1 %tobool49, label %if.end54, label %if.then50, !dbg !1008

if.then50:                                        ; preds = %cond.end44
  %84 = load ptr, ptr %ts.addr, align 8, !dbg !1009
  %tv_nsec51 = getelementptr inbounds %struct.timespec64, ptr %84, i32 0, i32 1, !dbg !1010
  %85 = load i64, ptr %tv_nsec51, align 8, !dbg !1010
  %div = sdiv i64 %85, 1000, !dbg !1011
  %86 = load ptr, ptr %txc.addr, align 8, !dbg !1012
  %time52 = getelementptr inbounds %struct.__kernel_timex, ptr %86, i32 0, i32 11, !dbg !1013
  %tv_usec53 = getelementptr inbounds %struct.__kernel_timex_timeval, ptr %time52, i32 0, i32 1, !dbg !1014
  store i64 %div, ptr %tv_usec53, align 8, !dbg !1015
  br label %if.end54, !dbg !1012

if.end54:                                         ; preds = %if.then50, %cond.end44
  %87 = load ptr, ptr %ts.addr, align 8, !dbg !1016
  %tv_sec55 = getelementptr inbounds %struct.timespec64, ptr %87, i32 0, i32 0, !dbg !1016
  %88 = load i64, ptr %tv_sec55, align 8, !dbg !1016
  %89 = load i64, ptr @ntp_next_leap_sec, align 8, !dbg !1016
  %cmp56 = icmp sge i64 %88, %89, !dbg !1016
  %lnot = xor i1 %cmp56, true, !dbg !1016
  %lnot58 = xor i1 %lnot, true, !dbg !1016
  %lnot.ext = zext i1 %lnot58 to i32, !dbg !1016
  %conv59 = sext i32 %lnot.ext to i64, !dbg !1016
  %expval = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !1016
  %tobool60 = icmp ne i64 %expval, 0, !dbg !1016
  br i1 %tobool60, label %if.then61, label %if.end91, !dbg !1018

if.then61:                                        ; preds = %if.end54
  %90 = load i32, ptr @time_state, align 4, !dbg !1019
  %cmp62 = icmp eq i32 %90, 1, !dbg !1022
  br i1 %cmp62, label %land.lhs.true, label %if.end70, !dbg !1023

land.lhs.true:                                    ; preds = %if.then61
  %91 = load i32, ptr @time_status, align 4, !dbg !1024
  %and64 = and i32 %91, 16, !dbg !1025
  %tobool65 = icmp ne i32 %and64, 0, !dbg !1025
  br i1 %tobool65, label %if.then66, label %if.end70, !dbg !1026

if.then66:                                        ; preds = %land.lhs.true
  store i32 3, ptr %result, align 4, !dbg !1027
  %92 = load ptr, ptr %txc.addr, align 8, !dbg !1029
  %tai67 = getelementptr inbounds %struct.__kernel_timex, ptr %92, i32 0, i32 22, !dbg !1030
  %93 = load i32, ptr %tai67, align 8, !dbg !1031
  %inc = add i32 %93, 1, !dbg !1031
  store i32 %inc, ptr %tai67, align 8, !dbg !1031
  %94 = load ptr, ptr %txc.addr, align 8, !dbg !1032
  %time68 = getelementptr inbounds %struct.__kernel_timex, ptr %94, i32 0, i32 11, !dbg !1033
  %tv_sec69 = getelementptr inbounds %struct.__kernel_timex_timeval, ptr %time68, i32 0, i32 0, !dbg !1034
  %95 = load i64, ptr %tv_sec69, align 8, !dbg !1035
  %dec = add i64 %95, -1, !dbg !1035
  store i64 %dec, ptr %tv_sec69, align 8, !dbg !1035
  br label %if.end70, !dbg !1036

if.end70:                                         ; preds = %if.then66, %land.lhs.true, %if.then61
  %96 = load i32, ptr @time_state, align 4, !dbg !1037
  %cmp71 = icmp eq i32 %96, 2, !dbg !1039
  br i1 %cmp71, label %land.lhs.true73, label %if.end82, !dbg !1040

land.lhs.true73:                                  ; preds = %if.end70
  %97 = load i32, ptr @time_status, align 4, !dbg !1041
  %and74 = and i32 %97, 32, !dbg !1042
  %tobool75 = icmp ne i32 %and74, 0, !dbg !1042
  br i1 %tobool75, label %if.then76, label %if.end82, !dbg !1043

if.then76:                                        ; preds = %land.lhs.true73
  store i32 4, ptr %result, align 4, !dbg !1044
  %98 = load ptr, ptr %txc.addr, align 8, !dbg !1046
  %tai77 = getelementptr inbounds %struct.__kernel_timex, ptr %98, i32 0, i32 22, !dbg !1047
  %99 = load i32, ptr %tai77, align 8, !dbg !1048
  %dec78 = add i32 %99, -1, !dbg !1048
  store i32 %dec78, ptr %tai77, align 8, !dbg !1048
  %100 = load ptr, ptr %txc.addr, align 8, !dbg !1049
  %time79 = getelementptr inbounds %struct.__kernel_timex, ptr %100, i32 0, i32 11, !dbg !1050
  %tv_sec80 = getelementptr inbounds %struct.__kernel_timex_timeval, ptr %time79, i32 0, i32 0, !dbg !1051
  %101 = load i64, ptr %tv_sec80, align 8, !dbg !1052
  %inc81 = add i64 %101, 1, !dbg !1052
  store i64 %inc81, ptr %tv_sec80, align 8, !dbg !1052
  br label %if.end82, !dbg !1053

if.end82:                                         ; preds = %if.then76, %land.lhs.true73, %if.end70
  %102 = load i32, ptr @time_state, align 4, !dbg !1054
  %cmp83 = icmp eq i32 %102, 3, !dbg !1056
  br i1 %cmp83, label %land.lhs.true85, label %if.end90, !dbg !1057

land.lhs.true85:                                  ; preds = %if.end82
  %103 = load ptr, ptr %ts.addr, align 8, !dbg !1058
  %tv_sec86 = getelementptr inbounds %struct.timespec64, ptr %103, i32 0, i32 0, !dbg !1059
  %104 = load i64, ptr %tv_sec86, align 8, !dbg !1059
  %105 = load i64, ptr @ntp_next_leap_sec, align 8, !dbg !1060
  %cmp87 = icmp eq i64 %104, %105, !dbg !1061
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1062

if.then89:                                        ; preds = %land.lhs.true85
  store i32 4, ptr %result, align 4, !dbg !1063
  br label %if.end90, !dbg !1065

if.end90:                                         ; preds = %if.then89, %land.lhs.true85, %if.end82
  br label %if.end91, !dbg !1066

if.end91:                                         ; preds = %if.end90, %if.end54
  %106 = load i32, ptr %result, align 4, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !1068
  ret i32 %106, !dbg !1069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_ntp_set_old(ptr noundef %ad, i32 noundef %type, i64 noundef %val) #1 align 16 !dbg !1070 {
entry:
  %ad.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store ptr %ad, ptr %ad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ad.addr, metadata !1074, metadata !DIExpression()), !dbg !1077
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1075, metadata !DIExpression()), !dbg !1078
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1076, metadata !DIExpression()), !dbg !1079
  %0 = load i64, ptr %val.addr, align 8, !dbg !1080
  %1 = load ptr, ptr %ad.addr, align 8, !dbg !1081
  %vals = getelementptr inbounds %struct.audit_ntp_data, ptr %1, i32 0, i32 0, !dbg !1082
  %2 = load i32, ptr %type.addr, align 4, !dbg !1083
  %idxprom = zext i32 %2 to i64, !dbg !1081
  %arrayidx = getelementptr [6 x %struct.audit_ntp_val], ptr %vals, i64 0, i64 %idxprom, !dbg !1081
  %oldval = getelementptr inbounds %struct.audit_ntp_val, ptr %arrayidx, i32 0, i32 0, !dbg !1084
  store i64 %0, ptr %oldval, align 8, !dbg !1085
  ret void, !dbg !1086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_ntp_set_new(ptr noundef %ad, i32 noundef %type, i64 noundef %val) #1 align 16 !dbg !1087 {
entry:
  %ad.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store ptr %ad, ptr %ad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ad.addr, metadata !1089, metadata !DIExpression()), !dbg !1092
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1090, metadata !DIExpression()), !dbg !1093
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1091, metadata !DIExpression()), !dbg !1094
  %0 = load i64, ptr %val.addr, align 8, !dbg !1095
  %1 = load ptr, ptr %ad.addr, align 8, !dbg !1096
  %vals = getelementptr inbounds %struct.audit_ntp_data, ptr %1, i32 0, i32 0, !dbg !1097
  %2 = load i32, ptr %type.addr, align 4, !dbg !1098
  %idxprom = zext i32 %2 to i64, !dbg !1096
  %arrayidx = getelementptr [6 x %struct.audit_ntp_val], ptr %vals, i64 0, i64 %idxprom, !dbg !1096
  %newval = getelementptr inbounds %struct.audit_ntp_val, ptr %arrayidx, i32 0, i32 1, !dbg !1099
  store i64 %0, ptr %newval, align 8, !dbg !1100
  ret void, !dbg !1101
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @process_adjtimex_modes(ptr noundef %txc, ptr noundef %time_tai) #1 align 16 !dbg !1102 {
entry:
  %txc.addr = alloca ptr, align 8
  %time_tai.addr = alloca ptr, align 8
  %__UNIQUE_ID___x307 = alloca i64, align 8
  %__UNIQUE_ID___y308 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x309 = alloca i64, align 8
  %__UNIQUE_ID___y310 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  %__UNIQUE_ID___val311 = alloca i64, align 8
  %__UNIQUE_ID___lo312 = alloca i32, align 4
  %__UNIQUE_ID___hi313 = alloca i64, align 8
  %tmp28 = alloca i64, align 8
  %tmp46 = alloca i64, align 8
  %__UNIQUE_ID___val314 = alloca i64, align 8
  %__UNIQUE_ID___lo315 = alloca i32, align 4
  %__UNIQUE_ID___hi316 = alloca i64, align 8
  %tmp47 = alloca i64, align 8
  %tmp67 = alloca i64, align 8
  %__UNIQUE_ID___val317 = alloca i64, align 8
  %__UNIQUE_ID___lo318 = alloca i32, align 4
  %__UNIQUE_ID___hi319 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  %tmp89 = alloca i64, align 8
  %__UNIQUE_ID___val320 = alloca i64, align 8
  %__UNIQUE_ID___lo321 = alloca i32, align 4
  %__UNIQUE_ID___hi322 = alloca i32, align 4
  %tmp90 = alloca i64, align 8
  store ptr %txc, ptr %txc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %txc.addr, metadata !1108, metadata !DIExpression()), !dbg !1143
  store ptr %time_tai, ptr %time_tai.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time_tai.addr, metadata !1109, metadata !DIExpression()), !dbg !1144
  %0 = load ptr, ptr %txc.addr, align 8, !dbg !1145
  %modes = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 0, !dbg !1147
  %1 = load i32, ptr %modes, align 8, !dbg !1147
  %and = and i32 %1, 16, !dbg !1148
  %tobool = icmp ne i32 %and, 0, !dbg !1148
  br i1 %tobool, label %if.then, label %if.end, !dbg !1149

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %txc.addr, align 8, !dbg !1150
  call void @process_adj_status(ptr noundef %2) #9, !dbg !1151
  br label %if.end, !dbg !1151

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %txc.addr, align 8, !dbg !1152
  %modes1 = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 0, !dbg !1154
  %4 = load i32, ptr %modes1, align 8, !dbg !1154
  %and2 = and i32 %4, 8192, !dbg !1155
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1155
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1156

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr @time_status, align 4, !dbg !1157
  %or = or i32 %5, 8192, !dbg !1157
  store i32 %or, ptr @time_status, align 4, !dbg !1157
  br label %if.end5, !dbg !1158

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %txc.addr, align 8, !dbg !1159
  %modes6 = getelementptr inbounds %struct.__kernel_timex, ptr %6, i32 0, i32 0, !dbg !1161
  %7 = load i32, ptr %modes6, align 8, !dbg !1161
  %and7 = and i32 %7, 4096, !dbg !1162
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1162
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1163

if.then9:                                         ; preds = %if.end5
  %8 = load i32, ptr @time_status, align 4, !dbg !1164
  %and10 = and i32 %8, -8193, !dbg !1164
  store i32 %and10, ptr @time_status, align 4, !dbg !1164
  br label %if.end11, !dbg !1165

if.end11:                                         ; preds = %if.then9, %if.end5
  %9 = load ptr, ptr %txc.addr, align 8, !dbg !1166
  %modes12 = getelementptr inbounds %struct.__kernel_timex, ptr %9, i32 0, i32 0, !dbg !1167
  %10 = load i32, ptr %modes12, align 8, !dbg !1167
  %and13 = and i32 %10, 2, !dbg !1168
  %tobool14 = icmp ne i32 %and13, 0, !dbg !1168
  br i1 %tobool14, label %if.then15, label %if.end22, !dbg !1169

if.then15:                                        ; preds = %if.end11
  %11 = load ptr, ptr %txc.addr, align 8, !dbg !1170
  %freq = getelementptr inbounds %struct.__kernel_timex, ptr %11, i32 0, i32 3, !dbg !1171
  %12 = load i64, ptr %freq, align 8, !dbg !1171
  %mul = mul i64 %12, 65536000, !dbg !1172
  store i64 %mul, ptr @time_freq, align 8, !dbg !1173
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x307) #10, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x307, metadata !1110, metadata !DIExpression()), !dbg !1174
  %13 = load i64, ptr @time_freq, align 8, !dbg !1174
  store i64 %13, ptr %__UNIQUE_ID___x307, align 8, !dbg !1174
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y308) #10, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y308, metadata !1114, metadata !DIExpression()), !dbg !1174
  store i64 2147483648000000, ptr %__UNIQUE_ID___y308, align 8, !dbg !1174
  %14 = load i64, ptr %__UNIQUE_ID___x307, align 8, !dbg !1174
  %15 = load i64, ptr %__UNIQUE_ID___y308, align 8, !dbg !1174
  %cmp = icmp slt i64 %14, %15, !dbg !1174
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1174

cond.true:                                        ; preds = %if.then15
  %16 = load i64, ptr %__UNIQUE_ID___x307, align 8, !dbg !1174
  br label %cond.end, !dbg !1174

cond.false:                                       ; preds = %if.then15
  %17 = load i64, ptr %__UNIQUE_ID___y308, align 8, !dbg !1174
  br label %cond.end, !dbg !1174

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !1174
  store i64 %cond, ptr %tmp, align 8, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y308) #10, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x307) #10, !dbg !1175
  %18 = load i64, ptr %tmp, align 8, !dbg !1174
  store i64 %18, ptr @time_freq, align 8, !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x309) #10, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x309, metadata !1115, metadata !DIExpression()), !dbg !1177
  %19 = load i64, ptr @time_freq, align 8, !dbg !1177
  store i64 %19, ptr %__UNIQUE_ID___x309, align 8, !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y310) #10, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y310, metadata !1117, metadata !DIExpression()), !dbg !1177
  store i64 -2147483648000000, ptr %__UNIQUE_ID___y310, align 8, !dbg !1177
  %20 = load i64, ptr %__UNIQUE_ID___x309, align 8, !dbg !1177
  %21 = load i64, ptr %__UNIQUE_ID___y310, align 8, !dbg !1177
  %cmp17 = icmp sgt i64 %20, %21, !dbg !1177
  br i1 %cmp17, label %cond.true18, label %cond.false19, !dbg !1177

cond.true18:                                      ; preds = %cond.end
  %22 = load i64, ptr %__UNIQUE_ID___x309, align 8, !dbg !1177
  br label %cond.end20, !dbg !1177

cond.false19:                                     ; preds = %cond.end
  %23 = load i64, ptr %__UNIQUE_ID___y310, align 8, !dbg !1177
  br label %cond.end20, !dbg !1177

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ %22, %cond.true18 ], [ %23, %cond.false19 ], !dbg !1177
  store i64 %cond21, ptr %tmp16, align 8, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y310) #10, !dbg !1178
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x309) #10, !dbg !1178
  %24 = load i64, ptr %tmp16, align 8, !dbg !1177
  store i64 %24, ptr @time_freq, align 8, !dbg !1179
  %25 = load i64, ptr @time_freq, align 8, !dbg !1180
  call void @pps_set_freq(i64 noundef %25) #9, !dbg !1181
  br label %if.end22, !dbg !1182

if.end22:                                         ; preds = %cond.end20, %if.end11
  %26 = load ptr, ptr %txc.addr, align 8, !dbg !1183
  %modes23 = getelementptr inbounds %struct.__kernel_timex, ptr %26, i32 0, i32 0, !dbg !1184
  %27 = load i32, ptr %modes23, align 8, !dbg !1184
  %and24 = and i32 %27, 4, !dbg !1185
  %tobool25 = icmp ne i32 %and24, 0, !dbg !1185
  br i1 %tobool25, label %if.then26, label %if.end41, !dbg !1186

if.then26:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val311) #10, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val311, metadata !1118, metadata !DIExpression()), !dbg !1187
  %28 = load ptr, ptr %txc.addr, align 8, !dbg !1187
  %maxerror = getelementptr inbounds %struct.__kernel_timex, ptr %28, i32 0, i32 4, !dbg !1187
  %29 = load i64, ptr %maxerror, align 8, !dbg !1187
  store i64 %29, ptr %__UNIQUE_ID___val311, align 8, !dbg !1187
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo312) #10, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo312, metadata !1123, metadata !DIExpression()), !dbg !1187
  store i32 0, ptr %__UNIQUE_ID___lo312, align 4, !dbg !1187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi313) #10, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi313, metadata !1124, metadata !DIExpression()), !dbg !1187
  store i64 16000000, ptr %__UNIQUE_ID___hi313, align 8, !dbg !1187
  %30 = load i64, ptr %__UNIQUE_ID___val311, align 8, !dbg !1187
  %31 = load i64, ptr %__UNIQUE_ID___hi313, align 8, !dbg !1187
  %cmp29 = icmp sge i64 %30, %31, !dbg !1187
  br i1 %cmp29, label %cond.true30, label %cond.false31, !dbg !1187

cond.true30:                                      ; preds = %if.then26
  %32 = load i64, ptr %__UNIQUE_ID___hi313, align 8, !dbg !1187
  br label %cond.end39, !dbg !1187

cond.false31:                                     ; preds = %if.then26
  %33 = load i64, ptr %__UNIQUE_ID___val311, align 8, !dbg !1187
  %34 = load i32, ptr %__UNIQUE_ID___lo312, align 4, !dbg !1187
  %conv = sext i32 %34 to i64, !dbg !1187
  %cmp32 = icmp sle i64 %33, %conv, !dbg !1187
  br i1 %cmp32, label %cond.true34, label %cond.false36, !dbg !1187

cond.true34:                                      ; preds = %cond.false31
  %35 = load i32, ptr %__UNIQUE_ID___lo312, align 4, !dbg !1187
  %conv35 = sext i32 %35 to i64, !dbg !1187
  br label %cond.end37, !dbg !1187

cond.false36:                                     ; preds = %cond.false31
  %36 = load i64, ptr %__UNIQUE_ID___val311, align 8, !dbg !1187
  br label %cond.end37, !dbg !1187

cond.end37:                                       ; preds = %cond.false36, %cond.true34
  %cond38 = phi i64 [ %conv35, %cond.true34 ], [ %36, %cond.false36 ], !dbg !1187
  br label %cond.end39, !dbg !1187

cond.end39:                                       ; preds = %cond.end37, %cond.true30
  %cond40 = phi i64 [ %32, %cond.true30 ], [ %cond38, %cond.end37 ], !dbg !1187
  store i64 %cond40, ptr %tmp28, align 8, !dbg !1187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi313) #10, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo312) #10, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val311) #10, !dbg !1188
  %37 = load i64, ptr %tmp28, align 8, !dbg !1187
  store i64 %37, ptr %tmp27, align 8, !dbg !1189
  %38 = load i64, ptr %tmp27, align 8, !dbg !1188
  store i64 %38, ptr @time_maxerror, align 8, !dbg !1190
  br label %if.end41, !dbg !1191

if.end41:                                         ; preds = %cond.end39, %if.end22
  %39 = load ptr, ptr %txc.addr, align 8, !dbg !1192
  %modes42 = getelementptr inbounds %struct.__kernel_timex, ptr %39, i32 0, i32 0, !dbg !1193
  %40 = load i32, ptr %modes42, align 8, !dbg !1193
  %and43 = and i32 %40, 8, !dbg !1194
  %tobool44 = icmp ne i32 %and43, 0, !dbg !1194
  br i1 %tobool44, label %if.then45, label %if.end62, !dbg !1195

if.then45:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val314) #10, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val314, metadata !1125, metadata !DIExpression()), !dbg !1196
  %41 = load ptr, ptr %txc.addr, align 8, !dbg !1196
  %esterror = getelementptr inbounds %struct.__kernel_timex, ptr %41, i32 0, i32 5, !dbg !1196
  %42 = load i64, ptr %esterror, align 8, !dbg !1196
  store i64 %42, ptr %__UNIQUE_ID___val314, align 8, !dbg !1196
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo315) #10, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo315, metadata !1129, metadata !DIExpression()), !dbg !1196
  store i32 0, ptr %__UNIQUE_ID___lo315, align 4, !dbg !1196
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi316) #10, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi316, metadata !1130, metadata !DIExpression()), !dbg !1196
  store i64 16000000, ptr %__UNIQUE_ID___hi316, align 8, !dbg !1196
  %43 = load i64, ptr %__UNIQUE_ID___val314, align 8, !dbg !1196
  %44 = load i64, ptr %__UNIQUE_ID___hi316, align 8, !dbg !1196
  %cmp48 = icmp sge i64 %43, %44, !dbg !1196
  br i1 %cmp48, label %cond.true50, label %cond.false51, !dbg !1196

cond.true50:                                      ; preds = %if.then45
  %45 = load i64, ptr %__UNIQUE_ID___hi316, align 8, !dbg !1196
  br label %cond.end60, !dbg !1196

cond.false51:                                     ; preds = %if.then45
  %46 = load i64, ptr %__UNIQUE_ID___val314, align 8, !dbg !1196
  %47 = load i32, ptr %__UNIQUE_ID___lo315, align 4, !dbg !1196
  %conv52 = sext i32 %47 to i64, !dbg !1196
  %cmp53 = icmp sle i64 %46, %conv52, !dbg !1196
  br i1 %cmp53, label %cond.true55, label %cond.false57, !dbg !1196

cond.true55:                                      ; preds = %cond.false51
  %48 = load i32, ptr %__UNIQUE_ID___lo315, align 4, !dbg !1196
  %conv56 = sext i32 %48 to i64, !dbg !1196
  br label %cond.end58, !dbg !1196

cond.false57:                                     ; preds = %cond.false51
  %49 = load i64, ptr %__UNIQUE_ID___val314, align 8, !dbg !1196
  br label %cond.end58, !dbg !1196

cond.end58:                                       ; preds = %cond.false57, %cond.true55
  %cond59 = phi i64 [ %conv56, %cond.true55 ], [ %49, %cond.false57 ], !dbg !1196
  br label %cond.end60, !dbg !1196

cond.end60:                                       ; preds = %cond.end58, %cond.true50
  %cond61 = phi i64 [ %45, %cond.true50 ], [ %cond59, %cond.end58 ], !dbg !1196
  store i64 %cond61, ptr %tmp47, align 8, !dbg !1196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi316) #10, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo315) #10, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val314) #10, !dbg !1197
  %50 = load i64, ptr %tmp47, align 8, !dbg !1196
  store i64 %50, ptr %tmp46, align 8, !dbg !1198
  %51 = load i64, ptr %tmp46, align 8, !dbg !1197
  store i64 %51, ptr @time_esterror, align 8, !dbg !1199
  br label %if.end62, !dbg !1200

if.end62:                                         ; preds = %cond.end60, %if.end41
  %52 = load ptr, ptr %txc.addr, align 8, !dbg !1201
  %modes63 = getelementptr inbounds %struct.__kernel_timex, ptr %52, i32 0, i32 0, !dbg !1202
  %53 = load i32, ptr %modes63, align 8, !dbg !1202
  %and64 = and i32 %53, 32, !dbg !1203
  %tobool65 = icmp ne i32 %and64, 0, !dbg !1203
  br i1 %tobool65, label %if.then66, label %if.end107, !dbg !1204

if.then66:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val317) #10, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val317, metadata !1131, metadata !DIExpression()), !dbg !1205
  %54 = load ptr, ptr %txc.addr, align 8, !dbg !1205
  %constant = getelementptr inbounds %struct.__kernel_timex, ptr %54, i32 0, i32 8, !dbg !1205
  %55 = load i64, ptr %constant, align 8, !dbg !1205
  store i64 %55, ptr %__UNIQUE_ID___val317, align 8, !dbg !1205
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo318) #10, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo318, metadata !1136, metadata !DIExpression()), !dbg !1205
  store i32 0, ptr %__UNIQUE_ID___lo318, align 4, !dbg !1205
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi319) #10, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi319, metadata !1137, metadata !DIExpression()), !dbg !1205
  store i32 10, ptr %__UNIQUE_ID___hi319, align 4, !dbg !1205
  %56 = load i64, ptr %__UNIQUE_ID___val317, align 8, !dbg !1205
  %57 = load i32, ptr %__UNIQUE_ID___hi319, align 4, !dbg !1205
  %conv69 = sext i32 %57 to i64, !dbg !1205
  %cmp70 = icmp sge i64 %56, %conv69, !dbg !1205
  br i1 %cmp70, label %cond.true72, label %cond.false74, !dbg !1205

cond.true72:                                      ; preds = %if.then66
  %58 = load i32, ptr %__UNIQUE_ID___hi319, align 4, !dbg !1205
  %conv73 = sext i32 %58 to i64, !dbg !1205
  br label %cond.end83, !dbg !1205

cond.false74:                                     ; preds = %if.then66
  %59 = load i64, ptr %__UNIQUE_ID___val317, align 8, !dbg !1205
  %60 = load i32, ptr %__UNIQUE_ID___lo318, align 4, !dbg !1205
  %conv75 = sext i32 %60 to i64, !dbg !1205
  %cmp76 = icmp sle i64 %59, %conv75, !dbg !1205
  br i1 %cmp76, label %cond.true78, label %cond.false80, !dbg !1205

cond.true78:                                      ; preds = %cond.false74
  %61 = load i32, ptr %__UNIQUE_ID___lo318, align 4, !dbg !1205
  %conv79 = sext i32 %61 to i64, !dbg !1205
  br label %cond.end81, !dbg !1205

cond.false80:                                     ; preds = %cond.false74
  %62 = load i64, ptr %__UNIQUE_ID___val317, align 8, !dbg !1205
  br label %cond.end81, !dbg !1205

cond.end81:                                       ; preds = %cond.false80, %cond.true78
  %cond82 = phi i64 [ %conv79, %cond.true78 ], [ %62, %cond.false80 ], !dbg !1205
  br label %cond.end83, !dbg !1205

cond.end83:                                       ; preds = %cond.end81, %cond.true72
  %cond84 = phi i64 [ %conv73, %cond.true72 ], [ %cond82, %cond.end81 ], !dbg !1205
  store i64 %cond84, ptr %tmp68, align 8, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi319) #10, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo318) #10, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val317) #10, !dbg !1206
  %63 = load i64, ptr %tmp68, align 8, !dbg !1205
  store i64 %63, ptr %tmp67, align 8, !dbg !1207
  %64 = load i64, ptr %tmp67, align 8, !dbg !1206
  store i64 %64, ptr @time_constant, align 8, !dbg !1208
  %65 = load i32, ptr @time_status, align 4, !dbg !1209
  %and85 = and i32 %65, 8192, !dbg !1211
  %tobool86 = icmp ne i32 %and85, 0, !dbg !1211
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !1212

if.then87:                                        ; preds = %cond.end83
  %66 = load i64, ptr @time_constant, align 8, !dbg !1213
  %add = add i64 %66, 4, !dbg !1213
  store i64 %add, ptr @time_constant, align 8, !dbg !1213
  br label %if.end88, !dbg !1214

if.end88:                                         ; preds = %if.then87, %cond.end83
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val320) #10, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val320, metadata !1138, metadata !DIExpression()), !dbg !1215
  %67 = load i64, ptr @time_constant, align 8, !dbg !1215
  store i64 %67, ptr %__UNIQUE_ID___val320, align 8, !dbg !1215
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo321) #10, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo321, metadata !1141, metadata !DIExpression()), !dbg !1215
  store i32 0, ptr %__UNIQUE_ID___lo321, align 4, !dbg !1215
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi322) #10, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi322, metadata !1142, metadata !DIExpression()), !dbg !1215
  store i32 10, ptr %__UNIQUE_ID___hi322, align 4, !dbg !1215
  %68 = load i64, ptr %__UNIQUE_ID___val320, align 8, !dbg !1215
  %69 = load i32, ptr %__UNIQUE_ID___hi322, align 4, !dbg !1215
  %conv91 = sext i32 %69 to i64, !dbg !1215
  %cmp92 = icmp sge i64 %68, %conv91, !dbg !1215
  br i1 %cmp92, label %cond.true94, label %cond.false96, !dbg !1215

cond.true94:                                      ; preds = %if.end88
  %70 = load i32, ptr %__UNIQUE_ID___hi322, align 4, !dbg !1215
  %conv95 = sext i32 %70 to i64, !dbg !1215
  br label %cond.end105, !dbg !1215

cond.false96:                                     ; preds = %if.end88
  %71 = load i64, ptr %__UNIQUE_ID___val320, align 8, !dbg !1215
  %72 = load i32, ptr %__UNIQUE_ID___lo321, align 4, !dbg !1215
  %conv97 = sext i32 %72 to i64, !dbg !1215
  %cmp98 = icmp sle i64 %71, %conv97, !dbg !1215
  br i1 %cmp98, label %cond.true100, label %cond.false102, !dbg !1215

cond.true100:                                     ; preds = %cond.false96
  %73 = load i32, ptr %__UNIQUE_ID___lo321, align 4, !dbg !1215
  %conv101 = sext i32 %73 to i64, !dbg !1215
  br label %cond.end103, !dbg !1215

cond.false102:                                    ; preds = %cond.false96
  %74 = load i64, ptr %__UNIQUE_ID___val320, align 8, !dbg !1215
  br label %cond.end103, !dbg !1215

cond.end103:                                      ; preds = %cond.false102, %cond.true100
  %cond104 = phi i64 [ %conv101, %cond.true100 ], [ %74, %cond.false102 ], !dbg !1215
  br label %cond.end105, !dbg !1215

cond.end105:                                      ; preds = %cond.end103, %cond.true94
  %cond106 = phi i64 [ %conv95, %cond.true94 ], [ %cond104, %cond.end103 ], !dbg !1215
  store i64 %cond106, ptr %tmp90, align 8, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi322) #10, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo321) #10, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val320) #10, !dbg !1216
  %75 = load i64, ptr %tmp90, align 8, !dbg !1215
  store i64 %75, ptr %tmp89, align 8, !dbg !1217
  %76 = load i64, ptr %tmp89, align 8, !dbg !1216
  store i64 %76, ptr @time_constant, align 8, !dbg !1218
  br label %if.end107, !dbg !1219

if.end107:                                        ; preds = %cond.end105, %if.end62
  %77 = load ptr, ptr %txc.addr, align 8, !dbg !1220
  %modes108 = getelementptr inbounds %struct.__kernel_timex, ptr %77, i32 0, i32 0, !dbg !1222
  %78 = load i32, ptr %modes108, align 8, !dbg !1222
  %and109 = and i32 %78, 128, !dbg !1223
  %tobool110 = icmp ne i32 %and109, 0, !dbg !1223
  br i1 %tobool110, label %land.lhs.true, label %if.end121, !dbg !1224

land.lhs.true:                                    ; preds = %if.end107
  %79 = load ptr, ptr %txc.addr, align 8, !dbg !1225
  %constant111 = getelementptr inbounds %struct.__kernel_timex, ptr %79, i32 0, i32 8, !dbg !1226
  %80 = load i64, ptr %constant111, align 8, !dbg !1226
  %cmp112 = icmp sge i64 %80, 0, !dbg !1227
  br i1 %cmp112, label %land.lhs.true114, label %if.end121, !dbg !1228

land.lhs.true114:                                 ; preds = %land.lhs.true
  %81 = load ptr, ptr %txc.addr, align 8, !dbg !1229
  %constant115 = getelementptr inbounds %struct.__kernel_timex, ptr %81, i32 0, i32 8, !dbg !1230
  %82 = load i64, ptr %constant115, align 8, !dbg !1230
  %cmp116 = icmp sle i64 %82, 100000, !dbg !1231
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !1232

if.then118:                                       ; preds = %land.lhs.true114
  %83 = load ptr, ptr %txc.addr, align 8, !dbg !1233
  %constant119 = getelementptr inbounds %struct.__kernel_timex, ptr %83, i32 0, i32 8, !dbg !1234
  %84 = load i64, ptr %constant119, align 8, !dbg !1234
  %conv120 = trunc i64 %84 to i32, !dbg !1233
  %85 = load ptr, ptr %time_tai.addr, align 8, !dbg !1235
  store i32 %conv120, ptr %85, align 4, !dbg !1236
  br label %if.end121, !dbg !1237

if.end121:                                        ; preds = %if.then118, %land.lhs.true114, %land.lhs.true, %if.end107
  %86 = load ptr, ptr %txc.addr, align 8, !dbg !1238
  %modes122 = getelementptr inbounds %struct.__kernel_timex, ptr %86, i32 0, i32 0, !dbg !1240
  %87 = load i32, ptr %modes122, align 8, !dbg !1240
  %and123 = and i32 %87, 1, !dbg !1241
  %tobool124 = icmp ne i32 %and123, 0, !dbg !1241
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !1242

if.then125:                                       ; preds = %if.end121
  %88 = load ptr, ptr %txc.addr, align 8, !dbg !1243
  %offset = getelementptr inbounds %struct.__kernel_timex, ptr %88, i32 0, i32 2, !dbg !1244
  %89 = load i64, ptr %offset, align 8, !dbg !1244
  call void @ntp_update_offset(i64 noundef %89) #9, !dbg !1245
  br label %if.end126, !dbg !1245

if.end126:                                        ; preds = %if.then125, %if.end121
  %90 = load ptr, ptr %txc.addr, align 8, !dbg !1246
  %modes127 = getelementptr inbounds %struct.__kernel_timex, ptr %90, i32 0, i32 0, !dbg !1248
  %91 = load i32, ptr %modes127, align 8, !dbg !1248
  %and128 = and i32 %91, 16384, !dbg !1249
  %tobool129 = icmp ne i32 %and128, 0, !dbg !1249
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !1250

if.then130:                                       ; preds = %if.end126
  %92 = load ptr, ptr %txc.addr, align 8, !dbg !1251
  %tick = getelementptr inbounds %struct.__kernel_timex, ptr %92, i32 0, i32 12, !dbg !1252
  %93 = load i64, ptr %tick, align 8, !dbg !1252
  store i64 %93, ptr @tick_usec, align 8, !dbg !1253
  br label %if.end131, !dbg !1254

if.end131:                                        ; preds = %if.then130, %if.end126
  %94 = load ptr, ptr %txc.addr, align 8, !dbg !1255
  %modes132 = getelementptr inbounds %struct.__kernel_timex, ptr %94, i32 0, i32 0, !dbg !1257
  %95 = load i32, ptr %modes132, align 8, !dbg !1257
  %and133 = and i32 %95, 16387, !dbg !1258
  %tobool134 = icmp ne i32 %and133, 0, !dbg !1258
  br i1 %tobool134, label %if.then135, label %if.end136, !dbg !1259

if.then135:                                       ; preds = %if.end131
  call void @ntp_update_frequency() #9, !dbg !1260
  br label %if.end136, !dbg !1260

if.end136:                                        ; preds = %if.then135, %if.end131
  ret void, !dbg !1261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64(i64 noundef %dividend, i32 noundef %divisor) #1 align 16 !dbg !1262 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1266, metadata !DIExpression()), !dbg !1269
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1267, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #10, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !1268, metadata !DIExpression()), !dbg !1272
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1273
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1274
  %call = call i64 @div_s64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #9, !dbg !1275
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #10, !dbg !1276
  ret i64 %call, !dbg !1277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_error_status(i32 noundef %status) #1 align 16 !dbg !1278 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  %0 = load i32, ptr %status.addr, align 4, !dbg !1284
  %and = and i32 %0, 4160, !dbg !1285
  ret i32 %and, !dbg !1286
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_fill_timex(ptr noundef %txc) #1 align 16 !dbg !1287 {
entry:
  %txc.addr = alloca ptr, align 8
  store ptr %txc, ptr %txc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %txc.addr, metadata !1291, metadata !DIExpression()), !dbg !1292
  %0 = load ptr, ptr %txc.addr, align 8, !dbg !1293
  %ppsfreq = getelementptr inbounds %struct.__kernel_timex, ptr %0, i32 0, i32 13, !dbg !1294
  store i64 0, ptr %ppsfreq, align 8, !dbg !1295
  %1 = load ptr, ptr %txc.addr, align 8, !dbg !1296
  %jitter = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 14, !dbg !1297
  store i64 0, ptr %jitter, align 8, !dbg !1298
  %2 = load ptr, ptr %txc.addr, align 8, !dbg !1299
  %shift = getelementptr inbounds %struct.__kernel_timex, ptr %2, i32 0, i32 15, !dbg !1300
  store i32 0, ptr %shift, align 8, !dbg !1301
  %3 = load ptr, ptr %txc.addr, align 8, !dbg !1302
  %stabil = getelementptr inbounds %struct.__kernel_timex, ptr %3, i32 0, i32 17, !dbg !1303
  store i64 0, ptr %stabil, align 8, !dbg !1304
  %4 = load ptr, ptr %txc.addr, align 8, !dbg !1305
  %jitcnt = getelementptr inbounds %struct.__kernel_timex, ptr %4, i32 0, i32 18, !dbg !1306
  store i64 0, ptr %jitcnt, align 8, !dbg !1307
  %5 = load ptr, ptr %txc.addr, align 8, !dbg !1308
  %calcnt = getelementptr inbounds %struct.__kernel_timex, ptr %5, i32 0, i32 19, !dbg !1309
  store i64 0, ptr %calcnt, align 8, !dbg !1310
  %6 = load ptr, ptr %txc.addr, align 8, !dbg !1311
  %errcnt = getelementptr inbounds %struct.__kernel_timex, ptr %6, i32 0, i32 20, !dbg !1312
  store i64 0, ptr %errcnt, align 8, !dbg !1313
  %7 = load ptr, ptr %txc.addr, align 8, !dbg !1314
  %stbcnt = getelementptr inbounds %struct.__kernel_timex, ptr %7, i32 0, i32 21, !dbg !1315
  store i64 0, ptr %stbcnt, align 8, !dbg !1316
  ret void, !dbg !1317
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ntp_tick_adj_setup(ptr noundef %str) #6 section ".init.text" align 16 !dbg !1318 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1320, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #10, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1321, metadata !DIExpression()), !dbg !1324
  %0 = load ptr, ptr %str.addr, align 8, !dbg !1325
  %call = call i32 @kstrtos64(ptr noundef %0, i32 noundef 0, ptr noundef @ntp_tick_adj) #9, !dbg !1326
  store i32 %call, ptr %rc, align 4, !dbg !1324
  %1 = load i32, ptr %rc, align 4, !dbg !1327
  %tobool = icmp ne i32 %1, 0, !dbg !1327
  br i1 %tobool, label %if.then, label %if.end, !dbg !1329

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !1330
  store i32 %2, ptr %retval, align 4, !dbg !1331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1331

if.end:                                           ; preds = %entry
  %3 = load i64, ptr @ntp_tick_adj, align 8, !dbg !1332
  %shl = shl i64 %3, 32, !dbg !1332
  store i64 %shl, ptr @ntp_tick_adj, align 8, !dbg !1332
  store i32 1, ptr %retval, align 4, !dbg !1333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1333

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #10, !dbg !1334
  %4 = load i32, ptr %retval, align 4, !dbg !1334
  ret i32 %4, !dbg !1334
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @ntp_init() #6 section ".init.text" align 16 !dbg !1335 {
entry:
  call void @ntp_clear() #9, !dbg !1336
  call void @ntp_init_cmos_sync() #11, !dbg !1337
  ret void, !dbg !1338
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @ntp_init_cmos_sync() #6 section ".init.text" align 16 !dbg !1339 {
entry:
  call void @hrtimer_init(ptr noundef @sync_hrtimer, i32 noundef 0, i32 noundef 0) #9, !dbg !1340
  store ptr @sync_timer_callback, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 2), align 8, !dbg !1341
  ret void, !dbg !1342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #1 align 16 !dbg !1343 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1349, metadata !DIExpression()), !dbg !1352
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #10, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !1351, metadata !DIExpression()), !dbg !1355
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1356
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1357
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #9, !dbg !1358
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #10, !dbg !1359
  ret i64 %call, !dbg !1360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #1 align 16 !dbg !1361 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1366, metadata !DIExpression()), !dbg !1369
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1367, metadata !DIExpression()), !dbg !1370
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1368, metadata !DIExpression()), !dbg !1371
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1372
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1373
  %conv = zext i32 %1 to i64, !dbg !1373
  %rem = urem i64 %0, %conv, !dbg !1374
  %conv1 = trunc i64 %rem to i32, !dbg !1372
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1375
  store i32 %conv1, ptr %2, align 4, !dbg !1376
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1377
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1378
  %conv2 = zext i32 %4 to i64, !dbg !1378
  %div = udiv i64 %3, %conv2, !dbg !1379
  ret i64 %div, !dbg !1380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_hw_clock(ptr noundef %work) #0 align 16 !dbg !420 {
entry:
  %work.addr = alloca ptr, align 8
  %now = alloca %struct.timespec64, align 8
  %to_set = alloca %struct.timespec64, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !422, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 16, ptr %now) #10, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %now, metadata !423, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 16, ptr %to_set) #10, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %to_set, metadata !428, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %res, metadata !429, metadata !DIExpression()), !dbg !1389
  store i32 -11, ptr %res, align 4, !dbg !1389
  %call = call i32 @ntp_synced() #9, !dbg !1390
  %tobool = icmp ne i32 %call, 0, !dbg !1390
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1392

lor.lhs.false:                                    ; preds = %entry
  %call1 = call zeroext i1 @hrtimer_is_queued(ptr noundef @sync_hrtimer) #9, !dbg !1393
  br i1 %call1, label %if.then, label %if.end, !dbg !1394

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1395

if.end:                                           ; preds = %lor.lhs.false
  call void @ktime_get_real_ts64(ptr noundef %now) #9, !dbg !1396
  %0 = load i64, ptr @sync_hw_clock.offset_nsec, align 8, !dbg !1397
  %call2 = call zeroext i1 @rtc_tv_nsec_ok(i64 noundef %0, ptr noundef %to_set, ptr noundef %now) #9, !dbg !1399
  br i1 %call2, label %if.end4, label %if.then3, !dbg !1400

if.then3:                                         ; preds = %if.end
  br label %rearm, !dbg !1401

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr @persistent_clock_is_local, align 4, !dbg !1402
  %tobool5 = icmp ne i32 %1, 0, !dbg !1402
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1404

if.then6:                                         ; preds = %if.end4
  %2 = load i32, ptr @sys_tz, align 4, !dbg !1405
  %mul = mul i32 %2, 60, !dbg !1406
  %conv = sext i32 %mul to i64, !dbg !1407
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %to_set, i32 0, i32 0, !dbg !1408
  %3 = load i64, ptr %tv_sec, align 8, !dbg !1409
  %sub = sub i64 %3, %conv, !dbg !1409
  store i64 %sub, ptr %tv_sec, align 8, !dbg !1409
  br label %if.end7, !dbg !1410

if.end7:                                          ; preds = %if.then6, %if.end4
  %4 = getelementptr inbounds { i64, i64 }, ptr %to_set, i32 0, i32 0, !dbg !1411
  %5 = load i64, ptr %4, align 8, !dbg !1411
  %6 = getelementptr inbounds { i64, i64 }, ptr %to_set, i32 0, i32 1, !dbg !1411
  %7 = load i64, ptr %6, align 8, !dbg !1411
  %call8 = call i32 @update_persistent_clock64(i64 %5, i64 %7) #9, !dbg !1411
  store i32 %call8, ptr %res, align 4, !dbg !1412
  %8 = load i32, ptr %res, align 4, !dbg !1413
  %cmp = icmp ne i32 %8, -19, !dbg !1415
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1416

if.then10:                                        ; preds = %if.end7
  br label %rearm, !dbg !1417

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @update_rtc(ptr noundef %to_set, ptr noundef @sync_hw_clock.offset_nsec) #9, !dbg !1418
  store i32 %call12, ptr %res, align 4, !dbg !1419
  %9 = load i32, ptr %res, align 4, !dbg !1420
  %cmp13 = icmp eq i32 %9, -19, !dbg !1422
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1423

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1424

if.end16:                                         ; preds = %if.end11
  br label %rearm, !dbg !1425

rearm:                                            ; preds = %if.end16, %if.then10, %if.then3
  call void @llvm.dbg.label(metadata !430), !dbg !1426
  %10 = load i64, ptr @sync_hw_clock.offset_nsec, align 8, !dbg !1427
  %11 = load i32, ptr %res, align 4, !dbg !1428
  %cmp17 = icmp ne i32 %11, 0, !dbg !1429
  call void @sched_sync_hw_clock(i64 noundef %10, i1 noundef zeroext %cmp17) #9, !dbg !1430
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1431
  br label %cleanup, !dbg !1431

cleanup:                                          ; preds = %rearm, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10, !dbg !1431
  call void @llvm.lifetime.end.p0(i64 16, ptr %to_set) #10, !dbg !1431
  call void @llvm.lifetime.end.p0(i64 16, ptr %now) #10, !dbg !1431
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1431

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1432 dso_local void @ktime_get_real_ts64(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rtc_tv_nsec_ok(i64 noundef %set_offset_nsec, ptr noundef %to_set, ptr noundef %now) #1 align 16 !dbg !1437 {
entry:
  %retval = alloca i1, align 1
  %set_offset_nsec.addr = alloca i64, align 8
  %to_set.addr = alloca ptr, align 8
  %now.addr = alloca ptr, align 8
  %TIME_SET_NSEC_FUZZ = alloca i64, align 8
  %delay = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %set_offset_nsec, ptr %set_offset_nsec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set_offset_nsec.addr, metadata !1441, metadata !DIExpression()), !dbg !1446
  store ptr %to_set, ptr %to_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_set.addr, metadata !1442, metadata !DIExpression()), !dbg !1447
  store ptr %now, ptr %now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1443, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 8, ptr %TIME_SET_NSEC_FUZZ) #10, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %TIME_SET_NSEC_FUZZ, metadata !1444, metadata !DIExpression()), !dbg !1450
  store i64 5000000, ptr %TIME_SET_NSEC_FUZZ, align 8, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 16, ptr %delay) #10, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !1445, metadata !DIExpression()), !dbg !1452
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %delay, i32 0, i32 0, !dbg !1453
  store i64 -1, ptr %tv_sec, align 8, !dbg !1453
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %delay, i32 0, i32 1, !dbg !1453
  %0 = load i64, ptr %set_offset_nsec.addr, align 8, !dbg !1454
  store i64 %0, ptr %tv_nsec, align 8, !dbg !1453
  %1 = load ptr, ptr %to_set.addr, align 8, !dbg !1455
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #10, !dbg !1456
  %2 = load ptr, ptr %now.addr, align 8, !dbg !1457
  %3 = getelementptr inbounds { i64, i64 }, ptr %2, i32 0, i32 0, !dbg !1456
  %4 = load i64, ptr %3, align 8, !dbg !1456
  %5 = getelementptr inbounds { i64, i64 }, ptr %2, i32 0, i32 1, !dbg !1456
  %6 = load i64, ptr %5, align 8, !dbg !1456
  %7 = getelementptr inbounds { i64, i64 }, ptr %delay, i32 0, i32 0, !dbg !1456
  %8 = load i64, ptr %7, align 8, !dbg !1456
  %9 = getelementptr inbounds { i64, i64 }, ptr %delay, i32 0, i32 1, !dbg !1456
  %10 = load i64, ptr %9, align 8, !dbg !1456
  %call = call { i64, i64 } @timespec64_add(i64 %4, i64 %6, i64 %8, i64 %10) #9, !dbg !1456
  %11 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !1456
  %12 = extractvalue { i64, i64 } %call, 0, !dbg !1456
  store i64 %12, ptr %11, align 8, !dbg !1456
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !1456
  %14 = extractvalue { i64, i64 } %call, 1, !dbg !1456
  store i64 %14, ptr %13, align 8, !dbg !1456
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %tmp, i64 16, i1 false), !dbg !1456
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #10, !dbg !1456
  %15 = load ptr, ptr %to_set.addr, align 8, !dbg !1458
  %tv_nsec1 = getelementptr inbounds %struct.timespec64, ptr %15, i32 0, i32 1, !dbg !1460
  %16 = load i64, ptr %tv_nsec1, align 8, !dbg !1460
  %cmp = icmp ult i64 %16, 5000000, !dbg !1461
  br i1 %cmp, label %if.then, label %if.end, !dbg !1462

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %to_set.addr, align 8, !dbg !1463
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %17, i32 0, i32 1, !dbg !1465
  store i64 0, ptr %tv_nsec2, align 8, !dbg !1466
  store i1 true, ptr %retval, align 1, !dbg !1467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1467

if.end:                                           ; preds = %entry
  %18 = load ptr, ptr %to_set.addr, align 8, !dbg !1468
  %tv_nsec3 = getelementptr inbounds %struct.timespec64, ptr %18, i32 0, i32 1, !dbg !1470
  %19 = load i64, ptr %tv_nsec3, align 8, !dbg !1470
  %cmp4 = icmp ugt i64 %19, 995000000, !dbg !1471
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !1472

if.then5:                                         ; preds = %if.end
  %20 = load ptr, ptr %to_set.addr, align 8, !dbg !1473
  %tv_sec6 = getelementptr inbounds %struct.timespec64, ptr %20, i32 0, i32 0, !dbg !1475
  %21 = load i64, ptr %tv_sec6, align 8, !dbg !1476
  %inc = add i64 %21, 1, !dbg !1476
  store i64 %inc, ptr %tv_sec6, align 8, !dbg !1476
  %22 = load ptr, ptr %to_set.addr, align 8, !dbg !1477
  %tv_nsec7 = getelementptr inbounds %struct.timespec64, ptr %22, i32 0, i32 1, !dbg !1478
  store i64 0, ptr %tv_nsec7, align 8, !dbg !1479
  store i1 true, ptr %retval, align 1, !dbg !1480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1480

if.end8:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1481

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %delay) #10, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 8, ptr %TIME_SET_NSEC_FUZZ) #10, !dbg !1482
  %23 = load i1, ptr %retval, align 1, !dbg !1482
  ret i1 %23, !dbg !1482
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @update_rtc(ptr noundef %to_set, ptr noundef %offset_nsec) #0 align 16 !dbg !1483 {
entry:
  %retval = alloca i32, align 4
  %to_set.addr = alloca ptr, align 8
  %offset_nsec.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %tm = alloca %struct.rtc_time, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to_set, ptr %to_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_set.addr, metadata !1488, metadata !DIExpression()), !dbg !5965
  store ptr %offset_nsec, ptr %offset_nsec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset_nsec.addr, metadata !1489, metadata !DIExpression()), !dbg !5966
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #10, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !1490, metadata !DIExpression()), !dbg !5968
  call void @llvm.lifetime.start.p0(i64 36, ptr %tm) #10, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !5962, metadata !DIExpression()), !dbg !5970
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5963, metadata !DIExpression()), !dbg !5972
  store i32 -19, ptr %err, align 4, !dbg !5972
  %call = call ptr @rtc_class_open(ptr noundef @.str.2) #9, !dbg !5973
  store ptr %call, ptr %rtc, align 8, !dbg !5974
  %0 = load ptr, ptr %rtc, align 8, !dbg !5975
  %tobool = icmp ne ptr %0, null, !dbg !5975
  br i1 %tobool, label %if.end, label %if.then, !dbg !5977

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5978

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rtc, align 8, !dbg !5979
  %ops = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 3, !dbg !5981
  %2 = load ptr, ptr %ops, align 8, !dbg !5981
  %tobool1 = icmp ne ptr %2, null, !dbg !5979
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !5982

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %rtc, align 8, !dbg !5983
  %ops2 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 3, !dbg !5984
  %4 = load ptr, ptr %ops2, align 8, !dbg !5984
  %set_time = getelementptr inbounds %struct.rtc_class_ops, ptr %4, i32 0, i32 2, !dbg !5985
  %5 = load ptr, ptr %set_time, align 8, !dbg !5985
  %tobool3 = icmp ne ptr %5, null, !dbg !5983
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5986

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  br label %out_close, !dbg !5987

if.end5:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %offset_nsec.addr, align 8, !dbg !5988
  %7 = load i64, ptr %6, align 8, !dbg !5990
  %8 = load ptr, ptr %rtc, align 8, !dbg !5991
  %set_offset_nsec = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 19, !dbg !5992
  %9 = load i64, ptr %set_offset_nsec, align 8, !dbg !5992
  %cmp = icmp eq i64 %7, %9, !dbg !5993
  br i1 %cmp, label %if.then6, label %if.else, !dbg !5994

if.then6:                                         ; preds = %if.end5
  %10 = load ptr, ptr %to_set.addr, align 8, !dbg !5995
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %10, i32 0, i32 0, !dbg !5997
  %11 = load i64, ptr %tv_sec, align 8, !dbg !5997
  call void @rtc_time64_to_tm(i64 noundef %11, ptr noundef %tm) #9, !dbg !5998
  %12 = load ptr, ptr %rtc, align 8, !dbg !5999
  %call7 = call i32 @rtc_set_time(ptr noundef %12, ptr noundef %tm) #9, !dbg !6000
  store i32 %call7, ptr %err, align 4, !dbg !6001
  br label %if.end9, !dbg !6002

if.else:                                          ; preds = %if.end5
  %13 = load ptr, ptr %rtc, align 8, !dbg !6003
  %set_offset_nsec8 = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 19, !dbg !6005
  %14 = load i64, ptr %set_offset_nsec8, align 8, !dbg !6005
  %15 = load ptr, ptr %offset_nsec.addr, align 8, !dbg !6006
  store i64 %14, ptr %15, align 8, !dbg !6007
  store i32 -11, ptr %err, align 4, !dbg !6008
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %out_close, !dbg !5992

out_close:                                        ; preds = %if.end9, %if.then4
  call void @llvm.dbg.label(metadata !5964), !dbg !6009
  %16 = load ptr, ptr %rtc, align 8, !dbg !6010
  call void @rtc_class_close(ptr noundef %16) #9, !dbg !6011
  %17 = load i32, ptr %err, align 4, !dbg !6012
  store i32 %17, ptr %retval, align 4, !dbg !6013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6013

cleanup:                                          ; preds = %out_close, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !6014
  call void @llvm.lifetime.end.p0(i64 36, ptr %tm) #10, !dbg !6014
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #10, !dbg !6014
  %18 = load i32, ptr %retval, align 4, !dbg !6014
  ret i32 %18, !dbg !6014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sched_sync_hw_clock(i64 noundef %offset_nsec, i1 noundef zeroext %retry) #0 align 16 !dbg !6015 {
entry:
  %offset_nsec.addr = alloca i64, align 8
  %retry.addr = alloca i8, align 1
  %exp = alloca i64, align 8
  store i64 %offset_nsec, ptr %offset_nsec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset_nsec.addr, metadata !6019, metadata !DIExpression()), !dbg !6022
  %frombool = zext i1 %retry to i8
  store i8 %frombool, ptr %retry.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %retry.addr, metadata !6020, metadata !DIExpression()), !dbg !6023
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #10, !dbg !6024
  call void @llvm.dbg.declare(metadata ptr %exp, metadata !6021, metadata !DIExpression()), !dbg !6025
  %call = call i64 @ktime_get_real_seconds() #9, !dbg !6026
  %call1 = call i64 @ktime_set(i64 noundef %call, i64 noundef 0) #9, !dbg !6027
  store i64 %call1, ptr %exp, align 8, !dbg !6025
  %0 = load i8, ptr %retry.addr, align 1, !dbg !6028, !range !6030, !noundef !2131
  %tobool = trunc i8 %0 to i1, !dbg !6028
  br i1 %tobool, label %if.then, label %if.else, !dbg !6031

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %exp, align 8, !dbg !6032
  %2 = load i64, ptr %offset_nsec.addr, align 8, !dbg !6032
  %sub = sub i64 2000000000, %2, !dbg !6032
  %add = add i64 %1, %sub, !dbg !6032
  store i64 %add, ptr %exp, align 8, !dbg !6033
  br label %if.end, !dbg !6034

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %exp, align 8, !dbg !6035
  %4 = load i64, ptr %offset_nsec.addr, align 8, !dbg !6035
  %sub2 = sub i64 660000000000, %4, !dbg !6035
  %add3 = add i64 %3, %sub2, !dbg !6035
  store i64 %add3, ptr %exp, align 8, !dbg !6036
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %exp, align 8, !dbg !6037
  call void @hrtimer_start(ptr noundef @sync_hrtimer, i64 noundef %5, i32 noundef 0) #9, !dbg !6038
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #10, !dbg !6039
  ret void, !dbg !6039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @timespec64_add(i64 %lhs.coerce0, i64 %lhs.coerce1, i64 %rhs.coerce0, i64 %rhs.coerce1) #1 align 16 !dbg !6040 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs = alloca %struct.timespec64, align 8
  %rhs = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 0
  store i64 %lhs.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 1
  store i64 %lhs.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 0
  store i64 %rhs.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 1
  store i64 %rhs.coerce1, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %lhs, metadata !6044, metadata !DIExpression()), !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %rhs, metadata !6045, metadata !DIExpression()), !dbg !6048
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !6046, metadata !DIExpression()), !dbg !6049
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 0, !dbg !6050
  %4 = load i64, ptr %tv_sec, align 8, !dbg !6050
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 0, !dbg !6051
  %5 = load i64, ptr %tv_sec1, align 8, !dbg !6051
  %add = add i64 %4, %5, !dbg !6052
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 1, !dbg !6053
  %6 = load i64, ptr %tv_nsec, align 8, !dbg !6053
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 1, !dbg !6054
  %7 = load i64, ptr %tv_nsec2, align 8, !dbg !6054
  %add3 = add i64 %6, %7, !dbg !6055
  call void @set_normalized_timespec64(ptr noundef %retval, i64 noundef %add, i64 noundef %add3) #9, !dbg !6056
  %8 = load { i64, i64 }, ptr %retval, align 8, !dbg !6057
  ret { i64, i64 } %8, !dbg !6057
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6058 dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6061 dso_local ptr @rtc_class_open(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6064 dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6067 dso_local i32 @rtc_set_time(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6070 dso_local void @rtc_class_close(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6071 dso_local i64 @ktime_get_real_seconds() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_start(ptr noundef %timer, i64 noundef %tim, i32 noundef %mode) #1 align 16 !dbg !6074 {
entry:
  %timer.addr = alloca ptr, align 8
  %tim.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6079, metadata !DIExpression()), !dbg !6082
  store i64 %tim, ptr %tim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tim.addr, metadata !6080, metadata !DIExpression()), !dbg !6083
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6081, metadata !DIExpression()), !dbg !6084
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6085
  %1 = load i64, ptr %tim.addr, align 8, !dbg !6086
  %2 = load i32, ptr %mode.addr, align 4, !dbg !6087
  call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef 0, i32 noundef %2) #9, !dbg !6088
  ret void, !dbg !6089
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6090 dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @process_adj_status(ptr noundef %txc) #1 align 16 !dbg !6093 {
entry:
  %txc.addr = alloca ptr, align 8
  store ptr %txc, ptr %txc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %txc.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  %0 = load i32, ptr @time_status, align 4, !dbg !6099
  %and = and i32 %0, 1, !dbg !6101
  %tobool = icmp ne i32 %and, 0, !dbg !6101
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6102

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %txc.addr, align 8, !dbg !6103
  %status = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 6, !dbg !6104
  %2 = load i32, ptr %status, align 8, !dbg !6104
  %and1 = and i32 %2, 1, !dbg !6105
  %tobool2 = icmp ne i32 %and1, 0, !dbg !6105
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6106

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr @time_state, align 4, !dbg !6107
  store i32 64, ptr @time_status, align 4, !dbg !6109
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8, !dbg !6110
  call void @pps_reset_freq_interval() #9, !dbg !6111
  br label %if.end, !dbg !6112

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, ptr @time_status, align 4, !dbg !6113
  %and3 = and i32 %3, 1, !dbg !6115
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6115
  br i1 %tobool4, label %if.end10, label %land.lhs.true5, !dbg !6116

land.lhs.true5:                                   ; preds = %if.end
  %4 = load ptr, ptr %txc.addr, align 8, !dbg !6117
  %status6 = getelementptr inbounds %struct.__kernel_timex, ptr %4, i32 0, i32 6, !dbg !6118
  %5 = load i32, ptr %status6, align 8, !dbg !6118
  %and7 = and i32 %5, 1, !dbg !6119
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6119
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6120

if.then9:                                         ; preds = %land.lhs.true5
  %call = call i64 @__ktime_get_real_seconds() #9, !dbg !6121
  store i64 %call, ptr @time_reftime, align 8, !dbg !6122
  br label %if.end10, !dbg !6123

if.end10:                                         ; preds = %if.then9, %land.lhs.true5, %if.end
  %6 = load i32, ptr @time_status, align 4, !dbg !6124
  %and11 = and i32 %6, 65280, !dbg !6124
  store i32 %and11, ptr @time_status, align 4, !dbg !6124
  %7 = load ptr, ptr %txc.addr, align 8, !dbg !6125
  %status12 = getelementptr inbounds %struct.__kernel_timex, ptr %7, i32 0, i32 6, !dbg !6126
  %8 = load i32, ptr %status12, align 8, !dbg !6126
  %and13 = and i32 %8, -65281, !dbg !6127
  %9 = load i32, ptr @time_status, align 4, !dbg !6128
  %or = or i32 %9, %and13, !dbg !6128
  store i32 %or, ptr @time_status, align 4, !dbg !6128
  ret void, !dbg !6129
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_set_freq(i64 noundef %freq) #1 align 16 !dbg !6130 {
entry:
  %freq.addr = alloca i64, align 8
  store i64 %freq, ptr %freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !6134, metadata !DIExpression()), !dbg !6135
  ret void, !dbg !6136
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ntp_update_offset(i64 noundef %offset) #0 align 16 !dbg !6137 {
entry:
  %offset.addr = alloca i64, align 8
  %freq_adj = alloca i64, align 8
  %offset64 = alloca i64, align 8
  %secs = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___val297 = alloca i64, align 8
  %__UNIQUE_ID___lo298 = alloca i64, align 8
  %__UNIQUE_ID___hi299 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %__UNIQUE_ID___val300 = alloca i64, align 8
  %__UNIQUE_ID___lo301 = alloca i64, align 8
  %__UNIQUE_ID___hi302 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__UNIQUE_ID___x303 = alloca i64, align 8
  %__UNIQUE_ID___y304 = alloca i64, align 8
  %tmp54 = alloca i64, align 8
  %__UNIQUE_ID___x305 = alloca i64, align 8
  %__UNIQUE_ID___y306 = alloca i64, align 8
  %tmp61 = alloca i64, align 8
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6141, metadata !DIExpression()), !dbg !6163
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq_adj) #10, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %freq_adj, metadata !6142, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset64) #10, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %offset64, metadata !6143, metadata !DIExpression()), !dbg !6167
  call void @llvm.lifetime.start.p0(i64 8, ptr %secs) #10, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %secs, metadata !6144, metadata !DIExpression()), !dbg !6169
  %0 = load i32, ptr @time_status, align 4, !dbg !6170
  %and = and i32 %0, 1, !dbg !6172
  %tobool = icmp ne i32 %and, 0, !dbg !6172
  br i1 %tobool, label %if.end, label %if.then, !dbg !6173

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6174

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @time_status, align 4, !dbg !6175
  %and1 = and i32 %1, 8192, !dbg !6176
  %tobool2 = icmp ne i32 %and1, 0, !dbg !6176
  br i1 %tobool2, label %if.end10, label %if.then3, !dbg !6177

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val297) #10, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val297, metadata !6145, metadata !DIExpression()), !dbg !6178
  %2 = load i64, ptr %offset.addr, align 8, !dbg !6178
  store i64 %2, ptr %__UNIQUE_ID___val297, align 8, !dbg !6178
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo298) #10, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo298, metadata !6150, metadata !DIExpression()), !dbg !6178
  store i64 -1000000, ptr %__UNIQUE_ID___lo298, align 8, !dbg !6178
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi299) #10, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi299, metadata !6151, metadata !DIExpression()), !dbg !6178
  store i64 1000000, ptr %__UNIQUE_ID___hi299, align 8, !dbg !6178
  %3 = load i64, ptr %__UNIQUE_ID___val297, align 8, !dbg !6178
  %4 = load i64, ptr %__UNIQUE_ID___hi299, align 8, !dbg !6178
  %cmp = icmp sge i64 %3, %4, !dbg !6178
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6178

cond.true:                                        ; preds = %if.then3
  %5 = load i64, ptr %__UNIQUE_ID___hi299, align 8, !dbg !6178
  br label %cond.end8, !dbg !6178

cond.false:                                       ; preds = %if.then3
  %6 = load i64, ptr %__UNIQUE_ID___val297, align 8, !dbg !6178
  %7 = load i64, ptr %__UNIQUE_ID___lo298, align 8, !dbg !6178
  %cmp5 = icmp sle i64 %6, %7, !dbg !6178
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !6178

cond.true6:                                       ; preds = %cond.false
  %8 = load i64, ptr %__UNIQUE_ID___lo298, align 8, !dbg !6178
  br label %cond.end, !dbg !6178

cond.false7:                                      ; preds = %cond.false
  %9 = load i64, ptr %__UNIQUE_ID___val297, align 8, !dbg !6178
  br label %cond.end, !dbg !6178

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond = phi i64 [ %8, %cond.true6 ], [ %9, %cond.false7 ], !dbg !6178
  br label %cond.end8, !dbg !6178

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ %5, %cond.true ], [ %cond, %cond.end ], !dbg !6178
  store i64 %cond9, ptr %tmp4, align 8, !dbg !6178
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi299) #10, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo298) #10, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val297) #10, !dbg !6179
  %10 = load i64, ptr %tmp4, align 8, !dbg !6178
  store i64 %10, ptr %tmp, align 8, !dbg !6180
  %11 = load i64, ptr %tmp, align 8, !dbg !6179
  store i64 %11, ptr %offset.addr, align 8, !dbg !6181
  %12 = load i64, ptr %offset.addr, align 8, !dbg !6182
  %mul = mul i64 %12, 1000, !dbg !6182
  store i64 %mul, ptr %offset.addr, align 8, !dbg !6182
  br label %if.end10, !dbg !6183

if.end10:                                         ; preds = %cond.end8, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val300) #10, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val300, metadata !6152, metadata !DIExpression()), !dbg !6184
  %13 = load i64, ptr %offset.addr, align 8, !dbg !6184
  store i64 %13, ptr %__UNIQUE_ID___val300, align 8, !dbg !6184
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo301) #10, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo301, metadata !6155, metadata !DIExpression()), !dbg !6184
  store i64 -500000000, ptr %__UNIQUE_ID___lo301, align 8, !dbg !6184
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi302) #10, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi302, metadata !6156, metadata !DIExpression()), !dbg !6184
  store i64 500000000, ptr %__UNIQUE_ID___hi302, align 8, !dbg !6184
  %14 = load i64, ptr %__UNIQUE_ID___val300, align 8, !dbg !6184
  %15 = load i64, ptr %__UNIQUE_ID___hi302, align 8, !dbg !6184
  %cmp13 = icmp sge i64 %14, %15, !dbg !6184
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !6184

cond.true14:                                      ; preds = %if.end10
  %16 = load i64, ptr %__UNIQUE_ID___hi302, align 8, !dbg !6184
  br label %cond.end21, !dbg !6184

cond.false15:                                     ; preds = %if.end10
  %17 = load i64, ptr %__UNIQUE_ID___val300, align 8, !dbg !6184
  %18 = load i64, ptr %__UNIQUE_ID___lo301, align 8, !dbg !6184
  %cmp16 = icmp sle i64 %17, %18, !dbg !6184
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !6184

cond.true17:                                      ; preds = %cond.false15
  %19 = load i64, ptr %__UNIQUE_ID___lo301, align 8, !dbg !6184
  br label %cond.end19, !dbg !6184

cond.false18:                                     ; preds = %cond.false15
  %20 = load i64, ptr %__UNIQUE_ID___val300, align 8, !dbg !6184
  br label %cond.end19, !dbg !6184

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ %19, %cond.true17 ], [ %20, %cond.false18 ], !dbg !6184
  br label %cond.end21, !dbg !6184

cond.end21:                                       ; preds = %cond.end19, %cond.true14
  %cond22 = phi i64 [ %16, %cond.true14 ], [ %cond20, %cond.end19 ], !dbg !6184
  store i64 %cond22, ptr %tmp12, align 8, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi302) #10, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo301) #10, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val300) #10, !dbg !6185
  %21 = load i64, ptr %tmp12, align 8, !dbg !6184
  store i64 %21, ptr %tmp11, align 8, !dbg !6186
  %22 = load i64, ptr %tmp11, align 8, !dbg !6185
  store i64 %22, ptr %offset.addr, align 8, !dbg !6187
  %call = call i64 @__ktime_get_real_seconds() #9, !dbg !6188
  %23 = load i64, ptr @time_reftime, align 8, !dbg !6189
  %sub = sub i64 %call, %23, !dbg !6190
  store i64 %sub, ptr %secs, align 8, !dbg !6191
  %24 = load i32, ptr @time_status, align 4, !dbg !6192
  %and23 = and i32 %24, 128, !dbg !6192
  %tobool24 = icmp ne i32 %and23, 0, !dbg !6192
  %lnot = xor i1 %tobool24, true, !dbg !6192
  %lnot25 = xor i1 %lnot, true, !dbg !6192
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !6192
  %conv = sext i32 %lnot.ext to i64, !dbg !6192
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6192
  %tobool26 = icmp ne i64 %expval, 0, !dbg !6192
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6194

if.then27:                                        ; preds = %cond.end21
  store i64 0, ptr %secs, align 8, !dbg !6195
  br label %if.end28, !dbg !6196

if.end28:                                         ; preds = %if.then27, %cond.end21
  %call29 = call i64 @__ktime_get_real_seconds() #9, !dbg !6197
  store i64 %call29, ptr @time_reftime, align 8, !dbg !6198
  %25 = load i64, ptr %offset.addr, align 8, !dbg !6199
  store i64 %25, ptr %offset64, align 8, !dbg !6200
  %26 = load i64, ptr %offset64, align 8, !dbg !6201
  %27 = load i64, ptr %secs, align 8, !dbg !6202
  %call30 = call i64 @ntp_update_offset_fll(i64 noundef %26, i64 noundef %27) #9, !dbg !6203
  store i64 %call30, ptr %freq_adj, align 8, !dbg !6204
  %28 = load i64, ptr %secs, align 8, !dbg !6205
  %29 = load i64, ptr @time_constant, align 8, !dbg !6205
  %add = add i64 3, %29, !dbg !6205
  %sh_prom = trunc i64 %add to i32, !dbg !6205
  %shl = shl i32 1, %sh_prom, !dbg !6205
  %conv31 = sext i32 %shl to i64, !dbg !6205
  %cmp32 = icmp sgt i64 %28, %conv31, !dbg !6205
  %lnot34 = xor i1 %cmp32, true, !dbg !6205
  %lnot36 = xor i1 %lnot34, true, !dbg !6205
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !6205
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !6205
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !6205
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !6205
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !6207

if.then41:                                        ; preds = %if.end28
  %30 = load i64, ptr @time_constant, align 8, !dbg !6208
  %add42 = add i64 3, %30, !dbg !6209
  %sh_prom43 = trunc i64 %add42 to i32, !dbg !6210
  %shl44 = shl i32 1, %sh_prom43, !dbg !6210
  %conv45 = sext i32 %shl44 to i64, !dbg !6211
  store i64 %conv45, ptr %secs, align 8, !dbg !6212
  br label %if.end46, !dbg !6213

if.end46:                                         ; preds = %if.then41, %if.end28
  %31 = load i64, ptr %offset64, align 8, !dbg !6214
  %32 = load i64, ptr %secs, align 8, !dbg !6215
  %mul47 = mul i64 %31, %32, !dbg !6216
  %33 = load i64, ptr @time_constant, align 8, !dbg !6217
  %add48 = add i64 4, %33, !dbg !6218
  %mul49 = mul i64 2, %add48, !dbg !6219
  %sub50 = sub i64 32, %mul49, !dbg !6220
  %shl51 = shl i64 %mul47, %sub50, !dbg !6221
  %34 = load i64, ptr %freq_adj, align 8, !dbg !6222
  %add52 = add i64 %34, %shl51, !dbg !6222
  store i64 %add52, ptr %freq_adj, align 8, !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x303) #10, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x303, metadata !6157, metadata !DIExpression()), !dbg !6223
  %35 = load i64, ptr %freq_adj, align 8, !dbg !6223
  %36 = load i64, ptr @time_freq, align 8, !dbg !6223
  %add53 = add i64 %35, %36, !dbg !6223
  store i64 %add53, ptr %__UNIQUE_ID___x303, align 8, !dbg !6223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y304) #10, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y304, metadata !6159, metadata !DIExpression()), !dbg !6223
  store i64 2147483648000000, ptr %__UNIQUE_ID___y304, align 8, !dbg !6223
  %37 = load i64, ptr %__UNIQUE_ID___x303, align 8, !dbg !6223
  %38 = load i64, ptr %__UNIQUE_ID___y304, align 8, !dbg !6223
  %cmp55 = icmp slt i64 %37, %38, !dbg !6223
  br i1 %cmp55, label %cond.true57, label %cond.false58, !dbg !6223

cond.true57:                                      ; preds = %if.end46
  %39 = load i64, ptr %__UNIQUE_ID___x303, align 8, !dbg !6223
  br label %cond.end59, !dbg !6223

cond.false58:                                     ; preds = %if.end46
  %40 = load i64, ptr %__UNIQUE_ID___y304, align 8, !dbg !6223
  br label %cond.end59, !dbg !6223

cond.end59:                                       ; preds = %cond.false58, %cond.true57
  %cond60 = phi i64 [ %39, %cond.true57 ], [ %40, %cond.false58 ], !dbg !6223
  store i64 %cond60, ptr %tmp54, align 8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y304) #10, !dbg !6224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x303) #10, !dbg !6224
  %41 = load i64, ptr %tmp54, align 8, !dbg !6223
  store i64 %41, ptr %freq_adj, align 8, !dbg !6225
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x305) #10, !dbg !6226
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x305, metadata !6160, metadata !DIExpression()), !dbg !6226
  %42 = load i64, ptr %freq_adj, align 8, !dbg !6226
  store i64 %42, ptr %__UNIQUE_ID___x305, align 8, !dbg !6226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y306) #10, !dbg !6226
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y306, metadata !6162, metadata !DIExpression()), !dbg !6226
  store i64 -2147483648000000, ptr %__UNIQUE_ID___y306, align 8, !dbg !6226
  %43 = load i64, ptr %__UNIQUE_ID___x305, align 8, !dbg !6226
  %44 = load i64, ptr %__UNIQUE_ID___y306, align 8, !dbg !6226
  %cmp62 = icmp sgt i64 %43, %44, !dbg !6226
  br i1 %cmp62, label %cond.true64, label %cond.false65, !dbg !6226

cond.true64:                                      ; preds = %cond.end59
  %45 = load i64, ptr %__UNIQUE_ID___x305, align 8, !dbg !6226
  br label %cond.end66, !dbg !6226

cond.false65:                                     ; preds = %cond.end59
  %46 = load i64, ptr %__UNIQUE_ID___y306, align 8, !dbg !6226
  br label %cond.end66, !dbg !6226

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi i64 [ %45, %cond.true64 ], [ %46, %cond.false65 ], !dbg !6226
  store i64 %cond67, ptr %tmp61, align 8, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y306) #10, !dbg !6227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x305) #10, !dbg !6227
  %47 = load i64, ptr %tmp61, align 8, !dbg !6226
  store i64 %47, ptr @time_freq, align 8, !dbg !6228
  %48 = load i64, ptr %offset64, align 8, !dbg !6229
  %shl68 = shl i64 %48, 32, !dbg !6230
  %call69 = call i64 @div_s64(i64 noundef %shl68, i32 noundef 1000) #9, !dbg !6231
  store i64 %call69, ptr @time_offset, align 8, !dbg !6232
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6233
  br label %cleanup, !dbg !6233

cleanup:                                          ; preds = %cond.end66, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %secs) #10, !dbg !6233
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset64) #10, !dbg !6233
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq_adj) #10, !dbg !6233
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6233

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_reset_freq_interval() #1 align 16 !dbg !6234 {
entry:
  ret void, !dbg !6235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6236 dso_local i64 @__ktime_get_real_seconds() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ntp_update_offset_fll(i64 noundef %offset64, i64 noundef %secs) #1 align 16 !dbg !6237 {
entry:
  %retval = alloca i64, align 8
  %offset64.addr = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  store i64 %offset64, ptr %offset64.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset64.addr, metadata !6241, metadata !DIExpression()), !dbg !6243
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !6242, metadata !DIExpression()), !dbg !6244
  %0 = load i32, ptr @time_status, align 4, !dbg !6245
  %and = and i32 %0, -16385, !dbg !6245
  store i32 %and, ptr @time_status, align 4, !dbg !6245
  %1 = load i64, ptr %secs.addr, align 8, !dbg !6246
  %cmp = icmp slt i64 %1, 256, !dbg !6248
  br i1 %cmp, label %if.then, label %if.end, !dbg !6249

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6250
  br label %return, !dbg !6250

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @time_status, align 4, !dbg !6251
  %and1 = and i32 %2, 8, !dbg !6253
  %tobool = icmp ne i32 %and1, 0, !dbg !6253
  br i1 %tobool, label %if.end4, label %land.lhs.true, !dbg !6254

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, ptr %secs.addr, align 8, !dbg !6255
  %cmp2 = icmp sle i64 %3, 2048, !dbg !6256
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6257

if.then3:                                         ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !6258
  br label %return, !dbg !6258

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i32, ptr @time_status, align 4, !dbg !6259
  %or = or i32 %4, 16384, !dbg !6259
  store i32 %or, ptr @time_status, align 4, !dbg !6259
  %5 = load i64, ptr %offset64.addr, align 8, !dbg !6260
  %shl = shl i64 %5, 30, !dbg !6260
  %6 = load i64, ptr %secs.addr, align 8, !dbg !6260
  %call = call i64 @div64_s64(i64 noundef %shl, i64 noundef %6) #9, !dbg !6260
  store i64 %call, ptr %retval, align 8, !dbg !6261
  br label %return, !dbg !6261

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i64, ptr %retval, align 8, !dbg !6262
  ret i64 %7, !dbg !6262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_s64(i64 noundef %dividend, i64 noundef %divisor) #1 align 16 !dbg !6263 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !6271
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !6272
  %div = sdiv i64 %0, %1, !dbg !6273
  ret i64 %div, !dbg !6274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtos64(ptr noundef %s, i32 noundef %base, ptr noundef %res) #1 align 16 !dbg !6275 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6281, metadata !DIExpression()), !dbg !6284
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6282, metadata !DIExpression()), !dbg !6285
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6283, metadata !DIExpression()), !dbg !6286
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6287
  %1 = load i32, ptr %base.addr, align 4, !dbg !6288
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6289
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9, !dbg !6290
  ret i32 %call, !dbg !6291
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6292 dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6296 dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sync_timer_callback(ptr noundef %timer) #0 align 16 !dbg !6299 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  %0 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !6303
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef @sync_work) #9, !dbg !6304
  ret i32 0, !dbg !6305
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!445, !446, !447, !448, !449, !450, !451, !452}
!llvm.ident = !{!453}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tick_usec", scope: !2, file: !3, line: 34, type: !218, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.ntp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/ntp\22 -D KBUILD_BASENAME=\22ntp\22 -D KBUILD_MODNAME=\22ntp\22 -D __KBUILD_MODNAME=kmod_ntp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/ntp.ll kernel/time/ntp.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !205, globals: !220, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/ntp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a093938bfce874e51779b2ee445229d4")
!4 = !{!5, !16, !21, !47, !52, !59, !64, !70, !78, !94, !101, !109, !115, !122, !128, !134, !141, !149, !157, !163, !172, !177, !182, !188}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "audit_ntp_type", file: !6, line: 77, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "AUDIT_NTP_OFFSET", value: 0)
!10 = !DIEnumerator(name: "AUDIT_NTP_FREQ", value: 1)
!11 = !DIEnumerator(name: "AUDIT_NTP_STATUS", value: 2)
!12 = !DIEnumerator(name: "AUDIT_NTP_TAI", value: 3)
!13 = !DIEnumerator(name: "AUDIT_NTP_TICK", value: 4)
!14 = !DIEnumerator(name: "AUDIT_NTP_ADJUST", value: 5)
!15 = !DIEnumerator(name: "AUDIT_NTP_NVALS", value: 6)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!20 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 30, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!24 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!25 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!26 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!27 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!28 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!29 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!30 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!31 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!32 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!33 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!34 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!35 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!36 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!37 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!38 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!39 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!40 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!41 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!42 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!43 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!44 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!45 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!46 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 10, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!49 = !{!50, !51}
!50 = !DIEnumerator(name: "false", value: 0)
!51 = !DIEnumerator(name: "true", value: 1)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !53, line: 312, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!56 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!57 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!58 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !60, line: 2052, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!61 = !{!62, !63}
!62 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!63 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !65, line: 16, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "TT_NONE", value: 0)
!68 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!69 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !71, line: 68, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !79, line: 1325, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!81 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!82 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!83 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!84 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!85 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!86 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!87 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!88 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!89 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!90 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!91 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!92 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!93 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !95, line: 51, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!98 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!99 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!100 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !102, line: 9, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!105 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!106 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!107 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!108 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !110, line: 54, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "USRQUOTA", value: 0)
!113 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!114 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !116, line: 15, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!119 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!120 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!121 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !123, line: 26, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!126 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!127 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !129, line: 45, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!132 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!133 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !135, line: 487, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!138 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!139 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!140 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !142, line: 620, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!145 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!146 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!147 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!148 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !142, line: 597, baseType: !150, size: 32, elements: !151)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !{!152, !153, !154, !155, !156}
!152 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!153 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!154 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!155 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!156 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !158, line: 30, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!161 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!162 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !135, line: 547, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171}
!165 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!166 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!167 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!168 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!169 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!170 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!171 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !135, line: 564, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!175 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!176 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !135, line: 577, baseType: !7, size: 32, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!180 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!181 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !135, line: 503, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!185 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!186 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!187 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !17, line: 39, baseType: !7, size: 32, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!190 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!191 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!192 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!193 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!194 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!195 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!196 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!197 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!198 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!199 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!200 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!201 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!202 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!203 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!204 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!205 = !{!206, !211, !214, !218, !219}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !207, line: 22, baseType: !208)
!207 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !209, line: 30, baseType: !210)
!209 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!210 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !207, line: 23, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !209, line: 31, baseType: !213)
!213 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !217)
!217 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!219 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!220 = !{!0, !221, !227, !232, !246, !248, !250, !252, !254, !256, !258, !381, !383, !385, !387, !389, !393, !395, !418, !431, !436, !438, !440}
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 360, elements: !225)
!224 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !{!226}
!226 = !DISubrange(count: 45)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 352, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 44)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__setup_ntp_tick_adj_setup", scope: !2, file: !3, line: 1089, type: !234, isLocal: true, isDefinition: true, align: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !235, line: 324, size: 192, elements: !236)
!235 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!236 = !{!237, !240, !245}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !234, file: !235, line: 325, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !234, file: !235, line: 326, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!150, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !234, file: !235, line: 327, baseType: !150, size: 32, offset: 128)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "tick_nsec", scope: !2, file: !3, line: 37, type: !218, isLocal: false, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "tick_length", scope: !2, file: !3, line: 39, type: !211, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "tick_length_base", scope: !2, file: !3, line: 40, type: !211, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "time_offset", scope: !2, file: !3, line: 63, type: !206, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "time_freq", scope: !2, file: !3, line: 75, type: !206, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "time_adjust", scope: !2, file: !3, line: 80, type: !219, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "sync_hrtimer", scope: !2, file: !3, line: 500, type: !260, isLocal: true, isDefinition: true)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !261)
!261 = !{!262, !277, !278, !283, !377, !378, !379, !380}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !260, file: !17, line: 119, baseType: !263, size: 256)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !264, line: 9, size: 256, elements: !265)
!264 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!265 = !{!266, !274}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !263, file: !264, line: 10, baseType: !267, size: 192, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !268, line: 5, size: 192, align: 64, elements: !269)
!268 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!269 = !{!270, !271, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !267, file: !268, line: 6, baseType: !218, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !267, file: !268, line: 7, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !267, file: !268, line: 8, baseType: !272, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !263, file: !264, line: 11, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !276, line: 29, baseType: !206)
!276 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !260, file: !17, line: 120, baseType: !275, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !260, file: !17, line: 121, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!16, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !260, file: !17, line: 122, baseType: !284, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !286)
!286 = !{!287, !345, !346, !350, !360, !361, !372, !376}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !285, file: !17, line: 160, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !290)
!290 = !{!291, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !289, file: !17, line: 216, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !293, line: 23, baseType: !294)
!293 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !293, line: 14, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !294, file: !293, line: 15, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !298, line: 44, baseType: !299)
!298 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !298, line: 14, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !298, line: 15, baseType: !302, size: 32)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !298, line: 15, size: 32, elements: !303)
!303 = !{!304, !310, !317}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !302, file: !298, line: 16, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !306, line: 174, baseType: !307)
!306 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 172, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !307, file: !306, line: 173, baseType: !150, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !298, line: 24, baseType: !311, size: 16)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !302, file: !298, line: 24, size: 16, elements: !312)
!312 = !{!313, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !311, file: !298, line: 25, baseType: !314, size: 8)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !207, line: 17, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !209, line: 21, baseType: !217)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !311, file: !298, line: 26, baseType: !314, size: 8, offset: 8)
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !298, line: 28, baseType: !318, size: 32)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !302, file: !298, line: 28, size: 32, elements: !319)
!319 = !{!320, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !318, file: !298, line: 29, baseType: !321, size: 16)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !207, line: 19, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !209, line: 24, baseType: !323)
!323 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !318, file: !298, line: 30, baseType: !321, size: 16, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !289, file: !17, line: 217, baseType: !7, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !289, file: !17, line: 218, baseType: !7, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !289, file: !17, line: 219, baseType: !7, size: 32, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !289, file: !17, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !289, file: !17, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !289, file: !17, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !289, file: !17, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !289, file: !17, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !289, file: !17, line: 226, baseType: !7, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !289, file: !17, line: 227, baseType: !323, size: 16, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !289, file: !17, line: 228, baseType: !323, size: 16, offset: 208)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !289, file: !17, line: 229, baseType: !7, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !289, file: !17, line: 235, baseType: !275, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !289, file: !17, line: 236, baseType: !282, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !289, file: !17, line: 237, baseType: !275, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !289, file: !17, line: 238, baseType: !282, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !289, file: !17, line: 239, baseType: !342, size: 4096, align: 512, offset: 512)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 4096, align: 512, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !285, file: !17, line: 161, baseType: !7, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !285, file: !17, line: 162, baseType: !347, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !306, line: 32, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !349, line: 96, baseType: !150)
!349 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!350 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !285, file: !17, line: 163, baseType: !351, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !352, line: 274, baseType: !353)
!352 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !352, line: 274, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !353, file: !352, line: 274, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !352, line: 69, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !352, line: 64, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !357, file: !352, line: 65, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !285, file: !17, line: 164, baseType: !282, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !285, file: !17, line: 165, baseType: !362, size: 128, offset: 256)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !264, line: 14, size: 128, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !362, file: !264, line: 15, baseType: !365, size: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !268, line: 26, size: 128, elements: !366)
!366 = !{!367, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !365, file: !268, line: 27, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !268, line: 12, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !368, file: !268, line: 13, baseType: !272, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !365, file: !268, line: 28, baseType: !272, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !285, file: !17, line: 166, baseType: !373, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!275}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !285, file: !17, line: 167, baseType: !275, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !260, file: !17, line: 123, baseType: !314, size: 8, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !260, file: !17, line: 124, baseType: !314, size: 8, offset: 456)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !260, file: !17, line: 125, baseType: !314, size: 8, offset: 464)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !260, file: !17, line: 126, baseType: !314, size: 8, offset: 472)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "time_status", scope: !2, file: !3, line: 60, type: !150, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "time_maxerror", scope: !2, file: !3, line: 69, type: !219, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "time_esterror", scope: !2, file: !3, line: 72, type: !219, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "ntp_tick_adj", scope: !2, file: !3, line: 83, type: !206, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "ntp_next_leap_sec", scope: !2, file: !3, line: 86, type: !391, isLocal: true, isDefinition: true)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !392, line: 8, baseType: !208)
!392 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "time_state", scope: !2, file: !3, line: 57, type: !150, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "sync_work", scope: !2, file: !3, line: 499, type: !397, isLocal: true, isDefinition: true)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !22, line: 98, size: 256, elements: !398)
!398 = !{!399, !406, !412}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !397, file: !22, line: 99, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !401, line: 13, baseType: !402)
!401 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !306, line: 181, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 179, size: 64, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !403, file: !306, line: 180, baseType: !206, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !397, file: !22, line: 100, baseType: !407, size: 128, offset: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !306, line: 190, size: 128, elements: !408)
!408 = !{!409, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !306, line: 191, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !407, file: !306, line: 191, baseType: !410, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !397, file: !22, line: 101, baseType: !413, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !22, line: 21, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "offset_nsec", scope: !420, file: !3, line: 629, type: !218, isLocal: true, isDefinition: true)
!420 = distinct !DISubprogram(name: "sync_hw_clock", scope: !3, file: !3, line: 622, type: !415, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!421 = !{!422, !423, !428, !429, !430}
!422 = !DILocalVariable(name: "work", arg: 1, scope: !420, file: !3, line: 622, type: !417)
!423 = !DILocalVariable(name: "now", scope: !420, file: !3, line: 630, type: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !392, line: 13, size: 128, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !424, file: !392, line: 14, baseType: !391, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !424, file: !392, line: 15, baseType: !219, size: 64, offset: 64)
!428 = !DILocalVariable(name: "to_set", scope: !420, file: !3, line: 630, type: !424)
!429 = !DILocalVariable(name: "res", scope: !420, file: !3, line: 631, type: !150)
!430 = !DILabel(scope: !420, name: "rearm", file: !3, line: 659)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !3, line: 587, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 40, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 5)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "time_reftime", scope: !2, file: !3, line: 78, type: !391, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "time_constant", scope: !2, file: !3, line: 66, type: !219, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "__setup_str_ntp_tick_adj_setup", scope: !2, file: !3, line: 1089, type: !442, isLocal: true, isDefinition: true, align: 8)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 112, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 14)
!445 = !{i32 7, !"Dwarf Version", i32 5}
!446 = !{i32 2, !"Debug Info Version", i32 3}
!447 = !{i32 1, !"wchar_size", i32 2}
!448 = !{i32 8, !"cf-protection-branch", i32 1}
!449 = !{i32 4, !"function_return_thunk_extern", i32 1}
!450 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!451 = !{i32 1, !"Code Model", i32 2}
!452 = !{i32 1, !"override-stack-alignment", i32 8}
!453 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!454 = distinct !DISubprogram(name: "ntp_clear", scope: !3, file: !3, line: 351, type: !455, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!455 = !DISubroutineType(types: !456)
!456 = !{null}
!457 = !DILocation(line: 353, column: 14, scope: !454)
!458 = !DILocation(line: 354, column: 14, scope: !454)
!459 = !DILocation(line: 355, column: 16, scope: !454)
!460 = !DILocation(line: 356, column: 16, scope: !454)
!461 = !DILocation(line: 358, column: 2, scope: !454)
!462 = !DILocation(line: 360, column: 16, scope: !454)
!463 = !DILocation(line: 360, column: 14, scope: !454)
!464 = !DILocation(line: 361, column: 14, scope: !454)
!465 = !DILocation(line: 363, column: 20, scope: !454)
!466 = !DILocation(line: 365, column: 2, scope: !454)
!467 = !DILocation(line: 366, column: 1, scope: !454)
!468 = distinct !DISubprogram(name: "ntp_update_frequency", scope: !3, file: !3, line: 259, type: !455, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!469 = !{!470, !471}
!470 = !DILocalVariable(name: "second_length", scope: !468, file: !3, line: 261, type: !211)
!471 = !DILocalVariable(name: "new_base", scope: !468, file: !3, line: 262, type: !211)
!472 = !DILocation(line: 261, column: 2, scope: !468)
!473 = !DILocation(line: 261, column: 6, scope: !468)
!474 = !DILocation(line: 262, column: 2, scope: !468)
!475 = !DILocation(line: 262, column: 6, scope: !468)
!476 = !DILocation(line: 264, column: 26, scope: !468)
!477 = !DILocation(line: 264, column: 36, scope: !468)
!478 = !DILocation(line: 264, column: 52, scope: !468)
!479 = !DILocation(line: 265, column: 7, scope: !468)
!480 = !DILocation(line: 264, column: 18, scope: !468)
!481 = !DILocation(line: 267, column: 20, scope: !468)
!482 = !DILocation(line: 267, column: 17, scope: !468)
!483 = !DILocation(line: 268, column: 20, scope: !468)
!484 = !DILocation(line: 268, column: 17, scope: !468)
!485 = !DILocation(line: 270, column: 24, scope: !468)
!486 = !DILocation(line: 270, column: 16, scope: !468)
!487 = !DILocation(line: 270, column: 43, scope: !468)
!488 = !DILocation(line: 270, column: 14, scope: !468)
!489 = !DILocation(line: 271, column: 23, scope: !468)
!490 = !DILocation(line: 271, column: 15, scope: !468)
!491 = !DILocation(line: 271, column: 13, scope: !468)
!492 = !DILocation(line: 277, column: 18, scope: !468)
!493 = !DILocation(line: 277, column: 29, scope: !468)
!494 = !DILocation(line: 277, column: 27, scope: !468)
!495 = !DILocation(line: 277, column: 15, scope: !468)
!496 = !DILocation(line: 278, column: 22, scope: !468)
!497 = !DILocation(line: 278, column: 20, scope: !468)
!498 = !DILocation(line: 279, column: 1, scope: !468)
!499 = distinct !DISubprogram(name: "pps_clear", scope: !3, file: !3, line: 216, type: !455, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!500 = !DILocation(line: 216, column: 37, scope: !499)
!501 = distinct !DISubprogram(name: "ntp_tick_length", scope: !3, file: !3, line: 369, type: !502, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!502 = !DISubroutineType(types: !503)
!503 = !{!211}
!504 = !DILocation(line: 371, column: 9, scope: !501)
!505 = !DILocation(line: 371, column: 2, scope: !501)
!506 = distinct !DISubprogram(name: "ntp_get_next_leap", scope: !3, file: !3, line: 380, type: !374, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!507 = !{!508}
!508 = !DILocalVariable(name: "ret", scope: !506, file: !3, line: 382, type: !275)
!509 = !DILocation(line: 382, column: 2, scope: !506)
!510 = !DILocation(line: 382, column: 10, scope: !506)
!511 = !DILocation(line: 384, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !3, line: 384, column: 6)
!513 = !DILocation(line: 384, column: 18, scope: !512)
!514 = !DILocation(line: 384, column: 31, scope: !512)
!515 = !DILocation(line: 384, column: 35, scope: !512)
!516 = !DILocation(line: 384, column: 47, scope: !512)
!517 = !DILocation(line: 384, column: 6, scope: !506)
!518 = !DILocation(line: 385, column: 20, scope: !512)
!519 = !DILocation(line: 385, column: 10, scope: !512)
!520 = !DILocation(line: 385, column: 3, scope: !512)
!521 = !DILocation(line: 386, column: 6, scope: !506)
!522 = !DILocation(line: 387, column: 9, scope: !506)
!523 = !DILocation(line: 387, column: 2, scope: !506)
!524 = !DILocation(line: 388, column: 1, scope: !506)
!525 = distinct !DISubprogram(name: "ktime_set", scope: !276, file: !276, line: 38, type: !526, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!526 = !DISubroutineType(types: !527)
!527 = !{!275, !528, !529}
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "secs", arg: 1, scope: !525, file: !276, line: 38, type: !528)
!532 = !DILocalVariable(name: "nsecs", arg: 2, scope: !525, file: !276, line: 38, type: !529)
!533 = !DILocation(line: 38, column: 43, scope: !525)
!534 = !DILocation(line: 38, column: 69, scope: !525)
!535 = !DILocation(line: 40, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !525, file: !276, line: 40, column: 6)
!537 = !DILocation(line: 40, column: 6, scope: !525)
!538 = !DILocation(line: 41, column: 3, scope: !536)
!539 = !DILocation(line: 43, column: 9, scope: !525)
!540 = !DILocation(line: 43, column: 14, scope: !525)
!541 = !DILocation(line: 43, column: 36, scope: !525)
!542 = !DILocation(line: 43, column: 29, scope: !525)
!543 = !DILocation(line: 43, column: 2, scope: !525)
!544 = !DILocation(line: 44, column: 1, scope: !525)
!545 = distinct !DISubprogram(name: "second_overflow", scope: !3, file: !3, line: 400, type: !546, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!150, !391}
!548 = !{!549, !550, !551, !552, !555}
!549 = !DILocalVariable(name: "secs", arg: 1, scope: !545, file: !3, line: 400, type: !391)
!550 = !DILocalVariable(name: "delta", scope: !545, file: !3, line: 402, type: !206)
!551 = !DILocalVariable(name: "leap", scope: !545, file: !3, line: 403, type: !150)
!552 = !DILocalVariable(name: "rem", scope: !545, file: !3, line: 404, type: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !207, line: 20, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !209, line: 26, baseType: !150)
!555 = !DILabel(scope: !545, name: "out", file: !3, line: 493)
!556 = !DILocation(line: 400, column: 30, scope: !545)
!557 = !DILocation(line: 402, column: 2, scope: !545)
!558 = !DILocation(line: 402, column: 6, scope: !545)
!559 = !DILocation(line: 403, column: 2, scope: !545)
!560 = !DILocation(line: 403, column: 6, scope: !545)
!561 = !DILocation(line: 404, column: 2, scope: !545)
!562 = !DILocation(line: 404, column: 6, scope: !545)
!563 = !DILocation(line: 411, column: 10, scope: !545)
!564 = !DILocation(line: 411, column: 2, scope: !545)
!565 = !DILocation(line: 413, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 413, column: 7)
!567 = distinct !DILexicalBlock(scope: !545, file: !3, line: 411, column: 22)
!568 = !DILocation(line: 413, column: 19, scope: !566)
!569 = !DILocation(line: 413, column: 7, scope: !567)
!570 = !DILocation(line: 414, column: 15, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !3, line: 413, column: 30)
!572 = !DILocation(line: 415, column: 16, scope: !571)
!573 = !DILocation(line: 415, column: 4, scope: !571)
!574 = !DILocation(line: 416, column: 24, scope: !571)
!575 = !DILocation(line: 416, column: 29, scope: !571)
!576 = !DILocation(line: 416, column: 46, scope: !571)
!577 = !DILocation(line: 416, column: 44, scope: !571)
!578 = !DILocation(line: 416, column: 22, scope: !571)
!579 = !DILocation(line: 417, column: 3, scope: !571)
!580 = !DILocation(line: 417, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !566, file: !3, line: 417, column: 14)
!582 = !DILocation(line: 417, column: 26, scope: !581)
!583 = !DILocation(line: 417, column: 14, scope: !566)
!584 = !DILocation(line: 418, column: 15, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !3, line: 417, column: 37)
!586 = !DILocation(line: 419, column: 16, scope: !585)
!587 = !DILocation(line: 419, column: 21, scope: !585)
!588 = !DILocation(line: 419, column: 4, scope: !585)
!589 = !DILocation(line: 420, column: 24, scope: !585)
!590 = !DILocation(line: 420, column: 29, scope: !585)
!591 = !DILocation(line: 420, column: 46, scope: !585)
!592 = !DILocation(line: 420, column: 44, scope: !585)
!593 = !DILocation(line: 420, column: 22, scope: !585)
!594 = !DILocation(line: 421, column: 3, scope: !585)
!595 = !DILocation(line: 422, column: 3, scope: !567)
!596 = !DILocation(line: 424, column: 9, scope: !597)
!597 = distinct !DILexicalBlock(scope: !567, file: !3, line: 424, column: 7)
!598 = !DILocation(line: 424, column: 21, scope: !597)
!599 = !DILocation(line: 424, column: 7, scope: !567)
!600 = !DILocation(line: 425, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !3, line: 424, column: 33)
!602 = !DILocation(line: 426, column: 15, scope: !601)
!603 = !DILocation(line: 427, column: 3, scope: !601)
!604 = !DILocation(line: 427, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !3, line: 427, column: 14)
!606 = !DILocation(line: 427, column: 22, scope: !605)
!607 = !DILocation(line: 427, column: 19, scope: !605)
!608 = !DILocation(line: 427, column: 14, scope: !597)
!609 = !DILocation(line: 428, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !3, line: 427, column: 41)
!611 = !DILocation(line: 429, column: 15, scope: !610)
!612 = !DILocation(line: 430, column: 4, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !3, line: 430, column: 4)
!614 = !DILocation(line: 430, column: 4, scope: !615)
!615 = distinct !DILexicalBlock(scope: !613, file: !3, line: 430, column: 4)
!616 = !DILocation(line: 432, column: 3, scope: !610)
!617 = !DILocation(line: 433, column: 3, scope: !567)
!618 = !DILocation(line: 435, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !567, file: !3, line: 435, column: 7)
!620 = !DILocation(line: 435, column: 21, scope: !619)
!621 = !DILocation(line: 435, column: 7, scope: !567)
!622 = !DILocation(line: 436, column: 22, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !3, line: 435, column: 33)
!624 = !DILocation(line: 437, column: 15, scope: !623)
!625 = !DILocation(line: 438, column: 3, scope: !623)
!626 = !DILocation(line: 438, column: 14, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !3, line: 438, column: 14)
!628 = !DILocation(line: 438, column: 22, scope: !627)
!629 = !DILocation(line: 438, column: 19, scope: !627)
!630 = !DILocation(line: 438, column: 14, scope: !619)
!631 = !DILocation(line: 439, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 438, column: 41)
!633 = !DILocation(line: 440, column: 22, scope: !632)
!634 = !DILocation(line: 441, column: 15, scope: !632)
!635 = !DILocation(line: 442, column: 4, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !3, line: 442, column: 4)
!637 = !DILocation(line: 442, column: 4, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !3, line: 442, column: 4)
!639 = !DILocation(line: 444, column: 3, scope: !632)
!640 = !DILocation(line: 445, column: 3, scope: !567)
!641 = !DILocation(line: 447, column: 21, scope: !567)
!642 = !DILocation(line: 448, column: 14, scope: !567)
!643 = !DILocation(line: 449, column: 3, scope: !567)
!644 = !DILocation(line: 451, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !567, file: !3, line: 451, column: 7)
!646 = !DILocation(line: 451, column: 21, scope: !645)
!647 = !DILocation(line: 451, column: 7, scope: !567)
!648 = !DILocation(line: 452, column: 15, scope: !645)
!649 = !DILocation(line: 452, column: 4, scope: !645)
!650 = !DILocation(line: 453, column: 3, scope: !567)
!651 = !DILocation(line: 458, column: 16, scope: !545)
!652 = !DILocation(line: 459, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !545, file: !3, line: 459, column: 6)
!654 = !DILocation(line: 459, column: 20, scope: !653)
!655 = !DILocation(line: 459, column: 6, scope: !545)
!656 = !DILocation(line: 460, column: 17, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !3, line: 459, column: 39)
!658 = !DILocation(line: 461, column: 15, scope: !657)
!659 = !DILocation(line: 462, column: 2, scope: !657)
!660 = !DILocation(line: 465, column: 17, scope: !545)
!661 = !DILocation(line: 465, column: 15, scope: !545)
!662 = !DILocation(line: 467, column: 29, scope: !545)
!663 = !DILocation(line: 467, column: 12, scope: !545)
!664 = !DILocation(line: 467, column: 10, scope: !545)
!665 = !DILocation(line: 468, column: 17, scope: !545)
!666 = !DILocation(line: 468, column: 14, scope: !545)
!667 = !DILocation(line: 469, column: 17, scope: !545)
!668 = !DILocation(line: 469, column: 14, scope: !545)
!669 = !DILocation(line: 472, column: 2, scope: !545)
!670 = !DILocation(line: 474, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !545, file: !3, line: 474, column: 6)
!672 = !DILocation(line: 474, column: 6, scope: !545)
!673 = !DILocation(line: 475, column: 3, scope: !671)
!674 = !DILocation(line: 477, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !545, file: !3, line: 477, column: 6)
!676 = !DILocation(line: 477, column: 18, scope: !675)
!677 = !DILocation(line: 477, column: 6, scope: !545)
!678 = !DILocation(line: 478, column: 15, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !3, line: 477, column: 33)
!680 = !DILocation(line: 479, column: 15, scope: !679)
!681 = !DILocation(line: 480, column: 3, scope: !679)
!682 = !DILocation(line: 483, column: 6, scope: !683)
!683 = distinct !DILexicalBlock(scope: !545, file: !3, line: 483, column: 6)
!684 = !DILocation(line: 483, column: 18, scope: !683)
!685 = !DILocation(line: 483, column: 6, scope: !545)
!686 = !DILocation(line: 484, column: 15, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !3, line: 483, column: 34)
!688 = !DILocation(line: 485, column: 15, scope: !687)
!689 = !DILocation(line: 486, column: 3, scope: !687)
!690 = !DILocation(line: 489, column: 23, scope: !545)
!691 = !DILocation(line: 489, column: 35, scope: !545)
!692 = !DILocation(line: 489, column: 51, scope: !545)
!693 = !DILocation(line: 490, column: 9, scope: !545)
!694 = !DILocation(line: 489, column: 14, scope: !545)
!695 = !DILocation(line: 491, column: 14, scope: !545)
!696 = !DILocation(line: 491, column: 2, scope: !545)
!697 = !DILocation(line: 493, column: 1, scope: !545)
!698 = !DILocation(line: 494, column: 9, scope: !545)
!699 = !DILocation(line: 495, column: 1, scope: !545)
!700 = !DILocation(line: 494, column: 2, scope: !545)
!701 = distinct !DISubprogram(name: "div_s64_rem", scope: !702, file: !702, line: 40, type: !703, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!702 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!703 = !DISubroutineType(types: !704)
!704 = !{!206, !206, !553, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!706 = !{!707, !708, !709}
!707 = !DILocalVariable(name: "dividend", arg: 1, scope: !701, file: !702, line: 40, type: !206)
!708 = !DILocalVariable(name: "divisor", arg: 2, scope: !701, file: !702, line: 40, type: !553)
!709 = !DILocalVariable(name: "remainder", arg: 3, scope: !701, file: !702, line: 40, type: !705)
!710 = !DILocation(line: 40, column: 35, scope: !701)
!711 = !DILocation(line: 40, column: 49, scope: !701)
!712 = !DILocation(line: 40, column: 63, scope: !701)
!713 = !DILocation(line: 42, column: 15, scope: !701)
!714 = !DILocation(line: 42, column: 26, scope: !701)
!715 = !DILocation(line: 42, column: 24, scope: !701)
!716 = !DILocation(line: 42, column: 3, scope: !701)
!717 = !DILocation(line: 42, column: 13, scope: !701)
!718 = !DILocation(line: 43, column: 9, scope: !701)
!719 = !DILocation(line: 43, column: 20, scope: !701)
!720 = !DILocation(line: 43, column: 18, scope: !701)
!721 = !DILocation(line: 43, column: 2, scope: !701)
!722 = !DISubprogram(name: "_printk", scope: !723, file: !723, line: 153, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!724 = !DISubroutineType(types: !725)
!725 = !{!150, !238, null}
!726 = distinct !DISubprogram(name: "ntp_offset_chunk", scope: !3, file: !3, line: 210, type: !727, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{!206, !206}
!729 = !{!730, !731, !733}
!730 = !DILocalVariable(name: "offset", arg: 1, scope: !726, file: !3, line: 210, type: !206)
!731 = !DILocalVariable(name: "__x", scope: !732, file: !3, line: 212, type: !206)
!732 = distinct !DILexicalBlock(scope: !726, file: !3, line: 212, column: 9)
!733 = !DILocalVariable(name: "__s", scope: !732, file: !3, line: 212, type: !219)
!734 = !DILocation(line: 210, column: 40, scope: !726)
!735 = !DILocation(line: 212, column: 9, scope: !732)
!736 = !DILocation(line: 212, column: 9, scope: !726)
!737 = !DILocation(line: 212, column: 2, scope: !726)
!738 = distinct !DISubprogram(name: "pps_dec_valid", scope: !3, file: !3, line: 217, type: !455, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!739 = !DILocation(line: 217, column: 41, scope: !738)
!740 = distinct !DISubprogram(name: "update_persistent_clock64", scope: !3, file: !3, line: 568, type: !741, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!150, !424}
!743 = !{!744}
!744 = !DILocalVariable(name: "now64", arg: 1, scope: !740, file: !3, line: 568, type: !424)
!745 = !DILocation(line: 568, column: 56, scope: !740)
!746 = !DILocation(line: 570, column: 2, scope: !740)
!747 = distinct !DISubprogram(name: "ntp_notify_cmos_timer", scope: !3, file: !3, line: 663, type: !455, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!748 = !DILocation(line: 670, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !747, file: !3, line: 670, column: 6)
!750 = !DILocation(line: 670, column: 19, scope: !749)
!751 = !DILocation(line: 670, column: 23, scope: !749)
!752 = !DILocation(line: 670, column: 6, scope: !747)
!753 = !DILocation(line: 671, column: 14, scope: !749)
!754 = !DILocation(line: 671, column: 3, scope: !749)
!755 = !DILocation(line: 672, column: 1, scope: !747)
!756 = distinct !DISubprogram(name: "ntp_synced", scope: !3, file: !3, line: 245, type: !757, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!757 = !DISubroutineType(types: !758)
!758 = !{!150}
!759 = !DILocation(line: 247, column: 11, scope: !756)
!760 = !DILocation(line: 247, column: 23, scope: !756)
!761 = !DILocation(line: 247, column: 9, scope: !756)
!762 = !DILocation(line: 247, column: 2, scope: !756)
!763 = distinct !DISubprogram(name: "hrtimer_is_queued", scope: !17, file: !17, line: 470, type: !764, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !282}
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !306, line: 35, baseType: !767)
!767 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!768 = !{!769}
!769 = !DILocalVariable(name: "timer", arg: 1, scope: !763, file: !17, line: 470, type: !282)
!770 = !DILocation(line: 470, column: 54, scope: !763)
!771 = !DILocation(line: 473, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !763, file: !17, line: 473, column: 12)
!773 = !DILocation(line: 473, column: 12, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !17, line: 473, column: 12)
!775 = !DILocation(line: 473, column: 12, scope: !763)
!776 = !DILocation(line: 473, column: 36, scope: !763)
!777 = !DILocation(line: 473, column: 10, scope: !763)
!778 = !DILocation(line: 473, column: 9, scope: !763)
!779 = !DILocation(line: 473, column: 2, scope: !763)
!780 = distinct !DISubprogram(name: "queue_work", scope: !22, file: !22, line: 559, type: !781, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!781 = !DISubroutineType(types: !782)
!782 = !{!766, !783, !417}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !22, line: 18, flags: DIFlagFwdDecl)
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "wq", arg: 1, scope: !780, file: !22, line: 559, type: !783)
!787 = !DILocalVariable(name: "work", arg: 2, scope: !780, file: !22, line: 560, type: !417)
!788 = !DILocation(line: 559, column: 56, scope: !780)
!789 = !DILocation(line: 560, column: 30, scope: !780)
!790 = !DILocation(line: 562, column: 41, scope: !780)
!791 = !DILocation(line: 562, column: 45, scope: !780)
!792 = !DILocation(line: 562, column: 9, scope: !780)
!793 = !DILocation(line: 562, column: 2, scope: !780)
!794 = distinct !DISubprogram(name: "__do_adjtimex", scope: !3, file: !3, line: 761, type: !795, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!795 = !DISubroutineType(types: !796)
!796 = !{!150, !797, !826, !705, !828}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex", file: !799, line: 102, size: 1664, elements: !800)
!799 = !DIFile(filename: "./include/uapi/linux/timex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37fb729d65fdd1562db85b44515cd515")
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !798, file: !799, line: 103, baseType: !7, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !798, file: !799, line: 105, baseType: !210, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !798, file: !799, line: 106, baseType: !210, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !798, file: !799, line: 107, baseType: !210, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !798, file: !799, line: 108, baseType: !210, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !798, file: !799, line: 109, baseType: !150, size: 32, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !798, file: !799, line: 111, baseType: !210, size: 64, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !798, file: !799, line: 112, baseType: !210, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !798, file: !799, line: 113, baseType: !210, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !798, file: !799, line: 116, baseType: !811, size: 128, offset: 576)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex_timeval", file: !799, line: 97, size: 128, elements: !812)
!812 = !{!813, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !811, file: !799, line: 98, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !349, line: 93, baseType: !210)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !811, file: !799, line: 99, baseType: !210, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !798, file: !799, line: 117, baseType: !210, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !798, file: !799, line: 119, baseType: !210, size: 64, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !798, file: !799, line: 120, baseType: !210, size: 64, offset: 832)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !798, file: !799, line: 121, baseType: !150, size: 32, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !798, file: !799, line: 123, baseType: !210, size: 64, offset: 960)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !798, file: !799, line: 124, baseType: !210, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !798, file: !799, line: 125, baseType: !210, size: 64, offset: 1088)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !798, file: !799, line: 126, baseType: !210, size: 64, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !798, file: !799, line: 127, baseType: !210, size: 64, offset: 1216)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !798, file: !799, line: 129, baseType: !150, size: 32, offset: 1280)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audit_ntp_data", file: !6, line: 93, size: 768, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !829, file: !6, line: 94, baseType: !832, size: 768)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 768, elements: !837)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audit_ntp_val", file: !6, line: 89, size: 128, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "oldval", scope: !833, file: !6, line: 90, baseType: !210, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "newval", scope: !833, file: !6, line: 90, baseType: !210, size: 64, offset: 64)
!837 = !{!838}
!838 = !DISubrange(count: 6)
!839 = !{!840, !841, !842, !843, !844, !845, !848, !851, !852, !854}
!840 = !DILocalVariable(name: "txc", arg: 1, scope: !794, file: !3, line: 761, type: !797)
!841 = !DILocalVariable(name: "ts", arg: 2, scope: !794, file: !3, line: 761, type: !826)
!842 = !DILocalVariable(name: "time_tai", arg: 3, scope: !794, file: !3, line: 762, type: !705)
!843 = !DILocalVariable(name: "ad", arg: 4, scope: !794, file: !3, line: 762, type: !828)
!844 = !DILocalVariable(name: "result", scope: !794, file: !3, line: 764, type: !150)
!845 = !DILocalVariable(name: "save_adjust", scope: !846, file: !3, line: 767, type: !219)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 766, column: 32)
!847 = distinct !DILexicalBlock(scope: !794, file: !3, line: 766, column: 6)
!848 = !DILocalVariable(name: "__x", scope: !849, file: !3, line: 796, type: !206)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 796, column: 17)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 778, column: 9)
!851 = !DILocalVariable(name: "__s", scope: !849, file: !3, line: 796, type: !150)
!852 = !DILocalVariable(name: "__x", scope: !853, file: !3, line: 807, type: !210)
!853 = distinct !DILexicalBlock(scope: !794, file: !3, line: 807, column: 17)
!854 = !DILocalVariable(name: "__s", scope: !853, file: !3, line: 807, type: !150)
!855 = !DILocation(line: 761, column: 42, scope: !794)
!856 = !DILocation(line: 761, column: 72, scope: !794)
!857 = !DILocation(line: 762, column: 10, scope: !794)
!858 = !DILocation(line: 762, column: 43, scope: !794)
!859 = !DILocation(line: 764, column: 2, scope: !794)
!860 = !DILocation(line: 764, column: 6, scope: !794)
!861 = !DILocation(line: 766, column: 6, scope: !847)
!862 = !DILocation(line: 766, column: 11, scope: !847)
!863 = !DILocation(line: 766, column: 17, scope: !847)
!864 = !DILocation(line: 766, column: 6, scope: !794)
!865 = !DILocation(line: 767, column: 3, scope: !846)
!866 = !DILocation(line: 767, column: 8, scope: !846)
!867 = !DILocation(line: 767, column: 22, scope: !846)
!868 = !DILocation(line: 769, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !846, file: !3, line: 769, column: 7)
!870 = !DILocation(line: 769, column: 14, scope: !869)
!871 = !DILocation(line: 769, column: 20, scope: !869)
!872 = !DILocation(line: 769, column: 7, scope: !846)
!873 = !DILocation(line: 771, column: 18, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !3, line: 769, column: 44)
!875 = !DILocation(line: 771, column: 23, scope: !874)
!876 = !DILocation(line: 771, column: 16, scope: !874)
!877 = !DILocation(line: 772, column: 4, scope: !874)
!878 = !DILocation(line: 774, column: 22, scope: !874)
!879 = !DILocation(line: 774, column: 44, scope: !874)
!880 = !DILocation(line: 774, column: 4, scope: !874)
!881 = !DILocation(line: 775, column: 22, scope: !874)
!882 = !DILocation(line: 775, column: 44, scope: !874)
!883 = !DILocation(line: 775, column: 4, scope: !874)
!884 = !DILocation(line: 776, column: 3, scope: !874)
!885 = !DILocation(line: 777, column: 17, scope: !846)
!886 = !DILocation(line: 777, column: 3, scope: !846)
!887 = !DILocation(line: 777, column: 8, scope: !846)
!888 = !DILocation(line: 777, column: 15, scope: !846)
!889 = !DILocation(line: 778, column: 2, scope: !847)
!890 = !DILocation(line: 778, column: 2, scope: !846)
!891 = !DILocation(line: 780, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !850, file: !3, line: 780, column: 7)
!893 = !DILocation(line: 780, column: 12, scope: !892)
!894 = !DILocation(line: 780, column: 7, scope: !850)
!895 = !DILocation(line: 781, column: 22, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 780, column: 19)
!897 = !DILocation(line: 781, column: 44, scope: !896)
!898 = !DILocation(line: 781, column: 4, scope: !896)
!899 = !DILocation(line: 782, column: 22, scope: !896)
!900 = !DILocation(line: 782, column: 42, scope: !896)
!901 = !DILocation(line: 782, column: 4, scope: !896)
!902 = !DILocation(line: 783, column: 22, scope: !896)
!903 = !DILocation(line: 783, column: 44, scope: !896)
!904 = !DILocation(line: 783, column: 4, scope: !896)
!905 = !DILocation(line: 784, column: 22, scope: !896)
!906 = !DILocation(line: 784, column: 42, scope: !896)
!907 = !DILocation(line: 784, column: 41, scope: !896)
!908 = !DILocation(line: 784, column: 4, scope: !896)
!909 = !DILocation(line: 785, column: 22, scope: !896)
!910 = !DILocation(line: 785, column: 42, scope: !896)
!911 = !DILocation(line: 785, column: 4, scope: !896)
!912 = !DILocation(line: 787, column: 27, scope: !896)
!913 = !DILocation(line: 787, column: 32, scope: !896)
!914 = !DILocation(line: 787, column: 4, scope: !896)
!915 = !DILocation(line: 789, column: 22, scope: !896)
!916 = !DILocation(line: 789, column: 44, scope: !896)
!917 = !DILocation(line: 789, column: 4, scope: !896)
!918 = !DILocation(line: 790, column: 22, scope: !896)
!919 = !DILocation(line: 790, column: 42, scope: !896)
!920 = !DILocation(line: 790, column: 4, scope: !896)
!921 = !DILocation(line: 791, column: 22, scope: !896)
!922 = !DILocation(line: 791, column: 44, scope: !896)
!923 = !DILocation(line: 791, column: 4, scope: !896)
!924 = !DILocation(line: 792, column: 22, scope: !896)
!925 = !DILocation(line: 792, column: 42, scope: !896)
!926 = !DILocation(line: 792, column: 41, scope: !896)
!927 = !DILocation(line: 792, column: 4, scope: !896)
!928 = !DILocation(line: 793, column: 22, scope: !896)
!929 = !DILocation(line: 793, column: 42, scope: !896)
!930 = !DILocation(line: 793, column: 4, scope: !896)
!931 = !DILocation(line: 794, column: 3, scope: !896)
!932 = !DILocation(line: 796, column: 17, scope: !849)
!933 = !DILocation(line: 796, column: 17, scope: !850)
!934 = !DILocation(line: 796, column: 3, scope: !850)
!935 = !DILocation(line: 796, column: 8, scope: !850)
!936 = !DILocation(line: 796, column: 15, scope: !850)
!937 = !DILocation(line: 798, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !850, file: !3, line: 798, column: 7)
!939 = !DILocation(line: 798, column: 21, scope: !938)
!940 = !DILocation(line: 798, column: 7, scope: !850)
!941 = !DILocation(line: 799, column: 26, scope: !938)
!942 = !DILocation(line: 799, column: 31, scope: !938)
!943 = !DILocation(line: 799, column: 18, scope: !938)
!944 = !DILocation(line: 799, column: 4, scope: !938)
!945 = !DILocation(line: 799, column: 9, scope: !938)
!946 = !DILocation(line: 799, column: 16, scope: !938)
!947 = !DILocation(line: 802, column: 11, scope: !794)
!948 = !DILocation(line: 802, column: 9, scope: !794)
!949 = !DILocation(line: 804, column: 22, scope: !950)
!950 = distinct !DILexicalBlock(scope: !794, file: !3, line: 804, column: 6)
!951 = !DILocation(line: 804, column: 6, scope: !950)
!952 = !DILocation(line: 804, column: 6, scope: !794)
!953 = !DILocation(line: 805, column: 10, scope: !950)
!954 = !DILocation(line: 805, column: 3, scope: !950)
!955 = !DILocation(line: 807, column: 17, scope: !853)
!956 = !DILocation(line: 807, column: 17, scope: !794)
!957 = !DILocation(line: 807, column: 2, scope: !794)
!958 = !DILocation(line: 807, column: 7, scope: !794)
!959 = !DILocation(line: 807, column: 15, scope: !794)
!960 = !DILocation(line: 809, column: 21, scope: !794)
!961 = !DILocation(line: 809, column: 2, scope: !794)
!962 = !DILocation(line: 809, column: 7, scope: !794)
!963 = !DILocation(line: 809, column: 19, scope: !794)
!964 = !DILocation(line: 810, column: 21, scope: !794)
!965 = !DILocation(line: 810, column: 2, scope: !794)
!966 = !DILocation(line: 810, column: 7, scope: !794)
!967 = !DILocation(line: 810, column: 19, scope: !794)
!968 = !DILocation(line: 811, column: 19, scope: !794)
!969 = !DILocation(line: 811, column: 2, scope: !794)
!970 = !DILocation(line: 811, column: 7, scope: !794)
!971 = !DILocation(line: 811, column: 17, scope: !794)
!972 = !DILocation(line: 812, column: 21, scope: !794)
!973 = !DILocation(line: 812, column: 2, scope: !794)
!974 = !DILocation(line: 812, column: 7, scope: !794)
!975 = !DILocation(line: 812, column: 19, scope: !794)
!976 = !DILocation(line: 813, column: 2, scope: !794)
!977 = !DILocation(line: 813, column: 7, scope: !794)
!978 = !DILocation(line: 813, column: 20, scope: !794)
!979 = !DILocation(line: 814, column: 2, scope: !794)
!980 = !DILocation(line: 814, column: 7, scope: !794)
!981 = !DILocation(line: 814, column: 20, scope: !794)
!982 = !DILocation(line: 815, column: 17, scope: !794)
!983 = !DILocation(line: 815, column: 2, scope: !794)
!984 = !DILocation(line: 815, column: 7, scope: !794)
!985 = !DILocation(line: 815, column: 15, scope: !794)
!986 = !DILocation(line: 816, column: 17, scope: !794)
!987 = !DILocation(line: 816, column: 16, scope: !794)
!988 = !DILocation(line: 816, column: 2, scope: !794)
!989 = !DILocation(line: 816, column: 7, scope: !794)
!990 = !DILocation(line: 816, column: 14, scope: !794)
!991 = !DILocation(line: 819, column: 17, scope: !794)
!992 = !DILocation(line: 819, column: 2, scope: !794)
!993 = !DILocation(line: 821, column: 21, scope: !794)
!994 = !DILocation(line: 821, column: 25, scope: !794)
!995 = !DILocation(line: 821, column: 2, scope: !794)
!996 = !DILocation(line: 821, column: 7, scope: !794)
!997 = !DILocation(line: 821, column: 12, scope: !794)
!998 = !DILocation(line: 821, column: 19, scope: !794)
!999 = !DILocation(line: 822, column: 22, scope: !794)
!1000 = !DILocation(line: 822, column: 26, scope: !794)
!1001 = !DILocation(line: 822, column: 2, scope: !794)
!1002 = !DILocation(line: 822, column: 7, scope: !794)
!1003 = !DILocation(line: 822, column: 12, scope: !794)
!1004 = !DILocation(line: 822, column: 20, scope: !794)
!1005 = !DILocation(line: 823, column: 8, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !794, file: !3, line: 823, column: 6)
!1007 = !DILocation(line: 823, column: 20, scope: !1006)
!1008 = !DILocation(line: 823, column: 6, scope: !794)
!1009 = !DILocation(line: 824, column: 23, scope: !1006)
!1010 = !DILocation(line: 824, column: 27, scope: !1006)
!1011 = !DILocation(line: 824, column: 35, scope: !1006)
!1012 = !DILocation(line: 824, column: 3, scope: !1006)
!1013 = !DILocation(line: 824, column: 8, scope: !1006)
!1014 = !DILocation(line: 824, column: 13, scope: !1006)
!1015 = !DILocation(line: 824, column: 21, scope: !1006)
!1016 = !DILocation(line: 827, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !794, file: !3, line: 827, column: 6)
!1018 = !DILocation(line: 827, column: 6, scope: !794)
!1019 = !DILocation(line: 828, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 828, column: 7)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 827, column: 49)
!1022 = !DILocation(line: 828, column: 19, scope: !1020)
!1023 = !DILocation(line: 828, column: 32, scope: !1020)
!1024 = !DILocation(line: 828, column: 36, scope: !1020)
!1025 = !DILocation(line: 828, column: 48, scope: !1020)
!1026 = !DILocation(line: 828, column: 7, scope: !1021)
!1027 = !DILocation(line: 829, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 828, column: 60)
!1029 = !DILocation(line: 830, column: 4, scope: !1028)
!1030 = !DILocation(line: 830, column: 9, scope: !1028)
!1031 = !DILocation(line: 830, column: 12, scope: !1028)
!1032 = !DILocation(line: 831, column: 4, scope: !1028)
!1033 = !DILocation(line: 831, column: 9, scope: !1028)
!1034 = !DILocation(line: 831, column: 14, scope: !1028)
!1035 = !DILocation(line: 831, column: 20, scope: !1028)
!1036 = !DILocation(line: 832, column: 3, scope: !1028)
!1037 = !DILocation(line: 833, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 833, column: 7)
!1039 = !DILocation(line: 833, column: 19, scope: !1038)
!1040 = !DILocation(line: 833, column: 32, scope: !1038)
!1041 = !DILocation(line: 833, column: 36, scope: !1038)
!1042 = !DILocation(line: 833, column: 48, scope: !1038)
!1043 = !DILocation(line: 833, column: 7, scope: !1021)
!1044 = !DILocation(line: 834, column: 11, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 833, column: 60)
!1046 = !DILocation(line: 835, column: 4, scope: !1045)
!1047 = !DILocation(line: 835, column: 9, scope: !1045)
!1048 = !DILocation(line: 835, column: 12, scope: !1045)
!1049 = !DILocation(line: 836, column: 4, scope: !1045)
!1050 = !DILocation(line: 836, column: 9, scope: !1045)
!1051 = !DILocation(line: 836, column: 14, scope: !1045)
!1052 = !DILocation(line: 836, column: 20, scope: !1045)
!1053 = !DILocation(line: 837, column: 3, scope: !1045)
!1054 = !DILocation(line: 838, column: 8, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 838, column: 7)
!1056 = !DILocation(line: 838, column: 19, scope: !1055)
!1057 = !DILocation(line: 838, column: 32, scope: !1055)
!1058 = !DILocation(line: 839, column: 7, scope: !1055)
!1059 = !DILocation(line: 839, column: 11, scope: !1055)
!1060 = !DILocation(line: 839, column: 21, scope: !1055)
!1061 = !DILocation(line: 839, column: 18, scope: !1055)
!1062 = !DILocation(line: 838, column: 7, scope: !1021)
!1063 = !DILocation(line: 840, column: 11, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 839, column: 41)
!1065 = !DILocation(line: 841, column: 3, scope: !1064)
!1066 = !DILocation(line: 842, column: 2, scope: !1021)
!1067 = !DILocation(line: 844, column: 9, scope: !794)
!1068 = !DILocation(line: 845, column: 1, scope: !794)
!1069 = !DILocation(line: 844, column: 2, scope: !794)
!1070 = distinct !DISubprogram(name: "audit_ntp_set_old", scope: !6, file: !6, line: 548, type: !1071, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !828, !5, !210}
!1073 = !{!1074, !1075, !1076}
!1074 = !DILocalVariable(name: "ad", arg: 1, scope: !1070, file: !6, line: 548, type: !828)
!1075 = !DILocalVariable(name: "type", arg: 2, scope: !1070, file: !6, line: 549, type: !5)
!1076 = !DILocalVariable(name: "val", arg: 3, scope: !1070, file: !6, line: 549, type: !210)
!1077 = !DILocation(line: 548, column: 61, scope: !1070)
!1078 = !DILocation(line: 549, column: 30, scope: !1070)
!1079 = !DILocation(line: 549, column: 46, scope: !1070)
!1080 = !DILocation(line: 551, column: 26, scope: !1070)
!1081 = !DILocation(line: 551, column: 2, scope: !1070)
!1082 = !DILocation(line: 551, column: 6, scope: !1070)
!1083 = !DILocation(line: 551, column: 11, scope: !1070)
!1084 = !DILocation(line: 551, column: 17, scope: !1070)
!1085 = !DILocation(line: 551, column: 24, scope: !1070)
!1086 = !DILocation(line: 552, column: 1, scope: !1070)
!1087 = distinct !DISubprogram(name: "audit_ntp_set_new", scope: !6, file: !6, line: 554, type: !1071, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1088)
!1088 = !{!1089, !1090, !1091}
!1089 = !DILocalVariable(name: "ad", arg: 1, scope: !1087, file: !6, line: 554, type: !828)
!1090 = !DILocalVariable(name: "type", arg: 2, scope: !1087, file: !6, line: 555, type: !5)
!1091 = !DILocalVariable(name: "val", arg: 3, scope: !1087, file: !6, line: 555, type: !210)
!1092 = !DILocation(line: 554, column: 61, scope: !1087)
!1093 = !DILocation(line: 555, column: 30, scope: !1087)
!1094 = !DILocation(line: 555, column: 46, scope: !1087)
!1095 = !DILocation(line: 557, column: 26, scope: !1087)
!1096 = !DILocation(line: 557, column: 2, scope: !1087)
!1097 = !DILocation(line: 557, column: 6, scope: !1087)
!1098 = !DILocation(line: 557, column: 11, scope: !1087)
!1099 = !DILocation(line: 557, column: 17, scope: !1087)
!1100 = !DILocation(line: 557, column: 24, scope: !1087)
!1101 = !DILocation(line: 558, column: 1, scope: !1087)
!1102 = distinct !DISubprogram(name: "process_adjtimex_modes", scope: !3, file: !3, line: 709, type: !1103, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1107)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1105, !705}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!1107 = !{!1108, !1109, !1110, !1114, !1115, !1117, !1118, !1123, !1124, !1125, !1129, !1130, !1131, !1136, !1137, !1138, !1141, !1142}
!1108 = !DILocalVariable(name: "txc", arg: 1, scope: !1102, file: !3, line: 709, type: !1105)
!1109 = !DILocalVariable(name: "time_tai", arg: 2, scope: !1102, file: !3, line: 710, type: !705)
!1110 = !DILocalVariable(name: "__UNIQUE_ID___x307", scope: !1111, file: !3, line: 723, type: !206)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 723, column: 15)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 721, column: 34)
!1113 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 721, column: 6)
!1114 = !DILocalVariable(name: "__UNIQUE_ID___y308", scope: !1111, file: !3, line: 723, type: !206)
!1115 = !DILocalVariable(name: "__UNIQUE_ID___x309", scope: !1116, file: !3, line: 724, type: !206)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 724, column: 15)
!1117 = !DILocalVariable(name: "__UNIQUE_ID___y310", scope: !1116, file: !3, line: 724, type: !206)
!1118 = !DILocalVariable(name: "__UNIQUE_ID___val311", scope: !1119, file: !3, line: 730, type: !1122)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 730, column: 19)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 730, column: 19)
!1121 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 729, column: 6)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!1123 = !DILocalVariable(name: "__UNIQUE_ID___lo312", scope: !1119, file: !3, line: 730, type: !150)
!1124 = !DILocalVariable(name: "__UNIQUE_ID___hi313", scope: !1119, file: !3, line: 730, type: !219)
!1125 = !DILocalVariable(name: "__UNIQUE_ID___val314", scope: !1126, file: !3, line: 733, type: !1122)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 733, column: 19)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 733, column: 19)
!1128 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 732, column: 6)
!1129 = !DILocalVariable(name: "__UNIQUE_ID___lo315", scope: !1126, file: !3, line: 733, type: !150)
!1130 = !DILocalVariable(name: "__UNIQUE_ID___hi316", scope: !1126, file: !3, line: 733, type: !219)
!1131 = !DILocalVariable(name: "__UNIQUE_ID___val317", scope: !1132, file: !3, line: 736, type: !1122)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 736, column: 19)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 736, column: 19)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 735, column: 34)
!1135 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 735, column: 6)
!1136 = !DILocalVariable(name: "__UNIQUE_ID___lo318", scope: !1132, file: !3, line: 736, type: !150)
!1137 = !DILocalVariable(name: "__UNIQUE_ID___hi319", scope: !1132, file: !3, line: 736, type: !150)
!1138 = !DILocalVariable(name: "__UNIQUE_ID___val320", scope: !1139, file: !3, line: 739, type: !219)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 739, column: 19)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 739, column: 19)
!1141 = !DILocalVariable(name: "__UNIQUE_ID___lo321", scope: !1139, file: !3, line: 739, type: !150)
!1142 = !DILocalVariable(name: "__UNIQUE_ID___hi322", scope: !1139, file: !3, line: 739, type: !150)
!1143 = !DILocation(line: 709, column: 72, scope: !1102)
!1144 = !DILocation(line: 710, column: 13, scope: !1102)
!1145 = !DILocation(line: 712, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 712, column: 6)
!1147 = !DILocation(line: 712, column: 11, scope: !1146)
!1148 = !DILocation(line: 712, column: 17, scope: !1146)
!1149 = !DILocation(line: 712, column: 6, scope: !1102)
!1150 = !DILocation(line: 713, column: 22, scope: !1146)
!1151 = !DILocation(line: 713, column: 3, scope: !1146)
!1152 = !DILocation(line: 715, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 715, column: 6)
!1154 = !DILocation(line: 715, column: 11, scope: !1153)
!1155 = !DILocation(line: 715, column: 17, scope: !1153)
!1156 = !DILocation(line: 715, column: 6, scope: !1102)
!1157 = !DILocation(line: 716, column: 15, scope: !1153)
!1158 = !DILocation(line: 716, column: 3, scope: !1153)
!1159 = !DILocation(line: 718, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 718, column: 6)
!1161 = !DILocation(line: 718, column: 11, scope: !1160)
!1162 = !DILocation(line: 718, column: 17, scope: !1160)
!1163 = !DILocation(line: 718, column: 6, scope: !1102)
!1164 = !DILocation(line: 719, column: 15, scope: !1160)
!1165 = !DILocation(line: 719, column: 3, scope: !1160)
!1166 = !DILocation(line: 721, column: 6, scope: !1113)
!1167 = !DILocation(line: 721, column: 11, scope: !1113)
!1168 = !DILocation(line: 721, column: 17, scope: !1113)
!1169 = !DILocation(line: 721, column: 6, scope: !1102)
!1170 = !DILocation(line: 722, column: 15, scope: !1112)
!1171 = !DILocation(line: 722, column: 20, scope: !1112)
!1172 = !DILocation(line: 722, column: 25, scope: !1112)
!1173 = !DILocation(line: 722, column: 13, scope: !1112)
!1174 = !DILocation(line: 723, column: 15, scope: !1111)
!1175 = !DILocation(line: 723, column: 15, scope: !1112)
!1176 = !DILocation(line: 723, column: 13, scope: !1112)
!1177 = !DILocation(line: 724, column: 15, scope: !1116)
!1178 = !DILocation(line: 724, column: 15, scope: !1112)
!1179 = !DILocation(line: 724, column: 13, scope: !1112)
!1180 = !DILocation(line: 726, column: 16, scope: !1112)
!1181 = !DILocation(line: 726, column: 3, scope: !1112)
!1182 = !DILocation(line: 727, column: 2, scope: !1112)
!1183 = !DILocation(line: 729, column: 6, scope: !1121)
!1184 = !DILocation(line: 729, column: 11, scope: !1121)
!1185 = !DILocation(line: 729, column: 17, scope: !1121)
!1186 = !DILocation(line: 729, column: 6, scope: !1102)
!1187 = !DILocation(line: 730, column: 19, scope: !1119)
!1188 = !DILocation(line: 730, column: 19, scope: !1120)
!1189 = !DILocation(line: 730, column: 19, scope: !1121)
!1190 = !DILocation(line: 730, column: 17, scope: !1121)
!1191 = !DILocation(line: 730, column: 3, scope: !1121)
!1192 = !DILocation(line: 732, column: 6, scope: !1128)
!1193 = !DILocation(line: 732, column: 11, scope: !1128)
!1194 = !DILocation(line: 732, column: 17, scope: !1128)
!1195 = !DILocation(line: 732, column: 6, scope: !1102)
!1196 = !DILocation(line: 733, column: 19, scope: !1126)
!1197 = !DILocation(line: 733, column: 19, scope: !1127)
!1198 = !DILocation(line: 733, column: 19, scope: !1128)
!1199 = !DILocation(line: 733, column: 17, scope: !1128)
!1200 = !DILocation(line: 733, column: 3, scope: !1128)
!1201 = !DILocation(line: 735, column: 6, scope: !1135)
!1202 = !DILocation(line: 735, column: 11, scope: !1135)
!1203 = !DILocation(line: 735, column: 17, scope: !1135)
!1204 = !DILocation(line: 735, column: 6, scope: !1102)
!1205 = !DILocation(line: 736, column: 19, scope: !1132)
!1206 = !DILocation(line: 736, column: 19, scope: !1133)
!1207 = !DILocation(line: 736, column: 19, scope: !1134)
!1208 = !DILocation(line: 736, column: 17, scope: !1134)
!1209 = !DILocation(line: 737, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 737, column: 7)
!1211 = !DILocation(line: 737, column: 21, scope: !1210)
!1212 = !DILocation(line: 737, column: 7, scope: !1134)
!1213 = !DILocation(line: 738, column: 18, scope: !1210)
!1214 = !DILocation(line: 738, column: 4, scope: !1210)
!1215 = !DILocation(line: 739, column: 19, scope: !1139)
!1216 = !DILocation(line: 739, column: 19, scope: !1140)
!1217 = !DILocation(line: 739, column: 19, scope: !1134)
!1218 = !DILocation(line: 739, column: 17, scope: !1134)
!1219 = !DILocation(line: 740, column: 2, scope: !1134)
!1220 = !DILocation(line: 742, column: 6, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 742, column: 6)
!1222 = !DILocation(line: 742, column: 11, scope: !1221)
!1223 = !DILocation(line: 742, column: 17, scope: !1221)
!1224 = !DILocation(line: 742, column: 27, scope: !1221)
!1225 = !DILocation(line: 743, column: 4, scope: !1221)
!1226 = !DILocation(line: 743, column: 9, scope: !1221)
!1227 = !DILocation(line: 743, column: 18, scope: !1221)
!1228 = !DILocation(line: 743, column: 23, scope: !1221)
!1229 = !DILocation(line: 743, column: 26, scope: !1221)
!1230 = !DILocation(line: 743, column: 31, scope: !1221)
!1231 = !DILocation(line: 743, column: 40, scope: !1221)
!1232 = !DILocation(line: 742, column: 6, scope: !1102)
!1233 = !DILocation(line: 744, column: 15, scope: !1221)
!1234 = !DILocation(line: 744, column: 20, scope: !1221)
!1235 = !DILocation(line: 744, column: 4, scope: !1221)
!1236 = !DILocation(line: 744, column: 13, scope: !1221)
!1237 = !DILocation(line: 744, column: 3, scope: !1221)
!1238 = !DILocation(line: 746, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 746, column: 6)
!1240 = !DILocation(line: 746, column: 11, scope: !1239)
!1241 = !DILocation(line: 746, column: 17, scope: !1239)
!1242 = !DILocation(line: 746, column: 6, scope: !1102)
!1243 = !DILocation(line: 747, column: 21, scope: !1239)
!1244 = !DILocation(line: 747, column: 26, scope: !1239)
!1245 = !DILocation(line: 747, column: 3, scope: !1239)
!1246 = !DILocation(line: 749, column: 6, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 749, column: 6)
!1248 = !DILocation(line: 749, column: 11, scope: !1247)
!1249 = !DILocation(line: 749, column: 17, scope: !1247)
!1250 = !DILocation(line: 749, column: 6, scope: !1102)
!1251 = !DILocation(line: 750, column: 15, scope: !1247)
!1252 = !DILocation(line: 750, column: 20, scope: !1247)
!1253 = !DILocation(line: 750, column: 13, scope: !1247)
!1254 = !DILocation(line: 750, column: 3, scope: !1247)
!1255 = !DILocation(line: 752, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 752, column: 6)
!1257 = !DILocation(line: 752, column: 11, scope: !1256)
!1258 = !DILocation(line: 752, column: 17, scope: !1256)
!1259 = !DILocation(line: 752, column: 6, scope: !1102)
!1260 = !DILocation(line: 753, column: 3, scope: !1256)
!1261 = !DILocation(line: 754, column: 1, scope: !1102)
!1262 = distinct !DISubprogram(name: "div_s64", scope: !702, file: !702, line: 142, type: !1263, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!206, !206, !553}
!1265 = !{!1266, !1267, !1268}
!1266 = !DILocalVariable(name: "dividend", arg: 1, scope: !1262, file: !702, line: 142, type: !206)
!1267 = !DILocalVariable(name: "divisor", arg: 2, scope: !1262, file: !702, line: 142, type: !553)
!1268 = !DILocalVariable(name: "remainder", scope: !1262, file: !702, line: 144, type: !553)
!1269 = !DILocation(line: 142, column: 31, scope: !1262)
!1270 = !DILocation(line: 142, column: 45, scope: !1262)
!1271 = !DILocation(line: 144, column: 2, scope: !1262)
!1272 = !DILocation(line: 144, column: 6, scope: !1262)
!1273 = !DILocation(line: 145, column: 21, scope: !1262)
!1274 = !DILocation(line: 145, column: 31, scope: !1262)
!1275 = !DILocation(line: 145, column: 9, scope: !1262)
!1276 = !DILocation(line: 146, column: 1, scope: !1262)
!1277 = !DILocation(line: 145, column: 2, scope: !1262)
!1278 = distinct !DISubprogram(name: "is_error_status", scope: !3, file: !3, line: 220, type: !1279, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!150, !150}
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "status", arg: 1, scope: !1278, file: !3, line: 220, type: !150)
!1283 = !DILocation(line: 220, column: 39, scope: !1278)
!1284 = !DILocation(line: 222, column: 9, scope: !1278)
!1285 = !DILocation(line: 222, column: 16, scope: !1278)
!1286 = !DILocation(line: 222, column: 2, scope: !1278)
!1287 = distinct !DISubprogram(name: "pps_fill_timex", scope: !3, file: !3, line: 225, type: !1288, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !797}
!1290 = !{!1291}
!1291 = !DILocalVariable(name: "txc", arg: 1, scope: !1287, file: !3, line: 225, type: !797)
!1292 = !DILocation(line: 225, column: 58, scope: !1287)
!1293 = !DILocation(line: 228, column: 2, scope: !1287)
!1294 = !DILocation(line: 228, column: 7, scope: !1287)
!1295 = !DILocation(line: 228, column: 18, scope: !1287)
!1296 = !DILocation(line: 229, column: 2, scope: !1287)
!1297 = !DILocation(line: 229, column: 7, scope: !1287)
!1298 = !DILocation(line: 229, column: 17, scope: !1287)
!1299 = !DILocation(line: 230, column: 2, scope: !1287)
!1300 = !DILocation(line: 230, column: 7, scope: !1287)
!1301 = !DILocation(line: 230, column: 16, scope: !1287)
!1302 = !DILocation(line: 231, column: 2, scope: !1287)
!1303 = !DILocation(line: 231, column: 7, scope: !1287)
!1304 = !DILocation(line: 231, column: 17, scope: !1287)
!1305 = !DILocation(line: 232, column: 2, scope: !1287)
!1306 = !DILocation(line: 232, column: 7, scope: !1287)
!1307 = !DILocation(line: 232, column: 17, scope: !1287)
!1308 = !DILocation(line: 233, column: 2, scope: !1287)
!1309 = !DILocation(line: 233, column: 7, scope: !1287)
!1310 = !DILocation(line: 233, column: 17, scope: !1287)
!1311 = !DILocation(line: 234, column: 2, scope: !1287)
!1312 = !DILocation(line: 234, column: 7, scope: !1287)
!1313 = !DILocation(line: 234, column: 17, scope: !1287)
!1314 = !DILocation(line: 235, column: 2, scope: !1287)
!1315 = !DILocation(line: 235, column: 7, scope: !1287)
!1316 = !DILocation(line: 235, column: 17, scope: !1287)
!1317 = !DILocation(line: 236, column: 1, scope: !1287)
!1318 = distinct !DISubprogram(name: "ntp_tick_adj_setup", scope: !3, file: !3, line: 1079, type: !242, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1319 = !{!1320, !1321}
!1320 = !DILocalVariable(name: "str", arg: 1, scope: !1318, file: !3, line: 1079, type: !244)
!1321 = !DILocalVariable(name: "rc", scope: !1318, file: !3, line: 1081, type: !150)
!1322 = !DILocation(line: 1079, column: 44, scope: !1318)
!1323 = !DILocation(line: 1081, column: 2, scope: !1318)
!1324 = !DILocation(line: 1081, column: 6, scope: !1318)
!1325 = !DILocation(line: 1081, column: 21, scope: !1318)
!1326 = !DILocation(line: 1081, column: 11, scope: !1318)
!1327 = !DILocation(line: 1082, column: 6, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1082, column: 6)
!1329 = !DILocation(line: 1082, column: 6, scope: !1318)
!1330 = !DILocation(line: 1083, column: 10, scope: !1328)
!1331 = !DILocation(line: 1083, column: 3, scope: !1328)
!1332 = !DILocation(line: 1085, column: 15, scope: !1318)
!1333 = !DILocation(line: 1086, column: 2, scope: !1318)
!1334 = !DILocation(line: 1087, column: 1, scope: !1318)
!1335 = distinct !DISubprogram(name: "ntp_init", scope: !3, file: !3, line: 1091, type: !455, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1336 = !DILocation(line: 1093, column: 2, scope: !1335)
!1337 = !DILocation(line: 1094, column: 2, scope: !1335)
!1338 = !DILocation(line: 1095, column: 1, scope: !1335)
!1339 = distinct !DISubprogram(name: "ntp_init_cmos_sync", scope: !3, file: !3, line: 674, type: !455, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1340 = !DILocation(line: 676, column: 2, scope: !1339)
!1341 = !DILocation(line: 677, column: 24, scope: !1339)
!1342 = !DILocation(line: 678, column: 1, scope: !1339)
!1343 = distinct !DISubprogram(name: "div_u64", scope: !702, file: !702, line: 127, type: !1344, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!211, !211, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !207, line: 21, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !209, line: 27, baseType: !7)
!1348 = !{!1349, !1350, !1351}
!1349 = !DILocalVariable(name: "dividend", arg: 1, scope: !1343, file: !702, line: 127, type: !211)
!1350 = !DILocalVariable(name: "divisor", arg: 2, scope: !1343, file: !702, line: 127, type: !1346)
!1351 = !DILocalVariable(name: "remainder", scope: !1343, file: !702, line: 129, type: !1346)
!1352 = !DILocation(line: 127, column: 31, scope: !1343)
!1353 = !DILocation(line: 127, column: 45, scope: !1343)
!1354 = !DILocation(line: 129, column: 2, scope: !1343)
!1355 = !DILocation(line: 129, column: 6, scope: !1343)
!1356 = !DILocation(line: 130, column: 21, scope: !1343)
!1357 = !DILocation(line: 130, column: 31, scope: !1343)
!1358 = !DILocation(line: 130, column: 9, scope: !1343)
!1359 = !DILocation(line: 131, column: 1, scope: !1343)
!1360 = !DILocation(line: 130, column: 2, scope: !1343)
!1361 = distinct !DISubprogram(name: "div_u64_rem", scope: !702, file: !702, line: 26, type: !1362, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!211, !211, !1346, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "dividend", arg: 1, scope: !1361, file: !702, line: 26, type: !211)
!1367 = !DILocalVariable(name: "divisor", arg: 2, scope: !1361, file: !702, line: 26, type: !1346)
!1368 = !DILocalVariable(name: "remainder", arg: 3, scope: !1361, file: !702, line: 26, type: !1364)
!1369 = !DILocation(line: 26, column: 35, scope: !1361)
!1370 = !DILocation(line: 26, column: 49, scope: !1361)
!1371 = !DILocation(line: 26, column: 63, scope: !1361)
!1372 = !DILocation(line: 28, column: 15, scope: !1361)
!1373 = !DILocation(line: 28, column: 26, scope: !1361)
!1374 = !DILocation(line: 28, column: 24, scope: !1361)
!1375 = !DILocation(line: 28, column: 3, scope: !1361)
!1376 = !DILocation(line: 28, column: 13, scope: !1361)
!1377 = !DILocation(line: 29, column: 9, scope: !1361)
!1378 = !DILocation(line: 29, column: 20, scope: !1361)
!1379 = !DILocation(line: 29, column: 18, scope: !1361)
!1380 = !DILocation(line: 29, column: 2, scope: !1361)
!1381 = !DISubprogram(name: "queue_work_on", scope: !22, file: !22, line: 496, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!766, !150, !783, !417}
!1384 = !DILocation(line: 622, column: 47, scope: !420)
!1385 = !DILocation(line: 630, column: 2, scope: !420)
!1386 = !DILocation(line: 630, column: 20, scope: !420)
!1387 = !DILocation(line: 630, column: 25, scope: !420)
!1388 = !DILocation(line: 631, column: 2, scope: !420)
!1389 = !DILocation(line: 631, column: 6, scope: !420)
!1390 = !DILocation(line: 638, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !420, file: !3, line: 638, column: 6)
!1392 = !DILocation(line: 638, column: 20, scope: !1391)
!1393 = !DILocation(line: 638, column: 23, scope: !1391)
!1394 = !DILocation(line: 638, column: 6, scope: !420)
!1395 = !DILocation(line: 639, column: 3, scope: !1391)
!1396 = !DILocation(line: 641, column: 2, scope: !420)
!1397 = !DILocation(line: 643, column: 22, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !420, file: !3, line: 643, column: 6)
!1399 = !DILocation(line: 643, column: 7, scope: !1398)
!1400 = !DILocation(line: 643, column: 6, scope: !420)
!1401 = !DILocation(line: 644, column: 3, scope: !1398)
!1402 = !DILocation(line: 647, column: 6, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !420, file: !3, line: 647, column: 6)
!1404 = !DILocation(line: 647, column: 6, scope: !420)
!1405 = !DILocation(line: 648, column: 28, scope: !1403)
!1406 = !DILocation(line: 648, column: 43, scope: !1403)
!1407 = !DILocation(line: 648, column: 20, scope: !1403)
!1408 = !DILocation(line: 648, column: 10, scope: !1403)
!1409 = !DILocation(line: 648, column: 17, scope: !1403)
!1410 = !DILocation(line: 648, column: 3, scope: !1403)
!1411 = !DILocation(line: 651, column: 8, scope: !420)
!1412 = !DILocation(line: 651, column: 6, scope: !420)
!1413 = !DILocation(line: 652, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !420, file: !3, line: 652, column: 6)
!1415 = !DILocation(line: 652, column: 10, scope: !1414)
!1416 = !DILocation(line: 652, column: 6, scope: !420)
!1417 = !DILocation(line: 653, column: 3, scope: !1414)
!1418 = !DILocation(line: 656, column: 8, scope: !420)
!1419 = !DILocation(line: 656, column: 6, scope: !420)
!1420 = !DILocation(line: 657, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !420, file: !3, line: 657, column: 6)
!1422 = !DILocation(line: 657, column: 10, scope: !1421)
!1423 = !DILocation(line: 657, column: 6, scope: !420)
!1424 = !DILocation(line: 658, column: 3, scope: !1421)
!1425 = !DILocation(line: 657, column: 14, scope: !1421)
!1426 = !DILocation(line: 659, column: 1, scope: !420)
!1427 = !DILocation(line: 660, column: 22, scope: !420)
!1428 = !DILocation(line: 660, column: 35, scope: !420)
!1429 = !DILocation(line: 660, column: 39, scope: !420)
!1430 = !DILocation(line: 660, column: 2, scope: !420)
!1431 = !DILocation(line: 661, column: 1, scope: !420)
!1432 = !DISubprogram(name: "ktime_get_real_ts64", scope: !1433, file: !1433, line: 43, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1433 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1437 = distinct !DISubprogram(name: "rtc_tv_nsec_ok", scope: !3, file: !3, line: 543, type: !1438, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!766, !218, !1436, !826}
!1440 = !{!1441, !1442, !1443, !1444, !1445}
!1441 = !DILocalVariable(name: "set_offset_nsec", arg: 1, scope: !1437, file: !3, line: 543, type: !218)
!1442 = !DILocalVariable(name: "to_set", arg: 2, scope: !1437, file: !3, line: 544, type: !1436)
!1443 = !DILocalVariable(name: "now", arg: 3, scope: !1437, file: !3, line: 545, type: !826)
!1444 = !DILocalVariable(name: "TIME_SET_NSEC_FUZZ", scope: !1437, file: !3, line: 548, type: !529)
!1445 = !DILocalVariable(name: "delay", scope: !1437, file: !3, line: 549, type: !424)
!1446 = !DILocation(line: 543, column: 49, scope: !1437)
!1447 = !DILocation(line: 544, column: 26, scope: !1437)
!1448 = !DILocation(line: 545, column: 32, scope: !1437)
!1449 = !DILocation(line: 548, column: 2, scope: !1437)
!1450 = !DILocation(line: 548, column: 22, scope: !1437)
!1451 = !DILocation(line: 549, column: 2, scope: !1437)
!1452 = !DILocation(line: 549, column: 20, scope: !1437)
!1453 = !DILocation(line: 549, column: 28, scope: !1437)
!1454 = !DILocation(line: 550, column: 19, scope: !1437)
!1455 = !DILocation(line: 552, column: 3, scope: !1437)
!1456 = !DILocation(line: 552, column: 12, scope: !1437)
!1457 = !DILocation(line: 552, column: 28, scope: !1437)
!1458 = !DILocation(line: 554, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 554, column: 6)
!1460 = !DILocation(line: 554, column: 14, scope: !1459)
!1461 = !DILocation(line: 554, column: 22, scope: !1459)
!1462 = !DILocation(line: 554, column: 6, scope: !1437)
!1463 = !DILocation(line: 555, column: 3, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 554, column: 44)
!1465 = !DILocation(line: 555, column: 11, scope: !1464)
!1466 = !DILocation(line: 555, column: 19, scope: !1464)
!1467 = !DILocation(line: 556, column: 3, scope: !1464)
!1468 = !DILocation(line: 559, column: 6, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 559, column: 6)
!1470 = !DILocation(line: 559, column: 14, scope: !1469)
!1471 = !DILocation(line: 559, column: 22, scope: !1469)
!1472 = !DILocation(line: 559, column: 6, scope: !1437)
!1473 = !DILocation(line: 560, column: 3, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 559, column: 59)
!1475 = !DILocation(line: 560, column: 11, scope: !1474)
!1476 = !DILocation(line: 560, column: 17, scope: !1474)
!1477 = !DILocation(line: 561, column: 3, scope: !1474)
!1478 = !DILocation(line: 561, column: 11, scope: !1474)
!1479 = !DILocation(line: 561, column: 19, scope: !1474)
!1480 = !DILocation(line: 562, column: 3, scope: !1474)
!1481 = !DILocation(line: 564, column: 2, scope: !1437)
!1482 = !DILocation(line: 565, column: 1, scope: !1437)
!1483 = distinct !DISubprogram(name: "update_rtc", scope: !3, file: !3, line: 581, type: !1484, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1487)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!150, !1436, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1487 = !{!1488, !1489, !1490, !5962, !5963, !5964}
!1488 = !DILocalVariable(name: "to_set", arg: 1, scope: !1483, file: !3, line: 581, type: !1436)
!1489 = !DILocalVariable(name: "offset_nsec", arg: 2, scope: !1483, file: !3, line: 581, type: !1486)
!1490 = !DILocalVariable(name: "rtc", scope: !1483, file: !3, line: 583, type: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_device", file: !1493, line: 87, size: 10112, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff23d3d21ddec8b2b9f29ebd0a4cf8a2")
!1494 = !{!1495, !5845, !5846, !5847, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5935, !5936, !5937, !5938, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5958, !5959, !5960, !5961}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1492, file: !1493, line: 88, baseType: !1496, size: 5824)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !135, line: 705, size: 5824, elements: !1497)
!1497 = !{!1498, !5364, !5366, !5369, !5370, !5423, !5508, !5509, !5510, !5511, !5512, !5519, !5611, !5624, !5634, !5638, !5640, !5641, !5642, !5646, !5653, !5654, !5657, !5660, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5822, !5823, !5824, !5827, !5830, !5839, !5840, !5841, !5842, !5843, !5844}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1496, file: !135, line: 706, baseType: !1499, size: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1500, line: 64, size: 512, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1501 = !{!1502, !1503, !1504, !1506, !1560, !5263, !5354, !5359, !5360, !5361, !5362, !5363}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1499, file: !1500, line: 65, baseType: !238, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1499, file: !1500, line: 66, baseType: !407, size: 128, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1499, file: !1500, line: 67, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1499, file: !1500, line: 68, baseType: !1507, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1500, line: 168, size: 768, elements: !1509)
!1509 = !{!1510, !1511, !1520, !1521}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1508, file: !1500, line: 169, baseType: !407, size: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1508, file: !1500, line: 170, baseType: !1512, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1513, line: 29, baseType: !1514)
!1513 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1513, line: 17, size: 32, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1513, line: 18, baseType: !1517, size: 32)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1513, line: 18, size: 32, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1517, file: !1513, line: 19, baseType: !294, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1508, file: !1500, line: 171, baseType: !1499, size: 512, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1508, file: !1500, line: 172, baseType: !1522, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1500, line: 133, size: 192, elements: !1525)
!1525 = !{!1526, !1533, !1538}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1524, file: !1500, line: 134, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!150, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1524, file: !1500, line: 135, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!238, !1531}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1524, file: !1500, line: 136, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!150, !1531, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1500, line: 125, size: 20736, elements: !1545)
!1545 = !{!1546, !1550, !1554, !1555, !1559}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1544, file: !1500, line: 126, baseType: !1547, size: 192)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !1548)
!1548 = !{!1549}
!1549 = !DISubrange(count: 3)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1544, file: !1500, line: 127, baseType: !1551, size: 4096, offset: 192)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4096, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1544, file: !1500, line: 128, baseType: !150, size: 32, offset: 4288)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1544, file: !1500, line: 129, baseType: !1556, size: 16384, offset: 4320)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 16384, elements: !1557)
!1557 = !{!1558}
!1558 = !DISubrange(count: 2048)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1544, file: !1500, line: 130, baseType: !150, size: 32, offset: 20704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1499, file: !1500, line: 69, baseType: !1561, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1500, line: 116, size: 384, elements: !1564)
!1564 = !{!1565, !1569, !1595, !5225, !5253, !5257}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !1500, line: 117, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !1505}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1563, file: !1500, line: 118, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1573, line: 254, size: 128, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1574 = !{!1575, !1588}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1572, file: !1573, line: 255, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1579, !1505, !1582, !244}
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !306, line: 66, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !349, line: 73, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !349, line: 15, baseType: !219)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1573, line: 30, size: 128, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1583, file: !1573, line: 31, baseType: !238, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1583, file: !1573, line: 32, baseType: !1587, size: 16, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !306, line: 24, baseType: !323)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1572, file: !1573, line: 256, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1579, !1505, !1582, !238, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !306, line: 61, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !349, line: 72, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !349, line: 16, baseType: !218)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1563, file: !1500, line: 119, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1573, line: 84, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1606, !5221, !5223}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1573, line: 85, baseType: !238, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1599, file: !1573, line: 86, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1587, !1505, !1582, !150}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1599, file: !1573, line: 88, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1587, !1505, !1610, !150}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1573, line: 175, size: 512, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1617, !5212, !5216, !5217}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1611, file: !1573, line: 176, baseType: !1583, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1611, file: !1573, line: 177, baseType: !1592, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1611, file: !1573, line: 178, baseType: !1616, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1611, file: !1573, line: 179, baseType: !1618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !60, line: 472, size: 1536, align: 64, elements: !1623)
!1623 = !{!1624, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5206, !5207, !5208, !5209, !5210, !5211}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1622, file: !60, line: 473, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !60, line: 641, size: 4800, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1638, !1639, !1646, !1647, !1650, !1651, !4977, !4978, !4979, !4980, !4981, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5021, !5024, !5025, !5026, !5043, !5044, !5045, !5046}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1626, file: !60, line: 642, baseType: !1587, size: 16)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1626, file: !60, line: 643, baseType: !323, size: 16, offset: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1626, file: !60, line: 644, baseType: !1631, size: 32, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1632, line: 23, baseType: !1633)
!1632 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1632, line: 21, size: 32, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1633, file: !1632, line: 22, baseType: !1636, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !306, line: 37, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !349, line: 49, baseType: !7)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1626, file: !60, line: 645, baseType: !407, size: 128, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1626, file: !60, line: 646, baseType: !1640, size: 32, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1632, line: 28, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1632, line: 26, size: 32, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1641, file: !1632, line: 27, baseType: !1644, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !306, line: 38, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !349, line: 50, baseType: !7)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1626, file: !60, line: 647, baseType: !7, size: 32, offset: 224)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1626, file: !60, line: 650, baseType: !1648, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !60, line: 607, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1626, file: !60, line: 651, baseType: !1648, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1626, file: !60, line: 654, baseType: !1652, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !60, line: 1966, size: 2048, align: 512, elements: !1655)
!1655 = !{!1656, !4815, !4825, !4829, !4833, !4837, !4841, !4845, !4849, !4853, !4857, !4858, !4862, !4866, !4899, !4928, !4932, !4938, !4942, !4946, !4950, !4954, !4958, !4964, !4968}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1654, file: !60, line: 1967, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1660, !1625, !1660, !7}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1662, line: 82, size: 1536, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1663 = !{!1664, !1665, !1670, !1678, !1679, !1694, !1695, !1699, !1712, !4799, !4800, !4801, !4802, !4807, !4808, !4809}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1661, file: !1662, line: 84, baseType: !7, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1661, file: !1662, line: 85, baseType: !1666, size: 32, offset: 32)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !352, line: 275, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !352, line: 275, size: 32, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1667, file: !352, line: 275, baseType: !356, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1661, file: !1662, line: 86, baseType: !1671, size: 128, offset: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1672, line: 38, size: 128, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1673 = !{!1674, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1671, file: !1672, line: 39, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1671, file: !1672, line: 39, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1661, file: !1662, line: 87, baseType: !1660, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1661, file: !1662, line: 88, baseType: !1680, size: 128, offset: 256)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1662, line: 49, size: 128, elements: !1681)
!1681 = !{!1682, !1691}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1662, line: 50, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !1662, line: 50, size: 64, elements: !1684)
!1684 = !{!1685, !1690}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1662, line: 51, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1662, line: 51, size: 64, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1686, file: !1662, line: 52, baseType: !1346, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1686, file: !1662, line: 52, baseType: !1346, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1683, file: !1662, line: 54, baseType: !211, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1680, file: !1662, line: 56, baseType: !1692, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1661, file: !1662, line: 89, baseType: !1625, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1661, file: !1662, line: 91, baseType: !1696, size: 256, offset: 448)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1661, file: !1662, line: 94, baseType: !1700, size: 64, offset: 704)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1701, line: 25, size: 64, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1701, line: 26, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !1701, line: 26, size: 64, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1704, file: !1701, line: 28, baseType: !212, size: 64, align: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !1701, line: 30, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1701, line: 30, size: 64, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !1701, line: 31, baseType: !1512, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1708, file: !1701, line: 32, baseType: !150, size: 32, offset: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1661, file: !1662, line: 95, baseType: !1713, size: 64, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1662, line: 128, size: 1024, align: 512, elements: !1716)
!1716 = !{!1717, !1721, !1722, !1729, !1735, !1739, !1743, !1747, !1748, !1752, !1756, !4789, !4793}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1715, file: !1662, line: 129, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!150, !1660, !7}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1715, file: !1662, line: 130, baseType: !1718, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1715, file: !1662, line: 131, baseType: !1723, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!150, !1726, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1715, file: !1662, line: 132, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!150, !1726, !7, !238, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1715, file: !1662, line: 134, baseType: !1736, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!150, !1726}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1715, file: !1662, line: 135, baseType: !1740, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!150, !1660}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1715, file: !1662, line: 136, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1660}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1715, file: !1662, line: 137, baseType: !1744, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1715, file: !1662, line: 138, baseType: !1749, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !1660, !1625}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1715, file: !1662, line: 139, baseType: !1753, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!244, !1660, !244, !150}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1715, file: !1662, line: 140, baseType: !1757, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1760, !4788}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1762, line: 70, size: 256, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1763 = !{!1764, !1765, !4784, !4785}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1761, file: !1762, line: 71, baseType: !1660, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1761, file: !1762, line: 72, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !60, line: 1190, size: 10752, elements: !1768)
!1768 = !{!1769, !1770, !1773, !1774, !1775, !1778, !2220, !4489, !4529, !4614, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4631, !4635, !4636, !4639, !4642, !4645, !4648, !4649, !4650, !4691, !4717, !4718, !4719, !4720, !4721, !4722, !4725, !4727, !4734, !4735, !4736, !4737, !4738, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1767, file: !60, line: 1191, baseType: !407, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1767, file: !60, line: 1192, baseType: !1771, size: 32, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !306, line: 21, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !306, line: 18, baseType: !1346)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1767, file: !60, line: 1193, baseType: !217, size: 8, offset: 160)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1767, file: !60, line: 1194, baseType: !218, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1767, file: !60, line: 1195, baseType: !1776, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !306, line: 52, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !349, line: 88, baseType: !210)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1767, file: !60, line: 1196, baseType: !1779, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !60, line: 2366, size: 576, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1791, !1795, !1799, !1803, !2205, !2206, !2210, !2212, !2213, !2214, !2216, !2217, !2218, !2219}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !60, line: 2367, baseType: !238, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1780, file: !60, line: 2368, baseType: !150, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1780, file: !60, line: 2376, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!150, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1790, line: 32, flags: DIFlagFwdDecl)
!1790 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1780, file: !60, line: 2377, baseType: !1792, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !60, line: 75, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1780, file: !60, line: 2378, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1660, !1779, !150, !238, !1616}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1780, file: !60, line: 2380, baseType: !1800, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1766}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1780, file: !60, line: 2381, baseType: !1804, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !53, line: 402, size: 9216, align: 512, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1813, !1834, !1860, !1861, !1862, !1863, !1867, !1870, !1871, !1883, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1954, !1956, !1976, !1997, !1998, !1999, !2000, !2009, !2032, !2033, !2036, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2050, !2051, !2166, !2174, !2175, !2176, !2178, !2182, !2183, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2200, !2201, !2202, !2204}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1805, file: !53, line: 403, baseType: !52, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1805, file: !53, line: 406, baseType: !407, size: 128, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1805, file: !53, line: 409, baseType: !1810, size: 448, offset: 192)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 448, elements: !1811)
!1811 = !{!1812}
!1812 = !DISubrange(count: 56)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1805, file: !53, line: 417, baseType: !1814, size: 768, offset: 640)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !53, line: 45, size: 768, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1814, file: !53, line: 46, baseType: !1499, size: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1814, file: !53, line: 47, baseType: !1804, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1814, file: !53, line: 48, baseType: !1505, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1814, file: !53, line: 49, baseType: !1820, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !53, line: 49, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1814, file: !53, line: 50, baseType: !1823, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1825, line: 26, size: 256, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1824, file: !1825, line: 27, baseType: !7, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1824, file: !1825, line: 28, baseType: !1829, size: 192, offset: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1830, line: 43, size: 192, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !1830, line: 44, baseType: !292, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1829, file: !1830, line: 45, baseType: !407, size: 128, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1805, file: !53, line: 418, baseType: !1835, size: 64, offset: 1408)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !53, line: 53, size: 448, elements: !1837)
!1837 = !{!1838, !1839, !1844, !1848, !1852, !1856}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1836, file: !53, line: 54, baseType: !1583, size: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1836, file: !53, line: 55, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1579, !1835, !1843, !244}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1836, file: !53, line: 57, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1579, !1835, !1843, !238, !1592}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1836, file: !53, line: 59, baseType: !1849, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1804, !238}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1836, file: !53, line: 60, baseType: !1853, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!150, !1804}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1836, file: !53, line: 61, baseType: !1857, size: 64, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1804}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1805, file: !53, line: 419, baseType: !238, size: 64, offset: 1472)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1805, file: !53, line: 420, baseType: !238, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1805, file: !53, line: 421, baseType: !1505, size: 64, offset: 1600)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1805, file: !53, line: 424, baseType: !1864, size: 64, offset: 1664)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !53, line: 424, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1805, file: !53, line: 425, baseType: !1868, size: 64, offset: 1728)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1805, file: !53, line: 426, baseType: !7, size: 32, offset: 1792)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1805, file: !53, line: 435, baseType: !1872, size: 256, offset: 1856)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1873, line: 66, size: 256, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1874 = !{!1875, !1876, !1877, !1882}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1872, file: !1873, line: 67, baseType: !400, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1872, file: !1873, line: 68, baseType: !292, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1872, file: !1873, line: 70, baseType: !1878, size: 32, offset: 96)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1879, line: 15, size: 32, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1880 = !{!1881}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1878, file: !1879, line: 20, baseType: !305, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1872, file: !1873, line: 72, baseType: !407, size: 128, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1805, file: !53, line: 437, baseType: !1884, size: 64, offset: 2112)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1886, line: 69, size: 320, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1887 = !{!1888, !1889, !1890, !1910, !1912, !1916, !1917}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !1886, line: 70, baseType: !238, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1885, file: !1886, line: 71, baseType: !1804, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1885, file: !1886, line: 72, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1886, line: 47, size: 256, elements: !1894)
!1894 = !{!1895, !1896, !1902, !1906}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1893, file: !1886, line: 49, baseType: !7, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1893, file: !1886, line: 51, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!150, !238, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1893, file: !1886, line: 53, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!150, !244, !1900}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1893, file: !1886, line: 55, baseType: !1907, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1616}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1885, file: !1886, line: 73, baseType: !1911, size: 16, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1885, file: !1886, line: 74, baseType: !1913, size: 8, offset: 208)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !207, line: 16, baseType: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !209, line: 20, baseType: !1915)
!1915 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1885, file: !1886, line: 75, baseType: !314, size: 8, offset: 216)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1886, line: 76, baseType: !1918, size: 64, offset: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1886, line: 76, size: 64, elements: !1919)
!1919 = !{!1920, !1921, !1928}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1918, file: !1886, line: 77, baseType: !1616, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1918, file: !1886, line: 78, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1886, line: 86, size: 128, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1924, file: !1886, line: 87, baseType: !7, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1924, file: !1886, line: 88, baseType: !244, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1918, file: !1886, line: 79, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1886, line: 92, size: 256, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1937, !1938}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1931, file: !1886, line: 94, baseType: !7, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1931, file: !1886, line: 95, baseType: !7, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1931, file: !1886, line: 96, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1931, file: !1886, line: 97, baseType: !1891, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1931, file: !1886, line: 98, baseType: !1616, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1805, file: !53, line: 438, baseType: !7, size: 32, offset: 2176)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1805, file: !53, line: 441, baseType: !7, size: 32, offset: 2208)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1805, file: !53, line: 442, baseType: !1864, size: 64, offset: 2240)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1805, file: !53, line: 443, baseType: !1868, size: 64, offset: 2304)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1805, file: !53, line: 444, baseType: !766, size: 8, offset: 2368)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1805, file: !53, line: 451, baseType: !766, size: 8, offset: 2376)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1805, file: !53, line: 454, baseType: !7, size: 32, offset: 2400)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1805, file: !53, line: 455, baseType: !1947, size: 64, offset: 2432)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1949, line: 23, size: 96, elements: !1950)
!1949 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1948, file: !1949, line: 24, baseType: !150, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1948, file: !1949, line: 24, baseType: !150, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1948, file: !1949, line: 24, baseType: !150, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1805, file: !53, line: 458, baseType: !1955, size: 64, offset: 2496)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1805, file: !53, line: 460, baseType: !1957, size: 4032, align: 512, offset: 2560)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1958, size: 4032, elements: !1974)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !53, line: 362, size: 576, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1958, file: !53, line: 363, baseType: !1616, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1958, file: !53, line: 364, baseType: !7, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1958, file: !53, line: 367, baseType: !1963, size: 448, offset: 128)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !53, line: 319, size: 448, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1963, file: !53, line: 320, baseType: !1804, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1963, file: !53, line: 321, baseType: !1967, size: 384, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1968, line: 40, size: 384, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1967, file: !1968, line: 41, baseType: !1971, size: 384, align: 64)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 384, align: 64, elements: !1972)
!1972 = !{!1973}
!1973 = !DISubrange(count: 2)
!1974 = !{!1975}
!1975 = !DISubrange(count: 7)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1805, file: !53, line: 463, baseType: !1977, size: 192, offset: 6592)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1978, line: 8, size: 192, elements: !1979)
!1978 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1979 = !{!1980, !1981, !1983}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1977, file: !1978, line: 10, baseType: !7, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1977, file: !1978, line: 11, baseType: !1982, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1977, file: !1978, line: 12, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1986, line: 59, size: 48, elements: !1987)
!1986 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1987 = !{!1988, !1992, !1993, !1994, !1995, !1996}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1985, file: !1986, line: 60, baseType: !1989, size: 16)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !207, line: 18, baseType: !1990)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !209, line: 23, baseType: !1991)
!1991 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1985, file: !1986, line: 61, baseType: !1989, size: 16, offset: 16)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1985, file: !1986, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1985, file: !1986, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1985, file: !1986, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1985, file: !1986, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1805, file: !53, line: 465, baseType: !218, size: 64, offset: 6784)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1805, file: !53, line: 469, baseType: !7, size: 32, offset: 6848)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1805, file: !53, line: 470, baseType: !407, size: 128, offset: 6912)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1805, file: !53, line: 471, baseType: !2001, size: 64, offset: 7040)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2003, line: 33, size: 96, elements: !2004)
!2003 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2004 = !{!2005, !2006, !2007, !2008}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2002, file: !2003, line: 37, baseType: !150, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2002, file: !2003, line: 43, baseType: !150, size: 32, offset: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2002, file: !2003, line: 45, baseType: !323, size: 16, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2002, file: !2003, line: 47, baseType: !323, size: 16, offset: 80)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1805, file: !53, line: 476, baseType: !2010, size: 64, offset: 7104)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !53, line: 378, size: 256, elements: !2012)
!2012 = !{!2013, !2029, !2030, !2031}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2011, file: !53, line: 379, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2016, line: 204, baseType: !2017)
!2016 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2016, line: 197, size: 192, elements: !2018)
!2018 = !{!2019, !2021, !2022, !2023, !2025, !2027}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2017, file: !2016, line: 198, baseType: !2020, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2016, line: 21, baseType: !1347)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2017, file: !2016, line: 199, baseType: !217, size: 8, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2017, file: !2016, line: 200, baseType: !217, size: 8, offset: 40)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2017, file: !2016, line: 201, baseType: !2024, size: 16, offset: 48)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2016, line: 17, baseType: !322)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2017, file: !2016, line: 202, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2016, line: 16, baseType: !212)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2017, file: !2016, line: 203, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2016, line: 22, baseType: !212)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2011, file: !53, line: 380, baseType: !7, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2011, file: !53, line: 381, baseType: !244, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2011, file: !53, line: 382, baseType: !244, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1805, file: !53, line: 477, baseType: !2011, size: 256, offset: 7168)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1805, file: !53, line: 480, baseType: !2034, size: 64, offset: 7424)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !53, line: 480, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1805, file: !53, line: 483, baseType: !2037, size: 64, offset: 7488)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !53, line: 483, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1805, file: !53, line: 488, baseType: !244, size: 64, offset: 7552)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1805, file: !53, line: 492, baseType: !1616, size: 64, offset: 7616)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1805, file: !53, line: 493, baseType: !7, size: 32, offset: 7680)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1805, file: !53, line: 495, baseType: !1616, size: 64, offset: 7744)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1805, file: !53, line: 496, baseType: !7, size: 32, offset: 7808)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1805, file: !53, line: 499, baseType: !7, size: 32, offset: 7840)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1805, file: !53, line: 500, baseType: !2046, size: 64, offset: 7872)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2048, line: 45, baseType: !2049)
!2048 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1805, file: !53, line: 503, baseType: !7, size: 32, offset: 7936)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1805, file: !53, line: 504, baseType: !2052, size: 64, offset: 8000)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2055, line: 96, size: 192, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2056 = !{!2057, !2058, !2128, !2132}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2054, file: !2055, line: 97, baseType: !7, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2054, file: !2055, line: 98, baseType: !2059, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2055, line: 24, size: 3072, elements: !2061)
!2061 = !{!2062, !2064, !2065, !2066, !2067, !2091, !2092, !2093, !2094, !2112, !2113, !2114, !2125, !2126, !2127}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2060, file: !2055, line: 26, baseType: !2063, size: 128)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 128, elements: !1972)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2060, file: !2055, line: 27, baseType: !2063, size: 128, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2060, file: !2055, line: 28, baseType: !150, size: 32, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2060, file: !2055, line: 31, baseType: !1512, size: 32, align: 512, offset: 512)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2060, file: !2055, line: 32, baseType: !2068, size: 960, offset: 576)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2069, line: 206, size: 960, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2070 = !{!2071, !2080, !2085, !2087, !2088, !2090}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2068, file: !2069, line: 207, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !306, line: 232, size: 128, align: 64, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2073, file: !306, line: 233, baseType: !2072, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2073, file: !306, line: 234, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2072}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2068, file: !2069, line: 208, baseType: !2081, size: 256, offset: 64)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2082, size: 256, elements: !2083)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2083 = !{!2084}
!2084 = !DISubrange(count: 4)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2068, file: !2069, line: 209, baseType: !2086, size: 256, offset: 320)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !2083)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2068, file: !2069, line: 213, baseType: !219, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2068, file: !2069, line: 215, baseType: !2089, size: 256, offset: 640)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !2083)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !2069, line: 216, baseType: !314, size: 8, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2060, file: !2055, line: 33, baseType: !218, size: 64, offset: 1536)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2060, file: !2055, line: 34, baseType: !218, size: 64, offset: 1600)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2060, file: !2055, line: 35, baseType: !766, size: 8, offset: 1664)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2060, file: !2055, line: 36, baseType: !2095, size: 320, offset: 1728)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2096, line: 11, size: 320, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2097 = !{!2098, !2105, !2106, !2111}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2095, file: !2096, line: 16, baseType: !2099, size: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !306, line: 198, size: 128, elements: !2100)
!2100 = !{!2101, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2099, file: !306, line: 199, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2099, file: !306, line: 199, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2095, file: !2096, line: 17, baseType: !218, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2095, file: !2096, line: 18, baseType: !2107, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2096, line: 19, baseType: !1346, size: 32, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2060, file: !2055, line: 37, baseType: !397, size: 256, offset: 2048)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2060, file: !2055, line: 38, baseType: !2073, size: 128, align: 64, offset: 2304)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2060, file: !2055, line: 39, baseType: !2115, size: 64, offset: 2432)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2055, line: 49, size: 768, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2116, file: !2055, line: 50, baseType: !1512, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2116, file: !2055, line: 51, baseType: !2086, size: 256, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2116, file: !2055, line: 53, baseType: !2086, size: 256, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2116, file: !2055, line: 54, baseType: !218, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2116, file: !2055, line: 55, baseType: !2115, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2116, file: !2055, line: 56, baseType: !150, size: 32, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2116, file: !2055, line: 57, baseType: !150, size: 32, offset: 736)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2060, file: !2055, line: 40, baseType: !218, size: 64, offset: 2496)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2060, file: !2055, line: 42, baseType: !150, size: 32, offset: 2560)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2060, file: !2055, line: 43, baseType: !2053, size: 64, offset: 2624)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2054, file: !2055, line: 99, baseType: !2129, offset: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2130, line: 211, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2131 = !{}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2054, file: !2055, line: 100, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2055, line: 63, size: 3008, elements: !2135)
!2135 = !{!2136, !2137, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2165}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2134, file: !2055, line: 64, baseType: !2115, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2134, file: !2055, line: 65, baseType: !2138, size: 192, offset: 64)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2115, size: 192, elements: !1548)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2134, file: !2055, line: 67, baseType: !150, size: 32, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2134, file: !2055, line: 68, baseType: !1872, size: 256, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2134, file: !2055, line: 69, baseType: !1512, size: 32, offset: 576)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2134, file: !2055, line: 70, baseType: !1872, size: 256, offset: 640)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2134, file: !2055, line: 71, baseType: !218, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2134, file: !2055, line: 72, baseType: !218, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2134, file: !2055, line: 73, baseType: !218, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2134, file: !2055, line: 74, baseType: !218, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2134, file: !2055, line: 75, baseType: !218, size: 64, offset: 1152)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2134, file: !2055, line: 76, baseType: !218, size: 64, offset: 1216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2134, file: !2055, line: 77, baseType: !218, size: 64, offset: 1280)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2134, file: !2055, line: 78, baseType: !218, size: 64, offset: 1344)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2134, file: !2055, line: 79, baseType: !766, size: 8, offset: 1408)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2134, file: !2055, line: 80, baseType: !218, size: 64, offset: 1472)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2134, file: !2055, line: 81, baseType: !1872, size: 256, offset: 1536)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2134, file: !2055, line: 82, baseType: !1824, size: 256, offset: 1792)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2134, file: !2055, line: 84, baseType: !305, size: 32, offset: 2048)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2134, file: !2055, line: 87, baseType: !218, size: 64, offset: 2112)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2134, file: !2055, line: 88, baseType: !218, size: 64, offset: 2176)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2134, file: !2055, line: 89, baseType: !2159, size: 704, offset: 2240)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !22, line: 111, size: 704, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2159, file: !22, line: 112, baseType: !397, size: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2159, file: !22, line: 113, baseType: !2095, size: 320, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2159, file: !22, line: 116, baseType: !783, size: 64, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2159, file: !22, line: 117, baseType: !150, size: 32, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2134, file: !2055, line: 90, baseType: !2053, size: 64, offset: 2944)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1805, file: !53, line: 515, baseType: !2167, size: 64, offset: 8064)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2169, line: 117, size: 128, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2170 = !{!2171, !2172, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2168, file: !2169, line: 118, baseType: !553, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2168, file: !2169, line: 119, baseType: !553, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2168, file: !2169, line: 120, baseType: !219, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1805, file: !53, line: 516, baseType: !7, size: 32, offset: 8128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1805, file: !53, line: 519, baseType: !7, size: 32, offset: 8160)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1805, file: !53, line: 520, baseType: !2177, size: 64, offset: 8192)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1805, file: !53, line: 523, baseType: !2179, size: 64, offset: 8256)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !53, line: 523, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1805, file: !53, line: 524, baseType: !7, size: 32, offset: 8320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1805, file: !53, line: 525, baseType: !2184, size: 64, offset: 8384)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !53, line: 525, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1805, file: !53, line: 526, baseType: !7, size: 32, offset: 8448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1805, file: !53, line: 533, baseType: !1616, size: 64, offset: 8512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1805, file: !53, line: 534, baseType: !7, size: 32, offset: 8576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1805, file: !53, line: 535, baseType: !1486, size: 64, offset: 8640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1805, file: !53, line: 536, baseType: !7, size: 32, offset: 8704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1805, file: !53, line: 539, baseType: !150, size: 32, offset: 8736)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1805, file: !53, line: 540, baseType: !2194, size: 64, offset: 8768)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2196, line: 32, size: 64, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2195, file: !2196, line: 33, baseType: !553, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2195, file: !2196, line: 34, baseType: !553, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1805, file: !53, line: 563, baseType: !407, size: 128, offset: 8832)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1805, file: !53, line: 565, baseType: !407, size: 128, offset: 8960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1805, file: !53, line: 568, baseType: !2203, size: 64, offset: 9088)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1805, file: !53, line: 570, baseType: !305, size: 32, offset: 9152)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1780, file: !60, line: 2382, baseType: !1779, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1780, file: !60, line: 2383, baseType: !2207, size: 64, offset: 512)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !306, line: 194, size: 64, elements: !2208)
!2208 = !{!2209}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2207, file: !306, line: 195, baseType: !2102, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1780, file: !60, line: 2385, baseType: !2211, offset: 576)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2130, line: 206, elements: !2131)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1780, file: !60, line: 2386, baseType: !2211, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1780, file: !60, line: 2387, baseType: !2211, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1780, file: !60, line: 2388, baseType: !2215, offset: 576)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2211, elements: !1548)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1780, file: !60, line: 2390, baseType: !2211, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1780, file: !60, line: 2391, baseType: !2211, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1780, file: !60, line: 2392, baseType: !2211, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1780, file: !60, line: 2393, baseType: !2211, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1767, file: !60, line: 1197, baseType: !2221, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !60, line: 2057, size: 1664, elements: !2224)
!2224 = !{!2225, !2229, !2233, !2234, !2238, !2244, !2248, !2249, !2250, !2254, !2258, !2262, !2263, !2264, !2270, !2274, !2275, !4414, !4415, !4416, !4417, !4421, !4425, !4472, !4487, !4488}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2223, file: !60, line: 2058, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!1625, !1766}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2223, file: !60, line: 2059, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !1625}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2223, file: !60, line: 2060, baseType: !2230, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2223, file: !60, line: 2062, baseType: !2235, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !1625, !150}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2223, file: !60, line: 2063, baseType: !2239, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!150, !1625, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !60, line: 309, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2223, file: !60, line: 2064, baseType: !2245, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!150, !1625}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2223, file: !60, line: 2065, baseType: !2230, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2223, file: !60, line: 2066, baseType: !1800, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2223, file: !60, line: 2067, baseType: !2251, size: 64, offset: 512)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!150, !1766, !150}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2223, file: !60, line: 2068, baseType: !2255, size: 64, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!150, !1766, !59}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2223, file: !60, line: 2069, baseType: !2259, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!150, !1766}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2223, file: !60, line: 2070, baseType: !2255, size: 64, offset: 704)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2223, file: !60, line: 2071, baseType: !2259, size: 64, offset: 768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2223, file: !60, line: 2072, baseType: !2265, size: 64, offset: 832)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!150, !1660, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !60, line: 62, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2223, file: !60, line: 2073, baseType: !2271, size: 64, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!150, !1766, !1982, !244}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2223, file: !60, line: 2074, baseType: !1800, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2223, file: !60, line: 2076, baseType: !2276, size: 64, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!150, !2279, !1660}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2281, line: 17, size: 960, elements: !2282)
!2281 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2313, !2314, !4413}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2280, file: !2281, line: 18, baseType: !244, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2280, file: !2281, line: 19, baseType: !1592, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2280, file: !2281, line: 20, baseType: !1592, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2280, file: !2281, line: 21, baseType: !1592, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2280, file: !2281, line: 22, baseType: !1592, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2280, file: !2281, line: 23, baseType: !1776, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2280, file: !2281, line: 24, baseType: !1776, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2280, file: !2281, line: 25, baseType: !1872, size: 256, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2280, file: !2281, line: 26, baseType: !2292, size: 64, offset: 704)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2294)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2281, line: 32, size: 256, elements: !2295)
!2295 = !{!2296, !2301, !2305, !2309}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2294, file: !2281, line: 33, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!1616, !2279, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2294, file: !2281, line: 34, baseType: !2302, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2279, !1616}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2294, file: !2281, line: 35, baseType: !2306, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!1616, !2279, !1616, !2300}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2294, file: !2281, line: 36, baseType: !2310, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!150, !2279, !1616}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2280, file: !2281, line: 27, baseType: !150, size: 32, offset: 768)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2280, file: !2281, line: 28, baseType: !2315, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !60, line: 994, size: 1856, align: 64, elements: !2318)
!2318 = !{!2319, !2330, !2331, !2333, !2334, !2335, !2336, !2337, !4220, !4221, !4230, !4236, !4237, !4403, !4404, !4405, !4406, !4408, !4409, !4412}
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !60, line: 995, baseType: !2320, size: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !60, line: 995, size: 128, elements: !2321)
!2321 = !{!2322, !2328, !2329}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !2320, file: !60, line: 996, baseType: !2323, size: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2324, line: 60, size: 64, elements: !2325)
!2324 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2325 = !{!2326}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2323, file: !2324, line: 61, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !2320, file: !60, line: 997, baseType: !2073, size: 128, align: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !2320, file: !60, line: 998, baseType: !7, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !2317, file: !60, line: 1005, baseType: !1512, size: 32, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !2317, file: !60, line: 1006, baseType: !2332, size: 32, offset: 160)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !306, line: 156, baseType: !7)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !2317, file: !60, line: 1007, baseType: !400, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !2317, file: !60, line: 1008, baseType: !1872, size: 256, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !2317, file: !60, line: 1009, baseType: !1776, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2317, file: !60, line: 1010, baseType: !7, size: 32, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !2317, file: !60, line: 1011, baseType: !2338, size: 256, offset: 640)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !60, line: 948, size: 256, elements: !2339)
!2339 = !{!2340, !2361, !4216, !4217, !4218, !4219}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2338, file: !60, line: 949, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2342, line: 34, baseType: !2343)
!2342 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2342, line: 25, size: 64, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2343, file: !2342, line: 26, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !2347, line: 27, baseType: !2348)
!2347 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !2347, line: 13, size: 64, elements: !2349)
!2349 = !{!2350, !2360}
!2350 = !DIDerivedType(tag: DW_TAG_member, scope: !2348, file: !2347, line: 14, baseType: !2351, size: 32)
!2351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2348, file: !2347, line: 14, size: 32, elements: !2352)
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !2351, file: !2347, line: 15, baseType: !305, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, scope: !2351, file: !2347, line: 16, baseType: !2355, size: 32)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2347, line: 16, size: 32, elements: !2356)
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !2355, file: !2347, line: 18, baseType: !314, size: 8)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !2355, file: !2347, line: 19, baseType: !2359, size: 24, offset: 8)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 24, elements: !1548)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2348, file: !2347, line: 26, baseType: !297, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2338, file: !60, line: 950, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !102, line: 59, size: 768, elements: !2364)
!2364 = !{!2365, !2371, !2372, !2373, !2375, !2376, !2383, !2384}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2363, file: !102, line: 61, baseType: !2366, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2367, line: 113, baseType: !2368)
!2367 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2367, line: 111, size: 32, elements: !2369)
!2369 = !{!2370}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2368, file: !2367, line: 112, baseType: !305, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2363, file: !102, line: 62, baseType: !7, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2363, file: !102, line: 63, baseType: !1512, size: 32, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2363, file: !102, line: 65, baseType: !2374, size: 256, offset: 128)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, size: 256, elements: !2083)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2363, file: !102, line: 66, baseType: !2207, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2363, file: !102, line: 68, baseType: !2377, size: 192, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !2378, line: 41, baseType: !2379)
!2378 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !2378, line: 37, size: 192, elements: !2380)
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2379, file: !2378, line: 38, baseType: !1512, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2379, file: !2378, line: 39, baseType: !407, size: 128, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2363, file: !102, line: 69, baseType: !2073, size: 128, align: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2363, file: !102, line: 70, baseType: !2385, offset: 768)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, elements: !2796)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !102, line: 54, size: 128, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2386, file: !102, line: 55, baseType: !150, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2386, file: !102, line: 56, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2392, line: 26, size: 1152, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!2393 = !{!2394, !2408, !2409, !2410, !4192, !4196, !4197, !4198, !4201, !4202, !4203, !4204, !4215}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !2391, file: !2392, line: 27, baseType: !2395, size: 192)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2396, line: 19, size: 192, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!2397 = !{!2398, !2406, !2407}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2395, file: !2396, line: 20, baseType: !2399, size: 128)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2400, line: 296, size: 128, elements: !2401)
!2400 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2401 = !{!2402, !2403, !2405}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2399, file: !2400, line: 297, baseType: !1512, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2399, file: !2400, line: 299, baseType: !2404, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !306, line: 154, baseType: !7)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2399, file: !2400, line: 300, baseType: !1616, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2395, file: !2396, line: 21, baseType: !7, size: 32, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2395, file: !2396, line: 22, baseType: !7, size: 32, offset: 160)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2391, file: !2392, line: 28, baseType: !2073, size: 128, align: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !2391, file: !2392, line: 29, baseType: !7, size: 32, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !2391, file: !2392, line: 30, baseType: !2411, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2413, line: 746, size: 58368, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2414 = !{!2415, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2495, !2506, !2526, !2530, !2533, !2564, !2565, !2566, !2567, !2578, !2580, !2581, !2582, !2583, !2584, !2585, !2596, !2597, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2614, !2615, !2622, !2623, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2880, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2928, !2934, !3112, !3113, !3114, !3115, !3119, !3122, !3129, !3134, !3137, !3140, !3143, !3169, !3307, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3345, !3346, !3347, !3356, !3364, !3365, !3366, !3367, !3368, !3373, !3374, !3375, !3378, !3379, !3382, !3385, !3388, !3396, !3399, !3400, !3486, !3487, !3488, !3489, !3490, !3496, !3497, !3498, !3499, !3502, !3503, !3506, !3509, !3510, !3513, !3514, !3515, !3518, !3519, !3520, !3523, !3524, !3525, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3557, !3560, !3848, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3860, !3932, !3934, !3935, !3936, !3937, !3938, !3939, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3969, !3970, !3971}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2412, file: !2413, line: 752, baseType: !2416, size: 192)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2417, line: 56, size: 192, elements: !2418)
!2417 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !2417, line: 57, baseType: !218, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2416, file: !2417, line: 58, baseType: !218, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2416, file: !2417, line: 59, baseType: !1346, size: 32, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2416, file: !2417, line: 61, baseType: !1346, size: 32, offset: 160)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2412, file: !2413, line: 754, baseType: !7, size: 32, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2412, file: !2413, line: 767, baseType: !1616, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2412, file: !2413, line: 768, baseType: !2366, size: 32, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !2413, line: 770, baseType: !7, size: 32, offset: 352)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2412, file: !2413, line: 771, baseType: !7, size: 32, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2412, file: !2413, line: 774, baseType: !150, size: 32, offset: 416)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2412, file: !2413, line: 775, baseType: !2430, size: 128, offset: 448)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2431, line: 58, size: 128, elements: !2432)
!2431 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2432 = !{!2433, !2434, !2439, !2440}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2430, file: !2431, line: 59, baseType: !2323, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2430, file: !2431, line: 60, baseType: !2435, size: 32, offset: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2430, file: !2431, line: 60, size: 32, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2435, file: !2431, line: 61, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2435, file: !2431, line: 62, baseType: !305, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2430, file: !2431, line: 65, baseType: !321, size: 16, offset: 96)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2430, file: !2431, line: 65, baseType: !321, size: 16, offset: 112)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2412, file: !2413, line: 776, baseType: !7, size: 32, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2412, file: !2413, line: 777, baseType: !218, size: 64, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2412, file: !2413, line: 778, baseType: !2411, size: 64, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2412, file: !2413, line: 787, baseType: !150, size: 32, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2412, file: !2413, line: 788, baseType: !150, size: 32, offset: 800)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2412, file: !2413, line: 790, baseType: !150, size: 32, offset: 832)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2412, file: !2413, line: 792, baseType: !150, size: 32, offset: 864)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2412, file: !2413, line: 793, baseType: !150, size: 32, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2412, file: !2413, line: 794, baseType: !150, size: 32, offset: 928)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2412, file: !2413, line: 795, baseType: !7, size: 32, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2412, file: !2413, line: 797, baseType: !2452, size: 2048, offset: 1024)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2413, line: 551, size: 2048, elements: !2453)
!2453 = !{!2454, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2474, !2477, !2478, !2479}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2452, file: !2413, line: 553, baseType: !2455, size: 128)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2413, line: 411, size: 128, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2455, file: !2413, line: 412, baseType: !218, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2455, file: !2413, line: 413, baseType: !1346, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2452, file: !2413, line: 554, baseType: !267, size: 192, align: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2452, file: !2413, line: 555, baseType: !211, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2452, file: !2413, line: 556, baseType: !211, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2452, file: !2413, line: 558, baseType: !407, size: 128, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2452, file: !2413, line: 559, baseType: !7, size: 32, offset: 576)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2452, file: !2413, line: 561, baseType: !211, size: 64, offset: 640)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2452, file: !2413, line: 562, baseType: !211, size: 64, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2452, file: !2413, line: 563, baseType: !211, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2452, file: !2413, line: 564, baseType: !211, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2452, file: !2413, line: 565, baseType: !206, size: 64, offset: 896)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2452, file: !2413, line: 566, baseType: !211, size: 64, offset: 960)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2452, file: !2413, line: 568, baseType: !211, size: 64, offset: 1024)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2452, file: !2413, line: 571, baseType: !150, size: 32, offset: 1088)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2452, file: !2413, line: 572, baseType: !2473, size: 64, offset: 1152)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2452, file: !2413, line: 574, baseType: !2475, size: 64, offset: 1216)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2413, line: 49, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2452, file: !2413, line: 576, baseType: !2475, size: 64, offset: 1280)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2452, file: !2413, line: 578, baseType: !218, size: 64, offset: 1344)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2452, file: !2413, line: 588, baseType: !2480, size: 512, align: 512, offset: 1536)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2413, line: 497, size: 512, align: 512, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2480, file: !2413, line: 498, baseType: !211, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2480, file: !2413, line: 499, baseType: !211, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2480, file: !2413, line: 500, baseType: !211, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2480, file: !2413, line: 501, baseType: !1346, size: 32, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2480, file: !2413, line: 502, baseType: !1346, size: 32, offset: 224)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2480, file: !2413, line: 503, baseType: !218, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2480, file: !2413, line: 504, baseType: !218, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2480, file: !2413, line: 505, baseType: !218, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2480, file: !2413, line: 506, baseType: !2491, size: 64, align: 64, offset: 448)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2413, line: 445, size: 64, align: 64, elements: !2492)
!2492 = !{!2493, !2494}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2491, file: !2413, line: 446, baseType: !7, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2491, file: !2413, line: 447, baseType: !7, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2412, file: !2413, line: 798, baseType: !2496, size: 384, offset: 3072)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2413, line: 592, size: 384, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2496, file: !2413, line: 593, baseType: !407, size: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2496, file: !2413, line: 594, baseType: !218, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2496, file: !2413, line: 595, baseType: !218, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2496, file: !2413, line: 596, baseType: !7, size: 32, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2496, file: !2413, line: 597, baseType: !323, size: 16, offset: 288)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2496, file: !2413, line: 598, baseType: !323, size: 16, offset: 304)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2496, file: !2413, line: 600, baseType: !2505, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2412, file: !2413, line: 799, baseType: !2507, size: 1792, offset: 3456)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2413, line: 610, size: 1792, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2507, file: !2413, line: 611, baseType: !267, size: 192, align: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2507, file: !2413, line: 618, baseType: !211, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2507, file: !2413, line: 619, baseType: !211, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2507, file: !2413, line: 620, baseType: !211, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2507, file: !2413, line: 621, baseType: !211, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2507, file: !2413, line: 622, baseType: !211, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2507, file: !2413, line: 629, baseType: !206, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2507, file: !2413, line: 630, baseType: !211, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2507, file: !2413, line: 631, baseType: !7, size: 32, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2507, file: !2413, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2507, file: !2413, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2507, file: !2413, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2507, file: !2413, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2507, file: !2413, line: 662, baseType: !260, size: 512, offset: 704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2507, file: !2413, line: 671, baseType: !260, size: 512, offset: 1216)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2507, file: !2413, line: 679, baseType: !2525, size: 64, offset: 1728)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2412, file: !2413, line: 800, baseType: !2527, size: 64, offset: 5248)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2413, line: 800, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2412, file: !2413, line: 809, baseType: !2531, size: 64, offset: 5312)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2413, line: 70, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2412, file: !2413, line: 825, baseType: !2534, size: 2048, align: 512, offset: 5632)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2413, line: 509, size: 2048, align: 512, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2534, file: !2413, line: 511, baseType: !211, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2534, file: !2413, line: 512, baseType: !211, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2534, file: !2413, line: 513, baseType: !211, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2534, file: !2413, line: 514, baseType: !211, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2534, file: !2413, line: 515, baseType: !211, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2534, file: !2413, line: 516, baseType: !211, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2534, file: !2413, line: 518, baseType: !211, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2534, file: !2413, line: 519, baseType: !211, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2534, file: !2413, line: 520, baseType: !206, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2534, file: !2413, line: 522, baseType: !211, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2534, file: !2413, line: 523, baseType: !211, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2534, file: !2413, line: 524, baseType: !206, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2534, file: !2413, line: 526, baseType: !206, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2534, file: !2413, line: 527, baseType: !211, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2534, file: !2413, line: 529, baseType: !211, size: 64, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2534, file: !2413, line: 530, baseType: !211, size: 64, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2534, file: !2413, line: 531, baseType: !211, size: 64, offset: 1024)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2534, file: !2413, line: 532, baseType: !211, size: 64, offset: 1088)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2534, file: !2413, line: 533, baseType: !211, size: 64, offset: 1152)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2534, file: !2413, line: 535, baseType: !211, size: 64, offset: 1216)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2534, file: !2413, line: 536, baseType: !211, size: 64, offset: 1280)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2534, file: !2413, line: 537, baseType: !211, size: 64, offset: 1344)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2534, file: !2413, line: 538, baseType: !211, size: 64, offset: 1408)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2534, file: !2413, line: 539, baseType: !211, size: 64, offset: 1472)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2534, file: !2413, line: 540, baseType: !211, size: 64, offset: 1536)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2534, file: !2413, line: 541, baseType: !211, size: 64, offset: 1600)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2534, file: !2413, line: 542, baseType: !211, size: 64, offset: 1664)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2534, file: !2413, line: 543, baseType: !211, size: 64, offset: 1728)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2412, file: !2413, line: 833, baseType: !7, size: 32, offset: 7680)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2412, file: !2413, line: 836, baseType: !7, size: 32, offset: 7712)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2412, file: !2413, line: 837, baseType: !150, size: 32, offset: 7744)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2412, file: !2413, line: 838, baseType: !2568, size: 64, offset: 7808)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2571, line: 19, baseType: !2572)
!2571 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2571, line: 19, size: 64, elements: !2573)
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2572, file: !2571, line: 19, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !2576)
!2576 = !{!2577}
!2577 = !DISubrange(count: 1)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2412, file: !2413, line: 839, baseType: !2579, size: 64, offset: 7872)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2412, file: !2413, line: 840, baseType: !2570, size: 64, offset: 7936)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2412, file: !2413, line: 841, baseType: !1616, size: 64, offset: 8000)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2412, file: !2413, line: 843, baseType: !323, size: 16, offset: 8064)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2412, file: !2413, line: 845, baseType: !323, size: 16, offset: 8080)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2412, file: !2413, line: 848, baseType: !150, size: 32, offset: 8096)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2412, file: !2413, line: 849, baseType: !2586, size: 32, offset: 8128)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2413, line: 718, size: 32, elements: !2587)
!2587 = !{!2588, !2595}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2586, file: !2413, line: 724, baseType: !2589, size: 32)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2413, line: 719, size: 32, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2589, file: !2413, line: 720, baseType: !314, size: 8)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2589, file: !2413, line: 721, baseType: !314, size: 8, offset: 8)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2589, file: !2413, line: 722, baseType: !314, size: 8, offset: 16)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2589, file: !2413, line: 723, baseType: !314, size: 8, offset: 24)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2586, file: !2413, line: 725, baseType: !1346, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2412, file: !2413, line: 850, baseType: !407, size: 128, offset: 8192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2412, file: !2413, line: 851, baseType: !2598, size: 64, offset: 8320)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2413, line: 60, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2412, file: !2413, line: 855, baseType: !218, size: 64, offset: 8384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2412, file: !2413, line: 856, baseType: !314, size: 8, offset: 8448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2412, file: !2413, line: 857, baseType: !314, size: 8, offset: 8456)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2412, file: !2413, line: 858, baseType: !150, size: 32, offset: 8480)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2412, file: !2413, line: 859, baseType: !407, size: 128, offset: 8512)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2412, file: !2413, line: 860, baseType: !150, size: 32, offset: 8640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2412, file: !2413, line: 861, baseType: !407, size: 128, offset: 8704)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2412, file: !2413, line: 873, baseType: !2608, size: 256, offset: 8832)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2413, line: 376, size: 256, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2608, file: !2413, line: 381, baseType: !218, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2608, file: !2413, line: 384, baseType: !213, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2608, file: !2413, line: 389, baseType: !213, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2608, file: !2413, line: 392, baseType: !213, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2412, file: !2413, line: 875, baseType: !407, size: 128, offset: 9088)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2412, file: !2413, line: 877, baseType: !2616, size: 320, offset: 9216)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2617, line: 86, size: 320, elements: !2618)
!2617 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2618 = !{!2619, !2620, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2616, file: !2617, line: 87, baseType: !150, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2616, file: !2617, line: 88, baseType: !407, size: 128, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2616, file: !2617, line: 89, baseType: !407, size: 128, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2412, file: !2413, line: 878, baseType: !267, size: 192, align: 64, offset: 9536)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2412, file: !2413, line: 881, baseType: !2624, size: 64, offset: 9728)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !79, line: 733, size: 10240, elements: !2626)
!2626 = !{!2627, !2794}
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !79, line: 734, baseType: !2628, size: 10240)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2625, file: !79, line: 734, size: 10240, elements: !2629)
!2629 = !{!2630, !2634, !2647, !2652, !2653, !2654, !2655, !2656, !2657, !2666, !2667, !2668, !2674, !2675, !2676, !2677, !2678, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2715, !2724, !2727, !2772, !2773, !2774, !2777, !2780, !2781, !2784, !2785, !2786, !2792, !2793}
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2628, file: !79, line: 739, baseType: !2631, size: 512, align: 512)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2628, file: !79, line: 739, size: 512, align: 512, elements: !2632)
!2632 = !{!2633}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2631, file: !79, line: 747, baseType: !305, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2628, file: !79, line: 750, baseType: !2635, size: 128, offset: 512)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2636, line: 218, size: 128, elements: !2637)
!2636 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2637 = !{!2638, !2645, !2646}
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2635, file: !2636, line: 219, baseType: !2639, size: 32)
!2639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2635, file: !2636, line: 219, size: 32, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2639, file: !2636, line: 220, baseType: !1512, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2639, file: !2636, line: 221, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2636, line: 197, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2636, line: 197, elements: !2131)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2635, file: !2636, line: 223, baseType: !7, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2635, file: !2636, line: 224, baseType: !1616, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2628, file: !79, line: 752, baseType: !2648, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!218, !2651, !218, !218, !218, !218}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2628, file: !79, line: 756, baseType: !218, size: 64, offset: 704)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2628, file: !79, line: 757, baseType: !218, size: 64, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2628, file: !79, line: 760, baseType: !218, size: 64, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2628, file: !79, line: 761, baseType: !218, size: 64, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2628, file: !79, line: 763, baseType: !218, size: 64, offset: 960)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2628, file: !79, line: 764, baseType: !2658, size: 64, offset: 1024)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2660, line: 299, baseType: !2661)
!2660 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2660, line: 299, size: 64, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2661, file: !2660, line: 299, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2665, line: 18, baseType: !218)
!2665 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2628, file: !79, line: 773, baseType: !305, size: 32, offset: 1088)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2628, file: !79, line: 785, baseType: !305, size: 32, offset: 1120)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2628, file: !79, line: 795, baseType: !2669, size: 64, offset: 1152)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !79, line: 726, size: 128, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2670, file: !79, line: 727, baseType: !211, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2670, file: !79, line: 728, baseType: !150, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2628, file: !79, line: 801, baseType: !218, size: 64, offset: 1216)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2628, file: !79, line: 804, baseType: !400, size: 64, offset: 1280)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2628, file: !79, line: 806, baseType: !150, size: 32, offset: 1344)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2628, file: !79, line: 808, baseType: !1512, size: 32, offset: 1376)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2628, file: !79, line: 823, baseType: !2679, size: 320, offset: 1408)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2680, line: 48, size: 320, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!2681 = !{!2682, !2683, !2684, !2685, !2686}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2679, file: !2680, line: 49, baseType: !400, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2679, file: !2680, line: 55, baseType: !400, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2679, file: !2680, line: 57, baseType: !1878, size: 32, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2679, file: !2680, line: 59, baseType: !292, size: 32, offset: 160)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2679, file: !2680, line: 60, baseType: !407, size: 128, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2628, file: !79, line: 825, baseType: !407, size: 128, offset: 1728)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2628, file: !79, line: 845, baseType: !150, size: 32, offset: 1856)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2628, file: !79, line: 849, baseType: !218, size: 64, offset: 1920)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2628, file: !79, line: 850, baseType: !218, size: 64, offset: 1984)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2628, file: !79, line: 852, baseType: !218, size: 64, offset: 2048)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2628, file: !79, line: 853, baseType: !218, size: 64, offset: 2112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2628, file: !79, line: 854, baseType: !402, size: 64, offset: 2176)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2628, file: !79, line: 855, baseType: !218, size: 64, offset: 2240)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2628, file: !79, line: 856, baseType: !218, size: 64, offset: 2304)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2628, file: !79, line: 857, baseType: !218, size: 64, offset: 2368)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2628, file: !79, line: 858, baseType: !218, size: 64, offset: 2432)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2628, file: !79, line: 865, baseType: !356, size: 32, offset: 2496)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2628, file: !79, line: 867, baseType: !1512, size: 32, offset: 2528)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2628, file: !79, line: 869, baseType: !218, size: 64, offset: 2560)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2628, file: !79, line: 869, baseType: !218, size: 64, offset: 2624)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2628, file: !79, line: 869, baseType: !218, size: 64, offset: 2688)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2628, file: !79, line: 869, baseType: !218, size: 64, offset: 2752)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2628, file: !79, line: 870, baseType: !218, size: 64, offset: 2816)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2628, file: !79, line: 870, baseType: !218, size: 64, offset: 2880)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2628, file: !79, line: 870, baseType: !218, size: 64, offset: 2944)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2628, file: !79, line: 871, baseType: !218, size: 64, offset: 3008)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2628, file: !79, line: 871, baseType: !218, size: 64, offset: 3072)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2628, file: !79, line: 871, baseType: !218, size: 64, offset: 3136)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2628, file: !79, line: 871, baseType: !218, size: 64, offset: 3200)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2628, file: !79, line: 873, baseType: !2712, size: 3328, offset: 3264)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 3328, elements: !2713)
!2713 = !{!2714}
!2714 = !DISubrange(count: 52)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2628, file: !79, line: 875, baseType: !2716, size: 1280, offset: 6592)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2717, size: 1280, elements: !2083)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2718, line: 22, size: 320, elements: !2719)
!2718 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2719 = !{!2720, !2721, !2722, !2723}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2717, file: !2718, line: 23, baseType: !292, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2717, file: !2718, line: 24, baseType: !206, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2717, file: !2718, line: 26, baseType: !407, size: 128, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2717, file: !2718, line: 28, baseType: !705, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2628, file: !79, line: 877, baseType: !2725, size: 64, offset: 7872)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !79, line: 877, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2628, file: !79, line: 880, baseType: !2728, size: 1088, offset: 7936)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2729, line: 72, baseType: !2730)
!2729 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2729, line: 23, size: 1088, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2739, !2740, !2741, !2742, !2769, !2770, !2771}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2730, file: !2729, line: 28, baseType: !211, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2730, file: !2729, line: 38, baseType: !402, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2730, file: !2729, line: 40, baseType: !218, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2730, file: !2729, line: 43, baseType: !2679, size: 320, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2730, file: !2729, line: 44, baseType: !2737, size: 64, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2729, line: 44, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2730, file: !2729, line: 48, baseType: !218, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2730, file: !2729, line: 59, baseType: !1872, size: 256, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2730, file: !2729, line: 60, baseType: !1616, size: 64, offset: 896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2730, file: !2729, line: 61, baseType: !2743, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2746, line: 13, size: 1216, elements: !2747)
!2746 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2745, file: !2746, line: 14, baseType: !1616, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2745, file: !2746, line: 15, baseType: !218, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2745, file: !2746, line: 17, baseType: !218, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2745, file: !2746, line: 17, baseType: !218, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2745, file: !2746, line: 18, baseType: !218, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2745, file: !2746, line: 18, baseType: !218, size: 64, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2745, file: !2746, line: 19, baseType: !2755, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2745, file: !2746, line: 21, baseType: !219, size: 64, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2745, file: !2746, line: 23, baseType: !219, size: 64, offset: 512)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2745, file: !2746, line: 24, baseType: !219, size: 64, offset: 576)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2745, file: !2746, line: 25, baseType: !219, size: 64, offset: 640)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2745, file: !2746, line: 26, baseType: !219, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2745, file: !2746, line: 27, baseType: !219, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2745, file: !2746, line: 28, baseType: !219, size: 64, offset: 832)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2745, file: !2746, line: 29, baseType: !219, size: 64, offset: 896)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2745, file: !2746, line: 30, baseType: !219, size: 64, offset: 960)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2745, file: !2746, line: 31, baseType: !219, size: 64, offset: 1024)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2745, file: !2746, line: 32, baseType: !219, size: 64, offset: 1088)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2745, file: !2746, line: 33, baseType: !219, size: 64, offset: 1152)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2730, file: !2729, line: 63, baseType: !305, size: 32, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2730, file: !2729, line: 69, baseType: !321, size: 16, offset: 1056)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2730, file: !2729, line: 70, baseType: !1989, size: 16, offset: 1072)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2628, file: !79, line: 882, baseType: !218, size: 64, offset: 9024)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2628, file: !79, line: 885, baseType: !1512, size: 32, offset: 9088)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2628, file: !79, line: 886, baseType: !2775, size: 64, offset: 9152)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !79, line: 732, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2628, file: !79, line: 901, baseType: !2778, size: 64, offset: 9216)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1632, line: 18, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2628, file: !79, line: 904, baseType: !2651, size: 64, offset: 9280)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2628, file: !79, line: 906, baseType: !2782, size: 64, offset: 9344)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !79, line: 906, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2628, file: !79, line: 930, baseType: !305, size: 32, offset: 9408)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2628, file: !79, line: 933, baseType: !305, size: 32, offset: 9440)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2628, file: !79, line: 935, baseType: !2787, size: 64, offset: 9472)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !95, line: 103, size: 64, elements: !2788)
!2788 = !{!2789}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2787, file: !95, line: 104, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !95, line: 101, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2628, file: !79, line: 940, baseType: !400, size: 64, offset: 9536)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2628, file: !79, line: 942, baseType: !397, size: 256, offset: 9600)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2625, file: !79, line: 986, baseType: !2795, offset: 10240)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, elements: !2796)
!2796 = !{!2797}
!2797 = !DISubrange(count: -1)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2412, file: !2413, line: 882, baseType: !2624, size: 64, offset: 9792)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2412, file: !2413, line: 884, baseType: !150, size: 32, offset: 9856)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2412, file: !2413, line: 885, baseType: !150, size: 32, offset: 9888)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2412, file: !2413, line: 886, baseType: !150, size: 32, offset: 9920)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2412, file: !2413, line: 888, baseType: !150, size: 32, offset: 9952)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2412, file: !2413, line: 890, baseType: !218, size: 64, offset: 9984)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2412, file: !2413, line: 893, baseType: !7, size: 32, offset: 10048)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2412, file: !2413, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2412, file: !2413, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2412, file: !2413, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2412, file: !2413, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2412, file: !2413, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2412, file: !2413, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2412, file: !2413, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2412, file: !2413, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2412, file: !2413, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2412, file: !2413, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2412, file: !2413, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2412, file: !2413, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2412, file: !2413, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2412, file: !2413, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2412, file: !2413, line: 969, baseType: !218, size: 64, offset: 10176)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2412, file: !2413, line: 971, baseType: !2821, size: 448, offset: 10240)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !65, line: 25, size: 448, elements: !2822)
!2822 = !{!2823, !2824, !2829}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2821, file: !65, line: 26, baseType: !218, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2821, file: !65, line: 27, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!219, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2821, file: !65, line: 28, baseType: !2830, size: 320, offset: 128)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2821, file: !65, line: 28, size: 320, elements: !2831)
!2831 = !{!2832, !2841, !2865}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2830, file: !65, line: 37, baseType: !2833, size: 320)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !65, line: 30, size: 320, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2833, file: !65, line: 31, baseType: !1364, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2833, file: !65, line: 32, baseType: !1346, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2833, file: !65, line: 33, baseType: !1346, size: 32, offset: 96)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2833, file: !65, line: 34, baseType: !1346, size: 32, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2833, file: !65, line: 35, baseType: !211, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2833, file: !65, line: 36, baseType: !1364, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2830, file: !65, line: 47, baseType: !2842, size: 192)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !65, line: 39, size: 192, elements: !2843)
!2843 = !{!2844, !2845, !2846, !2864}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2842, file: !65, line: 40, baseType: !347, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2842, file: !65, line: 41, baseType: !64, size: 32, offset: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !65, line: 42, baseType: !2847, size: 64, offset: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !65, line: 42, size: 64, elements: !2848)
!2848 = !{!2849, !2856}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2847, file: !65, line: 43, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2852, line: 7, size: 128, elements: !2853)
!2852 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2851, file: !2852, line: 8, baseType: !814, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2851, file: !2852, line: 9, baseType: !210, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2847, file: !65, line: 44, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2859, line: 7, size: 64, elements: !2860)
!2859 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2860 = !{!2861, !2863}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2858, file: !2859, line: 8, baseType: !2862, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2859, line: 5, baseType: !553)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2858, file: !2859, line: 9, baseType: !553, size: 32, offset: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2842, file: !65, line: 46, baseType: !211, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2830, file: !65, line: 55, baseType: !2866, size: 256)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !65, line: 49, size: 256, elements: !2867)
!2867 = !{!2868, !2876, !2877, !2878, !2879}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2866, file: !65, line: 50, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2871, line: 36, size: 64, elements: !2872)
!2871 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2872 = !{!2873, !2874, !2875}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2870, file: !2871, line: 37, baseType: !150, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2870, file: !2871, line: 38, baseType: !1991, size: 16, offset: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2870, file: !2871, line: 39, baseType: !1991, size: 16, offset: 48)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2866, file: !65, line: 51, baseType: !150, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2866, file: !65, line: 52, baseType: !150, size: 32, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2866, file: !65, line: 53, baseType: !218, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2866, file: !65, line: 54, baseType: !218, size: 64, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2412, file: !2413, line: 973, baseType: !2881, size: 32, offset: 10688)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !306, line: 27, baseType: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !349, line: 28, baseType: !150)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2412, file: !2413, line: 974, baseType: !2881, size: 32, offset: 10720)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2412, file: !2413, line: 978, baseType: !218, size: 64, offset: 10752)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2412, file: !2413, line: 987, baseType: !2411, size: 64, offset: 10816)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2412, file: !2413, line: 990, baseType: !2411, size: 64, offset: 10880)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2412, file: !2413, line: 995, baseType: !407, size: 128, offset: 10944)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2412, file: !2413, line: 996, baseType: !407, size: 128, offset: 11072)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2412, file: !2413, line: 997, baseType: !2411, size: 64, offset: 11200)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2412, file: !2413, line: 1005, baseType: !407, size: 128, offset: 11264)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2412, file: !2413, line: 1006, baseType: !407, size: 128, offset: 11392)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2412, file: !2413, line: 1009, baseType: !2362, size: 64, offset: 11520)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2412, file: !2413, line: 1010, baseType: !2894, size: 512, offset: 11584)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2099, size: 512, elements: !2083)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2412, file: !2413, line: 1011, baseType: !407, size: 128, offset: 12096)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2412, file: !2413, line: 1012, baseType: !407, size: 128, offset: 12224)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2412, file: !2413, line: 1014, baseType: !1823, size: 64, offset: 12352)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2412, file: !2413, line: 1017, baseType: !1982, size: 64, offset: 12416)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2412, file: !2413, line: 1020, baseType: !1982, size: 64, offset: 12480)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2412, file: !2413, line: 1023, baseType: !1616, size: 64, offset: 12544)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2412, file: !2413, line: 1025, baseType: !211, size: 64, offset: 12608)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2412, file: !2413, line: 1026, baseType: !211, size: 64, offset: 12672)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2412, file: !2413, line: 1031, baseType: !211, size: 64, offset: 12736)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2412, file: !2413, line: 1032, baseType: !2905, size: 192, offset: 12800)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2413, line: 324, size: 192, elements: !2906)
!2906 = !{!2907, !2908, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2905, file: !2413, line: 326, baseType: !211, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2905, file: !2413, line: 327, baseType: !211, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2905, file: !2413, line: 328, baseType: !292, size: 32, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2412, file: !2413, line: 1041, baseType: !218, size: 64, offset: 12992)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2412, file: !2413, line: 1042, baseType: !218, size: 64, offset: 13056)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2412, file: !2413, line: 1045, baseType: !211, size: 64, offset: 13120)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2412, file: !2413, line: 1048, baseType: !211, size: 64, offset: 13184)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2412, file: !2413, line: 1051, baseType: !218, size: 64, offset: 13248)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2412, file: !2413, line: 1052, baseType: !218, size: 64, offset: 13312)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2412, file: !2413, line: 1055, baseType: !2917, size: 640, offset: 13376)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2918, line: 132, size: 640, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2919 = !{!2920, !2926, !2927}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2917, file: !2918, line: 133, baseType: !2921, size: 576)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2922, size: 576, elements: !1548)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2918, line: 117, size: 192, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2922, file: !2918, line: 118, baseType: !211, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2922, file: !2918, line: 119, baseType: !362, size: 128, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2917, file: !2918, line: 134, baseType: !7, size: 32, offset: 576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2917, file: !2918, line: 135, baseType: !7, size: 32, offset: 608)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2412, file: !2413, line: 1058, baseType: !2929, size: 448, offset: 14016)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2918, line: 144, size: 448, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2929, file: !2918, line: 145, baseType: !2073, size: 128, align: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2929, file: !2918, line: 146, baseType: !1872, size: 256, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2929, file: !2918, line: 147, baseType: !7, size: 32, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2412, file: !2413, line: 1064, baseType: !2935, size: 64, offset: 14464)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2938, line: 110, size: 1472, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2956, !2957, !2958, !2959, !2960, !2961, !3067, !3068, !3069, !3070, !3071, !3094, !3095, !3099, !3107}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2937, file: !2938, line: 111, baseType: !400, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2937, file: !2938, line: 112, baseType: !1631, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2937, file: !2938, line: 113, baseType: !1640, size: 32, offset: 96)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2937, file: !2938, line: 114, baseType: !1631, size: 32, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2937, file: !2938, line: 115, baseType: !1640, size: 32, offset: 160)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2937, file: !2938, line: 116, baseType: !1631, size: 32, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2937, file: !2938, line: 117, baseType: !1640, size: 32, offset: 224)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2937, file: !2938, line: 118, baseType: !1631, size: 32, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2937, file: !2938, line: 119, baseType: !1640, size: 32, offset: 288)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2937, file: !2938, line: 120, baseType: !7, size: 32, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2937, file: !2938, line: 121, baseType: !2951, size: 64, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2952, line: 24, baseType: !2953)
!2952 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2952, line: 24, size: 64, elements: !2954)
!2954 = !{!2955}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2953, file: !2952, line: 24, baseType: !211, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2937, file: !2938, line: 122, baseType: !2951, size: 64, offset: 448)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2937, file: !2938, line: 123, baseType: !2951, size: 64, offset: 512)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2937, file: !2938, line: 124, baseType: !2951, size: 64, offset: 576)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2937, file: !2938, line: 125, baseType: !2951, size: 64, offset: 640)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2937, file: !2938, line: 127, baseType: !217, size: 8, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2937, file: !2938, line: 129, baseType: !2962, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2964, line: 195, size: 1728, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2965 = !{!2966, !2967, !2970, !2975, !2976, !2979, !2980, !2985, !2986, !2987, !2988, !2991, !2992, !2993, !2994, !2995, !3031, !3052}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2963, file: !2964, line: 196, baseType: !2366, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2963, file: !2964, line: 197, baseType: !2968, size: 32, offset: 32)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2964, line: 28, baseType: !2969)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !306, line: 104, baseType: !553)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2964, line: 198, baseType: !2971, size: 192, offset: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !2964, line: 198, size: 192, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2971, file: !2964, line: 199, baseType: !407, size: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2971, file: !2964, line: 200, baseType: !267, size: 192, align: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2963, file: !2964, line: 205, baseType: !2679, size: 320, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2963, file: !2964, line: 206, baseType: !2977, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2964, line: 206, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2963, file: !2964, line: 207, baseType: !1616, size: 64, offset: 640)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2964, line: 208, baseType: !2981, size: 64, offset: 704)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !2964, line: 208, size: 64, elements: !2982)
!2982 = !{!2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2981, file: !2964, line: 209, baseType: !391, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2981, file: !2964, line: 210, baseType: !391, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2963, file: !2964, line: 212, baseType: !391, size: 64, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2963, file: !2964, line: 213, baseType: !1631, size: 32, offset: 832)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2963, file: !2964, line: 214, baseType: !1640, size: 32, offset: 864)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2963, file: !2964, line: 215, baseType: !2989, size: 32, offset: 896)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2964, line: 31, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !306, line: 110, baseType: !1346)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2963, file: !2964, line: 216, baseType: !323, size: 16, offset: 928)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2963, file: !2964, line: 217, baseType: !323, size: 16, offset: 944)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2963, file: !2964, line: 221, baseType: !1991, size: 16, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2963, file: !2964, line: 228, baseType: !218, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2964, line: 245, baseType: !2996, size: 320, offset: 1088)
!2996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !2964, line: 245, size: 320, elements: !2997)
!2997 = !{!2998, !3023}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2996, file: !2964, line: 246, baseType: !2999, size: 320)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2964, line: 114, size: 320, elements: !3000)
!3000 = !{!3001, !3002, !3012, !3015, !3022}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2999, file: !2964, line: 116, baseType: !218, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !2964, line: 117, baseType: !3003, size: 64, offset: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2999, file: !2964, line: 117, size: 64, elements: !3004)
!3004 = !{!3005, !3011}
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !3003, file: !2964, line: 118, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3003, file: !2964, line: 118, size: 64, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !3006, file: !2964, line: 120, baseType: !321, size: 16)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3006, file: !2964, line: 121, baseType: !3010, size: 48, offset: 16)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 48, elements: !837)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3003, file: !2964, line: 127, baseType: !218, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2999, file: !2964, line: 129, baseType: !3013, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2964, line: 102, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2999, file: !2964, line: 130, baseType: !3016, size: 64, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2964, line: 108, size: 192, elements: !3018)
!3018 = !{!3019, !3020, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3017, file: !2964, line: 109, baseType: !2073, size: 128, align: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3017, file: !2964, line: 110, baseType: !2366, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3017, file: !2964, line: 111, baseType: !766, size: 8, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2999, file: !2964, line: 131, baseType: !238, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !2964, line: 247, baseType: !3024, size: 320)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2996, file: !2964, line: 247, size: 320, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029, !3030}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3024, file: !2964, line: 248, baseType: !218, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !3024, file: !2964, line: 249, baseType: !218, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3024, file: !2964, line: 250, baseType: !3013, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3024, file: !2964, line: 251, baseType: !3016, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3024, file: !2964, line: 252, baseType: !244, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2964, line: 260, baseType: !3032, size: 256, offset: 1408)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !2964, line: 260, size: 256, elements: !3033)
!3033 = !{!3034, !3040}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3032, file: !2964, line: 261, baseType: !3035, size: 256)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2964, line: 134, size: 256, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !3035, file: !2964, line: 135, baseType: !1616, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3035, file: !2964, line: 136, baseType: !3039, size: 256)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 256, elements: !2083)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3032, file: !2964, line: 262, baseType: !3041, size: 256)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !2964, line: 262, size: 256, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !3041, file: !2964, line: 264, baseType: !407, size: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !3041, file: !2964, line: 265, baseType: !3045, size: 128, offset: 128)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !3046, line: 22, size: 128, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!3047 = !{!3048, !3051}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3045, file: !3046, line: 23, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !3046, line: 23, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !3045, file: !3046, line: 24, baseType: !218, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2963, file: !2964, line: 280, baseType: !3053, size: 64, offset: 1664)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2964, line: 176, size: 192, elements: !3055)
!3055 = !{!3056, !3065, !3066}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3054, file: !2964, line: 177, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2964, line: 171, baseType: !3058)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!150, !2962, !3061, !3063, !2962}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3035)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3054, file: !2964, line: 178, baseType: !2962, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !3054, file: !2964, line: 179, baseType: !3013, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2937, file: !2938, line: 130, baseType: !2962, size: 64, offset: 832)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2937, file: !2938, line: 131, baseType: !2962, size: 64, offset: 896)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2937, file: !2938, line: 132, baseType: !2962, size: 64, offset: 960)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2937, file: !2938, line: 135, baseType: !1616, size: 64, offset: 1024)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2937, file: !2938, line: 137, baseType: !3072, size: 64, offset: 1088)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !3074, line: 14, size: 1088, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3073, file: !3074, line: 15, baseType: !2366, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !3073, file: !3074, line: 17, baseType: !2717, size: 320, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !3073, file: !3074, line: 19, baseType: !218, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !3073, file: !3074, line: 20, baseType: !400, size: 64, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !3073, file: !3074, line: 23, baseType: !2099, size: 128, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3073, file: !3074, line: 24, baseType: !1631, size: 32, offset: 640)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !3073, file: !3074, line: 29, baseType: !400, size: 64, offset: 704)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !3073, file: !3074, line: 36, baseType: !3084, size: 320, offset: 768)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !3085, line: 15, size: 320, elements: !3086)
!3085 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3092, !3093}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3084, file: !3085, line: 16, baseType: !292, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3084, file: !3085, line: 18, baseType: !150, size: 32, offset: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !3084, file: !3085, line: 19, baseType: !150, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !3084, file: !3085, line: 20, baseType: !150, size: 32, offset: 96)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !3084, file: !3085, line: 21, baseType: !150, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !3084, file: !3085, line: 22, baseType: !218, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3084, file: !3085, line: 23, baseType: !218, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2937, file: !2938, line: 138, baseType: !2778, size: 64, offset: 1152)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2937, file: !2938, line: 139, baseType: !3096, size: 64, offset: 1216)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !3098, line: 16, flags: DIFlagFwdDecl)
!3098 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2937, file: !2938, line: 140, baseType: !3100, size: 64, offset: 1280)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2938, line: 25, size: 64, elements: !3102)
!3102 = !{!3103, !3104, !3105}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3101, file: !2938, line: 26, baseType: !305, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3101, file: !2938, line: 27, baseType: !150, size: 32, offset: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3101, file: !2938, line: 28, baseType: !3106, offset: 64)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1640, elements: !2796)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !2937, file: !2938, line: 142, baseType: !3108, size: 128, offset: 1344)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !2938, line: 142, size: 128, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3108, file: !2938, line: 143, baseType: !150, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3108, file: !2938, line: 144, baseType: !2073, size: 128, align: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2412, file: !2413, line: 1067, baseType: !2935, size: 64, offset: 14528)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2412, file: !2413, line: 1070, baseType: !2935, size: 64, offset: 14592)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2412, file: !2413, line: 1074, baseType: !2962, size: 64, offset: 14656)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2412, file: !2413, line: 1084, baseType: !3116, size: 128, offset: 14720)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, elements: !3117)
!3117 = !{!3118}
!3118 = !DISubrange(count: 16)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2412, file: !2413, line: 1086, baseType: !3120, size: 64, offset: 14848)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2413, line: 55, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2412, file: !2413, line: 1089, baseType: !3123, size: 64, offset: 14912)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3124, line: 12, size: 64, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3123, file: !3124, line: 13, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3124, line: 8, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2412, file: !2413, line: 1090, baseType: !3130, size: 128, offset: 14976)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3131, line: 13, size: 128, elements: !3132)
!3131 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3130, file: !3131, line: 14, baseType: !407, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2412, file: !2413, line: 1097, baseType: !3135, size: 64, offset: 15104)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2413, line: 50, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2412, file: !2413, line: 1100, baseType: !3138, size: 64, offset: 15168)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2413, line: 1100, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2412, file: !2413, line: 1103, baseType: !3141, size: 64, offset: 15232)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2413, line: 53, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2412, file: !2413, line: 1107, baseType: !3144, size: 64, offset: 15296)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3146, line: 31, size: 576, elements: !3147)
!3146 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3147 = !{!3148, !3149, !3152, !3155, !3158, !3159, !3162, !3165, !3166}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3145, file: !3146, line: 32, baseType: !2366, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3145, file: !3146, line: 33, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3146, line: 9, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3145, file: !3146, line: 34, baseType: !3153, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3146, line: 10, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3145, file: !3146, line: 35, baseType: !3156, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3146, line: 8, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3145, file: !3146, line: 36, baseType: !2390, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3145, file: !3146, line: 37, baseType: !3160, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2964, line: 34, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3145, file: !3146, line: 38, baseType: !3163, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3146, line: 38, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3145, file: !3146, line: 39, baseType: !3163, size: 64, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3145, file: !3146, line: 40, baseType: !3167, size: 64, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3146, line: 12, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2412, file: !2413, line: 1110, baseType: !3170, size: 64, offset: 15360)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3172, line: 93, size: 8768, elements: !3173)
!3172 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3221, !3230, !3231, !3233, !3234, !3235, !3238, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3276, !3277, !3284, !3294, !3297, !3298, !3301, !3302, !3303, !3304, !3305, !3306}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3171, file: !3172, line: 94, baseType: !2366, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3171, file: !3172, line: 95, baseType: !305, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3171, file: !3172, line: 96, baseType: !150, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3171, file: !3172, line: 97, baseType: !150, size: 32, offset: 96)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3171, file: !3172, line: 98, baseType: !407, size: 128, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3171, file: !3172, line: 100, baseType: !2377, size: 192, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3171, file: !3172, line: 103, baseType: !2411, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3171, file: !3172, line: 106, baseType: !3182, size: 192, offset: 512)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3098, line: 32, size: 192, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3182, file: !3098, line: 33, baseType: !407, size: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3182, file: !3098, line: 34, baseType: !3186, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3187, line: 25, baseType: !3188)
!3187 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3187, line: 23, size: 64, elements: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3188, file: !3187, line: 24, baseType: !2575, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3171, file: !3172, line: 109, baseType: !2207, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3171, file: !3172, line: 112, baseType: !150, size: 32, offset: 768)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3171, file: !3172, line: 114, baseType: !150, size: 32, offset: 800)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3171, file: !3172, line: 115, baseType: !2411, size: 64, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3171, file: !3172, line: 118, baseType: !150, size: 32, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3171, file: !3172, line: 119, baseType: !7, size: 32, offset: 928)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3171, file: !3172, line: 121, baseType: !3198, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3172, line: 80, size: 448, elements: !3200)
!3200 = !{!3201, !3202, !3208}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3199, file: !3172, line: 81, baseType: !305, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3199, file: !3172, line: 82, baseType: !3203, size: 128, offset: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3172, line: 75, size: 128, elements: !3204)
!3204 = !{!3205, !3206}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3203, file: !3172, line: 76, baseType: !2411, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3203, file: !3172, line: 77, baseType: !3207, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3199, file: !3172, line: 83, baseType: !1824, size: 256, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3171, file: !3172, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3171, file: !3172, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3171, file: !3172, line: 138, baseType: !7, size: 32, offset: 1056)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3171, file: !3172, line: 139, baseType: !407, size: 128, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3171, file: !3172, line: 142, baseType: !260, size: 512, offset: 1216)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3171, file: !3172, line: 143, baseType: !275, size: 64, offset: 1728)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3171, file: !3172, line: 150, baseType: !3216, size: 256, offset: 1792)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3217, size: 256, elements: !1972)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3172, line: 38, size: 128, elements: !3218)
!3218 = !{!3219, !3220}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3217, file: !3172, line: 39, baseType: !211, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3217, file: !3172, line: 40, baseType: !211, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3171, file: !3172, line: 156, baseType: !3222, size: 192, offset: 2048)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3172, line: 66, size: 192, elements: !3223)
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3222, file: !3172, line: 67, baseType: !3225, size: 192)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3172, line: 47, size: 192, elements: !3226)
!3226 = !{!3227, !3228, !3229}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3225, file: !3172, line: 48, baseType: !402, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3225, file: !3172, line: 49, baseType: !402, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3225, file: !3172, line: 50, baseType: !402, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3171, file: !3172, line: 160, baseType: !2917, size: 640, offset: 2240)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3171, file: !3172, line: 163, baseType: !3232, size: 256, offset: 2880)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2362, size: 256, elements: !2083)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3171, file: !3172, line: 169, baseType: !2362, size: 64, offset: 3136)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3171, file: !3172, line: 172, baseType: !150, size: 32, offset: 3200)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3171, file: !3172, line: 174, baseType: !3236, size: 64, offset: 3264)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3172, line: 174, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3171, file: !3172, line: 185, baseType: !3239, size: 64, offset: 3328)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !352, line: 860, baseType: !3240)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 853, size: 64, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3240, file: !352, line: 858, baseType: !1666, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3240, file: !352, line: 859, baseType: !1512, size: 32, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3171, file: !3172, line: 186, baseType: !211, size: 64, offset: 3392)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3171, file: !3172, line: 186, baseType: !211, size: 64, offset: 3456)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3171, file: !3172, line: 186, baseType: !211, size: 64, offset: 3520)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3171, file: !3172, line: 186, baseType: !211, size: 64, offset: 3584)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3171, file: !3172, line: 187, baseType: !211, size: 64, offset: 3648)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3171, file: !3172, line: 188, baseType: !211, size: 64, offset: 3712)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3171, file: !3172, line: 189, baseType: !2905, size: 192, offset: 3776)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3171, file: !3172, line: 190, baseType: !218, size: 64, offset: 3968)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3171, file: !3172, line: 190, baseType: !218, size: 64, offset: 4032)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3171, file: !3172, line: 190, baseType: !218, size: 64, offset: 4096)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3171, file: !3172, line: 190, baseType: !218, size: 64, offset: 4160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3171, file: !3172, line: 191, baseType: !218, size: 64, offset: 4224)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3171, file: !3172, line: 191, baseType: !218, size: 64, offset: 4288)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3171, file: !3172, line: 191, baseType: !218, size: 64, offset: 4352)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3171, file: !3172, line: 191, baseType: !218, size: 64, offset: 4416)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3171, file: !3172, line: 192, baseType: !218, size: 64, offset: 4480)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3171, file: !3172, line: 192, baseType: !218, size: 64, offset: 4544)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3171, file: !3172, line: 192, baseType: !218, size: 64, offset: 4608)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3171, file: !3172, line: 192, baseType: !218, size: 64, offset: 4672)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3171, file: !3172, line: 193, baseType: !218, size: 64, offset: 4736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3171, file: !3172, line: 193, baseType: !218, size: 64, offset: 4800)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3171, file: !3172, line: 194, baseType: !3266, size: 448, offset: 4864)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3267, line: 12, size: 448, elements: !3268)
!3267 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3266, file: !3267, line: 15, baseType: !211, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3266, file: !3267, line: 17, baseType: !211, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3266, file: !3267, line: 19, baseType: !211, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3266, file: !3267, line: 21, baseType: !211, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3266, file: !3267, line: 29, baseType: !211, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3266, file: !3267, line: 35, baseType: !211, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3266, file: !3267, line: 44, baseType: !211, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3171, file: !3172, line: 202, baseType: !213, size: 64, offset: 5312)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3171, file: !3172, line: 213, baseType: !3278, size: 2048, offset: 5376)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 2048, elements: !3117)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3280, line: 43, size: 128, elements: !3281)
!3280 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3279, file: !3280, line: 44, baseType: !1594, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3279, file: !3280, line: 45, baseType: !1594, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3171, file: !3172, line: 216, baseType: !3285, size: 448, offset: 7424)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3172, line: 30, size: 448, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3285, file: !3172, line: 31, baseType: !150, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3285, file: !3172, line: 32, baseType: !219, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3285, file: !3172, line: 33, baseType: !218, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3285, file: !3172, line: 34, baseType: !211, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3285, file: !3172, line: 34, baseType: !211, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3285, file: !3172, line: 35, baseType: !218, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3285, file: !3172, line: 35, baseType: !218, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3171, file: !3172, line: 219, baseType: !3295, size: 64, offset: 7872)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3172, line: 219, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3171, file: !3172, line: 222, baseType: !7, size: 32, offset: 7936)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3171, file: !3172, line: 223, baseType: !3299, size: 64, offset: 8000)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3172, line: 223, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3171, file: !3172, line: 230, baseType: !766, size: 8, offset: 8064)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3171, file: !3172, line: 231, baseType: !1991, size: 16, offset: 8080)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3171, file: !3172, line: 232, baseType: !1991, size: 16, offset: 8096)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3171, file: !3172, line: 234, baseType: !2624, size: 64, offset: 8128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3171, file: !3172, line: 237, baseType: !1872, size: 256, offset: 8192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3171, file: !3172, line: 243, baseType: !2679, size: 320, offset: 8448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2412, file: !2413, line: 1111, baseType: !3308, size: 64, offset: 15424)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3172, line: 20, size: 16640, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3309, file: !3172, line: 21, baseType: !1512, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3309, file: !3172, line: 22, baseType: !2366, size: 32, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3309, file: !3172, line: 23, baseType: !2377, size: 192, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3309, file: !3172, line: 24, baseType: !3315, size: 16384, offset: 256)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3316, size: 16384, elements: !1552)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3098, line: 51, size: 256, elements: !3317)
!3317 = !{!3318}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3316, file: !3098, line: 52, baseType: !3319, size: 256)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3098, line: 37, size: 256, elements: !3320)
!3320 = !{!3321, !3328, !3329, !3333}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3319, file: !3098, line: 39, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3323, line: 83, baseType: !3324)
!3323 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3323, line: 82, baseType: !3326)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !150}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3319, file: !3098, line: 40, baseType: !218, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3319, file: !3098, line: 46, baseType: !3330, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3323, line: 86, baseType: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3323, line: 85, baseType: !455)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3319, file: !3098, line: 48, baseType: !3186, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2412, file: !2413, line: 1112, baseType: !3186, size: 64, offset: 15488)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2412, file: !2413, line: 1113, baseType: !3186, size: 64, offset: 15552)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2412, file: !2413, line: 1115, baseType: !3186, size: 64, offset: 15616)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2412, file: !2413, line: 1116, baseType: !3182, size: 192, offset: 15680)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2412, file: !2413, line: 1117, baseType: !218, size: 64, offset: 15872)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2412, file: !2413, line: 1118, baseType: !1592, size: 64, offset: 15936)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2412, file: !2413, line: 1119, baseType: !7, size: 32, offset: 16000)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2412, file: !2413, line: 1121, baseType: !2072, size: 64, offset: 16064)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2412, file: !2413, line: 1125, baseType: !3343, size: 64, offset: 16128)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2413, line: 43, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2412, file: !2413, line: 1127, baseType: !1631, size: 32, offset: 16192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2412, file: !2413, line: 1128, baseType: !7, size: 32, offset: 16224)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2412, file: !2413, line: 1130, baseType: !3348, size: 128, offset: 16256)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3349, line: 37, size: 128, elements: !3350)
!3349 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3350 = !{!3351, !3352, !3353}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3348, file: !3349, line: 38, baseType: !150, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3348, file: !3349, line: 39, baseType: !305, size: 32, offset: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3348, file: !3349, line: 40, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3349, line: 24, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2412, file: !2413, line: 1131, baseType: !3357, size: 256, offset: 16384)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3358, line: 12, size: 256, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3357, file: !3358, line: 13, baseType: !244, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3357, file: !3358, line: 14, baseType: !218, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3357, file: !3358, line: 15, baseType: !218, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3357, file: !3358, line: 16, baseType: !766, size: 8, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2412, file: !2413, line: 1134, baseType: !211, size: 64, offset: 16640)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2412, file: !2413, line: 1135, baseType: !211, size: 64, offset: 16704)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2412, file: !2413, line: 1138, baseType: !1512, size: 32, offset: 16768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2412, file: !2413, line: 1141, baseType: !292, size: 32, offset: 16800)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2412, file: !2413, line: 1143, baseType: !3369, size: 64, offset: 16832)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2413, line: 735, size: 64, elements: !3370)
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3369, file: !2413, line: 736, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2412, file: !2413, line: 1147, baseType: !365, size: 128, offset: 16896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2412, file: !2413, line: 1149, baseType: !2411, size: 64, offset: 17024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2412, file: !2413, line: 1151, baseType: !3376, size: 64, offset: 17088)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2413, line: 1151, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2412, file: !2413, line: 1188, baseType: !1616, size: 64, offset: 17152)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2412, file: !2413, line: 1191, baseType: !3380, size: 64, offset: 17216)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2413, line: 44, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2412, file: !2413, line: 1194, baseType: !3383, size: 64, offset: 17280)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2413, line: 45, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2412, file: !2413, line: 1197, baseType: !3386, size: 64, offset: 17344)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2413, line: 61, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2412, file: !2413, line: 1199, baseType: !3389, size: 64, offset: 17408)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3391, line: 99, size: 128, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3392 = !{!3393, !3394, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3390, file: !3391, line: 100, baseType: !400, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3390, file: !3391, line: 101, baseType: !305, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3390, file: !3391, line: 103, baseType: !323, size: 16, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2412, file: !2413, line: 1202, baseType: !3397, size: 64, offset: 17472)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2413, line: 48, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2412, file: !2413, line: 1205, baseType: !218, size: 64, offset: 17536)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2412, file: !2413, line: 1206, baseType: !3401, size: 64, offset: 17600)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3098, line: 14, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3098, line: 12, size: 384, elements: !3404)
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !3098, line: 13, baseType: !3406, size: 384)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !3098, line: 13, size: 384, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3406, file: !3098, line: 13, baseType: !150, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3406, file: !3098, line: 13, baseType: !150, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3406, file: !3098, line: 13, baseType: !150, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3406, file: !3098, line: 13, baseType: !3412, size: 256, offset: 128)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3413, line: 37, size: 256, elements: !3414)
!3413 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3414 = !{!3415, !3420, !3433, !3439, !3448, !3475, !3480}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3412, file: !3413, line: 42, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 39, size: 64, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3416, file: !3413, line: 40, baseType: !2882, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3416, file: !3413, line: 41, baseType: !1637, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3412, file: !3413, line: 50, baseType: !3421, size: 192)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 45, size: 192, elements: !3422)
!3422 = !{!3423, !3425, !3426, !3432}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3421, file: !3413, line: 46, baseType: !3424, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !349, line: 95, baseType: !150)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3421, file: !3413, line: 47, baseType: !150, size: 32, offset: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3421, file: !3413, line: 48, baseType: !3427, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3413, line: 11, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3413, line: 8, size: 64, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3428, file: !3413, line: 9, baseType: !150, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3428, file: !3413, line: 10, baseType: !1616, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3421, file: !3413, line: 49, baseType: !150, size: 32, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3412, file: !3413, line: 57, baseType: !3434, size: 128)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 53, size: 128, elements: !3435)
!3435 = !{!3436, !3437, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3434, file: !3413, line: 54, baseType: !2882, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3434, file: !3413, line: 55, baseType: !1637, size: 32, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3434, file: !3413, line: 56, baseType: !3427, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3412, file: !3413, line: 66, baseType: !3440, size: 256)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 60, size: 256, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3447}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3440, file: !3413, line: 61, baseType: !2882, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3440, file: !3413, line: 62, baseType: !1637, size: 32, offset: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3440, file: !3413, line: 63, baseType: !150, size: 32, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3440, file: !3413, line: 64, baseType: !3446, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !349, line: 94, baseType: !1581)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3440, file: !3413, line: 65, baseType: !3446, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3412, file: !3413, line: 105, baseType: !3449, size: 256)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 69, size: 256, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3449, file: !3413, line: 70, baseType: !1616, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3449, file: !3413, line: 79, baseType: !3453, size: 192, offset: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3449, file: !3413, line: 79, size: 192, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3464, !3469}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3453, file: !3413, line: 81, baseType: !150, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3453, file: !3413, line: 86, baseType: !1991, size: 16)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3453, file: !3413, line: 92, baseType: !3458, size: 192)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !3413, line: 88, size: 192, elements: !3459)
!3459 = !{!3460, !3462, !3463}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3458, file: !3413, line: 89, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, elements: !343)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3458, file: !3413, line: 90, baseType: !1616, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3458, file: !3413, line: 91, baseType: !1616, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3453, file: !3413, line: 97, baseType: !3465, size: 96)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !3413, line: 94, size: 96, elements: !3466)
!3466 = !{!3467, !3468}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3465, file: !3413, line: 95, baseType: !3461, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3465, file: !3413, line: 96, baseType: !1347, size: 32, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3453, file: !3413, line: 103, baseType: !3470, size: 128)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !3413, line: 99, size: 128, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3470, file: !3413, line: 100, baseType: !218, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3470, file: !3413, line: 101, baseType: !1347, size: 32, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3470, file: !3413, line: 102, baseType: !1347, size: 32, offset: 96)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3412, file: !3413, line: 111, baseType: !3476, size: 128)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 108, size: 128, elements: !3477)
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3476, file: !3413, line: 109, baseType: !219, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3476, file: !3413, line: 110, baseType: !150, size: 32, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3412, file: !3413, line: 118, baseType: !3481, size: 128)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3413, line: 114, size: 128, elements: !3482)
!3482 = !{!3483, !3484, !3485}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3481, file: !3413, line: 115, baseType: !1616, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3481, file: !3413, line: 116, baseType: !150, size: 32, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3481, file: !3413, line: 117, baseType: !7, size: 32, offset: 96)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2412, file: !2413, line: 1208, baseType: !3266, size: 448, offset: 17664)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2412, file: !2413, line: 1215, baseType: !211, size: 64, offset: 18112)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2412, file: !2413, line: 1217, baseType: !211, size: 64, offset: 18176)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2412, file: !2413, line: 1219, baseType: !211, size: 64, offset: 18240)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2412, file: !2413, line: 1223, baseType: !3491, size: 64, offset: 18304)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3492, line: 99, baseType: !3493)
!3492 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3492, line: 99, size: 64, elements: !3494)
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3493, file: !3492, line: 99, baseType: !2575, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2412, file: !2413, line: 1225, baseType: !1666, size: 32, offset: 18368)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2412, file: !2413, line: 1226, baseType: !150, size: 32, offset: 18400)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2412, file: !2413, line: 1227, baseType: !150, size: 32, offset: 18432)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2412, file: !2413, line: 1231, baseType: !3500, size: 64, offset: 18496)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2413, line: 1231, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2412, file: !2413, line: 1233, baseType: !407, size: 128, offset: 18560)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2412, file: !2413, line: 1240, baseType: !3504, size: 64, offset: 18688)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2413, line: 62, flags: DIFlagFwdDecl)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2412, file: !2413, line: 1242, baseType: !3507, size: 64, offset: 18752)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2413, line: 1242, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2412, file: !2413, line: 1244, baseType: !407, size: 128, offset: 18816)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2412, file: !2413, line: 1245, baseType: !3511, size: 64, offset: 18944)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2413, line: 51, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2412, file: !2413, line: 1246, baseType: !1872, size: 256, offset: 19008)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2412, file: !2413, line: 1247, baseType: !7, size: 32, offset: 19264)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2412, file: !2413, line: 1250, baseType: !3516, size: 64, offset: 19328)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2413, line: 57, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2412, file: !2413, line: 1251, baseType: !1872, size: 256, offset: 19392)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2412, file: !2413, line: 1252, baseType: !407, size: 128, offset: 19648)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2412, file: !2413, line: 1259, baseType: !3521, size: 64, offset: 19776)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !79, line: 717, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2412, file: !2413, line: 1260, baseType: !1991, size: 16, offset: 19840)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2412, file: !2413, line: 1261, baseType: !1991, size: 16, offset: 19856)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2412, file: !2413, line: 1314, baseType: !3526, size: 64, offset: 19904)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3528, line: 62, size: 256, align: 256, elements: !3529)
!3528 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3527, file: !3528, line: 75, baseType: !1347, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3527, file: !3528, line: 90, baseType: !1347, size: 32, offset: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3527, file: !3528, line: 112, baseType: !212, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3527, file: !3528, line: 132, baseType: !1347, size: 32, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3527, file: !3528, line: 140, baseType: !1347, size: 32, offset: 160)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3527, file: !3528, line: 149, baseType: !1347, size: 32, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3527, file: !3528, line: 154, baseType: !3537, offset: 224)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, elements: !2796)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2412, file: !2413, line: 1315, baseType: !1346, size: 32, offset: 19968)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2412, file: !2413, line: 1316, baseType: !1346, size: 32, offset: 20000)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2412, file: !2413, line: 1321, baseType: !218, size: 64, offset: 20032)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2412, file: !2413, line: 1325, baseType: !150, size: 32, offset: 20096)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2412, file: !2413, line: 1326, baseType: !150, size: 32, offset: 20128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2412, file: !2413, line: 1327, baseType: !150, size: 32, offset: 20160)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2412, file: !2413, line: 1328, baseType: !150, size: 32, offset: 20192)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2412, file: !2413, line: 1329, baseType: !2073, size: 128, align: 64, offset: 20224)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2412, file: !2413, line: 1332, baseType: !3547, size: 128, offset: 20352)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3548, line: 51, size: 128, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3549 = !{!3550, !3555, !3556}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3547, file: !3548, line: 60, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3552, line: 7, size: 64, elements: !3553)
!3552 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3553 = !{!3554}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3551, file: !3552, line: 12, baseType: !2572, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3547, file: !3548, line: 63, baseType: !766, size: 8, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3547, file: !3548, line: 70, baseType: !766, size: 8, offset: 72)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2412, file: !2413, line: 1335, baseType: !3558, size: 64, offset: 20480)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2413, line: 59, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2412, file: !2413, line: 1337, baseType: !3561, size: 128, offset: 20544)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3548, line: 39, size: 128, elements: !3562)
!3562 = !{!3563, !3846, !3847}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3561, file: !3548, line: 40, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !79, line: 74, size: 512, align: 128, elements: !3566)
!3566 = !{!3567, !3568, !3840, !3845}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3565, file: !79, line: 75, baseType: !218, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, scope: !3565, file: !79, line: 83, baseType: !3569, size: 320, offset: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3565, file: !79, line: 83, size: 320, elements: !3570)
!3570 = !{!3571, !3592, !3606, !3610, !3839}
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !79, line: 84, baseType: !3572, size: 320)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !79, line: 84, size: 320, elements: !3573)
!3573 = !{!3574, !3585, !3586, !3591}
!3574 = !DIDerivedType(tag: DW_TAG_member, scope: !3572, file: !79, line: 90, baseType: !3575, size: 128)
!3575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3572, file: !79, line: 90, size: 128, elements: !3576)
!3576 = !{!3577, !3578, !3583, !3584}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3575, file: !79, line: 91, baseType: !407, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !79, line: 94, baseType: !3579, size: 128)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3575, file: !79, line: 94, size: 128, elements: !3580)
!3580 = !{!3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3579, file: !79, line: 96, baseType: !1616, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3579, file: !79, line: 98, baseType: !7, size: 32, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3575, file: !79, line: 102, baseType: !407, size: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3575, file: !79, line: 103, baseType: !407, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3572, file: !79, line: 106, baseType: !1621, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3572, file: !79, line: 107, baseType: !3587, size: 64, offset: 192)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3572, file: !79, line: 107, size: 64, elements: !3588)
!3588 = !{!3589, !3590}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3587, file: !79, line: 108, baseType: !218, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3587, file: !79, line: 109, baseType: !218, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3572, file: !79, line: 117, baseType: !218, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !79, line: 119, baseType: !3593, size: 320)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !79, line: 119, size: 320, elements: !3594)
!3594 = !{!3595, !3596, !3599, !3600, !3601}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3593, file: !79, line: 124, baseType: !218, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3593, file: !79, line: 125, baseType: !3597, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !79, line: 125, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3593, file: !79, line: 126, baseType: !218, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3593, file: !79, line: 127, baseType: !218, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !79, line: 128, baseType: !3602, size: 64, offset: 256)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3593, file: !79, line: 128, size: 64, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3602, file: !79, line: 133, baseType: !218, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3602, file: !79, line: 138, baseType: !400, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !79, line: 141, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !79, line: 141, size: 64, elements: !3608)
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3607, file: !79, line: 142, baseType: !218, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !79, line: 144, baseType: !3611, size: 128)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !79, line: 144, size: 128, elements: !3612)
!3612 = !{!3613, !3838}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3611, file: !79, line: 146, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !71, line: 126, size: 1216, elements: !3616)
!3616 = !{!3617, !3626, !3647, !3648, !3649, !3650, !3651, !3820, !3821, !3822}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3615, file: !71, line: 127, baseType: !3618, size: 384)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !71, line: 21, size: 384, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3618, file: !71, line: 22, baseType: !218, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3618, file: !71, line: 23, baseType: !529, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3618, file: !71, line: 24, baseType: !529, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3618, file: !71, line: 25, baseType: !218, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3618, file: !71, line: 26, baseType: !218, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3618, file: !71, line: 27, baseType: !218, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3615, file: !71, line: 128, baseType: !3627, size: 128, offset: 384)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3628, line: 105, size: 128, elements: !3629)
!3628 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3627, file: !3628, line: 110, baseType: !218, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3627, file: !3628, line: 118, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3628, line: 95, size: 448, elements: !3634)
!3634 = !{!3635, !3636, !3642, !3643, !3644, !3645, !3646}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3633, file: !3628, line: 96, baseType: !400, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3633, file: !3628, line: 97, baseType: !3637, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3628, line: 60, baseType: !3639)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3633, file: !3628, line: 98, baseType: !3637, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3633, file: !3628, line: 99, baseType: !766, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3633, file: !3628, line: 100, baseType: !766, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3633, file: !3628, line: 101, baseType: !2073, size: 128, align: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3633, file: !3628, line: 102, baseType: !3641, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3615, file: !71, line: 129, baseType: !1824, size: 256, offset: 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3615, file: !71, line: 130, baseType: !70, size: 32, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3615, file: !71, line: 131, baseType: !7, size: 32, offset: 800)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3615, file: !71, line: 132, baseType: !218, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3615, file: !71, line: 133, baseType: !3652, size: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !71, line: 77, size: 192, elements: !3655)
!3655 = !{!3656, !3660, !3816}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3654, file: !71, line: 83, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3564}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3654, file: !71, line: 89, baseType: !3661, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !79, line: 1184, baseType: !7)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3667, line: 512, size: 896, elements: !3668)
!3667 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3668 = !{!3669, !3783, !3784, !3791, !3798, !3808, !3809, !3810, !3812, !3814}
!3669 = !DIDerivedType(tag: DW_TAG_member, scope: !3666, file: !3667, line: 513, baseType: !3670, size: 320)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3667, line: 513, size: 320, elements: !3671)
!3671 = !{!3672, !3779, !3780, !3781, !3782}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3670, file: !3667, line: 514, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !79, line: 625, size: 1344, elements: !3675)
!3675 = !{!3676, !3685, !3686, !3692, !3699, !3700, !3705, !3706, !3711, !3712, !3715, !3772, !3773, !3774, !3775, !3776, !3777}
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3674, file: !79, line: 628, baseType: !3677, size: 128)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3674, file: !79, line: 628, size: 128, elements: !3678)
!3678 = !{!3679, !3684}
!3679 = !DIDerivedType(tag: DW_TAG_member, scope: !3677, file: !79, line: 629, baseType: !3680, size: 128)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3677, file: !79, line: 629, size: 128, elements: !3681)
!3681 = !{!3682, !3683}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3680, file: !79, line: 631, baseType: !218, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3680, file: !79, line: 632, baseType: !218, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3677, file: !79, line: 635, baseType: !2073, size: 128, align: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3674, file: !79, line: 639, baseType: !2624, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3674, file: !79, line: 640, baseType: !3687, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2660, line: 297, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2660, line: 297, size: 64, elements: !3689)
!3689 = !{!3690}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3688, file: !2660, line: 297, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2665, line: 19, baseType: !218)
!3692 = !DIDerivedType(tag: DW_TAG_member, scope: !3674, file: !79, line: 646, baseType: !3693, size: 64, offset: 256)
!3693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3674, file: !79, line: 646, size: 64, elements: !3694)
!3694 = !{!3695, !3698}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3693, file: !79, line: 647, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3697)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !79, line: 542, baseType: !218)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3693, file: !79, line: 648, baseType: !3697, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3674, file: !79, line: 666, baseType: !150, size: 32, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3674, file: !79, line: 667, baseType: !3701, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !79, line: 579, size: 320, elements: !3703)
!3703 = !{!3704}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3702, file: !79, line: 580, baseType: !2679, size: 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3674, file: !79, line: 670, baseType: !766, size: 8, offset: 448)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3674, file: !79, line: 681, baseType: !3707, size: 256, offset: 512)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3674, file: !79, line: 678, size: 256, elements: !3708)
!3708 = !{!3709, !3710}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3707, file: !79, line: 679, baseType: !267, size: 192, align: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3707, file: !79, line: 680, baseType: !218, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3674, file: !79, line: 689, baseType: !407, size: 128, offset: 768)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3674, file: !79, line: 691, baseType: !3713, size: 64, offset: 896)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !79, line: 691, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3674, file: !79, line: 694, baseType: !3716, size: 64, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3667, line: 563, size: 1024, elements: !3719)
!3719 = !{!3720, !3724, !3725, !3729, !3733, !3737, !3738, !3742, !3746, !3750, !3751, !3752, !3756, !3760, !3764, !3768}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3718, file: !3667, line: 564, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3673}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3718, file: !3667, line: 569, baseType: !3721, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3718, file: !3667, line: 571, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!150, !3673, !218}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3718, file: !3667, line: 572, baseType: !3730, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!150, !3673}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3718, file: !3667, line: 578, baseType: !3734, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!150, !3673, !218, !218, !218}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3718, file: !3667, line: 580, baseType: !3661, size: 64, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3718, file: !3667, line: 581, baseType: !3739, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!3664, !3665, !7}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3718, file: !3667, line: 582, baseType: !3743, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3664, !3665, !218, !218}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3718, file: !3667, line: 584, baseType: !3747, size: 64, offset: 512)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!218, !3673}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3718, file: !3667, line: 588, baseType: !3661, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3718, file: !3667, line: 591, baseType: !3661, size: 64, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3718, file: !3667, line: 597, baseType: !3753, size: 64, offset: 704)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!150, !3673, !218, !1616, !150, !150}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3718, file: !3667, line: 603, baseType: !3757, size: 64, offset: 768)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!238, !3673}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3718, file: !3667, line: 613, baseType: !3761, size: 64, offset: 832)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!150, !3673, !3521}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3718, file: !3667, line: 625, baseType: !3765, size: 64, offset: 896)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!3521, !3673, !218}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3718, file: !3667, line: 633, baseType: !3769, size: 64, offset: 960)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!3564, !3673, !218}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3674, file: !79, line: 697, baseType: !218, size: 64, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3674, file: !79, line: 699, baseType: !2651, size: 64, offset: 1088)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3674, file: !79, line: 700, baseType: !1616, size: 64, offset: 1152)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3674, file: !79, line: 711, baseType: !400, size: 64, offset: 1216)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3674, file: !79, line: 717, baseType: !3521, size: 64, offset: 1280)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3674, file: !79, line: 722, baseType: !3778, offset: 1344)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !79, line: 570, elements: !2131)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3670, file: !3667, line: 515, baseType: !2404, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3670, file: !3667, line: 516, baseType: !218, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3670, file: !3667, line: 517, baseType: !218, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3670, file: !3667, line: 518, baseType: !218, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3666, file: !3667, line: 520, baseType: !78, size: 32, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3666, file: !3667, line: 522, baseType: !3785, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2665, line: 22, baseType: !3787)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2665, line: 22, size: 64, elements: !3788)
!3788 = !{!3789}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3787, file: !2665, line: 22, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2665, line: 15, baseType: !218)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3666, file: !3667, line: 524, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2660, line: 372, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2660, line: 372, size: 64, elements: !3795)
!3795 = !{!3796}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3794, file: !2660, line: 372, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2665, line: 16, baseType: !218)
!3798 = !DIDerivedType(tag: DW_TAG_member, scope: !3666, file: !3667, line: 527, baseType: !3799, size: 64, offset: 512)
!3799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3666, file: !3667, line: 527, size: 64, elements: !3800)
!3800 = !{!3801, !3807}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3799, file: !3667, line: 528, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2665, line: 21, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2665, line: 21, size: 64, elements: !3804)
!3804 = !{!3805}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3803, file: !2665, line: 21, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2665, line: 14, baseType: !218)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3799, file: !3667, line: 529, baseType: !3786, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3666, file: !3667, line: 534, baseType: !3564, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3666, file: !3667, line: 535, baseType: !3564, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3666, file: !3667, line: 541, baseType: !3811, size: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3666, file: !3667, line: 545, baseType: !3813, size: 64, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3666, file: !3667, line: 549, baseType: !3815, size: 64, offset: 832)
!3815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2660, line: 520, baseType: !3564)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3654, file: !71, line: 100, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!150, !3614, !218, !218, !150}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3615, file: !71, line: 134, baseType: !1616, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3615, file: !71, line: 135, baseType: !150, size: 32, offset: 1024)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !3615, file: !71, line: 136, baseType: !3823, size: 128, offset: 1088)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3615, file: !71, line: 136, size: 128, elements: !3824)
!3824 = !{!3825, !3831}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3823, file: !71, line: 137, baseType: !3826, size: 128)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3827, line: 6, size: 128, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3828 = !{!3829, !3830}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3826, file: !3827, line: 7, baseType: !211, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3826, file: !3827, line: 8, baseType: !211, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, scope: !3823, file: !71, line: 138, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3823, file: !71, line: 138, elements: !3833)
!3833 = !{!3834, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3832, file: !71, line: 138, baseType: !3835)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !71, line: 138, elements: !2131)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3832, file: !71, line: 138, baseType: !3837)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3826, elements: !2796)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3611, file: !79, line: 147, baseType: !1616, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3569, file: !79, line: 161, baseType: !2073, size: 128, align: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3565, file: !79, line: 164, baseType: !3841, size: 32, offset: 384)
!3841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3565, file: !79, line: 164, size: 32, elements: !3842)
!3842 = !{!3843, !3844}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3841, file: !79, line: 169, baseType: !305, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3841, file: !79, line: 177, baseType: !7, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3565, file: !79, line: 181, baseType: !305, size: 32, offset: 416)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3561, file: !3548, line: 42, baseType: !1347, size: 32, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3561, file: !3548, line: 43, baseType: !1347, size: 32, offset: 96)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2412, file: !2413, line: 1340, baseType: !3849, size: 64, offset: 20672)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2413, line: 69, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2412, file: !2413, line: 1351, baseType: !150, size: 32, offset: 20736)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2412, file: !2413, line: 1352, baseType: !150, size: 32, offset: 20768)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2412, file: !2413, line: 1354, baseType: !218, size: 64, offset: 20800)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2412, file: !2413, line: 1364, baseType: !211, size: 64, offset: 20864)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2412, file: !2413, line: 1365, baseType: !211, size: 64, offset: 20928)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2412, file: !2413, line: 1412, baseType: !218, size: 64, offset: 20992)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2412, file: !2413, line: 1453, baseType: !3858, size: 64, offset: 21056)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2413, line: 1453, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2412, file: !2413, line: 1457, baseType: !3861, size: 64, offset: 21120)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !95, line: 61, size: 576, elements: !3863)
!3863 = !{!3864, !3865, !3884, !3887, !3888, !3921, !3931}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3862, file: !95, line: 62, baseType: !94, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !3862, file: !95, line: 64, baseType: !3866, size: 192, offset: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3862, file: !95, line: 64, size: 192, elements: !3867)
!3867 = !{!3868, !3879}
!3868 = !DIDerivedType(tag: DW_TAG_member, scope: !3866, file: !95, line: 65, baseType: !3869, size: 192)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3866, file: !95, line: 65, size: 192, elements: !3870)
!3870 = !{!3871, !3878}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3869, file: !95, line: 66, baseType: !3872, size: 128)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3873, line: 50, size: 128, elements: !3874)
!3873 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3872, file: !3873, line: 52, baseType: !218, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3872, file: !3873, line: 54, baseType: !7, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3872, file: !3873, line: 55, baseType: !7, size: 32, offset: 96)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3869, file: !95, line: 67, baseType: !218, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !3866, file: !95, line: 70, baseType: !3880, size: 192)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3866, file: !95, line: 70, size: 192, elements: !3881)
!3881 = !{!3882, !3883}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3880, file: !95, line: 71, baseType: !2073, size: 128, align: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3880, file: !95, line: 72, baseType: !218, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3862, file: !95, line: 76, baseType: !3885, size: 64, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !95, line: 76, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3862, file: !95, line: 77, baseType: !218, size: 64, offset: 320)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3862, file: !95, line: 79, baseType: !3889, size: 64, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3873, line: 25, size: 256, elements: !3891)
!3891 = !{!3892, !3898, !3902}
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3890, file: !3873, line: 26, baseType: !3893, size: 128)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3890, file: !3873, line: 26, size: 128, elements: !3894)
!3894 = !{!3895, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3893, file: !3873, line: 27, baseType: !3896, size: 128)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 128, elements: !3117)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3893, file: !3873, line: 28, baseType: !3896, size: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3890, file: !3873, line: 31, baseType: !3899, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3901)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3873, line: 23, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3890, file: !3873, line: 33, baseType: !3903, size: 64, offset: 192)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3890, file: !3873, line: 33, size: 64, elements: !3904)
!3904 = !{!3905, !3911, !3916}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3903, file: !3873, line: 38, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !3873, line: 34, size: 64, elements: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3906, file: !3873, line: 35, baseType: !553, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3906, file: !3873, line: 36, baseType: !314, size: 8, offset: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3906, file: !3873, line: 37, baseType: !314, size: 8, offset: 40)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3903, file: !3873, line: 42, baseType: !3912, size: 16)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !3873, line: 39, size: 16, elements: !3913)
!3913 = !{!3914, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3912, file: !3873, line: 40, baseType: !314, size: 8)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3912, file: !3873, line: 41, baseType: !314, size: 8, offset: 8)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3903, file: !3873, line: 46, baseType: !3917, size: 16)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !3873, line: 43, size: 16, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3917, file: !3873, line: 44, baseType: !314, size: 8)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3917, file: !3873, line: 45, baseType: !314, size: 8, offset: 8)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3862, file: !95, line: 81, baseType: !3922, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !95, line: 85, size: 384, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3923, file: !95, line: 86, baseType: !3885, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3923, file: !95, line: 87, baseType: !218, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3923, file: !95, line: 88, baseType: !218, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3923, file: !95, line: 89, baseType: !218, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3923, file: !95, line: 90, baseType: !766, size: 8, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3923, file: !95, line: 92, baseType: !3922, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3862, file: !95, line: 82, baseType: !7, size: 32, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2412, file: !2413, line: 1463, baseType: !3933, offset: 21184)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2413, line: 739, elements: !2131)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2412, file: !2413, line: 1470, baseType: !2073, size: 128, align: 64, offset: 21184)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2412, file: !2413, line: 1471, baseType: !2366, size: 32, offset: 21312)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2412, file: !2413, line: 1472, baseType: !150, size: 32, offset: 21344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2412, file: !2413, line: 1474, baseType: !2411, size: 64, offset: 21376)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2412, file: !2413, line: 1475, baseType: !2095, size: 320, offset: 21440)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2412, file: !2413, line: 1478, baseType: !3940, size: 64, offset: 21760)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3942, line: 49, size: 512, elements: !3943)
!3942 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3943 = !{!3944, !3945, !3946, !3947, !3948, !3950, !3951, !3952, !3954}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3941, file: !3942, line: 50, baseType: !3940, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3941, file: !3942, line: 51, baseType: !1616, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3941, file: !3942, line: 52, baseType: !218, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3941, file: !3942, line: 53, baseType: !218, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3941, file: !3942, line: 54, baseType: !3949, size: 64, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3941, file: !3942, line: 56, baseType: !7, size: 32, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3941, file: !3942, line: 58, baseType: !7, size: 32, offset: 352)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3941, file: !3942, line: 59, baseType: !3953, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !306, line: 159, baseType: !211)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3941, file: !3942, line: 60, baseType: !2755, size: 64, offset: 448)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2412, file: !2413, line: 1482, baseType: !2366, size: 32, offset: 21824)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2412, file: !2413, line: 1489, baseType: !1616, size: 64, offset: 21888)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2412, file: !2413, line: 1504, baseType: !1616, size: 64, offset: 21952)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2412, file: !2413, line: 1505, baseType: !212, size: 64, offset: 22016)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2412, file: !2413, line: 1506, baseType: !211, size: 64, offset: 22080)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2412, file: !2413, line: 1507, baseType: !212, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2412, file: !2413, line: 1508, baseType: !212, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2412, file: !2413, line: 1509, baseType: !212, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2412, file: !2413, line: 1510, baseType: !2073, size: 128, align: 64, offset: 22208)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2412, file: !2413, line: 1511, baseType: !150, size: 32, offset: 22336)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2412, file: !2413, line: 1515, baseType: !3966, size: 64, offset: 22400)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2324, line: 56, size: 64, elements: !3967)
!3967 = !{!3968}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3966, file: !2324, line: 57, baseType: !2327, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2412, file: !2413, line: 1518, baseType: !3966, size: 64, offset: 22464)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2412, file: !2413, line: 1528, baseType: !2073, size: 128, align: 64, offset: 22528)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2412, file: !2413, line: 1552, baseType: !3972, size: 35328, offset: 23040)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3973, line: 430, size: 35328, elements: !3974)
!3973 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3974 = !{!3975, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4004, !4005, !4006, !4007, !4008, !4009, !4012, !4013, !4014, !4015}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3972, file: !3973, line: 432, baseType: !3976, size: 192)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3977, size: 192, elements: !1548)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3978, line: 16, size: 64, elements: !3979)
!3978 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3977, file: !3978, line: 17, baseType: !321, size: 16)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3977, file: !3978, line: 18, baseType: !321, size: 16, offset: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3977, file: !3978, line: 19, baseType: !321, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3977, file: !3978, line: 19, baseType: !321, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3977, file: !3978, line: 19, baseType: !321, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3977, file: !3978, line: 19, baseType: !321, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3977, file: !3978, line: 19, baseType: !321, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3977, file: !3978, line: 20, baseType: !321, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3977, file: !3978, line: 20, baseType: !321, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3977, file: !3978, line: 20, baseType: !321, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3977, file: !3978, line: 20, baseType: !321, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3977, file: !3978, line: 20, baseType: !321, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3977, file: !3978, line: 20, baseType: !321, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3972, file: !3973, line: 436, baseType: !218, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3972, file: !3973, line: 440, baseType: !323, size: 16, offset: 256)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3972, file: !3973, line: 441, baseType: !323, size: 16, offset: 272)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3972, file: !3973, line: 442, baseType: !323, size: 16, offset: 288)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3972, file: !3973, line: 443, baseType: !323, size: 16, offset: 304)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3972, file: !3973, line: 447, baseType: !218, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3972, file: !3973, line: 448, baseType: !218, size: 64, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3972, file: !3973, line: 459, baseType: !4001, size: 256, offset: 448)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4002, size: 256, elements: !2083)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3973, line: 428, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3972, file: !3973, line: 461, baseType: !218, size: 64, offset: 704)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3972, file: !3973, line: 463, baseType: !218, size: 64, offset: 768)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3972, file: !3973, line: 465, baseType: !218, size: 64, offset: 832)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3972, file: !3973, line: 466, baseType: !218, size: 64, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3972, file: !3973, line: 467, baseType: !218, size: 64, offset: 960)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3972, file: !3973, line: 473, baseType: !4010, size: 64, offset: 1024)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3973, line: 10, flags: DIFlagFwdDecl)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3972, file: !3973, line: 480, baseType: !218, size: 64, offset: 1088)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3972, file: !3973, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3972, file: !3973, line: 491, baseType: !1346, size: 32, offset: 1184)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3972, file: !3973, line: 501, baseType: !4016, size: 33792, offset: 1536)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4017, line: 448, size: 33792, elements: !4018)
!4017 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4018 = !{!4019, !4020, !4021, !4183, !4184, !4190, !4191}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4016, file: !4017, line: 461, baseType: !7, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4016, file: !4017, line: 468, baseType: !218, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4016, file: !4017, line: 476, baseType: !4022, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4017, line: 356, size: 33280, align: 512, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4023, file: !4017, line: 358, baseType: !7, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4023, file: !4017, line: 361, baseType: !7, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4023, file: !4017, line: 364, baseType: !211, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4023, file: !4017, line: 367, baseType: !211, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4023, file: !4017, line: 370, baseType: !211, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4023, file: !4017, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4023, file: !4017, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4023, file: !4017, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4023, file: !4017, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4023, file: !4017, line: 397, baseType: !4035, size: 32768, offset: 512)
!4035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4017, line: 348, size: 32768, elements: !4036)
!4036 = !{!4037, !4052, !4089, !4166, !4179}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4035, file: !4017, line: 349, baseType: !4038, size: 896)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4017, line: 12, size: 896, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4051}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4038, file: !4017, line: 13, baseType: !1346, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4038, file: !4017, line: 14, baseType: !1346, size: 32, offset: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4038, file: !4017, line: 15, baseType: !1346, size: 32, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4038, file: !4017, line: 16, baseType: !1346, size: 32, offset: 96)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4038, file: !4017, line: 17, baseType: !1346, size: 32, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4038, file: !4017, line: 18, baseType: !1346, size: 32, offset: 160)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4038, file: !4017, line: 19, baseType: !1346, size: 32, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4038, file: !4017, line: 22, baseType: !4048, size: 640, offset: 224)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 640, elements: !4049)
!4049 = !{!4050}
!4050 = !DISubrange(count: 20)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4038, file: !4017, line: 25, baseType: !1346, size: 32, offset: 864)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4035, file: !4017, line: 350, baseType: !4053, size: 4096, align: 128)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4017, line: 34, size: 4096, align: 128, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4058, !4059, !4074, !4075, !4076, !4078, !4080, !4084}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4053, file: !4017, line: 35, baseType: !321, size: 16)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4053, file: !4017, line: 36, baseType: !321, size: 16, offset: 16)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4053, file: !4017, line: 37, baseType: !321, size: 16, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4053, file: !4017, line: 38, baseType: !321, size: 16, offset: 48)
!4059 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !4017, line: 39, baseType: !4060, size: 128, offset: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !4017, line: 39, size: 128, elements: !4061)
!4061 = !{!4062, !4067}
!4062 = !DIDerivedType(tag: DW_TAG_member, scope: !4060, file: !4017, line: 40, baseType: !4063, size: 128)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4060, file: !4017, line: 40, size: 128, elements: !4064)
!4064 = !{!4065, !4066}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4063, file: !4017, line: 41, baseType: !211, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4063, file: !4017, line: 42, baseType: !211, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, scope: !4060, file: !4017, line: 44, baseType: !4068, size: 128)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4060, file: !4017, line: 44, size: 128, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4068, file: !4017, line: 45, baseType: !1346, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4068, file: !4017, line: 46, baseType: !1346, size: 32, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4068, file: !4017, line: 47, baseType: !1346, size: 32, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4068, file: !4017, line: 48, baseType: !1346, size: 32, offset: 96)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4053, file: !4017, line: 51, baseType: !1346, size: 32, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4053, file: !4017, line: 52, baseType: !1346, size: 32, offset: 224)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4053, file: !4017, line: 55, baseType: !4077, size: 1024, offset: 256)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 1024, elements: !1697)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4053, file: !4017, line: 58, baseType: !4079, size: 2048, offset: 1280)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 2048, elements: !1552)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4053, file: !4017, line: 60, baseType: !4081, size: 384, offset: 3328)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 384, elements: !4082)
!4082 = !{!4083}
!4083 = !DISubrange(count: 12)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !4017, line: 62, baseType: !4085, size: 384, offset: 3712)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !4017, line: 62, size: 384, elements: !4086)
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4085, file: !4017, line: 63, baseType: !4081, size: 384)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4085, file: !4017, line: 64, baseType: !4081, size: 384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4035, file: !4017, line: 351, baseType: !4090, size: 1088)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4017, line: 79, size: 1088, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4165}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4090, file: !4017, line: 80, baseType: !1346, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4090, file: !4017, line: 81, baseType: !1346, size: 32, offset: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4090, file: !4017, line: 82, baseType: !1346, size: 32, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4090, file: !4017, line: 83, baseType: !1346, size: 32, offset: 96)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4090, file: !4017, line: 84, baseType: !1346, size: 32, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4090, file: !4017, line: 85, baseType: !1346, size: 32, offset: 160)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4090, file: !4017, line: 86, baseType: !1346, size: 32, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4090, file: !4017, line: 88, baseType: !4048, size: 640, offset: 224)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4090, file: !4017, line: 89, baseType: !314, size: 8, offset: 864)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4090, file: !4017, line: 90, baseType: !314, size: 8, offset: 872)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4090, file: !4017, line: 91, baseType: !314, size: 8, offset: 880)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4090, file: !4017, line: 92, baseType: !314, size: 8, offset: 888)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4090, file: !4017, line: 93, baseType: !314, size: 8, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4090, file: !4017, line: 94, baseType: !314, size: 8, offset: 904)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4090, file: !4017, line: 95, baseType: !4107, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4109, line: 11, size: 128, elements: !4110)
!4109 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4110 = !{!4111, !4112}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4108, file: !4109, line: 12, baseType: !219, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4108, file: !4109, line: 13, baseType: !4113, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4115, line: 103, size: 1344, elements: !4116)
!4115 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4145, !4146, !4147}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4114, file: !4115, line: 109, baseType: !218, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4114, file: !4115, line: 110, baseType: !218, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4114, file: !4115, line: 111, baseType: !218, size: 64, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4114, file: !4115, line: 112, baseType: !218, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4114, file: !4115, line: 113, baseType: !218, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4114, file: !4115, line: 114, baseType: !218, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4114, file: !4115, line: 117, baseType: !218, size: 64, offset: 384)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4114, file: !4115, line: 118, baseType: !218, size: 64, offset: 448)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4114, file: !4115, line: 119, baseType: !218, size: 64, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4114, file: !4115, line: 120, baseType: !218, size: 64, offset: 576)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4114, file: !4115, line: 121, baseType: !218, size: 64, offset: 640)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4114, file: !4115, line: 122, baseType: !218, size: 64, offset: 704)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4114, file: !4115, line: 123, baseType: !218, size: 64, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4114, file: !4115, line: 124, baseType: !218, size: 64, offset: 832)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4114, file: !4115, line: 125, baseType: !218, size: 64, offset: 896)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4114, file: !4115, line: 139, baseType: !218, size: 64, offset: 960)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4114, file: !4115, line: 142, baseType: !218, size: 64, offset: 1024)
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !4114, file: !4115, line: 144, baseType: !4135, size: 64, offset: 1088)
!4135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4114, file: !4115, line: 144, size: 64, elements: !4136)
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4135, file: !4115, line: 146, baseType: !321, size: 16)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4135, file: !4115, line: 148, baseType: !211, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4135, file: !4115, line: 150, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4115, line: 59, size: 64, elements: !4141)
!4141 = !{!4142, !4143, !4144}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4140, file: !4115, line: 61, baseType: !211, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4140, file: !4115, line: 63, baseType: !211, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4140, file: !4115, line: 65, baseType: !211, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4114, file: !4115, line: 153, baseType: !218, size: 64, offset: 1152)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4114, file: !4115, line: 154, baseType: !218, size: 64, offset: 1216)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4114, file: !4115, line: 156, baseType: !4148, size: 64, offset: 1280)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4114, file: !4115, line: 156, size: 64, elements: !4149)
!4149 = !{!4150, !4151, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4148, file: !4115, line: 158, baseType: !321, size: 16)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4148, file: !4115, line: 160, baseType: !211, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4148, file: !4115, line: 162, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4115, line: 69, size: 64, elements: !4154)
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4153, file: !4115, line: 71, baseType: !211, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4153, file: !4115, line: 73, baseType: !211, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4153, file: !4115, line: 75, baseType: !211, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4153, file: !4115, line: 77, baseType: !211, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4153, file: !4115, line: 80, baseType: !211, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4153, file: !4115, line: 83, baseType: !211, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4153, file: !4115, line: 86, baseType: !211, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4153, file: !4115, line: 88, baseType: !211, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4153, file: !4115, line: 93, baseType: !211, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4153, file: !4115, line: 100, baseType: !211, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4090, file: !4017, line: 96, baseType: !1346, size: 32, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4035, file: !4017, line: 352, baseType: !4167, size: 4608, align: 512)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4017, line: 333, size: 4608, align: 512, elements: !4168)
!4168 = !{!4169, !4170, !4177}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4167, file: !4017, line: 334, baseType: !4053, size: 4096, align: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4167, file: !4017, line: 335, baseType: !4171, size: 512, offset: 4096)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4017, line: 312, size: 512, elements: !4172)
!4172 = !{!4173, !4174, !4175}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4171, file: !4017, line: 313, baseType: !211, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4171, file: !4017, line: 314, baseType: !211, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4171, file: !4017, line: 315, baseType: !4176, size: 384, offset: 128)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 384, elements: !837)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4167, file: !4017, line: 336, baseType: !4178, offset: 4608)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !2796)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4035, file: !4017, line: 353, baseType: !4180, size: 32768)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 32768, elements: !4181)
!4181 = !{!4182}
!4182 = !DISubrange(count: 4096)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4016, file: !4017, line: 484, baseType: !4022, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4016, file: !4017, line: 491, baseType: !4185, size: 128, offset: 256)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4017, line: 404, size: 128, elements: !4186)
!4186 = !{!4187, !4188, !4189}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4185, file: !4017, line: 424, baseType: !211, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4185, file: !4017, line: 432, baseType: !7, size: 32, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4185, file: !4017, line: 440, baseType: !7, size: 32, offset: 96)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4016, file: !4017, line: 498, baseType: !4185, size: 128, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4016, file: !4017, line: 508, baseType: !4023, size: 33280, align: 512, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !2391, file: !2392, line: 31, baseType: !4193, size: 64, offset: 448)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4195, line: 11, flags: DIFlagFwdDecl)
!4195 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2391, file: !2392, line: 32, baseType: !7, size: 32, offset: 512)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2391, file: !2392, line: 33, baseType: !2390, size: 64, offset: 576)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !2391, file: !2392, line: 35, baseType: !4199, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !2392, line: 17, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2391, file: !2392, line: 37, baseType: !2778, size: 64, offset: 704)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2391, file: !2392, line: 38, baseType: !3096, size: 64, offset: 768)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !2391, file: !2392, line: 39, baseType: !150, size: 32, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2391, file: !2392, line: 40, baseType: !4205, size: 192, offset: 896)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !4206, line: 9, size: 192, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!4207 = !{!4208, !4209, !4213, !4214}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !4205, file: !4206, line: 10, baseType: !400, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4205, file: !4206, line: 11, baseType: !4210, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4212)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !4206, line: 7, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !4205, file: !4206, line: 12, baseType: !7, size: 32, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4205, file: !4206, line: 13, baseType: !2366, size: 32, offset: 160)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !2391, file: !2392, line: 42, baseType: !150, size: 32, offset: 1088)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2338, file: !60, line: 951, baseType: !101, size: 32, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2338, file: !60, line: 952, baseType: !1631, size: 32, offset: 160)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2338, file: !60, line: 952, baseType: !1631, size: 32, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2338, file: !60, line: 953, baseType: !150, size: 32, offset: 224)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !2317, file: !60, line: 1012, baseType: !2935, size: 64, offset: 896)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !2317, file: !60, line: 1013, baseType: !4222, size: 256, offset: 960)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !60, line: 970, size: 256, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227, !4228, !4229}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4222, file: !60, line: 971, baseType: !218, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4222, file: !60, line: 972, baseType: !7, size: 32, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4222, file: !60, line: 973, baseType: !7, size: 32, offset: 96)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4222, file: !60, line: 974, baseType: !7, size: 32, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4222, file: !60, line: 975, baseType: !7, size: 32, offset: 160)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4222, file: !60, line: 976, baseType: !1776, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !2317, file: !60, line: 1014, baseType: !4231, size: 128, offset: 1216)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4232, line: 8, size: 128, elements: !4233)
!4232 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4233 = !{!4234, !4235}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4231, file: !4232, line: 9, baseType: !1760, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4231, file: !4232, line: 10, baseType: !1660, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !2317, file: !60, line: 1015, baseType: !1625, size: 64, offset: 1344)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !2317, file: !60, line: 1016, baseType: !4238, size: 64, offset: 1408)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !60, line: 1914, size: 2112, elements: !4241)
!4241 = !{!4242, !4243, !4247, !4251, !4255, !4283, !4284, !4290, !4303, !4320, !4324, !4325, !4329, !4330, !4334, !4339, !4340, !4344, !4348, !4354, !4355, !4357, !4358, !4362, !4366, !4370, !4376, !4380, !4384, !4388, !4392, !4393, !4399}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4240, file: !60, line: 1915, baseType: !1804, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4240, file: !60, line: 1916, baseType: !4244, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!1776, !2651, !1776, !150}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4240, file: !60, line: 1917, baseType: !4248, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!1579, !2651, !244, !1592, !2300}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4240, file: !60, line: 1918, baseType: !4252, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!1579, !2651, !238, !1592, !2300}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4240, file: !60, line: 1919, baseType: !4256, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!1579, !4259, !4281}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !60, line: 373, size: 384, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4268, !4269, !4270, !4271}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4260, file: !60, line: 374, baseType: !2651, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4260, file: !60, line: 375, baseType: !1776, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4260, file: !60, line: 376, baseType: !4265, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !4259, !219}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4260, file: !60, line: 377, baseType: !1616, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4260, file: !60, line: 378, baseType: !150, size: 32, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4260, file: !60, line: 379, baseType: !321, size: 16, offset: 288)
!4271 = !DIDerivedType(tag: DW_TAG_member, scope: !4260, file: !60, line: 380, baseType: !4272, size: 64, offset: 320)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4260, file: !60, line: 380, size: 64, elements: !4273)
!4273 = !{!4274, !4277}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4272, file: !60, line: 386, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !60, line: 386, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4272, file: !60, line: 395, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!1579, !1616}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3942, line: 17, flags: DIFlagFwdDecl)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4240, file: !60, line: 1920, baseType: !4256, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4240, file: !60, line: 1921, baseType: !4285, size: 64, offset: 384)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!150, !4259, !4288, !7}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !60, line: 53, flags: DIFlagFwdDecl)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4240, file: !60, line: 1923, baseType: !4291, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!150, !2651, !4294}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !60, line: 1858, size: 128, elements: !4296)
!4296 = !{!4297, !4302}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4295, file: !60, line: 1859, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !60, line: 1855, baseType: !4299)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!766, !4294, !238, !150, !1776, !211, !7}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4295, file: !60, line: 1860, baseType: !1776, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4240, file: !60, line: 1924, baseType: !4304, size: 64, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!4307, !2651, !4309}
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4308, line: 59, baseType: !7)
!4308 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !4311, line: 37, size: 128, elements: !4312)
!4311 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!4312 = !{!4313, !4319}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !4310, file: !4311, line: 38, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !4311, line: 31, baseType: !4315)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !2651, !4318, !4309}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !4310, file: !4311, line: 39, baseType: !4307, size: 32, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4240, file: !60, line: 1925, baseType: !4321, size: 64, offset: 576)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!219, !2651, !7, !218}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4240, file: !60, line: 1926, baseType: !4321, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4240, file: !60, line: 1927, baseType: !4326, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!150, !2651, !3673}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4240, file: !60, line: 1928, baseType: !218, size: 64, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4240, file: !60, line: 1929, baseType: !4331, size: 64, offset: 832)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!150, !1625, !2651}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4240, file: !60, line: 1930, baseType: !4335, size: 64, offset: 896)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!150, !2651, !4338}
!4338 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !60, line: 1061, baseType: !1616)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4240, file: !60, line: 1931, baseType: !4331, size: 64, offset: 960)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4240, file: !60, line: 1932, baseType: !4341, size: 64, offset: 1024)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!150, !2651, !1776, !1776, !150}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4240, file: !60, line: 1933, baseType: !4345, size: 64, offset: 1088)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!150, !150, !2651, !150}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4240, file: !60, line: 1934, baseType: !4349, size: 64, offset: 1152)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!150, !2651, !150, !4352}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !60, line: 1063, flags: DIFlagFwdDecl)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4240, file: !60, line: 1935, baseType: !2648, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4240, file: !60, line: 1936, baseType: !4356, size: 64, offset: 1280)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4240, file: !60, line: 1937, baseType: !4349, size: 64, offset: 1344)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4240, file: !60, line: 1938, baseType: !4359, size: 64, offset: 1408)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!1579, !3558, !2651, !2300, !1592, !7}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4240, file: !60, line: 1939, baseType: !4363, size: 64, offset: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!1579, !2651, !2300, !3558, !1592, !7}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4240, file: !60, line: 1940, baseType: !4367, size: 64, offset: 1536)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !2651}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4240, file: !60, line: 1941, baseType: !4371, size: 64, offset: 1600)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!150, !2651, !150, !4374, !4375}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4240, file: !60, line: 1942, baseType: !4377, size: 64, offset: 1664)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!219, !2651, !150, !1776, !1776}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4240, file: !60, line: 1944, baseType: !4381, size: 64, offset: 1728)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !2279, !2651}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4240, file: !60, line: 1948, baseType: !4385, size: 64, offset: 1792)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!1579, !2651, !1776, !2651, !1776, !1592, !7}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4240, file: !60, line: 1950, baseType: !4389, size: 64, offset: 1856)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!1776, !2651, !1776, !2651, !1776, !1776, !7}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4240, file: !60, line: 1953, baseType: !4341, size: 64, offset: 1920)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4240, file: !60, line: 1954, baseType: !4394, size: 64, offset: 1984)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!150, !4397, !7}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !60, line: 1911, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4240, file: !60, line: 1955, baseType: !4400, size: 64, offset: 2048)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!150, !4397, !4288, !7}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !2317, file: !60, line: 1018, baseType: !211, size: 64, offset: 1472)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !2317, file: !60, line: 1020, baseType: !1616, size: 64, offset: 1536)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2317, file: !60, line: 1023, baseType: !1616, size: 64, offset: 1600)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !2317, file: !60, line: 1027, baseType: !4407, size: 64, offset: 1664)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2317, file: !60, line: 1029, baseType: !1621, size: 64, offset: 1728)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !2317, file: !60, line: 1030, baseType: !4410, size: 32, offset: 1792)
!4410 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4411, line: 8, baseType: !1346)
!4411 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !2317, file: !60, line: 1031, baseType: !4410, size: 32, offset: 1824)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2280, file: !2281, line: 29, baseType: !1616, size: 64, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2223, file: !60, line: 2077, baseType: !2276, size: 64, offset: 1088)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2223, file: !60, line: 2078, baseType: !2276, size: 64, offset: 1152)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2223, file: !60, line: 2079, baseType: !2276, size: 64, offset: 1216)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2223, file: !60, line: 2081, baseType: !4418, size: 64, offset: 1280)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!1579, !1766, !150, !244, !1592, !1776}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2223, file: !60, line: 2082, baseType: !4422, size: 64, offset: 1344)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!1579, !1766, !150, !238, !1592, !1776}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2223, file: !60, line: 2083, baseType: !4426, size: 64, offset: 1408)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!4429, !1625}
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !110, line: 296, size: 1664, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4457, !4458, !4459}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4431, file: !110, line: 297, baseType: !2099, size: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4431, file: !110, line: 298, baseType: !407, size: 128, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4431, file: !110, line: 299, baseType: !407, size: 128, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4431, file: !110, line: 300, baseType: !407, size: 128, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4431, file: !110, line: 301, baseType: !1872, size: 256, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4431, file: !110, line: 302, baseType: !1512, size: 32, offset: 768)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4431, file: !110, line: 303, baseType: !305, size: 32, offset: 800)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4431, file: !110, line: 304, baseType: !1766, size: 64, offset: 832)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4431, file: !110, line: 305, baseType: !4442, size: 64, offset: 896)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !110, line: 68, size: 64, elements: !4443)
!4443 = !{!4444, !4456}
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !110, line: 69, baseType: !4445, size: 32)
!4445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !110, line: 69, size: 32, elements: !4446)
!4446 = !{!4447, !4448, !4449}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4445, file: !110, line: 70, baseType: !1631, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4445, file: !110, line: 71, baseType: !1640, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4445, file: !110, line: 72, baseType: !4450, size: 32)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4451, line: 24, baseType: !4452)
!4451 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4451, line: 22, size: 32, elements: !4453)
!4453 = !{!4454}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4452, file: !4451, line: 23, baseType: !4455, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4451, line: 20, baseType: !1637)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4442, file: !110, line: 74, baseType: !109, size: 32, offset: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4431, file: !110, line: 306, baseType: !1776, size: 64, offset: 960)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4431, file: !110, line: 307, baseType: !218, size: 64, offset: 1024)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4431, file: !110, line: 308, baseType: !4460, size: 576, offset: 1088)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !110, line: 205, size: 576, elements: !4461)
!4461 = !{!4462, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4460, file: !110, line: 206, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !110, line: 66, baseType: !210)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4460, file: !110, line: 207, baseType: !4463, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4460, file: !110, line: 208, baseType: !4463, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4460, file: !110, line: 209, baseType: !4463, size: 64, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4460, file: !110, line: 210, baseType: !4463, size: 64, offset: 256)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4460, file: !110, line: 211, baseType: !4463, size: 64, offset: 320)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4460, file: !110, line: 212, baseType: !4463, size: 64, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4460, file: !110, line: 213, baseType: !391, size: 64, offset: 448)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4460, file: !110, line: 214, baseType: !391, size: 64, offset: 512)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2223, file: !60, line: 2085, baseType: !4473, size: 64, offset: 1472)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!219, !1766, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4478, line: 15, size: 256, elements: !4479)
!4478 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4479 = !{!4480, !4481, !4482, !4483, !4484}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4477, file: !4478, line: 16, baseType: !2404, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4477, file: !4478, line: 19, baseType: !150, size: 32, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4477, file: !4478, line: 26, baseType: !218, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4477, file: !4478, line: 33, baseType: !218, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4477, file: !4478, line: 36, baseType: !4485, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !79, line: 33, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2223, file: !60, line: 2087, baseType: !4473, size: 64, offset: 1536)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2223, file: !60, line: 2089, baseType: !1800, size: 64, offset: 1600)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1767, file: !60, line: 1198, baseType: !4490, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4492)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !110, line: 324, size: 704, elements: !4493)
!4493 = !{!4494, !4498, !4502, !4506, !4507, !4508, !4509, !4510, !4515, !4520, !4524}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4492, file: !110, line: 325, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!150, !4430}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4492, file: !110, line: 326, baseType: !4499, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!4430, !1766, !150}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4492, file: !110, line: 327, baseType: !4503, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{null, !4430}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4492, file: !110, line: 328, baseType: !4495, size: 64, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4492, file: !110, line: 329, baseType: !4495, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4492, file: !110, line: 330, baseType: !4495, size: 64, offset: 320)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4492, file: !110, line: 331, baseType: !2251, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4492, file: !110, line: 334, baseType: !4511, size: 64, offset: 448)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!4514, !1625}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4492, file: !110, line: 335, baseType: !4516, size: 64, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!150, !1625, !4519}
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4492, file: !110, line: 337, baseType: !4521, size: 64, offset: 576)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!150, !1625, !4514}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4492, file: !110, line: 339, baseType: !4525, size: 64, offset: 640)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!150, !1766, !4528}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1767, file: !60, line: 1199, baseType: !4530, size: 64, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !110, line: 430, size: 704, elements: !4533)
!4533 = !{!4534, !4540, !4541, !4545, !4546, !4547, !4562, !4585, !4589, !4590, !4613}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4532, file: !110, line: 431, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!150, !1766, !150, !150, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4231)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4532, file: !110, line: 432, baseType: !2251, size: 64, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4532, file: !110, line: 433, baseType: !4542, size: 64, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!150, !1766, !7}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4532, file: !110, line: 434, baseType: !4542, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4532, file: !110, line: 435, baseType: !2251, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4532, file: !110, line: 436, baseType: !4548, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!150, !1766, !150, !4551}
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !110, line: 417, size: 256, elements: !4553)
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4552, file: !110, line: 418, baseType: !150, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4552, file: !110, line: 419, baseType: !7, size: 32, offset: 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4552, file: !110, line: 420, baseType: !7, size: 32, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4552, file: !110, line: 422, baseType: !7, size: 32, offset: 96)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4552, file: !110, line: 423, baseType: !7, size: 32, offset: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4552, file: !110, line: 424, baseType: !7, size: 32, offset: 160)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4552, file: !110, line: 425, baseType: !7, size: 32, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4552, file: !110, line: 426, baseType: !7, size: 32, offset: 224)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4532, file: !110, line: 437, baseType: !4563, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!150, !1766, !4442, !4566}
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !110, line: 345, size: 960, elements: !4568)
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4567, file: !110, line: 346, baseType: !150, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4567, file: !110, line: 347, baseType: !211, size: 64, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4567, file: !110, line: 348, baseType: !211, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4567, file: !110, line: 349, baseType: !211, size: 64, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4567, file: !110, line: 350, baseType: !211, size: 64, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4567, file: !110, line: 351, baseType: !211, size: 64, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4567, file: !110, line: 352, baseType: !211, size: 64, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4567, file: !110, line: 353, baseType: !206, size: 64, offset: 448)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4567, file: !110, line: 355, baseType: !206, size: 64, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4567, file: !110, line: 356, baseType: !150, size: 32, offset: 576)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4567, file: !110, line: 357, baseType: !150, size: 32, offset: 608)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4567, file: !110, line: 358, baseType: !211, size: 64, offset: 640)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4567, file: !110, line: 359, baseType: !211, size: 64, offset: 704)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4567, file: !110, line: 360, baseType: !211, size: 64, offset: 768)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4567, file: !110, line: 361, baseType: !206, size: 64, offset: 832)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4567, file: !110, line: 362, baseType: !150, size: 32, offset: 896)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4532, file: !110, line: 438, baseType: !4586, size: 64, offset: 448)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!150, !1766, !4528, !4566}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4532, file: !110, line: 440, baseType: !4563, size: 64, offset: 512)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4532, file: !110, line: 441, baseType: !4591, size: 64, offset: 576)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!150, !1766, !4594}
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !110, line: 411, size: 1408, elements: !4596)
!4596 = !{!4597, !4598}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4595, file: !110, line: 412, baseType: !7, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4595, file: !110, line: 413, baseType: !4599, size: 1344, offset: 64)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4600, size: 1344, elements: !1548)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !110, line: 397, size: 448, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4612}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4600, file: !110, line: 398, baseType: !7, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4600, file: !110, line: 399, baseType: !7, size: 32, offset: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4600, file: !110, line: 401, baseType: !7, size: 32, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4600, file: !110, line: 402, baseType: !7, size: 32, offset: 96)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4600, file: !110, line: 403, baseType: !7, size: 32, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4600, file: !110, line: 404, baseType: !7, size: 32, offset: 160)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4600, file: !110, line: 405, baseType: !7, size: 32, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4600, file: !110, line: 406, baseType: !213, size: 64, offset: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4600, file: !110, line: 407, baseType: !4611, size: 64, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !306, line: 132, baseType: !211)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4600, file: !110, line: 408, baseType: !4611, size: 64, offset: 384)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4532, file: !110, line: 442, baseType: !4542, size: 64, offset: 640)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1767, file: !60, line: 1200, baseType: !4615, size: 64, offset: 576)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4617)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !60, line: 54, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1767, file: !60, line: 1201, baseType: !218, size: 64, offset: 640)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1767, file: !60, line: 1202, baseType: !218, size: 64, offset: 704)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1767, file: !60, line: 1203, baseType: !218, size: 64, offset: 768)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1767, file: !60, line: 1204, baseType: !1660, size: 64, offset: 832)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1767, file: !60, line: 1205, baseType: !2679, size: 320, offset: 896)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1767, file: !60, line: 1206, baseType: !150, size: 32, offset: 1216)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1767, file: !60, line: 1207, baseType: !305, size: 32, offset: 1248)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1767, file: !60, line: 1209, baseType: !1616, size: 64, offset: 1280)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1767, file: !60, line: 1211, baseType: !4627, size: 64, offset: 1344)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4630)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !60, line: 1211, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1767, file: !60, line: 1223, baseType: !4632, size: 64, offset: 1408)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1672, line: 34, size: 64, elements: !4633)
!4633 = !{!4634}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4632, file: !1672, line: 35, baseType: !1675, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1767, file: !60, line: 1224, baseType: !407, size: 128, offset: 1472)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1767, file: !60, line: 1225, baseType: !4637, size: 64, offset: 1600)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !60, line: 1225, flags: DIFlagFwdDecl)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1767, file: !60, line: 1226, baseType: !4640, size: 64, offset: 1664)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !60, line: 1226, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1767, file: !60, line: 1227, baseType: !4643, size: 64, offset: 1728)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !60, line: 50, flags: DIFlagFwdDecl)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1767, file: !60, line: 1228, baseType: !4646, size: 64, offset: 1792)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !60, line: 1228, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1767, file: !60, line: 1229, baseType: !2099, size: 128, offset: 1856)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1767, file: !60, line: 1230, baseType: !7, size: 32, offset: 1984)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1767, file: !60, line: 1231, baseType: !4651, size: 2496, offset: 2048)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !110, line: 521, size: 2496, elements: !4652)
!4652 = !{!4653, !4654, !4655, !4657, !4689}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4651, file: !110, line: 522, baseType: !7, size: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4651, file: !110, line: 523, baseType: !2679, size: 320, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4651, file: !110, line: 524, baseType: !4656, size: 192, offset: 384)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 192, elements: !1548)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4651, file: !110, line: 525, baseType: !4658, size: 1728, offset: 576)
!4658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4659, size: 1728, elements: !1548)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !110, line: 222, size: 576, elements: !4660)
!4660 = !{!4661, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4659, file: !110, line: 223, baseType: !4662, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !110, line: 445, size: 256, elements: !4664)
!4664 = !{!4665, !4666, !4679, !4680}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4663, file: !110, line: 446, baseType: !150, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4663, file: !110, line: 447, baseType: !4667, size: 64, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4669)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !110, line: 312, size: 512, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4669, file: !110, line: 313, baseType: !2251, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4669, file: !110, line: 314, baseType: !2251, size: 64, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4669, file: !110, line: 315, baseType: !2251, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4669, file: !110, line: 316, baseType: !2251, size: 64, offset: 192)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4669, file: !110, line: 317, baseType: !4495, size: 64, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4669, file: !110, line: 318, baseType: !4495, size: 64, offset: 320)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4669, file: !110, line: 319, baseType: !4495, size: 64, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4669, file: !110, line: 320, baseType: !4525, size: 64, offset: 448)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4663, file: !110, line: 448, baseType: !1804, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4663, file: !110, line: 449, baseType: !4662, size: 64, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4659, file: !110, line: 224, baseType: !150, size: 32, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4659, file: !110, line: 226, baseType: !407, size: 128, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4659, file: !110, line: 227, baseType: !218, size: 64, offset: 256)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4659, file: !110, line: 228, baseType: !7, size: 32, offset: 320)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4659, file: !110, line: 229, baseType: !7, size: 32, offset: 352)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4659, file: !110, line: 230, baseType: !4463, size: 64, offset: 384)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4659, file: !110, line: 231, baseType: !4463, size: 64, offset: 448)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4659, file: !110, line: 232, baseType: !1616, size: 64, offset: 512)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4651, file: !110, line: 526, baseType: !4690, size: 192, offset: 2304)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4667, size: 192, elements: !1548)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1767, file: !60, line: 1233, baseType: !4692, size: 2368, offset: 4544)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !60, line: 1184, size: 2368, elements: !4693)
!4693 = !{!4694, !4695, !4696}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4692, file: !60, line: 1185, baseType: !323, size: 16)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4692, file: !60, line: 1186, baseType: !323, size: 16, offset: 16)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4692, file: !60, line: 1187, baseType: !4697, size: 2304, offset: 64)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4698, size: 2304, elements: !1548)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4699, line: 12, size: 768, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4700 = !{!4701, !4709, !4710, !4715, !4716}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4698, file: !4699, line: 13, baseType: !4702, size: 384)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4703, line: 17, size: 384, elements: !4704)
!4703 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4704 = !{!4705, !4706, !4707, !4708}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4702, file: !4703, line: 18, baseType: !150, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4702, file: !4703, line: 19, baseType: !150, size: 32, offset: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4702, file: !4703, line: 20, baseType: !2377, size: 192, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4702, file: !4703, line: 22, baseType: !2073, size: 128, align: 64, offset: 256)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4698, file: !4699, line: 14, baseType: !1936, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4698, file: !4699, line: 15, baseType: !4711, size: 64, offset: 448)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4712, line: 16, size: 64, elements: !4713)
!4712 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4713 = !{!4714}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4711, file: !4712, line: 17, baseType: !2411, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4698, file: !4699, line: 16, baseType: !2377, size: 192, offset: 512)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4698, file: !4699, line: 17, baseType: !305, size: 32, offset: 704)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1767, file: !60, line: 1240, baseType: !1616, size: 64, offset: 6912)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1767, file: !60, line: 1243, baseType: !1346, size: 32, offset: 6976)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1767, file: !60, line: 1245, baseType: !391, size: 64, offset: 7040)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1767, file: !60, line: 1246, baseType: !391, size: 64, offset: 7104)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1767, file: !60, line: 1248, baseType: !1347, size: 32, offset: 7168)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1767, file: !60, line: 1249, baseType: !4723, size: 64, offset: 7232)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !60, line: 634, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1767, file: !60, line: 1252, baseType: !4726, size: 256, offset: 7296)
!4726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !1697)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1767, file: !60, line: 1253, baseType: !4728, size: 128, offset: 7552)
!4728 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4729, line: 21, baseType: !4730)
!4729 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4729, line: 19, size: 128, elements: !4731)
!4731 = !{!4732}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4730, file: !4729, line: 20, baseType: !4733, size: 128)
!4733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 128, elements: !3117)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1767, file: !60, line: 1255, baseType: !7, size: 32, offset: 7680)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1767, file: !60, line: 1261, baseType: !1872, size: 256, offset: 7744)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1767, file: !60, line: 1267, baseType: !238, size: 64, offset: 8000)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1767, file: !60, line: 1269, baseType: !1713, size: 64, offset: 8064)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1767, file: !60, line: 1271, baseType: !4739, size: 448, offset: 8128)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4478, line: 63, size: 448, elements: !4740)
!4740 = !{!4741, !4746, !4747, !4748, !4749, !4750, !4751}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4739, file: !4478, line: 64, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!218, !4745, !4476}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4739, file: !4478, line: 66, baseType: !4742, size: 64, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4739, file: !4478, line: 69, baseType: !219, size: 64, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4739, file: !4478, line: 70, baseType: !150, size: 32, offset: 192)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4739, file: !4478, line: 71, baseType: !7, size: 32, offset: 224)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4739, file: !4478, line: 74, baseType: !407, size: 128, offset: 256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4739, file: !4478, line: 85, baseType: !4752, size: 64, offset: 384)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1767, file: !60, line: 1274, baseType: !400, size: 64, offset: 8576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1767, file: !60, line: 1280, baseType: !400, size: 64, offset: 8640)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1767, file: !60, line: 1283, baseType: !150, size: 32, offset: 8704)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1767, file: !60, line: 1286, baseType: !4410, size: 32, offset: 8736)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1767, file: !60, line: 1289, baseType: !783, size: 64, offset: 8768)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1767, file: !60, line: 1290, baseType: !2207, size: 64, offset: 8832)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1767, file: !60, line: 1297, baseType: !2778, size: 64, offset: 8896)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1767, file: !60, line: 1304, baseType: !4761, size: 64, offset: 8960)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4762, line: 49, size: 64, elements: !4763)
!4762 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4763 = !{!4764}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4761, file: !4762, line: 50, baseType: !4765, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4762, line: 41, size: 512, align: 512, elements: !4767)
!4767 = !{!4768, !4769, !4774}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4766, file: !4762, line: 43, baseType: !1512, size: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4766, file: !4762, line: 45, baseType: !4770, size: 192, offset: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4762, line: 29, size: 192, elements: !4771)
!4771 = !{!4772, !4773}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4770, file: !4762, line: 30, baseType: !407, size: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4770, file: !4762, line: 32, baseType: !219, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4766, file: !4762, line: 46, baseType: !219, size: 64, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1767, file: !60, line: 1305, baseType: !4761, size: 64, offset: 9024)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1767, file: !60, line: 1306, baseType: !2073, size: 128, align: 64, offset: 9088)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1767, file: !60, line: 1307, baseType: !397, size: 256, offset: 9216)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1767, file: !60, line: 1309, baseType: !1872, size: 256, offset: 9472)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1767, file: !60, line: 1314, baseType: !150, size: 32, offset: 9728)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1767, file: !60, line: 1317, baseType: !1512, size: 32, align: 512, offset: 10240)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1767, file: !60, line: 1318, baseType: !407, size: 128, offset: 10304)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1767, file: !60, line: 1320, baseType: !1512, size: 32, offset: 10432)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1767, file: !60, line: 1321, baseType: !407, size: 128, offset: 10496)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1761, file: !1762, line: 73, baseType: !150, size: 32, offset: 128)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1761, file: !1762, line: 74, baseType: !4786, size: 64, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2952, line: 42, flags: DIFlagFwdDecl)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1715, file: !1662, line: 141, baseType: !4790, size: 64, offset: 704)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!150, !4538, !766}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1715, file: !1662, line: 142, baseType: !4794, size: 64, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!1660, !1660, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1661, file: !1662, line: 96, baseType: !1766, size: 64, offset: 832)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1661, file: !1662, line: 97, baseType: !218, size: 64, offset: 896)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1661, file: !1662, line: 98, baseType: !1616, size: 64, offset: 960)
!4802 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1662, line: 100, baseType: !4803, size: 128, offset: 1024)
!4803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1661, file: !1662, line: 100, size: 128, elements: !4804)
!4804 = !{!4805, !4806}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4803, file: !1662, line: 101, baseType: !407, size: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4803, file: !1662, line: 102, baseType: !4318, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1661, file: !1662, line: 104, baseType: !407, size: 128, offset: 1152)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1661, file: !1662, line: 105, baseType: !407, size: 128, offset: 1280)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1661, file: !1662, line: 113, baseType: !4810, size: 128, offset: 1408)
!4810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1661, file: !1662, line: 109, size: 128, elements: !4811)
!4811 = !{!4812, !4813, !4814}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4810, file: !1662, line: 110, baseType: !2099, size: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4810, file: !1662, line: 111, baseType: !1671, size: 128)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4810, file: !1662, line: 112, baseType: !2073, size: 128, align: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1654, file: !60, line: 1968, baseType: !4816, size: 64, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!238, !1660, !1625, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4821, line: 10, size: 128, elements: !4822)
!4821 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4822 = !{!4823, !4824}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4820, file: !4821, line: 11, baseType: !1907, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4820, file: !4821, line: 12, baseType: !1616, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1654, file: !60, line: 1969, baseType: !4826, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!150, !4786, !1625, !150}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1654, file: !60, line: 1970, baseType: !4830, size: 64, offset: 192)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!1648, !1625, !150, !766}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1654, file: !60, line: 1972, baseType: !4834, size: 64, offset: 256)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!150, !1660, !244, !150}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1654, file: !60, line: 1974, baseType: !4838, size: 64, offset: 320)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!150, !4786, !1625, !1660, !1587, !766}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1654, file: !60, line: 1976, baseType: !4842, size: 64, offset: 384)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!150, !1660, !1625, !1660}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1654, file: !60, line: 1977, baseType: !4846, size: 64, offset: 448)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!150, !1625, !1660}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1654, file: !60, line: 1978, baseType: !4850, size: 64, offset: 512)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!150, !4786, !1625, !1660, !238}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1654, file: !60, line: 1980, baseType: !4854, size: 64, offset: 576)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!150, !4786, !1625, !1660, !1587}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1654, file: !60, line: 1982, baseType: !4846, size: 64, offset: 640)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1654, file: !60, line: 1983, baseType: !4859, size: 64, offset: 704)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!150, !4786, !1625, !1660, !1587, !1771}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1654, file: !60, line: 1985, baseType: !4863, size: 64, offset: 768)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!150, !4786, !1625, !1660, !1625, !1660, !7}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1654, file: !60, line: 1987, baseType: !4867, size: 64, offset: 832)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!150, !4786, !1660, !4870}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !60, line: 226, size: 640, elements: !4872)
!4872 = !{!4873, !4874, !4875, !4885, !4894, !4895, !4896, !4897, !4898}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4871, file: !60, line: 227, baseType: !7, size: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4871, file: !60, line: 228, baseType: !1587, size: 16, offset: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, scope: !4871, file: !60, line: 241, baseType: !4876, size: 32, offset: 64)
!4876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4871, file: !60, line: 241, size: 32, elements: !4877)
!4877 = !{!4878, !4879}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4876, file: !60, line: 242, baseType: !1631, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4876, file: !60, line: 243, baseType: !4880, size: 32)
!4880 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4881, line: 16, baseType: !4882)
!4881 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4881, line: 14, size: 32, elements: !4883)
!4883 = !{!4884}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4882, file: !4881, line: 15, baseType: !1636, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, scope: !4871, file: !60, line: 245, baseType: !4886, size: 32, offset: 96)
!4886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4871, file: !60, line: 245, size: 32, elements: !4887)
!4887 = !{!4888, !4889}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4886, file: !60, line: 246, baseType: !1640, size: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4886, file: !60, line: 247, baseType: !4890, size: 32)
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4881, line: 20, baseType: !4891)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4881, line: 18, size: 32, elements: !4892)
!4892 = !{!4893}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4891, file: !4881, line: 19, baseType: !1644, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4871, file: !60, line: 249, baseType: !1776, size: 64, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4871, file: !60, line: 250, baseType: !424, size: 128, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4871, file: !60, line: 251, baseType: !424, size: 128, offset: 320)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4871, file: !60, line: 252, baseType: !424, size: 128, offset: 448)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4871, file: !60, line: 259, baseType: !2651, size: 64, offset: 576)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1654, file: !60, line: 1988, baseType: !4900, size: 64, offset: 896)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!150, !4786, !4538, !4903, !1346, !7}
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4905, line: 22, size: 1280, elements: !4906)
!4905 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4906 = !{!4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4904, file: !4905, line: 23, baseType: !1346, size: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4904, file: !4905, line: 24, baseType: !1587, size: 16, offset: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4904, file: !4905, line: 25, baseType: !7, size: 32, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4904, file: !4905, line: 26, baseType: !2990, size: 32, offset: 96)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4904, file: !4905, line: 27, baseType: !211, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4904, file: !4905, line: 28, baseType: !211, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4904, file: !4905, line: 41, baseType: !211, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4904, file: !4905, line: 42, baseType: !1771, size: 32, offset: 320)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4904, file: !4905, line: 43, baseType: !1771, size: 32, offset: 352)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4904, file: !4905, line: 44, baseType: !1631, size: 32, offset: 384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4904, file: !4905, line: 45, baseType: !1640, size: 32, offset: 416)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4904, file: !4905, line: 46, baseType: !1776, size: 64, offset: 448)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4904, file: !4905, line: 47, baseType: !424, size: 128, offset: 512)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4904, file: !4905, line: 48, baseType: !424, size: 128, offset: 640)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4904, file: !4905, line: 49, baseType: !424, size: 128, offset: 768)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4904, file: !4905, line: 50, baseType: !424, size: 128, offset: 896)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4904, file: !4905, line: 51, baseType: !211, size: 64, offset: 1024)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4904, file: !4905, line: 52, baseType: !211, size: 64, offset: 1088)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4904, file: !4905, line: 53, baseType: !1346, size: 32, offset: 1152)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4904, file: !4905, line: 54, baseType: !1346, size: 32, offset: 1184)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4904, file: !4905, line: 55, baseType: !211, size: 64, offset: 1216)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1654, file: !60, line: 1990, baseType: !4929, size: 64, offset: 960)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!1579, !1660, !244, !1592}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1654, file: !60, line: 1991, baseType: !4933, size: 64, offset: 1024)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!150, !1625, !4936, !211, !211}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !60, line: 55, flags: DIFlagFwdDecl)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1654, file: !60, line: 1993, baseType: !4939, size: 64, offset: 1088)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!150, !1625, !150}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1654, file: !60, line: 1994, baseType: !4943, size: 64, offset: 1152)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!150, !1625, !1660, !2651, !7, !1587}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1654, file: !60, line: 1997, baseType: !4947, size: 64, offset: 1216)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!150, !4786, !1625, !2651, !1587}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1654, file: !60, line: 1999, baseType: !4951, size: 64, offset: 1280)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!1648, !4786, !1660, !150}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1654, file: !60, line: 2001, baseType: !4955, size: 64, offset: 1344)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!150, !4786, !1660, !1648, !150}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1654, file: !60, line: 2003, baseType: !4959, size: 64, offset: 1408)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!150, !4786, !1660, !4962}
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !60, line: 76, flags: DIFlagFwdDecl)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1654, file: !60, line: 2005, baseType: !4965, size: 64, offset: 1472)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!150, !1660, !4962}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1654, file: !60, line: 2006, baseType: !4969, size: 64, offset: 1536)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!4972, !1625}
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !60, line: 3192, size: 192, elements: !4974)
!4974 = !{!4975, !4976}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4973, file: !60, line: 3193, baseType: !2399, size: 128)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4973, file: !60, line: 3194, baseType: !1346, size: 32, offset: 128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1626, file: !60, line: 655, baseType: !1766, size: 64, offset: 448)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1626, file: !60, line: 656, baseType: !1621, size: 64, offset: 512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1626, file: !60, line: 659, baseType: !1616, size: 64, offset: 576)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1626, file: !60, line: 663, baseType: !218, size: 64, offset: 640)
!4981 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !60, line: 671, baseType: !4982, size: 32, offset: 704)
!4982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !60, line: 671, size: 32, elements: !4983)
!4983 = !{!4984, !4986}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4982, file: !60, line: 672, baseType: !4985, size: 32)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4982, file: !60, line: 673, baseType: !7, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1626, file: !60, line: 675, baseType: !1771, size: 32, offset: 736)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1626, file: !60, line: 676, baseType: !1776, size: 64, offset: 768)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1626, file: !60, line: 677, baseType: !424, size: 128, offset: 832)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1626, file: !60, line: 678, baseType: !424, size: 128, offset: 960)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1626, file: !60, line: 679, baseType: !424, size: 128, offset: 1088)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1626, file: !60, line: 680, baseType: !1512, size: 32, offset: 1216)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1626, file: !60, line: 681, baseType: !323, size: 16, offset: 1248)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1626, file: !60, line: 682, baseType: !314, size: 8, offset: 1264)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1626, file: !60, line: 683, baseType: !314, size: 8, offset: 1272)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1626, file: !60, line: 684, baseType: !4611, size: 64, offset: 1280)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1626, file: !60, line: 691, baseType: !218, size: 64, offset: 1344)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1626, file: !60, line: 692, baseType: !2679, size: 320, offset: 1408)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1626, file: !60, line: 694, baseType: !218, size: 64, offset: 1728)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1626, file: !60, line: 695, baseType: !218, size: 64, offset: 1792)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1626, file: !60, line: 697, baseType: !2099, size: 128, offset: 1856)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1626, file: !60, line: 698, baseType: !407, size: 128, offset: 1984)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1626, file: !60, line: 707, baseType: !407, size: 128, offset: 2112)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1626, file: !60, line: 708, baseType: !407, size: 128, offset: 2240)
!5005 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !60, line: 709, baseType: !5006, size: 128, offset: 2368)
!5006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !60, line: 709, size: 128, elements: !5007)
!5007 = !{!5008, !5009}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5006, file: !60, line: 710, baseType: !2207, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5006, file: !60, line: 711, baseType: !2073, size: 128, align: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1626, file: !60, line: 713, baseType: !402, size: 64, offset: 2496)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1626, file: !60, line: 714, baseType: !402, size: 64, offset: 2560)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1626, file: !60, line: 715, baseType: !305, size: 32, offset: 2624)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1626, file: !60, line: 716, baseType: !305, size: 32, offset: 2656)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1626, file: !60, line: 717, baseType: !305, size: 32, offset: 2688)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1626, file: !60, line: 719, baseType: !305, size: 32, offset: 2720)
!5016 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !60, line: 721, baseType: !5017, size: 64, offset: 2752)
!5017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !60, line: 721, size: 64, elements: !5018)
!5018 = !{!5019, !5020}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5017, file: !60, line: 722, baseType: !4238, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5017, file: !60, line: 723, baseType: !2230, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1626, file: !60, line: 725, baseType: !5022, size: 64, offset: 2816)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !60, line: 725, flags: DIFlagFwdDecl)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1626, file: !60, line: 726, baseType: !1622, size: 1536, align: 64, offset: 2880)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1626, file: !60, line: 727, baseType: !407, size: 128, offset: 4416)
!5026 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !60, line: 728, baseType: !5027, size: 64, offset: 4544)
!5027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !60, line: 728, size: 64, elements: !5028)
!5028 = !{!5029, !5030, !5041, !5042}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5027, file: !60, line: 729, baseType: !3558, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5027, file: !60, line: 730, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !5033, line: 14, size: 832, elements: !5034)
!5033 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!5034 = !{!5035, !5036, !5037, !5038, !5039, !5040}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5032, file: !5033, line: 15, baseType: !1499, size: 512)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5032, file: !5033, line: 16, baseType: !1804, size: 64, offset: 512)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5032, file: !5033, line: 17, baseType: !4238, size: 64, offset: 576)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5032, file: !5033, line: 18, baseType: !407, size: 128, offset: 640)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5032, file: !5033, line: 19, baseType: !1771, size: 32, offset: 768)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5032, file: !5033, line: 20, baseType: !7, size: 32, offset: 800)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5027, file: !60, line: 731, baseType: !244, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5027, file: !60, line: 732, baseType: !7, size: 32)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1626, file: !60, line: 735, baseType: !1347, size: 32, offset: 4608)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1626, file: !60, line: 738, baseType: !1347, size: 32, offset: 4640)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1626, file: !60, line: 739, baseType: !4723, size: 64, offset: 4672)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1626, file: !60, line: 750, baseType: !1616, size: 64, offset: 4736)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1622, file: !60, line: 474, baseType: !2399, size: 128, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1622, file: !60, line: 475, baseType: !2679, size: 320, offset: 192)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1622, file: !60, line: 476, baseType: !2404, size: 32, offset: 512)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1622, file: !60, line: 477, baseType: !305, size: 32, offset: 544)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1622, file: !60, line: 482, baseType: !365, size: 128, offset: 576)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1622, file: !60, line: 483, baseType: !218, size: 64, offset: 704)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1622, file: !60, line: 484, baseType: !218, size: 64, offset: 768)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1622, file: !60, line: 485, baseType: !5055, size: 64, offset: 832)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5057)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !60, line: 404, size: 1280, elements: !5058)
!5058 = !{!5059, !5063, !5133, !5137, !5141, !5147, !5151, !5155, !5160, !5164, !5168, !5172, !5173, !5177, !5181, !5185, !5190, !5194, !5201, !5202}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5057, file: !60, line: 405, baseType: !5060, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!150, !3564, !2242}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5057, file: !60, line: 406, baseType: !5064, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!150, !2651, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !79, line: 293, size: 1536, elements: !5069)
!5069 = !{!5070, !5100, !5114}
!5070 = !DIDerivedType(tag: DW_TAG_member, scope: !5068, file: !79, line: 295, baseType: !5071, size: 512)
!5071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5068, file: !79, line: 295, size: 512, elements: !5072)
!5072 = !{!5073, !5099}
!5073 = !DIDerivedType(tag: DW_TAG_member, scope: !5071, file: !79, line: 296, baseType: !5074, size: 448)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5071, file: !79, line: 296, size: 448, elements: !5075)
!5075 = !{!5076, !5077, !5086, !5087, !5088, !5097, !5098}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5074, file: !79, line: 298, baseType: !218, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, scope: !5074, file: !79, line: 299, baseType: !5078, size: 128, offset: 64)
!5078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5074, file: !79, line: 299, size: 128, elements: !5079)
!5079 = !{!5080, !5081}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5078, file: !79, line: 300, baseType: !407, size: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, scope: !5078, file: !79, line: 302, baseType: !5082, size: 128)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5078, file: !79, line: 302, size: 128, elements: !5083)
!5083 = !{!5084, !5085}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5082, file: !79, line: 303, baseType: !1616, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5082, file: !79, line: 305, baseType: !7, size: 32, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5074, file: !79, line: 310, baseType: !1621, size: 64, offset: 192)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5074, file: !79, line: 311, baseType: !218, size: 64, offset: 256)
!5088 = !DIDerivedType(tag: DW_TAG_member, scope: !5074, file: !79, line: 312, baseType: !5089, size: 64, offset: 320)
!5089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5074, file: !79, line: 312, size: 64, elements: !5090)
!5090 = !{!5091, !5092}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5089, file: !79, line: 313, baseType: !1616, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5089, file: !79, line: 314, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !79, line: 257, baseType: !5094)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 255, size: 64, elements: !5095)
!5095 = !{!5096}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5094, file: !79, line: 256, baseType: !218, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5074, file: !79, line: 316, baseType: !305, size: 32, offset: 384)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5074, file: !79, line: 317, baseType: !305, size: 32, offset: 416)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5071, file: !79, line: 323, baseType: !3565, size: 512, align: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, scope: !5068, file: !79, line: 325, baseType: !5101, size: 512, offset: 512)
!5101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5068, file: !79, line: 325, size: 512, elements: !5102)
!5102 = !{!5103, !5113}
!5103 = !DIDerivedType(tag: DW_TAG_member, scope: !5101, file: !79, line: 326, baseType: !5104, size: 320)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5101, file: !79, line: 326, size: 320, elements: !5105)
!5105 = !{!5106, !5107, !5108, !5109, !5110, !5111, !5112}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5104, file: !79, line: 327, baseType: !218, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5104, file: !79, line: 328, baseType: !218, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5104, file: !79, line: 329, baseType: !218, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5104, file: !79, line: 331, baseType: !305, size: 32, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5104, file: !79, line: 332, baseType: !305, size: 32, offset: 224)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5104, file: !79, line: 333, baseType: !305, size: 32, offset: 256)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5104, file: !79, line: 335, baseType: !7, size: 32, offset: 288)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5101, file: !79, line: 339, baseType: !3565, size: 512, align: 128)
!5114 = !DIDerivedType(tag: DW_TAG_member, scope: !5068, file: !79, line: 341, baseType: !5115, size: 512, offset: 1024)
!5115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5068, file: !79, line: 341, size: 512, elements: !5116)
!5116 = !{!5117, !5126, !5132}
!5117 = !DIDerivedType(tag: DW_TAG_member, scope: !5115, file: !79, line: 342, baseType: !5118, size: 384)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5115, file: !79, line: 342, size: 384, elements: !5119)
!5119 = !{!5120, !5121, !5122, !5123, !5124, !5125}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5118, file: !79, line: 343, baseType: !218, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5118, file: !79, line: 344, baseType: !218, size: 64, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5118, file: !79, line: 346, baseType: !1616, size: 64, offset: 128)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5118, file: !79, line: 347, baseType: !1616, size: 64, offset: 192)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5118, file: !79, line: 348, baseType: !1616, size: 64, offset: 256)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5118, file: !79, line: 349, baseType: !1616, size: 64, offset: 320)
!5126 = !DIDerivedType(tag: DW_TAG_member, scope: !5115, file: !79, line: 352, baseType: !5127, size: 256)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5115, file: !79, line: 352, size: 256, elements: !5128)
!5128 = !{!5129, !5130, !5131}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5127, file: !79, line: 353, baseType: !218, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5127, file: !79, line: 354, baseType: !218, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5127, file: !79, line: 356, baseType: !407, size: 128, offset: 128)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5115, file: !79, line: 359, baseType: !3565, size: 512, align: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5057, file: !60, line: 409, baseType: !5134, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!150, !1621, !2242}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5057, file: !60, line: 412, baseType: !5138, size: 64, offset: 192)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!766, !1621, !5067}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5057, file: !60, line: 414, baseType: !5142, size: 64, offset: 256)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{null, !5145}
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !60, line: 310, flags: DIFlagFwdDecl)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5057, file: !60, line: 416, baseType: !5148, size: 64, offset: 320)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!150, !2651, !1621, !1776, !7, !3949, !4375}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5057, file: !60, line: 419, baseType: !5152, size: 64, offset: 384)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!150, !2651, !1621, !1776, !7, !7, !3564, !1616}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5057, file: !60, line: 424, baseType: !5156, size: 64, offset: 448)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!5159, !1621, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !306, line: 131, baseType: !211)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5057, file: !60, line: 425, baseType: !5161, size: 64, offset: 512)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !5067, !1592, !1592}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5057, file: !60, line: 426, baseType: !5165, size: 64, offset: 576)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!766, !5067, !2404}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5057, file: !60, line: 427, baseType: !5169, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !5067}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5057, file: !60, line: 428, baseType: !4256, size: 64, offset: 704)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5057, file: !60, line: 433, baseType: !5174, size: 64, offset: 768)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!150, !1621, !5067, !5067, !115}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5057, file: !60, line: 435, baseType: !5178, size: 64, offset: 832)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!150, !5067}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5057, file: !60, line: 436, baseType: !5182, size: 64, offset: 896)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!766, !5067, !1592, !1592}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5057, file: !60, line: 438, baseType: !5186, size: 64, offset: 960)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{null, !5067, !5189, !5189}
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5057, file: !60, line: 439, baseType: !5191, size: 64, offset: 1024)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!150, !1621, !3564}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5057, file: !60, line: 442, baseType: !5195, size: 64, offset: 1088)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!150, !5198, !2651, !5200}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !60, line: 66, flags: DIFlagFwdDecl)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5057, file: !60, line: 444, baseType: !4367, size: 64, offset: 1152)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5057, file: !60, line: 445, baseType: !5203, size: 64, offset: 1216)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!150, !4259, !4281}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !60, line: 486, baseType: !218, size: 64, offset: 896)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1622, file: !60, line: 487, baseType: !2679, size: 320, offset: 960)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1622, file: !60, line: 488, baseType: !4410, size: 32, offset: 1280)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1622, file: !60, line: 489, baseType: !1512, size: 32, offset: 1312)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1622, file: !60, line: 490, baseType: !407, size: 128, offset: 1344)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1622, file: !60, line: 491, baseType: !1616, size: 64, offset: 1472)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1611, file: !1573, line: 180, baseType: !5213, size: 64, offset: 320)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!1579, !2651, !1505, !1610, !244, !1776, !1592}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1611, file: !1573, line: 182, baseType: !5213, size: 64, offset: 384)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1611, file: !1573, line: 184, baseType: !5218, size: 64, offset: 448)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!150, !2651, !1505, !1610, !3673}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1599, file: !1573, line: 90, baseType: !5222, size: 64, offset: 192)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1599, file: !1573, line: 91, baseType: !5224, size: 64, offset: 256)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1563, file: !1500, line: 120, baseType: !5226, size: 64, offset: 192)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!5229, !1531}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5231)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !123, line: 39, size: 384, elements: !5232)
!5232 = !{!5233, !5234, !5238, !5242, !5248, !5252}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5231, file: !123, line: 40, baseType: !122, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !5231, file: !123, line: 41, baseType: !5235, size: 64, offset: 64)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!766}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !5231, file: !123, line: 42, baseType: !5239, size: 64, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!1616}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !5231, file: !123, line: 43, baseType: !5243, size: 64, offset: 192)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!2755, !5246}
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !123, line: 19, flags: DIFlagFwdDecl)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !5231, file: !123, line: 44, baseType: !5249, size: 64, offset: 256)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!2755}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !5231, file: !123, line: 45, baseType: !1907, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1563, file: !1500, line: 121, baseType: !5254, size: 64, offset: 256)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!2755, !1531}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1563, file: !1500, line: 122, baseType: !5258, size: 64, offset: 320)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{null, !1531, !5261, !5262}
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1499, file: !1500, line: 70, baseType: !5264, size: 64, offset: 384)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1790, line: 190, size: 1152, elements: !5266)
!5266 = !{!5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5346, !5347, !5348, !5349, !5350, !5353}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5265, file: !1790, line: 191, baseType: !305, size: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5265, file: !1790, line: 192, baseType: !305, size: 32, offset: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5265, file: !1790, line: 202, baseType: !5264, size: 64, offset: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5265, file: !1790, line: 203, baseType: !238, size: 64, offset: 128)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5265, file: !1790, line: 205, baseType: !267, size: 192, align: 64, offset: 192)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5265, file: !1790, line: 207, baseType: !2755, size: 64, offset: 384)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5265, file: !1790, line: 208, baseType: !7, size: 32, offset: 448)
!5274 = !DIDerivedType(tag: DW_TAG_member, scope: !5265, file: !1790, line: 209, baseType: !5275, size: 256, offset: 512)
!5275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5265, file: !1790, line: 209, size: 256, elements: !5276)
!5276 = !{!5277, !5286, !5290}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5275, file: !1790, line: 210, baseType: !5278, size: 256)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1790, line: 153, size: 256, elements: !5279)
!5279 = !{!5280, !5281, !5282, !5285}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5278, file: !1790, line: 154, baseType: !218, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5278, file: !1790, line: 156, baseType: !368, size: 64, offset: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5278, file: !1790, line: 162, baseType: !5283, size: 64, offset: 128)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1790, line: 162, flags: DIFlagFwdDecl)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5278, file: !1790, line: 167, baseType: !218, size: 64, offset: 192)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5275, file: !1790, line: 211, baseType: !5287, size: 64)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1790, line: 170, size: 64, elements: !5288)
!5288 = !{!5289}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5287, file: !1790, line: 171, baseType: !5264, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5275, file: !1790, line: 212, baseType: !5291, size: 256)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1790, line: 174, size: 256, elements: !5292)
!5292 = !{!5293, !5341, !5344, !5345}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5291, file: !1790, line: 175, baseType: !5294, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5296)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1790, line: 271, size: 768, elements: !5297)
!5297 = !{!5298, !5318, !5322, !5323, !5324, !5325, !5326, !5330, !5331, !5332, !5333, !5337}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5296, file: !1790, line: 276, baseType: !5299, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!150, !5302}
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1790, line: 251, size: 1216, elements: !5304)
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5303, file: !1790, line: 253, baseType: !5264, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5303, file: !1790, line: 254, baseType: !2651, size: 64, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5303, file: !1790, line: 255, baseType: !2279, size: 64, offset: 128)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5303, file: !1790, line: 256, baseType: !1616, size: 64, offset: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5303, file: !1790, line: 259, baseType: !1872, size: 256, offset: 256)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5303, file: !1790, line: 260, baseType: !1872, size: 256, offset: 512)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5303, file: !1790, line: 261, baseType: !150, size: 32, offset: 768)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5303, file: !1790, line: 262, baseType: !407, size: 128, offset: 832)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5303, file: !1790, line: 263, baseType: !244, size: 64, offset: 960)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5303, file: !1790, line: 265, baseType: !1592, size: 64, offset: 1024)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5303, file: !1790, line: 266, baseType: !766, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5303, file: !1790, line: 267, baseType: !766, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5303, file: !1790, line: 268, baseType: !3716, size: 64, offset: 1152)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5296, file: !1790, line: 277, baseType: !5319, size: 64, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{null, !5302}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5296, file: !1790, line: 290, baseType: !2310, size: 64, offset: 128)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5296, file: !1790, line: 292, baseType: !2297, size: 64, offset: 192)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5296, file: !1790, line: 293, baseType: !2306, size: 64, offset: 256)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5296, file: !1790, line: 294, baseType: !2302, size: 64, offset: 320)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5296, file: !1790, line: 296, baseType: !5327, size: 64, offset: 384)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!1579, !5302, !244, !1592, !1776}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5296, file: !1790, line: 306, baseType: !1592, size: 64, offset: 448)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5296, file: !1790, line: 313, baseType: !766, size: 8, offset: 512)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5296, file: !1790, line: 314, baseType: !5327, size: 64, offset: 576)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5296, file: !1790, line: 317, baseType: !5334, size: 64, offset: 640)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!4307, !5302, !4309}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5296, file: !1790, line: 320, baseType: !5338, size: 64, offset: 704)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!150, !5302, !3673}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5291, file: !1790, line: 176, baseType: !5342, size: 64, offset: 64)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1790, line: 35, flags: DIFlagFwdDecl)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5291, file: !1790, line: 177, baseType: !1776, size: 64, offset: 128)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5291, file: !1790, line: 178, baseType: !5264, size: 64, offset: 192)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5265, file: !1790, line: 215, baseType: !1616, size: 64, offset: 768)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5265, file: !1790, line: 221, baseType: !211, size: 64, offset: 832)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5265, file: !1790, line: 223, baseType: !323, size: 16, offset: 896)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5265, file: !1790, line: 224, baseType: !1587, size: 16, offset: 912)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5265, file: !1790, line: 225, baseType: !5351, size: 64, offset: 960)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1790, line: 36, flags: DIFlagFwdDecl)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5265, file: !1790, line: 227, baseType: !2073, size: 128, align: 64, offset: 1024)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1499, file: !1500, line: 71, baseType: !5355, size: 32, offset: 448)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5356, line: 19, size: 32, elements: !5357)
!5356 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5357 = !{!5358}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5355, file: !5356, line: 20, baseType: !2366, size: 32)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1499, file: !1500, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1499, file: !1500, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1499, file: !1500, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1499, file: !1500, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1499, file: !1500, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1496, file: !135, line: 707, baseType: !5365, size: 64, offset: 512)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1496, file: !135, line: 709, baseType: !5367, size: 64, offset: 576)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !135, line: 37, flags: DIFlagFwdDecl)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1496, file: !135, line: 711, baseType: !238, size: 64, offset: 640)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1496, file: !135, line: 712, baseType: !5371, size: 64, offset: 704)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5373)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !135, line: 89, size: 384, elements: !5374)
!5374 = !{!5375, !5376, !5377, !5383, !5388, !5392}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5373, file: !135, line: 90, baseType: !238, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5373, file: !135, line: 91, baseType: !1596, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5373, file: !135, line: 92, baseType: !5378, size: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!150, !5381, !1543}
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5373, file: !135, line: 93, baseType: !5384, size: 64, offset: 192)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!244, !5381, !5387, !5261, !5262}
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5373, file: !135, line: 95, baseType: !5389, size: 64, offset: 256)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{null, !5365}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5373, file: !135, line: 97, baseType: !5393, size: 64, offset: 320)
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5395)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !142, line: 286, size: 1472, elements: !5396)
!5396 = !{!5397, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5395, file: !142, line: 287, baseType: !5398, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!150, !5365}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5395, file: !142, line: 288, baseType: !5389, size: 64, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5395, file: !142, line: 289, baseType: !5398, size: 64, offset: 128)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5395, file: !142, line: 290, baseType: !5398, size: 64, offset: 192)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5395, file: !142, line: 291, baseType: !5398, size: 64, offset: 256)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5395, file: !142, line: 292, baseType: !5398, size: 64, offset: 320)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5395, file: !142, line: 293, baseType: !5398, size: 64, offset: 384)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5395, file: !142, line: 294, baseType: !5398, size: 64, offset: 448)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5395, file: !142, line: 295, baseType: !5398, size: 64, offset: 512)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5395, file: !142, line: 296, baseType: !5398, size: 64, offset: 576)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5395, file: !142, line: 297, baseType: !5398, size: 64, offset: 640)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5395, file: !142, line: 298, baseType: !5398, size: 64, offset: 704)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5395, file: !142, line: 299, baseType: !5398, size: 64, offset: 768)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5395, file: !142, line: 300, baseType: !5398, size: 64, offset: 832)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5395, file: !142, line: 301, baseType: !5398, size: 64, offset: 896)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5395, file: !142, line: 302, baseType: !5398, size: 64, offset: 960)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5395, file: !142, line: 303, baseType: !5398, size: 64, offset: 1024)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5395, file: !142, line: 304, baseType: !5398, size: 64, offset: 1088)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5395, file: !142, line: 305, baseType: !5398, size: 64, offset: 1152)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5395, file: !142, line: 306, baseType: !5398, size: 64, offset: 1216)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5395, file: !142, line: 307, baseType: !5398, size: 64, offset: 1280)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5395, file: !142, line: 308, baseType: !5398, size: 64, offset: 1344)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5395, file: !142, line: 309, baseType: !5398, size: 64, offset: 1408)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1496, file: !135, line: 714, baseType: !5424, size: 64, offset: 768)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5426)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5427, line: 80, size: 1344, elements: !5428)
!5427 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5428 = !{!5429, !5430, !5431, !5432, !5433, !5434, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5507}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5426, file: !5427, line: 81, baseType: !238, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5426, file: !5427, line: 82, baseType: !238, size: 64, offset: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5426, file: !5427, line: 83, baseType: !1596, size: 64, offset: 128)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5426, file: !5427, line: 84, baseType: !1596, size: 64, offset: 192)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5426, file: !5427, line: 85, baseType: !1596, size: 64, offset: 256)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5426, file: !5427, line: 87, baseType: !5435, size: 64, offset: 320)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!150, !5365, !5438}
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !129, line: 96, size: 1152, elements: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5445, !5446, !5447, !5460, !5470, !5471, !5472, !5473, !5474, !5482, !5483, !5484, !5485, !5486, !5487}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5439, file: !129, line: 97, baseType: !238, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5439, file: !129, line: 98, baseType: !5424, size: 64, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5439, file: !129, line: 100, baseType: !1804, size: 64, offset: 128)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5439, file: !129, line: 101, baseType: !238, size: 64, offset: 192)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5439, file: !129, line: 103, baseType: !766, size: 8, offset: 256)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5439, file: !129, line: 104, baseType: !128, size: 32, offset: 288)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5439, file: !129, line: 106, baseType: !5448, size: 64, offset: 320)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5450)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5451, line: 282, size: 1600, elements: !5452)
!5451 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!5452 = !{!5453, !5454, !5455, !5459}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5450, file: !5451, line: 283, baseType: !4726, size: 256)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5450, file: !5451, line: 284, baseType: !4726, size: 256, offset: 256)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5450, file: !5451, line: 285, baseType: !5456, size: 1024, offset: 512)
!5456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, elements: !5457)
!5457 = !{!5458}
!5458 = !DISubrange(count: 128)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5450, file: !5451, line: 286, baseType: !2755, size: 64, offset: 1536)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5439, file: !129, line: 107, baseType: !5461, size: 64, offset: 384)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5463)
!5463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5451, line: 217, size: 256, elements: !5464)
!5464 = !{!5465, !5466, !5468, !5469}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5463, file: !5451, line: 218, baseType: !4733, size: 128)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5463, file: !5451, line: 219, baseType: !5467, size: 64, offset: 128)
!5467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5451, line: 15, baseType: !218)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5463, file: !5451, line: 220, baseType: !1347, size: 32, offset: 192)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5463, file: !5451, line: 221, baseType: !1347, size: 32, offset: 224)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5439, file: !129, line: 109, baseType: !5398, size: 64, offset: 448)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5439, file: !129, line: 110, baseType: !5389, size: 64, offset: 512)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5439, file: !129, line: 111, baseType: !5398, size: 64, offset: 576)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5439, file: !129, line: 112, baseType: !5389, size: 64, offset: 640)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5439, file: !129, line: 113, baseType: !5475, size: 64, offset: 704)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!150, !5365, !5478}
!5478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !142, line: 60, baseType: !5479)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !142, line: 58, size: 32, elements: !5480)
!5480 = !{!5481}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5479, file: !142, line: 59, baseType: !150, size: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5439, file: !129, line: 114, baseType: !5398, size: 64, offset: 768)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5439, file: !129, line: 115, baseType: !1596, size: 64, offset: 832)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5439, file: !129, line: 116, baseType: !1596, size: 64, offset: 896)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5439, file: !129, line: 118, baseType: !5393, size: 64, offset: 960)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5439, file: !129, line: 119, baseType: !5389, size: 64, offset: 1024)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5439, file: !129, line: 121, baseType: !5488, size: 64, offset: 1088)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !129, line: 121, flags: DIFlagFwdDecl)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5426, file: !5427, line: 88, baseType: !5378, size: 64, offset: 384)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5426, file: !5427, line: 89, baseType: !5398, size: 64, offset: 448)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5426, file: !5427, line: 90, baseType: !5389, size: 64, offset: 512)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5426, file: !5427, line: 91, baseType: !5389, size: 64, offset: 576)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5426, file: !5427, line: 92, baseType: !5389, size: 64, offset: 640)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5426, file: !5427, line: 94, baseType: !5398, size: 64, offset: 704)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5426, file: !5427, line: 95, baseType: !5398, size: 64, offset: 768)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5426, file: !5427, line: 97, baseType: !5475, size: 64, offset: 832)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5426, file: !5427, line: 98, baseType: !5398, size: 64, offset: 896)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5426, file: !5427, line: 100, baseType: !5398, size: 64, offset: 960)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5426, file: !5427, line: 102, baseType: !5398, size: 64, offset: 1024)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5426, file: !5427, line: 103, baseType: !5389, size: 64, offset: 1088)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5426, file: !5427, line: 105, baseType: !5393, size: 64, offset: 1152)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5426, file: !5427, line: 107, baseType: !5504, size: 64, offset: 1216)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5506)
!5506 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5427, line: 107, flags: DIFlagFwdDecl)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5426, file: !5427, line: 109, baseType: !766, size: 8, offset: 1280)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1496, file: !135, line: 715, baseType: !5438, size: 64, offset: 832)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1496, file: !135, line: 717, baseType: !1616, size: 64, offset: 896)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1496, file: !135, line: 719, baseType: !1616, size: 64, offset: 960)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1496, file: !135, line: 721, baseType: !1872, size: 256, offset: 1024)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1496, file: !135, line: 725, baseType: !5513, size: 448, offset: 1280)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !135, line: 517, size: 448, elements: !5514)
!5514 = !{!5515, !5516, !5517, !5518}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5513, file: !135, line: 518, baseType: !407, size: 128)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5513, file: !135, line: 519, baseType: !407, size: 128, offset: 128)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5513, file: !135, line: 520, baseType: !407, size: 128, offset: 256)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5513, file: !135, line: 521, baseType: !134, size: 32, offset: 384)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1496, file: !135, line: 726, baseType: !5520, size: 2496, offset: 1728)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !142, line: 663, size: 2496, elements: !5521)
!5521 = !{!5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5604, !5608}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5520, file: !142, line: 664, baseType: !5478, size: 32)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5520, file: !142, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5520, file: !142, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5520, file: !142, line: 667, baseType: !766, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5520, file: !142, line: 668, baseType: !766, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5520, file: !142, line: 669, baseType: !766, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5520, file: !142, line: 670, baseType: !766, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5520, file: !142, line: 671, baseType: !766, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5520, file: !142, line: 672, baseType: !766, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5520, file: !142, line: 673, baseType: !766, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5520, file: !142, line: 674, baseType: !766, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5520, file: !142, line: 675, baseType: !1346, size: 32, offset: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5520, file: !142, line: 676, baseType: !1512, size: 32, offset: 96)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5520, file: !142, line: 678, baseType: !407, size: 128, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5520, file: !142, line: 679, baseType: !1824, size: 256, offset: 256)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5520, file: !142, line: 680, baseType: !5538, size: 64, offset: 512)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5540, line: 43, size: 1536, elements: !5541)
!5540 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5541 = !{!5542, !5543, !5544, !5545, !5546, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5539, file: !5540, line: 44, baseType: !238, size: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5539, file: !5540, line: 45, baseType: !150, size: 32, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5539, file: !5540, line: 46, baseType: !407, size: 128, offset: 128)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5539, file: !5540, line: 47, baseType: !1512, size: 32, offset: 256)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5539, file: !5540, line: 48, baseType: !5547, size: 64, offset: 320)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !142, line: 629, flags: DIFlagFwdDecl)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5539, file: !5540, line: 49, baseType: !2095, size: 320, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5539, file: !5540, line: 50, baseType: !218, size: 64, offset: 704)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5539, file: !5540, line: 51, baseType: !275, size: 64, offset: 768)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5539, file: !5540, line: 52, baseType: !275, size: 64, offset: 832)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5539, file: !5540, line: 53, baseType: !275, size: 64, offset: 896)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5539, file: !5540, line: 54, baseType: !275, size: 64, offset: 960)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5539, file: !5540, line: 55, baseType: !275, size: 64, offset: 1024)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5539, file: !5540, line: 56, baseType: !218, size: 64, offset: 1088)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5539, file: !5540, line: 57, baseType: !218, size: 64, offset: 1152)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5539, file: !5540, line: 58, baseType: !218, size: 64, offset: 1216)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5539, file: !5540, line: 59, baseType: !218, size: 64, offset: 1280)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5539, file: !5540, line: 60, baseType: !218, size: 64, offset: 1344)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5539, file: !5540, line: 61, baseType: !5365, size: 64, offset: 1408)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5539, file: !5540, line: 62, baseType: !766, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5539, file: !5540, line: 63, baseType: !766, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5520, file: !142, line: 681, baseType: !766, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5520, file: !142, line: 682, baseType: !766, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5520, file: !142, line: 683, baseType: !766, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5520, file: !142, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5520, file: !142, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5520, file: !142, line: 690, baseType: !260, size: 512, offset: 640)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5520, file: !142, line: 691, baseType: !211, size: 64, offset: 1152)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5520, file: !142, line: 692, baseType: !397, size: 256, offset: 1216)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5520, file: !142, line: 693, baseType: !2377, size: 192, offset: 1472)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5520, file: !142, line: 694, baseType: !5547, size: 64, offset: 1664)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5520, file: !142, line: 695, baseType: !305, size: 32, offset: 1728)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5520, file: !142, line: 696, baseType: !305, size: 32, offset: 1760)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5520, file: !142, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5520, file: !142, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5520, file: !142, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5520, file: !142, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5520, file: !142, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5520, file: !142, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5520, file: !142, line: 703, baseType: !766, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5520, file: !142, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5520, file: !142, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5520, file: !142, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5520, file: !142, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5520, file: !142, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5520, file: !142, line: 709, baseType: !7, size: 32, offset: 1824)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5520, file: !142, line: 710, baseType: !141, size: 32, offset: 1856)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5520, file: !142, line: 711, baseType: !149, size: 32, offset: 1888)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5520, file: !142, line: 712, baseType: !149, size: 32, offset: 1920)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5520, file: !142, line: 713, baseType: !150, size: 32, offset: 1952)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5520, file: !142, line: 714, baseType: !150, size: 32, offset: 1984)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5520, file: !142, line: 715, baseType: !211, size: 64, offset: 2048)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5520, file: !142, line: 716, baseType: !211, size: 64, offset: 2112)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5520, file: !142, line: 717, baseType: !211, size: 64, offset: 2176)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5520, file: !142, line: 718, baseType: !211, size: 64, offset: 2240)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5520, file: !142, line: 720, baseType: !5599, size: 64, offset: 2304)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !142, line: 632, size: 64, elements: !5601)
!5601 = !{!5602, !5603}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5600, file: !142, line: 633, baseType: !1512, size: 32)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5600, file: !142, line: 634, baseType: !7, size: 32, offset: 32)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5520, file: !142, line: 721, baseType: !5605, size: 64, offset: 2368)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{null, !5365, !553}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5520, file: !142, line: 722, baseType: !5609, size: 64, offset: 2432)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !142, line: 722, flags: DIFlagFwdDecl)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1496, file: !135, line: 727, baseType: !5612, size: 64, offset: 4224)
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !142, line: 742, size: 1792, elements: !5614)
!5614 = !{!5615, !5616, !5617, !5621, !5622, !5623}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5613, file: !142, line: 743, baseType: !5395, size: 1472)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5613, file: !142, line: 744, baseType: !5398, size: 64, offset: 1472)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5613, file: !142, line: 745, baseType: !5618, size: 64, offset: 1536)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{null, !5365, !766}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5613, file: !142, line: 746, baseType: !5398, size: 64, offset: 1600)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5613, file: !142, line: 747, baseType: !5389, size: 64, offset: 1664)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5613, file: !142, line: 748, baseType: !5389, size: 64, offset: 1728)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1496, file: !135, line: 736, baseType: !5625, size: 128, offset: 4288)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !135, line: 529, size: 128, elements: !5626)
!5626 = !{!5627, !5631}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5625, file: !135, line: 531, baseType: !5628, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5630, line: 13, flags: DIFlagFwdDecl)
!5630 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5625, file: !135, line: 532, baseType: !5632, size: 64, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !135, line: 49, flags: DIFlagFwdDecl)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1496, file: !135, line: 738, baseType: !5635, size: 64, offset: 4416)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5637)
!5637 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !135, line: 738, flags: DIFlagFwdDecl)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1496, file: !135, line: 740, baseType: !5639, size: 64, offset: 4480)
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1496, file: !135, line: 741, baseType: !211, size: 64, offset: 4544)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1496, file: !135, line: 746, baseType: !211, size: 64, offset: 4608)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1496, file: !135, line: 747, baseType: !5643, size: 64, offset: 4672)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5645)
!5645 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !135, line: 747, flags: DIFlagFwdDecl)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1496, file: !135, line: 749, baseType: !5647, size: 64, offset: 4736)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !135, line: 428, size: 128, elements: !5649)
!5649 = !{!5650, !5651, !5652}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5648, file: !135, line: 433, baseType: !7, size: 32)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5648, file: !135, line: 434, baseType: !7, size: 32, offset: 32)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5648, file: !135, line: 435, baseType: !218, size: 64, offset: 64)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1496, file: !135, line: 751, baseType: !407, size: 128, offset: 4800)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1496, file: !135, line: 762, baseType: !5655, size: 64, offset: 4928)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !135, line: 762, flags: DIFlagFwdDecl)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1496, file: !135, line: 770, baseType: !5658, offset: 4992)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5659, line: 5, elements: !2131)
!5659 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1496, file: !135, line: 772, baseType: !5661, size: 64, offset: 4992)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5663, line: 48, size: 1152, elements: !5664)
!5663 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!5664 = !{!5665, !5666, !5668, !5669, !5772, !5780, !5781, !5782, !5783, !5784, !5785}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5662, file: !5663, line: 49, baseType: !238, size: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !5662, file: !5663, line: 50, baseType: !5667, size: 32, offset: 64)
!5667 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !5663, line: 25, baseType: !1346)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !5662, file: !5663, line: 51, baseType: !238, size: 64, offset: 128)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5662, file: !5663, line: 52, baseType: !5670, size: 512, offset: 192)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5671, line: 41, size: 512, elements: !5672)
!5671 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5672 = !{!5673, !5675, !5768, !5769, !5770, !5771}
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5670, file: !5671, line: 42, baseType: !5674, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5670, file: !5671, line: 43, baseType: !5676, size: 64, offset: 64)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5678)
!5678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5671, line: 125, size: 1408, elements: !5679)
!5679 = !{!5680, !5684, !5688, !5694, !5698, !5699, !5703, !5707, !5711, !5715, !5719, !5720, !5724, !5728, !5732, !5743, !5744, !5745, !5746, !5756, !5760, !5764}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5678, file: !5671, line: 126, baseType: !5681, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!5674, !5674}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5678, file: !5671, line: 127, baseType: !5685, size: 64, offset: 64)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !5674}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5678, file: !5671, line: 128, baseType: !5689, size: 64, offset: 128)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!766, !5692}
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5670)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5678, file: !5671, line: 129, baseType: !5695, size: 64, offset: 192)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!2755, !5692, !5381}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5678, file: !5671, line: 131, baseType: !5689, size: 64, offset: 256)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5678, file: !5671, line: 133, baseType: !5700, size: 64, offset: 320)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!157, !5692}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5678, file: !5671, line: 134, baseType: !5704, size: 64, offset: 384)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!766, !5692, !238}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5678, file: !5671, line: 136, baseType: !5708, size: 64, offset: 448)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5709, size: 64)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!150, !5692, !238, !7, !1616, !1592}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5678, file: !5671, line: 141, baseType: !5712, size: 64, offset: 512)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!150, !5692, !238, !2177, !1592}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5678, file: !5671, line: 144, baseType: !5716, size: 64, offset: 576)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!238, !5692}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5678, file: !5671, line: 145, baseType: !5716, size: 64, offset: 640)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5678, file: !5671, line: 146, baseType: !5721, size: 64, offset: 704)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!5674, !5692}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5678, file: !5671, line: 148, baseType: !5725, size: 64, offset: 768)
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!5674, !5692, !5674}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5678, file: !5671, line: 151, baseType: !5729, size: 64, offset: 832)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!5674, !5692, !238}
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5678, file: !5671, line: 153, baseType: !5733, size: 64, offset: 896)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!150, !5692, !238, !238, !7, !7, !5736}
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5671, line: 94, size: 640, elements: !5738)
!5738 = !{!5739, !5740, !5741}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5737, file: !5671, line: 95, baseType: !5674, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5737, file: !5671, line: 96, baseType: !7, size: 32, offset: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5737, file: !5671, line: 97, baseType: !5742, size: 512, offset: 128)
!5742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 512, elements: !343)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5678, file: !5671, line: 158, baseType: !5725, size: 64, offset: 960)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5678, file: !5671, line: 161, baseType: !5721, size: 64, offset: 1024)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5678, file: !5671, line: 163, baseType: !5681, size: 64, offset: 1088)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5678, file: !5671, line: 164, baseType: !5747, size: 64, offset: 1152)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!150, !5692, !5750}
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5671, line: 73, size: 128, elements: !5752)
!5752 = !{!5753, !5754, !5755}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5751, file: !5671, line: 74, baseType: !7, size: 32)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5751, file: !5671, line: 75, baseType: !7, size: 32, offset: 32)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5751, file: !5671, line: 76, baseType: !5692, size: 64, offset: 64)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5678, file: !5671, line: 166, baseType: !5757, size: 64, offset: 1216)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{!1616, !5674, !150}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5678, file: !5671, line: 167, baseType: !5761, size: 64, offset: 1280)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!150, !5692, !7}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5678, file: !5671, line: 168, baseType: !5765, size: 64, offset: 1344)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!150, !5674}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5670, file: !5671, line: 44, baseType: !5365, size: 64, offset: 128)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5670, file: !5671, line: 45, baseType: !407, size: 128, offset: 192)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5670, file: !5671, line: 46, baseType: !407, size: 128, offset: 320)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5670, file: !5671, line: 47, baseType: !314, size: 8, offset: 448)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5662, file: !5663, line: 54, baseType: !5773, size: 64, offset: 704)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !5663, line: 28, size: 256, elements: !5775)
!5775 = !{!5776, !5777, !5778, !5779}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5774, file: !5663, line: 29, baseType: !244, size: 64)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5774, file: !5663, line: 30, baseType: !150, size: 32, offset: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5774, file: !5663, line: 31, baseType: !1616, size: 64, offset: 128)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5774, file: !5663, line: 32, baseType: !5773, size: 64, offset: 192)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !5662, file: !5663, line: 55, baseType: !5773, size: 64, offset: 768)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5662, file: !5663, line: 56, baseType: !5661, size: 64, offset: 832)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5662, file: !5663, line: 57, baseType: !5661, size: 64, offset: 896)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5662, file: !5663, line: 58, baseType: !5661, size: 64, offset: 960)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5662, file: !5663, line: 62, baseType: !218, size: 64, offset: 1024)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5662, file: !5663, line: 63, baseType: !1616, size: 64, offset: 1088)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1496, file: !135, line: 773, baseType: !5674, size: 64, offset: 5056)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1496, file: !135, line: 776, baseType: !150, size: 32, offset: 5120)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1496, file: !135, line: 778, baseType: !1771, size: 32, offset: 5152)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1496, file: !135, line: 779, baseType: !1346, size: 32, offset: 5184)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1496, file: !135, line: 781, baseType: !1512, size: 32, offset: 5216)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1496, file: !135, line: 782, baseType: !407, size: 128, offset: 5248)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1496, file: !135, line: 784, baseType: !5793, size: 64, offset: 5376)
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5795)
!5795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5796, line: 52, size: 768, elements: !5797)
!5796 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5797 = !{!5798, !5799, !5800, !5801, !5802, !5806, !5810, !5811, !5812, !5813, !5817, !5821}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5795, file: !5796, line: 53, baseType: !238, size: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5795, file: !5796, line: 55, baseType: !1596, size: 64, offset: 64)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5795, file: !5796, line: 56, baseType: !1596, size: 64, offset: 128)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5795, file: !5796, line: 58, baseType: !5378, size: 64, offset: 192)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5795, file: !5796, line: 59, baseType: !5803, size: 64, offset: 256)
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!244, !5381, !5387}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5795, file: !5796, line: 61, baseType: !5807, size: 64, offset: 320)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = !DISubroutineType(types: !5809)
!5809 = !{null, !5793}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5795, file: !5796, line: 62, baseType: !5389, size: 64, offset: 384)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5795, file: !5796, line: 64, baseType: !5398, size: 64, offset: 448)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5795, file: !5796, line: 66, baseType: !5229, size: 64, offset: 512)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5795, file: !5796, line: 67, baseType: !5814, size: 64, offset: 576)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!2755, !5381}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5795, file: !5796, line: 69, baseType: !5818, size: 64, offset: 640)
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{null, !5381, !5261, !5262}
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5795, file: !5796, line: 71, baseType: !5393, size: 64, offset: 704)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1496, file: !135, line: 785, baseType: !1596, size: 64, offset: 5440)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1496, file: !135, line: 787, baseType: !5389, size: 64, offset: 5504)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1496, file: !135, line: 788, baseType: !5825, size: 64, offset: 5568)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !135, line: 46, flags: DIFlagFwdDecl)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1496, file: !135, line: 789, baseType: !5828, size: 64, offset: 5632)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !135, line: 48, flags: DIFlagFwdDecl)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1496, file: !135, line: 791, baseType: !5831, size: 64, offset: 5696)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !135, line: 597, size: 128, elements: !5833)
!5833 = !{!5834, !5835, !5836, !5837, !5838}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5832, file: !135, line: 598, baseType: !163, size: 32)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5832, file: !135, line: 599, baseType: !172, size: 32, offset: 32)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5832, file: !135, line: 600, baseType: !177, size: 32, offset: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5832, file: !135, line: 601, baseType: !766, size: 8, offset: 96)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5832, file: !135, line: 602, baseType: !766, size: 8, offset: 104)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1496, file: !135, line: 793, baseType: !182, size: 32, offset: 5760)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1496, file: !135, line: 795, baseType: !766, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1496, file: !135, line: 796, baseType: !766, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1496, file: !135, line: 797, baseType: !766, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1496, file: !135, line: 798, baseType: !766, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1496, file: !135, line: 799, baseType: !766, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1492, file: !1493, line: 89, baseType: !1804, size: 64, offset: 5824)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1492, file: !1493, line: 91, baseType: !150, size: 32, offset: 5888)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1492, file: !1493, line: 93, baseType: !5848, size: 64, offset: 5952)
!5848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5850)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_class_ops", file: !1493, line: 59, size: 704, elements: !5851)
!5851 = !{!5852, !5856, !5873, !5874, !5884, !5885, !5889, !5893, !5898, !5902, !5918}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5850, file: !1493, line: 60, baseType: !5853, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!150, !5365, !7, !218}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "read_time", scope: !5850, file: !1493, line: 61, baseType: !5857, size: 64, offset: 64)
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!150, !5365, !5860}
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !5862, line: 25, size: 288, elements: !5863)
!5862 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80f54d46d0d21ef6b644244083c34d9c")
!5863 = !{!5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !5861, file: !5862, line: 26, baseType: !150, size: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !5861, file: !5862, line: 27, baseType: !150, size: 32, offset: 32)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !5861, file: !5862, line: 28, baseType: !150, size: 32, offset: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !5861, file: !5862, line: 29, baseType: !150, size: 32, offset: 96)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !5861, file: !5862, line: 30, baseType: !150, size: 32, offset: 128)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !5861, file: !5862, line: 31, baseType: !150, size: 32, offset: 160)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !5861, file: !5862, line: 32, baseType: !150, size: 32, offset: 192)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !5861, file: !5862, line: 33, baseType: !150, size: 32, offset: 224)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !5861, file: !5862, line: 34, baseType: !150, size: 32, offset: 256)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !5850, file: !1493, line: 62, baseType: !5857, size: 64, offset: 128)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "read_alarm", scope: !5850, file: !1493, line: 63, baseType: !5875, size: 64, offset: 192)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{!150, !5365, !5878}
!5878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5879, size: 64)
!5879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_wkalrm", file: !5862, line: 41, size: 320, elements: !5880)
!5880 = !{!5881, !5882, !5883}
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5879, file: !5862, line: 42, baseType: !217, size: 8)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !5879, file: !5862, line: 43, baseType: !217, size: 8, offset: 8)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5879, file: !5862, line: 44, baseType: !5861, size: 288, offset: 32)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "set_alarm", scope: !5850, file: !1493, line: 64, baseType: !5875, size: 64, offset: 256)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !5850, file: !1493, line: 65, baseType: !5886, size: 64, offset: 320)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5887, size: 64)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!150, !5365, !2279}
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_irq_enable", scope: !5850, file: !1493, line: 66, baseType: !5890, size: 64, offset: 384)
!5890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5891, size: 64)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!150, !5365, !7}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "read_offset", scope: !5850, file: !1493, line: 67, baseType: !5894, size: 64, offset: 448)
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!150, !5365, !5897}
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset", scope: !5850, file: !1493, line: 68, baseType: !5899, size: 64, offset: 512)
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!150, !5365, !219}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "param_get", scope: !5850, file: !1493, line: 69, baseType: !5903, size: 64, offset: 576)
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!150, !5365, !5906}
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5907, size: 64)
!5907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_param", file: !5862, line: 70, size: 192, elements: !5908)
!5908 = !{!5909, !5910, !5916, !5917}
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5907, file: !5862, line: 71, baseType: !212, size: 64)
!5910 = !DIDerivedType(tag: DW_TAG_member, scope: !5907, file: !5862, line: 72, baseType: !5911, size: 64, offset: 64)
!5911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5907, file: !5862, line: 72, size: 64, elements: !5912)
!5912 = !{!5913, !5914, !5915}
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !5911, file: !5862, line: 73, baseType: !212, size: 64)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !5911, file: !5862, line: 74, baseType: !208, size: 64)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5911, file: !5862, line: 75, baseType: !212, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5907, file: !5862, line: 77, baseType: !1347, size: 32, offset: 128)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !5907, file: !5862, line: 78, baseType: !1347, size: 32, offset: 160)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "param_set", scope: !5850, file: !1493, line: 70, baseType: !5903, size: 64, offset: 640)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !1492, file: !1493, line: 94, baseType: !1872, size: 256, offset: 6016)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "char_dev", scope: !1492, file: !1493, line: 96, baseType: !5032, size: 832, offset: 6272)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1493, line: 97, baseType: !218, size: 64, offset: 7104)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !1492, file: !1493, line: 99, baseType: !218, size: 64, offset: 7168)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "irq_lock", scope: !1492, file: !1493, line: 100, baseType: !1512, size: 32, offset: 7232)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "irq_queue", scope: !1492, file: !1493, line: 101, baseType: !2377, size: 192, offset: 7296)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !1492, file: !1493, line: 102, baseType: !5926, size: 64, offset: 7488)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !60, line: 1083, size: 384, elements: !5928)
!5928 = !{!5929, !5930, !5931, !5932, !5933, !5934}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5927, file: !60, line: 1084, baseType: !2341, size: 64)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5927, file: !60, line: 1085, baseType: !150, size: 32, offset: 64)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5927, file: !60, line: 1086, baseType: !150, size: 32, offset: 96)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5927, file: !60, line: 1087, baseType: !5926, size: 64, offset: 128)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5927, file: !60, line: 1088, baseType: !2651, size: 64, offset: 192)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5927, file: !60, line: 1089, baseType: !2073, size: 128, align: 64, offset: 256)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "irq_freq", scope: !1492, file: !1493, line: 104, baseType: !150, size: 32, offset: 7552)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_freq", scope: !1492, file: !1493, line: 105, baseType: !150, size: 32, offset: 7584)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "timerqueue", scope: !1492, file: !1493, line: 107, baseType: !362, size: 128, offset: 7616)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "aie_timer", scope: !1492, file: !1493, line: 108, baseType: !5939, size: 512, offset: 7744)
!5939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_timer", file: !1493, line: 75, size: 512, elements: !5940)
!5940 = !{!5941, !5942, !5943, !5947, !5948}
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5939, file: !1493, line: 76, baseType: !263, size: 256)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5939, file: !1493, line: 77, baseType: !275, size: 64, offset: 256)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5939, file: !1493, line: 78, baseType: !5944, size: 64, offset: 320)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{null, !1491}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "rtc", scope: !5939, file: !1493, line: 79, baseType: !1491, size: 64, offset: 384)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5939, file: !1493, line: 80, baseType: !150, size: 32, offset: 448)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "uie_rtctimer", scope: !1492, file: !1493, line: 109, baseType: !5939, size: 512, offset: 8256)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "pie_timer", scope: !1492, file: !1493, line: 110, baseType: !260, size: 512, offset: 8768)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "pie_enabled", scope: !1492, file: !1493, line: 111, baseType: !150, size: 32, offset: 9280)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "irqwork", scope: !1492, file: !1493, line: 112, baseType: !397, size: 256, offset: 9344)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset_nsec", scope: !1492, file: !1493, line: 143, baseType: !218, size: 64, offset: 9600)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !1492, file: !1493, line: 145, baseType: !2575, size: 64, offset: 9664)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !1492, file: !1493, line: 147, baseType: !391, size: 64, offset: 9728)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !1492, file: !1493, line: 148, baseType: !5957, size: 64, offset: 9792)
!5957 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeu64_t", file: !392, line: 9, baseType: !212)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_offset_max", scope: !1492, file: !1493, line: 149, baseType: !5957, size: 64, offset: 9856)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "start_secs", scope: !1492, file: !1493, line: 150, baseType: !391, size: 64, offset: 9920)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "offset_secs", scope: !1492, file: !1493, line: 151, baseType: !391, size: 64, offset: 9984)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "set_start_time", scope: !1492, file: !1493, line: 152, baseType: !766, size: 8, offset: 10048)
!5962 = !DILocalVariable(name: "tm", scope: !1483, file: !3, line: 584, type: !5861)
!5963 = !DILocalVariable(name: "err", scope: !1483, file: !3, line: 585, type: !150)
!5964 = !DILabel(scope: !1483, name: "out_close", file: !3, line: 603)
!5965 = !DILocation(line: 581, column: 42, scope: !1483)
!5966 = !DILocation(line: 581, column: 65, scope: !1483)
!5967 = !DILocation(line: 583, column: 2, scope: !1483)
!5968 = !DILocation(line: 583, column: 21, scope: !1483)
!5969 = !DILocation(line: 584, column: 2, scope: !1483)
!5970 = !DILocation(line: 584, column: 18, scope: !1483)
!5971 = !DILocation(line: 585, column: 2, scope: !1483)
!5972 = !DILocation(line: 585, column: 6, scope: !1483)
!5973 = !DILocation(line: 587, column: 8, scope: !1483)
!5974 = !DILocation(line: 587, column: 6, scope: !1483)
!5975 = !DILocation(line: 588, column: 7, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 588, column: 6)
!5977 = !DILocation(line: 588, column: 6, scope: !1483)
!5978 = !DILocation(line: 589, column: 3, scope: !5976)
!5979 = !DILocation(line: 591, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 591, column: 6)
!5981 = !DILocation(line: 591, column: 12, scope: !5980)
!5982 = !DILocation(line: 591, column: 16, scope: !5980)
!5983 = !DILocation(line: 591, column: 20, scope: !5980)
!5984 = !DILocation(line: 591, column: 25, scope: !5980)
!5985 = !DILocation(line: 591, column: 30, scope: !5980)
!5986 = !DILocation(line: 591, column: 6, scope: !1483)
!5987 = !DILocation(line: 592, column: 3, scope: !5980)
!5988 = !DILocation(line: 595, column: 7, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 595, column: 6)
!5990 = !DILocation(line: 595, column: 6, scope: !5989)
!5991 = !DILocation(line: 595, column: 22, scope: !5989)
!5992 = !DILocation(line: 595, column: 27, scope: !5989)
!5993 = !DILocation(line: 595, column: 19, scope: !5989)
!5994 = !DILocation(line: 595, column: 6, scope: !1483)
!5995 = !DILocation(line: 596, column: 20, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5989, file: !3, line: 595, column: 44)
!5997 = !DILocation(line: 596, column: 28, scope: !5996)
!5998 = !DILocation(line: 596, column: 3, scope: !5996)
!5999 = !DILocation(line: 597, column: 22, scope: !5996)
!6000 = !DILocation(line: 597, column: 9, scope: !5996)
!6001 = !DILocation(line: 597, column: 7, scope: !5996)
!6002 = !DILocation(line: 598, column: 2, scope: !5996)
!6003 = !DILocation(line: 600, column: 18, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5989, file: !3, line: 598, column: 9)
!6005 = !DILocation(line: 600, column: 23, scope: !6004)
!6006 = !DILocation(line: 600, column: 4, scope: !6004)
!6007 = !DILocation(line: 600, column: 16, scope: !6004)
!6008 = !DILocation(line: 601, column: 7, scope: !6004)
!6009 = !DILocation(line: 603, column: 1, scope: !1483)
!6010 = !DILocation(line: 604, column: 18, scope: !1483)
!6011 = !DILocation(line: 604, column: 2, scope: !1483)
!6012 = !DILocation(line: 605, column: 9, scope: !1483)
!6013 = !DILocation(line: 605, column: 2, scope: !1483)
!6014 = !DILocation(line: 606, column: 1, scope: !1483)
!6015 = distinct !DISubprogram(name: "sched_sync_hw_clock", scope: !3, file: !3, line: 510, type: !6016, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{null, !218, !766}
!6018 = !{!6019, !6020, !6021}
!6019 = !DILocalVariable(name: "offset_nsec", arg: 1, scope: !6015, file: !3, line: 510, type: !218)
!6020 = !DILocalVariable(name: "retry", arg: 2, scope: !6015, file: !3, line: 510, type: !766)
!6021 = !DILocalVariable(name: "exp", scope: !6015, file: !3, line: 512, type: !275)
!6022 = !DILocation(line: 510, column: 47, scope: !6015)
!6023 = !DILocation(line: 510, column: 65, scope: !6015)
!6024 = !DILocation(line: 512, column: 2, scope: !6015)
!6025 = !DILocation(line: 512, column: 10, scope: !6015)
!6026 = !DILocation(line: 512, column: 26, scope: !6015)
!6027 = !DILocation(line: 512, column: 16, scope: !6015)
!6028 = !DILocation(line: 514, column: 6, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 514, column: 6)
!6030 = !{i8 0, i8 2}
!6031 = !DILocation(line: 514, column: 6, scope: !6015)
!6032 = !DILocation(line: 515, column: 9, scope: !6029)
!6033 = !DILocation(line: 515, column: 7, scope: !6029)
!6034 = !DILocation(line: 515, column: 3, scope: !6029)
!6035 = !DILocation(line: 517, column: 9, scope: !6029)
!6036 = !DILocation(line: 517, column: 7, scope: !6029)
!6037 = !DILocation(line: 519, column: 31, scope: !6015)
!6038 = !DILocation(line: 519, column: 2, scope: !6015)
!6039 = !DILocation(line: 520, column: 1, scope: !6015)
!6040 = distinct !DISubprogram(name: "timespec64_add", scope: !392, file: !392, line: 68, type: !6041, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6043)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!424, !424, !424}
!6043 = !{!6044, !6045, !6046}
!6044 = !DILocalVariable(name: "lhs", arg: 1, scope: !6040, file: !392, line: 68, type: !424)
!6045 = !DILocalVariable(name: "rhs", arg: 2, scope: !6040, file: !392, line: 69, type: !424)
!6046 = !DILocalVariable(name: "ts_delta", scope: !6040, file: !392, line: 71, type: !424)
!6047 = !DILocation(line: 68, column: 66, scope: !6040)
!6048 = !DILocation(line: 69, column: 25, scope: !6040)
!6049 = !DILocation(line: 71, column: 20, scope: !6040)
!6050 = !DILocation(line: 72, column: 43, scope: !6040)
!6051 = !DILocation(line: 72, column: 56, scope: !6040)
!6052 = !DILocation(line: 72, column: 50, scope: !6040)
!6053 = !DILocation(line: 73, column: 9, scope: !6040)
!6054 = !DILocation(line: 73, column: 23, scope: !6040)
!6055 = !DILocation(line: 73, column: 17, scope: !6040)
!6056 = !DILocation(line: 72, column: 2, scope: !6040)
!6057 = !DILocation(line: 74, column: 2, scope: !6040)
!6058 = !DISubprogram(name: "set_normalized_timespec64", scope: !392, file: !392, line: 66, type: !6059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{null, !1436, !391, !206}
!6061 = !DISubprogram(name: "rtc_class_open", scope: !1493, file: !1493, line: 199, type: !6062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!1491, !238}
!6064 = !DISubprogram(name: "rtc_time64_to_tm", scope: !1493, file: !1493, line: 25, type: !6065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{null, !391, !5860}
!6067 = !DISubprogram(name: "rtc_set_time", scope: !1493, file: !1493, line: 188, type: !6068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!150, !1491, !5860}
!6070 = !DISubprogram(name: "rtc_class_close", scope: !1493, file: !1493, line: 200, type: !5945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6071 = !DISubprogram(name: "ktime_get_real_seconds", scope: !1433, file: !1433, line: 54, type: !6072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{!391}
!6074 = distinct !DISubprogram(name: "hrtimer_start", scope: !17, file: !17, line: 417, type: !6075, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6078)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{null, !282, !275, !6077}
!6077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!6078 = !{!6079, !6080, !6081}
!6079 = !DILocalVariable(name: "timer", arg: 1, scope: !6074, file: !17, line: 417, type: !282)
!6080 = !DILocalVariable(name: "tim", arg: 2, scope: !6074, file: !17, line: 417, type: !275)
!6081 = !DILocalVariable(name: "mode", arg: 3, scope: !6074, file: !17, line: 418, type: !6077)
!6082 = !DILocation(line: 417, column: 50, scope: !6074)
!6083 = !DILocation(line: 417, column: 65, scope: !6074)
!6084 = !DILocation(line: 418, column: 30, scope: !6074)
!6085 = !DILocation(line: 420, column: 25, scope: !6074)
!6086 = !DILocation(line: 420, column: 32, scope: !6074)
!6087 = !DILocation(line: 420, column: 40, scope: !6074)
!6088 = !DILocation(line: 420, column: 2, scope: !6074)
!6089 = !DILocation(line: 421, column: 1, scope: !6074)
!6090 = !DISubprogram(name: "hrtimer_start_range_ns", scope: !17, file: !17, line: 406, type: !6091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{null, !282, !275, !211, !6077}
!6093 = distinct !DISubprogram(name: "process_adj_status", scope: !3, file: !3, line: 686, type: !6094, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{null, !1105}
!6096 = !{!6097}
!6097 = !DILocalVariable(name: "txc", arg: 1, scope: !6093, file: !3, line: 686, type: !1105)
!6098 = !DILocation(line: 686, column: 68, scope: !6093)
!6099 = !DILocation(line: 688, column: 7, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 688, column: 6)
!6101 = !DILocation(line: 688, column: 19, scope: !6100)
!6102 = !DILocation(line: 688, column: 30, scope: !6100)
!6103 = !DILocation(line: 688, column: 35, scope: !6100)
!6104 = !DILocation(line: 688, column: 40, scope: !6100)
!6105 = !DILocation(line: 688, column: 47, scope: !6100)
!6106 = !DILocation(line: 688, column: 6, scope: !6093)
!6107 = !DILocation(line: 689, column: 14, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 688, column: 59)
!6109 = !DILocation(line: 690, column: 15, scope: !6108)
!6110 = !DILocation(line: 691, column: 21, scope: !6108)
!6111 = !DILocation(line: 693, column: 3, scope: !6108)
!6112 = !DILocation(line: 694, column: 2, scope: !6108)
!6113 = !DILocation(line: 700, column: 8, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 700, column: 6)
!6115 = !DILocation(line: 700, column: 20, scope: !6114)
!6116 = !DILocation(line: 700, column: 31, scope: !6114)
!6117 = !DILocation(line: 700, column: 35, scope: !6114)
!6118 = !DILocation(line: 700, column: 40, scope: !6114)
!6119 = !DILocation(line: 700, column: 47, scope: !6114)
!6120 = !DILocation(line: 700, column: 6, scope: !6093)
!6121 = !DILocation(line: 701, column: 18, scope: !6114)
!6122 = !DILocation(line: 701, column: 16, scope: !6114)
!6123 = !DILocation(line: 701, column: 3, scope: !6114)
!6124 = !DILocation(line: 704, column: 14, scope: !6093)
!6125 = !DILocation(line: 705, column: 17, scope: !6093)
!6126 = !DILocation(line: 705, column: 22, scope: !6093)
!6127 = !DILocation(line: 705, column: 29, scope: !6093)
!6128 = !DILocation(line: 705, column: 14, scope: !6093)
!6129 = !DILocation(line: 706, column: 1, scope: !6093)
!6130 = distinct !DISubprogram(name: "pps_set_freq", scope: !3, file: !3, line: 218, type: !6131, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{null, !206}
!6133 = !{!6134}
!6134 = !DILocalVariable(name: "freq", arg: 1, scope: !6130, file: !3, line: 218, type: !206)
!6135 = !DILocation(line: 218, column: 37, scope: !6130)
!6136 = !DILocation(line: 218, column: 44, scope: !6130)
!6137 = distinct !DISubprogram(name: "ntp_update_offset", scope: !3, file: !3, line: 296, type: !6138, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6140)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{null, !219}
!6140 = !{!6141, !6142, !6143, !6144, !6145, !6150, !6151, !6152, !6155, !6156, !6157, !6159, !6160, !6162}
!6141 = !DILocalVariable(name: "offset", arg: 1, scope: !6137, file: !3, line: 296, type: !219)
!6142 = !DILocalVariable(name: "freq_adj", scope: !6137, file: !3, line: 298, type: !206)
!6143 = !DILocalVariable(name: "offset64", scope: !6137, file: !3, line: 299, type: !206)
!6144 = !DILocalVariable(name: "secs", scope: !6137, file: !3, line: 300, type: !219)
!6145 = !DILocalVariable(name: "__UNIQUE_ID___val297", scope: !6146, file: !3, line: 307, type: !219)
!6146 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 307, column: 12)
!6147 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 307, column: 12)
!6148 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 305, column: 33)
!6149 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 305, column: 6)
!6150 = !DILocalVariable(name: "__UNIQUE_ID___lo298", scope: !6146, file: !3, line: 307, type: !219)
!6151 = !DILocalVariable(name: "__UNIQUE_ID___hi299", scope: !6146, file: !3, line: 307, type: !219)
!6152 = !DILocalVariable(name: "__UNIQUE_ID___val300", scope: !6153, file: !3, line: 315, type: !219)
!6153 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 315, column: 11)
!6154 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 315, column: 11)
!6155 = !DILocalVariable(name: "__UNIQUE_ID___lo301", scope: !6153, file: !3, line: 315, type: !219)
!6156 = !DILocalVariable(name: "__UNIQUE_ID___hi302", scope: !6153, file: !3, line: 315, type: !219)
!6157 = !DILocalVariable(name: "__UNIQUE_ID___x303", scope: !6158, file: !3, line: 341, type: !206)
!6158 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 341, column: 16)
!6159 = !DILocalVariable(name: "__UNIQUE_ID___y304", scope: !6158, file: !3, line: 341, type: !206)
!6160 = !DILocalVariable(name: "__UNIQUE_ID___x305", scope: !6161, file: !3, line: 343, type: !206)
!6161 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 343, column: 16)
!6162 = !DILocalVariable(name: "__UNIQUE_ID___y306", scope: !6161, file: !3, line: 343, type: !206)
!6163 = !DILocation(line: 296, column: 36, scope: !6137)
!6164 = !DILocation(line: 298, column: 2, scope: !6137)
!6165 = !DILocation(line: 298, column: 6, scope: !6137)
!6166 = !DILocation(line: 299, column: 2, scope: !6137)
!6167 = !DILocation(line: 299, column: 6, scope: !6137)
!6168 = !DILocation(line: 300, column: 2, scope: !6137)
!6169 = !DILocation(line: 300, column: 7, scope: !6137)
!6170 = !DILocation(line: 302, column: 8, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 302, column: 6)
!6172 = !DILocation(line: 302, column: 20, scope: !6171)
!6173 = !DILocation(line: 302, column: 6, scope: !6137)
!6174 = !DILocation(line: 303, column: 3, scope: !6171)
!6175 = !DILocation(line: 305, column: 8, scope: !6149)
!6176 = !DILocation(line: 305, column: 20, scope: !6149)
!6177 = !DILocation(line: 305, column: 6, scope: !6137)
!6178 = !DILocation(line: 307, column: 12, scope: !6146)
!6179 = !DILocation(line: 307, column: 12, scope: !6147)
!6180 = !DILocation(line: 307, column: 12, scope: !6148)
!6181 = !DILocation(line: 307, column: 10, scope: !6148)
!6182 = !DILocation(line: 308, column: 10, scope: !6148)
!6183 = !DILocation(line: 309, column: 2, scope: !6148)
!6184 = !DILocation(line: 315, column: 11, scope: !6153)
!6185 = !DILocation(line: 315, column: 11, scope: !6154)
!6186 = !DILocation(line: 315, column: 11, scope: !6137)
!6187 = !DILocation(line: 315, column: 9, scope: !6137)
!6188 = !DILocation(line: 321, column: 16, scope: !6137)
!6189 = !DILocation(line: 321, column: 45, scope: !6137)
!6190 = !DILocation(line: 321, column: 43, scope: !6137)
!6191 = !DILocation(line: 321, column: 7, scope: !6137)
!6192 = !DILocation(line: 322, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 322, column: 6)
!6194 = !DILocation(line: 322, column: 6, scope: !6137)
!6195 = !DILocation(line: 323, column: 8, scope: !6193)
!6196 = !DILocation(line: 323, column: 3, scope: !6193)
!6197 = !DILocation(line: 325, column: 17, scope: !6137)
!6198 = !DILocation(line: 325, column: 15, scope: !6137)
!6199 = !DILocation(line: 327, column: 16, scope: !6137)
!6200 = !DILocation(line: 327, column: 14, scope: !6137)
!6201 = !DILocation(line: 328, column: 38, scope: !6137)
!6202 = !DILocation(line: 328, column: 48, scope: !6137)
!6203 = !DILocation(line: 328, column: 16, scope: !6137)
!6204 = !DILocation(line: 328, column: 14, scope: !6137)
!6205 = !DILocation(line: 335, column: 6, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 335, column: 6)
!6207 = !DILocation(line: 335, column: 6, scope: !6137)
!6208 = !DILocation(line: 336, column: 32, scope: !6206)
!6209 = !DILocation(line: 336, column: 30, scope: !6206)
!6210 = !DILocation(line: 336, column: 12, scope: !6206)
!6211 = !DILocation(line: 336, column: 10, scope: !6206)
!6212 = !DILocation(line: 336, column: 8, scope: !6206)
!6213 = !DILocation(line: 336, column: 3, scope: !6206)
!6214 = !DILocation(line: 338, column: 18, scope: !6137)
!6215 = !DILocation(line: 338, column: 29, scope: !6137)
!6216 = !DILocation(line: 338, column: 27, scope: !6137)
!6217 = !DILocation(line: 339, column: 44, scope: !6137)
!6218 = !DILocation(line: 339, column: 42, scope: !6137)
!6219 = !DILocation(line: 339, column: 25, scope: !6137)
!6220 = !DILocation(line: 339, column: 21, scope: !6137)
!6221 = !DILocation(line: 338, column: 35, scope: !6137)
!6222 = !DILocation(line: 338, column: 14, scope: !6137)
!6223 = !DILocation(line: 341, column: 16, scope: !6158)
!6224 = !DILocation(line: 341, column: 16, scope: !6137)
!6225 = !DILocation(line: 341, column: 14, scope: !6137)
!6226 = !DILocation(line: 343, column: 16, scope: !6161)
!6227 = !DILocation(line: 343, column: 16, scope: !6137)
!6228 = !DILocation(line: 343, column: 14, scope: !6137)
!6229 = !DILocation(line: 345, column: 24, scope: !6137)
!6230 = !DILocation(line: 345, column: 33, scope: !6137)
!6231 = !DILocation(line: 345, column: 16, scope: !6137)
!6232 = !DILocation(line: 345, column: 14, scope: !6137)
!6233 = !DILocation(line: 346, column: 1, scope: !6137)
!6234 = distinct !DISubprogram(name: "pps_reset_freq_interval", scope: !3, file: !3, line: 215, type: !455, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6235 = !DILocation(line: 215, column: 51, scope: !6234)
!6236 = !DISubprogram(name: "__ktime_get_real_seconds", scope: !1433, file: !1433, line: 53, type: !6072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6237 = distinct !DISubprogram(name: "ntp_update_offset_fll", scope: !3, file: !3, line: 281, type: !6238, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6240)
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!206, !206, !219}
!6240 = !{!6241, !6242}
!6241 = !DILocalVariable(name: "offset64", arg: 1, scope: !6237, file: !3, line: 281, type: !206)
!6242 = !DILocalVariable(name: "secs", arg: 2, scope: !6237, file: !3, line: 281, type: !219)
!6243 = !DILocation(line: 281, column: 45, scope: !6237)
!6244 = !DILocation(line: 281, column: 60, scope: !6237)
!6245 = !DILocation(line: 283, column: 14, scope: !6237)
!6246 = !DILocation(line: 285, column: 6, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 285, column: 6)
!6248 = !DILocation(line: 285, column: 11, scope: !6247)
!6249 = !DILocation(line: 285, column: 6, scope: !6237)
!6250 = !DILocation(line: 286, column: 3, scope: !6247)
!6251 = !DILocation(line: 288, column: 8, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 288, column: 6)
!6253 = !DILocation(line: 288, column: 20, scope: !6252)
!6254 = !DILocation(line: 288, column: 31, scope: !6252)
!6255 = !DILocation(line: 288, column: 35, scope: !6252)
!6256 = !DILocation(line: 288, column: 40, scope: !6252)
!6257 = !DILocation(line: 288, column: 6, scope: !6237)
!6258 = !DILocation(line: 289, column: 3, scope: !6252)
!6259 = !DILocation(line: 291, column: 14, scope: !6237)
!6260 = !DILocation(line: 293, column: 9, scope: !6237)
!6261 = !DILocation(line: 293, column: 2, scope: !6237)
!6262 = !DILocation(line: 294, column: 1, scope: !6237)
!6263 = distinct !DISubprogram(name: "div64_s64", scope: !702, file: !702, line: 79, type: !6264, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6266)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!206, !206, !206}
!6266 = !{!6267, !6268}
!6267 = !DILocalVariable(name: "dividend", arg: 1, scope: !6263, file: !702, line: 79, type: !206)
!6268 = !DILocalVariable(name: "divisor", arg: 2, scope: !6263, file: !702, line: 79, type: !206)
!6269 = !DILocation(line: 79, column: 33, scope: !6263)
!6270 = !DILocation(line: 79, column: 47, scope: !6263)
!6271 = !DILocation(line: 81, column: 9, scope: !6263)
!6272 = !DILocation(line: 81, column: 20, scope: !6263)
!6273 = !DILocation(line: 81, column: 18, scope: !6263)
!6274 = !DILocation(line: 81, column: 2, scope: !6263)
!6275 = distinct !DISubprogram(name: "kstrtos64", scope: !6276, file: !6276, line: 79, type: !6277, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6276 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6277 = !DISubroutineType(types: !6278)
!6278 = !{!150, !238, !7, !6279}
!6279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!6280 = !{!6281, !6282, !6283}
!6281 = !DILocalVariable(name: "s", arg: 1, scope: !6275, file: !6276, line: 79, type: !238)
!6282 = !DILocalVariable(name: "base", arg: 2, scope: !6275, file: !6276, line: 79, type: !7)
!6283 = !DILocalVariable(name: "res", arg: 3, scope: !6275, file: !6276, line: 79, type: !6279)
!6284 = !DILocation(line: 79, column: 54, scope: !6275)
!6285 = !DILocation(line: 79, column: 70, scope: !6275)
!6286 = !DILocation(line: 79, column: 81, scope: !6275)
!6287 = !DILocation(line: 81, column: 18, scope: !6275)
!6288 = !DILocation(line: 81, column: 21, scope: !6275)
!6289 = !DILocation(line: 81, column: 27, scope: !6275)
!6290 = !DILocation(line: 81, column: 9, scope: !6275)
!6291 = !DILocation(line: 81, column: 2, scope: !6275)
!6292 = !DISubprogram(name: "kstrtoll", scope: !6276, file: !6276, line: 13, type: !6293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6293 = !DISubroutineType(types: !6294)
!6294 = !{!150, !238, !7, !6295}
!6295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!6296 = !DISubprogram(name: "hrtimer_init", scope: !17, file: !17, line: 374, type: !6297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{null, !282, !347, !188}
!6299 = distinct !DISubprogram(name: "sync_timer_callback", scope: !3, file: !3, line: 503, type: !280, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6300 = !{!6301}
!6301 = !DILocalVariable(name: "timer", arg: 1, scope: !6299, file: !3, line: 503, type: !282)
!6302 = !DILocation(line: 503, column: 65, scope: !6299)
!6303 = !DILocation(line: 505, column: 13, scope: !6299)
!6304 = !DILocation(line: 505, column: 2, scope: !6299)
!6305 = !DILocation(line: 507, column: 2, scope: !6299)
