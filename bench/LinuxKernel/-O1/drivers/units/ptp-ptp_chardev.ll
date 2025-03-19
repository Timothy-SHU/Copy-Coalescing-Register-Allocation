; ModuleID = 'drivers/ptp/ptp_chardev.c'
source_filename = "drivers/ptp/ptp_chardev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i64, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.13 }
%union.anon.13 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.14, %struct.ptp_clock_time, i32, i32, %union.anon.15 }
%union.anon.14 = type { %struct.ptp_clock_time }
%union.anon.15 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_sys_offset_precise = type { %struct.ptp_clock_time, %struct.ptp_clock_time, %struct.ptp_clock_time, [4 x i32] }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
%struct.ptp_clock_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i32] }
%struct.ptp_sys_offset_extended = type { i32, [3 x i32], [25 x [3 x %struct.ptp_clock_time]] }
%struct.ptp_sys_offset = type { i32, [3 x i32], [51 x %struct.ptp_clock_time] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"\013driver cannot use function %u and channel %u on pin %u\0A\00", align 1, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !7
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !13
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5003
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ptp_set_pinfunc(ptr noundef %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #0 align 16 !dbg !5017 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %pin.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %pin1 = alloca ptr, align 8
  %pin2 = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5021, metadata !DIExpression()), !dbg !5029
  store i32 %pin, ptr %pin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pin.addr, metadata !5022, metadata !DIExpression()), !dbg !5030
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !5023, metadata !DIExpression()), !dbg !5031
  store i32 %chan, ptr %chan.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5024, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5025, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5035
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2, !dbg !5036
  %1 = load ptr, ptr %info1, align 8, !dbg !5036
  store ptr %1, ptr %info, align 8, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %pin1) #17, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %pin1, metadata !5026, metadata !DIExpression()), !dbg !5038
  store ptr null, ptr %pin1, align 8, !dbg !5038
  call void @llvm.lifetime.start.p0(i64 8, ptr %pin2) #17, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %pin2, metadata !5027, metadata !DIExpression()), !dbg !5039
  %2 = load ptr, ptr %info, align 8, !dbg !5040
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %2, i32 0, i32 8, !dbg !5041
  %3 = load ptr, ptr %pin_config, align 8, !dbg !5041
  %4 = load i32, ptr %pin.addr, align 4, !dbg !5042
  %idxprom = zext i32 %4 to i64, !dbg !5040
  %arrayidx = getelementptr %struct.ptp_pin_desc, ptr %3, i64 %idxprom, !dbg !5040
  store ptr %arrayidx, ptr %pin2, align 8, !dbg !5039
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5028, metadata !DIExpression()), !dbg !5044
  store i32 0, ptr %i, align 4, !dbg !5045
  br label %for.cond, !dbg !5047

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !dbg !5048
  %6 = load ptr, ptr %info, align 8, !dbg !5050
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 6, !dbg !5051
  %7 = load i32, ptr %n_pins, align 8, !dbg !5051
  %cmp = icmp ult i32 %5, %7, !dbg !5052
  br i1 %cmp, label %for.body, label %for.end, !dbg !5053

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %info, align 8, !dbg !5054
  %pin_config2 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 8, !dbg !5057
  %9 = load ptr, ptr %pin_config2, align 8, !dbg !5057
  %10 = load i32, ptr %i, align 4, !dbg !5058
  %idxprom3 = zext i32 %10 to i64, !dbg !5054
  %arrayidx4 = getelementptr %struct.ptp_pin_desc, ptr %9, i64 %idxprom3, !dbg !5054
  %func5 = getelementptr inbounds %struct.ptp_pin_desc, ptr %arrayidx4, i32 0, i32 2, !dbg !5059
  %11 = load i32, ptr %func5, align 4, !dbg !5059
  %12 = load i32, ptr %func.addr, align 4, !dbg !5060
  %cmp6 = icmp eq i32 %11, %12, !dbg !5061
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !5062

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %info, align 8, !dbg !5063
  %pin_config7 = getelementptr inbounds %struct.ptp_clock_info, ptr %13, i32 0, i32 8, !dbg !5064
  %14 = load ptr, ptr %pin_config7, align 8, !dbg !5064
  %15 = load i32, ptr %i, align 4, !dbg !5065
  %idxprom8 = zext i32 %15 to i64, !dbg !5063
  %arrayidx9 = getelementptr %struct.ptp_pin_desc, ptr %14, i64 %idxprom8, !dbg !5063
  %chan10 = getelementptr inbounds %struct.ptp_pin_desc, ptr %arrayidx9, i32 0, i32 3, !dbg !5066
  %16 = load i32, ptr %chan10, align 4, !dbg !5066
  %17 = load i32, ptr %chan.addr, align 4, !dbg !5067
  %cmp11 = icmp eq i32 %16, %17, !dbg !5068
  br i1 %cmp11, label %if.then, label %if.end, !dbg !5069

if.then:                                          ; preds = %land.lhs.true
  %18 = load ptr, ptr %info, align 8, !dbg !5070
  %pin_config12 = getelementptr inbounds %struct.ptp_clock_info, ptr %18, i32 0, i32 8, !dbg !5072
  %19 = load ptr, ptr %pin_config12, align 8, !dbg !5072
  %20 = load i32, ptr %i, align 4, !dbg !5073
  %idxprom13 = zext i32 %20 to i64, !dbg !5070
  %arrayidx14 = getelementptr %struct.ptp_pin_desc, ptr %19, i64 %idxprom13, !dbg !5070
  store ptr %arrayidx14, ptr %pin1, align 8, !dbg !5074
  br label %for.end, !dbg !5075

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5076

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %i, align 4, !dbg !5077
  %inc = add i32 %21, 1, !dbg !5077
  store i32 %inc, ptr %i, align 4, !dbg !5077
  br label %for.cond, !dbg !5078, !llvm.loop !5079

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load ptr, ptr %pin1, align 8, !dbg !5083
  %tobool = icmp ne ptr %22, null, !dbg !5083
  br i1 %tobool, label %land.lhs.true15, label %if.end18, !dbg !5085

land.lhs.true15:                                  ; preds = %for.end
  %23 = load i32, ptr %i, align 4, !dbg !5086
  %24 = load i32, ptr %pin.addr, align 4, !dbg !5087
  %cmp16 = icmp eq i32 %23, %24, !dbg !5088
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5089

if.then17:                                        ; preds = %land.lhs.true15
  store i32 0, ptr %retval, align 4, !dbg !5090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5090

if.end18:                                         ; preds = %land.lhs.true15, %for.end
  %25 = load i32, ptr %func.addr, align 4, !dbg !5091
  switch i32 %25, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb26
  ], !dbg !5092

sw.bb:                                            ; preds = %if.end18
  %26 = load i32, ptr %chan.addr, align 4, !dbg !5093
  %27 = load ptr, ptr %info, align 8, !dbg !5096
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %27, i32 0, i32 4, !dbg !5097
  %28 = load i32, ptr %n_ext_ts, align 8, !dbg !5097
  %cmp19 = icmp uge i32 %26, %28, !dbg !5098
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5099

if.then20:                                        ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !5100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5100

if.end21:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !5101

sw.bb22:                                          ; preds = %if.end18
  %29 = load i32, ptr %chan.addr, align 4, !dbg !5102
  %30 = load ptr, ptr %info, align 8, !dbg !5104
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %30, i32 0, i32 5, !dbg !5105
  %31 = load i32, ptr %n_per_out, align 4, !dbg !5105
  %cmp23 = icmp uge i32 %29, %31, !dbg !5106
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !5107

if.then24:                                        ; preds = %sw.bb22
  store i32 -22, ptr %retval, align 4, !dbg !5108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5108

if.end25:                                         ; preds = %sw.bb22
  br label %sw.epilog, !dbg !5109

sw.bb26:                                          ; preds = %if.end18
  %32 = load i32, ptr %chan.addr, align 4, !dbg !5110
  %cmp27 = icmp ne i32 %32, 0, !dbg !5112
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5113

if.then28:                                        ; preds = %sw.bb26
  store i32 -22, ptr %retval, align 4, !dbg !5114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5114

if.end29:                                         ; preds = %sw.bb26
  br label %sw.epilog, !dbg !5115

sw.default:                                       ; preds = %if.end18
  store i32 -22, ptr %retval, align 4, !dbg !5116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5116

sw.epilog:                                        ; preds = %if.end29, %if.end25, %if.end21, %if.end18
  %33 = load ptr, ptr %info, align 8, !dbg !5117
  %verify = getelementptr inbounds %struct.ptp_clock_info, ptr %33, i32 0, i32 21, !dbg !5119
  %34 = load ptr, ptr %verify, align 8, !dbg !5119
  %35 = load ptr, ptr %info, align 8, !dbg !5120
  %36 = load i32, ptr %pin.addr, align 4, !dbg !5121
  %37 = load i32, ptr %func.addr, align 4, !dbg !5122
  %38 = load i32, ptr %chan.addr, align 4, !dbg !5123
  %call = call i32 %34(ptr noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38) #18, !dbg !5117
  %tobool30 = icmp ne i32 %call, 0, !dbg !5117
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !5124

if.then31:                                        ; preds = %sw.epilog
  br label %do.body, !dbg !5125

do.body:                                          ; preds = %if.then31
  br label %do.cond, !dbg !5128

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5128

do.end:                                           ; preds = %do.cond
  %39 = load i32, ptr %func.addr, align 4, !dbg !5125
  %40 = load i32, ptr %chan.addr, align 4, !dbg !5125
  %41 = load i32, ptr %pin.addr, align 4, !dbg !5125
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %39, i32 noundef %40, i32 noundef %41) #19, !dbg !5125
  store i32 %call32, ptr %tmp, align 4, !dbg !5128
  %42 = load i32, ptr %tmp, align 4, !dbg !5125
  store i32 -95, ptr %retval, align 4, !dbg !5130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5130

if.end33:                                         ; preds = %sw.epilog
  %43 = load ptr, ptr %pin1, align 8, !dbg !5131
  %tobool34 = icmp ne ptr %43, null, !dbg !5131
  br i1 %tobool34, label %if.then35, label %if.end39, !dbg !5133

if.then35:                                        ; preds = %if.end33
  %44 = load ptr, ptr %info, align 8, !dbg !5134
  %45 = load i32, ptr %func.addr, align 4, !dbg !5136
  %46 = load i32, ptr %chan.addr, align 4, !dbg !5137
  %call36 = call i32 @ptp_disable_pinfunc(ptr noundef %44, i32 noundef %45, i32 noundef %46) #18, !dbg !5138
  %47 = load ptr, ptr %pin1, align 8, !dbg !5139
  %func37 = getelementptr inbounds %struct.ptp_pin_desc, ptr %47, i32 0, i32 2, !dbg !5140
  store i32 0, ptr %func37, align 4, !dbg !5141
  %48 = load ptr, ptr %pin1, align 8, !dbg !5142
  %chan38 = getelementptr inbounds %struct.ptp_pin_desc, ptr %48, i32 0, i32 3, !dbg !5143
  store i32 0, ptr %chan38, align 4, !dbg !5144
  br label %if.end39, !dbg !5145

if.end39:                                         ; preds = %if.then35, %if.end33
  %49 = load ptr, ptr %info, align 8, !dbg !5146
  %50 = load ptr, ptr %pin2, align 8, !dbg !5147
  %func40 = getelementptr inbounds %struct.ptp_pin_desc, ptr %50, i32 0, i32 2, !dbg !5148
  %51 = load i32, ptr %func40, align 4, !dbg !5148
  %52 = load ptr, ptr %pin2, align 8, !dbg !5149
  %chan41 = getelementptr inbounds %struct.ptp_pin_desc, ptr %52, i32 0, i32 3, !dbg !5150
  %53 = load i32, ptr %chan41, align 4, !dbg !5150
  %call42 = call i32 @ptp_disable_pinfunc(ptr noundef %49, i32 noundef %51, i32 noundef %53) #18, !dbg !5151
  %54 = load i32, ptr %func.addr, align 4, !dbg !5152
  %55 = load ptr, ptr %pin2, align 8, !dbg !5153
  %func43 = getelementptr inbounds %struct.ptp_pin_desc, ptr %55, i32 0, i32 2, !dbg !5154
  store i32 %54, ptr %func43, align 4, !dbg !5155
  %56 = load i32, ptr %chan.addr, align 4, !dbg !5156
  %57 = load ptr, ptr %pin2, align 8, !dbg !5157
  %chan44 = getelementptr inbounds %struct.ptp_pin_desc, ptr %57, i32 0, i32 3, !dbg !5158
  store i32 %56, ptr %chan44, align 4, !dbg !5159
  store i32 0, ptr %retval, align 4, !dbg !5160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5160

cleanup:                                          ; preds = %if.end39, %do.end, %sw.default, %if.then28, %if.then24, %if.then20, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5161
  call void @llvm.lifetime.end.p0(i64 8, ptr %pin2) #17, !dbg !5161
  call void @llvm.lifetime.end.p0(i64 8, ptr %pin1) #17, !dbg !5161
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5161
  %58 = load i32, ptr %retval, align 4, !dbg !5161
  ret i32 %58, !dbg !5161
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5162 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_disable_pinfunc(ptr noundef %ops, i32 noundef %func, i32 noundef %chan) #0 align 16 !dbg !5166 {
entry:
  %retval = alloca i32, align 4
  %ops.addr = alloca ptr, align 8
  %func.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %rq = alloca %struct.ptp_clock_request, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5170, metadata !DIExpression()), !dbg !5175
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !5171, metadata !DIExpression()), !dbg !5176
  store i32 %chan, ptr %chan.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5172, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 64, ptr %rq) #17, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %rq, metadata !5173, metadata !DIExpression()), !dbg !5179
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5174, metadata !DIExpression()), !dbg !5181
  store i32 0, ptr %err, align 4, !dbg !5181
  call void @llvm.memset.p0.i64(ptr align 8 %rq, i8 0, i64 64, i1 false), !dbg !5182
  %0 = load i32, ptr %func.addr, align 4, !dbg !5183
  switch i32 %0, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.epilog
  ], !dbg !5184

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 0, !dbg !5185
  store i32 0, ptr %type, align 8, !dbg !5187
  %1 = load i32, ptr %chan.addr, align 4, !dbg !5188
  %2 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, !dbg !5189
  %index = getelementptr inbounds %struct.ptp_extts_request, ptr %2, i32 0, i32 0, !dbg !5190
  store i32 %1, ptr %index, align 8, !dbg !5191
  %3 = load ptr, ptr %ops.addr, align 8, !dbg !5192
  %enable = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 20, !dbg !5193
  %4 = load ptr, ptr %enable, align 8, !dbg !5193
  %5 = load ptr, ptr %ops.addr, align 8, !dbg !5194
  %call = call i32 %4(ptr noundef %5, ptr noundef %rq, i32 noundef 0) #18, !dbg !5192
  store i32 %call, ptr %err, align 4, !dbg !5195
  br label %sw.epilog, !dbg !5196

sw.bb1:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 0, !dbg !5197
  store i32 1, ptr %type2, align 8, !dbg !5198
  %6 = load i32, ptr %chan.addr, align 4, !dbg !5199
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, !dbg !5200
  %index3 = getelementptr inbounds %struct.ptp_perout_request, ptr %7, i32 0, i32 2, !dbg !5201
  store i32 %6, ptr %index3, align 8, !dbg !5202
  %8 = load ptr, ptr %ops.addr, align 8, !dbg !5203
  %enable4 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 20, !dbg !5204
  %9 = load ptr, ptr %enable4, align 8, !dbg !5204
  %10 = load ptr, ptr %ops.addr, align 8, !dbg !5205
  %call5 = call i32 %9(ptr noundef %10, ptr noundef %rq, i32 noundef 0) #18, !dbg !5203
  store i32 %call5, ptr %err, align 4, !dbg !5206
  br label %sw.epilog, !dbg !5207

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5208

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb, %entry
  %11 = load i32, ptr %err, align 4, !dbg !5209
  store i32 %11, ptr %retval, align 4, !dbg !5210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5210

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 64, ptr %rq) #17, !dbg !5211
  %12 = load i32, ptr %retval, align 4, !dbg !5211
  ret i32 %12, !dbg !5211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ptp_open(ptr noundef %pc, i32 noundef %fmode) #0 align 16 !dbg !5212 {
entry:
  %pc.addr = alloca ptr, align 8
  %fmode.addr = alloca i32, align 4
  store ptr %pc, ptr %pc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !5214, metadata !DIExpression()), !dbg !5216
  store i32 %fmode, ptr %fmode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fmode.addr, metadata !5215, metadata !DIExpression()), !dbg !5217
  ret i32 0, !dbg !5218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ptp_ioctl(ptr noundef %pc, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5219 {
entry:
  %retval = alloca i64, align 8
  %pc.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %extoff = alloca ptr, align 8
  %precise_offset = alloca %struct.ptp_sys_offset_precise, align 8
  %xtstamp = alloca %struct.system_device_crosststamp, align 8
  %ops = alloca ptr, align 8
  %sysoff = alloca ptr, align 8
  %sts = alloca %struct.ptp_system_timestamp, align 8
  %req = alloca %struct.ptp_clock_request, align 8
  %caps = alloca %struct.ptp_clock_caps, align 4
  %pct = alloca ptr, align 8
  %i = alloca i32, align 4
  %pin_index = alloca i32, align 4
  %pd = alloca %struct.ptp_pin_desc, align 4
  %ts = alloca %struct.timespec64, align 8
  %enable = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %perout = alloca ptr, align 8
  %tmp233 = alloca %struct.timespec64, align 8
  %tmp240 = alloca %struct.timespec64, align 8
  %tmp249 = alloca %struct.timespec64, align 8
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp455 = alloca i32, align 4
  %_i525 = alloca i32, align 4
  %_s526 = alloca i32, align 4
  %_mask528 = alloca i64, align 8
  %tmp538 = alloca i32, align 4
  store ptr %pc, ptr %pc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !5221, metadata !DIExpression()), !dbg !5297
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5222, metadata !DIExpression()), !dbg !5298
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5223, metadata !DIExpression()), !dbg !5299
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #17, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5224, metadata !DIExpression()), !dbg !5301
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5225, metadata !DIExpression()), !dbg !5302
  %0 = load ptr, ptr %pc.addr, align 8, !dbg !5302
  store ptr %0, ptr %__mptr, align 8, !dbg !5302
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5302
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5302
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5303
  %2 = load ptr, ptr %tmp, align 8, !dbg !5302
  store ptr %2, ptr %ptp, align 8, !dbg !5301
  call void @llvm.lifetime.start.p0(i64 8, ptr %extoff) #17, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %extoff, metadata !5227, metadata !DIExpression()), !dbg !5305
  store ptr null, ptr %extoff, align 8, !dbg !5305
  call void @llvm.lifetime.start.p0(i64 64, ptr %precise_offset) #17, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %precise_offset, metadata !5238, metadata !DIExpression()), !dbg !5307
  call void @llvm.lifetime.start.p0(i64 24, ptr %xtstamp) #17, !dbg !5308
  call void @llvm.dbg.declare(metadata ptr %xtstamp, metadata !5245, metadata !DIExpression()), !dbg !5309
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #17, !dbg !5310
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5246, metadata !DIExpression()), !dbg !5311
  %3 = load ptr, ptr %ptp, align 8, !dbg !5312
  %info = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 2, !dbg !5313
  %4 = load ptr, ptr %info, align 8, !dbg !5313
  store ptr %4, ptr %ops, align 8, !dbg !5311
  call void @llvm.lifetime.start.p0(i64 8, ptr %sysoff) #17, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %sysoff, metadata !5247, metadata !DIExpression()), !dbg !5315
  store ptr null, ptr %sysoff, align 8, !dbg !5315
  call void @llvm.lifetime.start.p0(i64 32, ptr %sts) #17, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %sts, metadata !5257, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 64, ptr %req) #17, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %req, metadata !5258, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 80, ptr %caps) #17, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %caps, metadata !5259, metadata !DIExpression()), !dbg !5321
  call void @llvm.lifetime.start.p0(i64 8, ptr %pct) #17, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %pct, metadata !5275, metadata !DIExpression()), !dbg !5323
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5277, metadata !DIExpression()), !dbg !5325
  call void @llvm.lifetime.start.p0(i64 4, ptr %pin_index) #17, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %pin_index, metadata !5278, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 96, ptr %pd) #17, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %pd, metadata !5279, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #17, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5280, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 4, ptr %enable) #17, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !5281, metadata !DIExpression()), !dbg !5332
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5282, metadata !DIExpression()), !dbg !5333
  store i32 0, ptr %err, align 4, !dbg !5333
  %call = call zeroext i1 @in_compat_syscall() #18, !dbg !5334
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !5336

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5337
  %conv = zext i32 %5 to i64, !dbg !5337
  %cmp = icmp ne i64 %conv, 1074019588, !dbg !5338
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !5339

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load i32, ptr %cmd.addr, align 4, !dbg !5340
  %conv3 = zext i32 %6 to i64, !dbg !5340
  %cmp4 = icmp ne i64 %conv3, 1074019597, !dbg !5341
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5342

if.then:                                          ; preds = %land.lhs.true2
  %7 = load i64, ptr %arg.addr, align 8, !dbg !5343
  %conv6 = trunc i64 %7 to i32, !dbg !5343
  %call7 = call ptr @compat_ptr(i32 noundef %conv6) #18, !dbg !5344
  %8 = ptrtoint ptr %call7 to i64, !dbg !5345
  store i64 %8, ptr %arg.addr, align 8, !dbg !5346
  br label %if.end, !dbg !5347

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !5348
  switch i32 %9, label %sw.default [
    i32 -2142225151, label %sw.bb
    i32 -2142225142, label %sw.bb
    i32 1074806018, label %sw.bb40
    i32 1074806027, label %sw.bb40
    i32 1077427459, label %sw.bb95
    i32 1077427468, label %sw.bb95
    i32 1074019588, label %sw.bb205
    i32 1074019597, label %sw.bb205
    i32 -1069531896, label %sw.bb220
    i32 -1069531887, label %sw.bb220
    i32 -994034423, label %sw.bb262
    i32 -994034414, label %sw.bb262
    i32 1128283397, label %sw.bb343
    i32 1128283406, label %sw.bb343
    i32 -1067434746, label %sw.bb396
    i32 -1067434737, label %sw.bb396
    i32 1080048903, label %sw.bb473
    i32 1080048912, label %sw.bb473
  ], !dbg !5349

sw.bb:                                            ; preds = %if.end, %if.end
  call void @llvm.memset.p0.i64(ptr align 4 %caps, i8 0, i64 80, i1 false), !dbg !5350
  %10 = load ptr, ptr %ptp, align 8, !dbg !5351
  %info8 = getelementptr inbounds %struct.ptp_clock, ptr %10, i32 0, i32 2, !dbg !5352
  %11 = load ptr, ptr %info8, align 8, !dbg !5352
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %11, i32 0, i32 2, !dbg !5353
  %12 = load i32, ptr %max_adj, align 8, !dbg !5353
  %max_adj9 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 0, !dbg !5354
  store i32 %12, ptr %max_adj9, align 4, !dbg !5355
  %13 = load ptr, ptr %ptp, align 8, !dbg !5356
  %info10 = getelementptr inbounds %struct.ptp_clock, ptr %13, i32 0, i32 2, !dbg !5357
  %14 = load ptr, ptr %info10, align 8, !dbg !5357
  %n_alarm = getelementptr inbounds %struct.ptp_clock_info, ptr %14, i32 0, i32 3, !dbg !5358
  %15 = load i32, ptr %n_alarm, align 4, !dbg !5358
  %n_alarm11 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 1, !dbg !5359
  store i32 %15, ptr %n_alarm11, align 4, !dbg !5360
  %16 = load ptr, ptr %ptp, align 8, !dbg !5361
  %info12 = getelementptr inbounds %struct.ptp_clock, ptr %16, i32 0, i32 2, !dbg !5362
  %17 = load ptr, ptr %info12, align 8, !dbg !5362
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %17, i32 0, i32 4, !dbg !5363
  %18 = load i32, ptr %n_ext_ts, align 8, !dbg !5363
  %n_ext_ts13 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 2, !dbg !5364
  store i32 %18, ptr %n_ext_ts13, align 4, !dbg !5365
  %19 = load ptr, ptr %ptp, align 8, !dbg !5366
  %info14 = getelementptr inbounds %struct.ptp_clock, ptr %19, i32 0, i32 2, !dbg !5367
  %20 = load ptr, ptr %info14, align 8, !dbg !5367
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %20, i32 0, i32 5, !dbg !5368
  %21 = load i32, ptr %n_per_out, align 4, !dbg !5368
  %n_per_out15 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 3, !dbg !5369
  store i32 %21, ptr %n_per_out15, align 4, !dbg !5370
  %22 = load ptr, ptr %ptp, align 8, !dbg !5371
  %info16 = getelementptr inbounds %struct.ptp_clock, ptr %22, i32 0, i32 2, !dbg !5372
  %23 = load ptr, ptr %info16, align 8, !dbg !5372
  %pps = getelementptr inbounds %struct.ptp_clock_info, ptr %23, i32 0, i32 7, !dbg !5373
  %24 = load i32, ptr %pps, align 4, !dbg !5373
  %pps17 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 4, !dbg !5374
  store i32 %24, ptr %pps17, align 4, !dbg !5375
  %25 = load ptr, ptr %ptp, align 8, !dbg !5376
  %info18 = getelementptr inbounds %struct.ptp_clock, ptr %25, i32 0, i32 2, !dbg !5377
  %26 = load ptr, ptr %info18, align 8, !dbg !5377
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %26, i32 0, i32 6, !dbg !5378
  %27 = load i32, ptr %n_pins, align 8, !dbg !5378
  %n_pins19 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 5, !dbg !5379
  store i32 %27, ptr %n_pins19, align 4, !dbg !5380
  %28 = load ptr, ptr %ptp, align 8, !dbg !5381
  %info20 = getelementptr inbounds %struct.ptp_clock, ptr %28, i32 0, i32 2, !dbg !5382
  %29 = load ptr, ptr %info20, align 8, !dbg !5382
  %getcrosststamp = getelementptr inbounds %struct.ptp_clock_info, ptr %29, i32 0, i32 15, !dbg !5383
  %30 = load ptr, ptr %getcrosststamp, align 8, !dbg !5383
  %cmp21 = icmp ne ptr %30, null, !dbg !5384
  %conv22 = zext i1 %cmp21 to i32, !dbg !5384
  %cross_timestamping = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 6, !dbg !5385
  store i32 %conv22, ptr %cross_timestamping, align 4, !dbg !5386
  %31 = load ptr, ptr %ptp, align 8, !dbg !5387
  %info23 = getelementptr inbounds %struct.ptp_clock, ptr %31, i32 0, i32 2, !dbg !5388
  %32 = load ptr, ptr %info23, align 8, !dbg !5388
  %adjphase = getelementptr inbounds %struct.ptp_clock_info, ptr %32, i32 0, i32 10, !dbg !5389
  %33 = load ptr, ptr %adjphase, align 8, !dbg !5389
  %cmp24 = icmp ne ptr %33, null, !dbg !5390
  br i1 %cmp24, label %land.rhs, label %land.end, !dbg !5391

land.rhs:                                         ; preds = %sw.bb
  %34 = load ptr, ptr %ptp, align 8, !dbg !5392
  %info26 = getelementptr inbounds %struct.ptp_clock, ptr %34, i32 0, i32 2, !dbg !5393
  %35 = load ptr, ptr %info26, align 8, !dbg !5393
  %getmaxphase = getelementptr inbounds %struct.ptp_clock_info, ptr %35, i32 0, i32 11, !dbg !5394
  %36 = load ptr, ptr %getmaxphase, align 8, !dbg !5394
  %cmp27 = icmp ne ptr %36, null, !dbg !5395
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %37 = phi i1 [ false, %sw.bb ], [ %cmp27, %land.rhs ], !dbg !5396
  %land.ext = zext i1 %37 to i32, !dbg !5391
  %adjust_phase = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 7, !dbg !5397
  store i32 %land.ext, ptr %adjust_phase, align 4, !dbg !5398
  %adjust_phase29 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 7, !dbg !5399
  %38 = load i32, ptr %adjust_phase29, align 4, !dbg !5399
  %tobool = icmp ne i32 %38, 0, !dbg !5401
  br i1 %tobool, label %if.then30, label %if.end35, !dbg !5402

if.then30:                                        ; preds = %land.end
  %39 = load ptr, ptr %ptp, align 8, !dbg !5403
  %info31 = getelementptr inbounds %struct.ptp_clock, ptr %39, i32 0, i32 2, !dbg !5404
  %40 = load ptr, ptr %info31, align 8, !dbg !5404
  %getmaxphase32 = getelementptr inbounds %struct.ptp_clock_info, ptr %40, i32 0, i32 11, !dbg !5405
  %41 = load ptr, ptr %getmaxphase32, align 8, !dbg !5405
  %42 = load ptr, ptr %ptp, align 8, !dbg !5406
  %info33 = getelementptr inbounds %struct.ptp_clock, ptr %42, i32 0, i32 2, !dbg !5407
  %43 = load ptr, ptr %info33, align 8, !dbg !5407
  %call34 = call i32 %41(ptr noundef %43) #18, !dbg !5403
  %max_phase_adj = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 8, !dbg !5408
  store i32 %call34, ptr %max_phase_adj, align 4, !dbg !5409
  br label %if.end35, !dbg !5410

if.end35:                                         ; preds = %if.then30, %land.end
  %44 = load i64, ptr %arg.addr, align 8, !dbg !5411
  %45 = inttoptr i64 %44 to ptr, !dbg !5413
  %call36 = call i64 @copy_to_user(ptr noundef %45, ptr noundef %caps, i64 noundef 80) #18, !dbg !5414
  %tobool37 = icmp ne i64 %call36, 0, !dbg !5414
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5415

if.then38:                                        ; preds = %if.end35
  store i32 -14, ptr %err, align 4, !dbg !5416
  br label %if.end39, !dbg !5417

if.end39:                                         ; preds = %if.then38, %if.end35
  br label %sw.epilog, !dbg !5418

sw.bb40:                                          ; preds = %if.end, %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 64, i1 false), !dbg !5419
  %46 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5420
  %47 = load i64, ptr %arg.addr, align 8, !dbg !5422
  %48 = inttoptr i64 %47 to ptr, !dbg !5423
  %call41 = call i64 @copy_from_user(ptr noundef %46, ptr noundef %48, i64 noundef 16) #18, !dbg !5424
  %tobool42 = icmp ne i64 %call41, 0, !dbg !5424
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !5425

if.then43:                                        ; preds = %sw.bb40
  store i32 -14, ptr %err, align 4, !dbg !5426
  br label %sw.epilog, !dbg !5428

if.end44:                                         ; preds = %sw.bb40
  %49 = load i32, ptr %cmd.addr, align 4, !dbg !5429
  %conv45 = zext i32 %49 to i64, !dbg !5429
  %cmp46 = icmp eq i64 %conv45, 1074806027, !dbg !5431
  br i1 %cmp46, label %if.then48, label %if.else, !dbg !5432

if.then48:                                        ; preds = %if.end44
  %50 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5433
  %flags = getelementptr inbounds %struct.ptp_extts_request, ptr %50, i32 0, i32 1, !dbg !5435
  %51 = load i32, ptr %flags, align 4, !dbg !5436
  %or = or i32 %51, 8, !dbg !5436
  store i32 %or, ptr %flags, align 4, !dbg !5436
  %52 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5437
  %flags49 = getelementptr inbounds %struct.ptp_extts_request, ptr %52, i32 0, i32 1, !dbg !5439
  %53 = load i32, ptr %flags49, align 4, !dbg !5439
  %and = and i32 %53, -16, !dbg !5440
  %tobool50 = icmp ne i32 %and, 0, !dbg !5440
  br i1 %tobool50, label %if.then56, label %lor.lhs.false, !dbg !5441

lor.lhs.false:                                    ; preds = %if.then48
  %54 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5442
  %rsv = getelementptr inbounds %struct.ptp_extts_request, ptr %54, i32 0, i32 2, !dbg !5443
  %arrayidx = getelementptr [2 x i32], ptr %rsv, i64 0, i64 0, !dbg !5444
  %55 = load i32, ptr %arrayidx, align 8, !dbg !5444
  %tobool51 = icmp ne i32 %55, 0, !dbg !5444
  br i1 %tobool51, label %if.then56, label %lor.lhs.false52, !dbg !5445

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %56 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5446
  %rsv53 = getelementptr inbounds %struct.ptp_extts_request, ptr %56, i32 0, i32 2, !dbg !5447
  %arrayidx54 = getelementptr [2 x i32], ptr %rsv53, i64 0, i64 1, !dbg !5448
  %57 = load i32, ptr %arrayidx54, align 4, !dbg !5448
  %tobool55 = icmp ne i32 %57, 0, !dbg !5448
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5449

if.then56:                                        ; preds = %lor.lhs.false52, %lor.lhs.false, %if.then48
  store i32 -22, ptr %err, align 4, !dbg !5450
  br label %sw.epilog, !dbg !5452

if.end57:                                         ; preds = %lor.lhs.false52
  %58 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5453
  %flags58 = getelementptr inbounds %struct.ptp_extts_request, ptr %58, i32 0, i32 1, !dbg !5455
  %59 = load i32, ptr %flags58, align 4, !dbg !5455
  %and59 = and i32 %59, 1, !dbg !5456
  %tobool60 = icmp ne i32 %and59, 0, !dbg !5456
  br i1 %tobool60, label %land.lhs.true61, label %if.end67, !dbg !5457

land.lhs.true61:                                  ; preds = %if.end57
  %60 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5458
  %flags62 = getelementptr inbounds %struct.ptp_extts_request, ptr %60, i32 0, i32 1, !dbg !5459
  %61 = load i32, ptr %flags62, align 4, !dbg !5459
  %and63 = and i32 %61, 6, !dbg !5460
  %cmp64 = icmp eq i32 %and63, 0, !dbg !5461
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !5462

if.then66:                                        ; preds = %land.lhs.true61
  store i32 -22, ptr %err, align 4, !dbg !5463
  br label %sw.epilog, !dbg !5465

if.end67:                                         ; preds = %land.lhs.true61, %if.end57
  br label %if.end79, !dbg !5466

if.else:                                          ; preds = %if.end44
  %62 = load i32, ptr %cmd.addr, align 4, !dbg !5467
  %conv68 = zext i32 %62 to i64, !dbg !5467
  %cmp69 = icmp eq i64 %conv68, 1074806018, !dbg !5469
  br i1 %cmp69, label %if.then71, label %if.end78, !dbg !5470

if.then71:                                        ; preds = %if.else
  %63 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5471
  %flags72 = getelementptr inbounds %struct.ptp_extts_request, ptr %63, i32 0, i32 1, !dbg !5473
  %64 = load i32, ptr %flags72, align 4, !dbg !5474
  %and73 = and i32 %64, 7, !dbg !5474
  store i32 %and73, ptr %flags72, align 4, !dbg !5474
  %65 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5475
  %rsv74 = getelementptr inbounds %struct.ptp_extts_request, ptr %65, i32 0, i32 2, !dbg !5476
  %arrayidx75 = getelementptr [2 x i32], ptr %rsv74, i64 0, i64 0, !dbg !5477
  store i32 0, ptr %arrayidx75, align 8, !dbg !5478
  %66 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5479
  %rsv76 = getelementptr inbounds %struct.ptp_extts_request, ptr %66, i32 0, i32 2, !dbg !5480
  %arrayidx77 = getelementptr [2 x i32], ptr %rsv76, i64 0, i64 1, !dbg !5481
  store i32 0, ptr %arrayidx77, align 4, !dbg !5482
  br label %if.end78, !dbg !5483

if.end78:                                         ; preds = %if.then71, %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end67
  %67 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5484
  %index = getelementptr inbounds %struct.ptp_extts_request, ptr %67, i32 0, i32 0, !dbg !5486
  %68 = load i32, ptr %index, align 8, !dbg !5486
  %69 = load ptr, ptr %ops, align 8, !dbg !5487
  %n_ext_ts80 = getelementptr inbounds %struct.ptp_clock_info, ptr %69, i32 0, i32 4, !dbg !5488
  %70 = load i32, ptr %n_ext_ts80, align 8, !dbg !5488
  %cmp81 = icmp uge i32 %68, %70, !dbg !5489
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !5490

if.then83:                                        ; preds = %if.end79
  store i32 -22, ptr %err, align 4, !dbg !5491
  br label %sw.epilog, !dbg !5493

if.end84:                                         ; preds = %if.end79
  %type = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 0, !dbg !5494
  store i32 0, ptr %type, align 8, !dbg !5495
  %71 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5496
  %flags85 = getelementptr inbounds %struct.ptp_extts_request, ptr %71, i32 0, i32 1, !dbg !5497
  %72 = load i32, ptr %flags85, align 4, !dbg !5497
  %and86 = and i32 %72, 1, !dbg !5498
  %tobool87 = icmp ne i32 %and86, 0, !dbg !5499
  %73 = zext i1 %tobool87 to i64, !dbg !5499
  %cond = select i1 %tobool87, i32 1, i32 0, !dbg !5499
  store i32 %cond, ptr %enable, align 4, !dbg !5500
  %74 = load ptr, ptr %ptp, align 8, !dbg !5501
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, ptr %74, i32 0, i32 9, !dbg !5503
  %call88 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux) #18, !dbg !5504
  %tobool89 = icmp ne i32 %call88, 0, !dbg !5504
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !5505

if.then90:                                        ; preds = %if.end84
  store i64 -512, ptr %retval, align 8, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !5506

if.end91:                                         ; preds = %if.end84
  %75 = load ptr, ptr %ops, align 8, !dbg !5507
  %enable92 = getelementptr inbounds %struct.ptp_clock_info, ptr %75, i32 0, i32 20, !dbg !5508
  %76 = load ptr, ptr %enable92, align 8, !dbg !5508
  %77 = load ptr, ptr %ops, align 8, !dbg !5509
  %78 = load i32, ptr %enable, align 4, !dbg !5510
  %call93 = call i32 %76(ptr noundef %77, ptr noundef %req, i32 noundef %78) #18, !dbg !5507
  store i32 %call93, ptr %err, align 4, !dbg !5511
  %79 = load ptr, ptr %ptp, align 8, !dbg !5512
  %pincfg_mux94 = getelementptr inbounds %struct.ptp_clock, ptr %79, i32 0, i32 9, !dbg !5513
  call void @mutex_unlock(ptr noundef %pincfg_mux94) #18, !dbg !5514
  br label %sw.epilog, !dbg !5515

sw.bb95:                                          ; preds = %if.end, %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 64, i1 false), !dbg !5516
  %80 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5517
  %81 = load i64, ptr %arg.addr, align 8, !dbg !5519
  %82 = inttoptr i64 %81 to ptr, !dbg !5520
  %call96 = call i64 @copy_from_user(ptr noundef %80, ptr noundef %82, i64 noundef 56) #18, !dbg !5521
  %tobool97 = icmp ne i64 %call96, 0, !dbg !5521
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !5522

if.then98:                                        ; preds = %sw.bb95
  store i32 -14, ptr %err, align 4, !dbg !5523
  br label %sw.epilog, !dbg !5525

if.end99:                                         ; preds = %sw.bb95
  %83 = load i32, ptr %cmd.addr, align 4, !dbg !5526
  %conv100 = zext i32 %83 to i64, !dbg !5526
  %cmp101 = icmp eq i64 %conv100, 1077427468, !dbg !5527
  br i1 %cmp101, label %if.then103, label %if.else171, !dbg !5528

if.then103:                                       ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr %perout) #17, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %perout, metadata !5283, metadata !DIExpression()), !dbg !5530
  %84 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5531
  store ptr %84, ptr %perout, align 8, !dbg !5530
  %85 = load ptr, ptr %perout, align 8, !dbg !5532
  %flags104 = getelementptr inbounds %struct.ptp_perout_request, ptr %85, i32 0, i32 3, !dbg !5534
  %86 = load i32, ptr %flags104, align 4, !dbg !5534
  %and105 = and i32 %86, -8, !dbg !5535
  %tobool106 = icmp ne i32 %and105, 0, !dbg !5535
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !5536

if.then107:                                       ; preds = %if.then103
  store i32 -22, ptr %err, align 4, !dbg !5537
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end108:                                        ; preds = %if.then103
  %87 = load ptr, ptr %perout, align 8, !dbg !5540
  %flags109 = getelementptr inbounds %struct.ptp_perout_request, ptr %87, i32 0, i32 3, !dbg !5542
  %88 = load i32, ptr %flags109, align 4, !dbg !5542
  %and110 = and i32 %88, 2, !dbg !5543
  %tobool111 = icmp ne i32 %and110, 0, !dbg !5543
  br i1 %tobool111, label %if.end125, label %land.lhs.true112, !dbg !5544

land.lhs.true112:                                 ; preds = %if.end108
  %89 = load ptr, ptr %perout, align 8, !dbg !5545
  %90 = getelementptr inbounds %struct.ptp_perout_request, ptr %89, i32 0, i32 4, !dbg !5546
  %arrayidx113 = getelementptr [4 x i32], ptr %90, i64 0, i64 0, !dbg !5545
  %91 = load i32, ptr %arrayidx113, align 8, !dbg !5545
  %tobool114 = icmp ne i32 %91, 0, !dbg !5545
  br i1 %tobool114, label %if.then124, label %lor.lhs.false115, !dbg !5547

lor.lhs.false115:                                 ; preds = %land.lhs.true112
  %92 = load ptr, ptr %perout, align 8, !dbg !5548
  %93 = getelementptr inbounds %struct.ptp_perout_request, ptr %92, i32 0, i32 4, !dbg !5549
  %arrayidx116 = getelementptr [4 x i32], ptr %93, i64 0, i64 1, !dbg !5548
  %94 = load i32, ptr %arrayidx116, align 4, !dbg !5548
  %tobool117 = icmp ne i32 %94, 0, !dbg !5548
  br i1 %tobool117, label %if.then124, label %lor.lhs.false118, !dbg !5550

lor.lhs.false118:                                 ; preds = %lor.lhs.false115
  %95 = load ptr, ptr %perout, align 8, !dbg !5551
  %96 = getelementptr inbounds %struct.ptp_perout_request, ptr %95, i32 0, i32 4, !dbg !5552
  %arrayidx119 = getelementptr [4 x i32], ptr %96, i64 0, i64 2, !dbg !5551
  %97 = load i32, ptr %arrayidx119, align 8, !dbg !5551
  %tobool120 = icmp ne i32 %97, 0, !dbg !5551
  br i1 %tobool120, label %if.then124, label %lor.lhs.false121, !dbg !5553

lor.lhs.false121:                                 ; preds = %lor.lhs.false118
  %98 = load ptr, ptr %perout, align 8, !dbg !5554
  %99 = getelementptr inbounds %struct.ptp_perout_request, ptr %98, i32 0, i32 4, !dbg !5555
  %arrayidx122 = getelementptr [4 x i32], ptr %99, i64 0, i64 3, !dbg !5554
  %100 = load i32, ptr %arrayidx122, align 4, !dbg !5554
  %tobool123 = icmp ne i32 %100, 0, !dbg !5554
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !5556

if.then124:                                       ; preds = %lor.lhs.false121, %lor.lhs.false118, %lor.lhs.false115, %land.lhs.true112
  store i32 -22, ptr %err, align 4, !dbg !5557
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

if.end125:                                        ; preds = %lor.lhs.false121, %if.end108
  %101 = load ptr, ptr %perout, align 8, !dbg !5560
  %flags126 = getelementptr inbounds %struct.ptp_perout_request, ptr %101, i32 0, i32 3, !dbg !5562
  %102 = load i32, ptr %flags126, align 4, !dbg !5562
  %and127 = and i32 %102, 2, !dbg !5563
  %tobool128 = icmp ne i32 %and127, 0, !dbg !5563
  br i1 %tobool128, label %if.then129, label %if.end146, !dbg !5564

if.then129:                                       ; preds = %if.end125
  %103 = load ptr, ptr %perout, align 8, !dbg !5565
  %104 = getelementptr inbounds %struct.ptp_perout_request, ptr %103, i32 0, i32 4, !dbg !5568
  %sec = getelementptr inbounds %struct.ptp_clock_time, ptr %104, i32 0, i32 0, !dbg !5569
  %105 = load i64, ptr %sec, align 8, !dbg !5569
  %106 = load ptr, ptr %perout, align 8, !dbg !5570
  %period = getelementptr inbounds %struct.ptp_perout_request, ptr %106, i32 0, i32 1, !dbg !5571
  %sec130 = getelementptr inbounds %struct.ptp_clock_time, ptr %period, i32 0, i32 0, !dbg !5572
  %107 = load i64, ptr %sec130, align 8, !dbg !5572
  %cmp131 = icmp sgt i64 %105, %107, !dbg !5573
  br i1 %cmp131, label %if.then144, label %lor.lhs.false133, !dbg !5574

lor.lhs.false133:                                 ; preds = %if.then129
  %108 = load ptr, ptr %perout, align 8, !dbg !5575
  %109 = getelementptr inbounds %struct.ptp_perout_request, ptr %108, i32 0, i32 4, !dbg !5576
  %sec134 = getelementptr inbounds %struct.ptp_clock_time, ptr %109, i32 0, i32 0, !dbg !5577
  %110 = load i64, ptr %sec134, align 8, !dbg !5577
  %111 = load ptr, ptr %perout, align 8, !dbg !5578
  %period135 = getelementptr inbounds %struct.ptp_perout_request, ptr %111, i32 0, i32 1, !dbg !5579
  %sec136 = getelementptr inbounds %struct.ptp_clock_time, ptr %period135, i32 0, i32 0, !dbg !5580
  %112 = load i64, ptr %sec136, align 8, !dbg !5580
  %cmp137 = icmp eq i64 %110, %112, !dbg !5581
  br i1 %cmp137, label %land.lhs.true139, label %if.end145, !dbg !5582

land.lhs.true139:                                 ; preds = %lor.lhs.false133
  %113 = load ptr, ptr %perout, align 8, !dbg !5583
  %114 = getelementptr inbounds %struct.ptp_perout_request, ptr %113, i32 0, i32 4, !dbg !5584
  %nsec = getelementptr inbounds %struct.ptp_clock_time, ptr %114, i32 0, i32 1, !dbg !5585
  %115 = load i32, ptr %nsec, align 8, !dbg !5585
  %116 = load ptr, ptr %perout, align 8, !dbg !5586
  %period140 = getelementptr inbounds %struct.ptp_perout_request, ptr %116, i32 0, i32 1, !dbg !5587
  %nsec141 = getelementptr inbounds %struct.ptp_clock_time, ptr %period140, i32 0, i32 1, !dbg !5588
  %117 = load i32, ptr %nsec141, align 8, !dbg !5588
  %cmp142 = icmp ugt i32 %115, %117, !dbg !5589
  br i1 %cmp142, label %if.then144, label %if.end145, !dbg !5590

if.then144:                                       ; preds = %land.lhs.true139, %if.then129
  store i32 -34, ptr %err, align 4, !dbg !5591
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5593

if.end145:                                        ; preds = %land.lhs.true139, %lor.lhs.false133
  br label %if.end146, !dbg !5594

if.end146:                                        ; preds = %if.end145, %if.end125
  %118 = load ptr, ptr %perout, align 8, !dbg !5595
  %flags147 = getelementptr inbounds %struct.ptp_perout_request, ptr %118, i32 0, i32 3, !dbg !5597
  %119 = load i32, ptr %flags147, align 4, !dbg !5597
  %and148 = and i32 %119, 4, !dbg !5598
  %tobool149 = icmp ne i32 %and148, 0, !dbg !5598
  br i1 %tobool149, label %if.then150, label %if.end170, !dbg !5599

if.then150:                                       ; preds = %if.end146
  %120 = load ptr, ptr %perout, align 8, !dbg !5600
  %121 = getelementptr inbounds %struct.ptp_perout_request, ptr %120, i32 0, i32 0, !dbg !5603
  %sec151 = getelementptr inbounds %struct.ptp_clock_time, ptr %121, i32 0, i32 0, !dbg !5604
  %122 = load i64, ptr %sec151, align 8, !dbg !5604
  %123 = load ptr, ptr %perout, align 8, !dbg !5605
  %period152 = getelementptr inbounds %struct.ptp_perout_request, ptr %123, i32 0, i32 1, !dbg !5606
  %sec153 = getelementptr inbounds %struct.ptp_clock_time, ptr %period152, i32 0, i32 0, !dbg !5607
  %124 = load i64, ptr %sec153, align 8, !dbg !5607
  %cmp154 = icmp sgt i64 %122, %124, !dbg !5608
  br i1 %cmp154, label %if.then168, label %lor.lhs.false156, !dbg !5609

lor.lhs.false156:                                 ; preds = %if.then150
  %125 = load ptr, ptr %perout, align 8, !dbg !5610
  %126 = getelementptr inbounds %struct.ptp_perout_request, ptr %125, i32 0, i32 0, !dbg !5611
  %sec157 = getelementptr inbounds %struct.ptp_clock_time, ptr %126, i32 0, i32 0, !dbg !5612
  %127 = load i64, ptr %sec157, align 8, !dbg !5612
  %128 = load ptr, ptr %perout, align 8, !dbg !5613
  %period158 = getelementptr inbounds %struct.ptp_perout_request, ptr %128, i32 0, i32 1, !dbg !5614
  %sec159 = getelementptr inbounds %struct.ptp_clock_time, ptr %period158, i32 0, i32 0, !dbg !5615
  %129 = load i64, ptr %sec159, align 8, !dbg !5615
  %cmp160 = icmp eq i64 %127, %129, !dbg !5616
  br i1 %cmp160, label %land.lhs.true162, label %if.end169, !dbg !5617

land.lhs.true162:                                 ; preds = %lor.lhs.false156
  %130 = load ptr, ptr %perout, align 8, !dbg !5618
  %131 = getelementptr inbounds %struct.ptp_perout_request, ptr %130, i32 0, i32 0, !dbg !5619
  %nsec163 = getelementptr inbounds %struct.ptp_clock_time, ptr %131, i32 0, i32 1, !dbg !5620
  %132 = load i32, ptr %nsec163, align 8, !dbg !5620
  %133 = load ptr, ptr %perout, align 8, !dbg !5621
  %period164 = getelementptr inbounds %struct.ptp_perout_request, ptr %133, i32 0, i32 1, !dbg !5622
  %nsec165 = getelementptr inbounds %struct.ptp_clock_time, ptr %period164, i32 0, i32 1, !dbg !5623
  %134 = load i32, ptr %nsec165, align 8, !dbg !5623
  %cmp166 = icmp uge i32 %132, %134, !dbg !5624
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !5625

if.then168:                                       ; preds = %land.lhs.true162, %if.then150
  store i32 -34, ptr %err, align 4, !dbg !5626
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5628

if.end169:                                        ; preds = %land.lhs.true162, %lor.lhs.false156
  br label %if.end170, !dbg !5629

if.end170:                                        ; preds = %if.end169, %if.end146
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5630
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %if.end170, %if.then168, %if.then144, %if.then124, %if.then107
  call void @llvm.lifetime.end.p0(i64 8, ptr %perout) #17, !dbg !5630
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %sw.epilog
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end183, !dbg !5631

if.else171:                                       ; preds = %if.end99
  %135 = load i32, ptr %cmd.addr, align 4, !dbg !5632
  %conv172 = zext i32 %135 to i64, !dbg !5632
  %cmp173 = icmp eq i64 %conv172, 1077427459, !dbg !5634
  br i1 %cmp173, label %if.then175, label %if.end182, !dbg !5635

if.then175:                                       ; preds = %if.else171
  %136 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5636
  %flags176 = getelementptr inbounds %struct.ptp_perout_request, ptr %136, i32 0, i32 3, !dbg !5638
  %137 = load i32, ptr %flags176, align 4, !dbg !5639
  %and177 = and i32 %137, 0, !dbg !5639
  store i32 %and177, ptr %flags176, align 4, !dbg !5639
  %138 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5640
  %139 = getelementptr inbounds %struct.ptp_perout_request, ptr %138, i32 0, i32 4, !dbg !5641
  %arrayidx178 = getelementptr [4 x i32], ptr %139, i64 0, i64 0, !dbg !5642
  store i32 0, ptr %arrayidx178, align 8, !dbg !5643
  %140 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5644
  %141 = getelementptr inbounds %struct.ptp_perout_request, ptr %140, i32 0, i32 4, !dbg !5645
  %arrayidx179 = getelementptr [4 x i32], ptr %141, i64 0, i64 1, !dbg !5646
  store i32 0, ptr %arrayidx179, align 4, !dbg !5647
  %142 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5648
  %143 = getelementptr inbounds %struct.ptp_perout_request, ptr %142, i32 0, i32 4, !dbg !5649
  %arrayidx180 = getelementptr [4 x i32], ptr %143, i64 0, i64 2, !dbg !5650
  store i32 0, ptr %arrayidx180, align 8, !dbg !5651
  %144 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5652
  %145 = getelementptr inbounds %struct.ptp_perout_request, ptr %144, i32 0, i32 4, !dbg !5653
  %arrayidx181 = getelementptr [4 x i32], ptr %145, i64 0, i64 3, !dbg !5654
  store i32 0, ptr %arrayidx181, align 4, !dbg !5655
  br label %if.end182, !dbg !5656

if.end182:                                        ; preds = %if.then175, %if.else171
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %cleanup.cont
  %146 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5657
  %index184 = getelementptr inbounds %struct.ptp_perout_request, ptr %146, i32 0, i32 2, !dbg !5659
  %147 = load i32, ptr %index184, align 8, !dbg !5659
  %148 = load ptr, ptr %ops, align 8, !dbg !5660
  %n_per_out185 = getelementptr inbounds %struct.ptp_clock_info, ptr %148, i32 0, i32 5, !dbg !5661
  %149 = load i32, ptr %n_per_out185, align 4, !dbg !5661
  %cmp186 = icmp uge i32 %147, %149, !dbg !5662
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !5663

if.then188:                                       ; preds = %if.end183
  store i32 -22, ptr %err, align 4, !dbg !5664
  br label %sw.epilog, !dbg !5666

if.end189:                                        ; preds = %if.end183
  %type190 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 0, !dbg !5667
  store i32 1, ptr %type190, align 8, !dbg !5668
  %150 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5669
  %period191 = getelementptr inbounds %struct.ptp_perout_request, ptr %150, i32 0, i32 1, !dbg !5670
  %sec192 = getelementptr inbounds %struct.ptp_clock_time, ptr %period191, i32 0, i32 0, !dbg !5671
  %151 = load i64, ptr %sec192, align 8, !dbg !5671
  %tobool193 = icmp ne i64 %151, 0, !dbg !5672
  br i1 %tobool193, label %lor.end, label %lor.rhs, !dbg !5673

lor.rhs:                                          ; preds = %if.end189
  %152 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5674
  %period194 = getelementptr inbounds %struct.ptp_perout_request, ptr %152, i32 0, i32 1, !dbg !5675
  %nsec195 = getelementptr inbounds %struct.ptp_clock_time, ptr %period194, i32 0, i32 1, !dbg !5676
  %153 = load i32, ptr %nsec195, align 8, !dbg !5676
  %tobool196 = icmp ne i32 %153, 0, !dbg !5673
  br label %lor.end, !dbg !5673

lor.end:                                          ; preds = %lor.rhs, %if.end189
  %154 = phi i1 [ true, %if.end189 ], [ %tobool196, %lor.rhs ]
  %lor.ext = zext i1 %154 to i32, !dbg !5673
  store i32 %lor.ext, ptr %enable, align 4, !dbg !5677
  %155 = load ptr, ptr %ptp, align 8, !dbg !5678
  %pincfg_mux197 = getelementptr inbounds %struct.ptp_clock, ptr %155, i32 0, i32 9, !dbg !5680
  %call198 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux197) #18, !dbg !5681
  %tobool199 = icmp ne i32 %call198, 0, !dbg !5681
  br i1 %tobool199, label %if.then200, label %if.end201, !dbg !5682

if.then200:                                       ; preds = %lor.end
  store i64 -512, ptr %retval, align 8, !dbg !5683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !5683

if.end201:                                        ; preds = %lor.end
  %156 = load ptr, ptr %ops, align 8, !dbg !5684
  %enable202 = getelementptr inbounds %struct.ptp_clock_info, ptr %156, i32 0, i32 20, !dbg !5685
  %157 = load ptr, ptr %enable202, align 8, !dbg !5685
  %158 = load ptr, ptr %ops, align 8, !dbg !5686
  %159 = load i32, ptr %enable, align 4, !dbg !5687
  %call203 = call i32 %157(ptr noundef %158, ptr noundef %req, i32 noundef %159) #18, !dbg !5684
  store i32 %call203, ptr %err, align 4, !dbg !5688
  %160 = load ptr, ptr %ptp, align 8, !dbg !5689
  %pincfg_mux204 = getelementptr inbounds %struct.ptp_clock, ptr %160, i32 0, i32 9, !dbg !5690
  call void @mutex_unlock(ptr noundef %pincfg_mux204) #18, !dbg !5691
  br label %sw.epilog, !dbg !5692

sw.bb205:                                         ; preds = %if.end, %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 64, i1 false), !dbg !5693
  %call206 = call zeroext i1 @capable(i32 noundef 25) #18, !dbg !5694
  br i1 %call206, label %if.end208, label %if.then207, !dbg !5696

if.then207:                                       ; preds = %sw.bb205
  store i64 -1, ptr %retval, align 8, !dbg !5697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !5697

if.end208:                                        ; preds = %sw.bb205
  %type209 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 0, !dbg !5698
  store i32 2, ptr %type209, align 8, !dbg !5699
  %161 = load i64, ptr %arg.addr, align 8, !dbg !5700
  %tobool210 = icmp ne i64 %161, 0, !dbg !5700
  %162 = zext i1 %tobool210 to i64, !dbg !5700
  %cond211 = select i1 %tobool210, i32 1, i32 0, !dbg !5700
  store i32 %cond211, ptr %enable, align 4, !dbg !5701
  %163 = load ptr, ptr %ptp, align 8, !dbg !5702
  %pincfg_mux212 = getelementptr inbounds %struct.ptp_clock, ptr %163, i32 0, i32 9, !dbg !5704
  %call213 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux212) #18, !dbg !5705
  %tobool214 = icmp ne i32 %call213, 0, !dbg !5705
  br i1 %tobool214, label %if.then215, label %if.end216, !dbg !5706

if.then215:                                       ; preds = %if.end208
  store i64 -512, ptr %retval, align 8, !dbg !5707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !5707

if.end216:                                        ; preds = %if.end208
  %164 = load ptr, ptr %ops, align 8, !dbg !5708
  %enable217 = getelementptr inbounds %struct.ptp_clock_info, ptr %164, i32 0, i32 20, !dbg !5709
  %165 = load ptr, ptr %enable217, align 8, !dbg !5709
  %166 = load ptr, ptr %ops, align 8, !dbg !5710
  %167 = load i32, ptr %enable, align 4, !dbg !5711
  %call218 = call i32 %165(ptr noundef %166, ptr noundef %req, i32 noundef %167) #18, !dbg !5708
  store i32 %call218, ptr %err, align 4, !dbg !5712
  %168 = load ptr, ptr %ptp, align 8, !dbg !5713
  %pincfg_mux219 = getelementptr inbounds %struct.ptp_clock, ptr %168, i32 0, i32 9, !dbg !5714
  call void @mutex_unlock(ptr noundef %pincfg_mux219) #18, !dbg !5715
  br label %sw.epilog, !dbg !5716

sw.bb220:                                         ; preds = %if.end, %if.end
  %169 = load ptr, ptr %ptp, align 8, !dbg !5717
  %info221 = getelementptr inbounds %struct.ptp_clock, ptr %169, i32 0, i32 2, !dbg !5719
  %170 = load ptr, ptr %info221, align 8, !dbg !5719
  %getcrosststamp222 = getelementptr inbounds %struct.ptp_clock_info, ptr %170, i32 0, i32 15, !dbg !5720
  %171 = load ptr, ptr %getcrosststamp222, align 8, !dbg !5720
  %tobool223 = icmp ne ptr %171, null, !dbg !5717
  br i1 %tobool223, label %if.end225, label %if.then224, !dbg !5721

if.then224:                                       ; preds = %sw.bb220
  store i32 -95, ptr %err, align 4, !dbg !5722
  br label %sw.epilog, !dbg !5724

if.end225:                                        ; preds = %sw.bb220
  %172 = load ptr, ptr %ptp, align 8, !dbg !5725
  %info226 = getelementptr inbounds %struct.ptp_clock, ptr %172, i32 0, i32 2, !dbg !5726
  %173 = load ptr, ptr %info226, align 8, !dbg !5726
  %getcrosststamp227 = getelementptr inbounds %struct.ptp_clock_info, ptr %173, i32 0, i32 15, !dbg !5727
  %174 = load ptr, ptr %getcrosststamp227, align 8, !dbg !5727
  %175 = load ptr, ptr %ptp, align 8, !dbg !5728
  %info228 = getelementptr inbounds %struct.ptp_clock, ptr %175, i32 0, i32 2, !dbg !5729
  %176 = load ptr, ptr %info228, align 8, !dbg !5729
  %call229 = call i32 %174(ptr noundef %176, ptr noundef %xtstamp) #18, !dbg !5725
  store i32 %call229, ptr %err, align 4, !dbg !5730
  %177 = load i32, ptr %err, align 4, !dbg !5731
  %tobool230 = icmp ne i32 %177, 0, !dbg !5731
  br i1 %tobool230, label %if.then231, label %if.end232, !dbg !5733

if.then231:                                       ; preds = %if.end225
  br label %sw.epilog, !dbg !5734

if.end232:                                        ; preds = %if.end225
  call void @llvm.memset.p0.i64(ptr align 8 %precise_offset, i8 0, i64 64, i1 false), !dbg !5735
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp233) #17, !dbg !5736
  %device = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 0, !dbg !5736
  %178 = load i64, ptr %device, align 8, !dbg !5736
  %call234 = call { i64, i64 } @ns_to_timespec64(i64 noundef %178) #18, !dbg !5736
  %179 = getelementptr inbounds { i64, i64 }, ptr %tmp233, i32 0, i32 0, !dbg !5736
  %180 = extractvalue { i64, i64 } %call234, 0, !dbg !5736
  store i64 %180, ptr %179, align 8, !dbg !5736
  %181 = getelementptr inbounds { i64, i64 }, ptr %tmp233, i32 0, i32 1, !dbg !5736
  %182 = extractvalue { i64, i64 } %call234, 1, !dbg !5736
  store i64 %182, ptr %181, align 8, !dbg !5736
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp233, i64 16, i1 false), !dbg !5736
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp233) #17, !dbg !5736
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5737
  %183 = load i64, ptr %tv_sec, align 8, !dbg !5737
  %device235 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 0, !dbg !5738
  %sec236 = getelementptr inbounds %struct.ptp_clock_time, ptr %device235, i32 0, i32 0, !dbg !5739
  store i64 %183, ptr %sec236, align 8, !dbg !5740
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5741
  %184 = load i64, ptr %tv_nsec, align 8, !dbg !5741
  %conv237 = trunc i64 %184 to i32, !dbg !5742
  %device238 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 0, !dbg !5743
  %nsec239 = getelementptr inbounds %struct.ptp_clock_time, ptr %device238, i32 0, i32 1, !dbg !5744
  store i32 %conv237, ptr %nsec239, align 8, !dbg !5745
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp240) #17, !dbg !5746
  %sys_realtime = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 1, !dbg !5746
  %185 = load i64, ptr %sys_realtime, align 8, !dbg !5746
  %call241 = call { i64, i64 } @ns_to_timespec64(i64 noundef %185) #18, !dbg !5746
  %186 = getelementptr inbounds { i64, i64 }, ptr %tmp240, i32 0, i32 0, !dbg !5746
  %187 = extractvalue { i64, i64 } %call241, 0, !dbg !5746
  store i64 %187, ptr %186, align 8, !dbg !5746
  %188 = getelementptr inbounds { i64, i64 }, ptr %tmp240, i32 0, i32 1, !dbg !5746
  %189 = extractvalue { i64, i64 } %call241, 1, !dbg !5746
  store i64 %189, ptr %188, align 8, !dbg !5746
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp240, i64 16, i1 false), !dbg !5746
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp240) #17, !dbg !5746
  %tv_sec242 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5747
  %190 = load i64, ptr %tv_sec242, align 8, !dbg !5747
  %sys_realtime243 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 1, !dbg !5748
  %sec244 = getelementptr inbounds %struct.ptp_clock_time, ptr %sys_realtime243, i32 0, i32 0, !dbg !5749
  store i64 %190, ptr %sec244, align 8, !dbg !5750
  %tv_nsec245 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5751
  %191 = load i64, ptr %tv_nsec245, align 8, !dbg !5751
  %conv246 = trunc i64 %191 to i32, !dbg !5752
  %sys_realtime247 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 1, !dbg !5753
  %nsec248 = getelementptr inbounds %struct.ptp_clock_time, ptr %sys_realtime247, i32 0, i32 1, !dbg !5754
  store i32 %conv246, ptr %nsec248, align 8, !dbg !5755
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp249) #17, !dbg !5756
  %sys_monoraw = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 2, !dbg !5756
  %192 = load i64, ptr %sys_monoraw, align 8, !dbg !5756
  %call250 = call { i64, i64 } @ns_to_timespec64(i64 noundef %192) #18, !dbg !5756
  %193 = getelementptr inbounds { i64, i64 }, ptr %tmp249, i32 0, i32 0, !dbg !5756
  %194 = extractvalue { i64, i64 } %call250, 0, !dbg !5756
  store i64 %194, ptr %193, align 8, !dbg !5756
  %195 = getelementptr inbounds { i64, i64 }, ptr %tmp249, i32 0, i32 1, !dbg !5756
  %196 = extractvalue { i64, i64 } %call250, 1, !dbg !5756
  store i64 %196, ptr %195, align 8, !dbg !5756
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp249, i64 16, i1 false), !dbg !5756
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp249) #17, !dbg !5756
  %tv_sec251 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5757
  %197 = load i64, ptr %tv_sec251, align 8, !dbg !5757
  %sys_monoraw252 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 2, !dbg !5758
  %sec253 = getelementptr inbounds %struct.ptp_clock_time, ptr %sys_monoraw252, i32 0, i32 0, !dbg !5759
  store i64 %197, ptr %sec253, align 8, !dbg !5760
  %tv_nsec254 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5761
  %198 = load i64, ptr %tv_nsec254, align 8, !dbg !5761
  %conv255 = trunc i64 %198 to i32, !dbg !5762
  %sys_monoraw256 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 2, !dbg !5763
  %nsec257 = getelementptr inbounds %struct.ptp_clock_time, ptr %sys_monoraw256, i32 0, i32 1, !dbg !5764
  store i32 %conv255, ptr %nsec257, align 8, !dbg !5765
  %199 = load i64, ptr %arg.addr, align 8, !dbg !5766
  %200 = inttoptr i64 %199 to ptr, !dbg !5768
  %call258 = call i64 @copy_to_user(ptr noundef %200, ptr noundef %precise_offset, i64 noundef 64) #18, !dbg !5769
  %tobool259 = icmp ne i64 %call258, 0, !dbg !5769
  br i1 %tobool259, label %if.then260, label %if.end261, !dbg !5770

if.then260:                                       ; preds = %if.end232
  store i32 -14, ptr %err, align 4, !dbg !5771
  br label %if.end261, !dbg !5772

if.end261:                                        ; preds = %if.then260, %if.end232
  br label %sw.epilog, !dbg !5773

sw.bb262:                                         ; preds = %if.end, %if.end
  %201 = load ptr, ptr %ptp, align 8, !dbg !5774
  %info263 = getelementptr inbounds %struct.ptp_clock, ptr %201, i32 0, i32 2, !dbg !5776
  %202 = load ptr, ptr %info263, align 8, !dbg !5776
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, ptr %202, i32 0, i32 14, !dbg !5777
  %203 = load ptr, ptr %gettimex64, align 8, !dbg !5777
  %tobool264 = icmp ne ptr %203, null, !dbg !5774
  br i1 %tobool264, label %if.end266, label %if.then265, !dbg !5778

if.then265:                                       ; preds = %sw.bb262
  store i32 -95, ptr %err, align 4, !dbg !5779
  br label %sw.epilog, !dbg !5781

if.end266:                                        ; preds = %sw.bb262
  %204 = load i64, ptr %arg.addr, align 8, !dbg !5782
  %205 = inttoptr i64 %204 to ptr, !dbg !5783
  %call267 = call ptr @memdup_user(ptr noundef %205, i64 noundef 1216) #18, !dbg !5784
  store ptr %call267, ptr %extoff, align 8, !dbg !5785
  %206 = load ptr, ptr %extoff, align 8, !dbg !5786
  %call268 = call zeroext i1 @IS_ERR(ptr noundef %206) #18, !dbg !5788
  br i1 %call268, label %if.then269, label %if.end272, !dbg !5789

if.then269:                                       ; preds = %if.end266
  %207 = load ptr, ptr %extoff, align 8, !dbg !5790
  %call270 = call i64 @PTR_ERR(ptr noundef %207) #18, !dbg !5792
  %conv271 = trunc i64 %call270 to i32, !dbg !5792
  store i32 %conv271, ptr %err, align 4, !dbg !5793
  store ptr null, ptr %extoff, align 8, !dbg !5794
  br label %sw.epilog, !dbg !5795

if.end272:                                        ; preds = %if.end266
  %208 = load ptr, ptr %extoff, align 8, !dbg !5796
  %n_samples = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %208, i32 0, i32 0, !dbg !5798
  %209 = load i32, ptr %n_samples, align 8, !dbg !5798
  %cmp273 = icmp ugt i32 %209, 25, !dbg !5799
  br i1 %cmp273, label %if.then287, label %lor.lhs.false275, !dbg !5800

lor.lhs.false275:                                 ; preds = %if.end272
  %210 = load ptr, ptr %extoff, align 8, !dbg !5801
  %rsv276 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %210, i32 0, i32 1, !dbg !5802
  %arrayidx277 = getelementptr [3 x i32], ptr %rsv276, i64 0, i64 0, !dbg !5801
  %211 = load i32, ptr %arrayidx277, align 4, !dbg !5801
  %tobool278 = icmp ne i32 %211, 0, !dbg !5801
  br i1 %tobool278, label %if.then287, label %lor.lhs.false279, !dbg !5803

lor.lhs.false279:                                 ; preds = %lor.lhs.false275
  %212 = load ptr, ptr %extoff, align 8, !dbg !5804
  %rsv280 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %212, i32 0, i32 1, !dbg !5805
  %arrayidx281 = getelementptr [3 x i32], ptr %rsv280, i64 0, i64 1, !dbg !5804
  %213 = load i32, ptr %arrayidx281, align 4, !dbg !5804
  %tobool282 = icmp ne i32 %213, 0, !dbg !5804
  br i1 %tobool282, label %if.then287, label %lor.lhs.false283, !dbg !5806

lor.lhs.false283:                                 ; preds = %lor.lhs.false279
  %214 = load ptr, ptr %extoff, align 8, !dbg !5807
  %rsv284 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %214, i32 0, i32 1, !dbg !5808
  %arrayidx285 = getelementptr [3 x i32], ptr %rsv284, i64 0, i64 2, !dbg !5807
  %215 = load i32, ptr %arrayidx285, align 4, !dbg !5807
  %tobool286 = icmp ne i32 %215, 0, !dbg !5807
  br i1 %tobool286, label %if.then287, label %if.end288, !dbg !5809

if.then287:                                       ; preds = %lor.lhs.false283, %lor.lhs.false279, %lor.lhs.false275, %if.end272
  store i32 -22, ptr %err, align 4, !dbg !5810
  br label %sw.epilog, !dbg !5812

if.end288:                                        ; preds = %lor.lhs.false283
  store i32 0, ptr %i, align 4, !dbg !5813
  br label %for.cond, !dbg !5815

for.cond:                                         ; preds = %for.inc, %if.end288
  %216 = load i32, ptr %i, align 4, !dbg !5816
  %217 = load ptr, ptr %extoff, align 8, !dbg !5818
  %n_samples289 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %217, i32 0, i32 0, !dbg !5819
  %218 = load i32, ptr %n_samples289, align 8, !dbg !5819
  %cmp290 = icmp ult i32 %216, %218, !dbg !5820
  br i1 %cmp290, label %for.body, label %for.end, !dbg !5821

for.body:                                         ; preds = %for.cond
  %219 = load ptr, ptr %ptp, align 8, !dbg !5822
  %info292 = getelementptr inbounds %struct.ptp_clock, ptr %219, i32 0, i32 2, !dbg !5824
  %220 = load ptr, ptr %info292, align 8, !dbg !5824
  %gettimex64293 = getelementptr inbounds %struct.ptp_clock_info, ptr %220, i32 0, i32 14, !dbg !5825
  %221 = load ptr, ptr %gettimex64293, align 8, !dbg !5825
  %222 = load ptr, ptr %ptp, align 8, !dbg !5826
  %info294 = getelementptr inbounds %struct.ptp_clock, ptr %222, i32 0, i32 2, !dbg !5827
  %223 = load ptr, ptr %info294, align 8, !dbg !5827
  %call295 = call i32 %221(ptr noundef %223, ptr noundef %ts, ptr noundef %sts) #18, !dbg !5822
  store i32 %call295, ptr %err, align 4, !dbg !5828
  %224 = load i32, ptr %err, align 4, !dbg !5829
  %tobool296 = icmp ne i32 %224, 0, !dbg !5829
  br i1 %tobool296, label %if.then297, label %if.end298, !dbg !5831

if.then297:                                       ; preds = %for.body
  br label %out, !dbg !5832

if.end298:                                        ; preds = %for.body
  %pre_ts = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 0, !dbg !5833
  %tv_sec299 = getelementptr inbounds %struct.timespec64, ptr %pre_ts, i32 0, i32 0, !dbg !5834
  %225 = load i64, ptr %tv_sec299, align 8, !dbg !5834
  %226 = load ptr, ptr %extoff, align 8, !dbg !5835
  %ts300 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %226, i32 0, i32 2, !dbg !5836
  %227 = load i32, ptr %i, align 4, !dbg !5837
  %idxprom = zext i32 %227 to i64, !dbg !5835
  %arrayidx301 = getelementptr [25 x [3 x %struct.ptp_clock_time]], ptr %ts300, i64 0, i64 %idxprom, !dbg !5835
  %arrayidx302 = getelementptr [3 x %struct.ptp_clock_time], ptr %arrayidx301, i64 0, i64 0, !dbg !5835
  %sec303 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx302, i32 0, i32 0, !dbg !5838
  store i64 %225, ptr %sec303, align 8, !dbg !5839
  %pre_ts304 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 0, !dbg !5840
  %tv_nsec305 = getelementptr inbounds %struct.timespec64, ptr %pre_ts304, i32 0, i32 1, !dbg !5841
  %228 = load i64, ptr %tv_nsec305, align 8, !dbg !5841
  %conv306 = trunc i64 %228 to i32, !dbg !5842
  %229 = load ptr, ptr %extoff, align 8, !dbg !5843
  %ts307 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %229, i32 0, i32 2, !dbg !5844
  %230 = load i32, ptr %i, align 4, !dbg !5845
  %idxprom308 = zext i32 %230 to i64, !dbg !5843
  %arrayidx309 = getelementptr [25 x [3 x %struct.ptp_clock_time]], ptr %ts307, i64 0, i64 %idxprom308, !dbg !5843
  %arrayidx310 = getelementptr [3 x %struct.ptp_clock_time], ptr %arrayidx309, i64 0, i64 0, !dbg !5843
  %nsec311 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx310, i32 0, i32 1, !dbg !5846
  store i32 %conv306, ptr %nsec311, align 8, !dbg !5847
  %tv_sec312 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5848
  %231 = load i64, ptr %tv_sec312, align 8, !dbg !5848
  %232 = load ptr, ptr %extoff, align 8, !dbg !5849
  %ts313 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %232, i32 0, i32 2, !dbg !5850
  %233 = load i32, ptr %i, align 4, !dbg !5851
  %idxprom314 = zext i32 %233 to i64, !dbg !5849
  %arrayidx315 = getelementptr [25 x [3 x %struct.ptp_clock_time]], ptr %ts313, i64 0, i64 %idxprom314, !dbg !5849
  %arrayidx316 = getelementptr [3 x %struct.ptp_clock_time], ptr %arrayidx315, i64 0, i64 1, !dbg !5849
  %sec317 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx316, i32 0, i32 0, !dbg !5852
  store i64 %231, ptr %sec317, align 8, !dbg !5853
  %tv_nsec318 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5854
  %234 = load i64, ptr %tv_nsec318, align 8, !dbg !5854
  %conv319 = trunc i64 %234 to i32, !dbg !5855
  %235 = load ptr, ptr %extoff, align 8, !dbg !5856
  %ts320 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %235, i32 0, i32 2, !dbg !5857
  %236 = load i32, ptr %i, align 4, !dbg !5858
  %idxprom321 = zext i32 %236 to i64, !dbg !5856
  %arrayidx322 = getelementptr [25 x [3 x %struct.ptp_clock_time]], ptr %ts320, i64 0, i64 %idxprom321, !dbg !5856
  %arrayidx323 = getelementptr [3 x %struct.ptp_clock_time], ptr %arrayidx322, i64 0, i64 1, !dbg !5856
  %nsec324 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx323, i32 0, i32 1, !dbg !5859
  store i32 %conv319, ptr %nsec324, align 8, !dbg !5860
  %post_ts = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1, !dbg !5861
  %tv_sec325 = getelementptr inbounds %struct.timespec64, ptr %post_ts, i32 0, i32 0, !dbg !5862
  %237 = load i64, ptr %tv_sec325, align 8, !dbg !5862
  %238 = load ptr, ptr %extoff, align 8, !dbg !5863
  %ts326 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %238, i32 0, i32 2, !dbg !5864
  %239 = load i32, ptr %i, align 4, !dbg !5865
  %idxprom327 = zext i32 %239 to i64, !dbg !5863
  %arrayidx328 = getelementptr [25 x [3 x %struct.ptp_clock_time]], ptr %ts326, i64 0, i64 %idxprom327, !dbg !5863
  %arrayidx329 = getelementptr [3 x %struct.ptp_clock_time], ptr %arrayidx328, i64 0, i64 2, !dbg !5863
  %sec330 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx329, i32 0, i32 0, !dbg !5866
  store i64 %237, ptr %sec330, align 8, !dbg !5867
  %post_ts331 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1, !dbg !5868
  %tv_nsec332 = getelementptr inbounds %struct.timespec64, ptr %post_ts331, i32 0, i32 1, !dbg !5869
  %240 = load i64, ptr %tv_nsec332, align 8, !dbg !5869
  %conv333 = trunc i64 %240 to i32, !dbg !5870
  %241 = load ptr, ptr %extoff, align 8, !dbg !5871
  %ts334 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %241, i32 0, i32 2, !dbg !5872
  %242 = load i32, ptr %i, align 4, !dbg !5873
  %idxprom335 = zext i32 %242 to i64, !dbg !5871
  %arrayidx336 = getelementptr [25 x [3 x %struct.ptp_clock_time]], ptr %ts334, i64 0, i64 %idxprom335, !dbg !5871
  %arrayidx337 = getelementptr [3 x %struct.ptp_clock_time], ptr %arrayidx336, i64 0, i64 2, !dbg !5871
  %nsec338 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx337, i32 0, i32 1, !dbg !5874
  store i32 %conv333, ptr %nsec338, align 8, !dbg !5875
  br label %for.inc, !dbg !5876

for.inc:                                          ; preds = %if.end298
  %243 = load i32, ptr %i, align 4, !dbg !5877
  %inc = add i32 %243, 1, !dbg !5877
  store i32 %inc, ptr %i, align 4, !dbg !5877
  br label %for.cond, !dbg !5878, !llvm.loop !5879

for.end:                                          ; preds = %for.cond
  %244 = load i64, ptr %arg.addr, align 8, !dbg !5881
  %245 = inttoptr i64 %244 to ptr, !dbg !5883
  %246 = load ptr, ptr %extoff, align 8, !dbg !5884
  %call339 = call i64 @copy_to_user(ptr noundef %245, ptr noundef %246, i64 noundef 1216) #18, !dbg !5885
  %tobool340 = icmp ne i64 %call339, 0, !dbg !5885
  br i1 %tobool340, label %if.then341, label %if.end342, !dbg !5886

if.then341:                                       ; preds = %for.end
  store i32 -14, ptr %err, align 4, !dbg !5887
  br label %if.end342, !dbg !5888

if.end342:                                        ; preds = %if.then341, %for.end
  br label %sw.epilog, !dbg !5889

sw.bb343:                                         ; preds = %if.end, %if.end
  %247 = load i64, ptr %arg.addr, align 8, !dbg !5890
  %248 = inttoptr i64 %247 to ptr, !dbg !5891
  %call344 = call ptr @memdup_user(ptr noundef %248, i64 noundef 832) #18, !dbg !5892
  store ptr %call344, ptr %sysoff, align 8, !dbg !5893
  %249 = load ptr, ptr %sysoff, align 8, !dbg !5894
  %call345 = call zeroext i1 @IS_ERR(ptr noundef %249) #18, !dbg !5896
  br i1 %call345, label %if.then346, label %if.end349, !dbg !5897

if.then346:                                       ; preds = %sw.bb343
  %250 = load ptr, ptr %sysoff, align 8, !dbg !5898
  %call347 = call i64 @PTR_ERR(ptr noundef %250) #18, !dbg !5900
  %conv348 = trunc i64 %call347 to i32, !dbg !5900
  store i32 %conv348, ptr %err, align 4, !dbg !5901
  store ptr null, ptr %sysoff, align 8, !dbg !5902
  br label %sw.epilog, !dbg !5903

if.end349:                                        ; preds = %sw.bb343
  %251 = load ptr, ptr %sysoff, align 8, !dbg !5904
  %n_samples350 = getelementptr inbounds %struct.ptp_sys_offset, ptr %251, i32 0, i32 0, !dbg !5906
  %252 = load i32, ptr %n_samples350, align 8, !dbg !5906
  %cmp351 = icmp ugt i32 %252, 25, !dbg !5907
  br i1 %cmp351, label %if.then353, label %if.end354, !dbg !5908

if.then353:                                       ; preds = %if.end349
  store i32 -22, ptr %err, align 4, !dbg !5909
  br label %sw.epilog, !dbg !5911

if.end354:                                        ; preds = %if.end349
  %253 = load ptr, ptr %sysoff, align 8, !dbg !5912
  %ts355 = getelementptr inbounds %struct.ptp_sys_offset, ptr %253, i32 0, i32 2, !dbg !5913
  %arrayidx356 = getelementptr [51 x %struct.ptp_clock_time], ptr %ts355, i64 0, i64 0, !dbg !5912
  store ptr %arrayidx356, ptr %pct, align 8, !dbg !5914
  store i32 0, ptr %i, align 4, !dbg !5915
  br label %for.cond357, !dbg !5917

for.cond357:                                      ; preds = %for.inc384, %if.end354
  %254 = load i32, ptr %i, align 4, !dbg !5918
  %255 = load ptr, ptr %sysoff, align 8, !dbg !5920
  %n_samples358 = getelementptr inbounds %struct.ptp_sys_offset, ptr %255, i32 0, i32 0, !dbg !5921
  %256 = load i32, ptr %n_samples358, align 8, !dbg !5921
  %cmp359 = icmp ult i32 %254, %256, !dbg !5922
  br i1 %cmp359, label %for.body361, label %for.end386, !dbg !5923

for.body361:                                      ; preds = %for.cond357
  call void @ktime_get_real_ts64(ptr noundef %ts) #18, !dbg !5924
  %tv_sec362 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5926
  %257 = load i64, ptr %tv_sec362, align 8, !dbg !5926
  %258 = load ptr, ptr %pct, align 8, !dbg !5927
  %sec363 = getelementptr inbounds %struct.ptp_clock_time, ptr %258, i32 0, i32 0, !dbg !5928
  store i64 %257, ptr %sec363, align 8, !dbg !5929
  %tv_nsec364 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5930
  %259 = load i64, ptr %tv_nsec364, align 8, !dbg !5930
  %conv365 = trunc i64 %259 to i32, !dbg !5931
  %260 = load ptr, ptr %pct, align 8, !dbg !5932
  %nsec366 = getelementptr inbounds %struct.ptp_clock_time, ptr %260, i32 0, i32 1, !dbg !5933
  store i32 %conv365, ptr %nsec366, align 8, !dbg !5934
  %261 = load ptr, ptr %pct, align 8, !dbg !5935
  %incdec.ptr = getelementptr %struct.ptp_clock_time, ptr %261, i32 1, !dbg !5935
  store ptr %incdec.ptr, ptr %pct, align 8, !dbg !5935
  %262 = load ptr, ptr %ops, align 8, !dbg !5936
  %gettimex64367 = getelementptr inbounds %struct.ptp_clock_info, ptr %262, i32 0, i32 14, !dbg !5938
  %263 = load ptr, ptr %gettimex64367, align 8, !dbg !5938
  %tobool368 = icmp ne ptr %263, null, !dbg !5936
  br i1 %tobool368, label %if.then369, label %if.else372, !dbg !5939

if.then369:                                       ; preds = %for.body361
  %264 = load ptr, ptr %ops, align 8, !dbg !5940
  %gettimex64370 = getelementptr inbounds %struct.ptp_clock_info, ptr %264, i32 0, i32 14, !dbg !5941
  %265 = load ptr, ptr %gettimex64370, align 8, !dbg !5941
  %266 = load ptr, ptr %ops, align 8, !dbg !5942
  %call371 = call i32 %265(ptr noundef %266, ptr noundef %ts, ptr noundef null) #18, !dbg !5940
  store i32 %call371, ptr %err, align 4, !dbg !5943
  br label %if.end374, !dbg !5944

if.else372:                                       ; preds = %for.body361
  %267 = load ptr, ptr %ops, align 8, !dbg !5945
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, ptr %267, i32 0, i32 13, !dbg !5946
  %268 = load ptr, ptr %gettime64, align 8, !dbg !5946
  %269 = load ptr, ptr %ops, align 8, !dbg !5947
  %call373 = call i32 %268(ptr noundef %269, ptr noundef %ts) #18, !dbg !5945
  store i32 %call373, ptr %err, align 4, !dbg !5948
  br label %if.end374

if.end374:                                        ; preds = %if.else372, %if.then369
  %270 = load i32, ptr %err, align 4, !dbg !5949
  %tobool375 = icmp ne i32 %270, 0, !dbg !5949
  br i1 %tobool375, label %if.then376, label %if.end377, !dbg !5951

if.then376:                                       ; preds = %if.end374
  br label %out, !dbg !5952

if.end377:                                        ; preds = %if.end374
  %tv_sec378 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5953
  %271 = load i64, ptr %tv_sec378, align 8, !dbg !5953
  %272 = load ptr, ptr %pct, align 8, !dbg !5954
  %sec379 = getelementptr inbounds %struct.ptp_clock_time, ptr %272, i32 0, i32 0, !dbg !5955
  store i64 %271, ptr %sec379, align 8, !dbg !5956
  %tv_nsec380 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5957
  %273 = load i64, ptr %tv_nsec380, align 8, !dbg !5957
  %conv381 = trunc i64 %273 to i32, !dbg !5958
  %274 = load ptr, ptr %pct, align 8, !dbg !5959
  %nsec382 = getelementptr inbounds %struct.ptp_clock_time, ptr %274, i32 0, i32 1, !dbg !5960
  store i32 %conv381, ptr %nsec382, align 8, !dbg !5961
  %275 = load ptr, ptr %pct, align 8, !dbg !5962
  %incdec.ptr383 = getelementptr %struct.ptp_clock_time, ptr %275, i32 1, !dbg !5962
  store ptr %incdec.ptr383, ptr %pct, align 8, !dbg !5962
  br label %for.inc384, !dbg !5963

for.inc384:                                       ; preds = %if.end377
  %276 = load i32, ptr %i, align 4, !dbg !5964
  %inc385 = add i32 %276, 1, !dbg !5964
  store i32 %inc385, ptr %i, align 4, !dbg !5964
  br label %for.cond357, !dbg !5965, !llvm.loop !5966

for.end386:                                       ; preds = %for.cond357
  call void @ktime_get_real_ts64(ptr noundef %ts) #18, !dbg !5968
  %tv_sec387 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5969
  %277 = load i64, ptr %tv_sec387, align 8, !dbg !5969
  %278 = load ptr, ptr %pct, align 8, !dbg !5970
  %sec388 = getelementptr inbounds %struct.ptp_clock_time, ptr %278, i32 0, i32 0, !dbg !5971
  store i64 %277, ptr %sec388, align 8, !dbg !5972
  %tv_nsec389 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !5973
  %279 = load i64, ptr %tv_nsec389, align 8, !dbg !5973
  %conv390 = trunc i64 %279 to i32, !dbg !5974
  %280 = load ptr, ptr %pct, align 8, !dbg !5975
  %nsec391 = getelementptr inbounds %struct.ptp_clock_time, ptr %280, i32 0, i32 1, !dbg !5976
  store i32 %conv390, ptr %nsec391, align 8, !dbg !5977
  %281 = load i64, ptr %arg.addr, align 8, !dbg !5978
  %282 = inttoptr i64 %281 to ptr, !dbg !5980
  %283 = load ptr, ptr %sysoff, align 8, !dbg !5981
  %call392 = call i64 @copy_to_user(ptr noundef %282, ptr noundef %283, i64 noundef 832) #18, !dbg !5982
  %tobool393 = icmp ne i64 %call392, 0, !dbg !5982
  br i1 %tobool393, label %if.then394, label %if.end395, !dbg !5983

if.then394:                                       ; preds = %for.end386
  store i32 -14, ptr %err, align 4, !dbg !5984
  br label %if.end395, !dbg !5985

if.end395:                                        ; preds = %if.then394, %for.end386
  br label %sw.epilog, !dbg !5986

sw.bb396:                                         ; preds = %if.end, %if.end
  %284 = load i64, ptr %arg.addr, align 8, !dbg !5987
  %285 = inttoptr i64 %284 to ptr, !dbg !5989
  %call397 = call i64 @copy_from_user(ptr noundef %pd, ptr noundef %285, i64 noundef 96) #18, !dbg !5990
  %tobool398 = icmp ne i64 %call397, 0, !dbg !5990
  br i1 %tobool398, label %if.then399, label %if.end400, !dbg !5991

if.then399:                                       ; preds = %sw.bb396
  store i32 -14, ptr %err, align 4, !dbg !5992
  br label %sw.epilog, !dbg !5994

if.end400:                                        ; preds = %sw.bb396
  %rsv401 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !5995
  %arrayidx402 = getelementptr [5 x i32], ptr %rsv401, i64 0, i64 0, !dbg !5997
  %286 = load i32, ptr %arrayidx402, align 4, !dbg !5997
  %tobool403 = icmp ne i32 %286, 0, !dbg !5997
  br i1 %tobool403, label %land.lhs.true420, label %lor.lhs.false404, !dbg !5998

lor.lhs.false404:                                 ; preds = %if.end400
  %rsv405 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !5999
  %arrayidx406 = getelementptr [5 x i32], ptr %rsv405, i64 0, i64 1, !dbg !6000
  %287 = load i32, ptr %arrayidx406, align 4, !dbg !6000
  %tobool407 = icmp ne i32 %287, 0, !dbg !6000
  br i1 %tobool407, label %land.lhs.true420, label %lor.lhs.false408, !dbg !6001

lor.lhs.false408:                                 ; preds = %lor.lhs.false404
  %rsv409 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6002
  %arrayidx410 = getelementptr [5 x i32], ptr %rsv409, i64 0, i64 2, !dbg !6003
  %288 = load i32, ptr %arrayidx410, align 4, !dbg !6003
  %tobool411 = icmp ne i32 %288, 0, !dbg !6003
  br i1 %tobool411, label %land.lhs.true420, label %lor.lhs.false412, !dbg !6004

lor.lhs.false412:                                 ; preds = %lor.lhs.false408
  %rsv413 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6005
  %arrayidx414 = getelementptr [5 x i32], ptr %rsv413, i64 0, i64 3, !dbg !6006
  %289 = load i32, ptr %arrayidx414, align 4, !dbg !6006
  %tobool415 = icmp ne i32 %289, 0, !dbg !6006
  br i1 %tobool415, label %land.lhs.true420, label %lor.lhs.false416, !dbg !6007

lor.lhs.false416:                                 ; preds = %lor.lhs.false412
  %rsv417 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6008
  %arrayidx418 = getelementptr [5 x i32], ptr %rsv417, i64 0, i64 4, !dbg !6009
  %290 = load i32, ptr %arrayidx418, align 4, !dbg !6009
  %tobool419 = icmp ne i32 %290, 0, !dbg !6009
  br i1 %tobool419, label %land.lhs.true420, label %if.else425, !dbg !6010

land.lhs.true420:                                 ; preds = %lor.lhs.false416, %lor.lhs.false412, %lor.lhs.false408, %lor.lhs.false404, %if.end400
  %291 = load i32, ptr %cmd.addr, align 4, !dbg !6011
  %conv421 = zext i32 %291 to i64, !dbg !6011
  %cmp422 = icmp eq i64 %conv421, 3227532559, !dbg !6012
  br i1 %cmp422, label %if.then424, label %if.else425, !dbg !6013

if.then424:                                       ; preds = %land.lhs.true420
  store i32 -22, ptr %err, align 4, !dbg !6014
  br label %sw.epilog, !dbg !6016

if.else425:                                       ; preds = %land.lhs.true420, %lor.lhs.false416
  %292 = load i32, ptr %cmd.addr, align 4, !dbg !6017
  %conv426 = zext i32 %292 to i64, !dbg !6017
  %cmp427 = icmp eq i64 %conv426, 3227532550, !dbg !6019
  br i1 %cmp427, label %if.then429, label %if.end440, !dbg !6020

if.then429:                                       ; preds = %if.else425
  %rsv430 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6021
  %arrayidx431 = getelementptr [5 x i32], ptr %rsv430, i64 0, i64 0, !dbg !6023
  store i32 0, ptr %arrayidx431, align 4, !dbg !6024
  %rsv432 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6025
  %arrayidx433 = getelementptr [5 x i32], ptr %rsv432, i64 0, i64 1, !dbg !6026
  store i32 0, ptr %arrayidx433, align 4, !dbg !6027
  %rsv434 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6028
  %arrayidx435 = getelementptr [5 x i32], ptr %rsv434, i64 0, i64 2, !dbg !6029
  store i32 0, ptr %arrayidx435, align 4, !dbg !6030
  %rsv436 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6031
  %arrayidx437 = getelementptr [5 x i32], ptr %rsv436, i64 0, i64 3, !dbg !6032
  store i32 0, ptr %arrayidx437, align 4, !dbg !6033
  %rsv438 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6034
  %arrayidx439 = getelementptr [5 x i32], ptr %rsv438, i64 0, i64 4, !dbg !6035
  store i32 0, ptr %arrayidx439, align 4, !dbg !6036
  br label %if.end440, !dbg !6037

if.end440:                                        ; preds = %if.then429, %if.else425
  br label %if.end441

if.end441:                                        ; preds = %if.end440
  %index442 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 1, !dbg !6038
  %293 = load i32, ptr %index442, align 4, !dbg !6038
  store i32 %293, ptr %pin_index, align 4, !dbg !6039
  %294 = load i32, ptr %pin_index, align 4, !dbg !6040
  %295 = load ptr, ptr %ops, align 8, !dbg !6042
  %n_pins443 = getelementptr inbounds %struct.ptp_clock_info, ptr %295, i32 0, i32 6, !dbg !6043
  %296 = load i32, ptr %n_pins443, align 8, !dbg !6043
  %cmp444 = icmp uge i32 %294, %296, !dbg !6044
  br i1 %cmp444, label %if.then446, label %if.end447, !dbg !6045

if.then446:                                       ; preds = %if.end441
  store i32 -22, ptr %err, align 4, !dbg !6046
  br label %sw.epilog, !dbg !6048

if.end447:                                        ; preds = %if.end441
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #17, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !5288, metadata !DIExpression()), !dbg !6049
  %297 = load i32, ptr %pin_index, align 4, !dbg !6049
  store i32 %297, ptr %_i, align 4, !dbg !6049
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #17, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !5290, metadata !DIExpression()), !dbg !6049
  %298 = load ptr, ptr %ops, align 8, !dbg !6049
  %n_pins448 = getelementptr inbounds %struct.ptp_clock_info, ptr %298, i32 0, i32 6, !dbg !6049
  %299 = load i32, ptr %n_pins448, align 8, !dbg !6049
  store i32 %299, ptr %_s, align 4, !dbg !6049
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #17, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !5291, metadata !DIExpression()), !dbg !6049
  %300 = load i32, ptr %_i, align 4, !dbg !6049
  %conv449 = zext i32 %300 to i64, !dbg !6049
  %301 = load i32, ptr %_s, align 4, !dbg !6049
  %conv450 = sext i32 %301 to i64, !dbg !6049
  %call451 = call i64 @array_index_mask_nospec(i64 noundef %conv449, i64 noundef %conv450) #18, !dbg !6049
  store i64 %call451, ptr %_mask, align 8, !dbg !6049
  br label %do.body, !dbg !6049

do.body:                                          ; preds = %if.end447
  br label %do.cond, !dbg !6050

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6050

do.end:                                           ; preds = %do.cond
  br label %do.body452, !dbg !6049

do.body452:                                       ; preds = %do.end
  br label %do.cond453, !dbg !6052

do.cond453:                                       ; preds = %do.body452
  br label %do.end454, !dbg !6052

do.end454:                                        ; preds = %do.cond453
  %302 = load i32, ptr %_i, align 4, !dbg !6049
  %conv456 = zext i32 %302 to i64, !dbg !6049
  %303 = load i64, ptr %_mask, align 8, !dbg !6049
  %and457 = and i64 %conv456, %303, !dbg !6049
  %conv458 = trunc i64 %and457 to i32, !dbg !6049
  store i32 %conv458, ptr %tmp455, align 4, !dbg !6052
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #17, !dbg !6054
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #17, !dbg !6054
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #17, !dbg !6054
  %304 = load i32, ptr %tmp455, align 4, !dbg !6049
  store i32 %304, ptr %pin_index, align 4, !dbg !6055
  %305 = load ptr, ptr %ptp, align 8, !dbg !6056
  %pincfg_mux459 = getelementptr inbounds %struct.ptp_clock, ptr %305, i32 0, i32 9, !dbg !6058
  %call460 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux459) #18, !dbg !6059
  %tobool461 = icmp ne i32 %call460, 0, !dbg !6059
  br i1 %tobool461, label %if.then462, label %if.end463, !dbg !6060

if.then462:                                       ; preds = %do.end454
  store i64 -512, ptr %retval, align 8, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !6061

if.end463:                                        ; preds = %do.end454
  %306 = load ptr, ptr %ops, align 8, !dbg !6062
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %306, i32 0, i32 8, !dbg !6063
  %307 = load ptr, ptr %pin_config, align 8, !dbg !6063
  %308 = load i32, ptr %pin_index, align 4, !dbg !6064
  %idxprom464 = zext i32 %308 to i64, !dbg !6062
  %arrayidx465 = getelementptr %struct.ptp_pin_desc, ptr %307, i64 %idxprom464, !dbg !6062
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pd, ptr align 4 %arrayidx465, i64 96, i1 false), !dbg !6062
  %309 = load ptr, ptr %ptp, align 8, !dbg !6065
  %pincfg_mux466 = getelementptr inbounds %struct.ptp_clock, ptr %309, i32 0, i32 9, !dbg !6066
  call void @mutex_unlock(ptr noundef %pincfg_mux466) #18, !dbg !6067
  %310 = load i32, ptr %err, align 4, !dbg !6068
  %tobool467 = icmp ne i32 %310, 0, !dbg !6068
  br i1 %tobool467, label %if.end472, label %land.lhs.true468, !dbg !6070

land.lhs.true468:                                 ; preds = %if.end463
  %311 = load i64, ptr %arg.addr, align 8, !dbg !6071
  %312 = inttoptr i64 %311 to ptr, !dbg !6072
  %call469 = call i64 @copy_to_user(ptr noundef %312, ptr noundef %pd, i64 noundef 96) #18, !dbg !6073
  %tobool470 = icmp ne i64 %call469, 0, !dbg !6073
  br i1 %tobool470, label %if.then471, label %if.end472, !dbg !6074

if.then471:                                       ; preds = %land.lhs.true468
  store i32 -14, ptr %err, align 4, !dbg !6075
  br label %if.end472, !dbg !6076

if.end472:                                        ; preds = %if.then471, %land.lhs.true468, %if.end463
  br label %sw.epilog, !dbg !6077

sw.bb473:                                         ; preds = %if.end, %if.end
  %313 = load i64, ptr %arg.addr, align 8, !dbg !6078
  %314 = inttoptr i64 %313 to ptr, !dbg !6080
  %call474 = call i64 @copy_from_user(ptr noundef %pd, ptr noundef %314, i64 noundef 96) #18, !dbg !6081
  %tobool475 = icmp ne i64 %call474, 0, !dbg !6081
  br i1 %tobool475, label %if.then476, label %if.end477, !dbg !6082

if.then476:                                       ; preds = %sw.bb473
  store i32 -14, ptr %err, align 4, !dbg !6083
  br label %sw.epilog, !dbg !6085

if.end477:                                        ; preds = %sw.bb473
  %rsv478 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6086
  %arrayidx479 = getelementptr [5 x i32], ptr %rsv478, i64 0, i64 0, !dbg !6088
  %315 = load i32, ptr %arrayidx479, align 4, !dbg !6088
  %tobool480 = icmp ne i32 %315, 0, !dbg !6088
  br i1 %tobool480, label %land.lhs.true497, label %lor.lhs.false481, !dbg !6089

lor.lhs.false481:                                 ; preds = %if.end477
  %rsv482 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6090
  %arrayidx483 = getelementptr [5 x i32], ptr %rsv482, i64 0, i64 1, !dbg !6091
  %316 = load i32, ptr %arrayidx483, align 4, !dbg !6091
  %tobool484 = icmp ne i32 %316, 0, !dbg !6091
  br i1 %tobool484, label %land.lhs.true497, label %lor.lhs.false485, !dbg !6092

lor.lhs.false485:                                 ; preds = %lor.lhs.false481
  %rsv486 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6093
  %arrayidx487 = getelementptr [5 x i32], ptr %rsv486, i64 0, i64 2, !dbg !6094
  %317 = load i32, ptr %arrayidx487, align 4, !dbg !6094
  %tobool488 = icmp ne i32 %317, 0, !dbg !6094
  br i1 %tobool488, label %land.lhs.true497, label %lor.lhs.false489, !dbg !6095

lor.lhs.false489:                                 ; preds = %lor.lhs.false485
  %rsv490 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6096
  %arrayidx491 = getelementptr [5 x i32], ptr %rsv490, i64 0, i64 3, !dbg !6097
  %318 = load i32, ptr %arrayidx491, align 4, !dbg !6097
  %tobool492 = icmp ne i32 %318, 0, !dbg !6097
  br i1 %tobool492, label %land.lhs.true497, label %lor.lhs.false493, !dbg !6098

lor.lhs.false493:                                 ; preds = %lor.lhs.false489
  %rsv494 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6099
  %arrayidx495 = getelementptr [5 x i32], ptr %rsv494, i64 0, i64 4, !dbg !6100
  %319 = load i32, ptr %arrayidx495, align 4, !dbg !6100
  %tobool496 = icmp ne i32 %319, 0, !dbg !6100
  br i1 %tobool496, label %land.lhs.true497, label %if.else502, !dbg !6101

land.lhs.true497:                                 ; preds = %lor.lhs.false493, %lor.lhs.false489, %lor.lhs.false485, %lor.lhs.false481, %if.end477
  %320 = load i32, ptr %cmd.addr, align 4, !dbg !6102
  %conv498 = zext i32 %320 to i64, !dbg !6102
  %cmp499 = icmp eq i64 %conv498, 1080048912, !dbg !6103
  br i1 %cmp499, label %if.then501, label %if.else502, !dbg !6104

if.then501:                                       ; preds = %land.lhs.true497
  store i32 -22, ptr %err, align 4, !dbg !6105
  br label %sw.epilog, !dbg !6107

if.else502:                                       ; preds = %land.lhs.true497, %lor.lhs.false493
  %321 = load i32, ptr %cmd.addr, align 4, !dbg !6108
  %conv503 = zext i32 %321 to i64, !dbg !6108
  %cmp504 = icmp eq i64 %conv503, 1080048903, !dbg !6110
  br i1 %cmp504, label %if.then506, label %if.end517, !dbg !6111

if.then506:                                       ; preds = %if.else502
  %rsv507 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6112
  %arrayidx508 = getelementptr [5 x i32], ptr %rsv507, i64 0, i64 0, !dbg !6114
  store i32 0, ptr %arrayidx508, align 4, !dbg !6115
  %rsv509 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6116
  %arrayidx510 = getelementptr [5 x i32], ptr %rsv509, i64 0, i64 1, !dbg !6117
  store i32 0, ptr %arrayidx510, align 4, !dbg !6118
  %rsv511 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6119
  %arrayidx512 = getelementptr [5 x i32], ptr %rsv511, i64 0, i64 2, !dbg !6120
  store i32 0, ptr %arrayidx512, align 4, !dbg !6121
  %rsv513 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6122
  %arrayidx514 = getelementptr [5 x i32], ptr %rsv513, i64 0, i64 3, !dbg !6123
  store i32 0, ptr %arrayidx514, align 4, !dbg !6124
  %rsv515 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, !dbg !6125
  %arrayidx516 = getelementptr [5 x i32], ptr %rsv515, i64 0, i64 4, !dbg !6126
  store i32 0, ptr %arrayidx516, align 4, !dbg !6127
  br label %if.end517, !dbg !6128

if.end517:                                        ; preds = %if.then506, %if.else502
  br label %if.end518

if.end518:                                        ; preds = %if.end517
  %index519 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 1, !dbg !6129
  %322 = load i32, ptr %index519, align 4, !dbg !6129
  store i32 %322, ptr %pin_index, align 4, !dbg !6130
  %323 = load i32, ptr %pin_index, align 4, !dbg !6131
  %324 = load ptr, ptr %ops, align 8, !dbg !6133
  %n_pins520 = getelementptr inbounds %struct.ptp_clock_info, ptr %324, i32 0, i32 6, !dbg !6134
  %325 = load i32, ptr %n_pins520, align 8, !dbg !6134
  %cmp521 = icmp uge i32 %323, %325, !dbg !6135
  br i1 %cmp521, label %if.then523, label %if.end524, !dbg !6136

if.then523:                                       ; preds = %if.end518
  store i32 -22, ptr %err, align 4, !dbg !6137
  br label %sw.epilog, !dbg !6139

if.end524:                                        ; preds = %if.end518
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i525) #17, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %_i525, metadata !5292, metadata !DIExpression()), !dbg !6140
  %326 = load i32, ptr %pin_index, align 4, !dbg !6140
  store i32 %326, ptr %_i525, align 4, !dbg !6140
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s526) #17, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %_s526, metadata !5294, metadata !DIExpression()), !dbg !6140
  %327 = load ptr, ptr %ops, align 8, !dbg !6140
  %n_pins527 = getelementptr inbounds %struct.ptp_clock_info, ptr %327, i32 0, i32 6, !dbg !6140
  %328 = load i32, ptr %n_pins527, align 8, !dbg !6140
  store i32 %328, ptr %_s526, align 4, !dbg !6140
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask528) #17, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %_mask528, metadata !5295, metadata !DIExpression()), !dbg !6140
  %329 = load i32, ptr %_i525, align 4, !dbg !6140
  %conv529 = zext i32 %329 to i64, !dbg !6140
  %330 = load i32, ptr %_s526, align 4, !dbg !6140
  %conv530 = sext i32 %330 to i64, !dbg !6140
  %call531 = call i64 @array_index_mask_nospec(i64 noundef %conv529, i64 noundef %conv530) #18, !dbg !6140
  store i64 %call531, ptr %_mask528, align 8, !dbg !6140
  br label %do.body532, !dbg !6140

do.body532:                                       ; preds = %if.end524
  br label %do.cond533, !dbg !6141

do.cond533:                                       ; preds = %do.body532
  br label %do.end534, !dbg !6141

do.end534:                                        ; preds = %do.cond533
  br label %do.body535, !dbg !6140

do.body535:                                       ; preds = %do.end534
  br label %do.cond536, !dbg !6143

do.cond536:                                       ; preds = %do.body535
  br label %do.end537, !dbg !6143

do.end537:                                        ; preds = %do.cond536
  %331 = load i32, ptr %_i525, align 4, !dbg !6140
  %conv539 = zext i32 %331 to i64, !dbg !6140
  %332 = load i64, ptr %_mask528, align 8, !dbg !6140
  %and540 = and i64 %conv539, %332, !dbg !6140
  %conv541 = trunc i64 %and540 to i32, !dbg !6140
  store i32 %conv541, ptr %tmp538, align 4, !dbg !6143
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask528) #17, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s526) #17, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i525) #17, !dbg !6145
  %333 = load i32, ptr %tmp538, align 4, !dbg !6140
  store i32 %333, ptr %pin_index, align 4, !dbg !6146
  %334 = load ptr, ptr %ptp, align 8, !dbg !6147
  %pincfg_mux542 = getelementptr inbounds %struct.ptp_clock, ptr %334, i32 0, i32 9, !dbg !6149
  %call543 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux542) #18, !dbg !6150
  %tobool544 = icmp ne i32 %call543, 0, !dbg !6150
  br i1 %tobool544, label %if.then545, label %if.end546, !dbg !6151

if.then545:                                       ; preds = %do.end537
  store i64 -512, ptr %retval, align 8, !dbg !6152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !6152

if.end546:                                        ; preds = %do.end537
  %335 = load ptr, ptr %ptp, align 8, !dbg !6153
  %336 = load i32, ptr %pin_index, align 4, !dbg !6154
  %func = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 2, !dbg !6155
  %337 = load i32, ptr %func, align 4, !dbg !6155
  %chan = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 3, !dbg !6156
  %338 = load i32, ptr %chan, align 4, !dbg !6156
  %call547 = call i32 @ptp_set_pinfunc(ptr noundef %335, i32 noundef %336, i32 noundef %337, i32 noundef %338) #18, !dbg !6157
  store i32 %call547, ptr %err, align 4, !dbg !6158
  %339 = load ptr, ptr %ptp, align 8, !dbg !6159
  %pincfg_mux548 = getelementptr inbounds %struct.ptp_clock, ptr %339, i32 0, i32 9, !dbg !6160
  call void @mutex_unlock(ptr noundef %pincfg_mux548) #18, !dbg !6161
  br label %sw.epilog, !dbg !6162

sw.default:                                       ; preds = %if.end
  store i32 -25, ptr %err, align 4, !dbg !6163
  br label %sw.epilog, !dbg !6164

sw.epilog:                                        ; preds = %sw.default, %if.end546, %if.then523, %if.then501, %if.then476, %if.end472, %if.then446, %if.then424, %if.then399, %if.end395, %if.then353, %if.then346, %if.end342, %if.then287, %if.then269, %if.then265, %if.end261, %if.then231, %if.then224, %if.end216, %if.end201, %if.then188, %cleanup, %if.then98, %if.end91, %if.then83, %if.then66, %if.then56, %if.then43, %if.end39
  br label %out, !dbg !6165

out:                                              ; preds = %sw.epilog, %if.then376, %if.then297
  call void @llvm.dbg.label(metadata !5296), !dbg !6166
  %340 = load ptr, ptr %extoff, align 8, !dbg !6167
  call void @kfree(ptr noundef %340) #18, !dbg !6168
  %341 = load ptr, ptr %sysoff, align 8, !dbg !6169
  call void @kfree(ptr noundef %341) #18, !dbg !6170
  %342 = load i32, ptr %err, align 4, !dbg !6171
  %conv549 = sext i32 %342 to i64, !dbg !6171
  store i64 %conv549, ptr %retval, align 8, !dbg !6172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup550, !dbg !6172

cleanup550:                                       ; preds = %out, %if.then545, %if.then462, %if.then215, %if.then207, %if.then200, %if.then90
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 4, ptr %enable) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 96, ptr %pd) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 4, ptr %pin_index) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 8, ptr %pct) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 80, ptr %caps) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 64, ptr %req) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 32, ptr %sts) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 8, ptr %sysoff) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 24, ptr %xtstamp) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 64, ptr %precise_offset) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 8, ptr %extoff) #17, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #17, !dbg !6173
  %343 = load i64, ptr %retval, align 8, !dbg !6173
  ret i64 %343, !dbg !6173

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_compat_syscall() #4 align 16 !dbg !6174 {
entry:
  %call = call zeroext i1 @in_32bit_syscall() #18, !dbg !6176
  ret i1 %call, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #4 align 16 !dbg !6178 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !6184
  %conv = zext i32 %0 to i64, !dbg !6185
  %1 = inttoptr i64 %conv to ptr, !dbg !6186
  ret ptr %1, !dbg !6187
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !6188 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6193, metadata !DIExpression()), !dbg !6196
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6194, metadata !DIExpression()), !dbg !6197
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6195, metadata !DIExpression()), !dbg !6198
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6199
  %1 = load i64, ptr %n.addr, align 8, !dbg !6201
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #18, !dbg !6202
  br i1 %call, label %if.then, label %if.end, !dbg !6203

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6204
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6205
  %4 = load i64, ptr %n.addr, align 8, !dbg !6206
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !6207
  store i64 %call1, ptr %n.addr, align 8, !dbg !6208
  br label %if.end, !dbg !6209

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6210
  ret i64 %5, !dbg !6211
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !6212 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6214, metadata !DIExpression()), !dbg !6217
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6215, metadata !DIExpression()), !dbg !6218
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6216, metadata !DIExpression()), !dbg !6219
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6220
  %1 = load i64, ptr %n.addr, align 8, !dbg !6222
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !6223
  br i1 %call, label %if.then, label %if.end, !dbg !6224

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6225
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6226
  %4 = load i64, ptr %n.addr, align 8, !dbg !6227
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !6228
  store i64 %call1, ptr %n.addr, align 8, !dbg !6229
  br label %if.end, !dbg !6230

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6231
  ret i64 %5, !dbg !6232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6233 dso_local i32 @mutex_lock_interruptible(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6237 dso_local void @mutex_unlock(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6240 dso_local zeroext i1 @capable(i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6243 dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6246 dso_local ptr @memdup_user(ptr noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6250 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6257
  %1 = ptrtoint ptr %0 to i64, !dbg !6257
  %2 = inttoptr i64 %1 to ptr, !dbg !6257
  %3 = ptrtoint ptr %2 to i64, !dbg !6257
  %cmp = icmp uge i64 %3, -4095, !dbg !6257
  %lnot = xor i1 %cmp, true, !dbg !6257
  %lnot1 = xor i1 %lnot, true, !dbg !6257
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6257
  %conv = sext i32 %lnot.ext to i64, !dbg !6257
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6257
  %tobool = icmp ne i64 %expval, 0, !dbg !6257
  ret i1 %tobool, !dbg !6258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !6259 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6263, metadata !DIExpression()), !dbg !6264
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6265
  %1 = ptrtoint ptr %0 to i64, !dbg !6266
  ret i64 %1, !dbg !6267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6268 dso_local void @ktime_get_real_ts64(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #4 align 16 !dbg !6271 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6276, metadata !DIExpression()), !dbg !6279
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6277, metadata !DIExpression()), !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6278, metadata !DIExpression()), !dbg !6282
  %0 = load i64, ptr %size.addr, align 8, !dbg !6283
  %1 = load i64, ptr %index.addr, align 8, !dbg !6284
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #17, !dbg !6285, !srcloc !6286
  store i64 %2, ptr %mask, align 8, !dbg !6285
  %3 = load i64, ptr %mask, align 8, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !6288
  ret i64 %3, !dbg !6289
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6290 dso_local void @kfree(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ptp_poll(ptr noundef %pc, ptr noundef %fp, ptr noundef %wait) #0 align 16 !dbg !6293 {
entry:
  %pc.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %pc, ptr %pc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !6295, metadata !DIExpression()), !dbg !6301
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !6296, metadata !DIExpression()), !dbg !6302
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6297, metadata !DIExpression()), !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #17, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6298, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6299, metadata !DIExpression()), !dbg !6306
  %0 = load ptr, ptr %pc.addr, align 8, !dbg !6306
  store ptr %0, ptr %__mptr, align 8, !dbg !6306
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6306
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6306
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6307
  %2 = load ptr, ptr %tmp, align 8, !dbg !6306
  store ptr %2, ptr %ptp, align 8, !dbg !6305
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !6308
  %4 = load ptr, ptr %ptp, align 8, !dbg !6309
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 10, !dbg !6310
  %5 = load ptr, ptr %wait.addr, align 8, !dbg !6311
  call void @poll_wait(ptr noundef %3, ptr noundef %tsev_wq, ptr noundef %5) #18, !dbg !6312
  %6 = load ptr, ptr %ptp, align 8, !dbg !6313
  %tsevq = getelementptr inbounds %struct.ptp_clock, ptr %6, i32 0, i32 7, !dbg !6314
  %call = call i32 @queue_cnt(ptr noundef %tsevq) #18, !dbg !6315
  %tobool = icmp ne i32 %call, 0, !dbg !6315
  %7 = zext i1 %tobool to i64, !dbg !6315
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #17, !dbg !6316
  ret i32 %cond, !dbg !6317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #4 align 16 !dbg !6318 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !6322, metadata !DIExpression()), !dbg !6325
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !6323, metadata !DIExpression()), !dbg !6326
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6324, metadata !DIExpression()), !dbg !6327
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6328
  %tobool = icmp ne ptr %0, null, !dbg !6328
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6330

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6331
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !6332
  %2 = load ptr, ptr %_qproc, align 8, !dbg !6332
  %tobool1 = icmp ne ptr %2, null, !dbg !6331
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !6333

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !6334
  %tobool3 = icmp ne ptr %3, null, !dbg !6334
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6335

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6336
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !6338
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !6338
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !6339
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !6340
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6341
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #18, !dbg !6336
  br label %do.body, !dbg !6342

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !6343

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !6345

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6343, !srcloc !6347
  br label %do.end6, !dbg !6343

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !6348

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !6349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_cnt(ptr noundef %q) #4 align 16 !dbg !6350 {
entry:
  %q.addr = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6356, metadata !DIExpression()), !dbg !6358
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #17, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !6357, metadata !DIExpression()), !dbg !6360
  br label %do.body, !dbg !6361

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6363

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6363

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6361
  %tail = getelementptr inbounds %struct.timestamp_event_queue, ptr %0, i32 0, i32 2, !dbg !6361
  %1 = load volatile i32, ptr %tail, align 4, !dbg !6361
  store i32 %1, ptr %tmp, align 4, !dbg !6363
  %2 = load i32, ptr %tmp, align 4, !dbg !6361
  br label %do.body1, !dbg !6365

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6367

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6367

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6365
  %head = getelementptr inbounds %struct.timestamp_event_queue, ptr %3, i32 0, i32 1, !dbg !6365
  %4 = load volatile i32, ptr %head, align 8, !dbg !6365
  store i32 %4, ptr %tmp4, align 4, !dbg !6367
  %5 = load i32, ptr %tmp4, align 4, !dbg !6365
  %sub = sub i32 %2, %5, !dbg !6369
  store i32 %sub, ptr %cnt, align 4, !dbg !6360
  %6 = load i32, ptr %cnt, align 4, !dbg !6370
  %cmp = icmp slt i32 %6, 0, !dbg !6371
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6370

cond.true:                                        ; preds = %do.end3
  %7 = load i32, ptr %cnt, align 4, !dbg !6372
  %add = add i32 128, %7, !dbg !6373
  br label %cond.end, !dbg !6370

cond.false:                                       ; preds = %do.end3
  %8 = load i32, ptr %cnt, align 4, !dbg !6374
  br label %cond.end, !dbg !6370

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %8, %cond.false ], !dbg !6370
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #17, !dbg !6375
  ret i32 %cond, !dbg !6376
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ptp_read(ptr noundef %pc, i32 noundef %rdflags, ptr noundef %buf, i64 noundef %cnt) #0 align 16 !dbg !6377 {
entry:
  %retval = alloca i64, align 8
  %pc.addr = alloca ptr, align 8
  %rdflags.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %cnt.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %queue = alloca ptr, align 8
  %event = alloca ptr, align 8
  %flags = alloca i64, align 8
  %qcnt = alloca i64, align 8
  %i = alloca i64, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret10 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp23 = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  store ptr %pc, ptr %pc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !6379, metadata !DIExpression()), !dbg !6422
  store i32 %rdflags, ptr %rdflags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rdflags.addr, metadata !6380, metadata !DIExpression()), !dbg !6423
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6381, metadata !DIExpression()), !dbg !6424
  store i64 %cnt, ptr %cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !6382, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #17, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6383, metadata !DIExpression()), !dbg !6427
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6428
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6384, metadata !DIExpression()), !dbg !6428
  %0 = load ptr, ptr %pc.addr, align 8, !dbg !6428
  store ptr %0, ptr %__mptr, align 8, !dbg !6428
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6428
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6428
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6428
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6429
  %2 = load ptr, ptr %tmp, align 8, !dbg !6428
  store ptr %2, ptr %ptp, align 8, !dbg !6427
  call void @llvm.lifetime.start.p0(i64 8, ptr %queue) #17, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %queue, metadata !6386, metadata !DIExpression()), !dbg !6431
  %3 = load ptr, ptr %ptp, align 8, !dbg !6432
  %tsevq = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 7, !dbg !6433
  store ptr %tsevq, ptr %queue, align 8, !dbg !6431
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #17, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %event, metadata !6388, metadata !DIExpression()), !dbg !6435
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6390, metadata !DIExpression()), !dbg !6437
  call void @llvm.lifetime.start.p0(i64 8, ptr %qcnt) #17, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %qcnt, metadata !6391, metadata !DIExpression()), !dbg !6439
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6392, metadata !DIExpression()), !dbg !6440
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6393, metadata !DIExpression()), !dbg !6442
  %4 = load i64, ptr %cnt.addr, align 8, !dbg !6443
  %rem = urem i64 %4, 32, !dbg !6445
  %cmp = icmp ne i64 %rem, 0, !dbg !6446
  br i1 %cmp, label %if.then, label %if.end, !dbg !6447

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !6448

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %cnt.addr, align 8, !dbg !6449
  %cmp1 = icmp ugt i64 %5, 960, !dbg !6451
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6452

if.then2:                                         ; preds = %if.end
  store i64 960, ptr %cnt.addr, align 8, !dbg !6453
  br label %if.end3, !dbg !6454

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i64, ptr %cnt.addr, align 8, !dbg !6455
  %div = udiv i64 %6, 32, !dbg !6456
  store i64 %div, ptr %cnt.addr, align 8, !dbg !6457
  %7 = load ptr, ptr %ptp, align 8, !dbg !6458
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 8, !dbg !6460
  %call = call i32 @mutex_lock_interruptible(ptr noundef %tsevq_mux) #18, !dbg !6461
  %tobool = icmp ne i32 %call, 0, !dbg !6461
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !6462

if.then4:                                         ; preds = %if.end3
  store i64 -512, ptr %retval, align 8, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !6463

if.end5:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !6464
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6394, metadata !DIExpression()), !dbg !6464
  store i32 0, ptr %__ret, align 4, !dbg !6464
  br label %do.body, !dbg !6464

do.body:                                          ; preds = %if.end5
  call void @might_resched() #18, !dbg !6465
  br label %do.cond, !dbg !6465

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6465

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %ptp, align 8, !dbg !6467
  %defunct = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 11, !dbg !6467
  %9 = load i32, ptr %defunct, align 8, !dbg !6467
  %tobool6 = icmp ne i32 %9, 0, !dbg !6467
  br i1 %tobool6, label %if.end24, label %lor.lhs.false, !dbg !6467

lor.lhs.false:                                    ; preds = %do.end
  %10 = load ptr, ptr %queue, align 8, !dbg !6467
  %call7 = call i32 @queue_cnt(ptr noundef %10) #18, !dbg !6467
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6467
  br i1 %tobool8, label %if.end24, label %if.then9, !dbg !6464

if.then9:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #17, !dbg !6468
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !6397, metadata !DIExpression()), !dbg !6468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret10) #17, !dbg !6468
  call void @llvm.dbg.declare(metadata ptr %__ret10, metadata !6411, metadata !DIExpression()), !dbg !6468
  store i64 0, ptr %__ret10, align 8, !dbg !6468
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #18, !dbg !6468
  br label %for.cond, !dbg !6468

for.cond:                                         ; preds = %cleanup.cont, %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #17, !dbg !6469
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !6412, metadata !DIExpression()), !dbg !6469
  %11 = load ptr, ptr %ptp, align 8, !dbg !6469
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 10, !dbg !6469
  %call11 = call i64 @prepare_to_wait_event(ptr noundef %tsev_wq, ptr noundef %__wq_entry, i32 noundef 1) #18, !dbg !6469
  store i64 %call11, ptr %__int, align 8, !dbg !6469
  %12 = load ptr, ptr %ptp, align 8, !dbg !6470
  %defunct12 = getelementptr inbounds %struct.ptp_clock, ptr %12, i32 0, i32 11, !dbg !6470
  %13 = load i32, ptr %defunct12, align 8, !dbg !6470
  %tobool13 = icmp ne i32 %13, 0, !dbg !6470
  br i1 %tobool13, label %if.then17, label %lor.lhs.false14, !dbg !6470

lor.lhs.false14:                                  ; preds = %for.cond
  %14 = load ptr, ptr %queue, align 8, !dbg !6470
  %call15 = call i32 @queue_cnt(ptr noundef %14) #18, !dbg !6470
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6470
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6469

if.then17:                                        ; preds = %lor.lhs.false14, %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6470

if.end18:                                         ; preds = %lor.lhs.false14
  %15 = load i64, ptr %__int, align 8, !dbg !6472
  %tobool19 = icmp ne i64 %15, 0, !dbg !6472
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6469

if.then20:                                        ; preds = %if.end18
  %16 = load i64, ptr %__int, align 8, !dbg !6474
  store i64 %16, ptr %__ret10, align 8, !dbg !6474
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6474

if.end21:                                         ; preds = %if.end18
  call void @schedule() #18, !dbg !6469
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6476
  br label %cleanup, !dbg !6476

cleanup:                                          ; preds = %if.then20, %if.end21, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #17, !dbg !6476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
    i32 6, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6476, !llvm.loop !6477

for.end:                                          ; preds = %cleanup
  %17 = load ptr, ptr %ptp, align 8, !dbg !6468
  %tsev_wq22 = getelementptr inbounds %struct.ptp_clock, ptr %17, i32 0, i32 10, !dbg !6468
  call void @finish_wait(ptr noundef %tsev_wq22, ptr noundef %__wq_entry) #18, !dbg !6468
  br label %__out, !dbg !6468

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !6416), !dbg !6468
  %18 = load i64, ptr %__ret10, align 8, !dbg !6468
  store i64 %18, ptr %tmp23, align 8, !dbg !6468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret10) #17, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #17, !dbg !6467
  %19 = load i64, ptr %tmp23, align 8, !dbg !6468
  %conv = trunc i64 %19 to i32, !dbg !6467
  store i32 %conv, ptr %__ret, align 4, !dbg !6467
  br label %if.end24, !dbg !6467

if.end24:                                         ; preds = %__out, %lor.lhs.false, %do.end
  %20 = load i32, ptr %__ret, align 4, !dbg !6464
  store i32 %20, ptr %tmp25, align 4, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !6479
  %21 = load i32, ptr %tmp25, align 4, !dbg !6464
  %tobool26 = icmp ne i32 %21, 0, !dbg !6479
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !6480

if.then27:                                        ; preds = %if.end24
  %22 = load ptr, ptr %ptp, align 8, !dbg !6481
  %tsevq_mux28 = getelementptr inbounds %struct.ptp_clock, ptr %22, i32 0, i32 8, !dbg !6483
  call void @mutex_unlock(ptr noundef %tsevq_mux28) #18, !dbg !6484
  store i64 -512, ptr %retval, align 8, !dbg !6485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !6485

if.end29:                                         ; preds = %if.end24
  %23 = load ptr, ptr %ptp, align 8, !dbg !6486
  %defunct30 = getelementptr inbounds %struct.ptp_clock, ptr %23, i32 0, i32 11, !dbg !6488
  %24 = load i32, ptr %defunct30, align 8, !dbg !6488
  %tobool31 = icmp ne i32 %24, 0, !dbg !6486
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !6489

if.then32:                                        ; preds = %if.end29
  %25 = load ptr, ptr %ptp, align 8, !dbg !6490
  %tsevq_mux33 = getelementptr inbounds %struct.ptp_clock, ptr %25, i32 0, i32 8, !dbg !6492
  call void @mutex_unlock(ptr noundef %tsevq_mux33) #18, !dbg !6493
  store i64 -19, ptr %retval, align 8, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !6494

if.end34:                                         ; preds = %if.end29
  %call35 = call noalias ptr @kmalloc(i64 noundef 960, i32 noundef 3264) #20, !dbg !6495
  store ptr %call35, ptr %event, align 8, !dbg !6496
  %26 = load ptr, ptr %event, align 8, !dbg !6497
  %tobool36 = icmp ne ptr %26, null, !dbg !6497
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !6499

if.then37:                                        ; preds = %if.end34
  %27 = load ptr, ptr %ptp, align 8, !dbg !6500
  %tsevq_mux38 = getelementptr inbounds %struct.ptp_clock, ptr %27, i32 0, i32 8, !dbg !6502
  call void @mutex_unlock(ptr noundef %tsevq_mux38) #18, !dbg !6503
  store i64 -12, ptr %retval, align 8, !dbg !6504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !6504

if.end39:                                         ; preds = %if.end34
  br label %do.body40, !dbg !6505

do.body40:                                        ; preds = %if.end39
  br label %do.body41, !dbg !6506

do.body41:                                        ; preds = %do.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6417, metadata !DIExpression()), !dbg !6507
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6421, metadata !DIExpression()), !dbg !6507
  %cmp42 = icmp eq ptr %__dummy, %__dummy2, !dbg !6507
  %conv43 = zext i1 %cmp42 to i32, !dbg !6507
  store i32 1, ptr %tmp44, align 4, !dbg !6507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6508
  %28 = load i32, ptr %tmp44, align 4, !dbg !6507
  %29 = load ptr, ptr %queue, align 8, !dbg !6508
  %lock = getelementptr inbounds %struct.timestamp_event_queue, ptr %29, i32 0, i32 3, !dbg !6508
  %call45 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6508
  %call46 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call45) #18, !dbg !6508
  store i64 %call46, ptr %flags, align 8, !dbg !6508
  br label %do.cond47, !dbg !6508

do.cond47:                                        ; preds = %do.body41
  br label %do.end48, !dbg !6508

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !6506

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !6506

do.end50:                                         ; preds = %do.cond49
  %30 = load ptr, ptr %queue, align 8, !dbg !6509
  %call51 = call i32 @queue_cnt(ptr noundef %30) #18, !dbg !6510
  %conv52 = sext i32 %call51 to i64, !dbg !6510
  store i64 %conv52, ptr %qcnt, align 8, !dbg !6511
  %31 = load i64, ptr %cnt.addr, align 8, !dbg !6512
  %32 = load i64, ptr %qcnt, align 8, !dbg !6514
  %cmp53 = icmp ugt i64 %31, %32, !dbg !6515
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !6516

if.then55:                                        ; preds = %do.end50
  %33 = load i64, ptr %qcnt, align 8, !dbg !6517
  store i64 %33, ptr %cnt.addr, align 8, !dbg !6518
  br label %if.end56, !dbg !6519

if.end56:                                         ; preds = %if.then55, %do.end50
  store i64 0, ptr %i, align 8, !dbg !6520
  br label %for.cond57, !dbg !6522

for.cond57:                                       ; preds = %for.inc, %if.end56
  %34 = load i64, ptr %i, align 8, !dbg !6523
  %35 = load i64, ptr %cnt.addr, align 8, !dbg !6525
  %cmp58 = icmp ult i64 %34, %35, !dbg !6526
  br i1 %cmp58, label %for.body, label %for.end74, !dbg !6527

for.body:                                         ; preds = %for.cond57
  %36 = load ptr, ptr %event, align 8, !dbg !6528
  %37 = load i64, ptr %i, align 8, !dbg !6530
  %arrayidx = getelementptr %struct.ptp_extts_event, ptr %36, i64 %37, !dbg !6528
  %38 = load ptr, ptr %queue, align 8, !dbg !6531
  %buf60 = getelementptr inbounds %struct.timestamp_event_queue, ptr %38, i32 0, i32 0, !dbg !6532
  %39 = load ptr, ptr %queue, align 8, !dbg !6533
  %head = getelementptr inbounds %struct.timestamp_event_queue, ptr %39, i32 0, i32 1, !dbg !6534
  %40 = load i32, ptr %head, align 8, !dbg !6534
  %idxprom = sext i32 %40 to i64, !dbg !6531
  %arrayidx61 = getelementptr [128 x %struct.ptp_extts_event], ptr %buf60, i64 0, i64 %idxprom, !dbg !6531
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %arrayidx61, i64 32, i1 false), !dbg !6531
  br label %do.body62, !dbg !6535

do.body62:                                        ; preds = %for.body
  br label %do.body63, !dbg !6536

do.body63:                                        ; preds = %do.body62
  br label %do.cond64, !dbg !6538

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !6538

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !6536

do.body66:                                        ; preds = %do.end65
  %41 = load ptr, ptr %queue, align 8, !dbg !6540
  %head67 = getelementptr inbounds %struct.timestamp_event_queue, ptr %41, i32 0, i32 1, !dbg !6540
  %42 = load i32, ptr %head67, align 8, !dbg !6540
  %add = add i32 %42, 1, !dbg !6540
  %rem68 = srem i32 %add, 128, !dbg !6540
  %43 = load ptr, ptr %queue, align 8, !dbg !6540
  %head69 = getelementptr inbounds %struct.timestamp_event_queue, ptr %43, i32 0, i32 1, !dbg !6540
  store volatile i32 %rem68, ptr %head69, align 8, !dbg !6540
  br label %do.cond70, !dbg !6540

do.cond70:                                        ; preds = %do.body66
  br label %do.end71, !dbg !6540

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !6536

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !6536

do.end73:                                         ; preds = %do.cond72
  br label %for.inc, !dbg !6542

for.inc:                                          ; preds = %do.end73
  %44 = load i64, ptr %i, align 8, !dbg !6543
  %inc = add i64 %44, 1, !dbg !6543
  store i64 %inc, ptr %i, align 8, !dbg !6543
  br label %for.cond57, !dbg !6544, !llvm.loop !6545

for.end74:                                        ; preds = %for.cond57
  %45 = load ptr, ptr %queue, align 8, !dbg !6547
  %lock75 = getelementptr inbounds %struct.timestamp_event_queue, ptr %45, i32 0, i32 3, !dbg !6548
  %46 = load i64, ptr %flags, align 8, !dbg !6549
  call void @spin_unlock_irqrestore(ptr noundef %lock75, i64 noundef %46) #18, !dbg !6550
  %47 = load i64, ptr %cnt.addr, align 8, !dbg !6551
  %mul = mul i64 %47, 32, !dbg !6552
  store i64 %mul, ptr %cnt.addr, align 8, !dbg !6553
  %48 = load ptr, ptr %ptp, align 8, !dbg !6554
  %tsevq_mux76 = getelementptr inbounds %struct.ptp_clock, ptr %48, i32 0, i32 8, !dbg !6555
  call void @mutex_unlock(ptr noundef %tsevq_mux76) #18, !dbg !6556
  %49 = load i64, ptr %cnt.addr, align 8, !dbg !6557
  %conv77 = trunc i64 %49 to i32, !dbg !6557
  store i32 %conv77, ptr %result, align 4, !dbg !6558
  %50 = load ptr, ptr %buf.addr, align 8, !dbg !6559
  %51 = load ptr, ptr %event, align 8, !dbg !6561
  %52 = load i64, ptr %cnt.addr, align 8, !dbg !6562
  %call78 = call i64 @copy_to_user(ptr noundef %50, ptr noundef %51, i64 noundef %52) #18, !dbg !6563
  %tobool79 = icmp ne i64 %call78, 0, !dbg !6563
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !6564

if.then80:                                        ; preds = %for.end74
  store i32 -14, ptr %result, align 4, !dbg !6565
  br label %if.end81, !dbg !6566

if.end81:                                         ; preds = %if.then80, %for.end74
  %53 = load ptr, ptr %event, align 8, !dbg !6567
  call void @kfree(ptr noundef %53) #18, !dbg !6568
  %54 = load i32, ptr %result, align 4, !dbg !6569
  %conv82 = sext i32 %54 to i64, !dbg !6569
  store i64 %conv82, ptr %retval, align 8, !dbg !6570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !6570

cleanup83:                                        ; preds = %if.end81, %if.then37, %if.then32, %if.then27, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %qcnt) #17, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #17, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %queue) #17, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #17, !dbg !6571
  %55 = load i64, ptr %retval, align 8, !dbg !6571
  ret i64 %55, !dbg !6571

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !15 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6572
  %0 = load ptr, ptr %tmp, align 8, !dbg !6572
  %call = call i32 %0() #18, !dbg !6574
  ret void, !dbg !6575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6576 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6579 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6583 dso_local void @schedule() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6584 dso_local void @finish_wait(ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6587 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6591, metadata !DIExpression()), !dbg !6596
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6592, metadata !DIExpression()), !dbg !6597
  %0 = load i64, ptr %size.addr, align 8, !dbg !6598
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6599
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6600

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6601
  %tobool = icmp ne i64 %2, 0, !dbg !6601
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6602

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6593, metadata !DIExpression()), !dbg !6604
  %3 = load i64, ptr %size.addr, align 8, !dbg !6605
  %cmp = icmp ugt i64 %3, 8192, !dbg !6607
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6608

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6609
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6610
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6611
  store ptr %call, ptr %retval, align 8, !dbg !6612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6612

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6613
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6613
  store i32 %call2, ptr %index, align 4, !dbg !6614
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6615
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6616
  %9 = ptrtoint ptr %8 to i64, !dbg !6616
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6617
  %idxprom = zext i32 %call3 to i64, !dbg !6618
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6618
  %10 = load i32, ptr %index, align 4, !dbg !6619
  %idxprom4 = zext i32 %10 to i64, !dbg !6618
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6618
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6618
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6620
  %13 = load i64, ptr %size.addr, align 8, !dbg !6621
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6622
  store ptr %call6, ptr %retval, align 8, !dbg !6623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6623

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6624
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6625
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6626
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6627
  store ptr %call8, ptr %retval, align 8, !dbg !6628
  br label %return, !dbg !6628

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6629
  ret ptr %16, !dbg !6629
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6630 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !6635 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6640, metadata !DIExpression()), !dbg !6641
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6642
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6643
  ret ptr %1, !dbg !6644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !6645 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6649, metadata !DIExpression()), !dbg !6655
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6650, metadata !DIExpression()), !dbg !6656
  br label %do.body, !dbg !6657

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6651, metadata !DIExpression()), !dbg !6658
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6654, metadata !DIExpression()), !dbg !6658
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6658
  %conv = zext i1 %cmp to i32, !dbg !6658
  store i32 1, ptr %tmp, align 4, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6659
  %0 = load i32, ptr %tmp, align 4, !dbg !6658
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6659
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6659
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6659
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !6659
  br label %do.end, !dbg !6659

do.end:                                           ; preds = %do.body
  ret void, !dbg !6660
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_32bit_syscall() #4 align 16 !dbg !6661 {
entry:
  %call = call ptr @get_current() #18, !dbg !6662
  %status = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 2, !dbg !6662
  %0 = load i32, ptr %status, align 8, !dbg !6662
  %and = and i32 %0, 2, !dbg !6662
  %tobool = icmp ne i32 %and, 0, !dbg !6662
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6663

lor.rhs:                                          ; preds = %entry
  %call1 = call zeroext i1 @in_x32_syscall() #18, !dbg !6664
  br label %lor.end, !dbg !6663

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %1, !dbg !6665
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !6666 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6677
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6671, metadata !DIExpression()), !dbg !6677
  br label %do.body, !dbg !6677

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6678
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6673, metadata !DIExpression()), !dbg !6678
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6678
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6677
  br label %do.cond, !dbg !6678

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6678

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6675, metadata !DIExpression()), !dbg !6679
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #22, !dbg !6679, !srcloc !6680
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6679
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6679
  %3 = inttoptr i64 %2 to ptr, !dbg !6679
  store ptr %3, ptr %tmp, align 8, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !6677
  %4 = load ptr, ptr %tmp, align 8, !dbg !6679
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6677
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6677
  store ptr %5, ptr %tmp1, align 8, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6681
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6677
  ret ptr %6, !dbg !6682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_x32_syscall() #4 align 16 !dbg !6683 {
entry:
  ret i1 false, !dbg !6684
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !6685 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6689, metadata !DIExpression()), !dbg !6699
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6690, metadata !DIExpression()), !dbg !6700
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6691, metadata !DIExpression()), !dbg !6701
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !6702
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6692, metadata !DIExpression()), !dbg !6703
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6704
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6705
  %conv = trunc i64 %1 to i32, !dbg !6705
  store i32 %conv, ptr %sz, align 4, !dbg !6703
  %2 = load i32, ptr %sz, align 4, !dbg !6706
  %cmp = icmp sge i32 %2, 0, !dbg !6706
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6706

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6706
  %conv2 = sext i32 %3 to i64, !dbg !6706
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6706
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6706
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6708
  %lnot = xor i1 %5, true, !dbg !6706
  %lnot5 = xor i1 %lnot, true, !dbg !6706
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6706
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6706
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6706
  %tobool = icmp ne i64 %expval, 0, !dbg !6706
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6709

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6710
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6713
  br i1 %7, label %if.else, label %if.then7, !dbg !6714

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6715
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6716
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !6717
  br label %if.end11, !dbg !6717

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6718, !range !6720, !noundef !626
  %tobool8 = trunc i8 %10 to i1, !dbg !6718
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6721

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !6722, !srcloc !6723
  br label %if.end, !dbg !6722

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !6724, !srcloc !6725
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6726

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6693, metadata !DIExpression()), !dbg !6727
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6727
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6727
  %lnot15 = xor i1 %cmp13, true, !dbg !6727
  %lnot17 = xor i1 %lnot15, true, !dbg !6727
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6727
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6727
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6728
  %tobool19 = icmp ne i32 %12, 0, !dbg !6728
  %lnot20 = xor i1 %tobool19, true, !dbg !6728
  %lnot22 = xor i1 %lnot20, true, !dbg !6728
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6728
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6728
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6728
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6728
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6727

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6728

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6696, metadata !DIExpression()), !dbg !6729
  store i32 2307, ptr %__flags, align 4, !dbg !6729
  br label %do.body28, !dbg !6729

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6730

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6730

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6729

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6732
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #17, !dbg !6732, !srcloc !6734
  br label %do.cond30, !dbg !6732

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6732

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6729

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6735

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6735

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6728
  br label %do.cond35, !dbg !6729

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6729

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6729

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6727
  %tobool38 = icmp ne i32 %14, 0, !dbg !6727
  %lnot39 = xor i1 %tobool38, true, !dbg !6727
  %lnot41 = xor i1 %lnot39, true, !dbg !6727
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6727
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6727
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6727
  store i64 %expval44, ptr %tmp, align 8, !dbg !6728
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6737
  %15 = load i64, ptr %tmp, align 8, !dbg !6727
  %tobool45 = icmp ne i64 %15, 0, !dbg !6737
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6738

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6739

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6740
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6741
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6742, !range !6720, !noundef !626
  %tobool48 = trunc i8 %18 to i1, !dbg !6742
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !6743
  store i1 true, ptr %retval, align 1, !dbg !6744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6744

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !6745
  %19 = load i1, ptr %retval, align 1, !dbg !6745
  ret i1 %19, !dbg !6745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6746 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !6747 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6751, metadata !DIExpression()), !dbg !6753
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6752, metadata !DIExpression()), !dbg !6754
  %0 = load i32, ptr %size.addr, align 4, !dbg !6755
  %1 = load i64, ptr %count.addr, align 8, !dbg !6757
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !6758
  ret void, !dbg !6759
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6760 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6761 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !6762 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6766, metadata !DIExpression()), !dbg !6769
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6767, metadata !DIExpression()), !dbg !6770
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6768, metadata !DIExpression()), !dbg !6771
  ret void, !dbg !6772
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6773 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6774 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6775 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6776 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6780, metadata !DIExpression()), !dbg !6782
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6781, metadata !DIExpression()), !dbg !6783
  %0 = load i64, ptr %size.addr, align 8, !dbg !6784
  %tobool = icmp ne i64 %0, 0, !dbg !6784
  br i1 %tobool, label %if.end, label %if.then, !dbg !6786

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6787
  br label %return, !dbg !6787

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6788
  %cmp = icmp ule i64 %1, 8, !dbg !6790
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6791

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6792
  br label %return, !dbg !6792

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6793
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6795
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6796

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6797
  %cmp4 = icmp ule i64 %3, 96, !dbg !6798
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6799

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6800
  br label %return, !dbg !6800

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6801
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6803
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6804

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6805
  %cmp9 = icmp ule i64 %5, 192, !dbg !6806
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6807

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6808
  br label %return, !dbg !6808

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6809
  %cmp12 = icmp ule i64 %6, 8, !dbg !6811
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6812

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6813
  br label %return, !dbg !6813

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6814
  %cmp15 = icmp ule i64 %7, 16, !dbg !6816
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6817

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6818
  br label %return, !dbg !6818

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6819
  %cmp18 = icmp ule i64 %8, 32, !dbg !6821
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6822

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6823
  br label %return, !dbg !6823

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6824
  %cmp21 = icmp ule i64 %9, 64, !dbg !6826
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6827

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6828
  br label %return, !dbg !6828

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6829
  %cmp24 = icmp ule i64 %10, 128, !dbg !6831
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6832

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6833
  br label %return, !dbg !6833

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6834
  %cmp27 = icmp ule i64 %11, 256, !dbg !6836
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6837

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6838
  br label %return, !dbg !6838

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6839
  %cmp30 = icmp ule i64 %12, 512, !dbg !6841
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6842

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6843
  br label %return, !dbg !6843

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6844
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6846
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6847

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6848
  br label %return, !dbg !6848

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6849
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6851
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6852

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6853
  br label %return, !dbg !6853

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6854
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6856
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6857

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6858
  br label %return, !dbg !6858

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6859
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6861
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6862

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6863
  br label %return, !dbg !6863

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6864
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6866
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6867

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6868
  br label %return, !dbg !6868

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6869
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6871
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6872

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6873
  br label %return, !dbg !6873

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6874
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6876
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6877

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6878
  br label %return, !dbg !6878

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6879
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6881
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6882

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6883
  br label %return, !dbg !6883

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6884
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6886
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6887

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6888
  br label %return, !dbg !6888

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6889
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6891
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6892

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6893
  br label %return, !dbg !6893

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6894
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6896
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6897

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6898
  br label %return, !dbg !6898

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6899
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6901
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6902

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6903
  br label %return, !dbg !6903

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6904, !range !6720, !noundef !626
  %tobool69 = trunc i8 %25 to i1, !dbg !6904
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6906

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6907

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #23, !dbg !6908, !srcloc !6911
  unreachable, !dbg !6908

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6912

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6913

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6914

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6916

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6914

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !6918, !srcloc !6920
  br label %do.end75, !dbg !6918

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6914

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6921
  br label %return, !dbg !6921

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6922
  ret i32 %26, !dbg !6922
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6923 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !6929 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6933, metadata !DIExpression()), !dbg !6935
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6934, metadata !DIExpression()), !dbg !6936
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6937
  %and = and i32 %0, 17, !dbg !6937
  %cmp = icmp eq i32 %and, 0, !dbg !6937
  %lnot = xor i1 %cmp, true, !dbg !6937
  %lnot1 = xor i1 %lnot, true, !dbg !6937
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6937
  %conv = sext i32 %lnot.ext to i64, !dbg !6937
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6937
  %tobool = icmp ne i64 %expval, 0, !dbg !6937
  br i1 %tobool, label %if.then, label %if.end, !dbg !6939

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6940
  br label %return, !dbg !6940

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6941
  %and2 = and i32 %1, 1, !dbg !6943
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6943
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6944

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6945
  br label %return, !dbg !6945

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6946
  br label %return, !dbg !6946

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6948
  ret i32 %2, !dbg !6948
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6949 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6950 dso_local void @__compiletime_assert_245() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6951 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #7 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { nounwind memory(none) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015}
!llvm.ident = !{!5016}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/ptp/ptp_chardev.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d49de134e7b21fb0a88425e5a2aba9c0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 58)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 249, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 28)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !15, file: !16, line: 112, type: !229, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "might_resched", scope: !16, file: !16, line: 110, type: !17, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!16 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/ptp/.ptp_chardev.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/ptp/ptp\22 -D KBUILD_BASENAME=\22ptp_chardev\22 -D KBUILD_MODNAME=\22ptp\22 -D __KBUILD_MODNAME=kmod_ptp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/ptp/ptp_chardev.ll drivers/ptp/ptp_chardev.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !228, globals: !5002, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !29, !34, !40, !45, !53, !61, !77, !83, !90, !97, !103, !109, !116, !124, !132, !141, !146, !151, !157, !207, !213, !218}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !22, line: 312, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!26 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!27 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!28 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !30, line: 2052, baseType: !23, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!33 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !35, line: 54, baseType: !23, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "USRQUOTA", value: 0)
!38 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!39 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !41, line: 65, baseType: !23, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!44 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !23, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !23, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !62, line: 1325, baseType: !23, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!64 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!65 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!66 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!67 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!68 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!69 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!70 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!71 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!72 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!73 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!74 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!75 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!76 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !78, line: 16, baseType: !23, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "TT_NONE", value: 0)
!81 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!82 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !84, line: 51, baseType: !23, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!87 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!88 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!89 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !91, line: 15, baseType: !23, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!94 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!95 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!96 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !98, line: 26, baseType: !23, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!101 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!102 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !104, line: 45, baseType: !23, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!107 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!108 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !110, line: 487, baseType: !23, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!113 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!114 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!115 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !117, line: 620, baseType: !23, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!120 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!121 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!122 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!123 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !117, line: 597, baseType: !125, size: 32, elements: !126)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!128 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!129 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!130 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!131 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !110, line: 547, baseType: !23, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140}
!134 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!135 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!136 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!137 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!138 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!139 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!140 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !110, line: 564, baseType: !23, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !110, line: 577, baseType: !23, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !110, line: 503, baseType: !23, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!155 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!156 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !159, file: !158, line: 33, baseType: !23, size: 32, elements: !203)
!158 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54f5424c70c1f064a9bfeb2f2d3d6d2c")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !158, line: 32, size: 512, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !158, line: 37, baseType: !157, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 38, baseType: !163, size: 448, offset: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 38, size: 448, elements: !164)
!164 = !{!165, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !163, file: !158, line: 39, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !167, line: 102, size: 128, elements: !168)
!167 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c874b9ccb9254052af76037fd91a385")
!168 = !{!169, !170, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !166, file: !167, line: 103, baseType: !23, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !167, line: 104, baseType: !23, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !166, file: !167, line: 105, baseType: !172, size: 64, offset: 64)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 2)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !163, file: !158, line: 40, baseType: !176, size: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !167, line: 108, size: 448, elements: !177)
!177 = !{!178, !192, !193, !194, !195}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !167, line: 109, baseType: !179, size: 128)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !167, line: 109, size: 128, elements: !180)
!180 = !{!181, !191}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !179, file: !167, line: 114, baseType: !182, size: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !167, line: 81, size: 128, elements: !183)
!183 = !{!184, !188, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !182, file: !167, line: 82, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !186, line: 30, baseType: !187)
!186 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!187 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !182, file: !167, line: 83, baseType: !189, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !186, line: 27, baseType: !23)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !182, file: !167, line: 84, baseType: !189, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !179, file: !167, line: 121, baseType: !182, size: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !176, file: !167, line: 123, baseType: !182, size: 128, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !176, file: !167, line: 124, baseType: !23, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !167, line: 125, baseType: !23, size: 32, offset: 288)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !167, line: 126, baseType: !196, size: 128, offset: 320)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !167, line: 126, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !196, file: !167, line: 132, baseType: !182, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !196, file: !167, line: 134, baseType: !200, size: 128)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 4)
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0)
!205 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1)
!206 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !167, line: 168, baseType: !23, size: 32, elements: !208)
!208 = !{!209, !210, !211, !212}
!209 = !DIEnumerator(name: "PTP_PF_NONE", value: 0)
!210 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1)
!211 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2)
!212 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !214, line: 10, baseType: !23, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!215 = !{!216, !217}
!216 = !DIEnumerator(name: "false", value: 0)
!217 = !DIEnumerator(name: "true", value: 1)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !219, line: 364, baseType: !23, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!220 = !{!221, !222, !223, !224, !225, !226, !227}
!221 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!222 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!223 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!224 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!225 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!226 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!227 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!228 = !{!229, !230, !395, !23, !2082, !786, !4996, !4998, !4999, !1049, !125, !381, !5000}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !232, line: 30, size: 43392, elements: !233)
!232 = !DIFile(filename: "drivers/ptp/ptp_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6401785878d097ded4610e2a083f87")
!233 = !{!234, !4786, !4787, !4872, !4873, !4874, !4925, !4926, !4942, !4943, !4944, !4945, !4946, !4959, !4960, !4961, !4963, !4985, !4990, !4991, !4992, !4993, !4994, !4995}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !231, file: !232, line: 31, baseType: !235, size: 1920)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock", file: !236, line: 85, size: 1920, elements: !237)
!236 = !DIFile(filename: "./include/linux/posix-clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "033589a08c5a69dceae9211ceff0c050")
!237 = !{!238, !4332, !4333, !4784, !4785}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !235, file: !236, line: 86, baseType: !239, size: 640)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock_operations", file: !236, line: 38, size: 640, elements: !240)
!240 = !{!241, !4264, !4297, !4302, !4303, !4309, !4313, !4317, !4323, !4327}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !239, file: !236, line: 39, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !22, line: 402, size: 9216, align: 512, elements: !244)
!244 = !{!245, !246, !253, !257, !3940, !3966, !3967, !3968, !3969, !3973, !3976, !3977, !3978, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4045, !4049, !4067, !4084, !4085, !4086, !4087, !4096, !4119, !4120, !4123, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4137, !4138, !4224, !4232, !4233, !4234, !4236, !4240, !4241, !4245, !4246, !4247, !4248, !4250, !4251, !4252, !4259, !4260, !4261, !4263}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !243, file: !22, line: 403, baseType: !21, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !243, file: !22, line: 406, baseType: !247, size: 128, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !248, line: 190, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !248, line: 191, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !247, file: !248, line: 191, baseType: !251, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !22, line: 409, baseType: !254, size: 448, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 56)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !243, file: !22, line: 417, baseType: !258, size: 768, offset: 640)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !22, line: 45, size: 768, elements: !259)
!259 = !{!260, !3934, !3935, !3936, !3939}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !258, file: !22, line: 46, baseType: !261, size: 512)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !262, line: 64, size: 512, elements: !263)
!262 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!263 = !{!264, !267, !268, !270, !358, !3820, !3924, !3929, !3930, !3931, !3932, !3933}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !262, line: 65, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !261, file: !262, line: 66, baseType: !247, size: 128, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !262, line: 67, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !261, file: !262, line: 68, baseType: !271, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !262, line: 168, size: 768, elements: !273)
!273 = !{!274, !275, !317, !318}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !272, file: !262, line: 169, baseType: !247, size: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !272, file: !262, line: 170, baseType: !276, size: 32, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !277, line: 29, baseType: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !277, line: 17, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 18, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 18, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !281, file: !277, line: 19, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !285, line: 14, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !284, file: !285, line: 15, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !289, line: 44, baseType: !290)
!289 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !289, line: 14, size: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !289, line: 15, baseType: !293, size: 32)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !289, line: 15, size: 32, elements: !294)
!294 = !{!295, !300, !309}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !293, file: !289, line: 16, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !248, line: 174, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 172, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !297, file: !248, line: 173, baseType: !125, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !289, line: 24, baseType: !301, size: 16)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !293, file: !289, line: 24, size: 16, elements: !302)
!302 = !{!303, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !301, file: !289, line: 25, baseType: !304, size: 8)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !305, line: 17, baseType: !306)
!305 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !186, line: 21, baseType: !307)
!307 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !301, file: !289, line: 26, baseType: !304, size: 8, offset: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !289, line: 28, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !293, file: !289, line: 28, size: 32, elements: !311)
!311 = !{!312, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !310, file: !289, line: 29, baseType: !313, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !305, line: 19, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !186, line: 24, baseType: !315)
!315 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !310, file: !289, line: 30, baseType: !313, size: 16, offset: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !262, line: 171, baseType: !261, size: 512, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !272, file: !262, line: 172, baseType: !319, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !262, line: 133, size: 192, elements: !322)
!322 = !{!323, !330, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !321, file: !262, line: 134, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!125, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !262, line: 135, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!265, !328}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !321, file: !262, line: 136, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!125, !328, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !262, line: 125, size: 20736, elements: !342)
!342 = !{!343, !348, !352, !353, !357}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !341, file: !262, line: 126, baseType: !344, size: 192)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !346)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!346 = !{!347}
!347 = !DISubrange(count: 3)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !341, file: !262, line: 127, baseType: !349, size: 4096, offset: 192)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 4096, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !341, file: !262, line: 128, baseType: !125, size: 32, offset: 4288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !341, file: !262, line: 129, baseType: !354, size: 16384, offset: 4320)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 2048)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !341, file: !262, line: 130, baseType: !125, size: 32, offset: 20704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !261, file: !262, line: 69, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !262, line: 116, size: 384, elements: !362)
!362 = !{!363, !367, !396, !3782, !3810, !3814}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !361, file: !262, line: 117, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !269}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !361, file: !262, line: 118, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !371, line: 254, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!372 = !{!373, !388}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !370, file: !371, line: 255, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !269, !382, !345}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !248, line: 66, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !379, line: 73, baseType: !380)
!379 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !379, line: 15, baseType: !381)
!381 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !371, line: 30, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !371, line: 31, baseType: !265, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !383, file: !371, line: 32, baseType: !387, size: 16, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !248, line: 24, baseType: !315)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !370, file: !371, line: 256, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!377, !269, !382, !265, !392}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 61, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !379, line: 72, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !379, line: 16, baseType: !395)
!395 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !361, file: !262, line: 119, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !371, line: 84, size: 320, elements: !401)
!401 = !{!402, !403, !407, !3778, !3780}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !371, line: 85, baseType: !265, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !400, file: !371, line: 86, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!387, !269, !382, !125}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !400, file: !371, line: 88, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!387, !269, !411, !125}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !371, line: 175, size: 512, elements: !413)
!413 = !{!414, !415, !416, !417, !3769, !3773, !3774}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !412, file: !371, line: 176, baseType: !383, size: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !412, file: !371, line: 177, baseType: !392, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !412, file: !371, line: 178, baseType: !229, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !412, file: !371, line: 179, baseType: !418, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !30, line: 472, size: 1536, align: 64, elements: !423)
!423 = !{!424, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3763, !3764, !3765, !3766, !3767, !3768}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !422, file: !30, line: 473, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !30, line: 641, size: 4800, elements: !427)
!427 = !{!428, !429, !430, !438, !439, !446, !447, !450, !451, !3534, !3535, !3536, !3537, !3538, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3578, !3581, !3582, !3583, !3600, !3601, !3602, !3603}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !426, file: !30, line: 642, baseType: !387, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !426, file: !30, line: 643, baseType: !315, size: 16, offset: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !426, file: !30, line: 644, baseType: !431, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !432, line: 23, baseType: !433)
!432 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 21, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !433, file: !432, line: 22, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !248, line: 37, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !379, line: 49, baseType: !23)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !426, file: !30, line: 645, baseType: !247, size: 128, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !426, file: !30, line: 646, baseType: !440, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !432, line: 28, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 26, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !432, line: 27, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !248, line: 38, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !379, line: 50, baseType: !23)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !426, file: !30, line: 647, baseType: !23, size: 32, offset: 224)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !426, file: !30, line: 650, baseType: !448, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !30, line: 607, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !426, file: !30, line: 651, baseType: !448, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !426, file: !30, line: 654, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !30, line: 1966, size: 2048, align: 512, elements: !455)
!455 = !{!456, !3365, !3378, !3382, !3386, !3390, !3394, !3398, !3402, !3406, !3410, !3411, !3415, !3419, !3456, !3485, !3489, !3495, !3499, !3503, !3507, !3511, !3515, !3521, !3525}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !454, file: !30, line: 1967, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !425, !460, !23}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !462, line: 82, size: 1536, elements: !463)
!462 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!463 = !{!464, !465, !475, !483, !484, !503, !504, !508, !521, !3349, !3350, !3351, !3352, !3357, !3358, !3359}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !461, file: !462, line: 84, baseType: !23, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !461, file: !462, line: 85, baseType: !466, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !467, line: 275, baseType: !468)
!467 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !467, line: 275, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !468, file: !467, line: 275, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !467, line: 69, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !467, line: 64, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !472, file: !467, line: 65, baseType: !23, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !461, file: !462, line: 86, baseType: !476, size: 128, offset: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !477, line: 38, size: 128, elements: !478)
!477 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!478 = !{!479, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !477, line: 39, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !476, file: !477, line: 39, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !461, file: !462, line: 87, baseType: !460, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !461, file: !462, line: 88, baseType: !485, size: 128, offset: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !462, line: 49, size: 128, elements: !486)
!486 = !{!487, !500}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !462, line: 50, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !462, line: 50, size: 64, elements: !489)
!489 = !{!490, !496}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !462, line: 51, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !462, line: 51, size: 64, elements: !492)
!492 = !{!493, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !491, file: !462, line: 52, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !305, line: 21, baseType: !189)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !491, file: !462, line: 52, baseType: !494, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !488, file: !462, line: 54, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !305, line: 23, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !186, line: 31, baseType: !499)
!499 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !462, line: 56, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !461, file: !462, line: 89, baseType: !425, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !461, file: !462, line: 91, baseType: !505, size: 256, offset: 448)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !461, file: !462, line: 94, baseType: !509, size: 64, offset: 704)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !510, line: 25, size: 64, elements: !511)
!510 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !510, line: 26, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !510, line: 26, size: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !513, file: !510, line: 28, baseType: !498, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !510, line: 30, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !510, line: 30, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !517, file: !510, line: 31, baseType: !276, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !517, file: !510, line: 32, baseType: !125, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !461, file: !462, line: 95, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !462, line: 128, size: 1024, align: 512, elements: !525)
!525 = !{!526, !530, !531, !538, !544, !548, !552, !556, !557, !561, !565, !3339, !3343}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !524, file: !462, line: 129, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!125, !460, !23}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !524, file: !462, line: 130, baseType: !527, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !524, file: !462, line: 131, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!125, !535, !537}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !524, file: !462, line: 132, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!125, !535, !23, !265, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !524, file: !462, line: 134, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!125, !535}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !524, file: !462, line: 135, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!125, !460}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !524, file: !462, line: 136, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !460}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !524, file: !462, line: 137, baseType: !553, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !524, file: !462, line: 138, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !460, !425}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !524, file: !462, line: 139, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!345, !460, !345, !125}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !524, file: !462, line: 140, baseType: !566, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !3338}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !571, line: 70, size: 256, elements: !572)
!571 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!572 = !{!573, !574, !3334, !3335}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !570, file: !571, line: 71, baseType: !460, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !570, file: !571, line: 72, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !30, line: 1190, size: 10752, elements: !577)
!577 = !{!578, !579, !582, !583, !584, !587, !635, !795, !835, !925, !929, !930, !931, !932, !933, !942, !943, !944, !945, !950, !954, !955, !958, !961, !964, !967, !968, !969, !1010, !3265, !3266, !3267, !3268, !3269, !3270, !3273, !3275, !3282, !3283, !3284, !3285, !3286, !3301, !3302, !3303, !3304, !3305, !3308, !3309, !3310, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !576, file: !30, line: 1191, baseType: !247, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !576, file: !30, line: 1192, baseType: !580, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !248, line: 21, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !248, line: 18, baseType: !494)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !576, file: !30, line: 1193, baseType: !307, size: 8, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !576, file: !30, line: 1194, baseType: !395, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !576, file: !30, line: 1195, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !248, line: 52, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !379, line: 88, baseType: !187)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !576, file: !30, line: 1196, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !30, line: 2366, size: 576, elements: !590)
!590 = !{!591, !592, !593, !599, !603, !607, !611, !612, !613, !623, !627, !628, !629, !631, !632, !633, !634}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !30, line: 2367, baseType: !265, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !589, file: !30, line: 2368, baseType: !125, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !589, file: !30, line: 2376, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!125, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !571, line: 21, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !589, file: !30, line: 2377, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !30, line: 75, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !589, file: !30, line: 2378, baseType: !604, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!460, !588, !125, !265, !229}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !589, file: !30, line: 2380, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !575}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !589, file: !30, line: 2381, baseType: !242, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !30, line: 2382, baseType: !588, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !589, file: !30, line: 2383, baseType: !614, size: 64, offset: 512)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !248, line: 194, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !614, file: !248, line: 195, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !248, line: 198, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !248, line: 199, baseType: !617, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !618, file: !248, line: 199, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !589, file: !30, line: 2385, baseType: !624, offset: 576)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !625, line: 206, elements: !626)
!625 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!626 = !{}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !589, file: !30, line: 2386, baseType: !624, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !589, file: !30, line: 2387, baseType: !624, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !589, file: !30, line: 2388, baseType: !630, offset: 576)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, elements: !346)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !589, file: !30, line: 2390, baseType: !624, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !589, file: !30, line: 2391, baseType: !624, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !589, file: !30, line: 2392, baseType: !624, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !589, file: !30, line: 2393, baseType: !624, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !576, file: !30, line: 1197, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !30, line: 2057, size: 1664, elements: !639)
!639 = !{!640, !644, !648, !649, !653, !659, !663, !664, !665, !669, !673, !677, !678, !679, !685, !690, !691, !698, !699, !700, !701, !705, !709, !777, !793, !794}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !638, file: !30, line: 2058, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!425, !575}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !638, file: !30, line: 2059, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !425}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !638, file: !30, line: 2060, baseType: !645, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !638, file: !30, line: 2062, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !425, !125}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !638, file: !30, line: 2063, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!125, !425, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !30, line: 309, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !638, file: !30, line: 2064, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!125, !425}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !638, file: !30, line: 2065, baseType: !645, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !638, file: !30, line: 2066, baseType: !608, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !638, file: !30, line: 2067, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!125, !575, !125}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !638, file: !30, line: 2068, baseType: !670, size: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!125, !575, !29}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !638, file: !30, line: 2069, baseType: !674, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!125, !575}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !638, file: !30, line: 2070, baseType: !670, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !638, file: !30, line: 2071, baseType: !674, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !638, file: !30, line: 2072, baseType: !680, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!125, !460, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !30, line: 62, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !638, file: !30, line: 2073, baseType: !686, size: 64, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!125, !575, !689, !345}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !638, file: !30, line: 2074, baseType: !608, size: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !638, file: !30, line: 2076, baseType: !692, size: 64, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!125, !695, !460}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !697, line: 24, flags: DIFlagFwdDecl)
!697 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !638, file: !30, line: 2077, baseType: !692, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !638, file: !30, line: 2078, baseType: !692, size: 64, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !638, file: !30, line: 2079, baseType: !692, size: 64, offset: 1216)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !638, file: !30, line: 2081, baseType: !702, size: 64, offset: 1280)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!377, !575, !125, !345, !392, !585}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !638, file: !30, line: 2082, baseType: !706, size: 64, offset: 1344)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!377, !575, !125, !265, !392, !585}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !638, file: !30, line: 2083, baseType: !710, size: 64, offset: 1408)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!713, !425}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !35, line: 296, size: 1664, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !741, !742, !743, !744, !760, !761, !762}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !715, file: !35, line: 297, baseType: !618, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !715, file: !35, line: 298, baseType: !247, size: 128, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !715, file: !35, line: 299, baseType: !247, size: 128, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !715, file: !35, line: 300, baseType: !247, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !715, file: !35, line: 301, baseType: !722, size: 256, offset: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !723, line: 66, size: 256, elements: !724)
!723 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!724 = !{!725, !733, !735, !740}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !722, file: !723, line: 67, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !727, line: 13, baseType: !728)
!727 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !248, line: 181, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 179, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !729, file: !248, line: 180, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !305, line: 22, baseType: !185)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !722, file: !723, line: 68, baseType: !734, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !285, line: 23, baseType: !284)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !722, file: !723, line: 70, baseType: !736, size: 32, offset: 96)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !737, line: 15, size: 32, elements: !738)
!737 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !736, file: !737, line: 20, baseType: !296, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !722, file: !723, line: 72, baseType: !247, size: 128, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !715, file: !35, line: 302, baseType: !276, size: 32, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !715, file: !35, line: 303, baseType: !296, size: 32, offset: 800)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !715, file: !35, line: 304, baseType: !575, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !715, file: !35, line: 305, baseType: !745, size: 64, offset: 896)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !35, line: 68, size: 64, elements: !746)
!746 = !{!747, !759}
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !35, line: 69, baseType: !748, size: 32)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !35, line: 69, size: 32, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !748, file: !35, line: 70, baseType: !431, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !748, file: !35, line: 71, baseType: !440, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !748, file: !35, line: 72, baseType: !753, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !754, line: 24, baseType: !755)
!754 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 22, size: 32, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !755, file: !754, line: 23, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !754, line: 20, baseType: !437)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !35, line: 74, baseType: !34, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !715, file: !35, line: 306, baseType: !585, size: 64, offset: 960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !715, file: !35, line: 307, baseType: !395, size: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !715, file: !35, line: 308, baseType: !763, size: 576, offset: 1088)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !35, line: 205, size: 576, elements: !764)
!764 = !{!765, !767, !768, !769, !770, !771, !772, !773, !776}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !763, file: !35, line: 206, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !35, line: 66, baseType: !187)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !763, file: !35, line: 207, baseType: !766, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !763, file: !35, line: 208, baseType: !766, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !763, file: !35, line: 209, baseType: !766, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !763, file: !35, line: 210, baseType: !766, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !763, file: !35, line: 211, baseType: !766, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !763, file: !35, line: 212, baseType: !766, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !763, file: !35, line: 213, baseType: !774, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !775, line: 8, baseType: !185)
!775 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!776 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !763, file: !35, line: 214, baseType: !774, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !638, file: !30, line: 2085, baseType: !778, size: 64, offset: 1472)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!381, !575, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !783, line: 15, size: 256, elements: !784)
!783 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!784 = !{!785, !787, !788, !789, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !782, file: !783, line: 16, baseType: !786, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !248, line: 154, baseType: !23)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !782, file: !783, line: 19, baseType: !125, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !782, file: !783, line: 26, baseType: !395, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !782, file: !783, line: 33, baseType: !395, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !782, file: !783, line: 36, baseType: !791, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !62, line: 33, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !638, file: !30, line: 2087, baseType: !778, size: 64, offset: 1536)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !638, file: !30, line: 2089, baseType: !608, size: 64, offset: 1600)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !576, file: !30, line: 1198, baseType: !796, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !35, line: 324, size: 704, elements: !799)
!799 = !{!800, !804, !808, !812, !813, !814, !815, !816, !821, !826, !830}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !798, file: !35, line: 325, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!125, !714}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !798, file: !35, line: 326, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!714, !575, !125}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !798, file: !35, line: 327, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !714}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !798, file: !35, line: 328, baseType: !801, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !798, file: !35, line: 329, baseType: !801, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !798, file: !35, line: 330, baseType: !801, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !798, file: !35, line: 331, baseType: !666, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !798, file: !35, line: 334, baseType: !817, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!820, !425}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !798, file: !35, line: 335, baseType: !822, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!125, !425, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !798, file: !35, line: 337, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!125, !425, !820}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !798, file: !35, line: 339, baseType: !831, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!125, !575, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !576, file: !30, line: 1199, baseType: !836, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !35, line: 430, size: 704, elements: !839)
!839 = !{!840, !851, !852, !856, !857, !858, !873, !896, !900, !901, !924}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !838, file: !35, line: 431, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!125, !575, !125, !125, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !847, line: 8, size: 128, elements: !848)
!847 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !846, file: !847, line: 9, baseType: !569, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !846, file: !847, line: 10, baseType: !460, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !838, file: !35, line: 432, baseType: !666, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !838, file: !35, line: 433, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!125, !575, !23}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !838, file: !35, line: 434, baseType: !853, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !838, file: !35, line: 435, baseType: !666, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !838, file: !35, line: 436, baseType: !859, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!125, !575, !125, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !35, line: 417, size: 256, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !863, file: !35, line: 418, baseType: !125, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !863, file: !35, line: 419, baseType: !23, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !863, file: !35, line: 420, baseType: !23, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !863, file: !35, line: 422, baseType: !23, size: 32, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !863, file: !35, line: 423, baseType: !23, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !863, file: !35, line: 424, baseType: !23, size: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !863, file: !35, line: 425, baseType: !23, size: 32, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !863, file: !35, line: 426, baseType: !23, size: 32, offset: 224)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !838, file: !35, line: 437, baseType: !874, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!125, !575, !745, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !35, line: 345, size: 960, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !878, file: !35, line: 346, baseType: !125, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !878, file: !35, line: 347, baseType: !497, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !878, file: !35, line: 348, baseType: !497, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !878, file: !35, line: 349, baseType: !497, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !878, file: !35, line: 350, baseType: !497, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !878, file: !35, line: 351, baseType: !497, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !878, file: !35, line: 352, baseType: !497, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !878, file: !35, line: 353, baseType: !732, size: 64, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !878, file: !35, line: 355, baseType: !732, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !878, file: !35, line: 356, baseType: !125, size: 32, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !878, file: !35, line: 357, baseType: !125, size: 32, offset: 608)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !878, file: !35, line: 358, baseType: !497, size: 64, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !878, file: !35, line: 359, baseType: !497, size: 64, offset: 704)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !878, file: !35, line: 360, baseType: !497, size: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !878, file: !35, line: 361, baseType: !732, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !878, file: !35, line: 362, baseType: !125, size: 32, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !838, file: !35, line: 438, baseType: !897, size: 64, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!125, !575, !834, !877}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !838, file: !35, line: 440, baseType: !874, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !838, file: !35, line: 441, baseType: !902, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!125, !575, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !35, line: 411, size: 1408, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !906, file: !35, line: 412, baseType: !23, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !906, file: !35, line: 413, baseType: !910, size: 1344, offset: 64)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 1344, elements: !346)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !35, line: 397, size: 448, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !923}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !35, line: 398, baseType: !23, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !911, file: !35, line: 399, baseType: !23, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !911, file: !35, line: 401, baseType: !23, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !911, file: !35, line: 402, baseType: !23, size: 32, offset: 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !911, file: !35, line: 403, baseType: !23, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !911, file: !35, line: 404, baseType: !23, size: 32, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !911, file: !35, line: 405, baseType: !23, size: 32, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !911, file: !35, line: 406, baseType: !499, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !911, file: !35, line: 407, baseType: !922, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !248, line: 132, baseType: !497)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !911, file: !35, line: 408, baseType: !922, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !838, file: !35, line: 442, baseType: !853, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !576, file: !30, line: 1200, baseType: !926, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !30, line: 54, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !576, file: !30, line: 1201, baseType: !395, size: 64, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !576, file: !30, line: 1202, baseType: !395, size: 64, offset: 704)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !576, file: !30, line: 1203, baseType: !395, size: 64, offset: 768)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !576, file: !30, line: 1204, baseType: !460, size: 64, offset: 832)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !576, file: !30, line: 1205, baseType: !934, size: 320, offset: 896)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !935, line: 48, size: 320, elements: !936)
!935 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!936 = !{!937, !938, !939, !940, !941}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !934, file: !935, line: 49, baseType: !726, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !934, file: !935, line: 55, baseType: !726, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !934, file: !935, line: 57, baseType: !736, size: 32, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !934, file: !935, line: 59, baseType: !734, size: 32, offset: 160)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !934, file: !935, line: 60, baseType: !247, size: 128, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !576, file: !30, line: 1206, baseType: !125, size: 32, offset: 1216)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !576, file: !30, line: 1207, baseType: !296, size: 32, offset: 1248)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !576, file: !30, line: 1209, baseType: !229, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !576, file: !30, line: 1211, baseType: !946, size: 64, offset: 1344)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !30, line: 1211, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !576, file: !30, line: 1223, baseType: !951, size: 64, offset: 1408)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !477, line: 34, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !951, file: !477, line: 35, baseType: !480, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !576, file: !30, line: 1224, baseType: !247, size: 128, offset: 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !576, file: !30, line: 1225, baseType: !956, size: 64, offset: 1600)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !30, line: 1225, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !576, file: !30, line: 1226, baseType: !959, size: 64, offset: 1664)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !30, line: 1226, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !576, file: !30, line: 1227, baseType: !962, size: 64, offset: 1728)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 50, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !576, file: !30, line: 1228, baseType: !965, size: 64, offset: 1792)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !30, line: 1228, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !576, file: !30, line: 1229, baseType: !618, size: 128, offset: 1856)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !576, file: !30, line: 1230, baseType: !23, size: 32, offset: 1984)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !576, file: !30, line: 1231, baseType: !970, size: 2496, offset: 2048)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !35, line: 521, size: 2496, elements: !971)
!971 = !{!972, !973, !974, !976, !1008}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !35, line: 522, baseType: !23, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !970, file: !35, line: 523, baseType: !934, size: 320, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !970, file: !35, line: 524, baseType: !975, size: 192, offset: 384)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 192, elements: !346)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !970, file: !35, line: 525, baseType: !977, size: 1728, offset: 576)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 1728, elements: !346)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !35, line: 222, size: 576, elements: !979)
!979 = !{!980, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !978, file: !35, line: 223, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !35, line: 445, size: 256, elements: !983)
!983 = !{!984, !985, !998, !999}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !982, file: !35, line: 446, baseType: !125, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !982, file: !35, line: 447, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !35, line: 312, size: 512, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995, !996, !997}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !988, file: !35, line: 313, baseType: !666, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !988, file: !35, line: 314, baseType: !666, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !988, file: !35, line: 315, baseType: !666, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !988, file: !35, line: 316, baseType: !666, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !988, file: !35, line: 317, baseType: !801, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !988, file: !35, line: 318, baseType: !801, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !988, file: !35, line: 319, baseType: !801, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !988, file: !35, line: 320, baseType: !831, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !982, file: !35, line: 448, baseType: !242, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !982, file: !35, line: 449, baseType: !981, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !978, file: !35, line: 224, baseType: !125, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !978, file: !35, line: 226, baseType: !247, size: 128, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !978, file: !35, line: 227, baseType: !395, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !978, file: !35, line: 228, baseType: !23, size: 32, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !978, file: !35, line: 229, baseType: !23, size: 32, offset: 352)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !978, file: !35, line: 230, baseType: !766, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !978, file: !35, line: 231, baseType: !766, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !978, file: !35, line: 232, baseType: !229, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !970, file: !35, line: 526, baseType: !1009, size: 192, offset: 2304)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 192, elements: !346)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !576, file: !30, line: 1233, baseType: !1011, size: 2368, offset: 4544)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !30, line: 1184, size: 2368, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1011, file: !30, line: 1185, baseType: !315, size: 16)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1011, file: !30, line: 1186, baseType: !315, size: 16, offset: 16)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1011, file: !30, line: 1187, baseType: !1016, size: 2304, offset: 64)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 2304, elements: !346)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1018, line: 12, size: 768, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1019 = !{!1020, !1042, !1044, !3263, !3264}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1017, file: !1018, line: 13, baseType: !1021, size: 384)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1022, line: 17, size: 384, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1023 = !{!1024, !1025, !1026, !1033}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1021, file: !1022, line: 18, baseType: !125, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1021, file: !1022, line: 19, baseType: !125, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1021, file: !1022, line: 20, baseType: !1027, size: 192, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1028, line: 41, baseType: !1029)
!1028 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1028, line: 37, size: 192, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1029, file: !1028, line: 38, baseType: !276, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1029, file: !1028, line: 39, baseType: !247, size: 128, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1021, file: !1022, line: 22, baseType: !1034, size: 128, align: 64, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !248, line: 232, size: 128, align: 64, elements: !1035)
!1035 = !{!1036, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1034, file: !248, line: 233, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1034, file: !248, line: 234, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1037}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1017, file: !1018, line: 14, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1017, file: !1018, line: 15, baseType: !1045, size: 64, offset: 448)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1046, line: 16, size: 64, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1045, file: !1046, line: 17, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1051, line: 746, size: 58368, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1052 = !{!1053, !1061, !1062, !1063, !1069, !1070, !1071, !1072, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1150, !1161, !1256, !1260, !1263, !1294, !1295, !1296, !1297, !1308, !1310, !1311, !1312, !1313, !1314, !1315, !1326, !1327, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1344, !1345, !1352, !1353, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2414, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2429, !2430, !2431, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2463, !2469, !2470, !2471, !2472, !2473, !2477, !2480, !2487, !2492, !2495, !2498, !2501, !2504, !2642, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2680, !2681, !2682, !2691, !2699, !2700, !2701, !2702, !2703, !2708, !2709, !2710, !2713, !2714, !2717, !2720, !2723, !2731, !2734, !2735, !2821, !2822, !2823, !2824, !2825, !2831, !2832, !2833, !2834, !2837, !2838, !2841, !2855, !2856, !2859, !2860, !2861, !2864, !2865, !2866, !2867, !2868, !2869, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2901, !2902, !2908, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2920, !2992, !2994, !2995, !2996, !2997, !2998, !3010, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3040, !3041, !3042}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1050, file: !1051, line: 752, baseType: !1054, size: 192)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1055, line: 56, size: 192, elements: !1056)
!1055 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 57, baseType: !395, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1054, file: !1055, line: 58, baseType: !395, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1054, file: !1055, line: 59, baseType: !494, size: 32, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1054, file: !1055, line: 61, baseType: !494, size: 32, offset: 160)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1050, file: !1051, line: 754, baseType: !23, size: 32, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1050, file: !1051, line: 767, baseType: !229, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1050, file: !1051, line: 768, baseType: !1064, size: 32, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1065, line: 113, baseType: !1066)
!1065 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1065, line: 111, size: 32, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1066, file: !1065, line: 112, baseType: !296, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !1051, line: 770, baseType: !23, size: 32, offset: 352)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1050, file: !1051, line: 771, baseType: !23, size: 32, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1050, file: !1051, line: 774, baseType: !125, size: 32, offset: 416)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1050, file: !1051, line: 775, baseType: !1073, size: 128, offset: 448)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1074, line: 58, size: 128, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1075 = !{!1076, !1082, !1087, !1088}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1073, file: !1074, line: 59, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1078, line: 60, size: 64, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1077, file: !1078, line: 61, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1074, line: 60, baseType: !1083, size: 32, offset: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !1074, line: 60, size: 32, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1083, file: !1074, line: 61, baseType: !23, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1083, file: !1074, line: 62, baseType: !296, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1073, file: !1074, line: 65, baseType: !313, size: 16, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1073, file: !1074, line: 65, baseType: !313, size: 16, offset: 112)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1050, file: !1051, line: 776, baseType: !23, size: 32, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1050, file: !1051, line: 777, baseType: !395, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1050, file: !1051, line: 778, baseType: !1049, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1050, file: !1051, line: 787, baseType: !125, size: 32, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1050, file: !1051, line: 788, baseType: !125, size: 32, offset: 800)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1050, file: !1051, line: 790, baseType: !125, size: 32, offset: 832)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1050, file: !1051, line: 792, baseType: !125, size: 32, offset: 864)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1050, file: !1051, line: 793, baseType: !125, size: 32, offset: 896)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1050, file: !1051, line: 794, baseType: !125, size: 32, offset: 928)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1050, file: !1051, line: 795, baseType: !23, size: 32, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1050, file: !1051, line: 797, baseType: !1100, size: 2048, offset: 1024)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1051, line: 551, size: 2048, elements: !1101)
!1101 = !{!1102, !1107, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1129, !1132, !1133, !1134}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1100, file: !1051, line: 553, baseType: !1103, size: 128)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1051, line: 411, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1103, file: !1051, line: 412, baseType: !395, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1103, file: !1051, line: 413, baseType: !494, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1100, file: !1051, line: 554, baseType: !1108, size: 192, align: 64, offset: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1109, line: 5, size: 192, align: 64, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1110 = !{!1111, !1112, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1108, file: !1109, line: 6, baseType: !395, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1108, file: !1109, line: 7, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1108, file: !1109, line: 8, baseType: !1113, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1100, file: !1051, line: 555, baseType: !497, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1100, file: !1051, line: 556, baseType: !497, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1100, file: !1051, line: 558, baseType: !247, size: 128, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1100, file: !1051, line: 559, baseType: !23, size: 32, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1100, file: !1051, line: 561, baseType: !497, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1100, file: !1051, line: 562, baseType: !497, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1100, file: !1051, line: 563, baseType: !497, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1100, file: !1051, line: 564, baseType: !497, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1100, file: !1051, line: 565, baseType: !732, size: 64, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1100, file: !1051, line: 566, baseType: !497, size: 64, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1100, file: !1051, line: 568, baseType: !497, size: 64, offset: 1024)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1100, file: !1051, line: 571, baseType: !125, size: 32, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1100, file: !1051, line: 572, baseType: !1128, size: 64, offset: 1152)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1100, file: !1051, line: 574, baseType: !1130, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1051, line: 49, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1100, file: !1051, line: 576, baseType: !1130, size: 64, offset: 1280)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1100, file: !1051, line: 578, baseType: !395, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1100, file: !1051, line: 588, baseType: !1135, size: 512, align: 512, offset: 1536)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1051, line: 497, size: 512, align: 512, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1135, file: !1051, line: 498, baseType: !497, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1135, file: !1051, line: 499, baseType: !497, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1135, file: !1051, line: 500, baseType: !497, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1135, file: !1051, line: 501, baseType: !494, size: 32, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1135, file: !1051, line: 502, baseType: !494, size: 32, offset: 224)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1135, file: !1051, line: 503, baseType: !395, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1135, file: !1051, line: 504, baseType: !395, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1135, file: !1051, line: 505, baseType: !395, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1135, file: !1051, line: 506, baseType: !1146, size: 64, align: 64, offset: 448)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1051, line: 445, size: 64, align: 64, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1146, file: !1051, line: 446, baseType: !23, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1146, file: !1051, line: 447, baseType: !23, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1050, file: !1051, line: 798, baseType: !1151, size: 384, offset: 3072)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1051, line: 592, size: 384, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1151, file: !1051, line: 593, baseType: !247, size: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1151, file: !1051, line: 594, baseType: !395, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1151, file: !1051, line: 595, baseType: !395, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1151, file: !1051, line: 596, baseType: !23, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1151, file: !1051, line: 597, baseType: !315, size: 16, offset: 288)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1151, file: !1051, line: 598, baseType: !315, size: 16, offset: 304)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1151, file: !1051, line: 600, baseType: !1160, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1050, file: !1051, line: 799, baseType: !1162, size: 1792, offset: 3456)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1051, line: 610, size: 1792, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1253, !1254}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1162, file: !1051, line: 611, baseType: !1108, size: 192, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1162, file: !1051, line: 618, baseType: !497, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1162, file: !1051, line: 619, baseType: !497, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1162, file: !1051, line: 620, baseType: !497, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1162, file: !1051, line: 621, baseType: !497, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1162, file: !1051, line: 622, baseType: !497, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1162, file: !1051, line: 629, baseType: !732, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1162, file: !1051, line: 630, baseType: !497, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1162, file: !1051, line: 631, baseType: !23, size: 32, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1162, file: !1051, line: 653, baseType: !23, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1162, file: !1051, line: 654, baseType: !23, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1162, file: !1051, line: 655, baseType: !23, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1162, file: !1051, line: 656, baseType: !23, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1162, file: !1051, line: 662, baseType: !1178, size: 512, offset: 704)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !41, line: 118, size: 512, elements: !1179)
!1179 = !{!1180, !1188, !1189, !1194, !1249, !1250, !1251, !1252}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1178, file: !41, line: 119, baseType: !1181, size: 256)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1182, line: 9, size: 256, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1181, file: !1182, line: 10, baseType: !1108, size: 192, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1181, file: !1182, line: 11, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1187, line: 29, baseType: !732)
!1187 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1178, file: !41, line: 120, baseType: !1186, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1178, file: !41, line: 121, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!40, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1178, file: !41, line: 122, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !41, line: 159, size: 512, align: 512, elements: !1197)
!1197 = !{!1198, !1223, !1224, !1227, !1232, !1233, !1244, !1248}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1196, file: !41, line: 160, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !41, line: 215, size: 4608, align: 512, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1200, file: !41, line: 216, baseType: !734, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1200, file: !41, line: 217, baseType: !23, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1200, file: !41, line: 218, baseType: !23, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1200, file: !41, line: 219, baseType: !23, size: 32, offset: 96)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1200, file: !41, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1200, file: !41, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1200, file: !41, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1200, file: !41, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1200, file: !41, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1200, file: !41, line: 226, baseType: !23, size: 32, offset: 160)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1200, file: !41, line: 227, baseType: !315, size: 16, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1200, file: !41, line: 228, baseType: !315, size: 16, offset: 208)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1200, file: !41, line: 229, baseType: !23, size: 32, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1200, file: !41, line: 235, baseType: !1186, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1200, file: !41, line: 236, baseType: !1193, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1200, file: !41, line: 237, baseType: !1186, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1200, file: !41, line: 238, baseType: !1193, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1200, file: !41, line: 239, baseType: !1220, size: 4096, align: 512, offset: 512)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 4096, align: 512, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1196, file: !41, line: 161, baseType: !23, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1196, file: !41, line: 162, baseType: !1225, size: 32, offset: 96)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !248, line: 32, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !379, line: 96, baseType: !125)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1196, file: !41, line: 163, baseType: !1228, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !467, line: 274, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !467, line: 274, size: 32, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1229, file: !467, line: 274, baseType: !471, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1196, file: !41, line: 164, baseType: !1193, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1196, file: !41, line: 165, baseType: !1234, size: 128, offset: 256)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1182, line: 14, size: 128, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1234, file: !1182, line: 15, baseType: !1237, size: 128)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1109, line: 26, size: 128, elements: !1238)
!1238 = !{!1239, !1243}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1237, file: !1109, line: 27, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1109, line: 12, size: 64, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1240, file: !1109, line: 13, baseType: !1113, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1237, file: !1109, line: 28, baseType: !1113, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1196, file: !41, line: 166, baseType: !1245, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1186}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1196, file: !41, line: 167, baseType: !1186, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1178, file: !41, line: 123, baseType: !304, size: 8, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1178, file: !41, line: 124, baseType: !304, size: 8, offset: 456)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1178, file: !41, line: 125, baseType: !304, size: 8, offset: 464)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1178, file: !41, line: 126, baseType: !304, size: 8, offset: 472)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1162, file: !1051, line: 671, baseType: !1178, size: 512, offset: 1216)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1162, file: !1051, line: 679, baseType: !1255, size: 64, offset: 1728)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1050, file: !1051, line: 800, baseType: !1257, size: 64, offset: 5248)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1051, line: 800, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1050, file: !1051, line: 809, baseType: !1261, size: 64, offset: 5312)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1051, line: 70, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1050, file: !1051, line: 825, baseType: !1264, size: 2048, align: 512, offset: 5632)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1051, line: 509, size: 2048, align: 512, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1264, file: !1051, line: 511, baseType: !497, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1264, file: !1051, line: 512, baseType: !497, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1264, file: !1051, line: 513, baseType: !497, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1264, file: !1051, line: 514, baseType: !497, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1264, file: !1051, line: 515, baseType: !497, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1264, file: !1051, line: 516, baseType: !497, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1264, file: !1051, line: 518, baseType: !497, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1264, file: !1051, line: 519, baseType: !497, size: 64, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1264, file: !1051, line: 520, baseType: !732, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1264, file: !1051, line: 522, baseType: !497, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1264, file: !1051, line: 523, baseType: !497, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1264, file: !1051, line: 524, baseType: !732, size: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1264, file: !1051, line: 526, baseType: !732, size: 64, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1264, file: !1051, line: 527, baseType: !497, size: 64, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1264, file: !1051, line: 529, baseType: !497, size: 64, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1264, file: !1051, line: 530, baseType: !497, size: 64, offset: 960)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1264, file: !1051, line: 531, baseType: !497, size: 64, offset: 1024)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1264, file: !1051, line: 532, baseType: !497, size: 64, offset: 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1264, file: !1051, line: 533, baseType: !497, size: 64, offset: 1152)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1264, file: !1051, line: 535, baseType: !497, size: 64, offset: 1216)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1264, file: !1051, line: 536, baseType: !497, size: 64, offset: 1280)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1264, file: !1051, line: 537, baseType: !497, size: 64, offset: 1344)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1264, file: !1051, line: 538, baseType: !497, size: 64, offset: 1408)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1264, file: !1051, line: 539, baseType: !497, size: 64, offset: 1472)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1264, file: !1051, line: 540, baseType: !497, size: 64, offset: 1536)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1264, file: !1051, line: 541, baseType: !497, size: 64, offset: 1600)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1264, file: !1051, line: 542, baseType: !497, size: 64, offset: 1664)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1264, file: !1051, line: 543, baseType: !497, size: 64, offset: 1728)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1050, file: !1051, line: 833, baseType: !23, size: 32, offset: 7680)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1050, file: !1051, line: 836, baseType: !23, size: 32, offset: 7712)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1050, file: !1051, line: 837, baseType: !125, size: 32, offset: 7744)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1050, file: !1051, line: 838, baseType: !1298, size: 64, offset: 7808)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1301, line: 19, baseType: !1302)
!1301 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1301, line: 19, size: 64, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1302, file: !1301, line: 19, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 64, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 1)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1050, file: !1051, line: 839, baseType: !1309, size: 64, offset: 7872)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1050, file: !1051, line: 840, baseType: !1300, size: 64, offset: 7936)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1050, file: !1051, line: 841, baseType: !229, size: 64, offset: 8000)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1050, file: !1051, line: 843, baseType: !315, size: 16, offset: 8064)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1050, file: !1051, line: 845, baseType: !315, size: 16, offset: 8080)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1050, file: !1051, line: 848, baseType: !125, size: 32, offset: 8096)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1050, file: !1051, line: 849, baseType: !1316, size: 32, offset: 8128)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1051, line: 718, size: 32, elements: !1317)
!1317 = !{!1318, !1325}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1316, file: !1051, line: 724, baseType: !1319, size: 32)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1051, line: 719, size: 32, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1319, file: !1051, line: 720, baseType: !304, size: 8)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1319, file: !1051, line: 721, baseType: !304, size: 8, offset: 8)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1319, file: !1051, line: 722, baseType: !304, size: 8, offset: 16)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1319, file: !1051, line: 723, baseType: !304, size: 8, offset: 24)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1316, file: !1051, line: 725, baseType: !494, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1050, file: !1051, line: 850, baseType: !247, size: 128, offset: 8192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1050, file: !1051, line: 851, baseType: !1328, size: 64, offset: 8320)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1051, line: 60, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1050, file: !1051, line: 855, baseType: !395, size: 64, offset: 8384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1050, file: !1051, line: 856, baseType: !304, size: 8, offset: 8448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1050, file: !1051, line: 857, baseType: !304, size: 8, offset: 8456)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1050, file: !1051, line: 858, baseType: !125, size: 32, offset: 8480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1050, file: !1051, line: 859, baseType: !247, size: 128, offset: 8512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1050, file: !1051, line: 860, baseType: !125, size: 32, offset: 8640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1050, file: !1051, line: 861, baseType: !247, size: 128, offset: 8704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1050, file: !1051, line: 873, baseType: !1338, size: 256, offset: 8832)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1051, line: 376, size: 256, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1338, file: !1051, line: 381, baseType: !395, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1338, file: !1051, line: 384, baseType: !499, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1338, file: !1051, line: 389, baseType: !499, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1338, file: !1051, line: 392, baseType: !499, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1050, file: !1051, line: 875, baseType: !247, size: 128, offset: 9088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1050, file: !1051, line: 877, baseType: !1346, size: 320, offset: 9216)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1347, line: 86, size: 320, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1346, file: !1347, line: 87, baseType: !125, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1346, file: !1347, line: 88, baseType: !247, size: 128, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1346, file: !1347, line: 89, baseType: !247, size: 128, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1050, file: !1051, line: 878, baseType: !1108, size: 192, align: 64, offset: 9536)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1050, file: !1051, line: 881, baseType: !1354, size: 64, offset: 9728)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !62, line: 733, size: 10240, elements: !1356)
!1356 = !{!1357, !2328}
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !62, line: 734, baseType: !1358, size: 10240)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1355, file: !62, line: 734, size: 10240, elements: !1359)
!1359 = !{!1360, !1364, !1377, !2192, !2193, !2194, !2195, !2196, !2197, !2204, !2205, !2206, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2245, !2247, !2250, !2297, !2298, !2299, !2302, !2303, !2304, !2307, !2308, !2309, !2315, !2316}
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !62, line: 739, baseType: !1361, size: 512, align: 512)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1358, file: !62, line: 739, size: 512, align: 512, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1361, file: !62, line: 747, baseType: !296, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1358, file: !62, line: 750, baseType: !1365, size: 128, offset: 512)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1366, line: 218, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1367 = !{!1368, !1375, !1376}
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1366, line: 219, baseType: !1369, size: 32)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !1366, line: 219, size: 32, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1369, file: !1366, line: 220, baseType: !276, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1369, file: !1366, line: 221, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1366, line: 197, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1366, line: 197, elements: !626)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1365, file: !1366, line: 223, baseType: !23, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1365, file: !1366, line: 224, baseType: !229, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1358, file: !62, line: 752, baseType: !1378, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!395, !1381, !395, !395, !395, !395}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !30, line: 994, size: 1856, align: 64, elements: !1383)
!1383 = !{!1384, !1390, !1391, !1393, !1394, !1395, !1396, !1397, !1447, !1642, !1651, !1652, !1653, !2182, !2183, !2184, !2185, !2187, !2188, !2191}
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !30, line: 995, baseType: !1385, size: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !30, line: 995, size: 128, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1385, file: !30, line: 996, baseType: !1077, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1385, file: !30, line: 997, baseType: !1034, size: 128, align: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1385, file: !30, line: 998, baseType: !23, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1382, file: !30, line: 1005, baseType: !276, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1382, file: !30, line: 1006, baseType: !1392, size: 32, offset: 160)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !248, line: 156, baseType: !23)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1382, file: !30, line: 1007, baseType: !726, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1382, file: !30, line: 1008, baseType: !722, size: 256, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1382, file: !30, line: 1009, baseType: !585, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1382, file: !30, line: 1010, baseType: !23, size: 32, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1382, file: !30, line: 1011, baseType: !1398, size: 256, offset: 640)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !30, line: 948, size: 256, elements: !1399)
!1399 = !{!1400, !1421, !1443, !1444, !1445, !1446}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !30, line: 949, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1402, line: 34, baseType: !1403)
!1402 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1402, line: 25, size: 64, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1403, file: !1402, line: 26, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1407, line: 27, baseType: !1408)
!1407 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1407, line: 13, size: 64, elements: !1409)
!1409 = !{!1410, !1420}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1407, line: 14, baseType: !1411, size: 32)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1407, line: 14, size: 32, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1411, file: !1407, line: 15, baseType: !296, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1407, line: 16, baseType: !1415, size: 32)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !1407, line: 16, size: 32, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1415, file: !1407, line: 18, baseType: !304, size: 8)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1415, file: !1407, line: 19, baseType: !1419, size: 24, offset: 8)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 24, elements: !346)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1408, file: !1407, line: 26, baseType: !288, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1398, file: !30, line: 950, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1430, !1431, !1432, !1433}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1423, file: !46, line: 61, baseType: !1064, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1423, file: !46, line: 62, baseType: !23, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1423, file: !46, line: 63, baseType: !276, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1423, file: !46, line: 65, baseType: !1429, size: 256, offset: 128)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 256, elements: !201)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1423, file: !46, line: 66, baseType: !614, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1423, file: !46, line: 68, baseType: !1027, size: 192, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1423, file: !46, line: 69, baseType: !1034, size: 128, align: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1423, file: !46, line: 70, baseType: !1434, offset: 768)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, elements: !1441)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1435, file: !46, line: 55, baseType: !125, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1435, file: !46, line: 56, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1441 = !{!1442}
!1442 = !DISubrange(count: -1)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1398, file: !30, line: 951, baseType: !45, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1398, file: !30, line: 952, baseType: !431, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1398, file: !30, line: 952, baseType: !431, size: 32, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1398, file: !30, line: 953, baseType: !125, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1382, file: !30, line: 1012, baseType: !1448, size: 64, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1451, line: 110, size: 1472, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1469, !1470, !1471, !1472, !1473, !1474, !1587, !1588, !1589, !1590, !1591, !1622, !1625, !1629, !1637}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1450, file: !1451, line: 111, baseType: !726, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1450, file: !1451, line: 112, baseType: !431, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1450, file: !1451, line: 113, baseType: !440, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1450, file: !1451, line: 114, baseType: !431, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1450, file: !1451, line: 115, baseType: !440, size: 32, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1450, file: !1451, line: 116, baseType: !431, size: 32, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1450, file: !1451, line: 117, baseType: !440, size: 32, offset: 224)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1450, file: !1451, line: 118, baseType: !431, size: 32, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1450, file: !1451, line: 119, baseType: !440, size: 32, offset: 288)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1450, file: !1451, line: 120, baseType: !23, size: 32, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1450, file: !1451, line: 121, baseType: !1464, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1465, line: 24, baseType: !1466)
!1465 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 24, size: 64, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1466, file: !1465, line: 24, baseType: !497, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1450, file: !1451, line: 122, baseType: !1464, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1450, file: !1451, line: 123, baseType: !1464, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1450, file: !1451, line: 124, baseType: !1464, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1450, file: !1451, line: 125, baseType: !1464, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1450, file: !1451, line: 127, baseType: !307, size: 8, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1450, file: !1451, line: 129, baseType: !1475, size: 64, offset: 768)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1477, line: 195, size: 1728, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1478 = !{!1479, !1480, !1485, !1490, !1491, !1494, !1495, !1500, !1501, !1502, !1503, !1506, !1507, !1508, !1510, !1511, !1551, !1572}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1476, file: !1477, line: 196, baseType: !1064, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1476, file: !1477, line: 197, baseType: !1481, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1477, line: 28, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !248, line: 104, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !305, line: 20, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !186, line: 26, baseType: !125)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1477, line: 198, baseType: !1486, size: 192, offset: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1477, line: 198, size: 192, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1486, file: !1477, line: 199, baseType: !247, size: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1486, file: !1477, line: 200, baseType: !1108, size: 192, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1476, file: !1477, line: 205, baseType: !934, size: 320, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1476, file: !1477, line: 206, baseType: !1492, size: 64, offset: 576)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1477, line: 206, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1476, file: !1477, line: 207, baseType: !229, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1477, line: 208, baseType: !1496, size: 64, offset: 704)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1477, line: 208, size: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1496, file: !1477, line: 209, baseType: !774, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1496, file: !1477, line: 210, baseType: !774, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1476, file: !1477, line: 212, baseType: !774, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1476, file: !1477, line: 213, baseType: !431, size: 32, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1476, file: !1477, line: 214, baseType: !440, size: 32, offset: 864)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1476, file: !1477, line: 215, baseType: !1504, size: 32, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1477, line: 31, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !248, line: 110, baseType: !494)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1476, file: !1477, line: 216, baseType: !315, size: 16, offset: 928)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1476, file: !1477, line: 217, baseType: !315, size: 16, offset: 944)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1476, file: !1477, line: 221, baseType: !1509, size: 16, offset: 960)
!1509 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1476, file: !1477, line: 228, baseType: !395, size: 64, offset: 1024)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1477, line: 245, baseType: !1512, size: 320, offset: 1088)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1477, line: 245, size: 320, elements: !1513)
!1513 = !{!1514, !1543}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1512, file: !1477, line: 246, baseType: !1515, size: 320)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1477, line: 114, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1530, !1533, !1542}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1515, file: !1477, line: 116, baseType: !395, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1477, line: 117, baseType: !1519, size: 64, offset: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1477, line: 117, size: 64, elements: !1520)
!1520 = !{!1521, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1477, line: 118, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1477, line: 118, size: 64, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1522, file: !1477, line: 120, baseType: !313, size: 16)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1522, file: !1477, line: 121, baseType: !1526, size: 48, offset: 16)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 6)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1519, file: !1477, line: 127, baseType: !395, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1515, file: !1477, line: 129, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1477, line: 102, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1515, file: !1477, line: 130, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1477, line: 108, size: 192, elements: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1535, file: !1477, line: 109, baseType: !1034, size: 128, align: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1535, file: !1477, line: 110, baseType: !1064, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1535, file: !1477, line: 111, baseType: !1540, size: 8, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !248, line: 35, baseType: !1541)
!1541 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1515, file: !1477, line: 131, baseType: !265, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1477, line: 247, baseType: !1544, size: 320)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !1477, line: 247, size: 320, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1544, file: !1477, line: 248, baseType: !395, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1544, file: !1477, line: 249, baseType: !395, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1544, file: !1477, line: 250, baseType: !1531, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1544, file: !1477, line: 251, baseType: !1534, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1544, file: !1477, line: 252, baseType: !345, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1477, line: 260, baseType: !1552, size: 256, offset: 1408)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1477, line: 260, size: 256, elements: !1553)
!1553 = !{!1554, !1560}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1552, file: !1477, line: 261, baseType: !1555, size: 256)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1477, line: 134, size: 256, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1555, file: !1477, line: 135, baseType: !229, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1555, file: !1477, line: 136, baseType: !1559, size: 256)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !201)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1477, line: 262, baseType: !1561, size: 256)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !1477, line: 262, size: 256, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1561, file: !1477, line: 264, baseType: !247, size: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1561, file: !1477, line: 265, baseType: !1565, size: 128, offset: 128)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1566, line: 22, size: 128, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1567 = !{!1568, !1571}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1565, file: !1566, line: 23, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1566, line: 23, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1565, file: !1566, line: 24, baseType: !395, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1476, file: !1477, line: 280, baseType: !1573, size: 64, offset: 1664)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1477, line: 176, size: 192, elements: !1575)
!1575 = !{!1576, !1585, !1586}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1574, file: !1477, line: 177, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1477, line: 171, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!125, !1475, !1581, !1583, !1475}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1574, file: !1477, line: 178, baseType: !1475, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1574, file: !1477, line: 179, baseType: !1531, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1450, file: !1451, line: 130, baseType: !1475, size: 64, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1450, file: !1451, line: 131, baseType: !1475, size: 64, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1450, file: !1451, line: 132, baseType: !1475, size: 64, offset: 960)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1450, file: !1451, line: 135, baseType: !229, size: 64, offset: 1024)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1450, file: !1451, line: 137, baseType: !1592, size: 64, offset: 1088)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1594, line: 14, size: 1088, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1595 = !{!1596, !1597, !1606, !1607, !1608, !1609, !1610, !1611}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1593, file: !1594, line: 15, baseType: !1064, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1593, file: !1594, line: 17, baseType: !1598, size: 320, offset: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1599, line: 22, size: 320, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1600 = !{!1601, !1602, !1603, !1604}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !1599, line: 23, baseType: !734, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1598, file: !1599, line: 24, baseType: !732, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1598, file: !1599, line: 26, baseType: !247, size: 128, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1598, file: !1599, line: 28, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1593, file: !1594, line: 19, baseType: !395, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1593, file: !1594, line: 20, baseType: !726, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1593, file: !1594, line: 23, baseType: !618, size: 128, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1593, file: !1594, line: 24, baseType: !431, size: 32, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1593, file: !1594, line: 29, baseType: !726, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1593, file: !1594, line: 36, baseType: !1612, size: 320, offset: 768)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1613, line: 15, size: 320, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1612, file: !1613, line: 16, baseType: !734, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1612, file: !1613, line: 18, baseType: !125, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1612, file: !1613, line: 19, baseType: !125, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1612, file: !1613, line: 20, baseType: !125, size: 32, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1612, file: !1613, line: 21, baseType: !125, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1612, file: !1613, line: 22, baseType: !395, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1612, file: !1613, line: 23, baseType: !395, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1450, file: !1451, line: 138, baseType: !1623, size: 64, offset: 1152)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !432, line: 18, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1450, file: !1451, line: 139, baseType: !1626, size: 64, offset: 1216)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1628, line: 16, flags: DIFlagFwdDecl)
!1628 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1450, file: !1451, line: 140, baseType: !1630, size: 64, offset: 1280)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1451, line: 25, size: 64, elements: !1632)
!1632 = !{!1633, !1634, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1631, file: !1451, line: 26, baseType: !296, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1631, file: !1451, line: 27, baseType: !125, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1631, file: !1451, line: 28, baseType: !1636, offset: 64)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, elements: !1441)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 142, baseType: !1638, size: 128, offset: 1344)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 142, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1638, file: !1451, line: 143, baseType: !125, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1638, file: !1451, line: 144, baseType: !1034, size: 128, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1382, file: !30, line: 1013, baseType: !1643, size: 256, offset: 960)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !30, line: 970, size: 256, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1643, file: !30, line: 971, baseType: !395, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1643, file: !30, line: 972, baseType: !23, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1643, file: !30, line: 973, baseType: !23, size: 32, offset: 96)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1643, file: !30, line: 974, baseType: !23, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1643, file: !30, line: 975, baseType: !23, size: 32, offset: 160)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1643, file: !30, line: 976, baseType: !585, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1382, file: !30, line: 1014, baseType: !846, size: 128, offset: 1216)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1382, file: !30, line: 1015, baseType: !425, size: 64, offset: 1344)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1382, file: !30, line: 1016, baseType: !1654, size: 64, offset: 1408)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !30, line: 1914, size: 2112, elements: !1657)
!1657 = !{!1658, !1659, !1663, !1668, !1672, !2058, !2059, !2065, !2078, !2095, !2099, !2100, !2104, !2105, !2109, !2114, !2115, !2119, !2123, !2129, !2130, !2134, !2135, !2141, !2145, !2149, !2155, !2159, !2163, !2167, !2171, !2172, !2178}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1656, file: !30, line: 1915, baseType: !242, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1656, file: !30, line: 1916, baseType: !1660, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!585, !1381, !585, !125}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1656, file: !30, line: 1917, baseType: !1664, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!377, !1381, !345, !392, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1656, file: !30, line: 1918, baseType: !1669, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!377, !1381, !265, !392, !1667}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1656, file: !30, line: 1919, baseType: !1673, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!377, !1676, !1698}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !30, line: 373, size: 384, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1685, !1686, !1687, !1688}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1677, file: !30, line: 374, baseType: !1381, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1677, file: !30, line: 375, baseType: !585, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1677, file: !30, line: 376, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1676, !381}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1677, file: !30, line: 377, baseType: !229, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1677, file: !30, line: 378, baseType: !125, size: 32, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1677, file: !30, line: 379, baseType: !313, size: 16, offset: 288)
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !30, line: 380, baseType: !1689, size: 64, offset: 320)
!1689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !30, line: 380, size: 64, elements: !1690)
!1690 = !{!1691, !1694}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1689, file: !30, line: 386, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !30, line: 386, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1689, file: !30, line: 395, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!377, !229}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1700, line: 41, size: 320, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1712, !2053}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1699, file: !1700, line: 42, baseType: !304, size: 8)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1699, file: !1700, line: 43, baseType: !1540, size: 8, offset: 8)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1699, file: !1700, line: 44, baseType: !1540, size: 8, offset: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1699, file: !1700, line: 45, baseType: !1540, size: 8, offset: 24)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1699, file: !1700, line: 46, baseType: !1540, size: 8, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 47, baseType: !1708, size: 64, offset: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1700, line: 47, size: 64, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1708, file: !1700, line: 48, baseType: !392, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1708, file: !1700, line: 49, baseType: !125, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 61, baseType: !1713, size: 128, offset: 128)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1700, line: 61, size: 128, elements: !1714)
!1714 = !{!1715, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1713, file: !1700, line: 67, baseType: !1716, size: 128)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1717, line: 17, size: 128, elements: !1718)
!1717 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1716, file: !1717, line: 19, baseType: !229, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1716, file: !1717, line: 20, baseType: !393, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1700, line: 68, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !1700, line: 68, size: 128, elements: !1723)
!1723 = !{!1724, !2052}
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !1700, line: 69, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !1700, line: 69, size: 64, elements: !1726)
!1726 = !{!1727, !1730, !1737, !2043, !2051}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1725, file: !1700, line: 71, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1725, file: !1700, line: 72, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1700, line: 17, size: 128, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1733, file: !1700, line: 18, baseType: !229, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1733, file: !1700, line: 19, baseType: !392, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1725, file: !1700, line: 73, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1741, line: 31, size: 128, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1742 = !{!1743, !2041, !2042}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1740, file: !1741, line: 32, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !62, line: 74, size: 512, align: 128, elements: !1746)
!1746 = !{!1747, !1748, !2035, !2040}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !62, line: 75, baseType: !395, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !62, line: 83, baseType: !1749, size: 320, offset: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !62, line: 83, size: 320, elements: !1750)
!1750 = !{!1751, !1772, !1786, !1790, !2034}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !62, line: 84, baseType: !1752, size: 320)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !62, line: 84, size: 320, elements: !1753)
!1753 = !{!1754, !1765, !1766, !1771}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !62, line: 90, baseType: !1755, size: 128)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !62, line: 90, size: 128, elements: !1756)
!1756 = !{!1757, !1758, !1763, !1764}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1755, file: !62, line: 91, baseType: !247, size: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !62, line: 94, baseType: !1759, size: 128)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !62, line: 94, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1759, file: !62, line: 96, baseType: !229, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1759, file: !62, line: 98, baseType: !23, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1755, file: !62, line: 102, baseType: !247, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1755, file: !62, line: 103, baseType: !247, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1752, file: !62, line: 106, baseType: !421, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !62, line: 107, baseType: !1767, size: 64, offset: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !62, line: 107, size: 64, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1767, file: !62, line: 108, baseType: !395, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1767, file: !62, line: 109, baseType: !395, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1752, file: !62, line: 117, baseType: !395, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !62, line: 119, baseType: !1773, size: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !62, line: 119, size: 320, elements: !1774)
!1774 = !{!1775, !1776, !1779, !1780, !1781}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1773, file: !62, line: 124, baseType: !395, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1773, file: !62, line: 125, baseType: !1777, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !62, line: 125, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1773, file: !62, line: 126, baseType: !395, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1773, file: !62, line: 127, baseType: !395, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !62, line: 128, baseType: !1782, size: 64, offset: 256)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !62, line: 128, size: 64, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1782, file: !62, line: 133, baseType: !395, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1782, file: !62, line: 138, baseType: !726, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !62, line: 141, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !62, line: 141, size: 64, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1787, file: !62, line: 142, baseType: !395, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !62, line: 144, baseType: !1791, size: 128)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !62, line: 144, size: 128, elements: !1792)
!1792 = !{!1793, !2033}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1791, file: !62, line: 146, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1796)
!1796 = !{!1797, !1807, !1828, !1839, !1840, !1841, !1842, !2015, !2016, !2017}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1795, file: !54, line: 127, baseType: !1798, size: 384)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1803, !1804, !1805, !1806}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1798, file: !54, line: 22, baseType: !395, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1798, file: !54, line: 23, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1798, file: !54, line: 24, baseType: !1802, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1798, file: !54, line: 25, baseType: !395, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1798, file: !54, line: 26, baseType: !395, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1798, file: !54, line: 27, baseType: !395, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1795, file: !54, line: 128, baseType: !1808, size: 128, offset: 384)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1809, line: 105, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1808, file: !1809, line: 110, baseType: !395, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1808, file: !1809, line: 118, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1809, line: 95, size: 448, elements: !1815)
!1815 = !{!1816, !1817, !1823, !1824, !1825, !1826, !1827}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1814, file: !1809, line: 96, baseType: !726, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1814, file: !1809, line: 97, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1809, line: 60, baseType: !1820)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1814, file: !1809, line: 98, baseType: !1818, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1814, file: !1809, line: 99, baseType: !1540, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1814, file: !1809, line: 100, baseType: !1540, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1814, file: !1809, line: 101, baseType: !1034, size: 128, align: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1814, file: !1809, line: 102, baseType: !1822, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1795, file: !54, line: 129, baseType: !1829, size: 256, offset: 512)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1830, line: 26, size: 256, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1829, file: !1830, line: 27, baseType: !23, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1829, file: !1830, line: 28, baseType: !1834, size: 192, offset: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1835, line: 43, size: 192, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1834, file: !1835, line: 44, baseType: !734, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1834, file: !1835, line: 45, baseType: !247, size: 128, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1795, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !54, line: 131, baseType: !23, size: 32, offset: 800)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1795, file: !54, line: 132, baseType: !395, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1795, file: !54, line: 133, baseType: !1843, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1846)
!1846 = !{!1847, !1851, !2011}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1845, file: !54, line: 83, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1744}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1845, file: !54, line: 89, baseType: !1852, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !62, line: 1184, baseType: !23)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1858, line: 512, size: 896, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1859 = !{!1860, !1978, !1979, !1986, !1993, !2003, !2004, !2005, !2007, !2009}
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1858, line: 513, baseType: !1861, size: 320)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1857, file: !1858, line: 513, size: 320, elements: !1862)
!1862 = !{!1863, !1974, !1975, !1976, !1977}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1861, file: !1858, line: 514, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !62, line: 625, size: 1344, elements: !1866)
!1866 = !{!1867, !1876, !1877, !1885, !1892, !1893, !1898, !1899, !1904, !1905, !1908, !1967, !1968, !1969, !1970, !1971, !1972}
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !62, line: 628, baseType: !1868, size: 128)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !62, line: 628, size: 128, elements: !1869)
!1869 = !{!1870, !1875}
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !62, line: 629, baseType: !1871, size: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !62, line: 629, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1871, file: !62, line: 631, baseType: !395, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1871, file: !62, line: 632, baseType: !395, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1868, file: !62, line: 635, baseType: !1034, size: 128, align: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1865, file: !62, line: 639, baseType: !1354, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1865, file: !62, line: 640, baseType: !1878, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1879, line: 297, baseType: !1880)
!1879 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1879, line: 297, size: 64, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1880, file: !1879, line: 297, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1884, line: 19, baseType: !395)
!1884 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !62, line: 646, baseType: !1886, size: 64, offset: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !62, line: 646, size: 64, elements: !1887)
!1887 = !{!1888, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1886, file: !62, line: 647, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !62, line: 542, baseType: !395)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1886, file: !62, line: 648, baseType: !1890, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1865, file: !62, line: 666, baseType: !125, size: 32, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1865, file: !62, line: 667, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !62, line: 579, size: 320, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !62, line: 580, baseType: !934, size: 320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1865, file: !62, line: 670, baseType: !1540, size: 8, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1865, file: !62, line: 681, baseType: !1900, size: 256, offset: 512)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !62, line: 678, size: 256, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1900, file: !62, line: 679, baseType: !1108, size: 192, align: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1900, file: !62, line: 680, baseType: !395, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1865, file: !62, line: 689, baseType: !247, size: 128, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1865, file: !62, line: 691, baseType: !1906, size: 64, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !62, line: 691, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1865, file: !62, line: 694, baseType: !1909, size: 64, offset: 960)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1858, line: 563, size: 1024, elements: !1912)
!1912 = !{!1913, !1917, !1918, !1922, !1926, !1930, !1931, !1935, !1939, !1943, !1944, !1945, !1949, !1953, !1959, !1963}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1911, file: !1858, line: 564, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1864}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1911, file: !1858, line: 569, baseType: !1914, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1911, file: !1858, line: 571, baseType: !1919, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!125, !1864, !395}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1911, file: !1858, line: 572, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!125, !1864}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1911, file: !1858, line: 578, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!125, !1864, !395, !395, !395}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1911, file: !1858, line: 580, baseType: !1852, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1911, file: !1858, line: 581, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1855, !1856, !23}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1911, file: !1858, line: 582, baseType: !1936, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1855, !1856, !395, !395}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1911, file: !1858, line: 584, baseType: !1940, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!395, !1864}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1911, file: !1858, line: 588, baseType: !1852, size: 64, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1911, file: !1858, line: 591, baseType: !1852, size: 64, offset: 640)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1911, file: !1858, line: 597, baseType: !1946, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!125, !1864, !395, !229, !125, !125}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1911, file: !1858, line: 603, baseType: !1950, size: 64, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!265, !1864}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1911, file: !1858, line: 613, baseType: !1954, size: 64, offset: 832)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!125, !1864, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !62, line: 717, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1911, file: !1858, line: 625, baseType: !1960, size: 64, offset: 896)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1957, !1864, !395}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1911, file: !1858, line: 633, baseType: !1964, size: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1744, !1864, !395}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1865, file: !62, line: 697, baseType: !395, size: 64, offset: 1024)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1865, file: !62, line: 699, baseType: !1381, size: 64, offset: 1088)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1865, file: !62, line: 700, baseType: !229, size: 64, offset: 1152)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1865, file: !62, line: 711, baseType: !726, size: 64, offset: 1216)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1865, file: !62, line: 717, baseType: !1957, size: 64, offset: 1280)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1865, file: !62, line: 722, baseType: !1973, offset: 1344)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !62, line: 570, elements: !626)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1861, file: !1858, line: 515, baseType: !786, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1861, file: !1858, line: 516, baseType: !395, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1861, file: !1858, line: 517, baseType: !395, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1861, file: !1858, line: 518, baseType: !395, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1857, file: !1858, line: 520, baseType: !61, size: 32, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1857, file: !1858, line: 522, baseType: !1980, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1884, line: 22, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1884, line: 22, size: 64, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1982, file: !1884, line: 22, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1884, line: 15, baseType: !395)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1857, file: !1858, line: 524, baseType: !1987, size: 64, offset: 448)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1879, line: 372, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1879, line: 372, size: 64, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1989, file: !1879, line: 372, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1884, line: 16, baseType: !395)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1858, line: 527, baseType: !1994, size: 64, offset: 512)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !1858, line: 527, size: 64, elements: !1995)
!1995 = !{!1996, !2002}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1994, file: !1858, line: 528, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1884, line: 21, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1884, line: 21, size: 64, elements: !1999)
!1999 = !{!2000}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1998, file: !1884, line: 21, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1884, line: 14, baseType: !395)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1994, file: !1858, line: 529, baseType: !1981, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1857, file: !1858, line: 534, baseType: !1744, size: 64, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1857, file: !1858, line: 535, baseType: !1744, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1857, file: !1858, line: 541, baseType: !2006, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1857, file: !1858, line: 545, baseType: !2008, size: 64, offset: 768)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1857, file: !1858, line: 549, baseType: !2010, size: 64, offset: 832)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1879, line: 520, baseType: !1744)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1845, file: !54, line: 100, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!125, !1794, !395, !395, !125}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1795, file: !54, line: 134, baseType: !229, size: 64, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1795, file: !54, line: 135, baseType: !125, size: 32, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !54, line: 136, baseType: !2018, size: 128, offset: 1088)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1795, file: !54, line: 136, size: 128, elements: !2019)
!2019 = !{!2020, !2026}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2018, file: !54, line: 137, baseType: !2021, size: 128)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2022, line: 6, size: 128, elements: !2023)
!2022 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2021, file: !2022, line: 7, baseType: !497, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2021, file: !2022, line: 8, baseType: !497, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !54, line: 138, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !54, line: 138, elements: !2028)
!2028 = !{!2029, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2027, file: !54, line: 138, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2027, file: !54, line: 138, elements: !626)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2027, file: !54, line: 138, baseType: !2032)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2021, elements: !1441)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1791, file: !62, line: 147, baseType: !229, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1749, file: !62, line: 161, baseType: !1034, size: 128, align: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !62, line: 164, baseType: !2036, size: 32, offset: 384)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !62, line: 164, size: 32, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2036, file: !62, line: 169, baseType: !296, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2036, file: !62, line: 177, baseType: !23, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1745, file: !62, line: 181, baseType: !296, size: 32, offset: 416)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1740, file: !1741, line: 33, baseType: !23, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1740, file: !1741, line: 34, baseType: !23, size: 32, offset: 96)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1725, file: !1700, line: 74, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2046, line: 296, size: 128, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2045, file: !2046, line: 297, baseType: !276, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2045, file: !2046, line: 299, baseType: !786, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2045, file: !2046, line: 300, baseType: !229, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1725, file: !1700, line: 75, baseType: !229, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1722, file: !1700, line: 77, baseType: !392, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 80, baseType: !2054, size: 64, offset: 256)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1700, line: 80, size: 64, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2054, file: !1700, line: 81, baseType: !395, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2054, file: !1700, line: 82, baseType: !585, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1656, file: !30, line: 1920, baseType: !1673, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1656, file: !30, line: 1921, baseType: !2060, size: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!125, !1676, !2063, !23}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !30, line: 53, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1656, file: !30, line: 1923, baseType: !2066, size: 64, offset: 448)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!125, !1381, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !30, line: 1858, size: 128, elements: !2071)
!2071 = !{!2072, !2077}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2070, file: !30, line: 1859, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !30, line: 1855, baseType: !2074)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!1540, !2069, !265, !125, !585, !497, !23}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2070, file: !30, line: 1860, baseType: !585, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1656, file: !30, line: 1924, baseType: !2079, size: 64, offset: 512)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2082, !1381, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2083, line: 59, baseType: !23)
!2083 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2086, line: 37, size: 128, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2087 = !{!2088, !2094}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2085, file: !2086, line: 38, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2086, line: 31, baseType: !2090)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !1381, !2093, !2084}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2085, file: !2086, line: 39, baseType: !2082, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1656, file: !30, line: 1925, baseType: !2096, size: 64, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!381, !1381, !23, !395}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1656, file: !30, line: 1926, baseType: !2096, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1656, file: !30, line: 1927, baseType: !2101, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!125, !1381, !1864}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1656, file: !30, line: 1928, baseType: !395, size: 64, offset: 768)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1656, file: !30, line: 1929, baseType: !2106, size: 64, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!125, !425, !1381}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1656, file: !30, line: 1930, baseType: !2110, size: 64, offset: 896)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!125, !1381, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !30, line: 1061, baseType: !229)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1656, file: !30, line: 1931, baseType: !2106, size: 64, offset: 960)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1656, file: !30, line: 1932, baseType: !2116, size: 64, offset: 1024)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!125, !1381, !585, !585, !125}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1656, file: !30, line: 1933, baseType: !2120, size: 64, offset: 1088)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!125, !125, !1381, !125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1656, file: !30, line: 1934, baseType: !2124, size: 64, offset: 1152)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!125, !1381, !125, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !30, line: 1063, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1656, file: !30, line: 1935, baseType: !1378, size: 64, offset: 1216)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1656, file: !30, line: 1936, baseType: !2131, size: 64, offset: 1280)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!125, !125}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1656, file: !30, line: 1937, baseType: !2124, size: 64, offset: 1344)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1656, file: !30, line: 1938, baseType: !2136, size: 64, offset: 1408)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!377, !2139, !1381, !1667, !392, !23}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1051, line: 59, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1656, file: !30, line: 1939, baseType: !2142, size: 64, offset: 1472)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!377, !1381, !1667, !2139, !392, !23}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1656, file: !30, line: 1940, baseType: !2146, size: 64, offset: 1536)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !1381}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1656, file: !30, line: 1941, baseType: !2150, size: 64, offset: 1600)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!125, !1381, !125, !2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1656, file: !30, line: 1942, baseType: !2156, size: 64, offset: 1664)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!381, !1381, !125, !585, !585}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1656, file: !30, line: 1944, baseType: !2160, size: 64, offset: 1728)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !695, !1381}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1656, file: !30, line: 1948, baseType: !2164, size: 64, offset: 1792)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!377, !1381, !585, !1381, !585, !392, !23}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1656, file: !30, line: 1950, baseType: !2168, size: 64, offset: 1856)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!585, !1381, !585, !1381, !585, !585, !23}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1656, file: !30, line: 1953, baseType: !2116, size: 64, offset: 1920)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1656, file: !30, line: 1954, baseType: !2173, size: 64, offset: 1984)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!125, !2176, !23}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !30, line: 1911, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1656, file: !30, line: 1955, baseType: !2179, size: 64, offset: 2048)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!125, !2176, !2063, !23}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1382, file: !30, line: 1018, baseType: !497, size: 64, offset: 1472)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1382, file: !30, line: 1020, baseType: !229, size: 64, offset: 1536)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1382, file: !30, line: 1023, baseType: !229, size: 64, offset: 1600)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1382, file: !30, line: 1027, baseType: !2186, size: 64, offset: 1664)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1382, file: !30, line: 1029, baseType: !421, size: 64, offset: 1728)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1382, file: !30, line: 1030, baseType: !2189, size: 32, offset: 1792)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2190, line: 8, baseType: !494)
!2190 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1382, file: !30, line: 1031, baseType: !2189, size: 32, offset: 1824)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1358, file: !62, line: 756, baseType: !395, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1358, file: !62, line: 757, baseType: !395, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1358, file: !62, line: 760, baseType: !395, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1358, file: !62, line: 761, baseType: !395, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1358, file: !62, line: 763, baseType: !395, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1358, file: !62, line: 764, baseType: !2198, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1879, line: 299, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1879, line: 299, size: 64, elements: !2201)
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2200, file: !1879, line: 299, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1884, line: 18, baseType: !395)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1358, file: !62, line: 773, baseType: !296, size: 32, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1358, file: !62, line: 785, baseType: !296, size: 32, offset: 1120)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1358, file: !62, line: 795, baseType: !2207, size: 64, offset: 1152)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !62, line: 726, size: 128, elements: !2209)
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2208, file: !62, line: 727, baseType: !497, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2208, file: !62, line: 728, baseType: !125, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1358, file: !62, line: 801, baseType: !395, size: 64, offset: 1216)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1358, file: !62, line: 804, baseType: !726, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1358, file: !62, line: 806, baseType: !125, size: 32, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1358, file: !62, line: 808, baseType: !276, size: 32, offset: 1376)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1358, file: !62, line: 823, baseType: !934, size: 320, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1358, file: !62, line: 825, baseType: !247, size: 128, offset: 1728)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1358, file: !62, line: 845, baseType: !125, size: 32, offset: 1856)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1358, file: !62, line: 849, baseType: !395, size: 64, offset: 1920)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1358, file: !62, line: 850, baseType: !395, size: 64, offset: 1984)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1358, file: !62, line: 852, baseType: !395, size: 64, offset: 2048)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1358, file: !62, line: 853, baseType: !395, size: 64, offset: 2112)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1358, file: !62, line: 854, baseType: !728, size: 64, offset: 2176)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1358, file: !62, line: 855, baseType: !395, size: 64, offset: 2240)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1358, file: !62, line: 856, baseType: !395, size: 64, offset: 2304)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1358, file: !62, line: 857, baseType: !395, size: 64, offset: 2368)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1358, file: !62, line: 858, baseType: !395, size: 64, offset: 2432)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1358, file: !62, line: 865, baseType: !471, size: 32, offset: 2496)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1358, file: !62, line: 867, baseType: !276, size: 32, offset: 2528)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1358, file: !62, line: 869, baseType: !395, size: 64, offset: 2560)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1358, file: !62, line: 869, baseType: !395, size: 64, offset: 2624)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1358, file: !62, line: 869, baseType: !395, size: 64, offset: 2688)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1358, file: !62, line: 869, baseType: !395, size: 64, offset: 2752)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1358, file: !62, line: 870, baseType: !395, size: 64, offset: 2816)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1358, file: !62, line: 870, baseType: !395, size: 64, offset: 2880)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1358, file: !62, line: 870, baseType: !395, size: 64, offset: 2944)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1358, file: !62, line: 871, baseType: !395, size: 64, offset: 3008)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1358, file: !62, line: 871, baseType: !395, size: 64, offset: 3072)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1358, file: !62, line: 871, baseType: !395, size: 64, offset: 3136)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1358, file: !62, line: 871, baseType: !395, size: 64, offset: 3200)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1358, file: !62, line: 873, baseType: !2242, size: 3328, offset: 3264)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 3328, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: 52)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1358, file: !62, line: 875, baseType: !2246, size: 1280, offset: 6592)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1598, size: 1280, elements: !201)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1358, file: !62, line: 877, baseType: !2248, size: 64, offset: 7872)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !62, line: 877, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1358, file: !62, line: 880, baseType: !2251, size: 1088, offset: 7936)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2252, line: 72, baseType: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2252, line: 23, size: 1088, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2262, !2263, !2264, !2265, !2292, !2293, !2294}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2253, file: !2252, line: 28, baseType: !497, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2253, file: !2252, line: 38, baseType: !728, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2253, file: !2252, line: 40, baseType: !395, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2253, file: !2252, line: 43, baseType: !934, size: 320, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2253, file: !2252, line: 44, baseType: !2260, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2252, line: 44, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2253, file: !2252, line: 48, baseType: !395, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2253, file: !2252, line: 59, baseType: !722, size: 256, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2253, file: !2252, line: 60, baseType: !229, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2253, file: !2252, line: 61, baseType: !2266, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2269, line: 13, size: 1216, elements: !2270)
!2269 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2268, file: !2269, line: 14, baseType: !229, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2268, file: !2269, line: 15, baseType: !395, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2268, file: !2269, line: 17, baseType: !395, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2268, file: !2269, line: 17, baseType: !395, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2268, file: !2269, line: 18, baseType: !395, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2268, file: !2269, line: 18, baseType: !395, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2268, file: !2269, line: 19, baseType: !2278, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2268, file: !2269, line: 21, baseType: !381, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2268, file: !2269, line: 23, baseType: !381, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2268, file: !2269, line: 24, baseType: !381, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2268, file: !2269, line: 25, baseType: !381, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2268, file: !2269, line: 26, baseType: !381, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2268, file: !2269, line: 27, baseType: !381, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2268, file: !2269, line: 28, baseType: !381, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2268, file: !2269, line: 29, baseType: !381, size: 64, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2268, file: !2269, line: 30, baseType: !381, size: 64, offset: 960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2268, file: !2269, line: 31, baseType: !381, size: 64, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2268, file: !2269, line: 32, baseType: !381, size: 64, offset: 1088)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2268, file: !2269, line: 33, baseType: !381, size: 64, offset: 1152)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2253, file: !2252, line: 63, baseType: !296, size: 32, offset: 1024)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2253, file: !2252, line: 69, baseType: !313, size: 16, offset: 1056)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2253, file: !2252, line: 70, baseType: !2295, size: 16, offset: 1072)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !305, line: 18, baseType: !2296)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !186, line: 23, baseType: !1509)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1358, file: !62, line: 882, baseType: !395, size: 64, offset: 9024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1358, file: !62, line: 885, baseType: !276, size: 32, offset: 9088)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1358, file: !62, line: 886, baseType: !2300, size: 64, offset: 9152)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !62, line: 732, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1358, file: !62, line: 901, baseType: !1623, size: 64, offset: 9216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1358, file: !62, line: 904, baseType: !1381, size: 64, offset: 9280)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1358, file: !62, line: 906, baseType: !2305, size: 64, offset: 9344)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !62, line: 906, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1358, file: !62, line: 930, baseType: !296, size: 32, offset: 9408)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1358, file: !62, line: 933, baseType: !296, size: 32, offset: 9440)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1358, file: !62, line: 935, baseType: !2310, size: 64, offset: 9472)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !84, line: 103, size: 64, elements: !2311)
!2311 = !{!2312}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2310, file: !84, line: 104, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !84, line: 101, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1358, file: !62, line: 940, baseType: !726, size: 64, offset: 9536)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1358, file: !62, line: 942, baseType: !2317, size: 256, offset: 9600)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2318, line: 98, size: 256, elements: !2319)
!2318 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2319 = !{!2320, !2321, !2322}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2317, file: !2318, line: 99, baseType: !726, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2317, file: !2318, line: 100, baseType: !247, size: 128, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2317, file: !2318, line: 101, baseType: !2323, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2318, line: 21, baseType: !2324)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1355, file: !62, line: 986, baseType: !2329, offset: 10240)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !1441)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1050, file: !1051, line: 882, baseType: !1354, size: 64, offset: 9792)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1050, file: !1051, line: 884, baseType: !125, size: 32, offset: 9856)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1050, file: !1051, line: 885, baseType: !125, size: 32, offset: 9888)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1050, file: !1051, line: 886, baseType: !125, size: 32, offset: 9920)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1050, file: !1051, line: 888, baseType: !125, size: 32, offset: 9952)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1050, file: !1051, line: 890, baseType: !395, size: 64, offset: 9984)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1050, file: !1051, line: 893, baseType: !23, size: 32, offset: 10048)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1050, file: !1051, line: 896, baseType: !23, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1050, file: !1051, line: 897, baseType: !23, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1050, file: !1051, line: 898, baseType: !23, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1050, file: !1051, line: 899, baseType: !23, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1050, file: !1051, line: 919, baseType: !23, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1050, file: !1051, line: 922, baseType: !23, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1050, file: !1051, line: 923, baseType: !23, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1050, file: !1051, line: 925, baseType: !23, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1050, file: !1051, line: 939, baseType: !23, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1050, file: !1051, line: 941, baseType: !23, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1050, file: !1051, line: 944, baseType: !23, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1050, file: !1051, line: 956, baseType: !23, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1050, file: !1051, line: 962, baseType: !23, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1050, file: !1051, line: 966, baseType: !23, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1050, file: !1051, line: 969, baseType: !395, size: 64, offset: 10176)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1050, file: !1051, line: 971, baseType: !2353, size: 448, offset: 10240)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !78, line: 25, size: 448, elements: !2354)
!2354 = !{!2355, !2356, !2361}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2353, file: !78, line: 26, baseType: !395, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2353, file: !78, line: 27, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!381, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !78, line: 28, baseType: !2362, size: 320, offset: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2353, file: !78, line: 28, size: 320, elements: !2363)
!2363 = !{!2364, !2374, !2399}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2362, file: !78, line: 37, baseType: !2365, size: 320)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !78, line: 30, size: 320, elements: !2366)
!2366 = !{!2367, !2369, !2370, !2371, !2372, !2373}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2365, file: !78, line: 31, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2365, file: !78, line: 32, baseType: !494, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !78, line: 33, baseType: !494, size: 32, offset: 96)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2365, file: !78, line: 34, baseType: !494, size: 32, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2365, file: !78, line: 35, baseType: !497, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2365, file: !78, line: 36, baseType: !2368, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2362, file: !78, line: 47, baseType: !2375, size: 192)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !78, line: 39, size: 192, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2398}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2375, file: !78, line: 40, baseType: !1225, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2375, file: !78, line: 41, baseType: !77, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !2375, file: !78, line: 42, baseType: !2380, size: 64, offset: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2375, file: !78, line: 42, size: 64, elements: !2381)
!2381 = !{!2382, !2390}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2380, file: !78, line: 43, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2385, line: 7, size: 128, elements: !2386)
!2385 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2386 = !{!2387, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2384, file: !2385, line: 8, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !379, line: 93, baseType: !187)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2384, file: !2385, line: 9, baseType: !187, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2380, file: !78, line: 44, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2393, line: 7, size: 64, elements: !2394)
!2393 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2394 = !{!2395, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2392, file: !2393, line: 8, baseType: !2396, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2393, line: 5, baseType: !1483)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2392, file: !2393, line: 9, baseType: !1483, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2375, file: !78, line: 46, baseType: !497, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2362, file: !78, line: 55, baseType: !2400, size: 256)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !78, line: 49, size: 256, elements: !2401)
!2401 = !{!2402, !2410, !2411, !2412, !2413}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2400, file: !78, line: 50, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2405, line: 36, size: 64, elements: !2406)
!2405 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2404, file: !2405, line: 37, baseType: !125, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2404, file: !2405, line: 38, baseType: !1509, size: 16, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2404, file: !2405, line: 39, baseType: !1509, size: 16, offset: 48)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2400, file: !78, line: 51, baseType: !125, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2400, file: !78, line: 52, baseType: !125, size: 32, offset: 96)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2400, file: !78, line: 53, baseType: !395, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2400, file: !78, line: 54, baseType: !395, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1050, file: !1051, line: 973, baseType: !2415, size: 32, offset: 10688)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !248, line: 27, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !379, line: 28, baseType: !125)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1050, file: !1051, line: 974, baseType: !2415, size: 32, offset: 10720)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1050, file: !1051, line: 978, baseType: !395, size: 64, offset: 10752)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1050, file: !1051, line: 987, baseType: !1049, size: 64, offset: 10816)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1050, file: !1051, line: 990, baseType: !1049, size: 64, offset: 10880)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1050, file: !1051, line: 995, baseType: !247, size: 128, offset: 10944)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1050, file: !1051, line: 996, baseType: !247, size: 128, offset: 11072)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1050, file: !1051, line: 997, baseType: !1049, size: 64, offset: 11200)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1050, file: !1051, line: 1005, baseType: !247, size: 128, offset: 11264)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1050, file: !1051, line: 1006, baseType: !247, size: 128, offset: 11392)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1050, file: !1051, line: 1009, baseType: !1422, size: 64, offset: 11520)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1050, file: !1051, line: 1010, baseType: !2428, size: 512, offset: 11584)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 512, elements: !201)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1050, file: !1051, line: 1011, baseType: !247, size: 128, offset: 12096)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1050, file: !1051, line: 1012, baseType: !247, size: 128, offset: 12224)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1050, file: !1051, line: 1014, baseType: !2432, size: 64, offset: 12352)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1050, file: !1051, line: 1017, baseType: !689, size: 64, offset: 12416)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1050, file: !1051, line: 1020, baseType: !689, size: 64, offset: 12480)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1050, file: !1051, line: 1023, baseType: !229, size: 64, offset: 12544)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1050, file: !1051, line: 1025, baseType: !497, size: 64, offset: 12608)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1050, file: !1051, line: 1026, baseType: !497, size: 64, offset: 12672)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1050, file: !1051, line: 1031, baseType: !497, size: 64, offset: 12736)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1050, file: !1051, line: 1032, baseType: !2440, size: 192, offset: 12800)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1051, line: 324, size: 192, elements: !2441)
!2441 = !{!2442, !2443, !2444}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2440, file: !1051, line: 326, baseType: !497, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2440, file: !1051, line: 327, baseType: !497, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2440, file: !1051, line: 328, baseType: !734, size: 32, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1050, file: !1051, line: 1041, baseType: !395, size: 64, offset: 12992)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1050, file: !1051, line: 1042, baseType: !395, size: 64, offset: 13056)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1050, file: !1051, line: 1045, baseType: !497, size: 64, offset: 13120)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1050, file: !1051, line: 1048, baseType: !497, size: 64, offset: 13184)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1050, file: !1051, line: 1051, baseType: !395, size: 64, offset: 13248)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1050, file: !1051, line: 1052, baseType: !395, size: 64, offset: 13312)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1050, file: !1051, line: 1055, baseType: !2452, size: 640, offset: 13376)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2453, line: 132, size: 640, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2454 = !{!2455, !2461, !2462}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2452, file: !2453, line: 133, baseType: !2456, size: 576)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2457, size: 576, elements: !346)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2453, line: 117, size: 192, elements: !2458)
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2457, file: !2453, line: 118, baseType: !497, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2457, file: !2453, line: 119, baseType: !1234, size: 128, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2452, file: !2453, line: 134, baseType: !23, size: 32, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2452, file: !2453, line: 135, baseType: !23, size: 32, offset: 608)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1050, file: !1051, line: 1058, baseType: !2464, size: 448, offset: 14016)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2453, line: 144, size: 448, elements: !2465)
!2465 = !{!2466, !2467, !2468}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2464, file: !2453, line: 145, baseType: !1034, size: 128, align: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2464, file: !2453, line: 146, baseType: !722, size: 256, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2464, file: !2453, line: 147, baseType: !23, size: 32, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1050, file: !1051, line: 1064, baseType: !1448, size: 64, offset: 14464)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1050, file: !1051, line: 1067, baseType: !1448, size: 64, offset: 14528)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1050, file: !1051, line: 1070, baseType: !1448, size: 64, offset: 14592)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1050, file: !1051, line: 1074, baseType: !1475, size: 64, offset: 14656)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1050, file: !1051, line: 1084, baseType: !2474, size: 128, offset: 14720)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2475)
!2475 = !{!2476}
!2476 = !DISubrange(count: 16)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1050, file: !1051, line: 1086, baseType: !2478, size: 64, offset: 14848)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1051, line: 55, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1050, file: !1051, line: 1089, baseType: !2481, size: 64, offset: 14912)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2482, line: 12, size: 64, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2483 = !{!2484}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2481, file: !2482, line: 13, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2482, line: 8, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1050, file: !1051, line: 1090, baseType: !2488, size: 128, offset: 14976)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2489, line: 13, size: 128, elements: !2490)
!2489 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2488, file: !2489, line: 14, baseType: !247, size: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1050, file: !1051, line: 1097, baseType: !2493, size: 64, offset: 15104)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1051, line: 50, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1050, file: !1051, line: 1100, baseType: !2496, size: 64, offset: 15168)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1051, line: 1100, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1050, file: !1051, line: 1103, baseType: !2499, size: 64, offset: 15232)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1051, line: 53, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1050, file: !1051, line: 1107, baseType: !2502, size: 64, offset: 15296)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1051, line: 56, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1050, file: !1051, line: 1110, baseType: !2505, size: 64, offset: 15360)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2507, line: 93, size: 8768, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2556, !2565, !2566, !2568, !2569, !2570, !2573, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2611, !2612, !2619, !2629, !2632, !2633, !2636, !2637, !2638, !2639, !2640, !2641}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2506, file: !2507, line: 94, baseType: !1064, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2506, file: !2507, line: 95, baseType: !296, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2506, file: !2507, line: 96, baseType: !125, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2506, file: !2507, line: 97, baseType: !125, size: 32, offset: 96)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2506, file: !2507, line: 98, baseType: !247, size: 128, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2506, file: !2507, line: 100, baseType: !1027, size: 192, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2506, file: !2507, line: 103, baseType: !1049, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2506, file: !2507, line: 106, baseType: !2517, size: 192, offset: 512)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1628, line: 32, size: 192, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2517, file: !1628, line: 33, baseType: !247, size: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2517, file: !1628, line: 34, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2522, line: 25, baseType: !2523)
!2522 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2522, line: 23, size: 64, elements: !2524)
!2524 = !{!2525}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2523, file: !2522, line: 24, baseType: !1305, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2506, file: !2507, line: 109, baseType: !614, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2506, file: !2507, line: 112, baseType: !125, size: 32, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2506, file: !2507, line: 114, baseType: !125, size: 32, offset: 800)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2506, file: !2507, line: 115, baseType: !1049, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2506, file: !2507, line: 118, baseType: !125, size: 32, offset: 896)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !2507, line: 119, baseType: !23, size: 32, offset: 928)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2506, file: !2507, line: 121, baseType: !2533, size: 64, offset: 960)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2507, line: 80, size: 448, elements: !2535)
!2535 = !{!2536, !2537, !2543}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2534, file: !2507, line: 81, baseType: !296, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2534, file: !2507, line: 82, baseType: !2538, size: 128, offset: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2507, line: 75, size: 128, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2538, file: !2507, line: 76, baseType: !1049, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2538, file: !2507, line: 77, baseType: !2542, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2534, file: !2507, line: 83, baseType: !1829, size: 256, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2506, file: !2507, line: 132, baseType: !23, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2506, file: !2507, line: 133, baseType: !23, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2506, file: !2507, line: 138, baseType: !23, size: 32, offset: 1056)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2506, file: !2507, line: 139, baseType: !247, size: 128, offset: 1088)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2506, file: !2507, line: 142, baseType: !1178, size: 512, offset: 1216)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2506, file: !2507, line: 143, baseType: !1186, size: 64, offset: 1728)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2506, file: !2507, line: 150, baseType: !2551, size: 256, offset: 1792)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 256, elements: !173)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2507, line: 38, size: 128, elements: !2553)
!2553 = !{!2554, !2555}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2552, file: !2507, line: 39, baseType: !497, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2552, file: !2507, line: 40, baseType: !497, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2506, file: !2507, line: 156, baseType: !2557, size: 192, offset: 2048)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2507, line: 66, size: 192, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2557, file: !2507, line: 67, baseType: !2560, size: 192)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2507, line: 47, size: 192, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2560, file: !2507, line: 48, baseType: !728, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2560, file: !2507, line: 49, baseType: !728, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2560, file: !2507, line: 50, baseType: !728, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2506, file: !2507, line: 160, baseType: !2452, size: 640, offset: 2240)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2506, file: !2507, line: 163, baseType: !2567, size: 256, offset: 2880)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 256, elements: !201)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2506, file: !2507, line: 169, baseType: !1422, size: 64, offset: 3136)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2506, file: !2507, line: 172, baseType: !125, size: 32, offset: 3200)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2506, file: !2507, line: 174, baseType: !2571, size: 64, offset: 3264)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2507, line: 174, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2506, file: !2507, line: 185, baseType: !2574, size: 64, offset: 3328)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !467, line: 860, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 853, size: 64, elements: !2576)
!2576 = !{!2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2575, file: !467, line: 858, baseType: !466, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2575, file: !467, line: 859, baseType: !276, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2506, file: !2507, line: 186, baseType: !497, size: 64, offset: 3392)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2506, file: !2507, line: 186, baseType: !497, size: 64, offset: 3456)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2506, file: !2507, line: 186, baseType: !497, size: 64, offset: 3520)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2506, file: !2507, line: 186, baseType: !497, size: 64, offset: 3584)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2506, file: !2507, line: 187, baseType: !497, size: 64, offset: 3648)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2506, file: !2507, line: 188, baseType: !497, size: 64, offset: 3712)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2506, file: !2507, line: 189, baseType: !2440, size: 192, offset: 3776)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2506, file: !2507, line: 190, baseType: !395, size: 64, offset: 3968)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2506, file: !2507, line: 190, baseType: !395, size: 64, offset: 4032)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2506, file: !2507, line: 190, baseType: !395, size: 64, offset: 4096)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2506, file: !2507, line: 190, baseType: !395, size: 64, offset: 4160)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2506, file: !2507, line: 191, baseType: !395, size: 64, offset: 4224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2506, file: !2507, line: 191, baseType: !395, size: 64, offset: 4288)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2506, file: !2507, line: 191, baseType: !395, size: 64, offset: 4352)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2506, file: !2507, line: 191, baseType: !395, size: 64, offset: 4416)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2506, file: !2507, line: 192, baseType: !395, size: 64, offset: 4480)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2506, file: !2507, line: 192, baseType: !395, size: 64, offset: 4544)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2506, file: !2507, line: 192, baseType: !395, size: 64, offset: 4608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2506, file: !2507, line: 192, baseType: !395, size: 64, offset: 4672)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2506, file: !2507, line: 193, baseType: !395, size: 64, offset: 4736)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2506, file: !2507, line: 193, baseType: !395, size: 64, offset: 4800)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2506, file: !2507, line: 194, baseType: !2601, size: 448, offset: 4864)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2602, line: 12, size: 448, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2601, file: !2602, line: 15, baseType: !497, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2601, file: !2602, line: 17, baseType: !497, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2601, file: !2602, line: 19, baseType: !497, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2601, file: !2602, line: 21, baseType: !497, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2601, file: !2602, line: 29, baseType: !497, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2601, file: !2602, line: 35, baseType: !497, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2601, file: !2602, line: 44, baseType: !497, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2506, file: !2507, line: 202, baseType: !499, size: 64, offset: 5312)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2506, file: !2507, line: 213, baseType: !2613, size: 2048, offset: 5376)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 2048, elements: !2475)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2615, line: 43, size: 128, elements: !2616)
!2615 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2614, file: !2615, line: 44, baseType: !394, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2614, file: !2615, line: 45, baseType: !394, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2506, file: !2507, line: 216, baseType: !2620, size: 448, offset: 7424)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2507, line: 30, size: 448, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2620, file: !2507, line: 31, baseType: !125, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2620, file: !2507, line: 32, baseType: !381, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2620, file: !2507, line: 33, baseType: !395, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2620, file: !2507, line: 34, baseType: !497, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2620, file: !2507, line: 34, baseType: !497, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2620, file: !2507, line: 35, baseType: !395, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2620, file: !2507, line: 35, baseType: !395, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2506, file: !2507, line: 219, baseType: !2630, size: 64, offset: 7872)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2507, line: 219, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2506, file: !2507, line: 222, baseType: !23, size: 32, offset: 7936)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2506, file: !2507, line: 223, baseType: !2634, size: 64, offset: 8000)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2507, line: 223, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2506, file: !2507, line: 230, baseType: !1540, size: 8, offset: 8064)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2506, file: !2507, line: 231, baseType: !1509, size: 16, offset: 8080)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2506, file: !2507, line: 232, baseType: !1509, size: 16, offset: 8096)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2506, file: !2507, line: 234, baseType: !1354, size: 64, offset: 8128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2506, file: !2507, line: 237, baseType: !722, size: 256, offset: 8192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2506, file: !2507, line: 243, baseType: !934, size: 320, offset: 8448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1050, file: !1051, line: 1111, baseType: !2643, size: 64, offset: 15424)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2507, line: 20, size: 16640, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2644, file: !2507, line: 21, baseType: !276, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2644, file: !2507, line: 22, baseType: !1064, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2644, file: !2507, line: 23, baseType: !1027, size: 192, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2644, file: !2507, line: 24, baseType: !2650, size: 16384, offset: 256)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 16384, elements: !350)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1628, line: 51, size: 256, elements: !2652)
!2652 = !{!2653}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2651, file: !1628, line: 52, baseType: !2654, size: 256)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1628, line: 37, size: 256, elements: !2655)
!2655 = !{!2656, !2663, !2664, !2668}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2654, file: !1628, line: 39, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2658, line: 83, baseType: !2659)
!2658 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2658, line: 82, baseType: !2661)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !125}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2654, file: !1628, line: 40, baseType: !395, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2654, file: !1628, line: 46, baseType: !2665, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2658, line: 86, baseType: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2658, line: 85, baseType: !17)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2654, file: !1628, line: 48, baseType: !2521, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1050, file: !1051, line: 1112, baseType: !2521, size: 64, offset: 15488)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1050, file: !1051, line: 1113, baseType: !2521, size: 64, offset: 15552)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1050, file: !1051, line: 1115, baseType: !2521, size: 64, offset: 15616)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1050, file: !1051, line: 1116, baseType: !2517, size: 192, offset: 15680)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1050, file: !1051, line: 1117, baseType: !395, size: 64, offset: 15872)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1050, file: !1051, line: 1118, baseType: !392, size: 64, offset: 15936)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1050, file: !1051, line: 1119, baseType: !23, size: 32, offset: 16000)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1050, file: !1051, line: 1121, baseType: !1037, size: 64, offset: 16064)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1050, file: !1051, line: 1125, baseType: !2678, size: 64, offset: 16128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1051, line: 43, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1050, file: !1051, line: 1127, baseType: !431, size: 32, offset: 16192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1050, file: !1051, line: 1128, baseType: !23, size: 32, offset: 16224)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1050, file: !1051, line: 1130, baseType: !2683, size: 128, offset: 16256)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2684, line: 37, size: 128, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2685 = !{!2686, !2687, !2688}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2683, file: !2684, line: 38, baseType: !125, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2683, file: !2684, line: 39, baseType: !296, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2683, file: !2684, line: 40, baseType: !2689, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2684, line: 24, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1050, file: !1051, line: 1131, baseType: !2692, size: 256, offset: 16384)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2693, line: 12, size: 256, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2692, file: !2693, line: 13, baseType: !345, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2692, file: !2693, line: 14, baseType: !395, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2692, file: !2693, line: 15, baseType: !395, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2692, file: !2693, line: 16, baseType: !1540, size: 8, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1050, file: !1051, line: 1134, baseType: !497, size: 64, offset: 16640)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1050, file: !1051, line: 1135, baseType: !497, size: 64, offset: 16704)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1050, file: !1051, line: 1138, baseType: !276, size: 32, offset: 16768)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1050, file: !1051, line: 1141, baseType: !734, size: 32, offset: 16800)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1050, file: !1051, line: 1143, baseType: !2704, size: 64, offset: 16832)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1051, line: 735, size: 64, elements: !2705)
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2704, file: !1051, line: 736, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1050, file: !1051, line: 1147, baseType: !1237, size: 128, offset: 16896)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1050, file: !1051, line: 1149, baseType: !1049, size: 64, offset: 17024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1050, file: !1051, line: 1151, baseType: !2711, size: 64, offset: 17088)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1051, line: 1151, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1050, file: !1051, line: 1188, baseType: !229, size: 64, offset: 17152)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1050, file: !1051, line: 1191, baseType: !2715, size: 64, offset: 17216)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1051, line: 44, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1050, file: !1051, line: 1194, baseType: !2718, size: 64, offset: 17280)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1051, line: 45, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1050, file: !1051, line: 1197, baseType: !2721, size: 64, offset: 17344)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1051, line: 61, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1050, file: !1051, line: 1199, baseType: !2724, size: 64, offset: 17408)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2726, line: 99, size: 128, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2727 = !{!2728, !2729, !2730}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2725, file: !2726, line: 100, baseType: !726, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2725, file: !2726, line: 101, baseType: !296, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2725, file: !2726, line: 103, baseType: !315, size: 16, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1050, file: !1051, line: 1202, baseType: !2732, size: 64, offset: 17472)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1051, line: 48, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1050, file: !1051, line: 1205, baseType: !395, size: 64, offset: 17536)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1050, file: !1051, line: 1206, baseType: !2736, size: 64, offset: 17600)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1628, line: 14, baseType: !2738)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1628, line: 12, size: 384, elements: !2739)
!2739 = !{!2740}
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !1628, line: 13, baseType: !2741, size: 384)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !1628, line: 13, size: 384, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2741, file: !1628, line: 13, baseType: !125, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2741, file: !1628, line: 13, baseType: !125, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2741, file: !1628, line: 13, baseType: !125, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2741, file: !1628, line: 13, baseType: !2747, size: 256, offset: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2748, line: 37, size: 256, elements: !2749)
!2748 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2749 = !{!2750, !2755, !2768, !2774, !2783, !2810, !2815}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2747, file: !2748, line: 42, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 39, size: 64, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2751, file: !2748, line: 40, baseType: !2416, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2751, file: !2748, line: 41, baseType: !437, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2747, file: !2748, line: 50, baseType: !2756, size: 192)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 45, size: 192, elements: !2757)
!2757 = !{!2758, !2760, !2761, !2767}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2756, file: !2748, line: 46, baseType: !2759, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !379, line: 95, baseType: !125)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2756, file: !2748, line: 47, baseType: !125, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2756, file: !2748, line: 48, baseType: !2762, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2748, line: 11, baseType: !2763)
!2763 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2748, line: 8, size: 64, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2763, file: !2748, line: 9, baseType: !125, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2763, file: !2748, line: 10, baseType: !229, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2756, file: !2748, line: 49, baseType: !125, size: 32, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2747, file: !2748, line: 57, baseType: !2769, size: 128)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 53, size: 128, elements: !2770)
!2770 = !{!2771, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2769, file: !2748, line: 54, baseType: !2416, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2769, file: !2748, line: 55, baseType: !437, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2769, file: !2748, line: 56, baseType: !2762, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2747, file: !2748, line: 66, baseType: !2775, size: 256)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 60, size: 256, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780, !2782}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2775, file: !2748, line: 61, baseType: !2416, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2775, file: !2748, line: 62, baseType: !437, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2775, file: !2748, line: 63, baseType: !125, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2775, file: !2748, line: 64, baseType: !2781, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !379, line: 94, baseType: !380)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2775, file: !2748, line: 65, baseType: !2781, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2747, file: !2748, line: 105, baseType: !2784, size: 256)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 69, size: 256, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2784, file: !2748, line: 70, baseType: !229, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, scope: !2784, file: !2748, line: 79, baseType: !2788, size: 192, offset: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2784, file: !2748, line: 79, size: 192, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2799, !2804}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2788, file: !2748, line: 81, baseType: !125, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2788, file: !2748, line: 86, baseType: !1509, size: 16)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2788, file: !2748, line: 92, baseType: !2793, size: 192)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2788, file: !2748, line: 88, size: 192, elements: !2794)
!2794 = !{!2795, !2797, !2798}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2793, file: !2748, line: 89, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1221)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2793, file: !2748, line: 90, baseType: !229, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2793, file: !2748, line: 91, baseType: !229, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2788, file: !2748, line: 97, baseType: !2800, size: 96)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2788, file: !2748, line: 94, size: 96, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2800, file: !2748, line: 95, baseType: !2796, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2800, file: !2748, line: 96, baseType: !189, size: 32, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2788, file: !2748, line: 103, baseType: !2805, size: 128)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2788, file: !2748, line: 99, size: 128, elements: !2806)
!2806 = !{!2807, !2808, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2805, file: !2748, line: 100, baseType: !395, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2805, file: !2748, line: 101, baseType: !189, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2805, file: !2748, line: 102, baseType: !189, size: 32, offset: 96)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2747, file: !2748, line: 111, baseType: !2811, size: 128)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 108, size: 128, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2811, file: !2748, line: 109, baseType: !381, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2811, file: !2748, line: 110, baseType: !125, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2747, file: !2748, line: 118, baseType: !2816, size: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 114, size: 128, elements: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2816, file: !2748, line: 115, baseType: !229, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2816, file: !2748, line: 116, baseType: !125, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2816, file: !2748, line: 117, baseType: !23, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1050, file: !1051, line: 1208, baseType: !2601, size: 448, offset: 17664)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1050, file: !1051, line: 1215, baseType: !497, size: 64, offset: 18112)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1050, file: !1051, line: 1217, baseType: !497, size: 64, offset: 18176)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1050, file: !1051, line: 1219, baseType: !497, size: 64, offset: 18240)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1050, file: !1051, line: 1223, baseType: !2826, size: 64, offset: 18304)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2827, line: 99, baseType: !2828)
!2827 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2827, line: 99, size: 64, elements: !2829)
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2828, file: !2827, line: 99, baseType: !1305, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1050, file: !1051, line: 1225, baseType: !466, size: 32, offset: 18368)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1050, file: !1051, line: 1226, baseType: !125, size: 32, offset: 18400)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1050, file: !1051, line: 1227, baseType: !125, size: 32, offset: 18432)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1050, file: !1051, line: 1231, baseType: !2835, size: 64, offset: 18496)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1051, line: 1231, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1050, file: !1051, line: 1233, baseType: !247, size: 128, offset: 18560)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1050, file: !1051, line: 1240, baseType: !2839, size: 64, offset: 18688)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1051, line: 62, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1050, file: !1051, line: 1242, baseType: !2842, size: 64, offset: 18752)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2844, line: 392, size: 96, elements: !2845)
!2844 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2845 = !{!2846, !2852, !2854}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2843, file: !2844, line: 393, baseType: !2847, size: 32)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2844, line: 388, size: 32, elements: !2848)
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2847, file: !2844, line: 389, baseType: !2850, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2851, line: 46, baseType: !494)
!2851 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2843, file: !2844, line: 394, baseType: !2853, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2851, line: 42, baseType: !1483)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2843, file: !2844, line: 395, baseType: !2850, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1050, file: !1051, line: 1244, baseType: !247, size: 128, offset: 18816)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1050, file: !1051, line: 1245, baseType: !2857, size: 64, offset: 18944)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1051, line: 51, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1050, file: !1051, line: 1246, baseType: !722, size: 256, offset: 19008)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1050, file: !1051, line: 1247, baseType: !23, size: 32, offset: 19264)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1050, file: !1051, line: 1250, baseType: !2862, size: 64, offset: 19328)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1051, line: 57, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1050, file: !1051, line: 1251, baseType: !722, size: 256, offset: 19392)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1050, file: !1051, line: 1252, baseType: !247, size: 128, offset: 19648)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1050, file: !1051, line: 1259, baseType: !1957, size: 64, offset: 19776)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1050, file: !1051, line: 1260, baseType: !1509, size: 16, offset: 19840)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1050, file: !1051, line: 1261, baseType: !1509, size: 16, offset: 19856)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1050, file: !1051, line: 1314, baseType: !2870, size: 64, offset: 19904)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2872, line: 62, size: 256, align: 256, elements: !2873)
!2872 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2871, file: !2872, line: 75, baseType: !189, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2871, file: !2872, line: 90, baseType: !189, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2871, file: !2872, line: 112, baseType: !498, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 132, baseType: !189, size: 32, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2871, file: !2872, line: 140, baseType: !189, size: 32, offset: 160)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2871, file: !2872, line: 149, baseType: !189, size: 32, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2871, file: !2872, line: 154, baseType: !2881, offset: 224)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1441)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1050, file: !1051, line: 1315, baseType: !494, size: 32, offset: 19968)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1050, file: !1051, line: 1316, baseType: !494, size: 32, offset: 20000)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1050, file: !1051, line: 1321, baseType: !395, size: 64, offset: 20032)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1050, file: !1051, line: 1325, baseType: !125, size: 32, offset: 20096)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1050, file: !1051, line: 1326, baseType: !125, size: 32, offset: 20128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1050, file: !1051, line: 1327, baseType: !125, size: 32, offset: 20160)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1050, file: !1051, line: 1328, baseType: !125, size: 32, offset: 20192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1050, file: !1051, line: 1329, baseType: !1034, size: 128, align: 64, offset: 20224)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1050, file: !1051, line: 1332, baseType: !2891, size: 128, offset: 20352)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2892, line: 51, size: 128, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2893 = !{!2894, !2899, !2900}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2891, file: !2892, line: 60, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2896, line: 7, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2895, file: !2896, line: 12, baseType: !1302, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2891, file: !2892, line: 63, baseType: !1540, size: 8, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2891, file: !2892, line: 70, baseType: !1540, size: 8, offset: 72)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1050, file: !1051, line: 1335, baseType: !2139, size: 64, offset: 20480)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1050, file: !1051, line: 1337, baseType: !2903, size: 128, offset: 20544)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2892, line: 39, size: 128, elements: !2904)
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2903, file: !2892, line: 40, baseType: !1744, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2903, file: !2892, line: 42, baseType: !189, size: 32, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2903, file: !2892, line: 43, baseType: !189, size: 32, offset: 96)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1050, file: !1051, line: 1340, baseType: !2909, size: 64, offset: 20672)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1051, line: 69, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1050, file: !1051, line: 1351, baseType: !125, size: 32, offset: 20736)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1050, file: !1051, line: 1352, baseType: !125, size: 32, offset: 20768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1050, file: !1051, line: 1354, baseType: !395, size: 64, offset: 20800)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1050, file: !1051, line: 1364, baseType: !497, size: 64, offset: 20864)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1050, file: !1051, line: 1365, baseType: !497, size: 64, offset: 20928)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1050, file: !1051, line: 1412, baseType: !395, size: 64, offset: 20992)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1050, file: !1051, line: 1453, baseType: !2918, size: 64, offset: 21056)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1051, line: 1453, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1050, file: !1051, line: 1457, baseType: !2921, size: 64, offset: 21120)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !84, line: 61, size: 576, elements: !2923)
!2923 = !{!2924, !2925, !2944, !2947, !2948, !2981, !2991}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2922, file: !84, line: 62, baseType: !83, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2922, file: !84, line: 64, baseType: !2926, size: 192, offset: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2922, file: !84, line: 64, size: 192, elements: !2927)
!2927 = !{!2928, !2939}
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !84, line: 65, baseType: !2929, size: 192)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !84, line: 65, size: 192, elements: !2930)
!2930 = !{!2931, !2938}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2929, file: !84, line: 66, baseType: !2932, size: 128)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2933, line: 50, size: 128, elements: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2934 = !{!2935, !2936, !2937}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2932, file: !2933, line: 52, baseType: !395, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2932, file: !2933, line: 54, baseType: !23, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2932, file: !2933, line: 55, baseType: !23, size: 32, offset: 96)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2929, file: !84, line: 67, baseType: !395, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !84, line: 70, baseType: !2940, size: 192)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !84, line: 70, size: 192, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2940, file: !84, line: 71, baseType: !1034, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2940, file: !84, line: 72, baseType: !395, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2922, file: !84, line: 76, baseType: !2945, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !84, line: 76, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2922, file: !84, line: 77, baseType: !395, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2922, file: !84, line: 79, baseType: !2949, size: 64, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2933, line: 25, size: 256, elements: !2951)
!2951 = !{!2952, !2958, !2962}
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !2950, file: !2933, line: 26, baseType: !2953, size: 128)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2950, file: !2933, line: 26, size: 128, elements: !2954)
!2954 = !{!2955, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2953, file: !2933, line: 27, baseType: !2956, size: 128)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 128, elements: !2475)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2953, file: !2933, line: 28, baseType: !2956, size: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2950, file: !2933, line: 31, baseType: !2959, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2933, line: 23, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2950, file: !2933, line: 33, baseType: !2963, size: 64, offset: 192)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2950, file: !2933, line: 33, size: 64, elements: !2964)
!2964 = !{!2965, !2971, !2976}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2963, file: !2933, line: 38, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2933, line: 34, size: 64, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2966, file: !2933, line: 35, baseType: !1483, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2966, file: !2933, line: 36, baseType: !304, size: 8, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2966, file: !2933, line: 37, baseType: !304, size: 8, offset: 40)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2963, file: !2933, line: 42, baseType: !2972, size: 16)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2933, line: 39, size: 16, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2972, file: !2933, line: 40, baseType: !304, size: 8)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2972, file: !2933, line: 41, baseType: !304, size: 8, offset: 8)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2963, file: !2933, line: 46, baseType: !2977, size: 16)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2933, line: 43, size: 16, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2977, file: !2933, line: 44, baseType: !304, size: 8)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2977, file: !2933, line: 45, baseType: !304, size: 8, offset: 8)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2922, file: !84, line: 81, baseType: !2982, size: 64, offset: 448)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !84, line: 85, size: 384, elements: !2984)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2983, file: !84, line: 86, baseType: !2945, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2983, file: !84, line: 87, baseType: !395, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2983, file: !84, line: 88, baseType: !395, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2983, file: !84, line: 89, baseType: !395, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2983, file: !84, line: 90, baseType: !1540, size: 8, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2983, file: !84, line: 92, baseType: !2982, size: 64, offset: 320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2922, file: !84, line: 82, baseType: !23, size: 32, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1050, file: !1051, line: 1463, baseType: !2993, offset: 21184)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1051, line: 739, elements: !626)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1050, file: !1051, line: 1470, baseType: !1034, size: 128, align: 64, offset: 21184)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1050, file: !1051, line: 1471, baseType: !1064, size: 32, offset: 21312)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1050, file: !1051, line: 1472, baseType: !125, size: 32, offset: 21344)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1050, file: !1051, line: 1474, baseType: !1049, size: 64, offset: 21376)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1050, file: !1051, line: 1475, baseType: !2999, size: 320, offset: 21440)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3000, line: 11, size: 320, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3001 = !{!3002, !3003, !3004, !3009}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2999, file: !3000, line: 16, baseType: !618, size: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2999, file: !3000, line: 17, baseType: !395, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2999, file: !3000, line: 18, baseType: !3005, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2999, file: !3000, line: 19, baseType: !494, size: 32, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1050, file: !1051, line: 1478, baseType: !3011, size: 64, offset: 21760)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3013, line: 49, size: 512, elements: !3014)
!3013 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3021, !3022, !3023, !3025}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3012, file: !3013, line: 50, baseType: !3011, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3012, file: !3013, line: 51, baseType: !229, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3012, file: !3013, line: 52, baseType: !395, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3012, file: !3013, line: 53, baseType: !395, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3012, file: !3013, line: 54, baseType: !3020, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3012, file: !3013, line: 56, baseType: !23, size: 32, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3012, file: !3013, line: 58, baseType: !23, size: 32, offset: 352)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3012, file: !3013, line: 59, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !248, line: 159, baseType: !497)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3012, file: !3013, line: 60, baseType: !2278, size: 64, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1050, file: !1051, line: 1482, baseType: !1064, size: 32, offset: 21824)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1050, file: !1051, line: 1489, baseType: !229, size: 64, offset: 21888)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1050, file: !1051, line: 1504, baseType: !229, size: 64, offset: 21952)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1050, file: !1051, line: 1505, baseType: !498, size: 64, offset: 22016)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1050, file: !1051, line: 1506, baseType: !497, size: 64, offset: 22080)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1050, file: !1051, line: 1507, baseType: !498, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1050, file: !1051, line: 1508, baseType: !498, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1050, file: !1051, line: 1509, baseType: !498, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1050, file: !1051, line: 1510, baseType: !1034, size: 128, align: 64, offset: 22208)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1050, file: !1051, line: 1511, baseType: !125, size: 32, offset: 22336)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1050, file: !1051, line: 1515, baseType: !3037, size: 64, offset: 22400)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1078, line: 56, size: 64, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3037, file: !1078, line: 57, baseType: !1081, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1050, file: !1051, line: 1518, baseType: !3037, size: 64, offset: 22464)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1050, file: !1051, line: 1528, baseType: !1034, size: 128, align: 64, offset: 22528)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1050, file: !1051, line: 1552, baseType: !3043, size: 35328, offset: 23040)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3044, line: 430, size: 35328, elements: !3045)
!3044 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3045 = !{!3046, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3075, !3076, !3077, !3078, !3079, !3080, !3083, !3084, !3085, !3086}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3043, file: !3044, line: 432, baseType: !3047, size: 192)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, size: 192, elements: !346)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3049, line: 16, size: 64, elements: !3050)
!3049 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3048, file: !3049, line: 17, baseType: !313, size: 16)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3048, file: !3049, line: 18, baseType: !313, size: 16, offset: 16)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3048, file: !3049, line: 19, baseType: !313, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3048, file: !3049, line: 19, baseType: !313, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3048, file: !3049, line: 19, baseType: !313, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3048, file: !3049, line: 19, baseType: !313, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3048, file: !3049, line: 19, baseType: !313, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3048, file: !3049, line: 20, baseType: !313, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3048, file: !3049, line: 20, baseType: !313, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3048, file: !3049, line: 20, baseType: !313, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3048, file: !3049, line: 20, baseType: !313, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3048, file: !3049, line: 20, baseType: !313, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3048, file: !3049, line: 20, baseType: !313, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3043, file: !3044, line: 436, baseType: !395, size: 64, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3043, file: !3044, line: 440, baseType: !315, size: 16, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3043, file: !3044, line: 441, baseType: !315, size: 16, offset: 272)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3043, file: !3044, line: 442, baseType: !315, size: 16, offset: 288)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3043, file: !3044, line: 443, baseType: !315, size: 16, offset: 304)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3043, file: !3044, line: 447, baseType: !395, size: 64, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3043, file: !3044, line: 448, baseType: !395, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3043, file: !3044, line: 459, baseType: !3072, size: 256, offset: 448)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3073, size: 256, elements: !201)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3044, line: 428, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3043, file: !3044, line: 461, baseType: !395, size: 64, offset: 704)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3043, file: !3044, line: 463, baseType: !395, size: 64, offset: 768)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3043, file: !3044, line: 465, baseType: !395, size: 64, offset: 832)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3043, file: !3044, line: 466, baseType: !395, size: 64, offset: 896)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3043, file: !3044, line: 467, baseType: !395, size: 64, offset: 960)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3043, file: !3044, line: 473, baseType: !3081, size: 64, offset: 1024)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3044, line: 10, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3043, file: !3044, line: 480, baseType: !395, size: 64, offset: 1088)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3043, file: !3044, line: 482, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3043, file: !3044, line: 491, baseType: !494, size: 32, offset: 1184)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3043, file: !3044, line: 501, baseType: !3087, size: 33792, offset: 1536)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3088, line: 448, size: 33792, elements: !3089)
!3088 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3089 = !{!3090, !3091, !3092, !3254, !3255, !3261, !3262}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3087, file: !3088, line: 461, baseType: !23, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3087, file: !3088, line: 468, baseType: !395, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3087, file: !3088, line: 476, baseType: !3093, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3088, line: 356, size: 33280, align: 512, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3094, file: !3088, line: 358, baseType: !23, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3094, file: !3088, line: 361, baseType: !23, size: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3094, file: !3088, line: 364, baseType: !497, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3094, file: !3088, line: 367, baseType: !497, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3094, file: !3088, line: 370, baseType: !497, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3094, file: !3088, line: 373, baseType: !23, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3094, file: !3088, line: 376, baseType: !23, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3094, file: !3088, line: 391, baseType: !23, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3094, file: !3088, line: 394, baseType: !23, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3094, file: !3088, line: 397, baseType: !3106, size: 32768, offset: 512)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3088, line: 348, size: 32768, elements: !3107)
!3107 = !{!3108, !3123, !3160, !3237, !3250}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3106, file: !3088, line: 349, baseType: !3109, size: 896)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3088, line: 12, size: 896, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3122}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3109, file: !3088, line: 13, baseType: !494, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3109, file: !3088, line: 14, baseType: !494, size: 32, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3109, file: !3088, line: 15, baseType: !494, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3109, file: !3088, line: 16, baseType: !494, size: 32, offset: 96)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3109, file: !3088, line: 17, baseType: !494, size: 32, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3109, file: !3088, line: 18, baseType: !494, size: 32, offset: 160)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3109, file: !3088, line: 19, baseType: !494, size: 32, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3109, file: !3088, line: 22, baseType: !3119, size: 640, offset: 224)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 640, elements: !3120)
!3120 = !{!3121}
!3121 = !DISubrange(count: 20)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3109, file: !3088, line: 25, baseType: !494, size: 32, offset: 864)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3106, file: !3088, line: 350, baseType: !3124, size: 4096, align: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3088, line: 34, size: 4096, align: 128, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3145, !3146, !3147, !3149, !3151, !3155}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3124, file: !3088, line: 35, baseType: !313, size: 16)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3124, file: !3088, line: 36, baseType: !313, size: 16, offset: 16)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3124, file: !3088, line: 37, baseType: !313, size: 16, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3124, file: !3088, line: 38, baseType: !313, size: 16, offset: 48)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3088, line: 39, baseType: !3131, size: 128, offset: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !3088, line: 39, size: 128, elements: !3132)
!3132 = !{!3133, !3138}
!3133 = !DIDerivedType(tag: DW_TAG_member, scope: !3131, file: !3088, line: 40, baseType: !3134, size: 128)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3131, file: !3088, line: 40, size: 128, elements: !3135)
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3134, file: !3088, line: 41, baseType: !497, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3134, file: !3088, line: 42, baseType: !497, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3131, file: !3088, line: 44, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3131, file: !3088, line: 44, size: 128, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3139, file: !3088, line: 45, baseType: !494, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3139, file: !3088, line: 46, baseType: !494, size: 32, offset: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3139, file: !3088, line: 47, baseType: !494, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3139, file: !3088, line: 48, baseType: !494, size: 32, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3124, file: !3088, line: 51, baseType: !494, size: 32, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3124, file: !3088, line: 52, baseType: !494, size: 32, offset: 224)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3124, file: !3088, line: 55, baseType: !3148, size: 1024, offset: 256)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 1024, elements: !506)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3124, file: !3088, line: 58, baseType: !3150, size: 2048, offset: 1280)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 2048, elements: !350)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3124, file: !3088, line: 60, baseType: !3152, size: 384, offset: 3328)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 384, elements: !3153)
!3153 = !{!3154}
!3154 = !DISubrange(count: 12)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3088, line: 62, baseType: !3156, size: 384, offset: 3712)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !3088, line: 62, size: 384, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3156, file: !3088, line: 63, baseType: !3152, size: 384)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3156, file: !3088, line: 64, baseType: !3152, size: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3106, file: !3088, line: 351, baseType: !3161, size: 1088)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3088, line: 79, size: 1088, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3236}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3161, file: !3088, line: 80, baseType: !494, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3161, file: !3088, line: 81, baseType: !494, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3161, file: !3088, line: 82, baseType: !494, size: 32, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3161, file: !3088, line: 83, baseType: !494, size: 32, offset: 96)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3161, file: !3088, line: 84, baseType: !494, size: 32, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3161, file: !3088, line: 85, baseType: !494, size: 32, offset: 160)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3161, file: !3088, line: 86, baseType: !494, size: 32, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3161, file: !3088, line: 88, baseType: !3119, size: 640, offset: 224)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3161, file: !3088, line: 89, baseType: !304, size: 8, offset: 864)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3161, file: !3088, line: 90, baseType: !304, size: 8, offset: 872)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3161, file: !3088, line: 91, baseType: !304, size: 8, offset: 880)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3161, file: !3088, line: 92, baseType: !304, size: 8, offset: 888)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3161, file: !3088, line: 93, baseType: !304, size: 8, offset: 896)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3161, file: !3088, line: 94, baseType: !304, size: 8, offset: 904)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3161, file: !3088, line: 95, baseType: !3178, size: 64, offset: 960)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3180, line: 11, size: 128, elements: !3181)
!3180 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3179, file: !3180, line: 12, baseType: !381, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3179, file: !3180, line: 13, baseType: !3184, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3186, line: 103, size: 1344, elements: !3187)
!3186 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3216, !3217, !3218}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3185, file: !3186, line: 109, baseType: !395, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3185, file: !3186, line: 110, baseType: !395, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3185, file: !3186, line: 111, baseType: !395, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3185, file: !3186, line: 112, baseType: !395, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3185, file: !3186, line: 113, baseType: !395, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3185, file: !3186, line: 114, baseType: !395, size: 64, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3185, file: !3186, line: 117, baseType: !395, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3185, file: !3186, line: 118, baseType: !395, size: 64, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3185, file: !3186, line: 119, baseType: !395, size: 64, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3185, file: !3186, line: 120, baseType: !395, size: 64, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3185, file: !3186, line: 121, baseType: !395, size: 64, offset: 640)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3185, file: !3186, line: 122, baseType: !395, size: 64, offset: 704)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3185, file: !3186, line: 123, baseType: !395, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3185, file: !3186, line: 124, baseType: !395, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3185, file: !3186, line: 125, baseType: !395, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3185, file: !3186, line: 139, baseType: !395, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3185, file: !3186, line: 142, baseType: !395, size: 64, offset: 1024)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !3186, line: 144, baseType: !3206, size: 64, offset: 1088)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3185, file: !3186, line: 144, size: 64, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3206, file: !3186, line: 146, baseType: !313, size: 16)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3206, file: !3186, line: 148, baseType: !497, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3206, file: !3186, line: 150, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3186, line: 59, size: 64, elements: !3212)
!3212 = !{!3213, !3214, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3211, file: !3186, line: 61, baseType: !497, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3211, file: !3186, line: 63, baseType: !497, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3211, file: !3186, line: 65, baseType: !497, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3185, file: !3186, line: 153, baseType: !395, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3185, file: !3186, line: 154, baseType: !395, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !3186, line: 156, baseType: !3219, size: 64, offset: 1280)
!3219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3185, file: !3186, line: 156, size: 64, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3219, file: !3186, line: 158, baseType: !313, size: 16)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3219, file: !3186, line: 160, baseType: !497, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3219, file: !3186, line: 162, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3186, line: 69, size: 64, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3224, file: !3186, line: 71, baseType: !497, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3224, file: !3186, line: 73, baseType: !497, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3224, file: !3186, line: 75, baseType: !497, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3224, file: !3186, line: 77, baseType: !497, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3224, file: !3186, line: 80, baseType: !497, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3224, file: !3186, line: 83, baseType: !497, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3224, file: !3186, line: 86, baseType: !497, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3224, file: !3186, line: 88, baseType: !497, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3224, file: !3186, line: 93, baseType: !497, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3224, file: !3186, line: 100, baseType: !497, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3161, file: !3088, line: 96, baseType: !494, size: 32, offset: 1024)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3106, file: !3088, line: 352, baseType: !3238, size: 4608, align: 512)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3088, line: 333, size: 4608, align: 512, elements: !3239)
!3239 = !{!3240, !3241, !3248}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3238, file: !3088, line: 334, baseType: !3124, size: 4096, align: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3238, file: !3088, line: 335, baseType: !3242, size: 512, offset: 4096)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3088, line: 312, size: 512, elements: !3243)
!3243 = !{!3244, !3245, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3242, file: !3088, line: 313, baseType: !497, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3242, file: !3088, line: 314, baseType: !497, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3242, file: !3088, line: 315, baseType: !3247, size: 384, offset: 128)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 384, elements: !1527)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3238, file: !3088, line: 336, baseType: !3249, offset: 4608)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, elements: !1441)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3106, file: !3088, line: 353, baseType: !3251, size: 32768)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 32768, elements: !3252)
!3252 = !{!3253}
!3253 = !DISubrange(count: 4096)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3087, file: !3088, line: 484, baseType: !3093, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3087, file: !3088, line: 491, baseType: !3256, size: 128, offset: 256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3088, line: 404, size: 128, elements: !3257)
!3257 = !{!3258, !3259, !3260}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3256, file: !3088, line: 424, baseType: !497, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3256, file: !3088, line: 432, baseType: !23, size: 32, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3256, file: !3088, line: 440, baseType: !23, size: 32, offset: 96)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3087, file: !3088, line: 498, baseType: !3256, size: 128, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3087, file: !3088, line: 508, baseType: !3094, size: 33280, align: 512, offset: 512)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1017, file: !1018, line: 16, baseType: !1027, size: 192, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1017, file: !1018, line: 17, baseType: !296, size: 32, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !576, file: !30, line: 1240, baseType: !229, size: 64, offset: 6912)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !576, file: !30, line: 1243, baseType: !494, size: 32, offset: 6976)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !576, file: !30, line: 1245, baseType: !774, size: 64, offset: 7040)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !576, file: !30, line: 1246, baseType: !774, size: 64, offset: 7104)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !576, file: !30, line: 1248, baseType: !189, size: 32, offset: 7168)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !576, file: !30, line: 1249, baseType: !3271, size: 64, offset: 7232)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !30, line: 634, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !576, file: !30, line: 1252, baseType: !3274, size: 256, offset: 7296)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !506)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !576, file: !30, line: 1253, baseType: !3276, size: 128, offset: 7552)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3277, line: 21, baseType: !3278)
!3277 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3277, line: 19, size: 128, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3278, file: !3277, line: 20, baseType: !3281, size: 128)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 128, elements: !2475)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !576, file: !30, line: 1255, baseType: !23, size: 32, offset: 7680)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !576, file: !30, line: 1261, baseType: !722, size: 256, offset: 7744)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !576, file: !30, line: 1267, baseType: !265, size: 64, offset: 8000)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !576, file: !30, line: 1269, baseType: !522, size: 64, offset: 8064)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !576, file: !30, line: 1271, baseType: !3287, size: 448, offset: 8128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !783, line: 63, size: 448, elements: !3288)
!3288 = !{!3289, !3294, !3295, !3296, !3297, !3298, !3299}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3287, file: !783, line: 64, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!395, !3293, !781}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3287, file: !783, line: 66, baseType: !3290, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3287, file: !783, line: 69, baseType: !381, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3287, file: !783, line: 70, baseType: !125, size: 32, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3287, file: !783, line: 71, baseType: !23, size: 32, offset: 224)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3287, file: !783, line: 74, baseType: !247, size: 128, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3287, file: !783, line: 85, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !576, file: !30, line: 1274, baseType: !726, size: 64, offset: 8576)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !576, file: !30, line: 1280, baseType: !726, size: 64, offset: 8640)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !576, file: !30, line: 1283, baseType: !125, size: 32, offset: 8704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !576, file: !30, line: 1286, baseType: !2189, size: 32, offset: 8736)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !576, file: !30, line: 1289, baseType: !3306, size: 64, offset: 8768)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2318, line: 18, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !576, file: !30, line: 1290, baseType: !614, size: 64, offset: 8832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !576, file: !30, line: 1297, baseType: !1623, size: 64, offset: 8896)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !576, file: !30, line: 1304, baseType: !3311, size: 64, offset: 8960)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3312, line: 49, size: 64, elements: !3313)
!3312 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3311, file: !3312, line: 50, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3312, line: 41, size: 512, align: 512, elements: !3317)
!3317 = !{!3318, !3319, !3324}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3316, file: !3312, line: 43, baseType: !276, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3316, file: !3312, line: 45, baseType: !3320, size: 192, offset: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3312, line: 29, size: 192, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3320, file: !3312, line: 30, baseType: !247, size: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3320, file: !3312, line: 32, baseType: !381, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3316, file: !3312, line: 46, baseType: !381, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !576, file: !30, line: 1305, baseType: !3311, size: 64, offset: 9024)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !576, file: !30, line: 1306, baseType: !1034, size: 128, align: 64, offset: 9088)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !576, file: !30, line: 1307, baseType: !2317, size: 256, offset: 9216)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !576, file: !30, line: 1309, baseType: !722, size: 256, offset: 9472)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !576, file: !30, line: 1314, baseType: !125, size: 32, offset: 9728)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !576, file: !30, line: 1317, baseType: !276, size: 32, align: 512, offset: 10240)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !576, file: !30, line: 1318, baseType: !247, size: 128, offset: 10304)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !576, file: !30, line: 1320, baseType: !276, size: 32, offset: 10432)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !576, file: !30, line: 1321, baseType: !247, size: 128, offset: 10496)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !570, file: !571, line: 73, baseType: !125, size: 32, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !570, file: !571, line: 74, baseType: !3336, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1465, line: 42, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !524, file: !462, line: 141, baseType: !3340, size: 64, offset: 704)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!125, !844, !1540}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !524, file: !462, line: 142, baseType: !3344, size: 64, offset: 768)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!460, !460, !3347}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !461, file: !462, line: 96, baseType: !575, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !461, file: !462, line: 97, baseType: !395, size: 64, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !461, file: !462, line: 98, baseType: !229, size: 64, offset: 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !462, line: 100, baseType: !3353, size: 128, offset: 1024)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 100, size: 128, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3353, file: !462, line: 101, baseType: !247, size: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3353, file: !462, line: 102, baseType: !2093, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !461, file: !462, line: 104, baseType: !247, size: 128, offset: 1152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !461, file: !462, line: 105, baseType: !247, size: 128, offset: 1280)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !461, file: !462, line: 113, baseType: !3360, size: 128, offset: 1408)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 109, size: 128, elements: !3361)
!3361 = !{!3362, !3363, !3364}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3360, file: !462, line: 110, baseType: !618, size: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3360, file: !462, line: 111, baseType: !476, size: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3360, file: !462, line: 112, baseType: !1034, size: 128, align: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !454, file: !30, line: 1968, baseType: !3366, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!265, !460, !425, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3371, line: 10, size: 128, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3372 = !{!3373, !3377}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3370, file: !3371, line: 11, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !229}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3370, file: !3371, line: 12, baseType: !229, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !454, file: !30, line: 1969, baseType: !3379, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!125, !3336, !425, !125}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !454, file: !30, line: 1970, baseType: !3383, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!448, !425, !125, !1540}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !454, file: !30, line: 1972, baseType: !3387, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!125, !460, !345, !125}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !454, file: !30, line: 1974, baseType: !3391, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!125, !3336, !425, !460, !387, !1540}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !454, file: !30, line: 1976, baseType: !3395, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!125, !460, !425, !460}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !454, file: !30, line: 1977, baseType: !3399, size: 64, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!125, !425, !460}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !454, file: !30, line: 1978, baseType: !3403, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!125, !3336, !425, !460, !265}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !454, file: !30, line: 1980, baseType: !3407, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!125, !3336, !425, !460, !387}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !454, file: !30, line: 1982, baseType: !3399, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !454, file: !30, line: 1983, baseType: !3412, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!125, !3336, !425, !460, !387, !580}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !454, file: !30, line: 1985, baseType: !3416, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!125, !3336, !425, !460, !425, !460, !23}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !454, file: !30, line: 1987, baseType: !3420, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!125, !3336, !460, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !30, line: 226, size: 640, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3438, !3447, !3448, !3453, !3454, !3455}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3424, file: !30, line: 227, baseType: !23, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3424, file: !30, line: 228, baseType: !387, size: 16, offset: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !30, line: 241, baseType: !3429, size: 32, offset: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !30, line: 241, size: 32, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3429, file: !30, line: 242, baseType: !431, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3429, file: !30, line: 243, baseType: !3433, size: 32)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3434, line: 16, baseType: !3435)
!3434 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3434, line: 14, size: 32, elements: !3436)
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3435, file: !3434, line: 15, baseType: !436, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !30, line: 245, baseType: !3439, size: 32, offset: 96)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !30, line: 245, size: 32, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3439, file: !30, line: 246, baseType: !440, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3439, file: !30, line: 247, baseType: !3443, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3434, line: 20, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3434, line: 18, size: 32, elements: !3445)
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3444, file: !3434, line: 19, baseType: !444, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3424, file: !30, line: 249, baseType: !585, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3424, file: !30, line: 250, baseType: !3449, size: 128, offset: 192)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !775, line: 13, size: 128, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3449, file: !775, line: 14, baseType: !774, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3449, file: !775, line: 15, baseType: !381, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3424, file: !30, line: 251, baseType: !3449, size: 128, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3424, file: !30, line: 252, baseType: !3449, size: 128, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3424, file: !30, line: 259, baseType: !1381, size: 64, offset: 576)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !454, file: !30, line: 1988, baseType: !3457, size: 64, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!125, !3336, !844, !3460, !494, !23}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3462, line: 22, size: 1280, elements: !3463)
!3462 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3461, file: !3462, line: 23, baseType: !494, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3461, file: !3462, line: 24, baseType: !387, size: 16, offset: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3461, file: !3462, line: 25, baseType: !23, size: 32, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3461, file: !3462, line: 26, baseType: !1505, size: 32, offset: 96)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3461, file: !3462, line: 27, baseType: !497, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3461, file: !3462, line: 28, baseType: !497, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3461, file: !3462, line: 41, baseType: !497, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3461, file: !3462, line: 42, baseType: !580, size: 32, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3461, file: !3462, line: 43, baseType: !580, size: 32, offset: 352)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3461, file: !3462, line: 44, baseType: !431, size: 32, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3461, file: !3462, line: 45, baseType: !440, size: 32, offset: 416)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3461, file: !3462, line: 46, baseType: !585, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3461, file: !3462, line: 47, baseType: !3449, size: 128, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3461, file: !3462, line: 48, baseType: !3449, size: 128, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3461, file: !3462, line: 49, baseType: !3449, size: 128, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3461, file: !3462, line: 50, baseType: !3449, size: 128, offset: 896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3461, file: !3462, line: 51, baseType: !497, size: 64, offset: 1024)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3461, file: !3462, line: 52, baseType: !497, size: 64, offset: 1088)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3461, file: !3462, line: 53, baseType: !494, size: 32, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3461, file: !3462, line: 54, baseType: !494, size: 32, offset: 1184)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3461, file: !3462, line: 55, baseType: !497, size: 64, offset: 1216)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !454, file: !30, line: 1990, baseType: !3486, size: 64, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!377, !460, !345, !392}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !454, file: !30, line: 1991, baseType: !3490, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!125, !425, !3493, !497, !497}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !30, line: 55, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !454, file: !30, line: 1993, baseType: !3496, size: 64, offset: 1088)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!125, !425, !125}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !454, file: !30, line: 1994, baseType: !3500, size: 64, offset: 1152)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!125, !425, !460, !1381, !23, !387}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !454, file: !30, line: 1997, baseType: !3504, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!125, !3336, !425, !1381, !387}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !454, file: !30, line: 1999, baseType: !3508, size: 64, offset: 1280)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!448, !3336, !460, !125}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !454, file: !30, line: 2001, baseType: !3512, size: 64, offset: 1344)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!125, !3336, !460, !448, !125}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !454, file: !30, line: 2003, baseType: !3516, size: 64, offset: 1408)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!125, !3336, !460, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !30, line: 76, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !454, file: !30, line: 2005, baseType: !3522, size: 64, offset: 1472)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!125, !460, !3519}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !454, file: !30, line: 2006, baseType: !3526, size: 64, offset: 1536)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!3529, !425}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !30, line: 3192, size: 192, elements: !3531)
!3531 = !{!3532, !3533}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3530, file: !30, line: 3193, baseType: !2045, size: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3530, file: !30, line: 3194, baseType: !494, size: 32, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !426, file: !30, line: 655, baseType: !575, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !426, file: !30, line: 656, baseType: !421, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !426, file: !30, line: 659, baseType: !229, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !426, file: !30, line: 663, baseType: !395, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !30, line: 671, baseType: !3539, size: 32, offset: 704)
!3539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !30, line: 671, size: 32, elements: !3540)
!3540 = !{!3541, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3539, file: !30, line: 672, baseType: !3542, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3539, file: !30, line: 673, baseType: !23, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !426, file: !30, line: 675, baseType: !580, size: 32, offset: 736)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !426, file: !30, line: 676, baseType: !585, size: 64, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !426, file: !30, line: 677, baseType: !3449, size: 128, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !426, file: !30, line: 678, baseType: !3449, size: 128, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !426, file: !30, line: 679, baseType: !3449, size: 128, offset: 1088)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !426, file: !30, line: 680, baseType: !276, size: 32, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !426, file: !30, line: 681, baseType: !315, size: 16, offset: 1248)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !426, file: !30, line: 682, baseType: !304, size: 8, offset: 1264)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !426, file: !30, line: 683, baseType: !304, size: 8, offset: 1272)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !426, file: !30, line: 684, baseType: !922, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !426, file: !30, line: 691, baseType: !395, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !426, file: !30, line: 692, baseType: !934, size: 320, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !426, file: !30, line: 694, baseType: !395, size: 64, offset: 1728)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !426, file: !30, line: 695, baseType: !395, size: 64, offset: 1792)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !426, file: !30, line: 697, baseType: !618, size: 128, offset: 1856)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !426, file: !30, line: 698, baseType: !247, size: 128, offset: 1984)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !426, file: !30, line: 707, baseType: !247, size: 128, offset: 2112)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !426, file: !30, line: 708, baseType: !247, size: 128, offset: 2240)
!3562 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !30, line: 709, baseType: !3563, size: 128, offset: 2368)
!3563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !30, line: 709, size: 128, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3563, file: !30, line: 710, baseType: !614, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3563, file: !30, line: 711, baseType: !1034, size: 128, align: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !426, file: !30, line: 713, baseType: !728, size: 64, offset: 2496)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !426, file: !30, line: 714, baseType: !728, size: 64, offset: 2560)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !426, file: !30, line: 715, baseType: !296, size: 32, offset: 2624)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !426, file: !30, line: 716, baseType: !296, size: 32, offset: 2656)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !426, file: !30, line: 717, baseType: !296, size: 32, offset: 2688)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !426, file: !30, line: 719, baseType: !296, size: 32, offset: 2720)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !30, line: 721, baseType: !3574, size: 64, offset: 2752)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !30, line: 721, size: 64, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3574, file: !30, line: 722, baseType: !1654, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3574, file: !30, line: 723, baseType: !645, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !426, file: !30, line: 725, baseType: !3579, size: 64, offset: 2816)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !30, line: 725, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !426, file: !30, line: 726, baseType: !422, size: 1536, align: 64, offset: 2880)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !426, file: !30, line: 727, baseType: !247, size: 128, offset: 4416)
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !30, line: 728, baseType: !3584, size: 64, offset: 4544)
!3584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !30, line: 728, size: 64, elements: !3585)
!3585 = !{!3586, !3587, !3598, !3599}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3584, file: !30, line: 729, baseType: !2139, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3584, file: !30, line: 730, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3590, line: 14, size: 832, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3589, file: !3590, line: 15, baseType: !261, size: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3589, file: !3590, line: 16, baseType: !242, size: 64, offset: 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3589, file: !3590, line: 17, baseType: !1654, size: 64, offset: 576)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3589, file: !3590, line: 18, baseType: !247, size: 128, offset: 640)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3589, file: !3590, line: 19, baseType: !580, size: 32, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3589, file: !3590, line: 20, baseType: !23, size: 32, offset: 800)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3584, file: !30, line: 731, baseType: !345, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3584, file: !30, line: 732, baseType: !23, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !426, file: !30, line: 735, baseType: !189, size: 32, offset: 4608)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !426, file: !30, line: 738, baseType: !189, size: 32, offset: 4640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !426, file: !30, line: 739, baseType: !3271, size: 64, offset: 4672)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !426, file: !30, line: 750, baseType: !229, size: 64, offset: 4736)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !422, file: !30, line: 474, baseType: !2045, size: 128, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !422, file: !30, line: 475, baseType: !934, size: 320, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !422, file: !30, line: 476, baseType: !786, size: 32, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !422, file: !30, line: 477, baseType: !296, size: 32, offset: 544)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !422, file: !30, line: 482, baseType: !1237, size: 128, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !422, file: !30, line: 483, baseType: !395, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !422, file: !30, line: 484, baseType: !395, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !422, file: !30, line: 485, baseType: !3612, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3614)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !30, line: 404, size: 1280, elements: !3615)
!3615 = !{!3616, !3620, !3690, !3694, !3698, !3704, !3708, !3712, !3717, !3721, !3725, !3729, !3730, !3734, !3738, !3742, !3747, !3751, !3758, !3759}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3614, file: !30, line: 405, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!125, !1744, !657}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3614, file: !30, line: 406, baseType: !3621, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!125, !1381, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !62, line: 293, size: 1536, elements: !3626)
!3626 = !{!3627, !3657, !3671}
!3627 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !62, line: 295, baseType: !3628, size: 512)
!3628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3625, file: !62, line: 295, size: 512, elements: !3629)
!3629 = !{!3630, !3656}
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3628, file: !62, line: 296, baseType: !3631, size: 448)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3628, file: !62, line: 296, size: 448, elements: !3632)
!3632 = !{!3633, !3634, !3643, !3644, !3645, !3654, !3655}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3631, file: !62, line: 298, baseType: !395, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, scope: !3631, file: !62, line: 299, baseType: !3635, size: 128, offset: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3631, file: !62, line: 299, size: 128, elements: !3636)
!3636 = !{!3637, !3638}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3635, file: !62, line: 300, baseType: !247, size: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3635, file: !62, line: 302, baseType: !3639, size: 128)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3635, file: !62, line: 302, size: 128, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3639, file: !62, line: 303, baseType: !229, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3639, file: !62, line: 305, baseType: !23, size: 32, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3631, file: !62, line: 310, baseType: !421, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3631, file: !62, line: 311, baseType: !395, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, scope: !3631, file: !62, line: 312, baseType: !3646, size: 64, offset: 320)
!3646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3631, file: !62, line: 312, size: 64, elements: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3646, file: !62, line: 313, baseType: !229, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3646, file: !62, line: 314, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !62, line: 257, baseType: !3651)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 255, size: 64, elements: !3652)
!3652 = !{!3653}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3651, file: !62, line: 256, baseType: !395, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3631, file: !62, line: 316, baseType: !296, size: 32, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3631, file: !62, line: 317, baseType: !296, size: 32, offset: 416)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3628, file: !62, line: 323, baseType: !1745, size: 512, align: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !62, line: 325, baseType: !3658, size: 512, offset: 512)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3625, file: !62, line: 325, size: 512, elements: !3659)
!3659 = !{!3660, !3670}
!3660 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !62, line: 326, baseType: !3661, size: 320)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3658, file: !62, line: 326, size: 320, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3661, file: !62, line: 327, baseType: !395, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3661, file: !62, line: 328, baseType: !395, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3661, file: !62, line: 329, baseType: !395, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3661, file: !62, line: 331, baseType: !296, size: 32, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3661, file: !62, line: 332, baseType: !296, size: 32, offset: 224)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3661, file: !62, line: 333, baseType: !296, size: 32, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3661, file: !62, line: 335, baseType: !23, size: 32, offset: 288)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3658, file: !62, line: 339, baseType: !1745, size: 512, align: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !62, line: 341, baseType: !3672, size: 512, offset: 1024)
!3672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3625, file: !62, line: 341, size: 512, elements: !3673)
!3673 = !{!3674, !3683, !3689}
!3674 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !62, line: 342, baseType: !3675, size: 384)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3672, file: !62, line: 342, size: 384, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3675, file: !62, line: 343, baseType: !395, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3675, file: !62, line: 344, baseType: !395, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3675, file: !62, line: 346, baseType: !229, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3675, file: !62, line: 347, baseType: !229, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3675, file: !62, line: 348, baseType: !229, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3675, file: !62, line: 349, baseType: !229, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !62, line: 352, baseType: !3684, size: 256)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3672, file: !62, line: 352, size: 256, elements: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3684, file: !62, line: 353, baseType: !395, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3684, file: !62, line: 354, baseType: !395, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3684, file: !62, line: 356, baseType: !247, size: 128, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3672, file: !62, line: 359, baseType: !1745, size: 512, align: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3614, file: !30, line: 409, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!125, !421, !657}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3614, file: !30, line: 412, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!1540, !421, !3624}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3614, file: !30, line: 414, baseType: !3699, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !30, line: 310, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3614, file: !30, line: 416, baseType: !3705, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!125, !1381, !421, !585, !23, !3020, !2154}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3614, file: !30, line: 419, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!125, !1381, !421, !585, !23, !23, !1744, !229}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3614, file: !30, line: 424, baseType: !3713, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!3716, !421, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !248, line: 131, baseType: !497)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3614, file: !30, line: 425, baseType: !3718, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3624, !392, !392}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3614, file: !30, line: 426, baseType: !3722, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!1540, !3624, !786}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3614, file: !30, line: 427, baseType: !3726, size: 64, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3624}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3614, file: !30, line: 428, baseType: !1673, size: 64, offset: 704)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3614, file: !30, line: 433, baseType: !3731, size: 64, offset: 768)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!125, !421, !3624, !3624, !90}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3614, file: !30, line: 435, baseType: !3735, size: 64, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!125, !3624}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3614, file: !30, line: 436, baseType: !3739, size: 64, offset: 896)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!1540, !3624, !392, !392}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3614, file: !30, line: 438, baseType: !3743, size: 64, offset: 960)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3624, !3746, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3614, file: !30, line: 439, baseType: !3748, size: 64, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!125, !421, !1744}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3614, file: !30, line: 442, baseType: !3752, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!125, !3755, !1381, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !30, line: 66, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3614, file: !30, line: 444, baseType: !2146, size: 64, offset: 1152)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3614, file: !30, line: 445, baseType: !3760, size: 64, offset: 1216)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!125, !1676, !1698}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !30, line: 486, baseType: !395, size: 64, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !422, file: !30, line: 487, baseType: !934, size: 320, offset: 960)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !422, file: !30, line: 488, baseType: !2189, size: 32, offset: 1280)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !422, file: !30, line: 489, baseType: !276, size: 32, offset: 1312)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !422, file: !30, line: 490, baseType: !247, size: 128, offset: 1344)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !422, file: !30, line: 491, baseType: !229, size: 64, offset: 1472)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !412, file: !371, line: 180, baseType: !3770, size: 64, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!377, !1381, !269, !411, !345, !585, !392}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !412, file: !371, line: 182, baseType: !3770, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !412, file: !371, line: 184, baseType: !3775, size: 64, offset: 448)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!125, !1381, !269, !411, !1864}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !400, file: !371, line: 90, baseType: !3779, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !400, file: !371, line: 91, baseType: !3781, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !361, file: !262, line: 120, baseType: !3783, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!3786, !328}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !98, line: 39, size: 384, elements: !3789)
!3789 = !{!3790, !3791, !3795, !3799, !3805, !3809}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3788, file: !98, line: 40, baseType: !97, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3788, file: !98, line: 41, baseType: !3792, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!1540}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3788, file: !98, line: 42, baseType: !3796, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!229}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3788, file: !98, line: 43, baseType: !3800, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!2278, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !697, line: 17, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3788, file: !98, line: 44, baseType: !3806, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!2278}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3788, file: !98, line: 45, baseType: !3374, size: 64, offset: 320)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !361, file: !262, line: 121, baseType: !3811, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!2278, !328}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !361, file: !262, line: 122, baseType: !3815, size: 64, offset: 320)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !328, !3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !261, file: !262, line: 70, baseType: !3821, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3823, line: 190, size: 1152, elements: !3824)
!3823 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3916, !3917, !3918, !3919, !3920, !3923}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3822, file: !3823, line: 191, baseType: !296, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3822, file: !3823, line: 192, baseType: !296, size: 32, offset: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3822, file: !3823, line: 202, baseType: !3821, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !3823, line: 203, baseType: !265, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3822, file: !3823, line: 205, baseType: !1108, size: 192, align: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3822, file: !3823, line: 207, baseType: !2278, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3822, file: !3823, line: 208, baseType: !23, size: 32, offset: 448)
!3832 = !DIDerivedType(tag: DW_TAG_member, scope: !3822, file: !3823, line: 209, baseType: !3833, size: 256, offset: 512)
!3833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3822, file: !3823, line: 209, size: 256, elements: !3834)
!3834 = !{!3835, !3844, !3848}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3833, file: !3823, line: 210, baseType: !3836, size: 256)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3823, line: 153, size: 256, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3843}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3836, file: !3823, line: 154, baseType: !395, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3836, file: !3823, line: 156, baseType: !1240, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3836, file: !3823, line: 162, baseType: !3841, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3823, line: 162, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3836, file: !3823, line: 167, baseType: !395, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3833, file: !3823, line: 211, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3823, line: 170, size: 64, elements: !3846)
!3846 = !{!3847}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3845, file: !3823, line: 171, baseType: !3821, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3833, file: !3823, line: 212, baseType: !3849, size: 256)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3823, line: 174, size: 256, elements: !3850)
!3850 = !{!3851, !3911, !3914, !3915}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3849, file: !3823, line: 175, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3823, line: 271, size: 768, elements: !3855)
!3855 = !{!3856, !3876, !3880, !3884, !3888, !3892, !3896, !3900, !3901, !3902, !3903, !3907}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3854, file: !3823, line: 276, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!125, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3823, line: 251, size: 1216, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3861, file: !3823, line: 253, baseType: !3821, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3861, file: !3823, line: 254, baseType: !1381, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3861, file: !3823, line: 255, baseType: !695, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3861, file: !3823, line: 256, baseType: !229, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3861, file: !3823, line: 259, baseType: !722, size: 256, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3861, file: !3823, line: 260, baseType: !722, size: 256, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3861, file: !3823, line: 261, baseType: !125, size: 32, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3861, file: !3823, line: 262, baseType: !247, size: 128, offset: 832)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3861, file: !3823, line: 263, baseType: !345, size: 64, offset: 960)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3861, file: !3823, line: 265, baseType: !392, size: 64, offset: 1024)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3861, file: !3823, line: 266, baseType: !1540, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3861, file: !3823, line: 267, baseType: !1540, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3861, file: !3823, line: 268, baseType: !1909, size: 64, offset: 1152)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3854, file: !3823, line: 277, baseType: !3877, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !3860}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3854, file: !3823, line: 290, baseType: !3881, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!125, !695, !229}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3854, file: !3823, line: 292, baseType: !3885, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!229, !695, !1667}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3854, file: !3823, line: 293, baseType: !3889, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!229, !695, !229, !1667}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3854, file: !3823, line: 294, baseType: !3893, size: 64, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !695, !229}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3854, file: !3823, line: 296, baseType: !3897, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!377, !3860, !345, !392, !585}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3854, file: !3823, line: 306, baseType: !392, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3854, file: !3823, line: 313, baseType: !1540, size: 8, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3854, file: !3823, line: 314, baseType: !3897, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3854, file: !3823, line: 317, baseType: !3904, size: 64, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!2082, !3860, !2084}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3854, file: !3823, line: 320, baseType: !3908, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!125, !3860, !1864}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3849, file: !3823, line: 176, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3823, line: 35, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3849, file: !3823, line: 177, baseType: !585, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3849, file: !3823, line: 178, baseType: !3821, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3822, file: !3823, line: 215, baseType: !229, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3822, file: !3823, line: 221, baseType: !497, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3822, file: !3823, line: 223, baseType: !315, size: 16, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3822, file: !3823, line: 224, baseType: !387, size: 16, offset: 912)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3822, file: !3823, line: 225, baseType: !3921, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3823, line: 36, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3822, file: !3823, line: 227, baseType: !1034, size: 128, align: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !261, file: !262, line: 71, baseType: !3925, size: 32, offset: 448)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3926, line: 19, size: 32, elements: !3927)
!3926 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3927 = !{!3928}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3925, file: !3926, line: 20, baseType: !1064, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !261, file: !262, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !261, file: !262, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !261, file: !262, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !261, file: !262, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !261, file: !262, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !258, file: !22, line: 47, baseType: !242, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !258, file: !22, line: 48, baseType: !269, size: 64, offset: 576)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !258, file: !22, line: 49, baseType: !3937, size: 64, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !22, line: 49, flags: DIFlagFwdDecl)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !258, file: !22, line: 50, baseType: !2432, size: 64, offset: 704)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !243, file: !22, line: 418, baseType: !3941, size: 64, offset: 1408)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !22, line: 53, size: 448, elements: !3943)
!3943 = !{!3944, !3945, !3950, !3954, !3958, !3962}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3942, file: !22, line: 54, baseType: !383, size: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3942, file: !22, line: 55, baseType: !3946, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!377, !3941, !3949, !345}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3942, file: !22, line: 57, baseType: !3951, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!377, !3941, !3949, !265, !392}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3942, file: !22, line: 59, baseType: !3955, size: 64, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !242, !265}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3942, file: !22, line: 60, baseType: !3959, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!125, !242}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3942, file: !22, line: 61, baseType: !3963, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !242}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !243, file: !22, line: 419, baseType: !265, size: 64, offset: 1472)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !243, file: !22, line: 420, baseType: !265, size: 64, offset: 1536)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !243, file: !22, line: 421, baseType: !269, size: 64, offset: 1600)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !243, file: !22, line: 424, baseType: !3970, size: 64, offset: 1664)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3972)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !22, line: 424, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !243, file: !22, line: 425, baseType: !3974, size: 64, offset: 1728)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !243, file: !22, line: 426, baseType: !23, size: 32, offset: 1792)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !243, file: !22, line: 435, baseType: !722, size: 256, offset: 1856)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !243, file: !22, line: 437, baseType: !3979, size: 64, offset: 2112)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3981, line: 69, size: 320, elements: !3982)
!3981 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3982 = !{!3983, !3984, !3985, !4002, !4004, !4008, !4009}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3980, file: !3981, line: 70, baseType: !265, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3980, file: !3981, line: 71, baseType: !242, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3980, file: !3981, line: 72, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3981, line: 47, size: 256, elements: !3989)
!3989 = !{!3990, !3991, !3997, !4001}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3988, file: !3981, line: 49, baseType: !23, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3988, file: !3981, line: 51, baseType: !3992, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!125, !265, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3980)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3988, file: !3981, line: 53, baseType: !3998, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!125, !345, !3995}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3988, file: !3981, line: 55, baseType: !3374, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3980, file: !3981, line: 73, baseType: !4003, size: 16, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3980, file: !3981, line: 74, baseType: !4005, size: 8, offset: 208)
!4005 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !305, line: 16, baseType: !4006)
!4006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !186, line: 20, baseType: !4007)
!4007 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3980, file: !3981, line: 75, baseType: !304, size: 8, offset: 216)
!4009 = !DIDerivedType(tag: DW_TAG_member, scope: !3980, file: !3981, line: 76, baseType: !4010, size: 64, offset: 256)
!4010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3980, file: !3981, line: 76, size: 64, elements: !4011)
!4011 = !{!4012, !4013, !4020}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4010, file: !3981, line: 77, baseType: !229, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4010, file: !3981, line: 78, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4016)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3981, line: 86, size: 128, elements: !4017)
!4017 = !{!4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4016, file: !3981, line: 87, baseType: !23, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4016, file: !3981, line: 88, baseType: !345, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4010, file: !3981, line: 79, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3981, line: 92, size: 256, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4023, file: !3981, line: 94, baseType: !23, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4023, file: !3981, line: 95, baseType: !23, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4023, file: !3981, line: 96, baseType: !1043, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4023, file: !3981, line: 97, baseType: !3986, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4023, file: !3981, line: 98, baseType: !229, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !243, file: !22, line: 438, baseType: !23, size: 32, offset: 2176)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !243, file: !22, line: 441, baseType: !23, size: 32, offset: 2208)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !243, file: !22, line: 442, baseType: !3970, size: 64, offset: 2240)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !243, file: !22, line: 443, baseType: !3974, size: 64, offset: 2304)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !243, file: !22, line: 444, baseType: !1540, size: 8, offset: 2368)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !243, file: !22, line: 451, baseType: !1540, size: 8, offset: 2376)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !243, file: !22, line: 454, baseType: !23, size: 32, offset: 2400)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !243, file: !22, line: 455, baseType: !4038, size: 64, offset: 2432)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4040, line: 23, size: 96, elements: !4041)
!4040 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4041 = !{!4042, !4043, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4039, file: !4040, line: 24, baseType: !125, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4039, file: !4040, line: 24, baseType: !125, size: 32, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4039, file: !4040, line: 24, baseType: !125, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !243, file: !22, line: 458, baseType: !4046, size: 64, offset: 2496)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!125}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !243, file: !22, line: 460, baseType: !4050, size: 4032, align: 512, offset: 2560)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4051, size: 4032, elements: !4065)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !22, line: 362, size: 576, elements: !4052)
!4052 = !{!4053, !4054, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4051, file: !22, line: 363, baseType: !229, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4051, file: !22, line: 364, baseType: !23, size: 32, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4051, file: !22, line: 367, baseType: !4056, size: 448, offset: 128)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !22, line: 319, size: 448, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4056, file: !22, line: 320, baseType: !242, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4056, file: !22, line: 321, baseType: !4060, size: 384, offset: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4061, line: 40, size: 384, elements: !4062)
!4061 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4062 = !{!4063}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4060, file: !4061, line: 41, baseType: !4064, size: 384, align: 64)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 384, align: 64, elements: !173)
!4065 = !{!4066}
!4066 = !DISubrange(count: 7)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !243, file: !22, line: 463, baseType: !4068, size: 192, offset: 6592)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4069, line: 8, size: 192, elements: !4070)
!4069 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4070 = !{!4071, !4072, !4073}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4068, file: !4069, line: 10, baseType: !23, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4068, file: !4069, line: 11, baseType: !689, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4068, file: !4069, line: 12, baseType: !4074, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4076, line: 59, size: 48, elements: !4077)
!4076 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4075, file: !4076, line: 60, baseType: !2295, size: 16)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4075, file: !4076, line: 61, baseType: !2295, size: 16, offset: 16)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4075, file: !4076, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4075, file: !4076, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4075, file: !4076, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4075, file: !4076, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !243, file: !22, line: 465, baseType: !395, size: 64, offset: 6784)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !243, file: !22, line: 469, baseType: !23, size: 32, offset: 6848)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !243, file: !22, line: 470, baseType: !247, size: 128, offset: 6912)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !243, file: !22, line: 471, baseType: !4088, size: 64, offset: 7040)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4090, line: 33, size: 96, elements: !4091)
!4090 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4091 = !{!4092, !4093, !4094, !4095}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4089, file: !4090, line: 37, baseType: !125, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4089, file: !4090, line: 43, baseType: !125, size: 32, offset: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4089, file: !4090, line: 45, baseType: !315, size: 16, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4089, file: !4090, line: 47, baseType: !315, size: 16, offset: 80)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !243, file: !22, line: 476, baseType: !4097, size: 64, offset: 7104)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !22, line: 378, size: 256, elements: !4099)
!4099 = !{!4100, !4116, !4117, !4118}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4098, file: !22, line: 379, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4103, line: 204, baseType: !4104)
!4103 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4103, line: 197, size: 192, elements: !4105)
!4105 = !{!4106, !4108, !4109, !4110, !4112, !4114}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4104, file: !4103, line: 198, baseType: !4107, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4103, line: 21, baseType: !189)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4104, file: !4103, line: 199, baseType: !307, size: 8, offset: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4104, file: !4103, line: 200, baseType: !307, size: 8, offset: 40)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4104, file: !4103, line: 201, baseType: !4111, size: 16, offset: 48)
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4103, line: 17, baseType: !314)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4104, file: !4103, line: 202, baseType: !4113, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4103, line: 16, baseType: !498)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4104, file: !4103, line: 203, baseType: !4115, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4103, line: 22, baseType: !498)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4098, file: !22, line: 380, baseType: !23, size: 32, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4098, file: !22, line: 381, baseType: !345, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4098, file: !22, line: 382, baseType: !345, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !243, file: !22, line: 477, baseType: !4098, size: 256, offset: 7168)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !243, file: !22, line: 480, baseType: !4121, size: 64, offset: 7424)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !22, line: 480, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !243, file: !22, line: 483, baseType: !4124, size: 64, offset: 7488)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !22, line: 483, flags: DIFlagFwdDecl)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !243, file: !22, line: 488, baseType: !345, size: 64, offset: 7552)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !243, file: !22, line: 492, baseType: !229, size: 64, offset: 7616)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !243, file: !22, line: 493, baseType: !23, size: 32, offset: 7680)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !243, file: !22, line: 495, baseType: !229, size: 64, offset: 7744)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !243, file: !22, line: 496, baseType: !23, size: 32, offset: 7808)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !243, file: !22, line: 499, baseType: !23, size: 32, offset: 7840)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !243, file: !22, line: 500, baseType: !4133, size: 64, offset: 7872)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4135, line: 45, baseType: !4136)
!4135 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !243, file: !22, line: 503, baseType: !23, size: 32, offset: 7936)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !243, file: !22, line: 504, baseType: !4139, size: 64, offset: 8000)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4142, line: 96, size: 192, elements: !4143)
!4142 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4143 = !{!4144, !4145, !4188, !4190}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4141, file: !4142, line: 97, baseType: !23, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4141, file: !4142, line: 98, baseType: !4146, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4142, line: 24, size: 3072, elements: !4148)
!4148 = !{!4149, !4151, !4152, !4153, !4154, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4185, !4186, !4187}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4147, file: !4142, line: 26, baseType: !4150, size: 128)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 128, elements: !173)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4147, file: !4142, line: 27, baseType: !4150, size: 128, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4147, file: !4142, line: 28, baseType: !125, size: 32, offset: 256)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4147, file: !4142, line: 31, baseType: !276, size: 32, align: 512, offset: 512)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4147, file: !4142, line: 32, baseType: !4155, size: 960, offset: 576)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4156, line: 206, size: 960, elements: !4157)
!4156 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4157 = !{!4158, !4159, !4162, !4164, !4165, !4167}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4155, file: !4156, line: 207, baseType: !1037, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4155, file: !4156, line: 208, baseType: !4160, size: 256, offset: 64)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4161, size: 256, elements: !201)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4155, file: !4156, line: 209, baseType: !4163, size: 256, offset: 320)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 256, elements: !201)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4155, file: !4156, line: 213, baseType: !381, size: 64, offset: 576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4155, file: !4156, line: 215, baseType: !4166, size: 256, offset: 640)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !201)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4155, file: !4156, line: 216, baseType: !304, size: 8, offset: 896)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4147, file: !4142, line: 33, baseType: !395, size: 64, offset: 1536)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4147, file: !4142, line: 34, baseType: !395, size: 64, offset: 1600)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4147, file: !4142, line: 35, baseType: !1540, size: 8, offset: 1664)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4147, file: !4142, line: 36, baseType: !2999, size: 320, offset: 1728)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4147, file: !4142, line: 37, baseType: !2317, size: 256, offset: 2048)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4147, file: !4142, line: 38, baseType: !1034, size: 128, align: 64, offset: 2304)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4147, file: !4142, line: 39, baseType: !4175, size: 64, offset: 2432)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4142, line: 49, size: 768, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4176, file: !4142, line: 50, baseType: !276, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4176, file: !4142, line: 51, baseType: !4163, size: 256, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4176, file: !4142, line: 53, baseType: !4163, size: 256, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4176, file: !4142, line: 54, baseType: !395, size: 64, offset: 576)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4176, file: !4142, line: 55, baseType: !4175, size: 64, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4176, file: !4142, line: 56, baseType: !125, size: 32, offset: 704)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4176, file: !4142, line: 57, baseType: !125, size: 32, offset: 736)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4147, file: !4142, line: 40, baseType: !395, size: 64, offset: 2496)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4147, file: !4142, line: 42, baseType: !125, size: 32, offset: 2560)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4147, file: !4142, line: 43, baseType: !4140, size: 64, offset: 2624)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4141, file: !4142, line: 99, baseType: !4189, offset: 128)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !625, line: 211, elements: !626)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4141, file: !4142, line: 100, baseType: !4191, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4142, line: 63, size: 3008, elements: !4193)
!4193 = !{!4194, !4195, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4223}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4192, file: !4142, line: 64, baseType: !4175, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4192, file: !4142, line: 65, baseType: !4196, size: 192, offset: 64)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4175, size: 192, elements: !346)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4192, file: !4142, line: 67, baseType: !125, size: 32, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4192, file: !4142, line: 68, baseType: !722, size: 256, offset: 320)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4192, file: !4142, line: 69, baseType: !276, size: 32, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4192, file: !4142, line: 70, baseType: !722, size: 256, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4192, file: !4142, line: 71, baseType: !395, size: 64, offset: 896)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4192, file: !4142, line: 72, baseType: !395, size: 64, offset: 960)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4192, file: !4142, line: 73, baseType: !395, size: 64, offset: 1024)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4192, file: !4142, line: 74, baseType: !395, size: 64, offset: 1088)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4192, file: !4142, line: 75, baseType: !395, size: 64, offset: 1152)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4192, file: !4142, line: 76, baseType: !395, size: 64, offset: 1216)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4192, file: !4142, line: 77, baseType: !395, size: 64, offset: 1280)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4192, file: !4142, line: 78, baseType: !395, size: 64, offset: 1344)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4192, file: !4142, line: 79, baseType: !1540, size: 8, offset: 1408)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4192, file: !4142, line: 80, baseType: !395, size: 64, offset: 1472)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4192, file: !4142, line: 81, baseType: !722, size: 256, offset: 1536)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4192, file: !4142, line: 82, baseType: !1829, size: 256, offset: 1792)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4192, file: !4142, line: 84, baseType: !296, size: 32, offset: 2048)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4192, file: !4142, line: 87, baseType: !395, size: 64, offset: 2112)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4192, file: !4142, line: 88, baseType: !395, size: 64, offset: 2176)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4192, file: !4142, line: 89, baseType: !4217, size: 704, offset: 2240)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2318, line: 111, size: 704, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4217, file: !2318, line: 112, baseType: !2317, size: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4217, file: !2318, line: 113, baseType: !2999, size: 320, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4217, file: !2318, line: 116, baseType: !3306, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4217, file: !2318, line: 117, baseType: !125, size: 32, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4192, file: !4142, line: 90, baseType: !4140, size: 64, offset: 2944)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !243, file: !22, line: 515, baseType: !4225, size: 64, offset: 8064)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4227, line: 117, size: 128, elements: !4228)
!4227 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4228 = !{!4229, !4230, !4231}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4226, file: !4227, line: 118, baseType: !1483, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4226, file: !4227, line: 119, baseType: !1483, size: 32, offset: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4226, file: !4227, line: 120, baseType: !381, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !243, file: !22, line: 516, baseType: !23, size: 32, offset: 8128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !243, file: !22, line: 519, baseType: !23, size: 32, offset: 8160)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !243, file: !22, line: 520, baseType: !4235, size: 64, offset: 8192)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !243, file: !22, line: 523, baseType: !4237, size: 64, offset: 8256)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !22, line: 523, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !243, file: !22, line: 524, baseType: !23, size: 32, offset: 8320)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !243, file: !22, line: 525, baseType: !4242, size: 64, offset: 8384)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !22, line: 525, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !243, file: !22, line: 526, baseType: !23, size: 32, offset: 8448)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !243, file: !22, line: 533, baseType: !229, size: 64, offset: 8512)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !243, file: !22, line: 534, baseType: !23, size: 32, offset: 8576)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !243, file: !22, line: 535, baseType: !4249, size: 64, offset: 8640)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !243, file: !22, line: 536, baseType: !23, size: 32, offset: 8704)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !243, file: !22, line: 539, baseType: !125, size: 32, offset: 8736)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !243, file: !22, line: 540, baseType: !4253, size: 64, offset: 8768)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4255, line: 32, size: 64, elements: !4256)
!4255 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4254, file: !4255, line: 33, baseType: !1483, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4254, file: !4255, line: 34, baseType: !1483, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !243, file: !22, line: 563, baseType: !247, size: 128, offset: 8832)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !243, file: !22, line: 565, baseType: !247, size: 128, offset: 8960)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !243, file: !22, line: 568, baseType: !4262, size: 64, offset: 9088)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !243, file: !22, line: 570, baseType: !296, size: 32, offset: 9152)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "clock_adjtime", scope: !239, file: !236, line: 41, baseType: !4265, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!125, !4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex", file: !4271, line: 102, size: 1664, elements: !4272)
!4271 = !DIFile(filename: "./include/uapi/linux/timex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37fb729d65fdd1562db85b44515cd515")
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !4270, file: !4271, line: 103, baseType: !23, size: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4270, file: !4271, line: 105, baseType: !187, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4270, file: !4271, line: 106, baseType: !187, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !4270, file: !4271, line: 107, baseType: !187, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !4270, file: !4271, line: 108, baseType: !187, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4270, file: !4271, line: 109, baseType: !125, size: 32, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4270, file: !4271, line: 111, baseType: !187, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !4270, file: !4271, line: 112, baseType: !187, size: 64, offset: 448)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !4270, file: !4271, line: 113, baseType: !187, size: 64, offset: 512)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4270, file: !4271, line: 116, baseType: !4283, size: 128, offset: 576)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex_timeval", file: !4271, line: 97, size: 128, elements: !4284)
!4284 = !{!4285, !4286}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4283, file: !4271, line: 98, baseType: !2388, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4283, file: !4271, line: 99, baseType: !187, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !4270, file: !4271, line: 117, baseType: !187, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !4270, file: !4271, line: 119, baseType: !187, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !4270, file: !4271, line: 120, baseType: !187, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4270, file: !4271, line: 121, baseType: !125, size: 32, offset: 896)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !4270, file: !4271, line: 123, baseType: !187, size: 64, offset: 960)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !4270, file: !4271, line: 124, baseType: !187, size: 64, offset: 1024)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !4270, file: !4271, line: 125, baseType: !187, size: 64, offset: 1088)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !4270, file: !4271, line: 126, baseType: !187, size: 64, offset: 1152)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !4270, file: !4271, line: 127, baseType: !187, size: 64, offset: 1216)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !4270, file: !4271, line: 129, baseType: !125, size: 32, offset: 1280)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "clock_gettime", scope: !239, file: !236, line: 43, baseType: !4298, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!125, !4268, !4301}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "clock_getres", scope: !239, file: !236, line: 45, baseType: !4298, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "clock_settime", scope: !239, file: !236, line: 47, baseType: !4304, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!125, !4268, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3449)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !239, file: !236, line: 53, baseType: !4310, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!381, !4268, !23, !395}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !239, file: !236, line: 56, baseType: !4314, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!125, !4268, !1392}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !239, file: !236, line: 58, baseType: !4318, size: 64, offset: 448)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!2082, !4268, !1381, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2086, line: 40, baseType: !2085)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !239, file: !236, line: 61, baseType: !4324, size: 64, offset: 512)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!125, !4268}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !239, file: !236, line: 63, baseType: !4328, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!377, !4268, !4331, !345, !392}
!4331 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !248, line: 93, baseType: !23)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !235, file: !236, line: 87, baseType: !3589, size: 832, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !235, file: !236, line: 88, baseType: !4334, size: 64, offset: 1472)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !110, line: 705, size: 5824, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4342, !4343, !4396, !4466, !4467, !4468, !4469, !4470, !4477, !4569, !4582, !4592, !4596, !4598, !4599, !4600, !4604, !4611, !4612, !4615, !4618, !4622, !4726, !4727, !4728, !4729, !4730, !4731, !4761, !4762, !4763, !4766, !4769, !4778, !4779, !4780, !4781, !4782, !4783}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4335, file: !110, line: 706, baseType: !261, size: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4335, file: !110, line: 707, baseType: !4334, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4335, file: !110, line: 709, baseType: !4340, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !110, line: 37, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4335, file: !110, line: 711, baseType: !265, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4335, file: !110, line: 712, baseType: !4344, size: 64, offset: 704)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !110, line: 89, size: 384, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4356, !4361, !4365}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !110, line: 90, baseType: !265, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4346, file: !110, line: 91, baseType: !397, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4346, file: !110, line: 92, baseType: !4351, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!125, !4354, !340}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4335)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4346, file: !110, line: 93, baseType: !4357, size: 64, offset: 192)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!345, !4354, !4360, !3818, !3819}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4346, file: !110, line: 95, baseType: !4362, size: 64, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !4334}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4346, file: !110, line: 97, baseType: !4366, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4368)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !117, line: 286, size: 1472, elements: !4369)
!4369 = !{!4370, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4368, file: !117, line: 287, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!125, !4334}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4368, file: !117, line: 288, baseType: !4362, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4368, file: !117, line: 289, baseType: !4371, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4368, file: !117, line: 290, baseType: !4371, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4368, file: !117, line: 291, baseType: !4371, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4368, file: !117, line: 292, baseType: !4371, size: 64, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4368, file: !117, line: 293, baseType: !4371, size: 64, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4368, file: !117, line: 294, baseType: !4371, size: 64, offset: 448)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4368, file: !117, line: 295, baseType: !4371, size: 64, offset: 512)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4368, file: !117, line: 296, baseType: !4371, size: 64, offset: 576)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4368, file: !117, line: 297, baseType: !4371, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4368, file: !117, line: 298, baseType: !4371, size: 64, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4368, file: !117, line: 299, baseType: !4371, size: 64, offset: 768)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4368, file: !117, line: 300, baseType: !4371, size: 64, offset: 832)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4368, file: !117, line: 301, baseType: !4371, size: 64, offset: 896)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4368, file: !117, line: 302, baseType: !4371, size: 64, offset: 960)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4368, file: !117, line: 303, baseType: !4371, size: 64, offset: 1024)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4368, file: !117, line: 304, baseType: !4371, size: 64, offset: 1088)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4368, file: !117, line: 305, baseType: !4371, size: 64, offset: 1152)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4368, file: !117, line: 306, baseType: !4371, size: 64, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4368, file: !117, line: 307, baseType: !4371, size: 64, offset: 1280)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4368, file: !117, line: 308, baseType: !4371, size: 64, offset: 1344)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4368, file: !117, line: 309, baseType: !4371, size: 64, offset: 1408)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4335, file: !110, line: 714, baseType: !4397, size: 64, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4400, line: 80, size: 1344, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4465}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4399, file: !4400, line: 81, baseType: !265, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4399, file: !4400, line: 82, baseType: !265, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4399, file: !4400, line: 83, baseType: !397, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4399, file: !4400, line: 84, baseType: !397, size: 64, offset: 192)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4399, file: !4400, line: 85, baseType: !397, size: 64, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4399, file: !4400, line: 87, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!125, !4334, !4411}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !104, line: 96, size: 1152, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419, !4420, !4424, !4428, !4429, !4430, !4431, !4432, !4440, !4441, !4442, !4443, !4444, !4445}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4412, file: !104, line: 97, baseType: !265, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4412, file: !104, line: 98, baseType: !4397, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4412, file: !104, line: 100, baseType: !242, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4412, file: !104, line: 101, baseType: !265, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4412, file: !104, line: 103, baseType: !1540, size: 8, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4412, file: !104, line: 104, baseType: !103, size: 32, offset: 288)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4412, file: !104, line: 106, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !104, line: 106, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4412, file: !104, line: 107, baseType: !4425, size: 64, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !104, line: 107, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4412, file: !104, line: 109, baseType: !4371, size: 64, offset: 448)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4412, file: !104, line: 110, baseType: !4362, size: 64, offset: 512)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4412, file: !104, line: 111, baseType: !4371, size: 64, offset: 576)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4412, file: !104, line: 112, baseType: !4362, size: 64, offset: 640)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4412, file: !104, line: 113, baseType: !4433, size: 64, offset: 704)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!125, !4334, !4436}
!4436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !117, line: 60, baseType: !4437)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !117, line: 58, size: 32, elements: !4438)
!4438 = !{!4439}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4437, file: !117, line: 59, baseType: !125, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4412, file: !104, line: 114, baseType: !4371, size: 64, offset: 768)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4412, file: !104, line: 115, baseType: !397, size: 64, offset: 832)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4412, file: !104, line: 116, baseType: !397, size: 64, offset: 896)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4412, file: !104, line: 118, baseType: !4366, size: 64, offset: 960)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4412, file: !104, line: 119, baseType: !4362, size: 64, offset: 1024)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4412, file: !104, line: 121, baseType: !4446, size: 64, offset: 1088)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !104, line: 121, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4399, file: !4400, line: 88, baseType: !4351, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4399, file: !4400, line: 89, baseType: !4371, size: 64, offset: 448)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4399, file: !4400, line: 90, baseType: !4362, size: 64, offset: 512)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4399, file: !4400, line: 91, baseType: !4362, size: 64, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4399, file: !4400, line: 92, baseType: !4362, size: 64, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4399, file: !4400, line: 94, baseType: !4371, size: 64, offset: 704)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4399, file: !4400, line: 95, baseType: !4371, size: 64, offset: 768)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4399, file: !4400, line: 97, baseType: !4433, size: 64, offset: 832)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4399, file: !4400, line: 98, baseType: !4371, size: 64, offset: 896)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4399, file: !4400, line: 100, baseType: !4371, size: 64, offset: 960)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4399, file: !4400, line: 102, baseType: !4371, size: 64, offset: 1024)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4399, file: !4400, line: 103, baseType: !4362, size: 64, offset: 1088)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4399, file: !4400, line: 105, baseType: !4366, size: 64, offset: 1152)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4399, file: !4400, line: 107, baseType: !4462, size: 64, offset: 1216)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4464)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4400, line: 107, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4399, file: !4400, line: 109, baseType: !1540, size: 8, offset: 1280)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4335, file: !110, line: 715, baseType: !4411, size: 64, offset: 832)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4335, file: !110, line: 717, baseType: !229, size: 64, offset: 896)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4335, file: !110, line: 719, baseType: !229, size: 64, offset: 960)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4335, file: !110, line: 721, baseType: !722, size: 256, offset: 1024)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4335, file: !110, line: 725, baseType: !4471, size: 448, offset: 1280)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !110, line: 517, size: 448, elements: !4472)
!4472 = !{!4473, !4474, !4475, !4476}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4471, file: !110, line: 518, baseType: !247, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4471, file: !110, line: 519, baseType: !247, size: 128, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4471, file: !110, line: 520, baseType: !247, size: 128, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4471, file: !110, line: 521, baseType: !109, size: 32, offset: 384)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4335, file: !110, line: 726, baseType: !4478, size: 2496, offset: 1728)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !117, line: 663, size: 2496, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4562, !4566}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4478, file: !117, line: 664, baseType: !4436, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4478, file: !117, line: 665, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4478, file: !117, line: 666, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4478, file: !117, line: 667, baseType: !1540, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4478, file: !117, line: 668, baseType: !1540, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4478, file: !117, line: 669, baseType: !1540, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4478, file: !117, line: 670, baseType: !1540, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4478, file: !117, line: 671, baseType: !1540, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4478, file: !117, line: 672, baseType: !1540, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4478, file: !117, line: 673, baseType: !1540, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4478, file: !117, line: 674, baseType: !1540, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4478, file: !117, line: 675, baseType: !494, size: 32, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4478, file: !117, line: 676, baseType: !276, size: 32, offset: 96)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4478, file: !117, line: 678, baseType: !247, size: 128, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4478, file: !117, line: 679, baseType: !1829, size: 256, offset: 256)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4478, file: !117, line: 680, baseType: !4496, size: 64, offset: 512)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4498, line: 43, size: 1536, elements: !4499)
!4498 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4497, file: !4498, line: 44, baseType: !265, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4497, file: !4498, line: 45, baseType: !125, size: 32, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4497, file: !4498, line: 46, baseType: !247, size: 128, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4497, file: !4498, line: 47, baseType: !276, size: 32, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4497, file: !4498, line: 48, baseType: !4505, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !117, line: 629, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4497, file: !4498, line: 49, baseType: !2999, size: 320, offset: 384)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4497, file: !4498, line: 50, baseType: !395, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4497, file: !4498, line: 51, baseType: !1186, size: 64, offset: 768)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4497, file: !4498, line: 52, baseType: !1186, size: 64, offset: 832)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4497, file: !4498, line: 53, baseType: !1186, size: 64, offset: 896)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4497, file: !4498, line: 54, baseType: !1186, size: 64, offset: 960)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4497, file: !4498, line: 55, baseType: !1186, size: 64, offset: 1024)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4497, file: !4498, line: 56, baseType: !395, size: 64, offset: 1088)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4497, file: !4498, line: 57, baseType: !395, size: 64, offset: 1152)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4497, file: !4498, line: 58, baseType: !395, size: 64, offset: 1216)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4497, file: !4498, line: 59, baseType: !395, size: 64, offset: 1280)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4497, file: !4498, line: 60, baseType: !395, size: 64, offset: 1344)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4497, file: !4498, line: 61, baseType: !4334, size: 64, offset: 1408)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4497, file: !4498, line: 62, baseType: !1540, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4497, file: !4498, line: 63, baseType: !1540, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4478, file: !117, line: 681, baseType: !1540, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4478, file: !117, line: 682, baseType: !1540, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4478, file: !117, line: 683, baseType: !1540, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4478, file: !117, line: 684, baseType: !23, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4478, file: !117, line: 685, baseType: !23, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4478, file: !117, line: 690, baseType: !1178, size: 512, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4478, file: !117, line: 691, baseType: !497, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4478, file: !117, line: 692, baseType: !2317, size: 256, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4478, file: !117, line: 693, baseType: !1027, size: 192, offset: 1472)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4478, file: !117, line: 694, baseType: !4505, size: 64, offset: 1664)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4478, file: !117, line: 695, baseType: !296, size: 32, offset: 1728)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4478, file: !117, line: 696, baseType: !296, size: 32, offset: 1760)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4478, file: !117, line: 697, baseType: !23, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4478, file: !117, line: 698, baseType: !23, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4478, file: !117, line: 699, baseType: !23, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4478, file: !117, line: 700, baseType: !23, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4478, file: !117, line: 701, baseType: !23, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4478, file: !117, line: 702, baseType: !23, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4478, file: !117, line: 703, baseType: !1540, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4478, file: !117, line: 704, baseType: !23, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4478, file: !117, line: 705, baseType: !23, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4478, file: !117, line: 706, baseType: !23, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4478, file: !117, line: 707, baseType: !23, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4478, file: !117, line: 708, baseType: !23, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4478, file: !117, line: 709, baseType: !23, size: 32, offset: 1824)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4478, file: !117, line: 710, baseType: !116, size: 32, offset: 1856)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4478, file: !117, line: 711, baseType: !124, size: 32, offset: 1888)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4478, file: !117, line: 712, baseType: !124, size: 32, offset: 1920)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4478, file: !117, line: 713, baseType: !125, size: 32, offset: 1952)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4478, file: !117, line: 714, baseType: !125, size: 32, offset: 1984)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4478, file: !117, line: 715, baseType: !497, size: 64, offset: 2048)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4478, file: !117, line: 716, baseType: !497, size: 64, offset: 2112)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4478, file: !117, line: 717, baseType: !497, size: 64, offset: 2176)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4478, file: !117, line: 718, baseType: !497, size: 64, offset: 2240)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4478, file: !117, line: 720, baseType: !4557, size: 64, offset: 2304)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !117, line: 632, size: 64, elements: !4559)
!4559 = !{!4560, !4561}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4558, file: !117, line: 633, baseType: !276, size: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4558, file: !117, line: 634, baseType: !23, size: 32, offset: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4478, file: !117, line: 721, baseType: !4563, size: 64, offset: 2368)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4334, !1483}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4478, file: !117, line: 722, baseType: !4567, size: 64, offset: 2432)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 722, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4335, file: !110, line: 727, baseType: !4570, size: 64, offset: 4224)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !117, line: 742, size: 1792, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4579, !4580, !4581}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4571, file: !117, line: 743, baseType: !4368, size: 1472)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4571, file: !117, line: 744, baseType: !4371, size: 64, offset: 1472)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4571, file: !117, line: 745, baseType: !4576, size: 64, offset: 1536)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4334, !1540}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4571, file: !117, line: 746, baseType: !4371, size: 64, offset: 1600)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4571, file: !117, line: 747, baseType: !4362, size: 64, offset: 1664)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4571, file: !117, line: 748, baseType: !4362, size: 64, offset: 1728)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4335, file: !110, line: 736, baseType: !4583, size: 128, offset: 4288)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !110, line: 529, size: 128, elements: !4584)
!4584 = !{!4585, !4589}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4583, file: !110, line: 531, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4588, line: 13, flags: DIFlagFwdDecl)
!4588 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4583, file: !110, line: 532, baseType: !4590, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !110, line: 49, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4335, file: !110, line: 738, baseType: !4593, size: 64, offset: 4416)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !110, line: 738, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4335, file: !110, line: 740, baseType: !4597, size: 64, offset: 4480)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4335, file: !110, line: 741, baseType: !497, size: 64, offset: 4544)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4335, file: !110, line: 746, baseType: !497, size: 64, offset: 4608)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4335, file: !110, line: 747, baseType: !4601, size: 64, offset: 4672)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4603)
!4603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !110, line: 747, flags: DIFlagFwdDecl)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4335, file: !110, line: 749, baseType: !4605, size: 64, offset: 4736)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !110, line: 428, size: 128, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4606, file: !110, line: 433, baseType: !23, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4606, file: !110, line: 434, baseType: !23, size: 32, offset: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4606, file: !110, line: 435, baseType: !395, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4335, file: !110, line: 751, baseType: !247, size: 128, offset: 4800)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4335, file: !110, line: 762, baseType: !4613, size: 64, offset: 4928)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !110, line: 762, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4335, file: !110, line: 770, baseType: !4616, offset: 4992)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4617, line: 5, elements: !626)
!4617 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4335, file: !110, line: 772, baseType: !4619, size: 64, offset: 4992)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4621, line: 18, flags: DIFlagFwdDecl)
!4621 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4335, file: !110, line: 773, baseType: !4623, size: 64, offset: 5056)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4625, line: 41, size: 512, elements: !4626)
!4625 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4626 = !{!4627, !4628, !4722, !4723, !4724, !4725}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4624, file: !4625, line: 42, baseType: !4623, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4624, file: !4625, line: 43, baseType: !4629, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4631)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4625, line: 125, size: 1408, elements: !4632)
!4632 = !{!4633, !4637, !4641, !4647, !4651, !4652, !4657, !4661, !4665, !4669, !4673, !4674, !4678, !4682, !4686, !4697, !4698, !4699, !4700, !4710, !4714, !4718}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4631, file: !4625, line: 126, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!4623, !4623}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4631, file: !4625, line: 127, baseType: !4638, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{null, !4623}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4631, file: !4625, line: 128, baseType: !4642, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!1540, !4645}
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4624)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4631, file: !4625, line: 129, baseType: !4648, size: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!2278, !4645, !4354}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4631, file: !4625, line: 131, baseType: !4642, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4631, file: !4625, line: 133, baseType: !4653, size: 64, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!4656, !4645}
!4656 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4625, line: 132, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4631, file: !4625, line: 134, baseType: !4658, size: 64, offset: 384)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!1540, !4645, !265}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4631, file: !4625, line: 136, baseType: !4662, size: 64, offset: 448)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!125, !4645, !265, !23, !229, !392}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4631, file: !4625, line: 141, baseType: !4666, size: 64, offset: 512)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!125, !4645, !265, !4235, !392}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4631, file: !4625, line: 144, baseType: !4670, size: 64, offset: 576)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!265, !4645}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4631, file: !4625, line: 145, baseType: !4670, size: 64, offset: 640)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4631, file: !4625, line: 146, baseType: !4675, size: 64, offset: 704)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4623, !4645}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4631, file: !4625, line: 148, baseType: !4679, size: 64, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!4623, !4645, !4623}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4631, file: !4625, line: 151, baseType: !4683, size: 64, offset: 832)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!4623, !4645, !265}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4631, file: !4625, line: 153, baseType: !4687, size: 64, offset: 896)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!125, !4645, !265, !265, !23, !23, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4625, line: 94, size: 640, elements: !4692)
!4692 = !{!4693, !4694, !4695}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4691, file: !4625, line: 95, baseType: !4623, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4691, file: !4625, line: 96, baseType: !23, size: 32, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4691, file: !4625, line: 97, baseType: !4696, size: 512, offset: 128)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 512, elements: !1221)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4631, file: !4625, line: 158, baseType: !4679, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4631, file: !4625, line: 161, baseType: !4675, size: 64, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4631, file: !4625, line: 163, baseType: !4634, size: 64, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4631, file: !4625, line: 164, baseType: !4701, size: 64, offset: 1152)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!125, !4645, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4625, line: 73, size: 128, elements: !4706)
!4706 = !{!4707, !4708, !4709}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4705, file: !4625, line: 74, baseType: !23, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4705, file: !4625, line: 75, baseType: !23, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4705, file: !4625, line: 76, baseType: !4645, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4631, file: !4625, line: 166, baseType: !4711, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!229, !4623, !125}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4631, file: !4625, line: 167, baseType: !4715, size: 64, offset: 1280)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!125, !4645, !23}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4631, file: !4625, line: 168, baseType: !4719, size: 64, offset: 1344)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!125, !4623}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4624, file: !4625, line: 44, baseType: !4334, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4624, file: !4625, line: 45, baseType: !247, size: 128, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4624, file: !4625, line: 46, baseType: !247, size: 128, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4624, file: !4625, line: 47, baseType: !304, size: 8, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4335, file: !110, line: 776, baseType: !125, size: 32, offset: 5120)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4335, file: !110, line: 778, baseType: !580, size: 32, offset: 5152)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4335, file: !110, line: 779, baseType: !494, size: 32, offset: 5184)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4335, file: !110, line: 781, baseType: !276, size: 32, offset: 5216)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4335, file: !110, line: 782, baseType: !247, size: 128, offset: 5248)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4335, file: !110, line: 784, baseType: !4732, size: 64, offset: 5376)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4734)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4735, line: 52, size: 768, elements: !4736)
!4735 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4736 = !{!4737, !4738, !4739, !4740, !4741, !4745, !4749, !4750, !4751, !4752, !4756, !4760}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4734, file: !4735, line: 53, baseType: !265, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4734, file: !4735, line: 55, baseType: !397, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4734, file: !4735, line: 56, baseType: !397, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4734, file: !4735, line: 58, baseType: !4351, size: 64, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4734, file: !4735, line: 59, baseType: !4742, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!345, !4354, !4360}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4734, file: !4735, line: 61, baseType: !4746, size: 64, offset: 320)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !4732}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4734, file: !4735, line: 62, baseType: !4362, size: 64, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4734, file: !4735, line: 64, baseType: !4371, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4734, file: !4735, line: 66, baseType: !3786, size: 64, offset: 512)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4734, file: !4735, line: 67, baseType: !4753, size: 64, offset: 576)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!2278, !4354}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4734, file: !4735, line: 69, baseType: !4757, size: 64, offset: 640)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !4354, !3818, !3819}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4734, file: !4735, line: 71, baseType: !4366, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4335, file: !110, line: 785, baseType: !397, size: 64, offset: 5440)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4335, file: !110, line: 787, baseType: !4362, size: 64, offset: 5504)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4335, file: !110, line: 788, baseType: !4764, size: 64, offset: 5568)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !110, line: 46, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4335, file: !110, line: 789, baseType: !4767, size: 64, offset: 5632)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !110, line: 48, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4335, file: !110, line: 791, baseType: !4770, size: 64, offset: 5696)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !110, line: 597, size: 128, elements: !4772)
!4772 = !{!4773, !4774, !4775, !4776, !4777}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4771, file: !110, line: 598, baseType: !132, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4771, file: !110, line: 599, baseType: !141, size: 32, offset: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4771, file: !110, line: 600, baseType: !146, size: 32, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4771, file: !110, line: 601, baseType: !1540, size: 8, offset: 96)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4771, file: !110, line: 602, baseType: !1540, size: 8, offset: 104)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4335, file: !110, line: 793, baseType: !151, size: 32, offset: 5760)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4335, file: !110, line: 795, baseType: !1540, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4335, file: !110, line: 796, baseType: !1540, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4335, file: !110, line: 797, baseType: !1540, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4335, file: !110, line: 798, baseType: !1540, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4335, file: !110, line: 799, baseType: !1540, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !235, file: !236, line: 89, baseType: !934, size: 320, offset: 1536)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !235, file: !236, line: 90, baseType: !1540, size: 8, offset: 1856)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !231, file: !232, line: 32, baseType: !4335, size: 5824, offset: 1920)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !231, file: !232, line: 33, baseType: !4788, size: 64, offset: 7744)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !158, line: 166, size: 1472, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4812, !4816, !4820, !4824, !4828, !4832, !4841, !4852, !4856, !4857, !4858, !4859, !4864, !4868}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4789, file: !158, line: 167, baseType: !242, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4789, file: !158, line: 168, baseType: !3274, size: 256, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !4789, file: !158, line: 169, baseType: !1483, size: 32, offset: 320)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !4789, file: !158, line: 170, baseType: !125, size: 32, offset: 352)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !4789, file: !158, line: 171, baseType: !125, size: 32, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !4789, file: !158, line: 172, baseType: !125, size: 32, offset: 416)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !4789, file: !158, line: 173, baseType: !125, size: 32, offset: 448)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !4789, file: !158, line: 174, baseType: !125, size: 32, offset: 480)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !4789, file: !158, line: 175, baseType: !4800, size: 64, offset: 512)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !167, line: 175, size: 768, elements: !4802)
!4802 = !{!4803, !4805, !4806, !4807, !4808}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4801, file: !167, line: 181, baseType: !4804, size: 512)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !350)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4801, file: !167, line: 185, baseType: !23, size: 32, offset: 512)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4801, file: !167, line: 189, baseType: !23, size: 32, offset: 544)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4801, file: !167, line: 195, baseType: !23, size: 32, offset: 576)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4801, file: !167, line: 199, baseType: !4809, size: 160, offset: 608)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !4810)
!4810 = !{!4811}
!4811 = !DISubrange(count: 5)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !4789, file: !158, line: 176, baseType: !4813, size: 64, offset: 576)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!125, !4788, !381}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !4789, file: !158, line: 177, baseType: !4817, size: 64, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!125, !4788, !1483}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "getmaxphase", scope: !4789, file: !158, line: 178, baseType: !4821, size: 64, offset: 704)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!1483, !4788}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !4789, file: !158, line: 179, baseType: !4825, size: 64, offset: 768)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!125, !4788, !732}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !4789, file: !158, line: 180, baseType: !4829, size: 64, offset: 832)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!125, !4788, !4301}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !4789, file: !158, line: 181, baseType: !4833, size: 64, offset: 896)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!125, !4788, !4301, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !158, line: 51, size: 256, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !4837, file: !158, line: 52, baseType: !3449, size: 128)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !4837, file: !158, line: 53, baseType: !3449, size: 128, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !4789, file: !158, line: 183, baseType: !4842, size: 64, offset: 960)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!125, !4788, !4845}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !4847, line: 263, size: 192, elements: !4848)
!4847 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4848 = !{!4849, !4850, !4851}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4846, file: !4847, line: 264, baseType: !1186, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !4846, file: !4847, line: 265, baseType: !1186, size: 64, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !4846, file: !4847, line: 266, baseType: !1186, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !4789, file: !158, line: 185, baseType: !4853, size: 64, offset: 1024)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!125, !4788, !4307}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "getcycles64", scope: !4789, file: !158, line: 186, baseType: !4829, size: 64, offset: 1088)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "getcyclesx64", scope: !4789, file: !158, line: 187, baseType: !4833, size: 64, offset: 1152)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosscycles", scope: !4789, file: !158, line: 189, baseType: !4842, size: 64, offset: 1216)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4789, file: !158, line: 191, baseType: !4860, size: 64, offset: 1280)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!125, !4788, !4863, !125}
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !4789, file: !158, line: 193, baseType: !4865, size: 64, offset: 1344)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!125, !4788, !23, !207, !23}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !4789, file: !158, line: 195, baseType: !4869, size: 64, offset: 1408)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!381, !4788}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !231, file: !232, line: 34, baseType: !580, size: 32, offset: 7808)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !231, file: !232, line: 35, baseType: !125, size: 32, offset: 7840)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "pps_source", scope: !231, file: !232, line: 36, baseType: !4875, size: 64, offset: 7872)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !4877, line: 43, size: 7744, elements: !4878)
!4877 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84efb6f82a468768bae0d7aa032cd392")
!4878 = !{!4879, !4891, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4924}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4876, file: !4877, line: 44, baseType: !4880, size: 768)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !4877, line: 23, size: 768, elements: !4881)
!4881 = !{!4882, !4883, !4884, !4885, !4889, !4890}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4880, file: !4877, line: 24, baseType: !3274, size: 256)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4880, file: !4877, line: 25, baseType: !3274, size: 256, offset: 256)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4880, file: !4877, line: 26, baseType: !125, size: 32, offset: 512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !4880, file: !4877, line: 28, baseType: !4886, size: 64, offset: 576)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{null, !4875, !125, !229}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4880, file: !4877, line: 31, baseType: !242, size: 64, offset: 640)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4880, file: !4877, line: 32, baseType: !4334, size: 64, offset: 704)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !4876, file: !4877, line: 46, baseType: !4892, size: 320, offset: 768)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !4893, line: 83, size: 320, elements: !4894)
!4893 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c00ae321b94f0eea44369ad4fb4a07b")
!4894 = !{!4895, !4896, !4897, !4903}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4892, file: !4893, line: 84, baseType: !125, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4892, file: !4893, line: 85, baseType: !125, size: 32, offset: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !4892, file: !4893, line: 86, baseType: !4898, size: 128, offset: 64)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !4893, line: 54, size: 128, elements: !4899)
!4899 = !{!4900, !4901, !4902}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4898, file: !4893, line: 55, baseType: !185, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4898, file: !4893, line: 56, baseType: !1484, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4898, file: !4893, line: 57, baseType: !189, size: 32, offset: 96)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !4892, file: !4893, line: 87, baseType: !4898, size: 128, offset: 192)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !4876, file: !4877, line: 48, baseType: !189, size: 32, offset: 1088)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !4876, file: !4877, line: 49, baseType: !189, size: 32, offset: 1120)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !4876, file: !4877, line: 50, baseType: !4898, size: 128, offset: 1152)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !4876, file: !4877, line: 51, baseType: !4898, size: 128, offset: 1280)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !4876, file: !4877, line: 52, baseType: !125, size: 32, offset: 1408)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !4876, file: !4877, line: 54, baseType: !23, size: 32, offset: 1440)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4876, file: !4877, line: 55, baseType: !1027, size: 192, offset: 1472)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4876, file: !4877, line: 57, baseType: !23, size: 32, offset: 1664)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !4876, file: !4877, line: 58, baseType: !2278, size: 64, offset: 1728)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4876, file: !4877, line: 59, baseType: !4335, size: 5824, offset: 1792)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4876, file: !4877, line: 60, baseType: !4915, size: 64, offset: 7616)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !30, line: 1083, size: 384, elements: !4917)
!4917 = !{!4918, !4919, !4920, !4921, !4922, !4923}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4916, file: !30, line: 1084, baseType: !1401, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4916, file: !30, line: 1085, baseType: !125, size: 32, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4916, file: !30, line: 1086, baseType: !125, size: 32, offset: 96)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4916, file: !30, line: 1087, baseType: !4915, size: 64, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4916, file: !30, line: 1088, baseType: !1381, size: 64, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4916, file: !30, line: 1089, baseType: !1034, size: 128, align: 64, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4876, file: !4877, line: 61, baseType: !276, size: 32, offset: 7680)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dialed_frequency", scope: !231, file: !232, line: 37, baseType: !381, size: 64, offset: 7936)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq", scope: !231, file: !232, line: 38, baseType: !4927, size: 32896, offset: 8000)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timestamp_event_queue", file: !232, line: 23, size: 32896, elements: !4928)
!4928 = !{!4929, !4939, !4940, !4941}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4927, file: !232, line: 24, baseType: !4930, size: 32768)
!4930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4931, size: 32768, elements: !4937)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_event", file: !167, line: 228, size: 256, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4936}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !4931, file: !167, line: 229, baseType: !182, size: 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4931, file: !167, line: 230, baseType: !23, size: 32, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4931, file: !167, line: 231, baseType: !23, size: 32, offset: 160)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4931, file: !167, line: 232, baseType: !172, size: 64, offset: 192)
!4937 = !{!4938}
!4938 = !DISubrange(count: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4927, file: !232, line: 25, baseType: !125, size: 32, offset: 32768)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4927, file: !232, line: 26, baseType: !125, size: 32, offset: 32800)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4927, file: !232, line: 27, baseType: !276, size: 32, offset: 32832)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq_mux", scope: !231, file: !232, line: 39, baseType: !722, size: 256, offset: 40896)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg_mux", scope: !231, file: !232, line: 40, baseType: !722, size: 256, offset: 41152)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "tsev_wq", scope: !231, file: !232, line: 41, baseType: !1027, size: 192, offset: 41408)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "defunct", scope: !231, file: !232, line: 42, baseType: !125, size: 32, offset: 41600)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "pin_dev_attr", scope: !231, file: !232, line: 43, baseType: !4947, size: 64, offset: 41664)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !110, line: 106, size: 256, elements: !4949)
!4949 = !{!4950, !4951, !4955}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4948, file: !110, line: 107, baseType: !383, size: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4948, file: !110, line: 108, baseType: !4952, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!377, !4334, !4947, !345}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4948, file: !110, line: 110, baseType: !4956, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!377, !4334, !4947, !265, !392}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr", scope: !231, file: !232, line: 44, baseType: !3779, size: 64, offset: 41728)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_group", scope: !231, file: !232, line: 45, baseType: !400, size: 320, offset: 41792)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_groups", scope: !231, file: !232, line: 47, baseType: !4962, size: 128, offset: 42112)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 128, elements: !173)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !231, file: !232, line: 48, baseType: !4964, size: 64, offset: 42240)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4966, line: 123, size: 448, elements: !4967)
!4966 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4967 = !{!4968, !4969, !4970, !4971, !4972, !4973}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4965, file: !4966, line: 124, baseType: !23, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4965, file: !4966, line: 125, baseType: !734, size: 32, offset: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4965, file: !4966, line: 126, baseType: !247, size: 128, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4965, file: !4966, line: 127, baseType: !247, size: 128, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4965, file: !4966, line: 128, baseType: !1049, size: 64, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4965, file: !4966, line: 129, baseType: !4974, size: 64, offset: 384)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4966, line: 132, size: 320, elements: !4976)
!4976 = !{!4977, !4978, !4983, !4984}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4975, file: !4966, line: 133, baseType: !247, size: 128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4975, file: !4966, line: 134, baseType: !4979, size: 64, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4966, line: 116, baseType: !4980)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !4974}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4975, file: !4966, line: 135, baseType: !4964, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4975, file: !4966, line: 137, baseType: !125, size: 32, offset: 256)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !231, file: !232, line: 49, baseType: !4986, size: 640, offset: 42304)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_delayed_work", file: !4966, line: 140, size: 640, elements: !4987)
!4987 = !{!4988, !4989}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4986, file: !4966, line: 141, baseType: !4975, size: 320)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4986, file: !4966, line: 142, baseType: !2999, size: 320, offset: 320)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "max_vclocks", scope: !231, file: !232, line: 50, baseType: !23, size: 32, offset: 42944)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "n_vclocks", scope: !231, file: !232, line: 51, baseType: !23, size: 32, offset: 42976)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "vclock_index", scope: !231, file: !232, line: 52, baseType: !689, size: 64, offset: 43008)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "n_vclocks_mux", scope: !231, file: !232, line: 53, baseType: !722, size: 256, offset: 43072)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual_clock", scope: !231, file: !232, line: 54, baseType: !1540, size: 8, offset: 43328)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "has_cycles", scope: !231, file: !232, line: 55, baseType: !1540, size: 8, offset: 43336)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !125)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4997)
!5002 = !{!0, !7, !13, !5003}
!5003 = !DIGlobalVariableExpression(var: !5004, expr: !DIExpression())
!5004 = distinct !DIGlobalVariable(scope: null, file: !219, line: 480, type: !5005, isLocal: true, isDefinition: true)
!5005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5006)
!5006 = !{!5007}
!5007 = !DISubrange(count: 21)
!5008 = !{i32 7, !"Dwarf Version", i32 5}
!5009 = !{i32 2, !"Debug Info Version", i32 3}
!5010 = !{i32 1, !"wchar_size", i32 2}
!5011 = !{i32 8, !"cf-protection-branch", i32 1}
!5012 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5013 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5014 = !{i32 1, !"Code Model", i32 2}
!5015 = !{i32 1, !"override-stack-alignment", i32 8}
!5016 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5017 = distinct !DISubprogram(name: "ptp_set_pinfunc", scope: !2, file: !2, line: 49, type: !5018, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5020)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!125, !230, !23, !207, !23}
!5020 = !{!5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028}
!5021 = !DILocalVariable(name: "ptp", arg: 1, scope: !5017, file: !2, line: 49, type: !230)
!5022 = !DILocalVariable(name: "pin", arg: 2, scope: !5017, file: !2, line: 49, type: !23)
!5023 = !DILocalVariable(name: "func", arg: 3, scope: !5017, file: !2, line: 50, type: !207)
!5024 = !DILocalVariable(name: "chan", arg: 4, scope: !5017, file: !2, line: 50, type: !23)
!5025 = !DILocalVariable(name: "info", scope: !5017, file: !2, line: 52, type: !4788)
!5026 = !DILocalVariable(name: "pin1", scope: !5017, file: !2, line: 53, type: !4800)
!5027 = !DILocalVariable(name: "pin2", scope: !5017, file: !2, line: 53, type: !4800)
!5028 = !DILocalVariable(name: "i", scope: !5017, file: !2, line: 54, type: !23)
!5029 = !DILocation(line: 49, column: 39, scope: !5017)
!5030 = !DILocation(line: 49, column: 57, scope: !5017)
!5031 = !DILocation(line: 50, column: 29, scope: !5017)
!5032 = !DILocation(line: 50, column: 48, scope: !5017)
!5033 = !DILocation(line: 52, column: 2, scope: !5017)
!5034 = !DILocation(line: 52, column: 25, scope: !5017)
!5035 = !DILocation(line: 52, column: 32, scope: !5017)
!5036 = !DILocation(line: 52, column: 37, scope: !5017)
!5037 = !DILocation(line: 53, column: 2, scope: !5017)
!5038 = !DILocation(line: 53, column: 23, scope: !5017)
!5039 = !DILocation(line: 53, column: 37, scope: !5017)
!5040 = !DILocation(line: 53, column: 45, scope: !5017)
!5041 = !DILocation(line: 53, column: 51, scope: !5017)
!5042 = !DILocation(line: 53, column: 62, scope: !5017)
!5043 = !DILocation(line: 54, column: 2, scope: !5017)
!5044 = !DILocation(line: 54, column: 15, scope: !5017)
!5045 = !DILocation(line: 57, column: 9, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 57, column: 2)
!5047 = !DILocation(line: 57, column: 7, scope: !5046)
!5048 = !DILocation(line: 57, column: 14, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5046, file: !2, line: 57, column: 2)
!5050 = !DILocation(line: 57, column: 18, scope: !5049)
!5051 = !DILocation(line: 57, column: 24, scope: !5049)
!5052 = !DILocation(line: 57, column: 16, scope: !5049)
!5053 = !DILocation(line: 57, column: 2, scope: !5046)
!5054 = !DILocation(line: 58, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !2, line: 58, column: 7)
!5056 = distinct !DILexicalBlock(scope: !5049, file: !2, line: 57, column: 37)
!5057 = !DILocation(line: 58, column: 13, scope: !5055)
!5058 = !DILocation(line: 58, column: 24, scope: !5055)
!5059 = !DILocation(line: 58, column: 27, scope: !5055)
!5060 = !DILocation(line: 58, column: 35, scope: !5055)
!5061 = !DILocation(line: 58, column: 32, scope: !5055)
!5062 = !DILocation(line: 58, column: 40, scope: !5055)
!5063 = !DILocation(line: 59, column: 7, scope: !5055)
!5064 = !DILocation(line: 59, column: 13, scope: !5055)
!5065 = !DILocation(line: 59, column: 24, scope: !5055)
!5066 = !DILocation(line: 59, column: 27, scope: !5055)
!5067 = !DILocation(line: 59, column: 35, scope: !5055)
!5068 = !DILocation(line: 59, column: 32, scope: !5055)
!5069 = !DILocation(line: 58, column: 7, scope: !5056)
!5070 = !DILocation(line: 60, column: 12, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5055, file: !2, line: 59, column: 41)
!5072 = !DILocation(line: 60, column: 18, scope: !5071)
!5073 = !DILocation(line: 60, column: 29, scope: !5071)
!5074 = !DILocation(line: 60, column: 9, scope: !5071)
!5075 = !DILocation(line: 61, column: 4, scope: !5071)
!5076 = !DILocation(line: 63, column: 2, scope: !5056)
!5077 = !DILocation(line: 57, column: 33, scope: !5049)
!5078 = !DILocation(line: 57, column: 2, scope: !5049)
!5079 = distinct !{!5079, !5053, !5080, !5081, !5082}
!5080 = !DILocation(line: 63, column: 2, scope: !5046)
!5081 = !{!"llvm.loop.mustprogress"}
!5082 = !{!"llvm.loop.unroll.disable"}
!5083 = !DILocation(line: 64, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 64, column: 6)
!5085 = !DILocation(line: 64, column: 11, scope: !5084)
!5086 = !DILocation(line: 64, column: 14, scope: !5084)
!5087 = !DILocation(line: 64, column: 19, scope: !5084)
!5088 = !DILocation(line: 64, column: 16, scope: !5084)
!5089 = !DILocation(line: 64, column: 6, scope: !5017)
!5090 = !DILocation(line: 65, column: 3, scope: !5084)
!5091 = !DILocation(line: 68, column: 10, scope: !5017)
!5092 = !DILocation(line: 68, column: 2, scope: !5017)
!5093 = !DILocation(line: 72, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !2, line: 72, column: 7)
!5095 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 68, column: 16)
!5096 = !DILocation(line: 72, column: 15, scope: !5094)
!5097 = !DILocation(line: 72, column: 21, scope: !5094)
!5098 = !DILocation(line: 72, column: 12, scope: !5094)
!5099 = !DILocation(line: 72, column: 7, scope: !5095)
!5100 = !DILocation(line: 73, column: 4, scope: !5094)
!5101 = !DILocation(line: 74, column: 3, scope: !5095)
!5102 = !DILocation(line: 76, column: 7, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5095, file: !2, line: 76, column: 7)
!5104 = !DILocation(line: 76, column: 15, scope: !5103)
!5105 = !DILocation(line: 76, column: 21, scope: !5103)
!5106 = !DILocation(line: 76, column: 12, scope: !5103)
!5107 = !DILocation(line: 76, column: 7, scope: !5095)
!5108 = !DILocation(line: 77, column: 4, scope: !5103)
!5109 = !DILocation(line: 78, column: 3, scope: !5095)
!5110 = !DILocation(line: 80, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5095, file: !2, line: 80, column: 7)
!5112 = !DILocation(line: 80, column: 12, scope: !5111)
!5113 = !DILocation(line: 80, column: 7, scope: !5095)
!5114 = !DILocation(line: 81, column: 4, scope: !5111)
!5115 = !DILocation(line: 82, column: 3, scope: !5095)
!5116 = !DILocation(line: 84, column: 3, scope: !5095)
!5117 = !DILocation(line: 87, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 87, column: 6)
!5119 = !DILocation(line: 87, column: 12, scope: !5118)
!5120 = !DILocation(line: 87, column: 19, scope: !5118)
!5121 = !DILocation(line: 87, column: 25, scope: !5118)
!5122 = !DILocation(line: 87, column: 30, scope: !5118)
!5123 = !DILocation(line: 87, column: 36, scope: !5118)
!5124 = !DILocation(line: 87, column: 6, scope: !5017)
!5125 = !DILocation(line: 88, column: 3, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !2, line: 88, column: 3)
!5127 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 87, column: 43)
!5128 = !DILocation(line: 88, column: 3, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 88, column: 3)
!5130 = !DILocation(line: 90, column: 3, scope: !5127)
!5131 = !DILocation(line: 94, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 94, column: 6)
!5133 = !DILocation(line: 94, column: 6, scope: !5017)
!5134 = !DILocation(line: 95, column: 23, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5132, file: !2, line: 94, column: 12)
!5136 = !DILocation(line: 95, column: 29, scope: !5135)
!5137 = !DILocation(line: 95, column: 35, scope: !5135)
!5138 = !DILocation(line: 95, column: 3, scope: !5135)
!5139 = !DILocation(line: 96, column: 3, scope: !5135)
!5140 = !DILocation(line: 96, column: 9, scope: !5135)
!5141 = !DILocation(line: 96, column: 14, scope: !5135)
!5142 = !DILocation(line: 97, column: 3, scope: !5135)
!5143 = !DILocation(line: 97, column: 9, scope: !5135)
!5144 = !DILocation(line: 97, column: 14, scope: !5135)
!5145 = !DILocation(line: 98, column: 2, scope: !5135)
!5146 = !DILocation(line: 99, column: 22, scope: !5017)
!5147 = !DILocation(line: 99, column: 28, scope: !5017)
!5148 = !DILocation(line: 99, column: 34, scope: !5017)
!5149 = !DILocation(line: 99, column: 40, scope: !5017)
!5150 = !DILocation(line: 99, column: 46, scope: !5017)
!5151 = !DILocation(line: 99, column: 2, scope: !5017)
!5152 = !DILocation(line: 100, column: 15, scope: !5017)
!5153 = !DILocation(line: 100, column: 2, scope: !5017)
!5154 = !DILocation(line: 100, column: 8, scope: !5017)
!5155 = !DILocation(line: 100, column: 13, scope: !5017)
!5156 = !DILocation(line: 101, column: 15, scope: !5017)
!5157 = !DILocation(line: 101, column: 2, scope: !5017)
!5158 = !DILocation(line: 101, column: 8, scope: !5017)
!5159 = !DILocation(line: 101, column: 13, scope: !5017)
!5160 = !DILocation(line: 103, column: 2, scope: !5017)
!5161 = !DILocation(line: 104, column: 1, scope: !5017)
!5162 = !DISubprogram(name: "_printk", scope: !5163, file: !5163, line: 153, type: !5164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5163 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!125, !265, null}
!5166 = distinct !DISubprogram(name: "ptp_disable_pinfunc", scope: !2, file: !2, line: 19, type: !5167, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!125, !4788, !207, !23}
!5169 = !{!5170, !5171, !5172, !5173, !5174}
!5170 = !DILocalVariable(name: "ops", arg: 1, scope: !5166, file: !2, line: 19, type: !4788)
!5171 = !DILocalVariable(name: "func", arg: 2, scope: !5166, file: !2, line: 20, type: !207)
!5172 = !DILocalVariable(name: "chan", arg: 3, scope: !5166, file: !2, line: 20, type: !23)
!5173 = !DILocalVariable(name: "rq", scope: !5166, file: !2, line: 22, type: !159)
!5174 = !DILocalVariable(name: "err", scope: !5166, file: !2, line: 23, type: !125)
!5175 = !DILocation(line: 19, column: 55, scope: !5166)
!5176 = !DILocation(line: 20, column: 33, scope: !5166)
!5177 = !DILocation(line: 20, column: 52, scope: !5166)
!5178 = !DILocation(line: 22, column: 2, scope: !5166)
!5179 = !DILocation(line: 22, column: 27, scope: !5166)
!5180 = !DILocation(line: 23, column: 2, scope: !5166)
!5181 = !DILocation(line: 23, column: 6, scope: !5166)
!5182 = !DILocation(line: 25, column: 2, scope: !5166)
!5183 = !DILocation(line: 27, column: 10, scope: !5166)
!5184 = !DILocation(line: 27, column: 2, scope: !5166)
!5185 = !DILocation(line: 31, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5166, file: !2, line: 27, column: 16)
!5187 = !DILocation(line: 31, column: 11, scope: !5186)
!5188 = !DILocation(line: 32, column: 20, scope: !5186)
!5189 = !DILocation(line: 32, column: 6, scope: !5186)
!5190 = !DILocation(line: 32, column: 12, scope: !5186)
!5191 = !DILocation(line: 32, column: 18, scope: !5186)
!5192 = !DILocation(line: 33, column: 9, scope: !5186)
!5193 = !DILocation(line: 33, column: 14, scope: !5186)
!5194 = !DILocation(line: 33, column: 21, scope: !5186)
!5195 = !DILocation(line: 33, column: 7, scope: !5186)
!5196 = !DILocation(line: 34, column: 3, scope: !5186)
!5197 = !DILocation(line: 36, column: 6, scope: !5186)
!5198 = !DILocation(line: 36, column: 11, scope: !5186)
!5199 = !DILocation(line: 37, column: 21, scope: !5186)
!5200 = !DILocation(line: 37, column: 6, scope: !5186)
!5201 = !DILocation(line: 37, column: 13, scope: !5186)
!5202 = !DILocation(line: 37, column: 19, scope: !5186)
!5203 = !DILocation(line: 38, column: 9, scope: !5186)
!5204 = !DILocation(line: 38, column: 14, scope: !5186)
!5205 = !DILocation(line: 38, column: 21, scope: !5186)
!5206 = !DILocation(line: 38, column: 7, scope: !5186)
!5207 = !DILocation(line: 39, column: 3, scope: !5186)
!5208 = !DILocation(line: 43, column: 3, scope: !5186)
!5209 = !DILocation(line: 46, column: 9, scope: !5166)
!5210 = !DILocation(line: 46, column: 2, scope: !5166)
!5211 = !DILocation(line: 47, column: 1, scope: !5166)
!5212 = distinct !DISubprogram(name: "ptp_open", scope: !2, file: !2, line: 106, type: !4315, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5213)
!5213 = !{!5214, !5215}
!5214 = !DILocalVariable(name: "pc", arg: 1, scope: !5212, file: !2, line: 106, type: !4268)
!5215 = !DILocalVariable(name: "fmode", arg: 2, scope: !5212, file: !2, line: 106, type: !1392)
!5216 = !DILocation(line: 106, column: 34, scope: !5212)
!5217 = !DILocation(line: 106, column: 46, scope: !5212)
!5218 = !DILocation(line: 108, column: 2, scope: !5212)
!5219 = distinct !DISubprogram(name: "ptp_ioctl", scope: !2, file: !2, line: 111, type: !4311, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5220)
!5220 = !{!5221, !5222, !5223, !5224, !5225, !5227, !5238, !5245, !5246, !5247, !5257, !5258, !5259, !5275, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5288, !5290, !5291, !5292, !5294, !5295, !5296}
!5221 = !DILocalVariable(name: "pc", arg: 1, scope: !5219, file: !2, line: 111, type: !4268)
!5222 = !DILocalVariable(name: "cmd", arg: 2, scope: !5219, file: !2, line: 111, type: !23)
!5223 = !DILocalVariable(name: "arg", arg: 3, scope: !5219, file: !2, line: 111, type: !395)
!5224 = !DILocalVariable(name: "ptp", scope: !5219, file: !2, line: 113, type: !230)
!5225 = !DILocalVariable(name: "__mptr", scope: !5226, file: !2, line: 113, type: !229)
!5226 = distinct !DILexicalBlock(scope: !5219, file: !2, line: 113, column: 26)
!5227 = !DILocalVariable(name: "extoff", scope: !5219, file: !2, line: 114, type: !5228)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_sys_offset_extended", file: !167, line: 151, size: 9728, elements: !5230)
!5230 = !{!5231, !5232, !5234}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "n_samples", scope: !5229, file: !167, line: 152, baseType: !23, size: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !5229, file: !167, line: 153, baseType: !5233, size: 96, offset: 32)
!5233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 96, elements: !346)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !5229, file: !167, line: 158, baseType: !5235, size: 9600, offset: 128)
!5235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 9600, elements: !5236)
!5236 = !{!5237, !347}
!5237 = !DISubrange(count: 25)
!5238 = !DILocalVariable(name: "precise_offset", scope: !5219, file: !2, line: 115, type: !5239)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_sys_offset_precise", file: !167, line: 161, size: 512, elements: !5240)
!5240 = !{!5241, !5242, !5243, !5244}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5239, file: !167, line: 162, baseType: !182, size: 128)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !5239, file: !167, line: 163, baseType: !182, size: 128, offset: 128)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !5239, file: !167, line: 164, baseType: !182, size: 128, offset: 256)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !5239, file: !167, line: 165, baseType: !200, size: 128, offset: 384)
!5245 = !DILocalVariable(name: "xtstamp", scope: !5219, file: !2, line: 116, type: !4846)
!5246 = !DILocalVariable(name: "ops", scope: !5219, file: !2, line: 117, type: !4788)
!5247 = !DILocalVariable(name: "sysoff", scope: !5219, file: !2, line: 118, type: !5248)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_sys_offset", file: !167, line: 140, size: 6656, elements: !5250)
!5250 = !{!5251, !5252, !5253}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "n_samples", scope: !5249, file: !167, line: 141, baseType: !23, size: 32)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !5249, file: !167, line: 142, baseType: !5233, size: 96, offset: 32)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !5249, file: !167, line: 148, baseType: !5254, size: 6528, offset: 128)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 6528, elements: !5255)
!5255 = !{!5256}
!5256 = !DISubrange(count: 51)
!5257 = !DILocalVariable(name: "sts", scope: !5219, file: !2, line: 119, type: !4837)
!5258 = !DILocalVariable(name: "req", scope: !5219, file: !2, line: 120, type: !159)
!5259 = !DILocalVariable(name: "caps", scope: !5219, file: !2, line: 121, type: !5260)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_caps", file: !167, line: 87, size: 640, elements: !5261)
!5261 = !{!5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !5260, file: !167, line: 88, baseType: !125, size: 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !5260, file: !167, line: 89, baseType: !125, size: 32, offset: 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !5260, file: !167, line: 90, baseType: !125, size: 32, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !5260, file: !167, line: 91, baseType: !125, size: 32, offset: 96)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !5260, file: !167, line: 92, baseType: !125, size: 32, offset: 128)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !5260, file: !167, line: 93, baseType: !125, size: 32, offset: 160)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "cross_timestamping", scope: !5260, file: !167, line: 95, baseType: !125, size: 32, offset: 192)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_phase", scope: !5260, file: !167, line: 97, baseType: !125, size: 32, offset: 224)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "max_phase_adj", scope: !5260, file: !167, line: 98, baseType: !125, size: 32, offset: 256)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !5260, file: !167, line: 99, baseType: !5272, size: 352, offset: 288)
!5272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 352, elements: !5273)
!5273 = !{!5274}
!5274 = !DISubrange(count: 11)
!5275 = !DILocalVariable(name: "pct", scope: !5219, file: !2, line: 122, type: !5276)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!5277 = !DILocalVariable(name: "i", scope: !5219, file: !2, line: 123, type: !23)
!5278 = !DILocalVariable(name: "pin_index", scope: !5219, file: !2, line: 123, type: !23)
!5279 = !DILocalVariable(name: "pd", scope: !5219, file: !2, line: 124, type: !4801)
!5280 = !DILocalVariable(name: "ts", scope: !5219, file: !2, line: 125, type: !3449)
!5281 = !DILocalVariable(name: "enable", scope: !5219, file: !2, line: 126, type: !125)
!5282 = !DILocalVariable(name: "err", scope: !5219, file: !2, line: 126, type: !125)
!5283 = !DILocalVariable(name: "perout", scope: !5284, file: !2, line: 203, type: !5287)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !2, line: 202, column: 35)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 202, column: 7)
!5286 = distinct !DILexicalBlock(scope: !5219, file: !2, line: 131, column: 15)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!5288 = !DILocalVariable(name: "_i", scope: !5289, file: !2, line: 390, type: !23)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 390, column: 15)
!5290 = !DILocalVariable(name: "_s", scope: !5289, file: !2, line: 390, type: !125)
!5291 = !DILocalVariable(name: "_mask", scope: !5289, file: !2, line: 390, type: !395)
!5292 = !DILocalVariable(name: "_i", scope: !5293, file: !2, line: 422, type: !23)
!5293 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 422, column: 15)
!5294 = !DILocalVariable(name: "_s", scope: !5293, file: !2, line: 422, type: !125)
!5295 = !DILocalVariable(name: "_mask", scope: !5293, file: !2, line: 422, type: !395)
!5296 = !DILabel(scope: !5219, name: "out", file: !2, line: 434)
!5297 = !DILocation(line: 111, column: 36, scope: !5219)
!5298 = !DILocation(line: 111, column: 53, scope: !5219)
!5299 = !DILocation(line: 111, column: 72, scope: !5219)
!5300 = !DILocation(line: 113, column: 2, scope: !5219)
!5301 = !DILocation(line: 113, column: 20, scope: !5219)
!5302 = !DILocation(line: 113, column: 26, scope: !5226)
!5303 = !DILocation(line: 113, column: 26, scope: !5219)
!5304 = !DILocation(line: 114, column: 2, scope: !5219)
!5305 = !DILocation(line: 114, column: 34, scope: !5219)
!5306 = !DILocation(line: 115, column: 2, scope: !5219)
!5307 = !DILocation(line: 115, column: 32, scope: !5219)
!5308 = !DILocation(line: 116, column: 2, scope: !5219)
!5309 = !DILocation(line: 116, column: 35, scope: !5219)
!5310 = !DILocation(line: 117, column: 2, scope: !5219)
!5311 = !DILocation(line: 117, column: 25, scope: !5219)
!5312 = !DILocation(line: 117, column: 31, scope: !5219)
!5313 = !DILocation(line: 117, column: 36, scope: !5219)
!5314 = !DILocation(line: 118, column: 2, scope: !5219)
!5315 = !DILocation(line: 118, column: 25, scope: !5219)
!5316 = !DILocation(line: 119, column: 2, scope: !5219)
!5317 = !DILocation(line: 119, column: 30, scope: !5219)
!5318 = !DILocation(line: 120, column: 2, scope: !5219)
!5319 = !DILocation(line: 120, column: 27, scope: !5219)
!5320 = !DILocation(line: 121, column: 2, scope: !5219)
!5321 = !DILocation(line: 121, column: 24, scope: !5219)
!5322 = !DILocation(line: 122, column: 2, scope: !5219)
!5323 = !DILocation(line: 122, column: 25, scope: !5219)
!5324 = !DILocation(line: 123, column: 2, scope: !5219)
!5325 = !DILocation(line: 123, column: 15, scope: !5219)
!5326 = !DILocation(line: 123, column: 18, scope: !5219)
!5327 = !DILocation(line: 124, column: 2, scope: !5219)
!5328 = !DILocation(line: 124, column: 22, scope: !5219)
!5329 = !DILocation(line: 125, column: 2, scope: !5219)
!5330 = !DILocation(line: 125, column: 20, scope: !5219)
!5331 = !DILocation(line: 126, column: 2, scope: !5219)
!5332 = !DILocation(line: 126, column: 6, scope: !5219)
!5333 = !DILocation(line: 126, column: 14, scope: !5219)
!5334 = !DILocation(line: 128, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5219, file: !2, line: 128, column: 6)
!5336 = !DILocation(line: 128, column: 26, scope: !5335)
!5337 = !DILocation(line: 128, column: 29, scope: !5335)
!5338 = !DILocation(line: 128, column: 33, scope: !5335)
!5339 = !DILocation(line: 128, column: 51, scope: !5335)
!5340 = !DILocation(line: 128, column: 54, scope: !5335)
!5341 = !DILocation(line: 128, column: 58, scope: !5335)
!5342 = !DILocation(line: 128, column: 6, scope: !5219)
!5343 = !DILocation(line: 129, column: 35, scope: !5335)
!5344 = !DILocation(line: 129, column: 24, scope: !5335)
!5345 = !DILocation(line: 129, column: 9, scope: !5335)
!5346 = !DILocation(line: 129, column: 7, scope: !5335)
!5347 = !DILocation(line: 129, column: 3, scope: !5335)
!5348 = !DILocation(line: 131, column: 10, scope: !5219)
!5349 = !DILocation(line: 131, column: 2, scope: !5219)
!5350 = !DILocation(line: 135, column: 3, scope: !5286)
!5351 = !DILocation(line: 137, column: 18, scope: !5286)
!5352 = !DILocation(line: 137, column: 23, scope: !5286)
!5353 = !DILocation(line: 137, column: 29, scope: !5286)
!5354 = !DILocation(line: 137, column: 8, scope: !5286)
!5355 = !DILocation(line: 137, column: 16, scope: !5286)
!5356 = !DILocation(line: 138, column: 18, scope: !5286)
!5357 = !DILocation(line: 138, column: 23, scope: !5286)
!5358 = !DILocation(line: 138, column: 29, scope: !5286)
!5359 = !DILocation(line: 138, column: 8, scope: !5286)
!5360 = !DILocation(line: 138, column: 16, scope: !5286)
!5361 = !DILocation(line: 139, column: 19, scope: !5286)
!5362 = !DILocation(line: 139, column: 24, scope: !5286)
!5363 = !DILocation(line: 139, column: 30, scope: !5286)
!5364 = !DILocation(line: 139, column: 8, scope: !5286)
!5365 = !DILocation(line: 139, column: 17, scope: !5286)
!5366 = !DILocation(line: 140, column: 20, scope: !5286)
!5367 = !DILocation(line: 140, column: 25, scope: !5286)
!5368 = !DILocation(line: 140, column: 31, scope: !5286)
!5369 = !DILocation(line: 140, column: 8, scope: !5286)
!5370 = !DILocation(line: 140, column: 18, scope: !5286)
!5371 = !DILocation(line: 141, column: 14, scope: !5286)
!5372 = !DILocation(line: 141, column: 19, scope: !5286)
!5373 = !DILocation(line: 141, column: 25, scope: !5286)
!5374 = !DILocation(line: 141, column: 8, scope: !5286)
!5375 = !DILocation(line: 141, column: 12, scope: !5286)
!5376 = !DILocation(line: 142, column: 17, scope: !5286)
!5377 = !DILocation(line: 142, column: 22, scope: !5286)
!5378 = !DILocation(line: 142, column: 28, scope: !5286)
!5379 = !DILocation(line: 142, column: 8, scope: !5286)
!5380 = !DILocation(line: 142, column: 15, scope: !5286)
!5381 = !DILocation(line: 143, column: 29, scope: !5286)
!5382 = !DILocation(line: 143, column: 34, scope: !5286)
!5383 = !DILocation(line: 143, column: 40, scope: !5286)
!5384 = !DILocation(line: 143, column: 55, scope: !5286)
!5385 = !DILocation(line: 143, column: 8, scope: !5286)
!5386 = !DILocation(line: 143, column: 27, scope: !5286)
!5387 = !DILocation(line: 144, column: 23, scope: !5286)
!5388 = !DILocation(line: 144, column: 28, scope: !5286)
!5389 = !DILocation(line: 144, column: 34, scope: !5286)
!5390 = !DILocation(line: 144, column: 43, scope: !5286)
!5391 = !DILocation(line: 144, column: 51, scope: !5286)
!5392 = !DILocation(line: 145, column: 9, scope: !5286)
!5393 = !DILocation(line: 145, column: 14, scope: !5286)
!5394 = !DILocation(line: 145, column: 20, scope: !5286)
!5395 = !DILocation(line: 145, column: 32, scope: !5286)
!5396 = !DILocation(line: 0, scope: !5286)
!5397 = !DILocation(line: 144, column: 8, scope: !5286)
!5398 = !DILocation(line: 144, column: 21, scope: !5286)
!5399 = !DILocation(line: 146, column: 12, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 146, column: 7)
!5401 = !DILocation(line: 146, column: 7, scope: !5400)
!5402 = !DILocation(line: 146, column: 7, scope: !5286)
!5403 = !DILocation(line: 147, column: 25, scope: !5400)
!5404 = !DILocation(line: 147, column: 30, scope: !5400)
!5405 = !DILocation(line: 147, column: 36, scope: !5400)
!5406 = !DILocation(line: 147, column: 48, scope: !5400)
!5407 = !DILocation(line: 147, column: 53, scope: !5400)
!5408 = !DILocation(line: 147, column: 9, scope: !5400)
!5409 = !DILocation(line: 147, column: 23, scope: !5400)
!5410 = !DILocation(line: 147, column: 4, scope: !5400)
!5411 = !DILocation(line: 148, column: 35, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 148, column: 7)
!5413 = !DILocation(line: 148, column: 20, scope: !5412)
!5414 = !DILocation(line: 148, column: 7, scope: !5412)
!5415 = !DILocation(line: 148, column: 7, scope: !5286)
!5416 = !DILocation(line: 149, column: 8, scope: !5412)
!5417 = !DILocation(line: 149, column: 4, scope: !5412)
!5418 = !DILocation(line: 150, column: 3, scope: !5286)
!5419 = !DILocation(line: 154, column: 3, scope: !5286)
!5420 = !DILocation(line: 156, column: 27, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 156, column: 7)
!5422 = !DILocation(line: 156, column: 49, scope: !5421)
!5423 = !DILocation(line: 156, column: 34, scope: !5421)
!5424 = !DILocation(line: 156, column: 7, scope: !5421)
!5425 = !DILocation(line: 156, column: 7, scope: !5286)
!5426 = !DILocation(line: 158, column: 8, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5421, file: !2, line: 157, column: 28)
!5428 = !DILocation(line: 159, column: 4, scope: !5427)
!5429 = !DILocation(line: 161, column: 7, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 161, column: 7)
!5431 = !DILocation(line: 161, column: 11, scope: !5430)
!5432 = !DILocation(line: 161, column: 7, scope: !5286)
!5433 = !DILocation(line: 163, column: 8, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5430, file: !2, line: 161, column: 34)
!5435 = !DILocation(line: 163, column: 14, scope: !5434)
!5436 = !DILocation(line: 163, column: 20, scope: !5434)
!5437 = !DILocation(line: 165, column: 13, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5434, file: !2, line: 165, column: 8)
!5439 = !DILocation(line: 165, column: 19, scope: !5438)
!5440 = !DILocation(line: 165, column: 25, scope: !5438)
!5441 = !DILocation(line: 165, column: 51, scope: !5438)
!5442 = !DILocation(line: 166, column: 12, scope: !5438)
!5443 = !DILocation(line: 166, column: 18, scope: !5438)
!5444 = !DILocation(line: 166, column: 8, scope: !5438)
!5445 = !DILocation(line: 166, column: 25, scope: !5438)
!5446 = !DILocation(line: 166, column: 32, scope: !5438)
!5447 = !DILocation(line: 166, column: 38, scope: !5438)
!5448 = !DILocation(line: 166, column: 28, scope: !5438)
!5449 = !DILocation(line: 165, column: 8, scope: !5434)
!5450 = !DILocation(line: 167, column: 9, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5438, file: !2, line: 166, column: 46)
!5452 = !DILocation(line: 168, column: 5, scope: !5451)
!5453 = !DILocation(line: 171, column: 13, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5434, file: !2, line: 171, column: 8)
!5455 = !DILocation(line: 171, column: 19, scope: !5454)
!5456 = !DILocation(line: 171, column: 25, scope: !5454)
!5457 = !DILocation(line: 171, column: 47, scope: !5454)
!5458 = !DILocation(line: 172, column: 13, scope: !5454)
!5459 = !DILocation(line: 172, column: 19, scope: !5454)
!5460 = !DILocation(line: 172, column: 25, scope: !5454)
!5461 = !DILocation(line: 172, column: 44, scope: !5454)
!5462 = !DILocation(line: 171, column: 8, scope: !5434)
!5463 = !DILocation(line: 173, column: 9, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 172, column: 50)
!5465 = !DILocation(line: 174, column: 5, scope: !5464)
!5466 = !DILocation(line: 176, column: 3, scope: !5434)
!5467 = !DILocation(line: 176, column: 14, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5430, file: !2, line: 176, column: 14)
!5469 = !DILocation(line: 176, column: 18, scope: !5468)
!5470 = !DILocation(line: 176, column: 14, scope: !5430)
!5471 = !DILocation(line: 177, column: 8, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5468, file: !2, line: 176, column: 40)
!5473 = !DILocation(line: 177, column: 14, scope: !5472)
!5474 = !DILocation(line: 177, column: 20, scope: !5472)
!5475 = !DILocation(line: 178, column: 8, scope: !5472)
!5476 = !DILocation(line: 178, column: 14, scope: !5472)
!5477 = !DILocation(line: 178, column: 4, scope: !5472)
!5478 = !DILocation(line: 178, column: 21, scope: !5472)
!5479 = !DILocation(line: 179, column: 8, scope: !5472)
!5480 = !DILocation(line: 179, column: 14, scope: !5472)
!5481 = !DILocation(line: 179, column: 4, scope: !5472)
!5482 = !DILocation(line: 179, column: 21, scope: !5472)
!5483 = !DILocation(line: 180, column: 3, scope: !5472)
!5484 = !DILocation(line: 181, column: 11, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 181, column: 7)
!5486 = !DILocation(line: 181, column: 17, scope: !5485)
!5487 = !DILocation(line: 181, column: 26, scope: !5485)
!5488 = !DILocation(line: 181, column: 31, scope: !5485)
!5489 = !DILocation(line: 181, column: 23, scope: !5485)
!5490 = !DILocation(line: 181, column: 7, scope: !5286)
!5491 = !DILocation(line: 182, column: 8, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5485, file: !2, line: 181, column: 41)
!5493 = !DILocation(line: 183, column: 4, scope: !5492)
!5494 = !DILocation(line: 185, column: 7, scope: !5286)
!5495 = !DILocation(line: 185, column: 12, scope: !5286)
!5496 = !DILocation(line: 186, column: 16, scope: !5286)
!5497 = !DILocation(line: 186, column: 22, scope: !5286)
!5498 = !DILocation(line: 186, column: 28, scope: !5286)
!5499 = !DILocation(line: 186, column: 12, scope: !5286)
!5500 = !DILocation(line: 186, column: 10, scope: !5286)
!5501 = !DILocation(line: 187, column: 33, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 187, column: 7)
!5503 = !DILocation(line: 187, column: 38, scope: !5502)
!5504 = !DILocation(line: 187, column: 7, scope: !5502)
!5505 = !DILocation(line: 187, column: 7, scope: !5286)
!5506 = !DILocation(line: 188, column: 4, scope: !5502)
!5507 = !DILocation(line: 189, column: 9, scope: !5286)
!5508 = !DILocation(line: 189, column: 14, scope: !5286)
!5509 = !DILocation(line: 189, column: 21, scope: !5286)
!5510 = !DILocation(line: 189, column: 32, scope: !5286)
!5511 = !DILocation(line: 189, column: 7, scope: !5286)
!5512 = !DILocation(line: 190, column: 17, scope: !5286)
!5513 = !DILocation(line: 190, column: 22, scope: !5286)
!5514 = !DILocation(line: 190, column: 3, scope: !5286)
!5515 = !DILocation(line: 191, column: 3, scope: !5286)
!5516 = !DILocation(line: 195, column: 3, scope: !5286)
!5517 = !DILocation(line: 197, column: 27, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 197, column: 7)
!5519 = !DILocation(line: 197, column: 50, scope: !5518)
!5520 = !DILocation(line: 197, column: 35, scope: !5518)
!5521 = !DILocation(line: 197, column: 7, scope: !5518)
!5522 = !DILocation(line: 197, column: 7, scope: !5286)
!5523 = !DILocation(line: 199, column: 8, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 198, column: 29)
!5525 = !DILocation(line: 200, column: 4, scope: !5524)
!5526 = !DILocation(line: 202, column: 7, scope: !5285)
!5527 = !DILocation(line: 202, column: 11, scope: !5285)
!5528 = !DILocation(line: 202, column: 7, scope: !5286)
!5529 = !DILocation(line: 203, column: 4, scope: !5284)
!5530 = !DILocation(line: 203, column: 31, scope: !5284)
!5531 = !DILocation(line: 203, column: 45, scope: !5284)
!5532 = !DILocation(line: 205, column: 8, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5284, file: !2, line: 205, column: 8)
!5534 = !DILocation(line: 205, column: 16, scope: !5533)
!5535 = !DILocation(line: 205, column: 22, scope: !5533)
!5536 = !DILocation(line: 205, column: 8, scope: !5284)
!5537 = !DILocation(line: 206, column: 9, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 205, column: 49)
!5539 = !DILocation(line: 207, column: 5, scope: !5538)
!5540 = !DILocation(line: 214, column: 10, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5284, file: !2, line: 214, column: 8)
!5542 = !DILocation(line: 214, column: 18, scope: !5541)
!5543 = !DILocation(line: 214, column: 24, scope: !5541)
!5544 = !DILocation(line: 214, column: 49, scope: !5541)
!5545 = !DILocation(line: 215, column: 9, scope: !5541)
!5546 = !DILocation(line: 215, column: 17, scope: !5541)
!5547 = !DILocation(line: 215, column: 24, scope: !5541)
!5548 = !DILocation(line: 215, column: 27, scope: !5541)
!5549 = !DILocation(line: 215, column: 35, scope: !5541)
!5550 = !DILocation(line: 215, column: 42, scope: !5541)
!5551 = !DILocation(line: 216, column: 9, scope: !5541)
!5552 = !DILocation(line: 216, column: 17, scope: !5541)
!5553 = !DILocation(line: 216, column: 24, scope: !5541)
!5554 = !DILocation(line: 216, column: 27, scope: !5541)
!5555 = !DILocation(line: 216, column: 35, scope: !5541)
!5556 = !DILocation(line: 214, column: 8, scope: !5284)
!5557 = !DILocation(line: 217, column: 9, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 216, column: 44)
!5559 = !DILocation(line: 218, column: 5, scope: !5558)
!5560 = !DILocation(line: 220, column: 8, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5284, file: !2, line: 220, column: 8)
!5562 = !DILocation(line: 220, column: 16, scope: !5561)
!5563 = !DILocation(line: 220, column: 22, scope: !5561)
!5564 = !DILocation(line: 220, column: 8, scope: !5284)
!5565 = !DILocation(line: 222, column: 9, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 222, column: 9)
!5567 = distinct !DILexicalBlock(scope: !5561, file: !2, line: 220, column: 47)
!5568 = !DILocation(line: 222, column: 17, scope: !5566)
!5569 = !DILocation(line: 222, column: 20, scope: !5566)
!5570 = !DILocation(line: 222, column: 26, scope: !5566)
!5571 = !DILocation(line: 222, column: 34, scope: !5566)
!5572 = !DILocation(line: 222, column: 41, scope: !5566)
!5573 = !DILocation(line: 222, column: 24, scope: !5566)
!5574 = !DILocation(line: 222, column: 45, scope: !5566)
!5575 = !DILocation(line: 223, column: 10, scope: !5566)
!5576 = !DILocation(line: 223, column: 18, scope: !5566)
!5577 = !DILocation(line: 223, column: 21, scope: !5566)
!5578 = !DILocation(line: 223, column: 28, scope: !5566)
!5579 = !DILocation(line: 223, column: 36, scope: !5566)
!5580 = !DILocation(line: 223, column: 43, scope: !5566)
!5581 = !DILocation(line: 223, column: 25, scope: !5566)
!5582 = !DILocation(line: 223, column: 47, scope: !5566)
!5583 = !DILocation(line: 224, column: 10, scope: !5566)
!5584 = !DILocation(line: 224, column: 18, scope: !5566)
!5585 = !DILocation(line: 224, column: 21, scope: !5566)
!5586 = !DILocation(line: 224, column: 28, scope: !5566)
!5587 = !DILocation(line: 224, column: 36, scope: !5566)
!5588 = !DILocation(line: 224, column: 43, scope: !5566)
!5589 = !DILocation(line: 224, column: 26, scope: !5566)
!5590 = !DILocation(line: 222, column: 9, scope: !5567)
!5591 = !DILocation(line: 225, column: 10, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5566, file: !2, line: 224, column: 50)
!5593 = !DILocation(line: 226, column: 6, scope: !5592)
!5594 = !DILocation(line: 228, column: 4, scope: !5567)
!5595 = !DILocation(line: 229, column: 8, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5284, file: !2, line: 229, column: 8)
!5597 = !DILocation(line: 229, column: 16, scope: !5596)
!5598 = !DILocation(line: 229, column: 22, scope: !5596)
!5599 = !DILocation(line: 229, column: 8, scope: !5284)
!5600 = !DILocation(line: 235, column: 9, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 235, column: 9)
!5602 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 229, column: 42)
!5603 = !DILocation(line: 235, column: 17, scope: !5601)
!5604 = !DILocation(line: 235, column: 23, scope: !5601)
!5605 = !DILocation(line: 235, column: 29, scope: !5601)
!5606 = !DILocation(line: 235, column: 37, scope: !5601)
!5607 = !DILocation(line: 235, column: 44, scope: !5601)
!5608 = !DILocation(line: 235, column: 27, scope: !5601)
!5609 = !DILocation(line: 235, column: 48, scope: !5601)
!5610 = !DILocation(line: 236, column: 10, scope: !5601)
!5611 = !DILocation(line: 236, column: 18, scope: !5601)
!5612 = !DILocation(line: 236, column: 24, scope: !5601)
!5613 = !DILocation(line: 236, column: 31, scope: !5601)
!5614 = !DILocation(line: 236, column: 39, scope: !5601)
!5615 = !DILocation(line: 236, column: 46, scope: !5601)
!5616 = !DILocation(line: 236, column: 28, scope: !5601)
!5617 = !DILocation(line: 236, column: 50, scope: !5601)
!5618 = !DILocation(line: 237, column: 10, scope: !5601)
!5619 = !DILocation(line: 237, column: 18, scope: !5601)
!5620 = !DILocation(line: 237, column: 24, scope: !5601)
!5621 = !DILocation(line: 237, column: 32, scope: !5601)
!5622 = !DILocation(line: 237, column: 40, scope: !5601)
!5623 = !DILocation(line: 237, column: 47, scope: !5601)
!5624 = !DILocation(line: 237, column: 29, scope: !5601)
!5625 = !DILocation(line: 235, column: 9, scope: !5602)
!5626 = !DILocation(line: 238, column: 10, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5601, file: !2, line: 237, column: 54)
!5628 = !DILocation(line: 239, column: 6, scope: !5627)
!5629 = !DILocation(line: 241, column: 4, scope: !5602)
!5630 = !DILocation(line: 242, column: 3, scope: !5285)
!5631 = !DILocation(line: 242, column: 3, scope: !5284)
!5632 = !DILocation(line: 242, column: 14, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5285, file: !2, line: 242, column: 14)
!5634 = !DILocation(line: 242, column: 18, scope: !5633)
!5635 = !DILocation(line: 242, column: 14, scope: !5285)
!5636 = !DILocation(line: 243, column: 8, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 242, column: 41)
!5638 = !DILocation(line: 243, column: 15, scope: !5637)
!5639 = !DILocation(line: 243, column: 21, scope: !5637)
!5640 = !DILocation(line: 244, column: 8, scope: !5637)
!5641 = !DILocation(line: 244, column: 15, scope: !5637)
!5642 = !DILocation(line: 244, column: 4, scope: !5637)
!5643 = !DILocation(line: 244, column: 22, scope: !5637)
!5644 = !DILocation(line: 245, column: 8, scope: !5637)
!5645 = !DILocation(line: 245, column: 15, scope: !5637)
!5646 = !DILocation(line: 245, column: 4, scope: !5637)
!5647 = !DILocation(line: 245, column: 22, scope: !5637)
!5648 = !DILocation(line: 246, column: 8, scope: !5637)
!5649 = !DILocation(line: 246, column: 15, scope: !5637)
!5650 = !DILocation(line: 246, column: 4, scope: !5637)
!5651 = !DILocation(line: 246, column: 22, scope: !5637)
!5652 = !DILocation(line: 247, column: 8, scope: !5637)
!5653 = !DILocation(line: 247, column: 15, scope: !5637)
!5654 = !DILocation(line: 247, column: 4, scope: !5637)
!5655 = !DILocation(line: 247, column: 22, scope: !5637)
!5656 = !DILocation(line: 248, column: 3, scope: !5637)
!5657 = !DILocation(line: 249, column: 11, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 249, column: 7)
!5659 = !DILocation(line: 249, column: 18, scope: !5658)
!5660 = !DILocation(line: 249, column: 27, scope: !5658)
!5661 = !DILocation(line: 249, column: 32, scope: !5658)
!5662 = !DILocation(line: 249, column: 24, scope: !5658)
!5663 = !DILocation(line: 249, column: 7, scope: !5286)
!5664 = !DILocation(line: 250, column: 8, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5658, file: !2, line: 249, column: 43)
!5666 = !DILocation(line: 251, column: 4, scope: !5665)
!5667 = !DILocation(line: 253, column: 7, scope: !5286)
!5668 = !DILocation(line: 253, column: 12, scope: !5286)
!5669 = !DILocation(line: 254, column: 16, scope: !5286)
!5670 = !DILocation(line: 254, column: 23, scope: !5286)
!5671 = !DILocation(line: 254, column: 30, scope: !5286)
!5672 = !DILocation(line: 254, column: 12, scope: !5286)
!5673 = !DILocation(line: 254, column: 34, scope: !5286)
!5674 = !DILocation(line: 254, column: 41, scope: !5286)
!5675 = !DILocation(line: 254, column: 48, scope: !5286)
!5676 = !DILocation(line: 254, column: 55, scope: !5286)
!5677 = !DILocation(line: 254, column: 10, scope: !5286)
!5678 = !DILocation(line: 255, column: 33, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 255, column: 7)
!5680 = !DILocation(line: 255, column: 38, scope: !5679)
!5681 = !DILocation(line: 255, column: 7, scope: !5679)
!5682 = !DILocation(line: 255, column: 7, scope: !5286)
!5683 = !DILocation(line: 256, column: 4, scope: !5679)
!5684 = !DILocation(line: 257, column: 9, scope: !5286)
!5685 = !DILocation(line: 257, column: 14, scope: !5286)
!5686 = !DILocation(line: 257, column: 21, scope: !5286)
!5687 = !DILocation(line: 257, column: 32, scope: !5286)
!5688 = !DILocation(line: 257, column: 7, scope: !5286)
!5689 = !DILocation(line: 258, column: 17, scope: !5286)
!5690 = !DILocation(line: 258, column: 22, scope: !5286)
!5691 = !DILocation(line: 258, column: 3, scope: !5286)
!5692 = !DILocation(line: 259, column: 3, scope: !5286)
!5693 = !DILocation(line: 263, column: 3, scope: !5286)
!5694 = !DILocation(line: 265, column: 8, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 265, column: 7)
!5696 = !DILocation(line: 265, column: 7, scope: !5286)
!5697 = !DILocation(line: 266, column: 4, scope: !5695)
!5698 = !DILocation(line: 267, column: 7, scope: !5286)
!5699 = !DILocation(line: 267, column: 12, scope: !5286)
!5700 = !DILocation(line: 268, column: 12, scope: !5286)
!5701 = !DILocation(line: 268, column: 10, scope: !5286)
!5702 = !DILocation(line: 269, column: 33, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 269, column: 7)
!5704 = !DILocation(line: 269, column: 38, scope: !5703)
!5705 = !DILocation(line: 269, column: 7, scope: !5703)
!5706 = !DILocation(line: 269, column: 7, scope: !5286)
!5707 = !DILocation(line: 270, column: 4, scope: !5703)
!5708 = !DILocation(line: 271, column: 9, scope: !5286)
!5709 = !DILocation(line: 271, column: 14, scope: !5286)
!5710 = !DILocation(line: 271, column: 21, scope: !5286)
!5711 = !DILocation(line: 271, column: 32, scope: !5286)
!5712 = !DILocation(line: 271, column: 7, scope: !5286)
!5713 = !DILocation(line: 272, column: 17, scope: !5286)
!5714 = !DILocation(line: 272, column: 22, scope: !5286)
!5715 = !DILocation(line: 272, column: 3, scope: !5286)
!5716 = !DILocation(line: 273, column: 3, scope: !5286)
!5717 = !DILocation(line: 277, column: 8, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 277, column: 7)
!5719 = !DILocation(line: 277, column: 13, scope: !5718)
!5720 = !DILocation(line: 277, column: 19, scope: !5718)
!5721 = !DILocation(line: 277, column: 7, scope: !5286)
!5722 = !DILocation(line: 278, column: 8, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5718, file: !2, line: 277, column: 35)
!5724 = !DILocation(line: 279, column: 4, scope: !5723)
!5725 = !DILocation(line: 281, column: 9, scope: !5286)
!5726 = !DILocation(line: 281, column: 14, scope: !5286)
!5727 = !DILocation(line: 281, column: 20, scope: !5286)
!5728 = !DILocation(line: 281, column: 35, scope: !5286)
!5729 = !DILocation(line: 281, column: 40, scope: !5286)
!5730 = !DILocation(line: 281, column: 7, scope: !5286)
!5731 = !DILocation(line: 282, column: 7, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 282, column: 7)
!5733 = !DILocation(line: 282, column: 7, scope: !5286)
!5734 = !DILocation(line: 283, column: 4, scope: !5732)
!5735 = !DILocation(line: 285, column: 3, scope: !5286)
!5736 = !DILocation(line: 286, column: 8, scope: !5286)
!5737 = !DILocation(line: 287, column: 34, scope: !5286)
!5738 = !DILocation(line: 287, column: 18, scope: !5286)
!5739 = !DILocation(line: 287, column: 25, scope: !5286)
!5740 = !DILocation(line: 287, column: 29, scope: !5286)
!5741 = !DILocation(line: 288, column: 35, scope: !5286)
!5742 = !DILocation(line: 288, column: 32, scope: !5286)
!5743 = !DILocation(line: 288, column: 18, scope: !5286)
!5744 = !DILocation(line: 288, column: 25, scope: !5286)
!5745 = !DILocation(line: 288, column: 30, scope: !5286)
!5746 = !DILocation(line: 289, column: 8, scope: !5286)
!5747 = !DILocation(line: 290, column: 40, scope: !5286)
!5748 = !DILocation(line: 290, column: 18, scope: !5286)
!5749 = !DILocation(line: 290, column: 31, scope: !5286)
!5750 = !DILocation(line: 290, column: 35, scope: !5286)
!5751 = !DILocation(line: 291, column: 41, scope: !5286)
!5752 = !DILocation(line: 291, column: 38, scope: !5286)
!5753 = !DILocation(line: 291, column: 18, scope: !5286)
!5754 = !DILocation(line: 291, column: 31, scope: !5286)
!5755 = !DILocation(line: 291, column: 36, scope: !5286)
!5756 = !DILocation(line: 292, column: 8, scope: !5286)
!5757 = !DILocation(line: 293, column: 39, scope: !5286)
!5758 = !DILocation(line: 293, column: 18, scope: !5286)
!5759 = !DILocation(line: 293, column: 30, scope: !5286)
!5760 = !DILocation(line: 293, column: 34, scope: !5286)
!5761 = !DILocation(line: 294, column: 40, scope: !5286)
!5762 = !DILocation(line: 294, column: 37, scope: !5286)
!5763 = !DILocation(line: 294, column: 18, scope: !5286)
!5764 = !DILocation(line: 294, column: 30, scope: !5286)
!5765 = !DILocation(line: 294, column: 35, scope: !5286)
!5766 = !DILocation(line: 295, column: 35, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 295, column: 7)
!5768 = !DILocation(line: 295, column: 20, scope: !5767)
!5769 = !DILocation(line: 295, column: 7, scope: !5767)
!5770 = !DILocation(line: 295, column: 7, scope: !5286)
!5771 = !DILocation(line: 297, column: 8, scope: !5767)
!5772 = !DILocation(line: 297, column: 4, scope: !5767)
!5773 = !DILocation(line: 298, column: 3, scope: !5286)
!5774 = !DILocation(line: 302, column: 8, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 302, column: 7)
!5776 = !DILocation(line: 302, column: 13, scope: !5775)
!5777 = !DILocation(line: 302, column: 19, scope: !5775)
!5778 = !DILocation(line: 302, column: 7, scope: !5286)
!5779 = !DILocation(line: 303, column: 8, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5775, file: !2, line: 302, column: 31)
!5781 = !DILocation(line: 304, column: 4, scope: !5780)
!5782 = !DILocation(line: 306, column: 39, scope: !5286)
!5783 = !DILocation(line: 306, column: 24, scope: !5286)
!5784 = !DILocation(line: 306, column: 12, scope: !5286)
!5785 = !DILocation(line: 306, column: 10, scope: !5286)
!5786 = !DILocation(line: 307, column: 14, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 307, column: 7)
!5788 = !DILocation(line: 307, column: 7, scope: !5787)
!5789 = !DILocation(line: 307, column: 7, scope: !5286)
!5790 = !DILocation(line: 308, column: 18, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5787, file: !2, line: 307, column: 23)
!5792 = !DILocation(line: 308, column: 10, scope: !5791)
!5793 = !DILocation(line: 308, column: 8, scope: !5791)
!5794 = !DILocation(line: 309, column: 11, scope: !5791)
!5795 = !DILocation(line: 310, column: 4, scope: !5791)
!5796 = !DILocation(line: 312, column: 7, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 312, column: 7)
!5798 = !DILocation(line: 312, column: 15, scope: !5797)
!5799 = !DILocation(line: 312, column: 25, scope: !5797)
!5800 = !DILocation(line: 313, column: 7, scope: !5797)
!5801 = !DILocation(line: 313, column: 10, scope: !5797)
!5802 = !DILocation(line: 313, column: 18, scope: !5797)
!5803 = !DILocation(line: 313, column: 25, scope: !5797)
!5804 = !DILocation(line: 313, column: 28, scope: !5797)
!5805 = !DILocation(line: 313, column: 36, scope: !5797)
!5806 = !DILocation(line: 313, column: 43, scope: !5797)
!5807 = !DILocation(line: 313, column: 46, scope: !5797)
!5808 = !DILocation(line: 313, column: 54, scope: !5797)
!5809 = !DILocation(line: 312, column: 7, scope: !5286)
!5810 = !DILocation(line: 314, column: 8, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 313, column: 62)
!5812 = !DILocation(line: 315, column: 4, scope: !5811)
!5813 = !DILocation(line: 317, column: 10, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 317, column: 3)
!5815 = !DILocation(line: 317, column: 8, scope: !5814)
!5816 = !DILocation(line: 317, column: 15, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5814, file: !2, line: 317, column: 3)
!5818 = !DILocation(line: 317, column: 19, scope: !5817)
!5819 = !DILocation(line: 317, column: 27, scope: !5817)
!5820 = !DILocation(line: 317, column: 17, scope: !5817)
!5821 = !DILocation(line: 317, column: 3, scope: !5814)
!5822 = !DILocation(line: 318, column: 10, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5817, file: !2, line: 317, column: 43)
!5824 = !DILocation(line: 318, column: 15, scope: !5823)
!5825 = !DILocation(line: 318, column: 21, scope: !5823)
!5826 = !DILocation(line: 318, column: 32, scope: !5823)
!5827 = !DILocation(line: 318, column: 37, scope: !5823)
!5828 = !DILocation(line: 318, column: 8, scope: !5823)
!5829 = !DILocation(line: 319, column: 8, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5823, file: !2, line: 319, column: 8)
!5831 = !DILocation(line: 319, column: 8, scope: !5823)
!5832 = !DILocation(line: 320, column: 5, scope: !5830)
!5833 = !DILocation(line: 321, column: 31, scope: !5823)
!5834 = !DILocation(line: 321, column: 38, scope: !5823)
!5835 = !DILocation(line: 321, column: 4, scope: !5823)
!5836 = !DILocation(line: 321, column: 12, scope: !5823)
!5837 = !DILocation(line: 321, column: 15, scope: !5823)
!5838 = !DILocation(line: 321, column: 21, scope: !5823)
!5839 = !DILocation(line: 321, column: 25, scope: !5823)
!5840 = !DILocation(line: 322, column: 32, scope: !5823)
!5841 = !DILocation(line: 322, column: 39, scope: !5823)
!5842 = !DILocation(line: 322, column: 28, scope: !5823)
!5843 = !DILocation(line: 322, column: 4, scope: !5823)
!5844 = !DILocation(line: 322, column: 12, scope: !5823)
!5845 = !DILocation(line: 322, column: 15, scope: !5823)
!5846 = !DILocation(line: 322, column: 21, scope: !5823)
!5847 = !DILocation(line: 322, column: 26, scope: !5823)
!5848 = !DILocation(line: 323, column: 30, scope: !5823)
!5849 = !DILocation(line: 323, column: 4, scope: !5823)
!5850 = !DILocation(line: 323, column: 12, scope: !5823)
!5851 = !DILocation(line: 323, column: 15, scope: !5823)
!5852 = !DILocation(line: 323, column: 21, scope: !5823)
!5853 = !DILocation(line: 323, column: 25, scope: !5823)
!5854 = !DILocation(line: 324, column: 31, scope: !5823)
!5855 = !DILocation(line: 324, column: 28, scope: !5823)
!5856 = !DILocation(line: 324, column: 4, scope: !5823)
!5857 = !DILocation(line: 324, column: 12, scope: !5823)
!5858 = !DILocation(line: 324, column: 15, scope: !5823)
!5859 = !DILocation(line: 324, column: 21, scope: !5823)
!5860 = !DILocation(line: 324, column: 26, scope: !5823)
!5861 = !DILocation(line: 325, column: 31, scope: !5823)
!5862 = !DILocation(line: 325, column: 39, scope: !5823)
!5863 = !DILocation(line: 325, column: 4, scope: !5823)
!5864 = !DILocation(line: 325, column: 12, scope: !5823)
!5865 = !DILocation(line: 325, column: 15, scope: !5823)
!5866 = !DILocation(line: 325, column: 21, scope: !5823)
!5867 = !DILocation(line: 325, column: 25, scope: !5823)
!5868 = !DILocation(line: 326, column: 32, scope: !5823)
!5869 = !DILocation(line: 326, column: 40, scope: !5823)
!5870 = !DILocation(line: 326, column: 28, scope: !5823)
!5871 = !DILocation(line: 326, column: 4, scope: !5823)
!5872 = !DILocation(line: 326, column: 12, scope: !5823)
!5873 = !DILocation(line: 326, column: 15, scope: !5823)
!5874 = !DILocation(line: 326, column: 21, scope: !5823)
!5875 = !DILocation(line: 326, column: 26, scope: !5823)
!5876 = !DILocation(line: 327, column: 3, scope: !5823)
!5877 = !DILocation(line: 317, column: 39, scope: !5817)
!5878 = !DILocation(line: 317, column: 3, scope: !5817)
!5879 = distinct !{!5879, !5821, !5880, !5081, !5082}
!5880 = !DILocation(line: 327, column: 3, scope: !5814)
!5881 = !DILocation(line: 328, column: 35, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 328, column: 7)
!5883 = !DILocation(line: 328, column: 20, scope: !5882)
!5884 = !DILocation(line: 328, column: 40, scope: !5882)
!5885 = !DILocation(line: 328, column: 7, scope: !5882)
!5886 = !DILocation(line: 328, column: 7, scope: !5286)
!5887 = !DILocation(line: 329, column: 8, scope: !5882)
!5888 = !DILocation(line: 329, column: 4, scope: !5882)
!5889 = !DILocation(line: 330, column: 3, scope: !5286)
!5890 = !DILocation(line: 334, column: 39, scope: !5286)
!5891 = !DILocation(line: 334, column: 24, scope: !5286)
!5892 = !DILocation(line: 334, column: 12, scope: !5286)
!5893 = !DILocation(line: 334, column: 10, scope: !5286)
!5894 = !DILocation(line: 335, column: 14, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 335, column: 7)
!5896 = !DILocation(line: 335, column: 7, scope: !5895)
!5897 = !DILocation(line: 335, column: 7, scope: !5286)
!5898 = !DILocation(line: 336, column: 18, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5895, file: !2, line: 335, column: 23)
!5900 = !DILocation(line: 336, column: 10, scope: !5899)
!5901 = !DILocation(line: 336, column: 8, scope: !5899)
!5902 = !DILocation(line: 337, column: 11, scope: !5899)
!5903 = !DILocation(line: 338, column: 4, scope: !5899)
!5904 = !DILocation(line: 340, column: 7, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 340, column: 7)
!5906 = !DILocation(line: 340, column: 15, scope: !5905)
!5907 = !DILocation(line: 340, column: 25, scope: !5905)
!5908 = !DILocation(line: 340, column: 7, scope: !5286)
!5909 = !DILocation(line: 341, column: 8, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5905, file: !2, line: 340, column: 44)
!5911 = !DILocation(line: 342, column: 4, scope: !5910)
!5912 = !DILocation(line: 344, column: 10, scope: !5286)
!5913 = !DILocation(line: 344, column: 18, scope: !5286)
!5914 = !DILocation(line: 344, column: 7, scope: !5286)
!5915 = !DILocation(line: 345, column: 10, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 345, column: 3)
!5917 = !DILocation(line: 345, column: 8, scope: !5916)
!5918 = !DILocation(line: 345, column: 15, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5916, file: !2, line: 345, column: 3)
!5920 = !DILocation(line: 345, column: 19, scope: !5919)
!5921 = !DILocation(line: 345, column: 27, scope: !5919)
!5922 = !DILocation(line: 345, column: 17, scope: !5919)
!5923 = !DILocation(line: 345, column: 3, scope: !5916)
!5924 = !DILocation(line: 346, column: 4, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5919, file: !2, line: 345, column: 43)
!5926 = !DILocation(line: 347, column: 18, scope: !5925)
!5927 = !DILocation(line: 347, column: 4, scope: !5925)
!5928 = !DILocation(line: 347, column: 9, scope: !5925)
!5929 = !DILocation(line: 347, column: 13, scope: !5925)
!5930 = !DILocation(line: 348, column: 19, scope: !5925)
!5931 = !DILocation(line: 348, column: 16, scope: !5925)
!5932 = !DILocation(line: 348, column: 4, scope: !5925)
!5933 = !DILocation(line: 348, column: 9, scope: !5925)
!5934 = !DILocation(line: 348, column: 14, scope: !5925)
!5935 = !DILocation(line: 349, column: 7, scope: !5925)
!5936 = !DILocation(line: 350, column: 8, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5925, file: !2, line: 350, column: 8)
!5938 = !DILocation(line: 350, column: 13, scope: !5937)
!5939 = !DILocation(line: 350, column: 8, scope: !5925)
!5940 = !DILocation(line: 351, column: 11, scope: !5937)
!5941 = !DILocation(line: 351, column: 16, scope: !5937)
!5942 = !DILocation(line: 351, column: 27, scope: !5937)
!5943 = !DILocation(line: 351, column: 9, scope: !5937)
!5944 = !DILocation(line: 351, column: 5, scope: !5937)
!5945 = !DILocation(line: 353, column: 11, scope: !5937)
!5946 = !DILocation(line: 353, column: 16, scope: !5937)
!5947 = !DILocation(line: 353, column: 26, scope: !5937)
!5948 = !DILocation(line: 353, column: 9, scope: !5937)
!5949 = !DILocation(line: 354, column: 8, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5925, file: !2, line: 354, column: 8)
!5951 = !DILocation(line: 354, column: 8, scope: !5925)
!5952 = !DILocation(line: 355, column: 5, scope: !5950)
!5953 = !DILocation(line: 356, column: 18, scope: !5925)
!5954 = !DILocation(line: 356, column: 4, scope: !5925)
!5955 = !DILocation(line: 356, column: 9, scope: !5925)
!5956 = !DILocation(line: 356, column: 13, scope: !5925)
!5957 = !DILocation(line: 357, column: 19, scope: !5925)
!5958 = !DILocation(line: 357, column: 16, scope: !5925)
!5959 = !DILocation(line: 357, column: 4, scope: !5925)
!5960 = !DILocation(line: 357, column: 9, scope: !5925)
!5961 = !DILocation(line: 357, column: 14, scope: !5925)
!5962 = !DILocation(line: 358, column: 7, scope: !5925)
!5963 = !DILocation(line: 359, column: 3, scope: !5925)
!5964 = !DILocation(line: 345, column: 39, scope: !5919)
!5965 = !DILocation(line: 345, column: 3, scope: !5919)
!5966 = distinct !{!5966, !5923, !5967, !5081, !5082}
!5967 = !DILocation(line: 359, column: 3, scope: !5916)
!5968 = !DILocation(line: 360, column: 3, scope: !5286)
!5969 = !DILocation(line: 361, column: 17, scope: !5286)
!5970 = !DILocation(line: 361, column: 3, scope: !5286)
!5971 = !DILocation(line: 361, column: 8, scope: !5286)
!5972 = !DILocation(line: 361, column: 12, scope: !5286)
!5973 = !DILocation(line: 362, column: 18, scope: !5286)
!5974 = !DILocation(line: 362, column: 15, scope: !5286)
!5975 = !DILocation(line: 362, column: 3, scope: !5286)
!5976 = !DILocation(line: 362, column: 8, scope: !5286)
!5977 = !DILocation(line: 362, column: 13, scope: !5286)
!5978 = !DILocation(line: 363, column: 35, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 363, column: 7)
!5980 = !DILocation(line: 363, column: 20, scope: !5979)
!5981 = !DILocation(line: 363, column: 40, scope: !5979)
!5982 = !DILocation(line: 363, column: 7, scope: !5979)
!5983 = !DILocation(line: 363, column: 7, scope: !5286)
!5984 = !DILocation(line: 364, column: 8, scope: !5979)
!5985 = !DILocation(line: 364, column: 4, scope: !5979)
!5986 = !DILocation(line: 365, column: 3, scope: !5286)
!5987 = !DILocation(line: 369, column: 42, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 369, column: 7)
!5989 = !DILocation(line: 369, column: 27, scope: !5988)
!5990 = !DILocation(line: 369, column: 7, scope: !5988)
!5991 = !DILocation(line: 369, column: 7, scope: !5286)
!5992 = !DILocation(line: 370, column: 8, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5988, file: !2, line: 369, column: 60)
!5994 = !DILocation(line: 371, column: 4, scope: !5993)
!5995 = !DILocation(line: 373, column: 11, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 373, column: 7)
!5997 = !DILocation(line: 373, column: 8, scope: !5996)
!5998 = !DILocation(line: 373, column: 18, scope: !5996)
!5999 = !DILocation(line: 373, column: 24, scope: !5996)
!6000 = !DILocation(line: 373, column: 21, scope: !5996)
!6001 = !DILocation(line: 373, column: 31, scope: !5996)
!6002 = !DILocation(line: 373, column: 37, scope: !5996)
!6003 = !DILocation(line: 373, column: 34, scope: !5996)
!6004 = !DILocation(line: 374, column: 5, scope: !5996)
!6005 = !DILocation(line: 374, column: 11, scope: !5996)
!6006 = !DILocation(line: 374, column: 8, scope: !5996)
!6007 = !DILocation(line: 374, column: 18, scope: !5996)
!6008 = !DILocation(line: 374, column: 24, scope: !5996)
!6009 = !DILocation(line: 374, column: 21, scope: !5996)
!6010 = !DILocation(line: 375, column: 4, scope: !5996)
!6011 = !DILocation(line: 375, column: 7, scope: !5996)
!6012 = !DILocation(line: 375, column: 11, scope: !5996)
!6013 = !DILocation(line: 373, column: 7, scope: !5286)
!6014 = !DILocation(line: 376, column: 8, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5996, file: !2, line: 375, column: 32)
!6016 = !DILocation(line: 377, column: 4, scope: !6015)
!6017 = !DILocation(line: 378, column: 14, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !5996, file: !2, line: 378, column: 14)
!6019 = !DILocation(line: 378, column: 18, scope: !6018)
!6020 = !DILocation(line: 378, column: 14, scope: !5996)
!6021 = !DILocation(line: 379, column: 7, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6018, file: !2, line: 378, column: 38)
!6023 = !DILocation(line: 379, column: 4, scope: !6022)
!6024 = !DILocation(line: 379, column: 14, scope: !6022)
!6025 = !DILocation(line: 380, column: 7, scope: !6022)
!6026 = !DILocation(line: 380, column: 4, scope: !6022)
!6027 = !DILocation(line: 380, column: 14, scope: !6022)
!6028 = !DILocation(line: 381, column: 7, scope: !6022)
!6029 = !DILocation(line: 381, column: 4, scope: !6022)
!6030 = !DILocation(line: 381, column: 14, scope: !6022)
!6031 = !DILocation(line: 382, column: 7, scope: !6022)
!6032 = !DILocation(line: 382, column: 4, scope: !6022)
!6033 = !DILocation(line: 382, column: 14, scope: !6022)
!6034 = !DILocation(line: 383, column: 7, scope: !6022)
!6035 = !DILocation(line: 383, column: 4, scope: !6022)
!6036 = !DILocation(line: 383, column: 14, scope: !6022)
!6037 = !DILocation(line: 384, column: 3, scope: !6022)
!6038 = !DILocation(line: 385, column: 18, scope: !5286)
!6039 = !DILocation(line: 385, column: 13, scope: !5286)
!6040 = !DILocation(line: 386, column: 7, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 386, column: 7)
!6042 = !DILocation(line: 386, column: 20, scope: !6041)
!6043 = !DILocation(line: 386, column: 25, scope: !6041)
!6044 = !DILocation(line: 386, column: 17, scope: !6041)
!6045 = !DILocation(line: 386, column: 7, scope: !5286)
!6046 = !DILocation(line: 387, column: 8, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 386, column: 33)
!6048 = !DILocation(line: 388, column: 4, scope: !6047)
!6049 = !DILocation(line: 390, column: 15, scope: !5289)
!6050 = !DILocation(line: 390, column: 15, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 390, column: 15)
!6052 = !DILocation(line: 390, column: 15, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 390, column: 15)
!6054 = !DILocation(line: 390, column: 15, scope: !5286)
!6055 = !DILocation(line: 390, column: 13, scope: !5286)
!6056 = !DILocation(line: 391, column: 33, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 391, column: 7)
!6058 = !DILocation(line: 391, column: 38, scope: !6057)
!6059 = !DILocation(line: 391, column: 7, scope: !6057)
!6060 = !DILocation(line: 391, column: 7, scope: !5286)
!6061 = !DILocation(line: 392, column: 4, scope: !6057)
!6062 = !DILocation(line: 393, column: 8, scope: !5286)
!6063 = !DILocation(line: 393, column: 13, scope: !5286)
!6064 = !DILocation(line: 393, column: 24, scope: !5286)
!6065 = !DILocation(line: 394, column: 17, scope: !5286)
!6066 = !DILocation(line: 394, column: 22, scope: !5286)
!6067 = !DILocation(line: 394, column: 3, scope: !5286)
!6068 = !DILocation(line: 395, column: 8, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 395, column: 7)
!6070 = !DILocation(line: 395, column: 12, scope: !6069)
!6071 = !DILocation(line: 395, column: 43, scope: !6069)
!6072 = !DILocation(line: 395, column: 28, scope: !6069)
!6073 = !DILocation(line: 395, column: 15, scope: !6069)
!6074 = !DILocation(line: 395, column: 7, scope: !5286)
!6075 = !DILocation(line: 396, column: 8, scope: !6069)
!6076 = !DILocation(line: 396, column: 4, scope: !6069)
!6077 = !DILocation(line: 397, column: 3, scope: !5286)
!6078 = !DILocation(line: 401, column: 42, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 401, column: 7)
!6080 = !DILocation(line: 401, column: 27, scope: !6079)
!6081 = !DILocation(line: 401, column: 7, scope: !6079)
!6082 = !DILocation(line: 401, column: 7, scope: !5286)
!6083 = !DILocation(line: 402, column: 8, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6079, file: !2, line: 401, column: 60)
!6085 = !DILocation(line: 403, column: 4, scope: !6084)
!6086 = !DILocation(line: 405, column: 11, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 405, column: 7)
!6088 = !DILocation(line: 405, column: 8, scope: !6087)
!6089 = !DILocation(line: 405, column: 18, scope: !6087)
!6090 = !DILocation(line: 405, column: 24, scope: !6087)
!6091 = !DILocation(line: 405, column: 21, scope: !6087)
!6092 = !DILocation(line: 405, column: 31, scope: !6087)
!6093 = !DILocation(line: 405, column: 37, scope: !6087)
!6094 = !DILocation(line: 405, column: 34, scope: !6087)
!6095 = !DILocation(line: 406, column: 5, scope: !6087)
!6096 = !DILocation(line: 406, column: 11, scope: !6087)
!6097 = !DILocation(line: 406, column: 8, scope: !6087)
!6098 = !DILocation(line: 406, column: 18, scope: !6087)
!6099 = !DILocation(line: 406, column: 24, scope: !6087)
!6100 = !DILocation(line: 406, column: 21, scope: !6087)
!6101 = !DILocation(line: 407, column: 4, scope: !6087)
!6102 = !DILocation(line: 407, column: 7, scope: !6087)
!6103 = !DILocation(line: 407, column: 11, scope: !6087)
!6104 = !DILocation(line: 405, column: 7, scope: !5286)
!6105 = !DILocation(line: 408, column: 8, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6087, file: !2, line: 407, column: 32)
!6107 = !DILocation(line: 409, column: 4, scope: !6106)
!6108 = !DILocation(line: 410, column: 14, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6087, file: !2, line: 410, column: 14)
!6110 = !DILocation(line: 410, column: 18, scope: !6109)
!6111 = !DILocation(line: 410, column: 14, scope: !6087)
!6112 = !DILocation(line: 411, column: 7, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6109, file: !2, line: 410, column: 38)
!6114 = !DILocation(line: 411, column: 4, scope: !6113)
!6115 = !DILocation(line: 411, column: 14, scope: !6113)
!6116 = !DILocation(line: 412, column: 7, scope: !6113)
!6117 = !DILocation(line: 412, column: 4, scope: !6113)
!6118 = !DILocation(line: 412, column: 14, scope: !6113)
!6119 = !DILocation(line: 413, column: 7, scope: !6113)
!6120 = !DILocation(line: 413, column: 4, scope: !6113)
!6121 = !DILocation(line: 413, column: 14, scope: !6113)
!6122 = !DILocation(line: 414, column: 7, scope: !6113)
!6123 = !DILocation(line: 414, column: 4, scope: !6113)
!6124 = !DILocation(line: 414, column: 14, scope: !6113)
!6125 = !DILocation(line: 415, column: 7, scope: !6113)
!6126 = !DILocation(line: 415, column: 4, scope: !6113)
!6127 = !DILocation(line: 415, column: 14, scope: !6113)
!6128 = !DILocation(line: 416, column: 3, scope: !6113)
!6129 = !DILocation(line: 417, column: 18, scope: !5286)
!6130 = !DILocation(line: 417, column: 13, scope: !5286)
!6131 = !DILocation(line: 418, column: 7, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 418, column: 7)
!6133 = !DILocation(line: 418, column: 20, scope: !6132)
!6134 = !DILocation(line: 418, column: 25, scope: !6132)
!6135 = !DILocation(line: 418, column: 17, scope: !6132)
!6136 = !DILocation(line: 418, column: 7, scope: !5286)
!6137 = !DILocation(line: 419, column: 8, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6132, file: !2, line: 418, column: 33)
!6139 = !DILocation(line: 420, column: 4, scope: !6138)
!6140 = !DILocation(line: 422, column: 15, scope: !5293)
!6141 = !DILocation(line: 422, column: 15, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 422, column: 15)
!6143 = !DILocation(line: 422, column: 15, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 422, column: 15)
!6145 = !DILocation(line: 422, column: 15, scope: !5286)
!6146 = !DILocation(line: 422, column: 13, scope: !5286)
!6147 = !DILocation(line: 423, column: 33, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !5286, file: !2, line: 423, column: 7)
!6149 = !DILocation(line: 423, column: 38, scope: !6148)
!6150 = !DILocation(line: 423, column: 7, scope: !6148)
!6151 = !DILocation(line: 423, column: 7, scope: !5286)
!6152 = !DILocation(line: 424, column: 4, scope: !6148)
!6153 = !DILocation(line: 425, column: 25, scope: !5286)
!6154 = !DILocation(line: 425, column: 30, scope: !5286)
!6155 = !DILocation(line: 425, column: 44, scope: !5286)
!6156 = !DILocation(line: 425, column: 53, scope: !5286)
!6157 = !DILocation(line: 425, column: 9, scope: !5286)
!6158 = !DILocation(line: 425, column: 7, scope: !5286)
!6159 = !DILocation(line: 426, column: 17, scope: !5286)
!6160 = !DILocation(line: 426, column: 22, scope: !5286)
!6161 = !DILocation(line: 426, column: 3, scope: !5286)
!6162 = !DILocation(line: 427, column: 3, scope: !5286)
!6163 = !DILocation(line: 430, column: 7, scope: !5286)
!6164 = !DILocation(line: 431, column: 3, scope: !5286)
!6165 = !DILocation(line: 432, column: 2, scope: !5286)
!6166 = !DILocation(line: 434, column: 1, scope: !5219)
!6167 = !DILocation(line: 435, column: 8, scope: !5219)
!6168 = !DILocation(line: 435, column: 2, scope: !5219)
!6169 = !DILocation(line: 436, column: 8, scope: !5219)
!6170 = !DILocation(line: 436, column: 2, scope: !5219)
!6171 = !DILocation(line: 437, column: 9, scope: !5219)
!6172 = !DILocation(line: 437, column: 2, scope: !5219)
!6173 = !DILocation(line: 438, column: 1, scope: !5219)
!6174 = distinct !DISubprogram(name: "in_compat_syscall", scope: !6175, file: !6175, line: 98, type: !3793, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!6175 = !DIFile(filename: "./arch/x86/include/asm/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13e4bbbeecac635d510b530a702cc1fd")
!6176 = !DILocation(line: 100, column: 9, scope: !6174)
!6177 = !DILocation(line: 100, column: 2, scope: !6174)
!6178 = distinct !DISubprogram(name: "compat_ptr", scope: !2844, file: !2844, line: 977, type: !6179, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6181)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!229, !2850}
!6181 = !{!6182}
!6182 = !DILocalVariable(name: "uptr", arg: 1, scope: !6178, file: !2844, line: 977, type: !2850)
!6183 = !DILocation(line: 977, column: 53, scope: !6178)
!6184 = !DILocation(line: 979, column: 39, scope: !6178)
!6185 = !DILocation(line: 979, column: 24, scope: !6178)
!6186 = !DILocation(line: 979, column: 9, scope: !6178)
!6187 = !DILocation(line: 979, column: 2, scope: !6178)
!6188 = distinct !DISubprogram(name: "copy_to_user", scope: !6189, file: !6189, line: 188, type: !6190, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6192)
!6189 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6190 = !DISubroutineType(types: !6191)
!6191 = !{!395, !229, !2278, !395}
!6192 = !{!6193, !6194, !6195}
!6193 = !DILocalVariable(name: "to", arg: 1, scope: !6188, file: !6189, line: 188, type: !229)
!6194 = !DILocalVariable(name: "from", arg: 2, scope: !6188, file: !6189, line: 188, type: !2278)
!6195 = !DILocalVariable(name: "n", arg: 3, scope: !6188, file: !6189, line: 188, type: !395)
!6196 = !DILocation(line: 188, column: 27, scope: !6188)
!6197 = !DILocation(line: 188, column: 43, scope: !6188)
!6198 = !DILocation(line: 188, column: 63, scope: !6188)
!6199 = !DILocation(line: 190, column: 22, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6188, file: !6189, line: 190, column: 6)
!6201 = !DILocation(line: 190, column: 28, scope: !6200)
!6202 = !DILocation(line: 190, column: 6, scope: !6200)
!6203 = !DILocation(line: 190, column: 6, scope: !6188)
!6204 = !DILocation(line: 191, column: 21, scope: !6200)
!6205 = !DILocation(line: 191, column: 25, scope: !6200)
!6206 = !DILocation(line: 191, column: 31, scope: !6200)
!6207 = !DILocation(line: 191, column: 7, scope: !6200)
!6208 = !DILocation(line: 191, column: 5, scope: !6200)
!6209 = !DILocation(line: 191, column: 3, scope: !6200)
!6210 = !DILocation(line: 192, column: 9, scope: !6188)
!6211 = !DILocation(line: 192, column: 2, scope: !6188)
!6212 = distinct !DISubprogram(name: "copy_from_user", scope: !6189, file: !6189, line: 180, type: !6190, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6213)
!6213 = !{!6214, !6215, !6216}
!6214 = !DILocalVariable(name: "to", arg: 1, scope: !6212, file: !6189, line: 180, type: !229)
!6215 = !DILocalVariable(name: "from", arg: 2, scope: !6212, file: !6189, line: 180, type: !2278)
!6216 = !DILocalVariable(name: "n", arg: 3, scope: !6212, file: !6189, line: 180, type: !395)
!6217 = !DILocation(line: 180, column: 22, scope: !6212)
!6218 = !DILocation(line: 180, column: 45, scope: !6212)
!6219 = !DILocation(line: 180, column: 65, scope: !6212)
!6220 = !DILocation(line: 182, column: 22, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6212, file: !6189, line: 182, column: 6)
!6222 = !DILocation(line: 182, column: 26, scope: !6221)
!6223 = !DILocation(line: 182, column: 6, scope: !6221)
!6224 = !DILocation(line: 182, column: 6, scope: !6212)
!6225 = !DILocation(line: 183, column: 23, scope: !6221)
!6226 = !DILocation(line: 183, column: 27, scope: !6221)
!6227 = !DILocation(line: 183, column: 33, scope: !6221)
!6228 = !DILocation(line: 183, column: 7, scope: !6221)
!6229 = !DILocation(line: 183, column: 5, scope: !6221)
!6230 = !DILocation(line: 183, column: 3, scope: !6221)
!6231 = !DILocation(line: 184, column: 9, scope: !6212)
!6232 = !DILocation(line: 184, column: 2, scope: !6212)
!6233 = !DISubprogram(name: "mutex_lock_interruptible", scope: !723, file: !723, line: 228, type: !6234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!125, !6236}
!6236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!6237 = !DISubprogram(name: "mutex_unlock", scope: !723, file: !723, line: 246, type: !6238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6238 = !DISubroutineType(types: !6239)
!6239 = !{null, !6236}
!6240 = !DISubprogram(name: "capable", scope: !1465, file: !1465, line: 148, type: !6241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!1540, !125}
!6243 = !DISubprogram(name: "ns_to_timespec64", scope: !775, file: !775, line: 148, type: !6244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6244 = !DISubroutineType(types: !6245)
!6245 = !{!3449, !732}
!6246 = !DISubprogram(name: "memdup_user", scope: !6247, file: !6247, line: 15, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6247 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!229, !2278, !392}
!6250 = distinct !DISubprogram(name: "IS_ERR", scope: !6251, file: !6251, line: 59, type: !6252, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6254)
!6251 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!1540, !2278}
!6254 = !{!6255}
!6255 = !DILocalVariable(name: "ptr", arg: 1, scope: !6250, file: !6251, line: 59, type: !2278)
!6256 = !DILocation(line: 59, column: 60, scope: !6250)
!6257 = !DILocation(line: 61, column: 9, scope: !6250)
!6258 = !DILocation(line: 61, column: 2, scope: !6250)
!6259 = distinct !DISubprogram(name: "PTR_ERR", scope: !6251, file: !6251, line: 49, type: !6260, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6262)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!381, !2278}
!6262 = !{!6263}
!6263 = !DILocalVariable(name: "ptr", arg: 1, scope: !6259, file: !6251, line: 49, type: !2278)
!6264 = !DILocation(line: 49, column: 61, scope: !6259)
!6265 = !DILocation(line: 51, column: 16, scope: !6259)
!6266 = !DILocation(line: 51, column: 9, scope: !6259)
!6267 = !DILocation(line: 51, column: 2, scope: !6259)
!6268 = !DISubprogram(name: "ktime_get_real_ts64", scope: !4847, file: !4847, line: 43, type: !6269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{null, !4301}
!6271 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !6272, file: !6272, line: 36, type: !6273, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6275)
!6272 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!6273 = !DISubroutineType(types: !6274)
!6274 = !{!395, !395, !395}
!6275 = !{!6276, !6277, !6278}
!6276 = !DILocalVariable(name: "index", arg: 1, scope: !6271, file: !6272, line: 36, type: !395)
!6277 = !DILocalVariable(name: "size", arg: 2, scope: !6271, file: !6272, line: 37, type: !395)
!6278 = !DILocalVariable(name: "mask", scope: !6271, file: !6272, line: 39, type: !395)
!6279 = !DILocation(line: 36, column: 67, scope: !6271)
!6280 = !DILocation(line: 37, column: 17, scope: !6271)
!6281 = !DILocation(line: 39, column: 2, scope: !6271)
!6282 = !DILocation(line: 39, column: 16, scope: !6271)
!6283 = !DILocation(line: 43, column: 9, scope: !6271)
!6284 = !DILocation(line: 43, column: 20, scope: !6271)
!6285 = !DILocation(line: 41, column: 2, scope: !6271)
!6286 = !{i64 714025}
!6287 = !DILocation(line: 45, column: 9, scope: !6271)
!6288 = !DILocation(line: 46, column: 1, scope: !6271)
!6289 = !DILocation(line: 45, column: 2, scope: !6271)
!6290 = !DISubprogram(name: "kfree", scope: !219, file: !219, line: 227, type: !6291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6291 = !DISubroutineType(types: !6292)
!6292 = !{null, !2278}
!6293 = distinct !DISubprogram(name: "ptp_poll", scope: !2, file: !2, line: 440, type: !4319, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6294)
!6294 = !{!6295, !6296, !6297, !6298, !6299}
!6295 = !DILocalVariable(name: "pc", arg: 1, scope: !6293, file: !2, line: 440, type: !4268)
!6296 = !DILocalVariable(name: "fp", arg: 2, scope: !6293, file: !2, line: 440, type: !1381)
!6297 = !DILocalVariable(name: "wait", arg: 3, scope: !6293, file: !2, line: 440, type: !4321)
!6298 = !DILocalVariable(name: "ptp", scope: !6293, file: !2, line: 442, type: !230)
!6299 = !DILocalVariable(name: "__mptr", scope: !6300, file: !2, line: 442, type: !229)
!6300 = distinct !DILexicalBlock(scope: !6293, file: !2, line: 442, column: 26)
!6301 = !DILocation(line: 440, column: 39, scope: !6293)
!6302 = !DILocation(line: 440, column: 56, scope: !6293)
!6303 = !DILocation(line: 440, column: 72, scope: !6293)
!6304 = !DILocation(line: 442, column: 2, scope: !6293)
!6305 = !DILocation(line: 442, column: 20, scope: !6293)
!6306 = !DILocation(line: 442, column: 26, scope: !6300)
!6307 = !DILocation(line: 442, column: 26, scope: !6293)
!6308 = !DILocation(line: 444, column: 12, scope: !6293)
!6309 = !DILocation(line: 444, column: 17, scope: !6293)
!6310 = !DILocation(line: 444, column: 22, scope: !6293)
!6311 = !DILocation(line: 444, column: 31, scope: !6293)
!6312 = !DILocation(line: 444, column: 2, scope: !6293)
!6313 = !DILocation(line: 446, column: 20, scope: !6293)
!6314 = !DILocation(line: 446, column: 25, scope: !6293)
!6315 = !DILocation(line: 446, column: 9, scope: !6293)
!6316 = !DILocation(line: 447, column: 1, scope: !6293)
!6317 = !DILocation(line: 446, column: 2, scope: !6293)
!6318 = distinct !DISubprogram(name: "poll_wait", scope: !2086, file: !2086, line: 42, type: !6319, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6321)
!6319 = !DISubroutineType(types: !6320)
!6320 = !{null, !1381, !2093, !4321}
!6321 = !{!6322, !6323, !6324}
!6322 = !DILocalVariable(name: "filp", arg: 1, scope: !6318, file: !2086, line: 42, type: !1381)
!6323 = !DILocalVariable(name: "wait_address", arg: 2, scope: !6318, file: !2086, line: 42, type: !2093)
!6324 = !DILocalVariable(name: "p", arg: 3, scope: !6318, file: !2086, line: 42, type: !4321)
!6325 = !DILocation(line: 42, column: 44, scope: !6318)
!6326 = !DILocation(line: 42, column: 70, scope: !6318)
!6327 = !DILocation(line: 42, column: 96, scope: !6318)
!6328 = !DILocation(line: 44, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6318, file: !2086, line: 44, column: 6)
!6330 = !DILocation(line: 44, column: 8, scope: !6329)
!6331 = !DILocation(line: 44, column: 11, scope: !6329)
!6332 = !DILocation(line: 44, column: 14, scope: !6329)
!6333 = !DILocation(line: 44, column: 21, scope: !6329)
!6334 = !DILocation(line: 44, column: 24, scope: !6329)
!6335 = !DILocation(line: 44, column: 6, scope: !6318)
!6336 = !DILocation(line: 45, column: 3, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6329, file: !2086, line: 44, column: 38)
!6338 = !DILocation(line: 45, column: 6, scope: !6337)
!6339 = !DILocation(line: 45, column: 13, scope: !6337)
!6340 = !DILocation(line: 45, column: 19, scope: !6337)
!6341 = !DILocation(line: 45, column: 33, scope: !6337)
!6342 = !DILocation(line: 52, column: 3, scope: !6337)
!6343 = !DILocation(line: 52, column: 3, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6337, file: !2086, line: 52, column: 3)
!6345 = !DILocation(line: 52, column: 3, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6344, file: !2086, line: 52, column: 3)
!6347 = !{i64 2154038365}
!6348 = !DILocation(line: 53, column: 2, scope: !6337)
!6349 = !DILocation(line: 54, column: 1, scope: !6318)
!6350 = distinct !DISubprogram(name: "queue_cnt", scope: !232, file: !232, line: 79, type: !6351, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6355)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{!125, !6353}
!6353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6354, size: 64)
!6354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4927)
!6355 = !{!6356, !6357}
!6356 = !DILocalVariable(name: "q", arg: 1, scope: !6350, file: !232, line: 79, type: !6353)
!6357 = !DILocalVariable(name: "cnt", scope: !6350, file: !232, line: 85, type: !125)
!6358 = !DILocation(line: 79, column: 65, scope: !6350)
!6359 = !DILocation(line: 85, column: 2, scope: !6350)
!6360 = !DILocation(line: 85, column: 6, scope: !6350)
!6361 = !DILocation(line: 85, column: 12, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6350, file: !232, line: 85, column: 12)
!6363 = !DILocation(line: 85, column: 12, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6362, file: !232, line: 85, column: 12)
!6365 = !DILocation(line: 85, column: 33, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6350, file: !232, line: 85, column: 33)
!6367 = !DILocation(line: 85, column: 33, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6366, file: !232, line: 85, column: 33)
!6369 = !DILocation(line: 85, column: 31, scope: !6350)
!6370 = !DILocation(line: 86, column: 9, scope: !6350)
!6371 = !DILocation(line: 86, column: 13, scope: !6350)
!6372 = !DILocation(line: 86, column: 40, scope: !6350)
!6373 = !DILocation(line: 86, column: 38, scope: !6350)
!6374 = !DILocation(line: 86, column: 46, scope: !6350)
!6375 = !DILocation(line: 87, column: 1, scope: !6350)
!6376 = !DILocation(line: 86, column: 2, scope: !6350)
!6377 = distinct !DISubprogram(name: "ptp_read", scope: !2, file: !2, line: 451, type: !4329, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6378)
!6378 = !{!6379, !6380, !6381, !6382, !6383, !6384, !6386, !6388, !6390, !6391, !6392, !6393, !6394, !6397, !6411, !6412, !6416, !6417, !6421}
!6379 = !DILocalVariable(name: "pc", arg: 1, scope: !6377, file: !2, line: 451, type: !4268)
!6380 = !DILocalVariable(name: "rdflags", arg: 2, scope: !6377, file: !2, line: 452, type: !4331)
!6381 = !DILocalVariable(name: "buf", arg: 3, scope: !6377, file: !2, line: 452, type: !345)
!6382 = !DILocalVariable(name: "cnt", arg: 4, scope: !6377, file: !2, line: 452, type: !392)
!6383 = !DILocalVariable(name: "ptp", scope: !6377, file: !2, line: 454, type: !230)
!6384 = !DILocalVariable(name: "__mptr", scope: !6385, file: !2, line: 454, type: !229)
!6385 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 454, column: 26)
!6386 = !DILocalVariable(name: "queue", scope: !6377, file: !2, line: 455, type: !6387)
!6387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!6388 = !DILocalVariable(name: "event", scope: !6377, file: !2, line: 456, type: !6389)
!6389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!6390 = !DILocalVariable(name: "flags", scope: !6377, file: !2, line: 457, type: !395)
!6391 = !DILocalVariable(name: "qcnt", scope: !6377, file: !2, line: 458, type: !392)
!6392 = !DILocalVariable(name: "i", scope: !6377, file: !2, line: 458, type: !392)
!6393 = !DILocalVariable(name: "result", scope: !6377, file: !2, line: 459, type: !125)
!6394 = !DILocalVariable(name: "__ret", scope: !6395, file: !2, line: 472, type: !125)
!6395 = distinct !DILexicalBlock(scope: !6396, file: !2, line: 472, column: 6)
!6396 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 472, column: 6)
!6397 = !DILocalVariable(name: "__wq_entry", scope: !6398, file: !2, line: 472, type: !6400)
!6398 = distinct !DILexicalBlock(scope: !6399, file: !2, line: 472, column: 6)
!6399 = distinct !DILexicalBlock(scope: !6395, file: !2, line: 472, column: 6)
!6400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1028, line: 30, size: 320, elements: !6401)
!6401 = !{!6402, !6403, !6404, !6410}
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6400, file: !1028, line: 31, baseType: !23, size: 32)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6400, file: !1028, line: 32, baseType: !229, size: 64, offset: 64)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6400, file: !1028, line: 33, baseType: !6405, size: 64, offset: 128)
!6405 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1028, line: 16, baseType: !6406)
!6406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6407, size: 64)
!6407 = !DISubroutineType(types: !6408)
!6408 = !{!125, !6409, !23, !125, !229}
!6409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6400, size: 64)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6400, file: !1028, line: 34, baseType: !247, size: 128, offset: 192)
!6411 = !DILocalVariable(name: "__ret", scope: !6398, file: !2, line: 472, type: !381)
!6412 = !DILocalVariable(name: "__int", scope: !6413, file: !2, line: 472, type: !381)
!6413 = distinct !DILexicalBlock(scope: !6414, file: !2, line: 472, column: 6)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !2, line: 472, column: 6)
!6415 = distinct !DILexicalBlock(scope: !6398, file: !2, line: 472, column: 6)
!6416 = !DILabel(scope: !6398, name: "__out", file: !2, line: 472)
!6417 = !DILocalVariable(name: "__dummy", scope: !6418, file: !2, line: 489, type: !395)
!6418 = distinct !DILexicalBlock(scope: !6419, file: !2, line: 489, column: 2)
!6419 = distinct !DILexicalBlock(scope: !6420, file: !2, line: 489, column: 2)
!6420 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 489, column: 2)
!6421 = !DILocalVariable(name: "__dummy2", scope: !6418, file: !2, line: 489, type: !395)
!6422 = !DILocation(line: 451, column: 38, scope: !6377)
!6423 = !DILocation(line: 452, column: 9, scope: !6377)
!6424 = !DILocation(line: 452, column: 31, scope: !6377)
!6425 = !DILocation(line: 452, column: 43, scope: !6377)
!6426 = !DILocation(line: 454, column: 2, scope: !6377)
!6427 = !DILocation(line: 454, column: 20, scope: !6377)
!6428 = !DILocation(line: 454, column: 26, scope: !6385)
!6429 = !DILocation(line: 454, column: 26, scope: !6377)
!6430 = !DILocation(line: 455, column: 2, scope: !6377)
!6431 = !DILocation(line: 455, column: 32, scope: !6377)
!6432 = !DILocation(line: 455, column: 41, scope: !6377)
!6433 = !DILocation(line: 455, column: 46, scope: !6377)
!6434 = !DILocation(line: 456, column: 2, scope: !6377)
!6435 = !DILocation(line: 456, column: 26, scope: !6377)
!6436 = !DILocation(line: 457, column: 2, scope: !6377)
!6437 = !DILocation(line: 457, column: 16, scope: !6377)
!6438 = !DILocation(line: 458, column: 2, scope: !6377)
!6439 = !DILocation(line: 458, column: 9, scope: !6377)
!6440 = !DILocation(line: 458, column: 15, scope: !6377)
!6441 = !DILocation(line: 459, column: 2, scope: !6377)
!6442 = !DILocation(line: 459, column: 6, scope: !6377)
!6443 = !DILocation(line: 461, column: 6, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 461, column: 6)
!6445 = !DILocation(line: 461, column: 10, scope: !6444)
!6446 = !DILocation(line: 461, column: 43, scope: !6444)
!6447 = !DILocation(line: 461, column: 6, scope: !6377)
!6448 = !DILocation(line: 462, column: 3, scope: !6444)
!6449 = !DILocation(line: 464, column: 6, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 464, column: 6)
!6451 = !DILocation(line: 464, column: 10, scope: !6450)
!6452 = !DILocation(line: 464, column: 6, scope: !6377)
!6453 = !DILocation(line: 465, column: 7, scope: !6450)
!6454 = !DILocation(line: 465, column: 3, scope: !6450)
!6455 = !DILocation(line: 467, column: 8, scope: !6377)
!6456 = !DILocation(line: 467, column: 12, scope: !6377)
!6457 = !DILocation(line: 467, column: 6, scope: !6377)
!6458 = !DILocation(line: 469, column: 32, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 469, column: 6)
!6460 = !DILocation(line: 469, column: 37, scope: !6459)
!6461 = !DILocation(line: 469, column: 6, scope: !6459)
!6462 = !DILocation(line: 469, column: 6, scope: !6377)
!6463 = !DILocation(line: 470, column: 3, scope: !6459)
!6464 = !DILocation(line: 472, column: 6, scope: !6395)
!6465 = !DILocation(line: 472, column: 6, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6395, file: !2, line: 472, column: 6)
!6467 = !DILocation(line: 472, column: 6, scope: !6399)
!6468 = !DILocation(line: 472, column: 6, scope: !6398)
!6469 = !DILocation(line: 472, column: 6, scope: !6413)
!6470 = !DILocation(line: 472, column: 6, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6413, file: !2, line: 472, column: 6)
!6472 = !DILocation(line: 472, column: 6, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6413, file: !2, line: 472, column: 6)
!6474 = !DILocation(line: 472, column: 6, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6473, file: !2, line: 472, column: 6)
!6476 = !DILocation(line: 472, column: 6, scope: !6414)
!6477 = distinct !{!6477, !6478, !6478, !5082}
!6478 = !DILocation(line: 472, column: 6, scope: !6415)
!6479 = !DILocation(line: 472, column: 6, scope: !6396)
!6480 = !DILocation(line: 472, column: 6, scope: !6377)
!6481 = !DILocation(line: 474, column: 17, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6396, file: !2, line: 473, column: 45)
!6483 = !DILocation(line: 474, column: 22, scope: !6482)
!6484 = !DILocation(line: 474, column: 3, scope: !6482)
!6485 = !DILocation(line: 475, column: 3, scope: !6482)
!6486 = !DILocation(line: 478, column: 6, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 478, column: 6)
!6488 = !DILocation(line: 478, column: 11, scope: !6487)
!6489 = !DILocation(line: 478, column: 6, scope: !6377)
!6490 = !DILocation(line: 479, column: 17, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6487, file: !2, line: 478, column: 20)
!6492 = !DILocation(line: 479, column: 22, scope: !6491)
!6493 = !DILocation(line: 479, column: 3, scope: !6491)
!6494 = !DILocation(line: 480, column: 3, scope: !6491)
!6495 = !DILocation(line: 483, column: 10, scope: !6377)
!6496 = !DILocation(line: 483, column: 8, scope: !6377)
!6497 = !DILocation(line: 484, column: 7, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 484, column: 6)
!6499 = !DILocation(line: 484, column: 6, scope: !6377)
!6500 = !DILocation(line: 485, column: 17, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6498, file: !2, line: 484, column: 14)
!6502 = !DILocation(line: 485, column: 22, scope: !6501)
!6503 = !DILocation(line: 485, column: 3, scope: !6501)
!6504 = !DILocation(line: 486, column: 3, scope: !6501)
!6505 = !DILocation(line: 489, column: 2, scope: !6377)
!6506 = !DILocation(line: 489, column: 2, scope: !6420)
!6507 = !DILocation(line: 489, column: 2, scope: !6418)
!6508 = !DILocation(line: 489, column: 2, scope: !6419)
!6509 = !DILocation(line: 491, column: 19, scope: !6377)
!6510 = !DILocation(line: 491, column: 9, scope: !6377)
!6511 = !DILocation(line: 491, column: 7, scope: !6377)
!6512 = !DILocation(line: 493, column: 6, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 493, column: 6)
!6514 = !DILocation(line: 493, column: 12, scope: !6513)
!6515 = !DILocation(line: 493, column: 10, scope: !6513)
!6516 = !DILocation(line: 493, column: 6, scope: !6377)
!6517 = !DILocation(line: 494, column: 9, scope: !6513)
!6518 = !DILocation(line: 494, column: 7, scope: !6513)
!6519 = !DILocation(line: 494, column: 3, scope: !6513)
!6520 = !DILocation(line: 496, column: 9, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 496, column: 2)
!6522 = !DILocation(line: 496, column: 7, scope: !6521)
!6523 = !DILocation(line: 496, column: 14, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6521, file: !2, line: 496, column: 2)
!6525 = !DILocation(line: 496, column: 18, scope: !6524)
!6526 = !DILocation(line: 496, column: 16, scope: !6524)
!6527 = !DILocation(line: 496, column: 2, scope: !6521)
!6528 = !DILocation(line: 497, column: 3, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6524, file: !2, line: 496, column: 28)
!6530 = !DILocation(line: 497, column: 9, scope: !6529)
!6531 = !DILocation(line: 497, column: 14, scope: !6529)
!6532 = !DILocation(line: 497, column: 21, scope: !6529)
!6533 = !DILocation(line: 497, column: 25, scope: !6529)
!6534 = !DILocation(line: 497, column: 32, scope: !6529)
!6535 = !DILocation(line: 499, column: 3, scope: !6529)
!6536 = !DILocation(line: 499, column: 3, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6529, file: !2, line: 499, column: 3)
!6538 = !DILocation(line: 499, column: 3, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6537, file: !2, line: 499, column: 3)
!6540 = !DILocation(line: 499, column: 3, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6537, file: !2, line: 499, column: 3)
!6542 = !DILocation(line: 500, column: 2, scope: !6529)
!6543 = !DILocation(line: 496, column: 24, scope: !6524)
!6544 = !DILocation(line: 496, column: 2, scope: !6524)
!6545 = distinct !{!6545, !6527, !6546, !5081, !5082}
!6546 = !DILocation(line: 500, column: 2, scope: !6521)
!6547 = !DILocation(line: 502, column: 26, scope: !6377)
!6548 = !DILocation(line: 502, column: 33, scope: !6377)
!6549 = !DILocation(line: 502, column: 39, scope: !6377)
!6550 = !DILocation(line: 502, column: 2, scope: !6377)
!6551 = !DILocation(line: 504, column: 8, scope: !6377)
!6552 = !DILocation(line: 504, column: 12, scope: !6377)
!6553 = !DILocation(line: 504, column: 6, scope: !6377)
!6554 = !DILocation(line: 506, column: 16, scope: !6377)
!6555 = !DILocation(line: 506, column: 21, scope: !6377)
!6556 = !DILocation(line: 506, column: 2, scope: !6377)
!6557 = !DILocation(line: 508, column: 11, scope: !6377)
!6558 = !DILocation(line: 508, column: 9, scope: !6377)
!6559 = !DILocation(line: 509, column: 19, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6377, file: !2, line: 509, column: 6)
!6561 = !DILocation(line: 509, column: 24, scope: !6560)
!6562 = !DILocation(line: 509, column: 31, scope: !6560)
!6563 = !DILocation(line: 509, column: 6, scope: !6560)
!6564 = !DILocation(line: 509, column: 6, scope: !6377)
!6565 = !DILocation(line: 510, column: 10, scope: !6560)
!6566 = !DILocation(line: 510, column: 3, scope: !6560)
!6567 = !DILocation(line: 512, column: 8, scope: !6377)
!6568 = !DILocation(line: 512, column: 2, scope: !6377)
!6569 = !DILocation(line: 513, column: 9, scope: !6377)
!6570 = !DILocation(line: 513, column: 2, scope: !6377)
!6571 = !DILocation(line: 514, column: 1, scope: !6377)
!6572 = !DILocation(line: 112, column: 2, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !15, file: !16, line: 112, column: 2)
!6574 = !DILocation(line: 112, column: 2, scope: !15)
!6575 = !DILocation(line: 113, column: 1, scope: !15)
!6576 = !DISubprogram(name: "init_wait_entry", scope: !1028, file: !1028, line: 290, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6577 = !DISubroutineType(types: !6578)
!6578 = !{null, !6409, !125}
!6579 = !DISubprogram(name: "prepare_to_wait_event", scope: !1028, file: !1028, line: 1199, type: !6580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = !DISubroutineType(types: !6581)
!6581 = !{!381, !6582, !6409, !125}
!6582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!6583 = !DISubprogram(name: "schedule", scope: !1051, file: !1051, line: 303, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6584 = !DISubprogram(name: "finish_wait", scope: !1028, file: !1028, line: 1200, type: !6585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{null, !6582, !6409}
!6587 = distinct !DISubprogram(name: "kmalloc", scope: !219, file: !219, line: 591, type: !6588, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6590)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{!229, !392, !786}
!6590 = !{!6591, !6592, !6593}
!6591 = !DILocalVariable(name: "size", arg: 1, scope: !6587, file: !219, line: 591, type: !392)
!6592 = !DILocalVariable(name: "flags", arg: 2, scope: !6587, file: !219, line: 591, type: !786)
!6593 = !DILocalVariable(name: "index", scope: !6594, file: !219, line: 594, type: !23)
!6594 = distinct !DILexicalBlock(scope: !6595, file: !219, line: 593, column: 42)
!6595 = distinct !DILexicalBlock(scope: !6587, file: !219, line: 593, column: 6)
!6596 = !DILocation(line: 591, column: 61, scope: !6587)
!6597 = !DILocation(line: 591, column: 73, scope: !6587)
!6598 = !DILocation(line: 593, column: 27, scope: !6595)
!6599 = !DILocation(line: 593, column: 6, scope: !6595)
!6600 = !DILocation(line: 593, column: 33, scope: !6595)
!6601 = !DILocation(line: 593, column: 36, scope: !6595)
!6602 = !DILocation(line: 593, column: 6, scope: !6587)
!6603 = !DILocation(line: 594, column: 3, scope: !6594)
!6604 = !DILocation(line: 594, column: 16, scope: !6594)
!6605 = !DILocation(line: 596, column: 7, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6594, file: !219, line: 596, column: 7)
!6607 = !DILocation(line: 596, column: 12, scope: !6606)
!6608 = !DILocation(line: 596, column: 7, scope: !6594)
!6609 = !DILocation(line: 597, column: 25, scope: !6606)
!6610 = !DILocation(line: 597, column: 31, scope: !6606)
!6611 = !DILocation(line: 597, column: 11, scope: !6606)
!6612 = !DILocation(line: 597, column: 4, scope: !6606)
!6613 = !DILocation(line: 599, column: 11, scope: !6594)
!6614 = !DILocation(line: 599, column: 9, scope: !6594)
!6615 = !DILocation(line: 601, column: 33, scope: !6594)
!6616 = !DILocation(line: 601, column: 40, scope: !6594)
!6617 = !DILocation(line: 601, column: 20, scope: !6594)
!6618 = !DILocation(line: 601, column: 5, scope: !6594)
!6619 = !DILocation(line: 601, column: 51, scope: !6594)
!6620 = !DILocation(line: 602, column: 5, scope: !6594)
!6621 = !DILocation(line: 602, column: 12, scope: !6594)
!6622 = !DILocation(line: 600, column: 10, scope: !6594)
!6623 = !DILocation(line: 600, column: 3, scope: !6594)
!6624 = !DILocation(line: 603, column: 2, scope: !6595)
!6625 = !DILocation(line: 604, column: 19, scope: !6587)
!6626 = !DILocation(line: 604, column: 25, scope: !6587)
!6627 = !DILocation(line: 604, column: 9, scope: !6587)
!6628 = !DILocation(line: 604, column: 2, scope: !6587)
!6629 = !DILocation(line: 605, column: 1, scope: !6587)
!6630 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6631, file: !6631, line: 32, type: !6632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6631 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6632 = !DISubroutineType(types: !6633)
!6633 = !{!395, !6634}
!6634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!6635 = distinct !DISubprogram(name: "spinlock_check", scope: !6636, file: !6636, line: 324, type: !6637, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6639)
!6636 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6637 = !DISubroutineType(types: !6638)
!6638 = !{!6634, !2008}
!6639 = !{!6640}
!6640 = !DILocalVariable(name: "lock", arg: 1, scope: !6635, file: !6636, line: 324, type: !2008)
!6641 = !DILocation(line: 324, column: 67, scope: !6635)
!6642 = !DILocation(line: 326, column: 10, scope: !6635)
!6643 = !DILocation(line: 326, column: 16, scope: !6635)
!6644 = !DILocation(line: 326, column: 2, scope: !6635)
!6645 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6636, file: !6636, line: 404, type: !6646, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6648)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{null, !2008, !395}
!6648 = !{!6649, !6650, !6651, !6654}
!6649 = !DILocalVariable(name: "lock", arg: 1, scope: !6645, file: !6636, line: 404, type: !2008)
!6650 = !DILocalVariable(name: "flags", arg: 2, scope: !6645, file: !6636, line: 404, type: !395)
!6651 = !DILocalVariable(name: "__dummy", scope: !6652, file: !6636, line: 406, type: !395)
!6652 = distinct !DILexicalBlock(scope: !6653, file: !6636, line: 406, column: 2)
!6653 = distinct !DILexicalBlock(scope: !6645, file: !6636, line: 406, column: 2)
!6654 = !DILocalVariable(name: "__dummy2", scope: !6652, file: !6636, line: 406, type: !395)
!6655 = !DILocation(line: 404, column: 64, scope: !6645)
!6656 = !DILocation(line: 404, column: 84, scope: !6645)
!6657 = !DILocation(line: 406, column: 2, scope: !6645)
!6658 = !DILocation(line: 406, column: 2, scope: !6652)
!6659 = !DILocation(line: 406, column: 2, scope: !6653)
!6660 = !DILocation(line: 407, column: 1, scope: !6645)
!6661 = distinct !DISubprogram(name: "in_32bit_syscall", scope: !6175, file: !6175, line: 92, type: !3793, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!6662 = !DILocation(line: 94, column: 9, scope: !6661)
!6663 = !DILocation(line: 94, column: 27, scope: !6661)
!6664 = !DILocation(line: 94, column: 30, scope: !6661)
!6665 = !DILocation(line: 94, column: 2, scope: !6661)
!6666 = distinct !DISubprogram(name: "get_current", scope: !6667, file: !6667, line: 39, type: !6668, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6670)
!6667 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6668 = !DISubroutineType(types: !6669)
!6669 = !{!1049}
!6670 = !{!6671, !6673, !6675}
!6671 = !DILocalVariable(name: "pscr_ret__", scope: !6672, file: !6667, line: 41, type: !1049)
!6672 = distinct !DILexicalBlock(scope: !6666, file: !6667, line: 41, column: 9)
!6673 = !DILocalVariable(name: "__vpp_verify", scope: !6674, file: !6667, line: 41, type: !2278)
!6674 = distinct !DILexicalBlock(scope: !6672, file: !6667, line: 41, column: 9)
!6675 = !DILocalVariable(name: "pfo_val__", scope: !6676, file: !6667, line: 41, type: !497)
!6676 = distinct !DILexicalBlock(scope: !6672, file: !6667, line: 41, column: 9)
!6677 = !DILocation(line: 41, column: 9, scope: !6672)
!6678 = !DILocation(line: 41, column: 9, scope: !6674)
!6679 = !DILocation(line: 41, column: 9, scope: !6676)
!6680 = !{i64 2148432121}
!6681 = !DILocation(line: 41, column: 9, scope: !6666)
!6682 = !DILocation(line: 41, column: 2, scope: !6666)
!6683 = distinct !DISubprogram(name: "in_x32_syscall", scope: !6175, file: !6175, line: 83, type: !3793, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!6684 = !DILocation(line: 89, column: 2, scope: !6683)
!6685 = distinct !DISubprogram(name: "check_copy_size", scope: !9, file: !9, line: 237, type: !6686, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6688)
!6686 = !DISubroutineType(types: !6687)
!6687 = !{!1540, !2278, !392, !1540}
!6688 = !{!6689, !6690, !6691, !6692, !6693, !6696}
!6689 = !DILocalVariable(name: "addr", arg: 1, scope: !6685, file: !9, line: 237, type: !2278)
!6690 = !DILocalVariable(name: "bytes", arg: 2, scope: !6685, file: !9, line: 237, type: !392)
!6691 = !DILocalVariable(name: "is_source", arg: 3, scope: !6685, file: !9, line: 237, type: !1540)
!6692 = !DILocalVariable(name: "sz", scope: !6685, file: !9, line: 239, type: !125)
!6693 = !DILocalVariable(name: "__ret_warn_on", scope: !6694, file: !9, line: 249, type: !125)
!6694 = distinct !DILexicalBlock(scope: !6695, file: !9, line: 249, column: 6)
!6695 = distinct !DILexicalBlock(scope: !6685, file: !9, line: 249, column: 6)
!6696 = !DILocalVariable(name: "__flags", scope: !6697, file: !9, line: 249, type: !125)
!6697 = distinct !DILexicalBlock(scope: !6698, file: !9, line: 249, column: 6)
!6698 = distinct !DILexicalBlock(scope: !6694, file: !9, line: 249, column: 6)
!6699 = !DILocation(line: 237, column: 29, scope: !6685)
!6700 = !DILocation(line: 237, column: 42, scope: !6685)
!6701 = !DILocation(line: 237, column: 54, scope: !6685)
!6702 = !DILocation(line: 239, column: 2, scope: !6685)
!6703 = !DILocation(line: 239, column: 6, scope: !6685)
!6704 = !DILocation(line: 239, column: 33, scope: !6685)
!6705 = !DILocation(line: 239, column: 11, scope: !6685)
!6706 = !DILocation(line: 240, column: 6, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6685, file: !9, line: 240, column: 6)
!6708 = !DILocation(line: 0, scope: !6707)
!6709 = !DILocation(line: 240, column: 6, scope: !6685)
!6710 = !DILocation(line: 241, column: 29, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6712, file: !9, line: 241, column: 7)
!6712 = distinct !DILexicalBlock(scope: !6707, file: !9, line: 240, column: 39)
!6713 = !DILocation(line: 241, column: 8, scope: !6711)
!6714 = !DILocation(line: 241, column: 7, scope: !6712)
!6715 = !DILocation(line: 242, column: 18, scope: !6711)
!6716 = !DILocation(line: 242, column: 22, scope: !6711)
!6717 = !DILocation(line: 242, column: 4, scope: !6711)
!6718 = !DILocation(line: 243, column: 12, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6711, file: !9, line: 243, column: 12)
!6720 = !{i8 0, i8 2}
!6721 = !DILocation(line: 243, column: 12, scope: !6711)
!6722 = !DILocation(line: 244, column: 4, scope: !6719)
!6723 = !{i32 2073991}
!6724 = !DILocation(line: 246, column: 4, scope: !6719)
!6725 = !{i32 2074020}
!6726 = !DILocation(line: 247, column: 3, scope: !6712)
!6727 = !DILocation(line: 249, column: 6, scope: !6694)
!6728 = !DILocation(line: 249, column: 6, scope: !6698)
!6729 = !DILocation(line: 249, column: 6, scope: !6697)
!6730 = !DILocation(line: 249, column: 6, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6697, file: !9, line: 249, column: 6)
!6732 = !DILocation(line: 249, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6697, file: !9, line: 249, column: 6)
!6734 = !{i64 2149574453, i64 2149574482, i64 2149574528, i64 2149574586, i64 2149574640, i64 2149574694, i64 2149574749, i64 2149574780, i64 2149575088, i64 2149575094, i64 2149575141, i64 2149575164, i64 2149575190}
!6735 = !DILocation(line: 249, column: 6, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6697, file: !9, line: 249, column: 6)
!6737 = !DILocation(line: 249, column: 6, scope: !6695)
!6738 = !DILocation(line: 249, column: 6, scope: !6685)
!6739 = !DILocation(line: 250, column: 3, scope: !6695)
!6740 = !DILocation(line: 251, column: 20, scope: !6685)
!6741 = !DILocation(line: 251, column: 26, scope: !6685)
!6742 = !DILocation(line: 251, column: 33, scope: !6685)
!6743 = !DILocation(line: 251, column: 2, scope: !6685)
!6744 = !DILocation(line: 252, column: 2, scope: !6685)
!6745 = !DILocation(line: 253, column: 1, scope: !6685)
!6746 = !DISubprogram(name: "_copy_to_user", scope: !6189, file: !6189, line: 176, type: !6190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6747 = distinct !DISubprogram(name: "copy_overflow", scope: !9, file: !9, line: 230, type: !6748, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6750)
!6748 = !DISubroutineType(types: !6749)
!6749 = !{null, !125, !395}
!6750 = !{!6751, !6752}
!6751 = !DILocalVariable(name: "size", arg: 1, scope: !6747, file: !9, line: 230, type: !125)
!6752 = !DILocalVariable(name: "count", arg: 2, scope: !6747, file: !9, line: 230, type: !395)
!6753 = !DILocation(line: 230, column: 38, scope: !6747)
!6754 = !DILocation(line: 230, column: 58, scope: !6747)
!6755 = !DILocation(line: 233, column: 19, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6747, file: !9, line: 232, column: 6)
!6757 = !DILocation(line: 233, column: 25, scope: !6756)
!6758 = !DILocation(line: 233, column: 3, scope: !6756)
!6759 = !DILocation(line: 234, column: 1, scope: !6747)
!6760 = !DISubprogram(name: "__bad_copy_from", scope: !9, file: !9, line: 224, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6761 = !DISubprogram(name: "__bad_copy_to", scope: !9, file: !9, line: 226, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6762 = distinct !DISubprogram(name: "check_object_size", scope: !9, file: !9, line: 218, type: !6763, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6765)
!6763 = !DISubroutineType(types: !6764)
!6764 = !{null, !2278, !395, !1540}
!6765 = !{!6766, !6767, !6768}
!6766 = !DILocalVariable(name: "ptr", arg: 1, scope: !6762, file: !9, line: 218, type: !2278)
!6767 = !DILocalVariable(name: "n", arg: 2, scope: !6762, file: !9, line: 218, type: !395)
!6768 = !DILocalVariable(name: "to_user", arg: 3, scope: !6762, file: !9, line: 219, type: !1540)
!6769 = !DILocation(line: 218, column: 50, scope: !6762)
!6770 = !DILocation(line: 218, column: 69, scope: !6762)
!6771 = !DILocation(line: 219, column: 15, scope: !6762)
!6772 = !DILocation(line: 220, column: 3, scope: !6762)
!6773 = !DISubprogram(name: "__copy_overflow", scope: !9, file: !9, line: 228, type: !6748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6774 = !DISubprogram(name: "_copy_from_user", scope: !6189, file: !6189, line: 158, type: !6190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6775 = !DISubprogram(name: "kmalloc_large", scope: !219, file: !219, line: 531, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6776 = distinct !DISubprogram(name: "__kmalloc_index", scope: !219, file: !219, line: 444, type: !6777, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6779)
!6777 = !DISubroutineType(types: !6778)
!6778 = !{!23, !392, !1540}
!6779 = !{!6780, !6781}
!6780 = !DILocalVariable(name: "size", arg: 1, scope: !6776, file: !219, line: 444, type: !392)
!6781 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6776, file: !219, line: 445, type: !1540)
!6782 = !DILocation(line: 444, column: 60, scope: !6776)
!6783 = !DILocation(line: 445, column: 16, scope: !6776)
!6784 = !DILocation(line: 447, column: 7, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 447, column: 6)
!6786 = !DILocation(line: 447, column: 6, scope: !6776)
!6787 = !DILocation(line: 448, column: 3, scope: !6785)
!6788 = !DILocation(line: 450, column: 6, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 450, column: 6)
!6790 = !DILocation(line: 450, column: 11, scope: !6789)
!6791 = !DILocation(line: 450, column: 6, scope: !6776)
!6792 = !DILocation(line: 451, column: 3, scope: !6789)
!6793 = !DILocation(line: 453, column: 32, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 453, column: 6)
!6795 = !DILocation(line: 453, column: 37, scope: !6794)
!6796 = !DILocation(line: 453, column: 42, scope: !6794)
!6797 = !DILocation(line: 453, column: 45, scope: !6794)
!6798 = !DILocation(line: 453, column: 50, scope: !6794)
!6799 = !DILocation(line: 453, column: 6, scope: !6776)
!6800 = !DILocation(line: 454, column: 3, scope: !6794)
!6801 = !DILocation(line: 455, column: 32, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 455, column: 6)
!6803 = !DILocation(line: 455, column: 37, scope: !6802)
!6804 = !DILocation(line: 455, column: 43, scope: !6802)
!6805 = !DILocation(line: 455, column: 46, scope: !6802)
!6806 = !DILocation(line: 455, column: 51, scope: !6802)
!6807 = !DILocation(line: 455, column: 6, scope: !6776)
!6808 = !DILocation(line: 456, column: 3, scope: !6802)
!6809 = !DILocation(line: 457, column: 6, scope: !6810)
!6810 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 457, column: 6)
!6811 = !DILocation(line: 457, column: 11, scope: !6810)
!6812 = !DILocation(line: 457, column: 6, scope: !6776)
!6813 = !DILocation(line: 457, column: 26, scope: !6810)
!6814 = !DILocation(line: 458, column: 6, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 458, column: 6)
!6816 = !DILocation(line: 458, column: 11, scope: !6815)
!6817 = !DILocation(line: 458, column: 6, scope: !6776)
!6818 = !DILocation(line: 458, column: 26, scope: !6815)
!6819 = !DILocation(line: 459, column: 6, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 459, column: 6)
!6821 = !DILocation(line: 459, column: 11, scope: !6820)
!6822 = !DILocation(line: 459, column: 6, scope: !6776)
!6823 = !DILocation(line: 459, column: 26, scope: !6820)
!6824 = !DILocation(line: 460, column: 6, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 460, column: 6)
!6826 = !DILocation(line: 460, column: 11, scope: !6825)
!6827 = !DILocation(line: 460, column: 6, scope: !6776)
!6828 = !DILocation(line: 460, column: 26, scope: !6825)
!6829 = !DILocation(line: 461, column: 6, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 461, column: 6)
!6831 = !DILocation(line: 461, column: 11, scope: !6830)
!6832 = !DILocation(line: 461, column: 6, scope: !6776)
!6833 = !DILocation(line: 461, column: 26, scope: !6830)
!6834 = !DILocation(line: 462, column: 6, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 462, column: 6)
!6836 = !DILocation(line: 462, column: 11, scope: !6835)
!6837 = !DILocation(line: 462, column: 6, scope: !6776)
!6838 = !DILocation(line: 462, column: 26, scope: !6835)
!6839 = !DILocation(line: 463, column: 6, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 463, column: 6)
!6841 = !DILocation(line: 463, column: 11, scope: !6840)
!6842 = !DILocation(line: 463, column: 6, scope: !6776)
!6843 = !DILocation(line: 463, column: 26, scope: !6840)
!6844 = !DILocation(line: 464, column: 6, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 464, column: 6)
!6846 = !DILocation(line: 464, column: 11, scope: !6845)
!6847 = !DILocation(line: 464, column: 6, scope: !6776)
!6848 = !DILocation(line: 464, column: 26, scope: !6845)
!6849 = !DILocation(line: 465, column: 6, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 465, column: 6)
!6851 = !DILocation(line: 465, column: 11, scope: !6850)
!6852 = !DILocation(line: 465, column: 6, scope: !6776)
!6853 = !DILocation(line: 465, column: 26, scope: !6850)
!6854 = !DILocation(line: 466, column: 6, scope: !6855)
!6855 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 466, column: 6)
!6856 = !DILocation(line: 466, column: 11, scope: !6855)
!6857 = !DILocation(line: 466, column: 6, scope: !6776)
!6858 = !DILocation(line: 466, column: 26, scope: !6855)
!6859 = !DILocation(line: 467, column: 6, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 467, column: 6)
!6861 = !DILocation(line: 467, column: 11, scope: !6860)
!6862 = !DILocation(line: 467, column: 6, scope: !6776)
!6863 = !DILocation(line: 467, column: 26, scope: !6860)
!6864 = !DILocation(line: 468, column: 6, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 468, column: 6)
!6866 = !DILocation(line: 468, column: 11, scope: !6865)
!6867 = !DILocation(line: 468, column: 6, scope: !6776)
!6868 = !DILocation(line: 468, column: 26, scope: !6865)
!6869 = !DILocation(line: 469, column: 6, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 469, column: 6)
!6871 = !DILocation(line: 469, column: 11, scope: !6870)
!6872 = !DILocation(line: 469, column: 6, scope: !6776)
!6873 = !DILocation(line: 469, column: 26, scope: !6870)
!6874 = !DILocation(line: 470, column: 6, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 470, column: 6)
!6876 = !DILocation(line: 470, column: 11, scope: !6875)
!6877 = !DILocation(line: 470, column: 6, scope: !6776)
!6878 = !DILocation(line: 470, column: 26, scope: !6875)
!6879 = !DILocation(line: 471, column: 6, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 471, column: 6)
!6881 = !DILocation(line: 471, column: 11, scope: !6880)
!6882 = !DILocation(line: 471, column: 6, scope: !6776)
!6883 = !DILocation(line: 471, column: 26, scope: !6880)
!6884 = !DILocation(line: 472, column: 6, scope: !6885)
!6885 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 472, column: 6)
!6886 = !DILocation(line: 472, column: 11, scope: !6885)
!6887 = !DILocation(line: 472, column: 6, scope: !6776)
!6888 = !DILocation(line: 472, column: 26, scope: !6885)
!6889 = !DILocation(line: 473, column: 6, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 473, column: 6)
!6891 = !DILocation(line: 473, column: 11, scope: !6890)
!6892 = !DILocation(line: 473, column: 6, scope: !6776)
!6893 = !DILocation(line: 473, column: 26, scope: !6890)
!6894 = !DILocation(line: 474, column: 6, scope: !6895)
!6895 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 474, column: 6)
!6896 = !DILocation(line: 474, column: 11, scope: !6895)
!6897 = !DILocation(line: 474, column: 6, scope: !6776)
!6898 = !DILocation(line: 474, column: 27, scope: !6895)
!6899 = !DILocation(line: 475, column: 6, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 475, column: 6)
!6901 = !DILocation(line: 475, column: 11, scope: !6900)
!6902 = !DILocation(line: 475, column: 6, scope: !6776)
!6903 = !DILocation(line: 475, column: 32, scope: !6900)
!6904 = !DILocation(line: 477, column: 50, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6776, file: !219, line: 477, column: 6)
!6906 = !DILocation(line: 477, column: 6, scope: !6776)
!6907 = !DILocation(line: 478, column: 3, scope: !6905)
!6908 = !DILocation(line: 478, column: 3, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6910, file: !219, line: 478, column: 3)
!6910 = distinct !DILexicalBlock(scope: !6905, file: !219, line: 478, column: 3)
!6911 = !{i32 -2141606697}
!6912 = !DILocation(line: 478, column: 3, scope: !6910)
!6913 = !DILocation(line: 480, column: 3, scope: !6905)
!6914 = !DILocation(line: 480, column: 3, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6905, file: !219, line: 480, column: 3)
!6916 = !DILocation(line: 480, column: 3, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6915, file: !219, line: 480, column: 3)
!6918 = !DILocation(line: 480, column: 3, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6915, file: !219, line: 480, column: 3)
!6920 = !{i64 2153360802, i64 2153360831, i64 2153360877, i64 2153360935, i64 2153360989, i64 2153361043, i64 2153361098, i64 2153361129}
!6921 = !DILocation(line: 483, column: 2, scope: !6776)
!6922 = !DILocation(line: 484, column: 1, scope: !6776)
!6923 = !DISubprogram(name: "kmalloc_trace", scope: !219, file: !219, line: 525, type: !6924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6924 = !DISubroutineType(types: !6925)
!6925 = !{!229, !6926, !786, !392}
!6926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6927, size: 64)
!6927 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6928, line: 325, flags: DIFlagFwdDecl)
!6928 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6929 = distinct !DISubprogram(name: "kmalloc_type", scope: !219, file: !219, line: 401, type: !6930, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6932)
!6930 = !DISubroutineType(types: !6931)
!6931 = !{!218, !786, !395}
!6932 = !{!6933, !6934}
!6933 = !DILocalVariable(name: "flags", arg: 1, scope: !6929, file: !219, line: 401, type: !786)
!6934 = !DILocalVariable(name: "caller", arg: 2, scope: !6929, file: !219, line: 401, type: !395)
!6935 = !DILocation(line: 401, column: 67, scope: !6929)
!6936 = !DILocation(line: 401, column: 88, scope: !6929)
!6937 = !DILocation(line: 407, column: 6, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6929, file: !219, line: 407, column: 6)
!6939 = !DILocation(line: 407, column: 6, scope: !6929)
!6940 = !DILocation(line: 413, column: 3, scope: !6938)
!6941 = !DILocation(line: 423, column: 38, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6929, file: !219, line: 423, column: 6)
!6943 = !DILocation(line: 423, column: 44, scope: !6942)
!6944 = !DILocation(line: 423, column: 6, scope: !6929)
!6945 = !DILocation(line: 424, column: 3, scope: !6942)
!6946 = !DILocation(line: 426, column: 3, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6929, file: !219, line: 425, column: 6)
!6948 = !DILocation(line: 429, column: 1, scope: !6929)
!6949 = !DISubprogram(name: "__kmalloc", scope: !219, file: !219, line: 488, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6950 = !DISubprogram(name: "__compiletime_assert_245", scope: !219, file: !219, line: 478, type: !17, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6951 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6631, file: !6631, line: 43, type: !6952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = !DISubroutineType(types: !6953)
!6953 = !{null, !6634, !395}
