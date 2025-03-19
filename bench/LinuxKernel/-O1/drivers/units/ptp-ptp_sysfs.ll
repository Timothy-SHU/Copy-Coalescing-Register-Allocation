; ModuleID = 'drivers/ptp/ptp_sysfs.c'
source_filename = "drivers/ptp/ptp_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.ptp_vclock = type { ptr, %struct.ptp_clock_info, ptr, %struct.hlist_node, %struct.cyclecounter, %struct.timecounter, %struct.mutex }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@ptp_group = internal constant %struct.attribute_group { ptr null, ptr @ptp_is_attribute_visible, ptr null, ptr @ptp_attrs, ptr null }, align 8, !dbg !0
@ptp_groups = hidden global [2 x ptr] [ptr @ptp_group, ptr null], align 16, !dbg !5005
@.str = private unnamed_addr constant [5 x i8] c"pins\00", align 1, !dbg !5007
@ptp_attrs = internal global [15 x ptr] [ptr @dev_attr_clock_name, ptr @dev_attr_max_adjustment, ptr @dev_attr_max_phase_adjustment, ptr @dev_attr_n_alarms, ptr @dev_attr_n_external_timestamps, ptr @dev_attr_n_periodic_outputs, ptr @dev_attr_n_programmable_pins, ptr @dev_attr_pps_available, ptr @dev_attr_extts_enable, ptr @dev_attr_fifo, ptr @dev_attr_period, ptr @dev_attr_pps_enable, ptr @dev_attr_n_vclocks, ptr @dev_attr_max_vclocks, ptr null], align 16, !dbg !5091
@dev_attr_extts_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 144 }, ptr null, ptr @extts_enable_store }, align 8, !dbg !5015
@dev_attr_fifo = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @extts_fifo_show, ptr null }, align 8, !dbg !5021
@dev_attr_period = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 144 }, ptr null, ptr @period_store }, align 8, !dbg !5029
@dev_attr_pps_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 144 }, ptr null, ptr @pps_enable_store }, align 8, !dbg !5041
@dev_attr_n_vclocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @n_vclocks_show, ptr @n_vclocks_store }, align 8, !dbg !5051
@dev_attr_max_vclocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @max_vclocks_show, ptr @max_vclocks_store }, align 8, !dbg !5080
@dev_attr_max_phase_adjustment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @max_phase_adjustment_show, ptr null }, align 8, !dbg !5087
@.str.1 = private unnamed_addr constant [13 x i8] c"extts_enable\00", align 1, !dbg !5010
@.str.2 = private unnamed_addr constant [6 x i8] c"%u %d\00", align 1, !dbg !5017
@.str.3 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1, !dbg !5019
@.str.4 = private unnamed_addr constant [12 x i8] c"%u %lld %u\0A\00", align 1, !dbg !5023
@.str.5 = private unnamed_addr constant [7 x i8] c"period\00", align 1, !dbg !5026
@.str.6 = private unnamed_addr constant [19 x i8] c"%u %lld %u %lld %u\00", align 1, !dbg !5031
@.str.7 = private unnamed_addr constant [11 x i8] c"pps_enable\00", align 1, !dbg !5036
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !5043
@.str.9 = private unnamed_addr constant [10 x i8] c"n_vclocks\00", align 1, !dbg !5046
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !5053
@.str.11 = private unnamed_addr constant [17 x i8] c"max value is %d\0A\00", align 1, !dbg !5056
@.str.12 = private unnamed_addr constant [25 x i8] c"new virtual clock ptp%d\0A\00", align 1, !dbg !5061
@.str.13 = private unnamed_addr constant [32 x i8] c"only physical clock in use now\0A\00", align 1, !dbg !5066
@.str.14 = private unnamed_addr constant [39 x i8] c"guarantee physical clock free running\0A\00", align 1, !dbg !5068
@.str.15 = private unnamed_addr constant [28 x i8] c"delete virtual clock ptp%d\0A\00", align 1, !dbg !5073
@.str.16 = private unnamed_addr constant [12 x i8] c"max_vclocks\00", align 1, !dbg !5078
@.str.17 = private unnamed_addr constant [21 x i8] c"max_phase_adjustment\00", align 1, !dbg !5082
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !5089
@dev_attr_clock_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @clock_name_show, ptr null }, align 8, !dbg !5098
@dev_attr_max_adjustment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @max_adj_show, ptr null }, align 8, !dbg !5105
@dev_attr_n_alarms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @n_alarm_show, ptr null }, align 8, !dbg !5112
@dev_attr_n_external_timestamps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @n_ext_ts_show, ptr null }, align 8, !dbg !5119
@dev_attr_n_periodic_outputs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @n_per_out_show, ptr null }, align 8, !dbg !5123
@dev_attr_n_programmable_pins = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @n_pins_show, ptr null }, align 8, !dbg !5128
@dev_attr_pps_available = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @pps_show, ptr null }, align 8, !dbg !5135
@.str.19 = private unnamed_addr constant [11 x i8] c"clock_name\00", align 1, !dbg !5096
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !5100
@.str.21 = private unnamed_addr constant [15 x i8] c"max_adjustment\00", align 1, !dbg !5102
@.str.22 = private unnamed_addr constant [9 x i8] c"n_alarms\00", align 1, !dbg !5107
@.str.23 = private unnamed_addr constant [22 x i8] c"n_external_timestamps\00", align 1, !dbg !5114
@.str.24 = private unnamed_addr constant [19 x i8] c"n_periodic_outputs\00", align 1, !dbg !5121
@.str.25 = private unnamed_addr constant [20 x i8] c"n_programmable_pins\00", align 1, !dbg !5125
@.str.26 = private unnamed_addr constant [14 x i8] c"pps_available\00", align 1, !dbg !5130
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.27 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5137
@.str.28 = private unnamed_addr constant [7 x i8] c"%u %u\0A\00", align 1, !dbg !5139
@.str.29 = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1, !dbg !5141

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ptp_populate_pin_groups(ptr noundef %ptp) #0 align 16 !dbg !5152 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %n_pins = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %da = alloca ptr, align 8
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5156, metadata !DIExpression()), !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #16, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5157, metadata !DIExpression()), !dbg !5169
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5170
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2, !dbg !5171
  %1 = load ptr, ptr %info1, align 8, !dbg !5171
  store ptr %1, ptr %info, align 8, !dbg !5169
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5158, metadata !DIExpression()), !dbg !5173
  store i32 -12, ptr %err, align 4, !dbg !5173
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5159, metadata !DIExpression()), !dbg !5174
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_pins) #16, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %n_pins, metadata !5160, metadata !DIExpression()), !dbg !5175
  %2 = load ptr, ptr %info, align 8, !dbg !5176
  %n_pins2 = getelementptr inbounds %struct.ptp_clock_info, ptr %2, i32 0, i32 6, !dbg !5177
  %3 = load i32, ptr %n_pins2, align 8, !dbg !5177
  store i32 %3, ptr %n_pins, align 4, !dbg !5175
  %4 = load i32, ptr %n_pins, align 4, !dbg !5178
  %tobool = icmp ne i32 %4, 0, !dbg !5178
  br i1 %tobool, label %if.end, label %if.then, !dbg !5180

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5181

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %n_pins, align 4, !dbg !5182
  %conv = sext i32 %5 to i64, !dbg !5182
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 32, i32 noundef 3264) #17, !dbg !5183
  %6 = load ptr, ptr %ptp.addr, align 8, !dbg !5184
  %pin_dev_attr = getelementptr inbounds %struct.ptp_clock, ptr %6, i32 0, i32 12, !dbg !5185
  store ptr %call, ptr %pin_dev_attr, align 8, !dbg !5186
  %7 = load ptr, ptr %ptp.addr, align 8, !dbg !5187
  %pin_dev_attr3 = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 12, !dbg !5189
  %8 = load ptr, ptr %pin_dev_attr3, align 8, !dbg !5189
  %tobool4 = icmp ne ptr %8, null, !dbg !5187
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5190

if.then5:                                         ; preds = %if.end
  br label %no_dev_attr, !dbg !5191

if.end6:                                          ; preds = %if.end
  %9 = load i32, ptr %n_pins, align 4, !dbg !5192
  %add = add i32 1, %9, !dbg !5193
  %conv7 = sext i32 %add to i64, !dbg !5194
  %call8 = call noalias ptr @kcalloc(i64 noundef %conv7, i64 noundef 8, i32 noundef 3264) #17, !dbg !5195
  %10 = load ptr, ptr %ptp.addr, align 8, !dbg !5196
  %pin_attr = getelementptr inbounds %struct.ptp_clock, ptr %10, i32 0, i32 13, !dbg !5197
  store ptr %call8, ptr %pin_attr, align 8, !dbg !5198
  %11 = load ptr, ptr %ptp.addr, align 8, !dbg !5199
  %pin_attr9 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 13, !dbg !5201
  %12 = load ptr, ptr %pin_attr9, align 8, !dbg !5201
  %tobool10 = icmp ne ptr %12, null, !dbg !5199
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5202

if.then11:                                        ; preds = %if.end6
  br label %no_pin_attr, !dbg !5203

if.end12:                                         ; preds = %if.end6
  store i32 0, ptr %i, align 4, !dbg !5204
  br label %for.cond, !dbg !5205

for.cond:                                         ; preds = %for.inc, %if.end12
  %13 = load i32, ptr %i, align 4, !dbg !5206
  %14 = load i32, ptr %n_pins, align 4, !dbg !5207
  %cmp = icmp slt i32 %13, %14, !dbg !5208
  br i1 %cmp, label %for.body, label %for.end, !dbg !5209

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %da) #16, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %da, metadata !5161, metadata !DIExpression()), !dbg !5211
  %15 = load ptr, ptr %ptp.addr, align 8, !dbg !5212
  %pin_dev_attr14 = getelementptr inbounds %struct.ptp_clock, ptr %15, i32 0, i32 12, !dbg !5213
  %16 = load ptr, ptr %pin_dev_attr14, align 8, !dbg !5213
  %17 = load i32, ptr %i, align 4, !dbg !5214
  %idxprom = sext i32 %17 to i64, !dbg !5212
  %arrayidx = getelementptr %struct.device_attribute, ptr %16, i64 %idxprom, !dbg !5212
  store ptr %arrayidx, ptr %da, align 8, !dbg !5211
  br label %do.body, !dbg !5215

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !5216

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5216

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %info, align 8, !dbg !5218
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %18, i32 0, i32 8, !dbg !5219
  %19 = load ptr, ptr %pin_config, align 8, !dbg !5219
  %20 = load i32, ptr %i, align 4, !dbg !5220
  %idxprom15 = sext i32 %20 to i64, !dbg !5218
  %arrayidx16 = getelementptr %struct.ptp_pin_desc, ptr %19, i64 %idxprom15, !dbg !5218
  %name = getelementptr inbounds %struct.ptp_pin_desc, ptr %arrayidx16, i32 0, i32 0, !dbg !5221
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !5218
  %21 = load ptr, ptr %da, align 8, !dbg !5222
  %attr = getelementptr inbounds %struct.device_attribute, ptr %21, i32 0, i32 0, !dbg !5223
  %name17 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !5224
  store ptr %arraydecay, ptr %name17, align 8, !dbg !5225
  %22 = load ptr, ptr %da, align 8, !dbg !5226
  %attr18 = getelementptr inbounds %struct.device_attribute, ptr %22, i32 0, i32 0, !dbg !5227
  %mode = getelementptr inbounds %struct.attribute, ptr %attr18, i32 0, i32 1, !dbg !5228
  store i16 420, ptr %mode, align 8, !dbg !5229
  %23 = load ptr, ptr %da, align 8, !dbg !5230
  %show = getelementptr inbounds %struct.device_attribute, ptr %23, i32 0, i32 1, !dbg !5231
  store ptr @ptp_pin_show, ptr %show, align 8, !dbg !5232
  %24 = load ptr, ptr %da, align 8, !dbg !5233
  %store = getelementptr inbounds %struct.device_attribute, ptr %24, i32 0, i32 2, !dbg !5234
  store ptr @ptp_pin_store, ptr %store, align 8, !dbg !5235
  %25 = load ptr, ptr %da, align 8, !dbg !5236
  %attr19 = getelementptr inbounds %struct.device_attribute, ptr %25, i32 0, i32 0, !dbg !5237
  %26 = load ptr, ptr %ptp.addr, align 8, !dbg !5238
  %pin_attr20 = getelementptr inbounds %struct.ptp_clock, ptr %26, i32 0, i32 13, !dbg !5239
  %27 = load ptr, ptr %pin_attr20, align 8, !dbg !5239
  %28 = load i32, ptr %i, align 4, !dbg !5240
  %idxprom21 = sext i32 %28 to i64, !dbg !5238
  %arrayidx22 = getelementptr ptr, ptr %27, i64 %idxprom21, !dbg !5238
  store ptr %attr19, ptr %arrayidx22, align 8, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %da) #16, !dbg !5242
  br label %for.inc, !dbg !5243

for.inc:                                          ; preds = %do.end
  %29 = load i32, ptr %i, align 4, !dbg !5244
  %inc = add i32 %29, 1, !dbg !5244
  store i32 %inc, ptr %i, align 4, !dbg !5244
  br label %for.cond, !dbg !5245, !llvm.loop !5246

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %ptp.addr, align 8, !dbg !5250
  %pin_attr_group = getelementptr inbounds %struct.ptp_clock, ptr %30, i32 0, i32 14, !dbg !5251
  %name23 = getelementptr inbounds %struct.attribute_group, ptr %pin_attr_group, i32 0, i32 0, !dbg !5252
  store ptr @.str, ptr %name23, align 8, !dbg !5253
  %31 = load ptr, ptr %ptp.addr, align 8, !dbg !5254
  %pin_attr24 = getelementptr inbounds %struct.ptp_clock, ptr %31, i32 0, i32 13, !dbg !5255
  %32 = load ptr, ptr %pin_attr24, align 8, !dbg !5255
  %33 = load ptr, ptr %ptp.addr, align 8, !dbg !5256
  %pin_attr_group25 = getelementptr inbounds %struct.ptp_clock, ptr %33, i32 0, i32 14, !dbg !5257
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %pin_attr_group25, i32 0, i32 3, !dbg !5258
  store ptr %32, ptr %attrs, align 8, !dbg !5259
  %34 = load ptr, ptr %ptp.addr, align 8, !dbg !5260
  %pin_attr_group26 = getelementptr inbounds %struct.ptp_clock, ptr %34, i32 0, i32 14, !dbg !5261
  %35 = load ptr, ptr %ptp.addr, align 8, !dbg !5262
  %pin_attr_groups = getelementptr inbounds %struct.ptp_clock, ptr %35, i32 0, i32 15, !dbg !5263
  %arrayidx27 = getelementptr [2 x ptr], ptr %pin_attr_groups, i64 0, i64 0, !dbg !5262
  store ptr %pin_attr_group26, ptr %arrayidx27, align 8, !dbg !5264
  store i32 0, ptr %retval, align 4, !dbg !5265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5265

no_pin_attr:                                      ; preds = %if.then11
  call void @llvm.dbg.label(metadata !5165), !dbg !5266
  %36 = load ptr, ptr %ptp.addr, align 8, !dbg !5267
  %pin_dev_attr28 = getelementptr inbounds %struct.ptp_clock, ptr %36, i32 0, i32 12, !dbg !5268
  %37 = load ptr, ptr %pin_dev_attr28, align 8, !dbg !5268
  call void @kfree(ptr noundef %37) #18, !dbg !5269
  br label %no_dev_attr, !dbg !5269

no_dev_attr:                                      ; preds = %no_pin_attr, %if.then5
  call void @llvm.dbg.label(metadata !5166), !dbg !5270
  %38 = load i32, ptr %err, align 4, !dbg !5271
  store i32 %38, ptr %retval, align 4, !dbg !5272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5272

cleanup:                                          ; preds = %no_dev_attr, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_pins) #16, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #16, !dbg !5273
  %39 = load i32, ptr %retval, align 4, !dbg !5273
  ret i32 %39, !dbg !5273
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5274 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5278, metadata !DIExpression()), !dbg !5281
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5279, metadata !DIExpression()), !dbg !5282
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5280, metadata !DIExpression()), !dbg !5283
  %0 = load i64, ptr %n.addr, align 8, !dbg !5284
  %1 = load i64, ptr %size.addr, align 8, !dbg !5285
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5286
  %or = or i32 %2, 256, !dbg !5287
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #17, !dbg !5288
  ret ptr %call, !dbg !5289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptp_pin_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !5290 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %func = alloca i32, align 4
  %chan = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5292, metadata !DIExpression()), !dbg !5299
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5293, metadata !DIExpression()), !dbg !5300
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5294, metadata !DIExpression()), !dbg !5301
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5295, metadata !DIExpression()), !dbg !5303
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5304
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5305
  store ptr %call, ptr %ptp, align 8, !dbg !5303
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #16, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %func, metadata !5296, metadata !DIExpression()), !dbg !5307
  call void @llvm.lifetime.start.p0(i64 4, ptr %chan) #16, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !5297, metadata !DIExpression()), !dbg !5308
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5298, metadata !DIExpression()), !dbg !5310
  %1 = load ptr, ptr %ptp, align 8, !dbg !5311
  %2 = load ptr, ptr %attr.addr, align 8, !dbg !5312
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %2, i32 0, i32 0, !dbg !5313
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !5314
  %3 = load ptr, ptr %name, align 8, !dbg !5314
  %call2 = call i32 @ptp_pin_name2index(ptr noundef %1, ptr noundef %3) #18, !dbg !5315
  store i32 %call2, ptr %index, align 4, !dbg !5316
  %4 = load i32, ptr %index, align 4, !dbg !5317
  %cmp = icmp slt i32 %4, 0, !dbg !5319
  br i1 %cmp, label %if.then, label %if.end, !dbg !5320

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !5321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5321

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ptp, align 8, !dbg !5322
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 9, !dbg !5324
  %call3 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux) #18, !dbg !5325
  %tobool = icmp ne i32 %call3, 0, !dbg !5325
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5326

if.then4:                                         ; preds = %if.end
  store i64 -512, ptr %retval, align 8, !dbg !5327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5327

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %ptp, align 8, !dbg !5328
  %info = getelementptr inbounds %struct.ptp_clock, ptr %6, i32 0, i32 2, !dbg !5329
  %7 = load ptr, ptr %info, align 8, !dbg !5329
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 8, !dbg !5330
  %8 = load ptr, ptr %pin_config, align 8, !dbg !5330
  %9 = load i32, ptr %index, align 4, !dbg !5331
  %idxprom = sext i32 %9 to i64, !dbg !5328
  %arrayidx = getelementptr %struct.ptp_pin_desc, ptr %8, i64 %idxprom, !dbg !5328
  %func6 = getelementptr inbounds %struct.ptp_pin_desc, ptr %arrayidx, i32 0, i32 2, !dbg !5332
  %10 = load i32, ptr %func6, align 4, !dbg !5332
  store i32 %10, ptr %func, align 4, !dbg !5333
  %11 = load ptr, ptr %ptp, align 8, !dbg !5334
  %info7 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 2, !dbg !5335
  %12 = load ptr, ptr %info7, align 8, !dbg !5335
  %pin_config8 = getelementptr inbounds %struct.ptp_clock_info, ptr %12, i32 0, i32 8, !dbg !5336
  %13 = load ptr, ptr %pin_config8, align 8, !dbg !5336
  %14 = load i32, ptr %index, align 4, !dbg !5337
  %idxprom9 = sext i32 %14 to i64, !dbg !5334
  %arrayidx10 = getelementptr %struct.ptp_pin_desc, ptr %13, i64 %idxprom9, !dbg !5334
  %chan11 = getelementptr inbounds %struct.ptp_pin_desc, ptr %arrayidx10, i32 0, i32 3, !dbg !5338
  %15 = load i32, ptr %chan11, align 4, !dbg !5338
  store i32 %15, ptr %chan, align 4, !dbg !5339
  %16 = load ptr, ptr %ptp, align 8, !dbg !5340
  %pincfg_mux12 = getelementptr inbounds %struct.ptp_clock, ptr %16, i32 0, i32 9, !dbg !5341
  call void @mutex_unlock(ptr noundef %pincfg_mux12) #18, !dbg !5342
  %17 = load ptr, ptr %page.addr, align 8, !dbg !5343
  %18 = load i32, ptr %func, align 4, !dbg !5344
  %19 = load i32, ptr %chan, align 4, !dbg !5345
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %17, ptr noundef @.str.28, i32 noundef %18, i32 noundef %19) #18, !dbg !5346
  %conv = sext i32 %call13 to i64, !dbg !5346
  store i64 %conv, ptr %retval, align 8, !dbg !5347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5347

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 4, ptr %chan) #16, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #16, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5348
  %20 = load i64, ptr %retval, align 8, !dbg !5348
  ret i64 %20, !dbg !5348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptp_pin_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5349 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %func = alloca i32, align 4
  %chan = alloca i32, align 4
  %cnt = alloca i32, align 4
  %err = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5351, metadata !DIExpression()), !dbg !5361
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5352, metadata !DIExpression()), !dbg !5362
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5353, metadata !DIExpression()), !dbg !5363
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5354, metadata !DIExpression()), !dbg !5364
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5365
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5355, metadata !DIExpression()), !dbg !5366
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5367
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5368
  store ptr %call, ptr %ptp, align 8, !dbg !5366
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #16, !dbg !5369
  call void @llvm.dbg.declare(metadata ptr %func, metadata !5356, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 4, ptr %chan) #16, !dbg !5369
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !5357, metadata !DIExpression()), !dbg !5371
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5358, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5359, metadata !DIExpression()), !dbg !5374
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5360, metadata !DIExpression()), !dbg !5375
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5376
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.29, ptr noundef %func, ptr noundef %chan) #18, !dbg !5377
  store i32 %call1, ptr %cnt, align 4, !dbg !5378
  %2 = load i32, ptr %cnt, align 4, !dbg !5379
  %cmp = icmp ne i32 %2, 2, !dbg !5381
  br i1 %cmp, label %if.then, label %if.end, !dbg !5382

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ptp, align 8, !dbg !5384
  %4 = load ptr, ptr %attr.addr, align 8, !dbg !5385
  %attr2 = getelementptr inbounds %struct.device_attribute, ptr %4, i32 0, i32 0, !dbg !5386
  %name = getelementptr inbounds %struct.attribute, ptr %attr2, i32 0, i32 0, !dbg !5387
  %5 = load ptr, ptr %name, align 8, !dbg !5387
  %call3 = call i32 @ptp_pin_name2index(ptr noundef %3, ptr noundef %5) #18, !dbg !5388
  store i32 %call3, ptr %index, align 4, !dbg !5389
  %6 = load i32, ptr %index, align 4, !dbg !5390
  %cmp4 = icmp slt i32 %6, 0, !dbg !5392
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5393

if.then5:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !5394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5394

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %ptp, align 8, !dbg !5395
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 9, !dbg !5397
  %call7 = call i32 @mutex_lock_interruptible(ptr noundef %pincfg_mux) #18, !dbg !5398
  %tobool = icmp ne i32 %call7, 0, !dbg !5398
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !5399

if.then8:                                         ; preds = %if.end6
  store i64 -512, ptr %retval, align 8, !dbg !5400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

if.end9:                                          ; preds = %if.end6
  %8 = load ptr, ptr %ptp, align 8, !dbg !5401
  %9 = load i32, ptr %index, align 4, !dbg !5402
  %10 = load i32, ptr %func, align 4, !dbg !5403
  %11 = load i32, ptr %chan, align 4, !dbg !5404
  %call10 = call i32 @ptp_set_pinfunc(ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #18, !dbg !5405
  store i32 %call10, ptr %err, align 4, !dbg !5406
  %12 = load ptr, ptr %ptp, align 8, !dbg !5407
  %pincfg_mux11 = getelementptr inbounds %struct.ptp_clock, ptr %12, i32 0, i32 9, !dbg !5408
  call void @mutex_unlock(ptr noundef %pincfg_mux11) #18, !dbg !5409
  %13 = load i32, ptr %err, align 4, !dbg !5410
  %tobool12 = icmp ne i32 %13, 0, !dbg !5410
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5412

if.then13:                                        ; preds = %if.end9
  %14 = load i32, ptr %err, align 4, !dbg !5413
  %conv = sext i32 %14 to i64, !dbg !5413
  store i64 %conv, ptr %retval, align 8, !dbg !5414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5414

if.end14:                                         ; preds = %if.end9
  %15 = load i64, ptr %count.addr, align 8, !dbg !5415
  store i64 %15, ptr %retval, align 8, !dbg !5416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5416

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5417
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5417
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !5417
  call void @llvm.lifetime.end.p0(i64 4, ptr %chan) #16, !dbg !5417
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #16, !dbg !5417
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5417
  %16 = load i64, ptr %retval, align 8, !dbg !5417
  ret i64 %16, !dbg !5417
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5418 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ptp_cleanup_pin_groups(ptr noundef %ptp) #0 align 16 !dbg !5421 {
entry:
  %ptp.addr = alloca ptr, align 8
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5427
  %pin_attr = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 13, !dbg !5428
  %1 = load ptr, ptr %pin_attr, align 8, !dbg !5428
  call void @kfree(ptr noundef %1) #18, !dbg !5429
  %2 = load ptr, ptr %ptp.addr, align 8, !dbg !5430
  %pin_dev_attr = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 12, !dbg !5431
  %3 = load ptr, ptr %pin_dev_attr, align 8, !dbg !5431
  call void @kfree(ptr noundef %3) #18, !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @ptp_is_attribute_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %n) #0 align 16 !dbg !5434 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %info = alloca ptr, align 8
  %mode = alloca i16, align 2
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5436, metadata !DIExpression()), !dbg !5445
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5437, metadata !DIExpression()), !dbg !5446
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5438, metadata !DIExpression()), !dbg !5447
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5448
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5439, metadata !DIExpression()), !dbg !5449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5450
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5440, metadata !DIExpression()), !dbg !5450
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5450
  store ptr %0, ptr %__mptr, align 8, !dbg !5450
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5450
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5450
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5451
  %2 = load ptr, ptr %tmp, align 8, !dbg !5450
  store ptr %2, ptr %dev, align 8, !dbg !5449
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5452
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5442, metadata !DIExpression()), !dbg !5453
  %3 = load ptr, ptr %dev, align 8, !dbg !5454
  %call = call ptr @dev_get_drvdata(ptr noundef %3) #18, !dbg !5455
  store ptr %call, ptr %ptp, align 8, !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #16, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5443, metadata !DIExpression()), !dbg !5457
  %4 = load ptr, ptr %ptp, align 8, !dbg !5458
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 2, !dbg !5459
  %5 = load ptr, ptr %info1, align 8, !dbg !5459
  store ptr %5, ptr %info, align 8, !dbg !5457
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #16, !dbg !5460
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !5444, metadata !DIExpression()), !dbg !5461
  %6 = load ptr, ptr %attr.addr, align 8, !dbg !5462
  %mode2 = getelementptr inbounds %struct.attribute, ptr %6, i32 0, i32 1, !dbg !5463
  %7 = load i16, ptr %mode2, align 8, !dbg !5463
  store i16 %7, ptr %mode, align 2, !dbg !5461
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !5464
  %cmp = icmp eq ptr %8, @dev_attr_extts_enable, !dbg !5466
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5467

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %attr.addr, align 8, !dbg !5468
  %cmp3 = icmp eq ptr %9, @dev_attr_fifo, !dbg !5469
  br i1 %cmp3, label %if.then, label %if.else, !dbg !5470

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load ptr, ptr %info, align 8, !dbg !5471
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %10, i32 0, i32 4, !dbg !5474
  %11 = load i32, ptr %n_ext_ts, align 8, !dbg !5474
  %tobool = icmp ne i32 %11, 0, !dbg !5471
  br i1 %tobool, label %if.end, label %if.then4, !dbg !5475

if.then4:                                         ; preds = %if.then
  store i16 0, ptr %mode, align 2, !dbg !5476
  br label %if.end, !dbg !5477

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end36, !dbg !5478

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %attr.addr, align 8, !dbg !5479
  %cmp5 = icmp eq ptr %12, @dev_attr_period, !dbg !5481
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !5482

if.then6:                                         ; preds = %if.else
  %13 = load ptr, ptr %info, align 8, !dbg !5483
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %13, i32 0, i32 5, !dbg !5486
  %14 = load i32, ptr %n_per_out, align 4, !dbg !5486
  %tobool7 = icmp ne i32 %14, 0, !dbg !5483
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5487

if.then8:                                         ; preds = %if.then6
  store i16 0, ptr %mode, align 2, !dbg !5488
  br label %if.end9, !dbg !5489

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end35, !dbg !5490

if.else10:                                        ; preds = %if.else
  %15 = load ptr, ptr %attr.addr, align 8, !dbg !5491
  %cmp11 = icmp eq ptr %15, @dev_attr_pps_enable, !dbg !5493
  br i1 %cmp11, label %if.then12, label %if.else16, !dbg !5494

if.then12:                                        ; preds = %if.else10
  %16 = load ptr, ptr %info, align 8, !dbg !5495
  %pps = getelementptr inbounds %struct.ptp_clock_info, ptr %16, i32 0, i32 7, !dbg !5498
  %17 = load i32, ptr %pps, align 4, !dbg !5498
  %tobool13 = icmp ne i32 %17, 0, !dbg !5495
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5499

if.then14:                                        ; preds = %if.then12
  store i16 0, ptr %mode, align 2, !dbg !5500
  br label %if.end15, !dbg !5501

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %if.end34, !dbg !5502

if.else16:                                        ; preds = %if.else10
  %18 = load ptr, ptr %attr.addr, align 8, !dbg !5503
  %cmp17 = icmp eq ptr %18, @dev_attr_n_vclocks, !dbg !5505
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !5506

lor.lhs.false18:                                  ; preds = %if.else16
  %19 = load ptr, ptr %attr.addr, align 8, !dbg !5507
  %cmp19 = icmp eq ptr %19, @dev_attr_max_vclocks, !dbg !5508
  br i1 %cmp19, label %if.then20, label %if.else24, !dbg !5509

if.then20:                                        ; preds = %lor.lhs.false18, %if.else16
  %20 = load ptr, ptr %ptp, align 8, !dbg !5510
  %is_virtual_clock = getelementptr inbounds %struct.ptp_clock, ptr %20, i32 0, i32 22, !dbg !5513
  %21 = load i8, ptr %is_virtual_clock, align 8, !dbg !5513, !range !5514, !noundef !933
  %tobool21 = trunc i8 %21 to i1, !dbg !5513
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5515

if.then22:                                        ; preds = %if.then20
  store i16 0, ptr %mode, align 2, !dbg !5516
  br label %if.end23, !dbg !5517

if.end23:                                         ; preds = %if.then22, %if.then20
  br label %if.end33, !dbg !5518

if.else24:                                        ; preds = %lor.lhs.false18
  %22 = load ptr, ptr %attr.addr, align 8, !dbg !5519
  %cmp25 = icmp eq ptr %22, @dev_attr_max_phase_adjustment, !dbg !5521
  br i1 %cmp25, label %if.then26, label %if.end32, !dbg !5522

if.then26:                                        ; preds = %if.else24
  %23 = load ptr, ptr %info, align 8, !dbg !5523
  %adjphase = getelementptr inbounds %struct.ptp_clock_info, ptr %23, i32 0, i32 10, !dbg !5526
  %24 = load ptr, ptr %adjphase, align 8, !dbg !5526
  %tobool27 = icmp ne ptr %24, null, !dbg !5523
  br i1 %tobool27, label %lor.lhs.false28, label %if.then30, !dbg !5527

lor.lhs.false28:                                  ; preds = %if.then26
  %25 = load ptr, ptr %info, align 8, !dbg !5528
  %getmaxphase = getelementptr inbounds %struct.ptp_clock_info, ptr %25, i32 0, i32 11, !dbg !5529
  %26 = load ptr, ptr %getmaxphase, align 8, !dbg !5529
  %tobool29 = icmp ne ptr %26, null, !dbg !5528
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5530

if.then30:                                        ; preds = %lor.lhs.false28, %if.then26
  store i16 0, ptr %mode, align 2, !dbg !5531
  br label %if.end31, !dbg !5532

if.end31:                                         ; preds = %if.then30, %lor.lhs.false28
  br label %if.end32, !dbg !5533

if.end32:                                         ; preds = %if.end31, %if.else24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end23
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end15
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end9
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end
  %27 = load i16, ptr %mode, align 2, !dbg !5534
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #16, !dbg !5535
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #16, !dbg !5535
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5535
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5535
  ret i16 %27, !dbg !5536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !5537 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5543
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !5544
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5544
  ret ptr %1, !dbg !5545
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @extts_enable_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5546 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %req = alloca %struct.ptp_clock_request, align 8
  %cnt = alloca i32, align 4
  %enable = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5548, metadata !DIExpression()), !dbg !5559
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5549, metadata !DIExpression()), !dbg !5560
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5550, metadata !DIExpression()), !dbg !5561
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5551, metadata !DIExpression()), !dbg !5562
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5552, metadata !DIExpression()), !dbg !5564
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5565
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5566
  store ptr %call, ptr %ptp, align 8, !dbg !5564
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5553, metadata !DIExpression()), !dbg !5568
  %1 = load ptr, ptr %ptp, align 8, !dbg !5569
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2, !dbg !5570
  %2 = load ptr, ptr %info, align 8, !dbg !5570
  store ptr %2, ptr %ops, align 8, !dbg !5568
  call void @llvm.lifetime.start.p0(i64 64, ptr %req) #16, !dbg !5571
  call void @llvm.dbg.declare(metadata ptr %req, metadata !5554, metadata !DIExpression()), !dbg !5572
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 64, i1 false), !dbg !5572
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5573
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5555, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 4, ptr %enable) #16, !dbg !5573
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !5556, metadata !DIExpression()), !dbg !5575
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5576
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5557, metadata !DIExpression()), !dbg !5577
  store i32 -22, ptr %err, align 4, !dbg !5577
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5578
  %4 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5579
  %index = getelementptr inbounds %struct.ptp_extts_request, ptr %4, i32 0, i32 0, !dbg !5580
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.2, ptr noundef %index, ptr noundef %enable) #18, !dbg !5581
  store i32 %call1, ptr %cnt, align 4, !dbg !5582
  %5 = load i32, ptr %cnt, align 4, !dbg !5583
  %cmp = icmp ne i32 %5, 2, !dbg !5585
  br i1 %cmp, label %if.then, label %if.end, !dbg !5586

if.then:                                          ; preds = %entry
  br label %out, !dbg !5587

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5588
  %index2 = getelementptr inbounds %struct.ptp_extts_request, ptr %6, i32 0, i32 0, !dbg !5590
  %7 = load i32, ptr %index2, align 8, !dbg !5590
  %8 = load ptr, ptr %ops, align 8, !dbg !5591
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 4, !dbg !5592
  %9 = load i32, ptr %n_ext_ts, align 8, !dbg !5592
  %cmp3 = icmp uge i32 %7, %9, !dbg !5593
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5594

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !5595

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %ops, align 8, !dbg !5596
  %enable6 = getelementptr inbounds %struct.ptp_clock_info, ptr %10, i32 0, i32 20, !dbg !5597
  %11 = load ptr, ptr %enable6, align 8, !dbg !5597
  %12 = load ptr, ptr %ops, align 8, !dbg !5598
  %13 = load i32, ptr %enable, align 4, !dbg !5599
  %tobool = icmp ne i32 %13, 0, !dbg !5599
  %14 = zext i1 %tobool to i64, !dbg !5599
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5599
  %call7 = call i32 %11(ptr noundef %12, ptr noundef %req, i32 noundef %cond) #18, !dbg !5596
  store i32 %call7, ptr %err, align 4, !dbg !5600
  %15 = load i32, ptr %err, align 4, !dbg !5601
  %tobool8 = icmp ne i32 %15, 0, !dbg !5601
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5603

if.then9:                                         ; preds = %if.end5
  br label %out, !dbg !5604

if.end10:                                         ; preds = %if.end5
  %16 = load i64, ptr %count.addr, align 8, !dbg !5605
  store i64 %16, ptr %retval, align 8, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5606

out:                                              ; preds = %if.then9, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !5558), !dbg !5607
  %17 = load i32, ptr %err, align 4, !dbg !5608
  %conv = sext i32 %17 to i64, !dbg !5608
  store i64 %conv, ptr %retval, align 8, !dbg !5609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5609

cleanup:                                          ; preds = %out, %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 4, ptr %enable) #16, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 64, ptr %req) #16, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5610
  %18 = load i64, ptr %retval, align 8, !dbg !5610
  ret i64 %18, !dbg !5610
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5611 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @extts_fifo_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !5615 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %queue = alloca ptr, align 8
  %event = alloca %struct.ptp_extts_event, align 8
  %flags = alloca i64, align 8
  %qcnt = alloca i64, align 8
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5617, metadata !DIExpression()), !dbg !5633
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5618, metadata !DIExpression()), !dbg !5634
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5619, metadata !DIExpression()), !dbg !5635
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5620, metadata !DIExpression()), !dbg !5637
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5638
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5639
  store ptr %call, ptr %ptp, align 8, !dbg !5637
  call void @llvm.lifetime.start.p0(i64 8, ptr %queue) #16, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %queue, metadata !5621, metadata !DIExpression()), !dbg !5641
  %1 = load ptr, ptr %ptp, align 8, !dbg !5642
  %tsevq = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 7, !dbg !5643
  store ptr %tsevq, ptr %queue, align 8, !dbg !5641
  call void @llvm.lifetime.start.p0(i64 32, ptr %event) #16, !dbg !5644
  call void @llvm.dbg.declare(metadata ptr %event, metadata !5623, metadata !DIExpression()), !dbg !5645
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5646
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5624, metadata !DIExpression()), !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %qcnt) #16, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %qcnt, metadata !5625, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5626, metadata !DIExpression()), !dbg !5651
  store i32 0, ptr %cnt, align 4, !dbg !5651
  call void @llvm.memset.p0.i64(ptr align 8 %event, i8 0, i64 32, i1 false), !dbg !5652
  %2 = load ptr, ptr %ptp, align 8, !dbg !5653
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 8, !dbg !5655
  %call1 = call i32 @mutex_lock_interruptible(ptr noundef %tsevq_mux) #18, !dbg !5656
  %tobool = icmp ne i32 %call1, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end, !dbg !5657

if.then:                                          ; preds = %entry
  store i64 -512, ptr %retval, align 8, !dbg !5658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5658

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5659

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5660

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5661
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5627, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5661
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5631, metadata !DIExpression()), !dbg !5661
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5661
  %conv = zext i1 %cmp to i32, !dbg !5661
  store i32 1, ptr %tmp, align 4, !dbg !5661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5662
  %3 = load i32, ptr %tmp, align 4, !dbg !5661
  %4 = load ptr, ptr %queue, align 8, !dbg !5662
  %lock = getelementptr inbounds %struct.timestamp_event_queue, ptr %4, i32 0, i32 3, !dbg !5662
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5662
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #18, !dbg !5662
  store i64 %call4, ptr %flags, align 8, !dbg !5662
  br label %do.cond, !dbg !5662

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5662

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5660

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5660

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %queue, align 8, !dbg !5663
  %call7 = call i32 @queue_cnt(ptr noundef %5) #18, !dbg !5664
  %conv8 = sext i32 %call7 to i64, !dbg !5664
  store i64 %conv8, ptr %qcnt, align 8, !dbg !5665
  %6 = load i64, ptr %qcnt, align 8, !dbg !5666
  %tobool9 = icmp ne i64 %6, 0, !dbg !5666
  br i1 %tobool9, label %if.then10, label %if.end22, !dbg !5668

if.then10:                                        ; preds = %do.end6
  %7 = load ptr, ptr %queue, align 8, !dbg !5669
  %buf = getelementptr inbounds %struct.timestamp_event_queue, ptr %7, i32 0, i32 0, !dbg !5671
  %8 = load ptr, ptr %queue, align 8, !dbg !5672
  %head = getelementptr inbounds %struct.timestamp_event_queue, ptr %8, i32 0, i32 1, !dbg !5673
  %9 = load i32, ptr %head, align 8, !dbg !5673
  %idxprom = sext i32 %9 to i64, !dbg !5669
  %arrayidx = getelementptr [128 x %struct.ptp_extts_event], ptr %buf, i64 0, i64 %idxprom, !dbg !5669
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %event, ptr align 8 %arrayidx, i64 32, i1 false), !dbg !5669
  br label %do.body11, !dbg !5674

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !5675

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !5677

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5677

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5675

do.body15:                                        ; preds = %do.end14
  %10 = load ptr, ptr %queue, align 8, !dbg !5679
  %head16 = getelementptr inbounds %struct.timestamp_event_queue, ptr %10, i32 0, i32 1, !dbg !5679
  %11 = load i32, ptr %head16, align 8, !dbg !5679
  %add = add i32 %11, 1, !dbg !5679
  %rem = srem i32 %add, 128, !dbg !5679
  %12 = load ptr, ptr %queue, align 8, !dbg !5679
  %head17 = getelementptr inbounds %struct.timestamp_event_queue, ptr %12, i32 0, i32 1, !dbg !5679
  store volatile i32 %rem, ptr %head17, align 8, !dbg !5679
  br label %do.cond18, !dbg !5679

do.cond18:                                        ; preds = %do.body15
  br label %do.end19, !dbg !5679

do.end19:                                         ; preds = %do.cond18
  br label %do.cond20, !dbg !5675

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5675

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5681

if.end22:                                         ; preds = %do.end21, %do.end6
  %13 = load ptr, ptr %queue, align 8, !dbg !5682
  %lock23 = getelementptr inbounds %struct.timestamp_event_queue, ptr %13, i32 0, i32 3, !dbg !5683
  %14 = load i64, ptr %flags, align 8, !dbg !5684
  call void @spin_unlock_irqrestore(ptr noundef %lock23, i64 noundef %14) #18, !dbg !5685
  %15 = load i64, ptr %qcnt, align 8, !dbg !5686
  %tobool24 = icmp ne i64 %15, 0, !dbg !5686
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5688

if.then25:                                        ; preds = %if.end22
  br label %out, !dbg !5689

if.end26:                                         ; preds = %if.end22
  %16 = load ptr, ptr %page.addr, align 8, !dbg !5690
  %index = getelementptr inbounds %struct.ptp_extts_event, ptr %event, i32 0, i32 1, !dbg !5691
  %17 = load i32, ptr %index, align 8, !dbg !5691
  %t = getelementptr inbounds %struct.ptp_extts_event, ptr %event, i32 0, i32 0, !dbg !5692
  %sec = getelementptr inbounds %struct.ptp_clock_time, ptr %t, i32 0, i32 0, !dbg !5693
  %18 = load i64, ptr %sec, align 8, !dbg !5693
  %t27 = getelementptr inbounds %struct.ptp_extts_event, ptr %event, i32 0, i32 0, !dbg !5694
  %nsec = getelementptr inbounds %struct.ptp_clock_time, ptr %t27, i32 0, i32 1, !dbg !5695
  %19 = load i32, ptr %nsec, align 8, !dbg !5695
  %call28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %16, i64 noundef 4096, ptr noundef @.str.4, i32 noundef %17, i64 noundef %18, i32 noundef %19) #18, !dbg !5696
  store i32 %call28, ptr %cnt, align 4, !dbg !5697
  br label %out, !dbg !5698

out:                                              ; preds = %if.end26, %if.then25
  call void @llvm.dbg.label(metadata !5632), !dbg !5699
  %20 = load ptr, ptr %ptp, align 8, !dbg !5700
  %tsevq_mux29 = getelementptr inbounds %struct.ptp_clock, ptr %20, i32 0, i32 8, !dbg !5701
  call void @mutex_unlock(ptr noundef %tsevq_mux29) #18, !dbg !5702
  %21 = load i32, ptr %cnt, align 4, !dbg !5703
  %conv30 = sext i32 %21 to i64, !dbg !5703
  store i64 %conv30, ptr %retval, align 8, !dbg !5704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5704

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %qcnt) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 32, ptr %event) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %queue) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5705
  %22 = load i64, ptr %retval, align 8, !dbg !5705
  ret i64 %22, !dbg !5705
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5706 dso_local i32 @mutex_lock_interruptible(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5710 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !5715 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5722
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5723
  ret ptr %1, !dbg !5724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_cnt(ptr noundef %q) #5 align 16 !dbg !5725 {
entry:
  %q.addr = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5731, metadata !DIExpression()), !dbg !5733
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5732, metadata !DIExpression()), !dbg !5735
  br label %do.body, !dbg !5736

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5738

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5738

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5736
  %tail = getelementptr inbounds %struct.timestamp_event_queue, ptr %0, i32 0, i32 2, !dbg !5736
  %1 = load volatile i32, ptr %tail, align 4, !dbg !5736
  store i32 %1, ptr %tmp, align 4, !dbg !5738
  %2 = load i32, ptr %tmp, align 4, !dbg !5736
  br label %do.body1, !dbg !5740

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5742

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5742

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5740
  %head = getelementptr inbounds %struct.timestamp_event_queue, ptr %3, i32 0, i32 1, !dbg !5740
  %4 = load volatile i32, ptr %head, align 8, !dbg !5740
  store i32 %4, ptr %tmp4, align 4, !dbg !5742
  %5 = load i32, ptr %tmp4, align 4, !dbg !5740
  %sub = sub i32 %2, %5, !dbg !5744
  store i32 %sub, ptr %cnt, align 4, !dbg !5735
  %6 = load i32, ptr %cnt, align 4, !dbg !5745
  %cmp = icmp slt i32 %6, 0, !dbg !5746
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5745

cond.true:                                        ; preds = %do.end3
  %7 = load i32, ptr %cnt, align 4, !dbg !5747
  %add = add i32 128, %7, !dbg !5748
  br label %cond.end, !dbg !5745

cond.false:                                       ; preds = %do.end3
  %8 = load i32, ptr %cnt, align 4, !dbg !5749
  br label %cond.end, !dbg !5745

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %8, %cond.false ], !dbg !5745
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !5750
  ret i32 %cond, !dbg !5751
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #7 align 16 !dbg !5752 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5756, metadata !DIExpression()), !dbg !5762
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5757, metadata !DIExpression()), !dbg !5763
  br label %do.body, !dbg !5764

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5758, metadata !DIExpression()), !dbg !5765
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5761, metadata !DIExpression()), !dbg !5765
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5765
  %conv = zext i1 %cmp to i32, !dbg !5765
  store i32 1, ptr %tmp, align 4, !dbg !5765
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5766
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5766
  %0 = load i32, ptr %tmp, align 4, !dbg !5765
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5766
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5766
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5766
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !5766
  br label %do.end, !dbg !5766

do.end:                                           ; preds = %do.body
  ret void, !dbg !5767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5768 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5771 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @period_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5777 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %req = alloca %struct.ptp_clock_request, align 8
  %cnt = alloca i32, align 4
  %enable = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5779, metadata !DIExpression()), !dbg !5790
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5780, metadata !DIExpression()), !dbg !5791
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5781, metadata !DIExpression()), !dbg !5792
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5782, metadata !DIExpression()), !dbg !5793
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5783, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5796
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5797
  store ptr %call, ptr %ptp, align 8, !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5784, metadata !DIExpression()), !dbg !5799
  %1 = load ptr, ptr %ptp, align 8, !dbg !5800
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2, !dbg !5801
  %2 = load ptr, ptr %info, align 8, !dbg !5801
  store ptr %2, ptr %ops, align 8, !dbg !5799
  call void @llvm.lifetime.start.p0(i64 64, ptr %req) #16, !dbg !5802
  call void @llvm.dbg.declare(metadata ptr %req, metadata !5785, metadata !DIExpression()), !dbg !5803
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 64, i1 false), !dbg !5803
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 0, !dbg !5803
  store i32 1, ptr %3, align 8, !dbg !5803
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5786, metadata !DIExpression()), !dbg !5805
  call void @llvm.lifetime.start.p0(i64 4, ptr %enable) #16, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !5787, metadata !DIExpression()), !dbg !5806
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5788, metadata !DIExpression()), !dbg !5807
  store i32 -22, ptr %err, align 4, !dbg !5807
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5808
  %5 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5809
  %index = getelementptr inbounds %struct.ptp_perout_request, ptr %5, i32 0, i32 2, !dbg !5810
  %6 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5811
  %7 = getelementptr inbounds %struct.ptp_perout_request, ptr %6, i32 0, i32 0, !dbg !5812
  %sec = getelementptr inbounds %struct.ptp_clock_time, ptr %7, i32 0, i32 0, !dbg !5813
  %8 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5814
  %9 = getelementptr inbounds %struct.ptp_perout_request, ptr %8, i32 0, i32 0, !dbg !5815
  %nsec = getelementptr inbounds %struct.ptp_clock_time, ptr %9, i32 0, i32 1, !dbg !5816
  %10 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5817
  %period = getelementptr inbounds %struct.ptp_perout_request, ptr %10, i32 0, i32 1, !dbg !5818
  %sec1 = getelementptr inbounds %struct.ptp_clock_time, ptr %period, i32 0, i32 0, !dbg !5819
  %11 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5820
  %period2 = getelementptr inbounds %struct.ptp_perout_request, ptr %11, i32 0, i32 1, !dbg !5821
  %nsec3 = getelementptr inbounds %struct.ptp_clock_time, ptr %period2, i32 0, i32 1, !dbg !5822
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.6, ptr noundef %index, ptr noundef %sec, ptr noundef %nsec, ptr noundef %sec1, ptr noundef %nsec3) #18, !dbg !5823
  store i32 %call4, ptr %cnt, align 4, !dbg !5824
  %12 = load i32, ptr %cnt, align 4, !dbg !5825
  %cmp = icmp ne i32 %12, 5, !dbg !5827
  br i1 %cmp, label %if.then, label %if.end, !dbg !5828

if.then:                                          ; preds = %entry
  br label %out, !dbg !5829

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5830
  %index5 = getelementptr inbounds %struct.ptp_perout_request, ptr %13, i32 0, i32 2, !dbg !5832
  %14 = load i32, ptr %index5, align 8, !dbg !5832
  %15 = load ptr, ptr %ops, align 8, !dbg !5833
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %15, i32 0, i32 5, !dbg !5834
  %16 = load i32, ptr %n_per_out, align 4, !dbg !5834
  %cmp6 = icmp uge i32 %14, %16, !dbg !5835
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5836

if.then7:                                         ; preds = %if.end
  br label %out, !dbg !5837

if.end8:                                          ; preds = %if.end
  %17 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5838
  %period9 = getelementptr inbounds %struct.ptp_perout_request, ptr %17, i32 0, i32 1, !dbg !5839
  %sec10 = getelementptr inbounds %struct.ptp_clock_time, ptr %period9, i32 0, i32 0, !dbg !5840
  %18 = load i64, ptr %sec10, align 8, !dbg !5840
  %tobool = icmp ne i64 %18, 0, !dbg !5841
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5842

lor.rhs:                                          ; preds = %if.end8
  %19 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, !dbg !5843
  %period11 = getelementptr inbounds %struct.ptp_perout_request, ptr %19, i32 0, i32 1, !dbg !5844
  %nsec12 = getelementptr inbounds %struct.ptp_clock_time, ptr %period11, i32 0, i32 1, !dbg !5845
  %20 = load i32, ptr %nsec12, align 8, !dbg !5845
  %tobool13 = icmp ne i32 %20, 0, !dbg !5842
  br label %lor.end, !dbg !5842

lor.end:                                          ; preds = %lor.rhs, %if.end8
  %21 = phi i1 [ true, %if.end8 ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32, !dbg !5842
  store i32 %lor.ext, ptr %enable, align 4, !dbg !5846
  %22 = load ptr, ptr %ops, align 8, !dbg !5847
  %enable14 = getelementptr inbounds %struct.ptp_clock_info, ptr %22, i32 0, i32 20, !dbg !5848
  %23 = load ptr, ptr %enable14, align 8, !dbg !5848
  %24 = load ptr, ptr %ops, align 8, !dbg !5849
  %25 = load i32, ptr %enable, align 4, !dbg !5850
  %call15 = call i32 %23(ptr noundef %24, ptr noundef %req, i32 noundef %25) #18, !dbg !5847
  store i32 %call15, ptr %err, align 4, !dbg !5851
  %26 = load i32, ptr %err, align 4, !dbg !5852
  %tobool16 = icmp ne i32 %26, 0, !dbg !5852
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5854

if.then17:                                        ; preds = %lor.end
  br label %out, !dbg !5855

if.end18:                                         ; preds = %lor.end
  %27 = load i64, ptr %count.addr, align 8, !dbg !5856
  store i64 %27, ptr %retval, align 8, !dbg !5857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5857

out:                                              ; preds = %if.then17, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !5789), !dbg !5858
  %28 = load i32, ptr %err, align 4, !dbg !5859
  %conv = sext i32 %28 to i64, !dbg !5859
  store i64 %conv, ptr %retval, align 8, !dbg !5860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5860

cleanup:                                          ; preds = %out, %if.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5861
  call void @llvm.lifetime.end.p0(i64 4, ptr %enable) #16, !dbg !5861
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !5861
  call void @llvm.lifetime.end.p0(i64 64, ptr %req) #16, !dbg !5861
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5861
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5861
  %29 = load i64, ptr %retval, align 8, !dbg !5861
  ret i64 %29, !dbg !5861
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pps_enable_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5862 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %req = alloca %struct.ptp_clock_request, align 8
  %cnt = alloca i32, align 4
  %enable = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5864, metadata !DIExpression()), !dbg !5875
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5865, metadata !DIExpression()), !dbg !5876
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5866, metadata !DIExpression()), !dbg !5877
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5867, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5868, metadata !DIExpression()), !dbg !5880
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5881
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5882
  store ptr %call, ptr %ptp, align 8, !dbg !5880
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5869, metadata !DIExpression()), !dbg !5884
  %1 = load ptr, ptr %ptp, align 8, !dbg !5885
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2, !dbg !5886
  %2 = load ptr, ptr %info, align 8, !dbg !5886
  store ptr %2, ptr %ops, align 8, !dbg !5884
  call void @llvm.lifetime.start.p0(i64 64, ptr %req) #16, !dbg !5887
  call void @llvm.dbg.declare(metadata ptr %req, metadata !5870, metadata !DIExpression()), !dbg !5888
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 64, i1 false), !dbg !5888
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 0, !dbg !5888
  store i32 2, ptr %3, align 8, !dbg !5888
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #16, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5871, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 4, ptr %enable) #16, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !5872, metadata !DIExpression()), !dbg !5891
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5873, metadata !DIExpression()), !dbg !5893
  store i32 -22, ptr %err, align 4, !dbg !5893
  %call1 = call zeroext i1 @capable(i32 noundef 25) #18, !dbg !5894
  br i1 %call1, label %if.end, label %if.then, !dbg !5896

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5897

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5898
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.8, ptr noundef %enable) #18, !dbg !5899
  store i32 %call2, ptr %cnt, align 4, !dbg !5900
  %5 = load i32, ptr %cnt, align 4, !dbg !5901
  %cmp = icmp ne i32 %5, 1, !dbg !5903
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5904

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !5905

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %ops, align 8, !dbg !5906
  %enable5 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 20, !dbg !5907
  %7 = load ptr, ptr %enable5, align 8, !dbg !5907
  %8 = load ptr, ptr %ops, align 8, !dbg !5908
  %9 = load i32, ptr %enable, align 4, !dbg !5909
  %tobool = icmp ne i32 %9, 0, !dbg !5909
  %10 = zext i1 %tobool to i64, !dbg !5909
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5909
  %call6 = call i32 %7(ptr noundef %8, ptr noundef %req, i32 noundef %cond) #18, !dbg !5906
  store i32 %call6, ptr %err, align 4, !dbg !5910
  %11 = load i32, ptr %err, align 4, !dbg !5911
  %tobool7 = icmp ne i32 %11, 0, !dbg !5911
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5913

if.then8:                                         ; preds = %if.end4
  br label %out, !dbg !5914

if.end9:                                          ; preds = %if.end4
  %12 = load i64, ptr %count.addr, align 8, !dbg !5915
  store i64 %12, ptr %retval, align 8, !dbg !5916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5916

out:                                              ; preds = %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !5874), !dbg !5917
  %13 = load i32, ptr %err, align 4, !dbg !5918
  %conv = sext i32 %13 to i64, !dbg !5918
  store i64 %conv, ptr %retval, align 8, !dbg !5919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5919

cleanup:                                          ; preds = %out, %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 4, ptr %enable) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 64, ptr %req) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5920
  %14 = load i64, ptr %retval, align 8, !dbg !5920
  ret i64 %14, !dbg !5920
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5921 dso_local zeroext i1 @capable(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @n_vclocks_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !5924 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5926, metadata !DIExpression()), !dbg !5931
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5927, metadata !DIExpression()), !dbg !5932
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5928, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5929, metadata !DIExpression()), !dbg !5935
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5936
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5937
  store ptr %call, ptr %ptp, align 8, !dbg !5935
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !5938
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5930, metadata !DIExpression()), !dbg !5939
  %1 = load ptr, ptr %ptp, align 8, !dbg !5940
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 21, !dbg !5942
  %call1 = call i32 @mutex_lock_interruptible(ptr noundef %n_vclocks_mux) #18, !dbg !5943
  %tobool = icmp ne i32 %call1, 0, !dbg !5943
  br i1 %tobool, label %if.then, label %if.end, !dbg !5944

if.then:                                          ; preds = %entry
  store i64 -512, ptr %retval, align 8, !dbg !5945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5945

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5946
  %3 = load ptr, ptr %ptp, align 8, !dbg !5947
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 19, !dbg !5948
  %4 = load i32, ptr %n_vclocks, align 4, !dbg !5948
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef 4095, ptr noundef @.str.10, i32 noundef %4) #18, !dbg !5949
  %conv = sext i32 %call2 to i64, !dbg !5949
  store i64 %conv, ptr %size, align 8, !dbg !5950
  %5 = load ptr, ptr %ptp, align 8, !dbg !5951
  %n_vclocks_mux3 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 21, !dbg !5952
  call void @mutex_unlock(ptr noundef %n_vclocks_mux3) #18, !dbg !5953
  %6 = load i64, ptr %size, align 8, !dbg !5954
  store i64 %6, ptr %retval, align 8, !dbg !5955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5955

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !5956
  %7 = load i64, ptr %retval, align 8, !dbg !5956
  ret i64 %7, !dbg !5956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @n_vclocks_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5957 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %err = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5959, metadata !DIExpression()), !dbg !5969
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5960, metadata !DIExpression()), !dbg !5970
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5961, metadata !DIExpression()), !dbg !5971
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5962, metadata !DIExpression()), !dbg !5972
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5963, metadata !DIExpression()), !dbg !5974
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5975
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !5976
  store ptr %call, ptr %ptp, align 8, !dbg !5974
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #16, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5964, metadata !DIExpression()), !dbg !5978
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5979
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5965, metadata !DIExpression()), !dbg !5980
  store i32 -22, ptr %err, align 4, !dbg !5980
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #16, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %num, metadata !5966, metadata !DIExpression()), !dbg !5982
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5967, metadata !DIExpression()), !dbg !5983
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5984
  %call1 = call i32 @kstrtou32(ptr noundef %1, i32 noundef 0, ptr noundef %num) #18, !dbg !5986
  %tobool = icmp ne i32 %call1, 0, !dbg !5986
  br i1 %tobool, label %if.then, label %if.end, !dbg !5987

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !5988
  %conv = sext i32 %2 to i64, !dbg !5988
  store i64 %conv, ptr %retval, align 8, !dbg !5989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5989

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ptp, align 8, !dbg !5990
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 21, !dbg !5992
  %call2 = call i32 @mutex_lock_interruptible(ptr noundef %n_vclocks_mux) #18, !dbg !5993
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5993
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5994

if.then4:                                         ; preds = %if.end
  store i64 -512, ptr %retval, align 8, !dbg !5995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5995

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %num, align 4, !dbg !5996
  %5 = load ptr, ptr %ptp, align 8, !dbg !5998
  %max_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 18, !dbg !5999
  %6 = load i32, ptr %max_vclocks, align 8, !dbg !5999
  %cmp = icmp ugt i32 %4, %6, !dbg !6000
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !6001

if.then7:                                         ; preds = %if.end5
  br label %do.body, !dbg !6002

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !6005

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6005

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6002
  %8 = load ptr, ptr %ptp, align 8, !dbg !6002
  %max_vclocks8 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 18, !dbg !6002
  %9 = load i32, ptr %max_vclocks8, align 8, !dbg !6002
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef @.str.11, i32 noundef %9) #19, !dbg !6002
  br label %out, !dbg !6007

if.end9:                                          ; preds = %if.end5
  %10 = load i32, ptr %num, align 4, !dbg !6008
  %11 = load ptr, ptr %ptp, align 8, !dbg !6010
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 19, !dbg !6011
  %12 = load i32, ptr %n_vclocks, align 4, !dbg !6011
  %cmp10 = icmp ugt i32 %10, %12, !dbg !6012
  br i1 %cmp10, label %if.then12, label %if.end28, !dbg !6013

if.then12:                                        ; preds = %if.end9
  store i32 0, ptr %i, align 4, !dbg !6014
  br label %for.cond, !dbg !6017

for.cond:                                         ; preds = %for.inc, %if.then12
  %13 = load i32, ptr %i, align 4, !dbg !6018
  %14 = load i32, ptr %num, align 4, !dbg !6020
  %15 = load ptr, ptr %ptp, align 8, !dbg !6021
  %n_vclocks13 = getelementptr inbounds %struct.ptp_clock, ptr %15, i32 0, i32 19, !dbg !6022
  %16 = load i32, ptr %n_vclocks13, align 4, !dbg !6022
  %sub = sub i32 %14, %16, !dbg !6023
  %cmp14 = icmp ult i32 %13, %sub, !dbg !6024
  br i1 %cmp14, label %for.body, label %for.end, !dbg !6025

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %ptp, align 8, !dbg !6026
  %call16 = call ptr @ptp_vclock_register(ptr noundef %17) #18, !dbg !6028
  store ptr %call16, ptr %vclock, align 8, !dbg !6029
  %18 = load ptr, ptr %vclock, align 8, !dbg !6030
  %tobool17 = icmp ne ptr %18, null, !dbg !6030
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6032

if.then18:                                        ; preds = %for.body
  br label %out, !dbg !6033

if.end19:                                         ; preds = %for.body
  %19 = load ptr, ptr %vclock, align 8, !dbg !6034
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %19, i32 0, i32 2, !dbg !6035
  %20 = load ptr, ptr %clock, align 8, !dbg !6035
  %index = getelementptr inbounds %struct.ptp_clock, ptr %20, i32 0, i32 4, !dbg !6036
  %21 = load i32, ptr %index, align 4, !dbg !6036
  %22 = load ptr, ptr %ptp, align 8, !dbg !6037
  %vclock_index = getelementptr inbounds %struct.ptp_clock, ptr %22, i32 0, i32 20, !dbg !6038
  %23 = load ptr, ptr %vclock_index, align 8, !dbg !6038
  %24 = load ptr, ptr %ptp, align 8, !dbg !6039
  %n_vclocks20 = getelementptr inbounds %struct.ptp_clock, ptr %24, i32 0, i32 19, !dbg !6040
  %25 = load i32, ptr %n_vclocks20, align 4, !dbg !6040
  %idx.ext = zext i32 %25 to i64, !dbg !6041
  %add.ptr = getelementptr i32, ptr %23, i64 %idx.ext, !dbg !6041
  %26 = load i32, ptr %i, align 4, !dbg !6042
  %idx.ext21 = zext i32 %26 to i64, !dbg !6043
  %add.ptr22 = getelementptr i32, ptr %add.ptr, i64 %idx.ext21, !dbg !6043
  store i32 %21, ptr %add.ptr22, align 4, !dbg !6044
  br label %do.body23, !dbg !6045

do.body23:                                        ; preds = %if.end19
  br label %do.cond24, !dbg !6047

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6047

do.end25:                                         ; preds = %do.cond24
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !6045
  %28 = load ptr, ptr %vclock, align 8, !dbg !6045
  %clock26 = getelementptr inbounds %struct.ptp_vclock, ptr %28, i32 0, i32 2, !dbg !6045
  %29 = load ptr, ptr %clock26, align 8, !dbg !6045
  %index27 = getelementptr inbounds %struct.ptp_clock, ptr %29, i32 0, i32 4, !dbg !6045
  %30 = load i32, ptr %index27, align 4, !dbg !6045
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef @.str.12, i32 noundef %30) #19, !dbg !6045
  br label %for.inc, !dbg !6049

for.inc:                                          ; preds = %do.end25
  %31 = load i32, ptr %i, align 4, !dbg !6050
  %inc = add i32 %31, 1, !dbg !6050
  store i32 %inc, ptr %i, align 4, !dbg !6050
  br label %for.cond, !dbg !6051, !llvm.loop !6052

for.end:                                          ; preds = %for.cond
  br label %if.end28, !dbg !6054

if.end28:                                         ; preds = %for.end, %if.end9
  %32 = load i32, ptr %num, align 4, !dbg !6055
  %33 = load ptr, ptr %ptp, align 8, !dbg !6057
  %n_vclocks29 = getelementptr inbounds %struct.ptp_clock, ptr %33, i32 0, i32 19, !dbg !6058
  %34 = load i32, ptr %n_vclocks29, align 4, !dbg !6058
  %cmp30 = icmp ult i32 %32, %34, !dbg !6059
  br i1 %cmp30, label %if.then32, label %if.end51, !dbg !6060

if.then32:                                        ; preds = %if.end28
  %35 = load ptr, ptr %ptp, align 8, !dbg !6061
  %n_vclocks33 = getelementptr inbounds %struct.ptp_clock, ptr %35, i32 0, i32 19, !dbg !6063
  %36 = load i32, ptr %n_vclocks33, align 4, !dbg !6063
  %37 = load i32, ptr %num, align 4, !dbg !6064
  %sub34 = sub i32 %36, %37, !dbg !6065
  store i32 %sub34, ptr %i, align 4, !dbg !6066
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !6067
  %call35 = call i32 @device_for_each_child_reverse(ptr noundef %38, ptr noundef %i, ptr noundef @unregister_vclock) #18, !dbg !6068
  store i32 1, ptr %i, align 4, !dbg !6069
  br label %for.cond36, !dbg !6071

for.cond36:                                       ; preds = %for.inc48, %if.then32
  %39 = load i32, ptr %i, align 4, !dbg !6072
  %40 = load ptr, ptr %ptp, align 8, !dbg !6074
  %n_vclocks37 = getelementptr inbounds %struct.ptp_clock, ptr %40, i32 0, i32 19, !dbg !6075
  %41 = load i32, ptr %n_vclocks37, align 4, !dbg !6075
  %42 = load i32, ptr %num, align 4, !dbg !6076
  %sub38 = sub i32 %41, %42, !dbg !6077
  %cmp39 = icmp ule i32 %39, %sub38, !dbg !6078
  br i1 %cmp39, label %for.body41, label %for.end50, !dbg !6079

for.body41:                                       ; preds = %for.cond36
  %43 = load ptr, ptr %ptp, align 8, !dbg !6080
  %vclock_index42 = getelementptr inbounds %struct.ptp_clock, ptr %43, i32 0, i32 20, !dbg !6081
  %44 = load ptr, ptr %vclock_index42, align 8, !dbg !6081
  %45 = load ptr, ptr %ptp, align 8, !dbg !6082
  %n_vclocks43 = getelementptr inbounds %struct.ptp_clock, ptr %45, i32 0, i32 19, !dbg !6083
  %46 = load i32, ptr %n_vclocks43, align 4, !dbg !6083
  %idx.ext44 = zext i32 %46 to i64, !dbg !6084
  %add.ptr45 = getelementptr i32, ptr %44, i64 %idx.ext44, !dbg !6084
  %47 = load i32, ptr %i, align 4, !dbg !6085
  %idx.ext46 = zext i32 %47 to i64, !dbg !6086
  %idx.neg = sub i64 0, %idx.ext46, !dbg !6086
  %add.ptr47 = getelementptr i32, ptr %add.ptr45, i64 %idx.neg, !dbg !6086
  store i32 -1, ptr %add.ptr47, align 4, !dbg !6087
  br label %for.inc48, !dbg !6088

for.inc48:                                        ; preds = %for.body41
  %48 = load i32, ptr %i, align 4, !dbg !6089
  %inc49 = add i32 %48, 1, !dbg !6089
  store i32 %inc49, ptr %i, align 4, !dbg !6089
  br label %for.cond36, !dbg !6090, !llvm.loop !6091

for.end50:                                        ; preds = %for.cond36
  br label %if.end51, !dbg !6093

if.end51:                                         ; preds = %for.end50, %if.end28
  %49 = load ptr, ptr %ptp, align 8, !dbg !6094
  %has_cycles = getelementptr inbounds %struct.ptp_clock, ptr %49, i32 0, i32 23, !dbg !6096
  %50 = load i8, ptr %has_cycles, align 1, !dbg !6096, !range !5514, !noundef !933
  %tobool52 = trunc i8 %50 to i1, !dbg !6096
  br i1 %tobool52, label %if.end64, label %if.then53, !dbg !6097

if.then53:                                        ; preds = %if.end51
  %51 = load i32, ptr %num, align 4, !dbg !6098
  %cmp54 = icmp eq i32 %51, 0, !dbg !6101
  br i1 %cmp54, label %if.then56, label %if.else, !dbg !6102

if.then56:                                        ; preds = %if.then53
  br label %do.body57, !dbg !6103

do.body57:                                        ; preds = %if.then56
  br label %do.cond58, !dbg !6105

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !6105

do.end59:                                         ; preds = %do.cond58
  %52 = load ptr, ptr %dev.addr, align 8, !dbg !6103
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef @.str.13) #19, !dbg !6103
  br label %if.end63, !dbg !6107

if.else:                                          ; preds = %if.then53
  br label %do.body60, !dbg !6108

do.body60:                                        ; preds = %if.else
  br label %do.cond61, !dbg !6110

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6110

do.end62:                                         ; preds = %do.cond61
  %53 = load ptr, ptr %dev.addr, align 8, !dbg !6108
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef @.str.14) #19, !dbg !6108
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %do.end59
  br label %if.end64, !dbg !6112

if.end64:                                         ; preds = %if.end63, %if.end51
  %54 = load i32, ptr %num, align 4, !dbg !6113
  %55 = load ptr, ptr %ptp, align 8, !dbg !6114
  %n_vclocks65 = getelementptr inbounds %struct.ptp_clock, ptr %55, i32 0, i32 19, !dbg !6115
  store i32 %54, ptr %n_vclocks65, align 4, !dbg !6116
  %56 = load ptr, ptr %ptp, align 8, !dbg !6117
  %n_vclocks_mux66 = getelementptr inbounds %struct.ptp_clock, ptr %56, i32 0, i32 21, !dbg !6118
  call void @mutex_unlock(ptr noundef %n_vclocks_mux66) #18, !dbg !6119
  %57 = load i64, ptr %count.addr, align 8, !dbg !6120
  store i64 %57, ptr %retval, align 8, !dbg !6121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6121

out:                                              ; preds = %if.then18, %do.end
  call void @llvm.dbg.label(metadata !5968), !dbg !6122
  %58 = load ptr, ptr %ptp, align 8, !dbg !6123
  %n_vclocks_mux67 = getelementptr inbounds %struct.ptp_clock, ptr %58, i32 0, i32 21, !dbg !6124
  call void @mutex_unlock(ptr noundef %n_vclocks_mux67) #18, !dbg !6125
  %59 = load i32, ptr %err, align 4, !dbg !6126
  %conv68 = sext i32 %59 to i64, !dbg !6126
  store i64 %conv68, ptr %retval, align 8, !dbg !6127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6127

cleanup:                                          ; preds = %out, %if.end64, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #16, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #16, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6128
  %60 = load i64, ptr %retval, align 8, !dbg !6128
  ret i64 %60, !dbg !6128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtou32(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !6129 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6134, metadata !DIExpression()), !dbg !6137
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6135, metadata !DIExpression()), !dbg !6138
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6136, metadata !DIExpression()), !dbg !6139
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6140
  %1 = load i32, ptr %base.addr, align 4, !dbg !6141
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6142
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef %1, ptr noundef %2) #18, !dbg !6143
  ret i32 %call, !dbg !6144
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6145 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6149 dso_local ptr @ptp_vclock_register(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6152 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6153 dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unregister_vclock(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !6159 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %info = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %num = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6161, metadata !DIExpression()), !dbg !6169
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6162, metadata !DIExpression()), !dbg !6170
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6163, metadata !DIExpression()), !dbg !6172
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6173
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6174
  store ptr %call, ptr %ptp, align 8, !dbg !6172
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #16, !dbg !6175
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6164, metadata !DIExpression()), !dbg !6176
  %1 = load ptr, ptr %ptp, align 8, !dbg !6177
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2, !dbg !6178
  %2 = load ptr, ptr %info1, align 8, !dbg !6178
  store ptr %2, ptr %info, align 8, !dbg !6176
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #16, !dbg !6179
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !6165, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #16, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %num, metadata !6166, metadata !DIExpression()), !dbg !6182
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6183
  store ptr %3, ptr %num, align 8, !dbg !6182
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6167, metadata !DIExpression()), !dbg !6184
  %4 = load ptr, ptr %info, align 8, !dbg !6184
  store ptr %4, ptr %__mptr, align 8, !dbg !6184
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6184
  %add.ptr = getelementptr i8, ptr %5, i64 -8, !dbg !6184
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6185
  %6 = load ptr, ptr %tmp, align 8, !dbg !6184
  store ptr %6, ptr %vclock, align 8, !dbg !6186
  br label %do.body, !dbg !6187

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6189

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6189

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6187
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !6187
  %8 = load ptr, ptr %parent, align 8, !dbg !6187
  %9 = load ptr, ptr %vclock, align 8, !dbg !6187
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %9, i32 0, i32 2, !dbg !6187
  %10 = load ptr, ptr %clock, align 8, !dbg !6187
  %index = getelementptr inbounds %struct.ptp_clock, ptr %10, i32 0, i32 4, !dbg !6187
  %11 = load i32, ptr %index, align 4, !dbg !6187
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef @.str.15, i32 noundef %11) #19, !dbg !6187
  %12 = load ptr, ptr %vclock, align 8, !dbg !6191
  call void @ptp_vclock_unregister(ptr noundef %12) #18, !dbg !6192
  %13 = load ptr, ptr %num, align 8, !dbg !6193
  %14 = load i32, ptr %13, align 4, !dbg !6194
  %dec = add i32 %14, -1, !dbg !6194
  store i32 %dec, ptr %13, align 4, !dbg !6194
  %15 = load ptr, ptr %num, align 8, !dbg !6195
  %16 = load i32, ptr %15, align 4, !dbg !6197
  %cmp = icmp eq i32 %16, 0, !dbg !6198
  br i1 %cmp, label %if.then, label %if.end, !dbg !6199

if.then:                                          ; preds = %do.end
  store i32 -22, ptr %retval, align 4, !dbg !6200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6200

if.end:                                           ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !6201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6201

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #16, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #16, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #16, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6202
  %17 = load i32, ptr %retval, align 4, !dbg !6202
  ret i32 %17, !dbg !6202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6206 dso_local void @ptp_vclock_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_vclocks_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6209 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6211, metadata !DIExpression()), !dbg !6216
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6212, metadata !DIExpression()), !dbg !6217
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6213, metadata !DIExpression()), !dbg !6218
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6219
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6214, metadata !DIExpression()), !dbg !6220
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6221
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6222
  store ptr %call, ptr %ptp, align 8, !dbg !6220
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6215, metadata !DIExpression()), !dbg !6224
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6225
  %2 = load ptr, ptr %ptp, align 8, !dbg !6226
  %max_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 18, !dbg !6227
  %3 = load i32, ptr %max_vclocks, align 8, !dbg !6227
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.10, i32 noundef %3) #18, !dbg !6228
  %conv = sext i32 %call1 to i64, !dbg !6228
  store i64 %conv, ptr %size, align 8, !dbg !6229
  %4 = load i64, ptr %size, align 8, !dbg !6230
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6231
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6231
  ret i64 %4, !dbg !6232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_vclocks_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6233 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ptp = alloca ptr, align 8
  %vclock_index = alloca ptr, align 8
  %err = alloca i32, align 4
  %size = alloca i64, align 8
  %max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6235, metadata !DIExpression()), !dbg !6245
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6236, metadata !DIExpression()), !dbg !6246
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6237, metadata !DIExpression()), !dbg !6247
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6238, metadata !DIExpression()), !dbg !6248
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6239, metadata !DIExpression()), !dbg !6250
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6251
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6252
  store ptr %call, ptr %ptp, align 8, !dbg !6250
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock_index) #16, !dbg !6253
  call void @llvm.dbg.declare(metadata ptr %vclock_index, metadata !6240, metadata !DIExpression()), !dbg !6254
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6255
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6241, metadata !DIExpression()), !dbg !6256
  store i32 -22, ptr %err, align 4, !dbg !6256
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6257
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6242, metadata !DIExpression()), !dbg !6258
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #16, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %max, metadata !6243, metadata !DIExpression()), !dbg !6260
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6261
  %call1 = call i32 @kstrtou32(ptr noundef %1, i32 noundef 0, ptr noundef %max) #18, !dbg !6263
  %tobool = icmp ne i32 %call1, 0, !dbg !6263
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6264

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %max, align 4, !dbg !6265
  %cmp = icmp eq i32 %2, 0, !dbg !6266
  br i1 %cmp, label %if.then, label %if.end, !dbg !6267

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6268

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %max, align 4, !dbg !6269
  %4 = load ptr, ptr %ptp, align 8, !dbg !6271
  %max_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 18, !dbg !6272
  %5 = load i32, ptr %max_vclocks, align 8, !dbg !6272
  %cmp2 = icmp eq i32 %3, %5, !dbg !6273
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6274

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %count.addr, align 8, !dbg !6275
  store i64 %6, ptr %retval, align 8, !dbg !6276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6276

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %ptp, align 8, !dbg !6277
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 21, !dbg !6279
  %call5 = call i32 @mutex_lock_interruptible(ptr noundef %n_vclocks_mux) #18, !dbg !6280
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6280
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6281

if.then7:                                         ; preds = %if.end4
  store i64 -512, ptr %retval, align 8, !dbg !6282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6282

if.end8:                                          ; preds = %if.end4
  %8 = load i32, ptr %max, align 4, !dbg !6283
  %9 = load ptr, ptr %ptp, align 8, !dbg !6285
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %9, i32 0, i32 19, !dbg !6286
  %10 = load i32, ptr %n_vclocks, align 4, !dbg !6286
  %cmp9 = icmp ult i32 %8, %10, !dbg !6287
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6288

if.then10:                                        ; preds = %if.end8
  br label %out, !dbg !6289

if.end11:                                         ; preds = %if.end8
  %11 = load i32, ptr %max, align 4, !dbg !6290
  %conv = zext i32 %11 to i64, !dbg !6290
  %call12 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 4, i32 noundef 3264) #17, !dbg !6291
  store ptr %call12, ptr %vclock_index, align 8, !dbg !6292
  %12 = load ptr, ptr %vclock_index, align 8, !dbg !6293
  %tobool13 = icmp ne ptr %12, null, !dbg !6293
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6295

if.then14:                                        ; preds = %if.end11
  store i32 -12, ptr %err, align 4, !dbg !6296
  br label %out, !dbg !6298

if.end15:                                         ; preds = %if.end11
  %13 = load ptr, ptr %ptp, align 8, !dbg !6299
  %n_vclocks16 = getelementptr inbounds %struct.ptp_clock, ptr %13, i32 0, i32 19, !dbg !6300
  %14 = load i32, ptr %n_vclocks16, align 4, !dbg !6300
  %conv17 = zext i32 %14 to i64, !dbg !6299
  %mul = mul i64 4, %conv17, !dbg !6301
  store i64 %mul, ptr %size, align 8, !dbg !6302
  %15 = load ptr, ptr %vclock_index, align 8, !dbg !6303
  %16 = load ptr, ptr %ptp, align 8, !dbg !6304
  %vclock_index18 = getelementptr inbounds %struct.ptp_clock, ptr %16, i32 0, i32 20, !dbg !6305
  %17 = load ptr, ptr %vclock_index18, align 8, !dbg !6305
  %18 = load i64, ptr %size, align 8, !dbg !6306
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %17, i64 %18, i1 false), !dbg !6307
  %19 = load ptr, ptr %ptp, align 8, !dbg !6308
  %vclock_index19 = getelementptr inbounds %struct.ptp_clock, ptr %19, i32 0, i32 20, !dbg !6309
  %20 = load ptr, ptr %vclock_index19, align 8, !dbg !6309
  call void @kfree(ptr noundef %20) #18, !dbg !6310
  %21 = load ptr, ptr %vclock_index, align 8, !dbg !6311
  %22 = load ptr, ptr %ptp, align 8, !dbg !6312
  %vclock_index20 = getelementptr inbounds %struct.ptp_clock, ptr %22, i32 0, i32 20, !dbg !6313
  store ptr %21, ptr %vclock_index20, align 8, !dbg !6314
  %23 = load i32, ptr %max, align 4, !dbg !6315
  %24 = load ptr, ptr %ptp, align 8, !dbg !6316
  %max_vclocks21 = getelementptr inbounds %struct.ptp_clock, ptr %24, i32 0, i32 18, !dbg !6317
  store i32 %23, ptr %max_vclocks21, align 8, !dbg !6318
  %25 = load ptr, ptr %ptp, align 8, !dbg !6319
  %n_vclocks_mux22 = getelementptr inbounds %struct.ptp_clock, ptr %25, i32 0, i32 21, !dbg !6320
  call void @mutex_unlock(ptr noundef %n_vclocks_mux22) #18, !dbg !6321
  %26 = load i64, ptr %count.addr, align 8, !dbg !6322
  store i64 %26, ptr %retval, align 8, !dbg !6323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6323

out:                                              ; preds = %if.then14, %if.then10
  call void @llvm.dbg.label(metadata !6244), !dbg !6324
  %27 = load ptr, ptr %ptp, align 8, !dbg !6325
  %n_vclocks_mux23 = getelementptr inbounds %struct.ptp_clock, ptr %27, i32 0, i32 21, !dbg !6326
  call void @mutex_unlock(ptr noundef %n_vclocks_mux23) #18, !dbg !6327
  %28 = load i32, ptr %err, align 4, !dbg !6328
  %conv24 = sext i32 %28 to i64, !dbg !6328
  store i64 %conv24, ptr %retval, align 8, !dbg !6329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6329

cleanup:                                          ; preds = %out, %if.end15, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #16, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock_index) #16, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6330
  %29 = load i64, ptr %retval, align 8, !dbg !6330
  ret i64 %29, !dbg !6330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_phase_adjustment_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6331 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6333, metadata !DIExpression()), !dbg !6337
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6334, metadata !DIExpression()), !dbg !6338
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6335, metadata !DIExpression()), !dbg !6339
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6340
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6336, metadata !DIExpression()), !dbg !6341
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6342
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6343
  store ptr %call, ptr %ptp, align 8, !dbg !6341
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6344
  %2 = load ptr, ptr %ptp, align 8, !dbg !6345
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6346
  %3 = load ptr, ptr %info, align 8, !dbg !6346
  %getmaxphase = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 11, !dbg !6347
  %4 = load ptr, ptr %getmaxphase, align 8, !dbg !6347
  %5 = load ptr, ptr %ptp, align 8, !dbg !6348
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2, !dbg !6349
  %6 = load ptr, ptr %info1, align 8, !dbg !6349
  %call2 = call i32 %4(ptr noundef %6) #18, !dbg !6345
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %call2) #18, !dbg !6350
  %conv = sext i32 %call3 to i64, !dbg !6350
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6351
  ret i64 %conv, !dbg !6352
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @clock_name_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6353 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6355, metadata !DIExpression()), !dbg !6359
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6356, metadata !DIExpression()), !dbg !6360
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6357, metadata !DIExpression()), !dbg !6361
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6358, metadata !DIExpression()), !dbg !6363
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6364
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6365
  store ptr %call, ptr %ptp, align 8, !dbg !6363
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6366
  %2 = load ptr, ptr %ptp, align 8, !dbg !6367
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6368
  %3 = load ptr, ptr %info, align 8, !dbg !6368
  %name = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 1, !dbg !6369
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !6367
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.20, ptr noundef %arraydecay) #18, !dbg !6370
  %conv = sext i32 %call1 to i64, !dbg !6370
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6371
  ret i64 %conv, !dbg !6372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6373 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_adj_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6376 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6378, metadata !DIExpression()), !dbg !6382
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6379, metadata !DIExpression()), !dbg !6382
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6380, metadata !DIExpression()), !dbg !6382
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6381, metadata !DIExpression()), !dbg !6382
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6382
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6382
  store ptr %call, ptr %ptp, align 8, !dbg !6382
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6382
  %2 = load ptr, ptr %ptp, align 8, !dbg !6382
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6382
  %3 = load ptr, ptr %info, align 8, !dbg !6382
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 2, !dbg !6382
  %4 = load i32, ptr %max_adj, align 8, !dbg !6382
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %4) #18, !dbg !6382
  %conv = sext i32 %call1 to i64, !dbg !6382
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6382
  ret i64 %conv, !dbg !6382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @n_alarm_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6383 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6385, metadata !DIExpression()), !dbg !6389
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6386, metadata !DIExpression()), !dbg !6389
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6387, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6388, metadata !DIExpression()), !dbg !6389
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6389
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6389
  store ptr %call, ptr %ptp, align 8, !dbg !6389
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6389
  %2 = load ptr, ptr %ptp, align 8, !dbg !6389
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6389
  %3 = load ptr, ptr %info, align 8, !dbg !6389
  %n_alarm = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 3, !dbg !6389
  %4 = load i32, ptr %n_alarm, align 4, !dbg !6389
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %4) #18, !dbg !6389
  %conv = sext i32 %call1 to i64, !dbg !6389
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6389
  ret i64 %conv, !dbg !6389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @n_ext_ts_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6390 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6392, metadata !DIExpression()), !dbg !6396
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6393, metadata !DIExpression()), !dbg !6396
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6394, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6395, metadata !DIExpression()), !dbg !6396
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6396
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6396
  store ptr %call, ptr %ptp, align 8, !dbg !6396
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6396
  %2 = load ptr, ptr %ptp, align 8, !dbg !6396
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6396
  %3 = load ptr, ptr %info, align 8, !dbg !6396
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 4, !dbg !6396
  %4 = load i32, ptr %n_ext_ts, align 8, !dbg !6396
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %4) #18, !dbg !6396
  %conv = sext i32 %call1 to i64, !dbg !6396
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6396
  ret i64 %conv, !dbg !6396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @n_per_out_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6397 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6399, metadata !DIExpression()), !dbg !6403
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6400, metadata !DIExpression()), !dbg !6403
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6401, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6403
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6403
  store ptr %call, ptr %ptp, align 8, !dbg !6403
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6403
  %2 = load ptr, ptr %ptp, align 8, !dbg !6403
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6403
  %3 = load ptr, ptr %info, align 8, !dbg !6403
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 5, !dbg !6403
  %4 = load i32, ptr %n_per_out, align 4, !dbg !6403
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %4) #18, !dbg !6403
  %conv = sext i32 %call1 to i64, !dbg !6403
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6403
  ret i64 %conv, !dbg !6403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @n_pins_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6404 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6406, metadata !DIExpression()), !dbg !6410
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6407, metadata !DIExpression()), !dbg !6410
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6410
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6409, metadata !DIExpression()), !dbg !6410
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6410
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6410
  store ptr %call, ptr %ptp, align 8, !dbg !6410
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6410
  %2 = load ptr, ptr %ptp, align 8, !dbg !6410
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6410
  %3 = load ptr, ptr %info, align 8, !dbg !6410
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 6, !dbg !6410
  %4 = load i32, ptr %n_pins, align 8, !dbg !6410
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %4) #18, !dbg !6410
  %conv = sext i32 %call1 to i64, !dbg !6410
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6410
  ret i64 %conv, !dbg !6410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pps_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #0 align 16 !dbg !6411 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6413, metadata !DIExpression()), !dbg !6417
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6414, metadata !DIExpression()), !dbg !6417
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6415, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #16, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6416, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6417
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #18, !dbg !6417
  store ptr %call, ptr %ptp, align 8, !dbg !6417
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6417
  %2 = load ptr, ptr %ptp, align 8, !dbg !6417
  %info = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 2, !dbg !6417
  %3 = load ptr, ptr %info, align 8, !dbg !6417
  %pps = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 7, !dbg !6417
  %4 = load i32, ptr %pps, align 4, !dbg !6417
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 4095, ptr noundef @.str.18, i32 noundef %4) #18, !dbg !6417
  %conv = sext i32 %call1 to i64, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #16, !dbg !6417
  ret i64 %conv, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !6418 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6420, metadata !DIExpression()), !dbg !6424
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6421, metadata !DIExpression()), !dbg !6425
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6422, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6423, metadata !DIExpression()), !dbg !6428
  %0 = load i64, ptr %n.addr, align 8, !dbg !6429
  %1 = load i64, ptr %size.addr, align 8, !dbg !6429
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6429
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6429
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6429
  store i64 %4, ptr %bytes, align 8, !dbg !6429
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6429
  %lnot = xor i1 %call, true, !dbg !6429
  %lnot1 = xor i1 %lnot, true, !dbg !6429
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6429
  %conv = sext i32 %lnot.ext to i64, !dbg !6429
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6429
  %tobool = icmp ne i64 %expval, 0, !dbg !6429
  br i1 %tobool, label %if.then, label %if.end, !dbg !6431

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6432

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6433
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6435
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6436

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6437
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6438
  br i1 %8, label %if.then2, label %if.end4, !dbg !6439

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6440
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6441
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !6442
  store ptr %call3, ptr %retval, align 8, !dbg !6443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6443

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6444
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6445
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !6446
  store ptr %call5, ptr %retval, align 8, !dbg !6447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6447

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !6448
  %13 = load ptr, ptr %retval, align 8, !dbg !6448
  ret ptr %13, !dbg !6448
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !6449 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6456, !range !5514, !noundef !933
  %tobool = trunc i8 %0 to i1, !dbg !6456
  %lnot = xor i1 %tobool, true, !dbg !6456
  %lnot1 = xor i1 %lnot, true, !dbg !6456
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6456
  %conv = sext i32 %lnot.ext to i64, !dbg !6456
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6456
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6456
  ret i1 %tobool2, !dbg !6457
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !6458 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6462, metadata !DIExpression()), !dbg !6467
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6463, metadata !DIExpression()), !dbg !6468
  %0 = load i64, ptr %size.addr, align 8, !dbg !6469
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6470
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6471

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6472
  %tobool = icmp ne i64 %2, 0, !dbg !6472
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6473

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6474
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6464, metadata !DIExpression()), !dbg !6475
  %3 = load i64, ptr %size.addr, align 8, !dbg !6476
  %cmp = icmp ugt i64 %3, 8192, !dbg !6478
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6479

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6480
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6481
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6482
  store ptr %call, ptr %retval, align 8, !dbg !6483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6483

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6484
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6484
  store i32 %call2, ptr %index, align 4, !dbg !6485
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6486
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6487
  %9 = ptrtoint ptr %8 to i64, !dbg !6487
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6488
  %idxprom = zext i32 %call3 to i64, !dbg !6489
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6489
  %10 = load i32, ptr %index, align 4, !dbg !6490
  %idxprom4 = zext i32 %10 to i64, !dbg !6489
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6489
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6489
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6491
  %13 = load i64, ptr %size.addr, align 8, !dbg !6492
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6493
  store ptr %call6, ptr %retval, align 8, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6494

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6495
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6496
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6497
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6498
  store ptr %call8, ptr %retval, align 8, !dbg !6499
  br label %return, !dbg !6499

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6500
  ret ptr %16, !dbg !6500
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6501 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6502 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6503 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6507, metadata !DIExpression()), !dbg !6509
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  %0 = load i64, ptr %size.addr, align 8, !dbg !6511
  %tobool = icmp ne i64 %0, 0, !dbg !6511
  br i1 %tobool, label %if.end, label %if.then, !dbg !6513

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6514
  br label %return, !dbg !6514

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6515
  %cmp = icmp ule i64 %1, 8, !dbg !6517
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6518

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6519
  br label %return, !dbg !6519

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6520
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6522
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6523

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6524
  %cmp4 = icmp ule i64 %3, 96, !dbg !6525
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6526

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6527
  br label %return, !dbg !6527

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6528
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6530
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6531

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6532
  %cmp9 = icmp ule i64 %5, 192, !dbg !6533
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6534

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6535
  br label %return, !dbg !6535

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6536
  %cmp12 = icmp ule i64 %6, 8, !dbg !6538
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6539

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6540
  br label %return, !dbg !6540

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6541
  %cmp15 = icmp ule i64 %7, 16, !dbg !6543
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6544

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6545
  br label %return, !dbg !6545

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6546
  %cmp18 = icmp ule i64 %8, 32, !dbg !6548
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6549

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6550
  br label %return, !dbg !6550

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6551
  %cmp21 = icmp ule i64 %9, 64, !dbg !6553
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6554

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6555
  br label %return, !dbg !6555

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6556
  %cmp24 = icmp ule i64 %10, 128, !dbg !6558
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6559

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6560
  br label %return, !dbg !6560

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6561
  %cmp27 = icmp ule i64 %11, 256, !dbg !6563
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6564

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6565
  br label %return, !dbg !6565

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6566
  %cmp30 = icmp ule i64 %12, 512, !dbg !6568
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6569

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6570
  br label %return, !dbg !6570

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6571
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6573
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6574

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6575
  br label %return, !dbg !6575

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6576
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6578
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6579

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6580
  br label %return, !dbg !6580

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6581
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6583
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6584

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6585
  br label %return, !dbg !6585

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6586
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6588
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6589

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6590
  br label %return, !dbg !6590

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6591
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6593
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6594

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6595
  br label %return, !dbg !6595

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6596
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6598
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6599

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6600
  br label %return, !dbg !6600

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6601
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6603
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6604

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6605
  br label %return, !dbg !6605

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6606
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6608
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6609

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6610
  br label %return, !dbg !6610

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6611
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6613
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6614

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6615
  br label %return, !dbg !6615

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6616
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6618
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6619

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6620
  br label %return, !dbg !6620

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6621
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6623
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6624

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6625
  br label %return, !dbg !6625

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6626
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6628
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6629

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6630
  br label %return, !dbg !6630

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6631, !range !5514, !noundef !933
  %tobool69 = trunc i8 %25 to i1, !dbg !6631
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6633

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6634

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !6635, !srcloc !6638
  unreachable, !dbg !6635

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6639

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6640

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6641

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6643

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6641

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.27, i32 480, i32 0, i64 12) #16, !dbg !6645, !srcloc !6647
  br label %do.end75, !dbg !6645

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6641

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6648
  br label %return, !dbg !6648

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6649
  ret i32 %26, !dbg !6649
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6650 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6656 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6664
  %and = and i32 %0, 17, !dbg !6664
  %cmp = icmp eq i32 %and, 0, !dbg !6664
  %lnot = xor i1 %cmp, true, !dbg !6664
  %lnot1 = xor i1 %lnot, true, !dbg !6664
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6664
  %conv = sext i32 %lnot.ext to i64, !dbg !6664
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6664
  %tobool = icmp ne i64 %expval, 0, !dbg !6664
  br i1 %tobool, label %if.then, label %if.end, !dbg !6666

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6667
  br label %return, !dbg !6667

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6668
  %and2 = and i32 %1, 1, !dbg !6670
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6670
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6671

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6672
  br label %return, !dbg !6672

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6673
  br label %return, !dbg !6673

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6675
  ret i32 %2, !dbg !6675
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6676 dso_local void @__compiletime_assert_117() #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_pin_name2index(ptr noundef %ptp, ptr noundef %name) #0 align 16 !dbg !6677 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !6681, metadata !DIExpression()), !dbg !6684
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6682, metadata !DIExpression()), !dbg !6685
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6686
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6683, metadata !DIExpression()), !dbg !6687
  store i32 0, ptr %i, align 4, !dbg !6688
  br label %for.cond, !dbg !6690

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6691
  %1 = load ptr, ptr %ptp.addr, align 8, !dbg !6693
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2, !dbg !6694
  %2 = load ptr, ptr %info, align 8, !dbg !6694
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %2, i32 0, i32 6, !dbg !6695
  %3 = load i32, ptr %n_pins, align 8, !dbg !6695
  %cmp = icmp slt i32 %0, %3, !dbg !6696
  br i1 %cmp, label %for.body, label %for.end, !dbg !6697

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ptp.addr, align 8, !dbg !6698
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 2, !dbg !6701
  %5 = load ptr, ptr %info1, align 8, !dbg !6701
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 8, !dbg !6702
  %6 = load ptr, ptr %pin_config, align 8, !dbg !6702
  %7 = load i32, ptr %i, align 4, !dbg !6703
  %idxprom = sext i32 %7 to i64, !dbg !6698
  %arrayidx = getelementptr %struct.ptp_pin_desc, ptr %6, i64 %idxprom, !dbg !6698
  %name2 = getelementptr inbounds %struct.ptp_pin_desc, ptr %arrayidx, i32 0, i32 0, !dbg !6704
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name2, i64 0, i64 0, !dbg !6698
  %8 = load ptr, ptr %name.addr, align 8, !dbg !6705
  %call = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %8) #18, !dbg !6706
  %tobool = icmp ne i32 %call, 0, !dbg !6706
  br i1 %tobool, label %if.end, label %if.then, !dbg !6707

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !6708
  store i32 %9, ptr %retval, align 4, !dbg !6709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6709

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6710

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6711
  %inc = add i32 %10, 1, !dbg !6711
  store i32 %inc, ptr %i, align 4, !dbg !6711
  br label %for.cond, !dbg !6712, !llvm.loop !6713

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !6715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6715

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6716
  %11 = load i32, ptr %retval, align 4, !dbg !6716
  ret i32 %11, !dbg !6716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6717 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6721 dso_local i32 @ptp_set_pinfunc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150}
!llvm.ident = !{!5151}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ptp_group", scope: !2, file: !3, line: 369, type: !364, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/ptp/.ptp_sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/ptp/ptp\22 -D KBUILD_BASENAME=\22ptp_sysfs\22 -D KBUILD_MODNAME=\22ptp\22 -D __KBUILD_MODNAME=kmod_ptp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/ptp/ptp_sysfs.ll drivers/ptp/ptp_sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, globals: !5004, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ptp/ptp_sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "955a8c6baf485127a64f9c7ddb77feb6")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !80, !87, !93, !100, !108, !116, !125, !130, !135, !141, !191, !197, !202}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !57, line: 68, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!68 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!69 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!70 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!71 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!72 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!73 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!74 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!75 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!76 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!77 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!78 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!79 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !143, file: !142, line: 33, baseType: !7, size: 32, elements: !187)
!142 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54f5424c70c1f064a9bfeb2f2d3d6d2c")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !142, line: 32, size: 512, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !142, line: 37, baseType: !141, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !142, line: 38, baseType: !147, size: 448, offset: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !142, line: 38, size: 448, elements: !148)
!148 = !{!149, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !147, file: !142, line: 39, baseType: !150, size: 128)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !151, line: 102, size: 128, elements: !152)
!151 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c874b9ccb9254052af76037fd91a385")
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !150, file: !151, line: 103, baseType: !7, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !151, line: 104, baseType: !7, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !150, file: !151, line: 105, baseType: !156, size: 64, offset: 64)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 2)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !147, file: !142, line: 40, baseType: !160, size: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !151, line: 108, size: 448, elements: !161)
!161 = !{!162, !176, !177, !178, !179}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !151, line: 109, baseType: !163, size: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !151, line: 109, size: 128, elements: !164)
!164 = !{!165, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !163, file: !151, line: 114, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !151, line: 81, size: 128, elements: !167)
!167 = !{!168, !172, !174}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !166, file: !151, line: 82, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !170, line: 30, baseType: !171)
!170 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!171 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !166, file: !151, line: 83, baseType: !173, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !170, line: 27, baseType: !7)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !166, file: !151, line: 84, baseType: !173, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !163, file: !151, line: 121, baseType: !166, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !160, file: !151, line: 123, baseType: !166, size: 128, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !160, file: !151, line: 124, baseType: !7, size: 32, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !151, line: 125, baseType: !7, size: 32, offset: 288)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !151, line: 126, baseType: !180, size: 128, offset: 320)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !151, line: 126, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !180, file: !151, line: 132, baseType: !166, size: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !180, file: !151, line: 134, baseType: !184, size: 128)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 4)
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0)
!189 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1)
!190 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !151, line: 168, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195, !196}
!193 = !DIEnumerator(name: "PTP_PF_NONE", value: 0)
!194 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1)
!195 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2)
!196 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 10, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!199 = !{!200, !201}
!200 = !DIEnumerator(name: "false", value: 0)
!201 = !DIEnumerator(name: "true", value: 1)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !203, line: 364, baseType: !7, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!204 = !{!205, !206, !207, !208, !209, !210, !211}
!205 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!206 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!207 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!208 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!209 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!210 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!211 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!212 = !{!213, !214, !216, !4677, !4679, !4681, !360}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !215, line: 154, baseType: !7)
!215 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !218)
!218 = !{!219, !4231, !4232, !4235, !4236, !4289, !4359, !4360, !4361, !4362, !4363, !4370, !4462, !4475, !4485, !4489, !4491, !4492, !4493, !4497, !4504, !4505, !4508, !4511, !4515, !4619, !4620, !4621, !4622, !4623, !4624, !4654, !4655, !4656, !4659, !4662, !4671, !4672, !4673, !4674, !4675, !4676}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !217, file: !94, line: 706, baseType: !220, size: 512)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !221, line: 64, size: 512, elements: !222)
!221 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!222 = !{!223, !227, !233, !235, !323, !4118, !4221, !4226, !4227, !4228, !4229, !4230}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !221, line: 65, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !220, file: !221, line: 66, baseType: !228, size: 128, offset: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !215, line: 190, size: 128, elements: !229)
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !215, line: 191, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !215, line: 191, baseType: !231, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !221, line: 67, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !220, file: !221, line: 68, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !221, line: 168, size: 768, elements: !238)
!238 = !{!239, !240, !282, !283}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !221, line: 169, baseType: !228, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !237, file: !221, line: 170, baseType: !241, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !242, line: 29, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !242, line: 17, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !242, line: 18, baseType: !246, size: 32)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 18, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !246, file: !242, line: 19, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !250, line: 14, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !249, file: !250, line: 15, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !254, line: 44, baseType: !255)
!254 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !254, line: 14, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !254, line: 15, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !254, line: 15, size: 32, elements: !259)
!259 = !{!260, !265, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !258, file: !254, line: 16, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !215, line: 174, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 172, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !262, file: !215, line: 173, baseType: !109, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 24, baseType: !266, size: 16)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 24, size: 16, elements: !267)
!267 = !{!268, !273}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !266, file: !254, line: 25, baseType: !269, size: 8)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !270, line: 17, baseType: !271)
!270 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !170, line: 21, baseType: !272)
!272 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !266, file: !254, line: 26, baseType: !269, size: 8, offset: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 28, baseType: !275, size: 32)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 28, size: 32, elements: !276)
!276 = !{!277, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !275, file: !254, line: 29, baseType: !278, size: 16)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !270, line: 19, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !170, line: 24, baseType: !280)
!280 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !275, file: !254, line: 30, baseType: !278, size: 16, offset: 16)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !221, line: 171, baseType: !220, size: 512, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !237, file: !221, line: 172, baseType: !284, size: 64, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !221, line: 133, size: 192, elements: !287)
!287 = !{!288, !295, !300}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !286, file: !221, line: 134, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!109, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !221, line: 135, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!224, !293}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !286, file: !221, line: 136, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!109, !293, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !221, line: 125, size: 20736, elements: !307)
!307 = !{!308, !313, !317, !318, !322}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !306, file: !221, line: 126, baseType: !309, size: 192)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !311)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!311 = !{!312}
!312 = !DISubrange(count: 3)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !306, file: !221, line: 127, baseType: !314, size: 4096, offset: 192)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 4096, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !306, file: !221, line: 128, baseType: !109, size: 32, offset: 4288)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !306, file: !221, line: 129, baseType: !319, size: 16384, offset: 4320)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 16384, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !306, file: !221, line: 130, baseType: !109, size: 32, offset: 20704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !220, file: !221, line: 69, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !221, line: 116, size: 384, elements: !327)
!327 = !{!328, !332, !361, !4080, !4108, !4112}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !326, file: !221, line: 117, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !234}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !326, file: !221, line: 118, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !336, line: 254, size: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!337 = !{!338, !353}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !335, file: !336, line: 255, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !234, !347, !310}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !215, line: 66, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !344, line: 73, baseType: !345)
!344 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !344, line: 15, baseType: !346)
!346 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !336, line: 30, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !336, line: 31, baseType: !224, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !348, file: !336, line: 32, baseType: !352, size: 16, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !215, line: 24, baseType: !280)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !335, file: !336, line: 256, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!342, !234, !347, !224, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !215, line: 61, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !344, line: 72, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !344, line: 16, baseType: !360)
!360 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !326, file: !221, line: 119, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !336, line: 84, size: 320, elements: !366)
!366 = !{!367, !368, !372, !4076, !4078}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !336, line: 85, baseType: !224, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !365, file: !336, line: 86, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!352, !234, !347, !109}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !365, file: !336, line: 88, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!352, !234, !376, !109}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !336, line: 175, size: 512, elements: !378)
!378 = !{!379, !380, !381, !382, !4067, !4071, !4072}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !377, file: !336, line: 176, baseType: !348, size: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !377, file: !336, line: 177, baseType: !357, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !377, file: !336, line: 178, baseType: !213, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !377, file: !336, line: 179, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !388)
!388 = !{!389, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !4061, !4062, !4063, !4064, !4065, !4066}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !387, file: !28, line: 473, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !392)
!392 = !{!393, !394, !395, !403, !404, !411, !412, !415, !416, !3832, !3833, !3834, !3835, !3836, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3876, !3879, !3880, !3881, !3898, !3899, !3900, !3901}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !391, file: !28, line: 642, baseType: !352, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !391, file: !28, line: 643, baseType: !280, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !391, file: !28, line: 644, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !397, line: 23, baseType: !398)
!397 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 21, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !397, line: 22, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !215, line: 37, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !344, line: 49, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !391, file: !28, line: 645, baseType: !228, size: 128, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !391, file: !28, line: 646, baseType: !405, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !397, line: 28, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 26, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !397, line: 27, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !215, line: 38, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !344, line: 50, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !391, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !391, file: !28, line: 650, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !391, file: !28, line: 651, baseType: !413, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !391, file: !28, line: 654, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !420)
!420 = !{!421, !3666, !3676, !3680, !3684, !3688, !3692, !3696, !3700, !3704, !3708, !3709, !3713, !3717, !3754, !3783, !3787, !3793, !3797, !3801, !3805, !3809, !3813, !3819, !3823}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !419, file: !28, line: 1967, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!425, !390, !425, !7}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !427, line: 82, size: 1536, elements: !428)
!427 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!428 = !{!429, !430, !440, !448, !449, !468, !469, !473, !486, !3650, !3651, !3652, !3653, !3658, !3659, !3660}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !426, file: !427, line: 84, baseType: !7, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !426, file: !427, line: 85, baseType: !431, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !432, line: 275, baseType: !433)
!432 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !432, line: 275, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !433, file: !432, line: 275, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !432, line: 69, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !432, line: 64, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !437, file: !432, line: 65, baseType: !7, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !427, line: 86, baseType: !441, size: 128, offset: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !442, line: 38, size: 128, elements: !443)
!442 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!443 = !{!444, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !442, line: 39, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !441, file: !442, line: 39, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !426, file: !427, line: 87, baseType: !425, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !426, file: !427, line: 88, baseType: !450, size: 128, offset: 256)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !427, line: 49, size: 128, elements: !451)
!451 = !{!452, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !427, line: 50, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !427, line: 50, size: 64, elements: !454)
!454 = !{!455, !461}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !427, line: 51, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !427, line: 51, size: 64, elements: !457)
!457 = !{!458, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !456, file: !427, line: 52, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !270, line: 21, baseType: !173)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !456, file: !427, line: 52, baseType: !459, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !453, file: !427, line: 54, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !270, line: 23, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !170, line: 31, baseType: !464)
!464 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !450, file: !427, line: 56, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !426, file: !427, line: 89, baseType: !390, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !426, file: !427, line: 91, baseType: !470, size: 256, offset: 448)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !426, file: !427, line: 94, baseType: !474, size: 64, offset: 704)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !475, line: 25, size: 64, elements: !476)
!475 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !475, line: 26, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !475, line: 26, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !478, file: !475, line: 28, baseType: !463, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !475, line: 30, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !475, line: 30, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !475, line: 31, baseType: !241, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !475, line: 32, baseType: !109, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !426, file: !427, line: 95, baseType: !487, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !427, line: 128, size: 1024, align: 512, elements: !490)
!490 = !{!491, !495, !496, !503, !509, !513, !517, !521, !522, !526, !530, !3640, !3644}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !489, file: !427, line: 129, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!109, !425, !7}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !489, file: !427, line: 130, baseType: !492, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !489, file: !427, line: 131, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!109, !500, !502}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !489, file: !427, line: 132, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!109, !500, !7, !224, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !489, file: !427, line: 134, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!109, !500}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !489, file: !427, line: 135, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!109, !425}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !489, file: !427, line: 136, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !425}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !489, file: !427, line: 137, baseType: !518, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !489, file: !427, line: 138, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !425, !390}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !489, file: !427, line: 139, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!310, !425, !310, !109}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !489, file: !427, line: 140, baseType: !531, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !3639}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !536, line: 70, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!537 = !{!538, !539, !3635, !3636}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !535, file: !536, line: 71, baseType: !425, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !535, file: !536, line: 72, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !542)
!542 = !{!543, !544, !547, !548, !549, !552, !1027, !1166, !1206, !1296, !1300, !1301, !1302, !1303, !1304, !1313, !1314, !1315, !1316, !1321, !1325, !1326, !1329, !1332, !1335, !1338, !1339, !1340, !1381, !3568, !3569, !3570, !3571, !3572, !3573, !3576, !3578, !3585, !3586, !3587, !3588, !3589, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !541, file: !28, line: 1191, baseType: !228, size: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !541, file: !28, line: 1192, baseType: !545, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !215, line: 21, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !215, line: 18, baseType: !459)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !541, file: !28, line: 1193, baseType: !272, size: 8, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !541, file: !28, line: 1194, baseType: !360, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !541, file: !28, line: 1195, baseType: !550, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !215, line: 52, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !344, line: 88, baseType: !171)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !541, file: !28, line: 1196, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !555)
!555 = !{!556, !557, !558, !565, !569, !573, !577, !1012, !1013, !1017, !1019, !1020, !1021, !1023, !1024, !1025, !1026}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !28, line: 2367, baseType: !224, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !554, file: !28, line: 2368, baseType: !109, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !554, file: !28, line: 2376, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!109, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !564, line: 32, flags: DIFlagFwdDecl)
!564 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !554, file: !28, line: 2377, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !554, file: !28, line: 2378, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!425, !553, !109, !224, !213}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !554, file: !28, line: 2380, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !540}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !554, file: !28, line: 2381, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !580)
!580 = !{!581, !582, !583, !587, !609, !635, !636, !637, !638, !642, !647, !648, !667, !723, !724, !725, !726, !727, !730, !731, !732, !740, !744, !769, !790, !791, !792, !793, !802, !825, !826, !829, !832, !833, !834, !835, !836, !837, !838, !843, !844, !970, !978, !979, !980, !982, !986, !987, !991, !992, !993, !994, !996, !997, !998, !1005, !1006, !1007, !1011}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !579, file: !21, line: 403, baseType: !20, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !579, file: !21, line: 406, baseType: !228, size: 128, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !579, file: !21, line: 409, baseType: !584, size: 448, offset: 192)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 448, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 56)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !579, file: !21, line: 417, baseType: !588, size: 768, offset: 640)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !589)
!589 = !{!590, !591, !592, !593, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !588, file: !21, line: 46, baseType: !220, size: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !588, file: !21, line: 47, baseType: !578, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !588, file: !21, line: 48, baseType: !234, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !588, file: !21, line: 49, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !588, file: !21, line: 50, baseType: !597, size: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !599, line: 26, size: 256, elements: !600)
!599 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !598, file: !599, line: 27, baseType: !7, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !598, file: !599, line: 28, baseType: !603, size: 192, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !604, line: 43, size: 192, elements: !605)
!604 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!605 = !{!606, !608}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !603, file: !604, line: 44, baseType: !607, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !250, line: 23, baseType: !249)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !603, file: !604, line: 45, baseType: !228, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !579, file: !21, line: 418, baseType: !610, size: 64, offset: 1408)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !612)
!612 = !{!613, !614, !619, !623, !627, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !611, file: !21, line: 54, baseType: !348, size: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !611, file: !21, line: 55, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!342, !610, !618, !310}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !611, file: !21, line: 57, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!342, !610, !618, !224, !357}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !611, file: !21, line: 59, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !578, !224}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !611, file: !21, line: 60, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!109, !578}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !611, file: !21, line: 61, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !578}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !579, file: !21, line: 419, baseType: !224, size: 64, offset: 1472)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !579, file: !21, line: 420, baseType: !224, size: 64, offset: 1536)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !579, file: !21, line: 421, baseType: !234, size: 64, offset: 1600)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !579, file: !21, line: 424, baseType: !639, size: 64, offset: 1664)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !579, file: !21, line: 425, baseType: !643, size: 64, offset: 1728)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !270, line: 20, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !170, line: 26, baseType: !109)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !579, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !579, file: !21, line: 435, baseType: !649, size: 256, offset: 1856)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !650, line: 66, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!651 = !{!652, !660, !661, !666}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !649, file: !650, line: 67, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !654, line: 13, baseType: !655)
!654 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !215, line: 181, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 179, size: 64, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !656, file: !215, line: 180, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !270, line: 22, baseType: !169)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !649, file: !650, line: 68, baseType: !607, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !649, file: !650, line: 70, baseType: !662, size: 32, offset: 96)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !663, line: 15, size: 32, elements: !664)
!663 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !662, file: !663, line: 20, baseType: !261, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !649, file: !650, line: 72, baseType: !228, size: 128, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !579, file: !21, line: 437, baseType: !668, size: 64, offset: 2112)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !670, line: 69, size: 320, elements: !671)
!670 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!671 = !{!672, !673, !674, !694, !696, !700, !701}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !669, file: !670, line: 70, baseType: !224, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !669, file: !670, line: 71, baseType: !578, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !669, file: !670, line: 72, baseType: !675, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !670, line: 47, size: 256, elements: !678)
!678 = !{!679, !680, !686, !690}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !670, line: 49, baseType: !7, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !677, file: !670, line: 51, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!109, !224, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !677, file: !670, line: 53, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!109, !310, !684}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !677, file: !670, line: 55, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !213}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !669, file: !670, line: 73, baseType: !695, size: 16, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !669, file: !670, line: 74, baseType: !697, size: 8, offset: 208)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !270, line: 16, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !170, line: 20, baseType: !699)
!699 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !670, line: 75, baseType: !269, size: 8, offset: 216)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !670, line: 76, baseType: !702, size: 64, offset: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !670, line: 76, size: 64, elements: !703)
!703 = !{!704, !705, !712}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !702, file: !670, line: 77, baseType: !213, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !702, file: !670, line: 78, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !670, line: 86, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !708, file: !670, line: 87, baseType: !7, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !708, file: !670, line: 88, baseType: !310, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !702, file: !670, line: 79, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !670, line: 92, size: 256, elements: !716)
!716 = !{!717, !718, !719, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !715, file: !670, line: 94, baseType: !7, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !715, file: !670, line: 95, baseType: !7, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !715, file: !670, line: 96, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !715, file: !670, line: 97, baseType: !675, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !715, file: !670, line: 98, baseType: !213, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !579, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !579, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !579, file: !21, line: 442, baseType: !639, size: 64, offset: 2240)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !579, file: !21, line: 443, baseType: !643, size: 64, offset: 2304)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !579, file: !21, line: 444, baseType: !728, size: 8, offset: 2368)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !215, line: 35, baseType: !729)
!729 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !579, file: !21, line: 451, baseType: !728, size: 8, offset: 2376)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !579, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !579, file: !21, line: 455, baseType: !733, size: 64, offset: 2432)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !735, line: 23, size: 96, elements: !736)
!735 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !734, file: !735, line: 24, baseType: !109, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !734, file: !735, line: 24, baseType: !109, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !734, file: !735, line: 24, baseType: !109, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !579, file: !21, line: 458, baseType: !741, size: 64, offset: 2496)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!109}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !579, file: !21, line: 460, baseType: !745, size: 4032, align: 512, offset: 2560)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 4032, elements: !767)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !746, file: !21, line: 363, baseType: !213, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !746, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !746, file: !21, line: 367, baseType: !751, size: 448, offset: 128)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !751, file: !21, line: 320, baseType: !578, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !21, line: 321, baseType: !755, size: 384, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !756, line: 40, size: 384, elements: !757)
!756 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !756, line: 41, baseType: !759, size: 384, align: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 384, align: 64, elements: !157)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !761, line: 5, size: 192, align: 64, elements: !762)
!761 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!762 = !{!763, !764, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !760, file: !761, line: 6, baseType: !360, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !760, file: !761, line: 7, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !760, file: !761, line: 8, baseType: !765, size: 64, offset: 128)
!767 = !{!768}
!768 = !DISubrange(count: 7)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !579, file: !21, line: 463, baseType: !770, size: 192, offset: 6592)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !771, line: 8, size: 192, elements: !772)
!771 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!772 = !{!773, !774, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !770, file: !771, line: 10, baseType: !7, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !770, file: !771, line: 11, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !770, file: !771, line: 12, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !779, line: 59, size: 48, elements: !780)
!779 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!780 = !{!781, !785, !786, !787, !788, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !778, file: !779, line: 60, baseType: !782, size: 16)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !270, line: 18, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !170, line: 23, baseType: !784)
!784 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !778, file: !779, line: 61, baseType: !782, size: 16, offset: 16)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !778, file: !779, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !778, file: !779, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !779, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !778, file: !779, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !579, file: !21, line: 465, baseType: !360, size: 64, offset: 6784)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !579, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !579, file: !21, line: 470, baseType: !228, size: 128, offset: 6912)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !579, file: !21, line: 471, baseType: !794, size: 64, offset: 7040)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !796, line: 33, size: 96, elements: !797)
!796 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!797 = !{!798, !799, !800, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !795, file: !796, line: 37, baseType: !109, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !795, file: !796, line: 43, baseType: !109, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !795, file: !796, line: 45, baseType: !280, size: 16, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !796, line: 47, baseType: !280, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !579, file: !21, line: 476, baseType: !803, size: 64, offset: 7104)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !805)
!805 = !{!806, !822, !823, !824}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !804, file: !21, line: 379, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !809, line: 204, baseType: !810)
!809 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !809, line: 197, size: 192, elements: !811)
!811 = !{!812, !814, !815, !816, !818, !820}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !810, file: !809, line: 198, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !809, line: 21, baseType: !173)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !810, file: !809, line: 199, baseType: !272, size: 8, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !810, file: !809, line: 200, baseType: !272, size: 8, offset: 40)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !810, file: !809, line: 201, baseType: !817, size: 16, offset: 48)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !809, line: 17, baseType: !279)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !810, file: !809, line: 202, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !809, line: 16, baseType: !463)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !810, file: !809, line: 203, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !809, line: 22, baseType: !463)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !804, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !804, file: !21, line: 381, baseType: !310, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !804, file: !21, line: 382, baseType: !310, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !579, file: !21, line: 477, baseType: !804, size: 256, offset: 7168)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !579, file: !21, line: 480, baseType: !827, size: 64, offset: 7424)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !579, file: !21, line: 483, baseType: !830, size: 64, offset: 7488)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !579, file: !21, line: 488, baseType: !310, size: 64, offset: 7552)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !579, file: !21, line: 492, baseType: !213, size: 64, offset: 7616)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !579, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !579, file: !21, line: 495, baseType: !213, size: 64, offset: 7744)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !579, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !579, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !579, file: !21, line: 500, baseType: !839, size: 64, offset: 7872)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !841, line: 45, baseType: !842)
!841 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !579, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !579, file: !21, line: 504, baseType: !845, size: 64, offset: 8000)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !848, line: 96, size: 192, elements: !849)
!848 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!849 = !{!850, !851, !930, !934}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !847, file: !848, line: 97, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !847, file: !848, line: 98, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !848, line: 24, size: 3072, elements: !854)
!854 = !{!855, !857, !858, !859, !860, !882, !883, !884, !885, !903, !915, !916, !927, !928, !929}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !853, file: !848, line: 26, baseType: !856, size: 128)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 128, elements: !157)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !853, file: !848, line: 27, baseType: !856, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !853, file: !848, line: 28, baseType: !109, size: 32, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !853, file: !848, line: 31, baseType: !241, size: 32, align: 512, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !853, file: !848, line: 32, baseType: !861, size: 960, offset: 576)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !862, line: 206, size: 960, elements: !863)
!862 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!863 = !{!864, !873, !876, !878, !879, !881}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !861, file: !862, line: 207, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !215, line: 232, size: 128, align: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !215, line: 233, baseType: !865, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !866, file: !215, line: 234, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !865}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !861, file: !862, line: 208, baseType: !874, size: 256, offset: 64)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 256, elements: !185)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !861, file: !862, line: 209, baseType: !877, size: 256, offset: 320)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 256, elements: !185)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !861, file: !862, line: 213, baseType: !346, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !861, file: !862, line: 215, baseType: !880, size: 256, offset: 640)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !185)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 216, baseType: !269, size: 8, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !853, file: !848, line: 33, baseType: !360, size: 64, offset: 1536)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !853, file: !848, line: 34, baseType: !360, size: 64, offset: 1600)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !853, file: !848, line: 35, baseType: !728, size: 8, offset: 1664)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !853, file: !848, line: 36, baseType: !886, size: 320, offset: 1728)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !887, line: 11, size: 320, elements: !888)
!887 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!888 = !{!889, !896, !897, !902}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !886, file: !887, line: 16, baseType: !890, size: 128)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !215, line: 198, size: 128, elements: !891)
!891 = !{!892, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !215, line: 199, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !890, file: !215, line: 199, baseType: !895, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !886, file: !887, line: 17, baseType: !360, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !886, file: !887, line: 18, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !886, file: !887, line: 19, baseType: !459, size: 32, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !853, file: !848, line: 37, baseType: !904, size: 256, offset: 2048)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !905, line: 98, size: 256, elements: !906)
!905 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !904, file: !905, line: 99, baseType: !653, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !904, file: !905, line: 100, baseType: !228, size: 128, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !904, file: !905, line: 101, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !905, line: 21, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !853, file: !848, line: 38, baseType: !866, size: 128, align: 64, offset: 2304)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !853, file: !848, line: 39, baseType: !917, size: 64, offset: 2432)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !848, line: 49, size: 768, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !848, line: 50, baseType: !241, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !918, file: !848, line: 51, baseType: !877, size: 256, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !918, file: !848, line: 53, baseType: !877, size: 256, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !918, file: !848, line: 54, baseType: !360, size: 64, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !918, file: !848, line: 55, baseType: !917, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !918, file: !848, line: 56, baseType: !109, size: 32, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !918, file: !848, line: 57, baseType: !109, size: 32, offset: 736)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !853, file: !848, line: 40, baseType: !360, size: 64, offset: 2496)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !853, file: !848, line: 42, baseType: !109, size: 32, offset: 2560)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !853, file: !848, line: 43, baseType: !846, size: 64, offset: 2624)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !847, file: !848, line: 99, baseType: !931, offset: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !932, line: 211, elements: !933)
!932 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!933 = !{}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !847, file: !848, line: 100, baseType: !935, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !848, line: 63, size: 3008, elements: !937)
!937 = !{!938, !939, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !969}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !936, file: !848, line: 64, baseType: !917, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !936, file: !848, line: 65, baseType: !940, size: 192, offset: 64)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 192, elements: !311)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !936, file: !848, line: 67, baseType: !109, size: 32, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !936, file: !848, line: 68, baseType: !649, size: 256, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !848, line: 69, baseType: !241, size: 32, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !936, file: !848, line: 70, baseType: !649, size: 256, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !936, file: !848, line: 71, baseType: !360, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !936, file: !848, line: 72, baseType: !360, size: 64, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !936, file: !848, line: 73, baseType: !360, size: 64, offset: 1024)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !936, file: !848, line: 74, baseType: !360, size: 64, offset: 1088)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !936, file: !848, line: 75, baseType: !360, size: 64, offset: 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !936, file: !848, line: 76, baseType: !360, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !936, file: !848, line: 77, baseType: !360, size: 64, offset: 1280)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !936, file: !848, line: 78, baseType: !360, size: 64, offset: 1344)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !936, file: !848, line: 79, baseType: !728, size: 8, offset: 1408)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !936, file: !848, line: 80, baseType: !360, size: 64, offset: 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !936, file: !848, line: 81, baseType: !649, size: 256, offset: 1536)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !936, file: !848, line: 82, baseType: !598, size: 256, offset: 1792)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !936, file: !848, line: 84, baseType: !261, size: 32, offset: 2048)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !936, file: !848, line: 87, baseType: !360, size: 64, offset: 2112)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !936, file: !848, line: 88, baseType: !360, size: 64, offset: 2176)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !936, file: !848, line: 89, baseType: !961, size: 704, offset: 2240)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !905, line: 111, size: 704, elements: !962)
!962 = !{!963, !964, !965, !968}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !961, file: !905, line: 112, baseType: !904, size: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !961, file: !905, line: 113, baseType: !886, size: 320, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !961, file: !905, line: 116, baseType: !966, size: 64, offset: 576)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !905, line: 18, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !961, file: !905, line: 117, baseType: !109, size: 32, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !936, file: !848, line: 90, baseType: !846, size: 64, offset: 2944)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !579, file: !21, line: 515, baseType: !971, size: 64, offset: 8064)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !973, line: 117, size: 128, elements: !974)
!973 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !972, file: !973, line: 118, baseType: !645, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !972, file: !973, line: 119, baseType: !645, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !972, file: !973, line: 120, baseType: !346, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !579, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !579, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !579, file: !21, line: 520, baseType: !981, size: 64, offset: 8192)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !579, file: !21, line: 523, baseType: !983, size: 64, offset: 8256)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !579, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !579, file: !21, line: 525, baseType: !988, size: 64, offset: 8384)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !579, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !579, file: !21, line: 533, baseType: !213, size: 64, offset: 8512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !579, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !579, file: !21, line: 535, baseType: !995, size: 64, offset: 8640)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !579, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !579, file: !21, line: 539, baseType: !109, size: 32, offset: 8736)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !579, file: !21, line: 540, baseType: !999, size: 64, offset: 8768)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1001, line: 32, size: 64, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1000, file: !1001, line: 33, baseType: !645, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1000, file: !1001, line: 34, baseType: !645, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !579, file: !21, line: 563, baseType: !228, size: 128, offset: 8832)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !579, file: !21, line: 565, baseType: !228, size: 128, offset: 8960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !579, file: !21, line: 568, baseType: !1008, size: 64, offset: 9088)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !579, file: !21, line: 570, baseType: !261, size: 32, offset: 9152)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !28, line: 2382, baseType: !553, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !554, file: !28, line: 2383, baseType: !1014, size: 64, offset: 512)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !215, line: 194, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1014, file: !215, line: 195, baseType: !893, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !554, file: !28, line: 2385, baseType: !1018, offset: 576)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !932, line: 206, elements: !933)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !554, file: !28, line: 2386, baseType: !1018, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !554, file: !28, line: 2387, baseType: !1018, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !554, file: !28, line: 2388, baseType: !1022, offset: 576)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, elements: !311)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !554, file: !28, line: 2390, baseType: !1018, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !554, file: !28, line: 2391, baseType: !1018, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !554, file: !28, line: 2392, baseType: !1018, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !554, file: !28, line: 2393, baseType: !1018, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !541, file: !28, line: 1197, baseType: !1028, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !1031)
!1031 = !{!1032, !1036, !1040, !1041, !1045, !1051, !1055, !1056, !1057, !1061, !1065, !1069, !1070, !1071, !1077, !1081, !1082, !1089, !1090, !1091, !1092, !1096, !1100, !1149, !1164, !1165}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1030, file: !28, line: 2058, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!390, !540}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1030, file: !28, line: 2059, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !390}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1030, file: !28, line: 2060, baseType: !1037, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1030, file: !28, line: 2062, baseType: !1042, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !390, !109}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1030, file: !28, line: 2063, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!109, !390, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1030, file: !28, line: 2064, baseType: !1052, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!109, !390}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1030, file: !28, line: 2065, baseType: !1037, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1030, file: !28, line: 2066, baseType: !574, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1030, file: !28, line: 2067, baseType: !1058, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!109, !540, !109}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1030, file: !28, line: 2068, baseType: !1062, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!109, !540, !27}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1030, file: !28, line: 2069, baseType: !1066, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!109, !540}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1030, file: !28, line: 2070, baseType: !1062, size: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1030, file: !28, line: 2071, baseType: !1066, size: 64, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1030, file: !28, line: 2072, baseType: !1072, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!109, !425, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1030, file: !28, line: 2073, baseType: !1078, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!109, !540, !775, !310}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1030, file: !28, line: 2074, baseType: !574, size: 64, offset: 960)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1030, file: !28, line: 2076, baseType: !1083, size: 64, offset: 1024)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!109, !1086, !425}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1088, line: 66, flags: DIFlagFwdDecl)
!1088 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1030, file: !28, line: 2077, baseType: !1083, size: 64, offset: 1088)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1030, file: !28, line: 2078, baseType: !1083, size: 64, offset: 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1030, file: !28, line: 2079, baseType: !1083, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1030, file: !28, line: 2081, baseType: !1093, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!342, !540, !109, !310, !357, !550}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1030, file: !28, line: 2082, baseType: !1097, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!342, !540, !109, !224, !357, !550}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1030, file: !28, line: 2083, baseType: !1101, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1104, !390}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1132, !1133, !1134}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1106, file: !33, line: 297, baseType: !890, size: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1106, file: !33, line: 298, baseType: !228, size: 128, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1106, file: !33, line: 299, baseType: !228, size: 128, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1106, file: !33, line: 300, baseType: !228, size: 128, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1106, file: !33, line: 301, baseType: !649, size: 256, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1106, file: !33, line: 302, baseType: !241, size: 32, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1106, file: !33, line: 303, baseType: !261, size: 32, offset: 800)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1106, file: !33, line: 304, baseType: !540, size: 64, offset: 832)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1106, file: !33, line: 305, baseType: !1117, size: 64, offset: 896)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !1118)
!1118 = !{!1119, !1131}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !33, line: 69, baseType: !1120, size: 32)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !33, line: 69, size: 32, elements: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1120, file: !33, line: 70, baseType: !396, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1120, file: !33, line: 71, baseType: !405, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1120, file: !33, line: 72, baseType: !1125, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1126, line: 24, baseType: !1127)
!1126 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1126, line: 22, size: 32, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1127, file: !1126, line: 23, baseType: !1130, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1126, line: 20, baseType: !402)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1117, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1106, file: !33, line: 306, baseType: !550, size: 64, offset: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1106, file: !33, line: 307, baseType: !360, size: 64, offset: 1024)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1106, file: !33, line: 308, baseType: !1135, size: 576, offset: 1088)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !1136)
!1136 = !{!1137, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1148}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1135, file: !33, line: 206, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !171)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1135, file: !33, line: 207, baseType: !1138, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1135, file: !33, line: 208, baseType: !1138, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1135, file: !33, line: 209, baseType: !1138, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1135, file: !33, line: 210, baseType: !1138, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1135, file: !33, line: 211, baseType: !1138, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1135, file: !33, line: 212, baseType: !1138, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1135, file: !33, line: 213, baseType: !1146, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1147, line: 8, baseType: !169)
!1147 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1135, file: !33, line: 214, baseType: !1146, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1030, file: !28, line: 2085, baseType: !1150, size: 64, offset: 1472)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!346, !540, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1155, line: 15, size: 256, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1156 = !{!1157, !1158, !1159, !1160, !1161}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1154, file: !1155, line: 16, baseType: !214, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1154, file: !1155, line: 19, baseType: !109, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1154, file: !1155, line: 26, baseType: !360, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1154, file: !1155, line: 33, baseType: !360, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1154, file: !1155, line: 36, baseType: !1162, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1030, file: !28, line: 2087, baseType: !1150, size: 64, offset: 1536)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1030, file: !28, line: 2089, baseType: !574, size: 64, offset: 1600)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !541, file: !28, line: 1198, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !1170)
!1170 = !{!1171, !1175, !1179, !1183, !1184, !1185, !1186, !1187, !1192, !1197, !1201}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1169, file: !33, line: 325, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!109, !1105}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1169, file: !33, line: 326, baseType: !1176, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1105, !540, !109}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1169, file: !33, line: 327, baseType: !1180, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1105}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1169, file: !33, line: 328, baseType: !1172, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1169, file: !33, line: 329, baseType: !1172, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1169, file: !33, line: 330, baseType: !1172, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1169, file: !33, line: 331, baseType: !1058, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1169, file: !33, line: 334, baseType: !1188, size: 64, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!1191, !390}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1169, file: !33, line: 335, baseType: !1193, size: 64, offset: 512)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!109, !390, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1169, file: !33, line: 337, baseType: !1198, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!109, !390, !1191}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1169, file: !33, line: 339, baseType: !1202, size: 64, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!109, !540, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !541, file: !28, line: 1199, baseType: !1207, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !1210)
!1210 = !{!1211, !1222, !1223, !1227, !1228, !1229, !1244, !1267, !1271, !1272, !1295}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1209, file: !33, line: 431, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!109, !540, !109, !109, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1218, line: 8, size: 128, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1217, file: !1218, line: 9, baseType: !534, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1217, file: !1218, line: 10, baseType: !425, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1209, file: !33, line: 432, baseType: !1058, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1209, file: !33, line: 433, baseType: !1224, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!109, !540, !7}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1209, file: !33, line: 434, baseType: !1224, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1209, file: !33, line: 435, baseType: !1058, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1209, file: !33, line: 436, baseType: !1230, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!109, !540, !109, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1234, file: !33, line: 418, baseType: !109, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1234, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1234, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1234, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1234, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1234, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1234, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1234, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1209, file: !33, line: 437, baseType: !1245, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!109, !540, !1117, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1249, file: !33, line: 346, baseType: !109, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1249, file: !33, line: 347, baseType: !462, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1249, file: !33, line: 348, baseType: !462, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1249, file: !33, line: 349, baseType: !462, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1249, file: !33, line: 350, baseType: !462, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1249, file: !33, line: 351, baseType: !462, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1249, file: !33, line: 352, baseType: !462, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1249, file: !33, line: 353, baseType: !659, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1249, file: !33, line: 355, baseType: !659, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1249, file: !33, line: 356, baseType: !109, size: 32, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1249, file: !33, line: 357, baseType: !109, size: 32, offset: 608)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1249, file: !33, line: 358, baseType: !462, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1249, file: !33, line: 359, baseType: !462, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1249, file: !33, line: 360, baseType: !462, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1249, file: !33, line: 361, baseType: !659, size: 64, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1249, file: !33, line: 362, baseType: !109, size: 32, offset: 896)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1209, file: !33, line: 438, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!109, !540, !1205, !1248}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1209, file: !33, line: 440, baseType: !1245, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1209, file: !33, line: 441, baseType: !1273, size: 64, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!109, !540, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1277, file: !33, line: 412, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1277, file: !33, line: 413, baseType: !1281, size: 1344, offset: 64)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 1344, elements: !311)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1294}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !33, line: 398, baseType: !7, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1282, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1282, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1282, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1282, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1282, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1282, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1282, file: !33, line: 406, baseType: !464, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1282, file: !33, line: 407, baseType: !1293, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !215, line: 132, baseType: !462)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1282, file: !33, line: 408, baseType: !1293, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1209, file: !33, line: 442, baseType: !1224, size: 64, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !541, file: !28, line: 1200, baseType: !1297, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !541, file: !28, line: 1201, baseType: !360, size: 64, offset: 640)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !541, file: !28, line: 1202, baseType: !360, size: 64, offset: 704)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !541, file: !28, line: 1203, baseType: !360, size: 64, offset: 768)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !541, file: !28, line: 1204, baseType: !425, size: 64, offset: 832)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !541, file: !28, line: 1205, baseType: !1305, size: 320, offset: 896)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1306, line: 48, size: 320, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1307 = !{!1308, !1309, !1310, !1311, !1312}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1305, file: !1306, line: 49, baseType: !653, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1305, file: !1306, line: 55, baseType: !653, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1305, file: !1306, line: 57, baseType: !662, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1305, file: !1306, line: 59, baseType: !607, size: 32, offset: 160)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1305, file: !1306, line: 60, baseType: !228, size: 128, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !541, file: !28, line: 1206, baseType: !109, size: 32, offset: 1216)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !541, file: !28, line: 1207, baseType: !261, size: 32, offset: 1248)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !541, file: !28, line: 1209, baseType: !213, size: 64, offset: 1280)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !541, file: !28, line: 1211, baseType: !1317, size: 64, offset: 1344)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !541, file: !28, line: 1223, baseType: !1322, size: 64, offset: 1408)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !442, line: 34, size: 64, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1322, file: !442, line: 35, baseType: !445, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !541, file: !28, line: 1224, baseType: !228, size: 128, offset: 1472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !541, file: !28, line: 1225, baseType: !1327, size: 64, offset: 1600)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !541, file: !28, line: 1226, baseType: !1330, size: 64, offset: 1664)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !541, file: !28, line: 1227, baseType: !1333, size: 64, offset: 1728)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !541, file: !28, line: 1228, baseType: !1336, size: 64, offset: 1792)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !541, file: !28, line: 1229, baseType: !890, size: 128, offset: 1856)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !541, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !541, file: !28, line: 1231, baseType: !1341, size: 2496, offset: 2048)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1347, !1379}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1341, file: !33, line: 522, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1341, file: !33, line: 523, baseType: !1305, size: 320, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1341, file: !33, line: 524, baseType: !1346, size: 192, offset: 384)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !311)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1341, file: !33, line: 525, baseType: !1348, size: 1728, offset: 576)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 1728, elements: !311)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1350)
!1350 = !{!1351, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1349, file: !33, line: 223, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1354)
!1354 = !{!1355, !1356, !1369, !1370}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1353, file: !33, line: 446, baseType: !109, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1353, file: !33, line: 447, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1359, file: !33, line: 313, baseType: !1058, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1359, file: !33, line: 314, baseType: !1058, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1359, file: !33, line: 315, baseType: !1058, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1359, file: !33, line: 316, baseType: !1058, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1359, file: !33, line: 317, baseType: !1172, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1359, file: !33, line: 318, baseType: !1172, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1359, file: !33, line: 319, baseType: !1172, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1359, file: !33, line: 320, baseType: !1202, size: 64, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1353, file: !33, line: 448, baseType: !578, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1353, file: !33, line: 449, baseType: !1352, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1349, file: !33, line: 224, baseType: !109, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1349, file: !33, line: 226, baseType: !228, size: 128, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1349, file: !33, line: 227, baseType: !360, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1349, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1349, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1349, file: !33, line: 230, baseType: !1138, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1349, file: !33, line: 231, baseType: !1138, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1349, file: !33, line: 232, baseType: !213, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1341, file: !33, line: 526, baseType: !1380, size: 192, offset: 2304)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 192, elements: !311)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !541, file: !28, line: 1233, baseType: !1382, size: 2368, offset: 4544)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1382, file: !28, line: 1185, baseType: !280, size: 16)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1382, file: !28, line: 1186, baseType: !280, size: 16, offset: 16)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1382, file: !28, line: 1187, baseType: !1387, size: 2304, offset: 64)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1388, size: 2304, elements: !311)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1389, line: 12, size: 768, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1390 = !{!1391, !1405, !1406, !3566, !3567}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1388, file: !1389, line: 13, baseType: !1392, size: 384)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1393, line: 17, size: 384, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1394 = !{!1395, !1396, !1397, !1404}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1392, file: !1393, line: 18, baseType: !109, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1392, file: !1393, line: 19, baseType: !109, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1392, file: !1393, line: 20, baseType: !1398, size: 192, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1399, line: 41, baseType: !1400)
!1399 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1399, line: 37, size: 192, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1400, file: !1399, line: 38, baseType: !241, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1400, file: !1399, line: 39, baseType: !228, size: 128, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1392, file: !1393, line: 22, baseType: !866, size: 128, align: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1388, file: !1389, line: 14, baseType: !720, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1388, file: !1389, line: 15, baseType: !1407, size: 64, offset: 448)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1408, line: 16, size: 64, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1407, file: !1408, line: 17, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1088, line: 746, size: 58368, elements: !1413)
!1413 = !{!1414, !1422, !1423, !1424, !1430, !1431, !1432, !1433, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1504, !1515, !1610, !1614, !1617, !1648, !1649, !1650, !1651, !1662, !1664, !1665, !1666, !1667, !1668, !1669, !1680, !1681, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1698, !1699, !1706, !1707, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2740, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2788, !2794, !2795, !2796, !2797, !2798, !2802, !2805, !2812, !2817, !2820, !2823, !2826, !2829, !2967, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3005, !3006, !3007, !3016, !3024, !3025, !3026, !3027, !3028, !3033, !3034, !3035, !3038, !3039, !3042, !3045, !3048, !3056, !3059, !3060, !3146, !3147, !3148, !3149, !3150, !3156, !3157, !3158, !3159, !3162, !3163, !3166, !3169, !3170, !3173, !3174, !3175, !3178, !3179, !3180, !3181, !3182, !3183, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3215, !3216, !3222, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3234, !3306, !3308, !3309, !3310, !3311, !3312, !3313, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3343, !3344, !3345}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1412, file: !1088, line: 752, baseType: !1415, size: 192)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1416, line: 56, size: 192, elements: !1417)
!1416 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1417 = !{!1418, !1419, !1420, !1421}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1416, line: 57, baseType: !360, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1415, file: !1416, line: 58, baseType: !360, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1415, file: !1416, line: 59, baseType: !459, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1415, file: !1416, line: 61, baseType: !459, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1412, file: !1088, line: 754, baseType: !7, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1412, file: !1088, line: 767, baseType: !213, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1412, file: !1088, line: 768, baseType: !1425, size: 32, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1426, line: 113, baseType: !1427)
!1426 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1426, line: 111, size: 32, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1427, file: !1426, line: 112, baseType: !261, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !1088, line: 770, baseType: !7, size: 32, offset: 352)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1412, file: !1088, line: 771, baseType: !7, size: 32, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1412, file: !1088, line: 774, baseType: !109, size: 32, offset: 416)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1412, file: !1088, line: 775, baseType: !1434, size: 128, offset: 448)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1435, line: 58, size: 128, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1436 = !{!1437, !1443, !1448, !1449}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1434, file: !1435, line: 59, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1439, line: 60, size: 64, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1438, file: !1439, line: 61, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1435, line: 60, baseType: !1444, size: 32, offset: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !1435, line: 60, size: 32, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1444, file: !1435, line: 61, baseType: !7, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1444, file: !1435, line: 62, baseType: !261, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1434, file: !1435, line: 65, baseType: !278, size: 16, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1434, file: !1435, line: 65, baseType: !278, size: 16, offset: 112)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1412, file: !1088, line: 776, baseType: !7, size: 32, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1412, file: !1088, line: 777, baseType: !360, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1412, file: !1088, line: 778, baseType: !1411, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1412, file: !1088, line: 787, baseType: !109, size: 32, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1412, file: !1088, line: 788, baseType: !109, size: 32, offset: 800)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1412, file: !1088, line: 790, baseType: !109, size: 32, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1412, file: !1088, line: 792, baseType: !109, size: 32, offset: 864)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1412, file: !1088, line: 793, baseType: !109, size: 32, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1412, file: !1088, line: 794, baseType: !109, size: 32, offset: 928)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1412, file: !1088, line: 795, baseType: !7, size: 32, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1412, file: !1088, line: 797, baseType: !1461, size: 2048, offset: 1024)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1088, line: 551, size: 2048, elements: !1462)
!1462 = !{!1463, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1483, !1486, !1487, !1488}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1461, file: !1088, line: 553, baseType: !1464, size: 128)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1088, line: 411, size: 128, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1464, file: !1088, line: 412, baseType: !360, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1464, file: !1088, line: 413, baseType: !459, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1461, file: !1088, line: 554, baseType: !760, size: 192, align: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1461, file: !1088, line: 555, baseType: !462, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1461, file: !1088, line: 556, baseType: !462, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1461, file: !1088, line: 558, baseType: !228, size: 128, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1461, file: !1088, line: 559, baseType: !7, size: 32, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1461, file: !1088, line: 561, baseType: !462, size: 64, offset: 640)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1461, file: !1088, line: 562, baseType: !462, size: 64, offset: 704)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1461, file: !1088, line: 563, baseType: !462, size: 64, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1461, file: !1088, line: 564, baseType: !462, size: 64, offset: 832)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1461, file: !1088, line: 565, baseType: !659, size: 64, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1461, file: !1088, line: 566, baseType: !462, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1461, file: !1088, line: 568, baseType: !462, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1461, file: !1088, line: 571, baseType: !109, size: 32, offset: 1088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1461, file: !1088, line: 572, baseType: !1482, size: 64, offset: 1152)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1461, file: !1088, line: 574, baseType: !1484, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1088, line: 49, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1461, file: !1088, line: 576, baseType: !1484, size: 64, offset: 1280)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1461, file: !1088, line: 578, baseType: !360, size: 64, offset: 1344)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1461, file: !1088, line: 588, baseType: !1489, size: 512, align: 512, offset: 1536)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1088, line: 497, size: 512, align: 512, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1489, file: !1088, line: 498, baseType: !462, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1489, file: !1088, line: 499, baseType: !462, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1489, file: !1088, line: 500, baseType: !462, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1489, file: !1088, line: 501, baseType: !459, size: 32, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1489, file: !1088, line: 502, baseType: !459, size: 32, offset: 224)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1489, file: !1088, line: 503, baseType: !360, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1489, file: !1088, line: 504, baseType: !360, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1489, file: !1088, line: 505, baseType: !360, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1489, file: !1088, line: 506, baseType: !1500, size: 64, align: 64, offset: 448)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1088, line: 445, size: 64, align: 64, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1500, file: !1088, line: 446, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1500, file: !1088, line: 447, baseType: !7, size: 32, offset: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1412, file: !1088, line: 798, baseType: !1505, size: 384, offset: 3072)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1088, line: 592, size: 384, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1505, file: !1088, line: 593, baseType: !228, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1505, file: !1088, line: 594, baseType: !360, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1505, file: !1088, line: 595, baseType: !360, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1505, file: !1088, line: 596, baseType: !7, size: 32, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1505, file: !1088, line: 597, baseType: !280, size: 16, offset: 288)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1505, file: !1088, line: 598, baseType: !280, size: 16, offset: 304)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1505, file: !1088, line: 600, baseType: !1514, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1412, file: !1088, line: 799, baseType: !1516, size: 1792, offset: 3456)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1088, line: 610, size: 1792, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1607, !1608}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1516, file: !1088, line: 611, baseType: !760, size: 192, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1516, file: !1088, line: 618, baseType: !462, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1516, file: !1088, line: 619, baseType: !462, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1516, file: !1088, line: 620, baseType: !462, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1516, file: !1088, line: 621, baseType: !462, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1516, file: !1088, line: 622, baseType: !462, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1516, file: !1088, line: 629, baseType: !659, size: 64, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1516, file: !1088, line: 630, baseType: !462, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1516, file: !1088, line: 631, baseType: !7, size: 32, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1516, file: !1088, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1516, file: !1088, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1516, file: !1088, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1516, file: !1088, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1516, file: !1088, line: 662, baseType: !1532, size: 512, offset: 704)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1533)
!1533 = !{!1534, !1542, !1543, !1548, !1603, !1604, !1605, !1606}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1532, file: !39, line: 119, baseType: !1535, size: 256)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1536, line: 9, size: 256, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1535, file: !1536, line: 10, baseType: !760, size: 192, align: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1535, file: !1536, line: 11, baseType: !1540, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1541, line: 29, baseType: !659)
!1541 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1532, file: !39, line: 120, baseType: !1540, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1532, file: !39, line: 121, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!38, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1532, file: !39, line: 122, baseType: !1549, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1551)
!1551 = !{!1552, !1577, !1578, !1581, !1586, !1587, !1598, !1602}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1550, file: !39, line: 160, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !39, line: 216, baseType: !607, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1554, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1554, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1554, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1554, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1554, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1554, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1554, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1554, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1554, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1554, file: !39, line: 227, baseType: !280, size: 16, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1554, file: !39, line: 228, baseType: !280, size: 16, offset: 208)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1554, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1554, file: !39, line: 235, baseType: !1540, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1554, file: !39, line: 236, baseType: !1547, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1554, file: !39, line: 237, baseType: !1540, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1554, file: !39, line: 238, baseType: !1547, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1554, file: !39, line: 239, baseType: !1574, size: 4096, align: 512, offset: 512)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1550, size: 4096, align: 512, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 8)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1550, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1550, file: !39, line: 162, baseType: !1579, size: 32, offset: 96)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !215, line: 32, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !344, line: 96, baseType: !109)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1550, file: !39, line: 163, baseType: !1582, size: 32, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !432, line: 274, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !432, line: 274, size: 32, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1583, file: !432, line: 274, baseType: !436, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1550, file: !39, line: 164, baseType: !1547, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1550, file: !39, line: 165, baseType: !1588, size: 128, offset: 256)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1536, line: 14, size: 128, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1588, file: !1536, line: 15, baseType: !1591, size: 128)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !761, line: 26, size: 128, elements: !1592)
!1592 = !{!1593, !1597}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1591, file: !761, line: 27, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !761, line: 12, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1594, file: !761, line: 13, baseType: !765, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1591, file: !761, line: 28, baseType: !765, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1550, file: !39, line: 166, baseType: !1599, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!1540}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1550, file: !39, line: 167, baseType: !1540, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1532, file: !39, line: 123, baseType: !269, size: 8, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1532, file: !39, line: 124, baseType: !269, size: 8, offset: 456)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1532, file: !39, line: 125, baseType: !269, size: 8, offset: 464)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1532, file: !39, line: 126, baseType: !269, size: 8, offset: 472)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1516, file: !1088, line: 671, baseType: !1532, size: 512, offset: 1216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1516, file: !1088, line: 679, baseType: !1609, size: 64, offset: 1728)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1412, file: !1088, line: 800, baseType: !1611, size: 64, offset: 5248)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1088, line: 800, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1412, file: !1088, line: 809, baseType: !1615, size: 64, offset: 5312)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1088, line: 70, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1412, file: !1088, line: 825, baseType: !1618, size: 2048, align: 512, offset: 5632)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1088, line: 509, size: 2048, align: 512, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1618, file: !1088, line: 511, baseType: !462, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1618, file: !1088, line: 512, baseType: !462, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1618, file: !1088, line: 513, baseType: !462, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1618, file: !1088, line: 514, baseType: !462, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1618, file: !1088, line: 515, baseType: !462, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1618, file: !1088, line: 516, baseType: !462, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1618, file: !1088, line: 518, baseType: !462, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1618, file: !1088, line: 519, baseType: !462, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1618, file: !1088, line: 520, baseType: !659, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1618, file: !1088, line: 522, baseType: !462, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1618, file: !1088, line: 523, baseType: !462, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1618, file: !1088, line: 524, baseType: !659, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1618, file: !1088, line: 526, baseType: !659, size: 64, offset: 768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1618, file: !1088, line: 527, baseType: !462, size: 64, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1618, file: !1088, line: 529, baseType: !462, size: 64, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1618, file: !1088, line: 530, baseType: !462, size: 64, offset: 960)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1618, file: !1088, line: 531, baseType: !462, size: 64, offset: 1024)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1618, file: !1088, line: 532, baseType: !462, size: 64, offset: 1088)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1618, file: !1088, line: 533, baseType: !462, size: 64, offset: 1152)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1618, file: !1088, line: 535, baseType: !462, size: 64, offset: 1216)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1618, file: !1088, line: 536, baseType: !462, size: 64, offset: 1280)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1618, file: !1088, line: 537, baseType: !462, size: 64, offset: 1344)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1618, file: !1088, line: 538, baseType: !462, size: 64, offset: 1408)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1618, file: !1088, line: 539, baseType: !462, size: 64, offset: 1472)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1618, file: !1088, line: 540, baseType: !462, size: 64, offset: 1536)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1618, file: !1088, line: 541, baseType: !462, size: 64, offset: 1600)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1618, file: !1088, line: 542, baseType: !462, size: 64, offset: 1664)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1618, file: !1088, line: 543, baseType: !462, size: 64, offset: 1728)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1412, file: !1088, line: 833, baseType: !7, size: 32, offset: 7680)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1412, file: !1088, line: 836, baseType: !7, size: 32, offset: 7712)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1412, file: !1088, line: 837, baseType: !109, size: 32, offset: 7744)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1412, file: !1088, line: 838, baseType: !1652, size: 64, offset: 7808)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1655, line: 19, baseType: !1656)
!1655 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1655, line: 19, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1656, file: !1655, line: 19, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 64, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 1)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1412, file: !1088, line: 839, baseType: !1663, size: 64, offset: 7872)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1412, file: !1088, line: 840, baseType: !1654, size: 64, offset: 7936)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1412, file: !1088, line: 841, baseType: !213, size: 64, offset: 8000)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1412, file: !1088, line: 843, baseType: !280, size: 16, offset: 8064)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1412, file: !1088, line: 845, baseType: !280, size: 16, offset: 8080)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1412, file: !1088, line: 848, baseType: !109, size: 32, offset: 8096)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1412, file: !1088, line: 849, baseType: !1670, size: 32, offset: 8128)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1088, line: 718, size: 32, elements: !1671)
!1671 = !{!1672, !1679}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1670, file: !1088, line: 724, baseType: !1673, size: 32)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !1088, line: 719, size: 32, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1673, file: !1088, line: 720, baseType: !269, size: 8)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1673, file: !1088, line: 721, baseType: !269, size: 8, offset: 8)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1673, file: !1088, line: 722, baseType: !269, size: 8, offset: 16)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1673, file: !1088, line: 723, baseType: !269, size: 8, offset: 24)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1670, file: !1088, line: 725, baseType: !459, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1412, file: !1088, line: 850, baseType: !228, size: 128, offset: 8192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1412, file: !1088, line: 851, baseType: !1682, size: 64, offset: 8320)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1088, line: 60, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1412, file: !1088, line: 855, baseType: !360, size: 64, offset: 8384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1412, file: !1088, line: 856, baseType: !269, size: 8, offset: 8448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1412, file: !1088, line: 857, baseType: !269, size: 8, offset: 8456)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1412, file: !1088, line: 858, baseType: !109, size: 32, offset: 8480)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1412, file: !1088, line: 859, baseType: !228, size: 128, offset: 8512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1412, file: !1088, line: 860, baseType: !109, size: 32, offset: 8640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1412, file: !1088, line: 861, baseType: !228, size: 128, offset: 8704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1412, file: !1088, line: 873, baseType: !1692, size: 256, offset: 8832)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1088, line: 376, size: 256, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1692, file: !1088, line: 381, baseType: !360, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1692, file: !1088, line: 384, baseType: !464, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1692, file: !1088, line: 389, baseType: !464, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1692, file: !1088, line: 392, baseType: !464, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1412, file: !1088, line: 875, baseType: !228, size: 128, offset: 9088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1412, file: !1088, line: 877, baseType: !1700, size: 320, offset: 9216)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1701, line: 86, size: 320, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1700, file: !1701, line: 87, baseType: !109, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1700, file: !1701, line: 88, baseType: !228, size: 128, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1700, file: !1701, line: 89, baseType: !228, size: 128, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1412, file: !1088, line: 878, baseType: !760, size: 192, align: 64, offset: 9536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1412, file: !1088, line: 881, baseType: !1708, size: 64, offset: 9728)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1710)
!1710 = !{!1711, !2654}
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !65, line: 734, baseType: !1712, size: 10240)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1709, file: !65, line: 734, size: 10240, elements: !1713)
!1713 = !{!1714, !1718, !1731, !2531, !2532, !2533, !2534, !2535, !2536, !2543, !2544, !2545, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2584, !2586, !2589, !2634, !2635, !2636, !2639, !2640, !2641, !2644, !2645, !2646, !2652, !2653}
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !65, line: 739, baseType: !1715, size: 512, align: 512)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1712, file: !65, line: 739, size: 512, align: 512, elements: !1716)
!1716 = !{!1717}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1715, file: !65, line: 747, baseType: !261, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1712, file: !65, line: 750, baseType: !1719, size: 128, offset: 512)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1720, line: 218, size: 128, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1721 = !{!1722, !1729, !1730}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 219, baseType: !1723, size: 32)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 219, size: 32, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1723, file: !1720, line: 220, baseType: !241, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1723, file: !1720, line: 221, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1720, line: 197, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1720, line: 197, elements: !933)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1719, file: !1720, line: 223, baseType: !7, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1719, file: !1720, line: 224, baseType: !213, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1712, file: !65, line: 752, baseType: !1732, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!360, !1735, !360, !360, !360, !360}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1737)
!1737 = !{!1738, !1744, !1745, !1747, !1748, !1749, !1750, !1751, !1801, !1991, !2000, !2001, !2002, !2521, !2522, !2523, !2524, !2526, !2527, !2530}
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !28, line: 995, baseType: !1739, size: 128)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !28, line: 995, size: 128, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1739, file: !28, line: 996, baseType: !1438, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1739, file: !28, line: 997, baseType: !866, size: 128, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1739, file: !28, line: 998, baseType: !7, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1736, file: !28, line: 1005, baseType: !241, size: 32, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1736, file: !28, line: 1006, baseType: !1746, size: 32, offset: 160)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !215, line: 156, baseType: !7)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1736, file: !28, line: 1007, baseType: !653, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1736, file: !28, line: 1008, baseType: !649, size: 256, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1736, file: !28, line: 1009, baseType: !550, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1736, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1736, file: !28, line: 1011, baseType: !1752, size: 256, offset: 640)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1753)
!1753 = !{!1754, !1775, !1797, !1798, !1799, !1800}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1752, file: !28, line: 949, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1756, line: 34, baseType: !1757)
!1756 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1756, line: 25, size: 64, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1757, file: !1756, line: 26, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1761, line: 27, baseType: !1762)
!1761 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1761, line: 13, size: 64, elements: !1763)
!1763 = !{!1764, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !1761, line: 14, baseType: !1765, size: 32)
!1765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !1761, line: 14, size: 32, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1765, file: !1761, line: 15, baseType: !261, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1761, line: 16, baseType: !1769, size: 32)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1765, file: !1761, line: 16, size: 32, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1769, file: !1761, line: 18, baseType: !269, size: 8)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1769, file: !1761, line: 19, baseType: !1773, size: 24, offset: 8)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 24, elements: !311)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1762, file: !1761, line: 26, baseType: !253, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1752, file: !28, line: 950, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1784, !1785, !1786, !1787}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1777, file: !13, line: 61, baseType: !1425, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1777, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !13, line: 63, baseType: !241, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1777, file: !13, line: 65, baseType: !1783, size: 256, offset: 128)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, size: 256, elements: !185)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1777, file: !13, line: 66, baseType: !1014, size: 64, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1777, file: !13, line: 68, baseType: !1398, size: 192, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1777, file: !13, line: 69, baseType: !866, size: 128, align: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1777, file: !13, line: 70, baseType: !1788, offset: 768)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1789, elements: !1795)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1789, file: !13, line: 55, baseType: !109, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1789, file: !13, line: 56, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1795 = !{!1796}
!1796 = !DISubrange(count: -1)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1752, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1752, file: !28, line: 952, baseType: !396, size: 32, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1752, file: !28, line: 952, baseType: !396, size: 32, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1752, file: !28, line: 953, baseType: !109, size: 32, offset: 224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1736, file: !28, line: 1012, baseType: !1802, size: 64, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1805, line: 110, size: 1472, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1823, !1824, !1825, !1826, !1827, !1828, !1936, !1937, !1938, !1939, !1940, !1971, !1974, !1978, !1986}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1804, file: !1805, line: 111, baseType: !653, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1804, file: !1805, line: 112, baseType: !396, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1804, file: !1805, line: 113, baseType: !405, size: 32, offset: 96)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1804, file: !1805, line: 114, baseType: !396, size: 32, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1804, file: !1805, line: 115, baseType: !405, size: 32, offset: 160)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1804, file: !1805, line: 116, baseType: !396, size: 32, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1804, file: !1805, line: 117, baseType: !405, size: 32, offset: 224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1804, file: !1805, line: 118, baseType: !396, size: 32, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1804, file: !1805, line: 119, baseType: !405, size: 32, offset: 288)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1804, file: !1805, line: 120, baseType: !7, size: 32, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1804, file: !1805, line: 121, baseType: !1818, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1819, line: 24, baseType: !1820)
!1819 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1819, line: 24, size: 64, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1820, file: !1819, line: 24, baseType: !462, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1804, file: !1805, line: 122, baseType: !1818, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1804, file: !1805, line: 123, baseType: !1818, size: 64, offset: 512)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1804, file: !1805, line: 124, baseType: !1818, size: 64, offset: 576)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1804, file: !1805, line: 125, baseType: !1818, size: 64, offset: 640)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1804, file: !1805, line: 127, baseType: !272, size: 8, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1804, file: !1805, line: 129, baseType: !1829, size: 64, offset: 768)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1831, line: 195, size: 1728, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1832 = !{!1833, !1834, !1837, !1842, !1843, !1846, !1847, !1852, !1853, !1854, !1855, !1858, !1859, !1860, !1861, !1862, !1900, !1921}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1830, file: !1831, line: 196, baseType: !1425, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1830, file: !1831, line: 197, baseType: !1835, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1831, line: 28, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !215, line: 104, baseType: !645)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1831, line: 198, baseType: !1838, size: 192, offset: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1831, line: 198, size: 192, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1838, file: !1831, line: 199, baseType: !228, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1838, file: !1831, line: 200, baseType: !760, size: 192, align: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1830, file: !1831, line: 205, baseType: !1305, size: 320, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1830, file: !1831, line: 206, baseType: !1844, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1831, line: 206, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1830, file: !1831, line: 207, baseType: !213, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1831, line: 208, baseType: !1848, size: 64, offset: 704)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1831, line: 208, size: 64, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1848, file: !1831, line: 209, baseType: !1146, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1848, file: !1831, line: 210, baseType: !1146, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1830, file: !1831, line: 212, baseType: !1146, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1830, file: !1831, line: 213, baseType: !396, size: 32, offset: 832)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1830, file: !1831, line: 214, baseType: !405, size: 32, offset: 864)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1830, file: !1831, line: 215, baseType: !1856, size: 32, offset: 896)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1831, line: 31, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !215, line: 110, baseType: !459)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1830, file: !1831, line: 216, baseType: !280, size: 16, offset: 928)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1830, file: !1831, line: 217, baseType: !280, size: 16, offset: 944)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1830, file: !1831, line: 221, baseType: !784, size: 16, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !1831, line: 228, baseType: !360, size: 64, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1831, line: 245, baseType: !1863, size: 320, offset: 1088)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1831, line: 245, size: 320, elements: !1864)
!1864 = !{!1865, !1892}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1863, file: !1831, line: 246, baseType: !1866, size: 320)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1831, line: 114, size: 320, elements: !1867)
!1867 = !{!1868, !1869, !1881, !1884, !1891}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1866, file: !1831, line: 116, baseType: !360, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1831, line: 117, baseType: !1870, size: 64, offset: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1831, line: 117, size: 64, elements: !1871)
!1871 = !{!1872, !1880}
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1831, line: 118, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1831, line: 118, size: 64, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1873, file: !1831, line: 120, baseType: !278, size: 16)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1873, file: !1831, line: 121, baseType: !1877, size: 48, offset: 16)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, elements: !1878)
!1878 = !{!1879}
!1879 = !DISubrange(count: 6)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1870, file: !1831, line: 127, baseType: !360, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1866, file: !1831, line: 129, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1831, line: 102, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1866, file: !1831, line: 130, baseType: !1885, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1831, line: 108, size: 192, elements: !1887)
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1886, file: !1831, line: 109, baseType: !866, size: 128, align: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1886, file: !1831, line: 110, baseType: !1425, size: 32, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1886, file: !1831, line: 111, baseType: !728, size: 8, offset: 160)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1866, file: !1831, line: 131, baseType: !224, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !1831, line: 247, baseType: !1893, size: 320)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !1831, line: 247, size: 320, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1893, file: !1831, line: 248, baseType: !360, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1893, file: !1831, line: 249, baseType: !360, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1893, file: !1831, line: 250, baseType: !1882, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1893, file: !1831, line: 251, baseType: !1885, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1893, file: !1831, line: 252, baseType: !310, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1831, line: 260, baseType: !1901, size: 256, offset: 1408)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1831, line: 260, size: 256, elements: !1902)
!1902 = !{!1903, !1909}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1901, file: !1831, line: 261, baseType: !1904, size: 256)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1831, line: 134, size: 256, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1904, file: !1831, line: 135, baseType: !213, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1904, file: !1831, line: 136, baseType: !1908, size: 256)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 256, elements: !185)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1831, line: 262, baseType: !1910, size: 256)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !1831, line: 262, size: 256, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1910, file: !1831, line: 264, baseType: !228, size: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1910, file: !1831, line: 265, baseType: !1914, size: 128, offset: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1915, line: 22, size: 128, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1916 = !{!1917, !1920}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1914, file: !1915, line: 23, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1915, line: 23, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1914, file: !1915, line: 24, baseType: !360, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1830, file: !1831, line: 280, baseType: !1922, size: 64, offset: 1664)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1831, line: 176, size: 192, elements: !1924)
!1924 = !{!1925, !1934, !1935}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1923, file: !1831, line: 177, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1831, line: 171, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!109, !1829, !1930, !1932, !1829}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1923, file: !1831, line: 178, baseType: !1829, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1923, file: !1831, line: 179, baseType: !1882, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1804, file: !1805, line: 130, baseType: !1829, size: 64, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1804, file: !1805, line: 131, baseType: !1829, size: 64, offset: 896)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1804, file: !1805, line: 132, baseType: !1829, size: 64, offset: 960)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1804, file: !1805, line: 135, baseType: !213, size: 64, offset: 1024)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1804, file: !1805, line: 137, baseType: !1941, size: 64, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1943, line: 14, size: 1088, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1944 = !{!1945, !1946, !1955, !1956, !1957, !1958, !1959, !1960}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1942, file: !1943, line: 15, baseType: !1425, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1942, file: !1943, line: 17, baseType: !1947, size: 320, offset: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1948, line: 22, size: 320, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1947, file: !1948, line: 23, baseType: !607, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1947, file: !1948, line: 24, baseType: !659, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1947, file: !1948, line: 26, baseType: !228, size: 128, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1947, file: !1948, line: 28, baseType: !1954, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1942, file: !1943, line: 19, baseType: !360, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1942, file: !1943, line: 20, baseType: !653, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1942, file: !1943, line: 23, baseType: !890, size: 128, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1942, file: !1943, line: 24, baseType: !396, size: 32, offset: 640)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1942, file: !1943, line: 29, baseType: !653, size: 64, offset: 704)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1942, file: !1943, line: 36, baseType: !1961, size: 320, offset: 768)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1962, line: 15, size: 320, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !1962, line: 16, baseType: !607, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1961, file: !1962, line: 18, baseType: !109, size: 32, offset: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1961, file: !1962, line: 19, baseType: !109, size: 32, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1961, file: !1962, line: 20, baseType: !109, size: 32, offset: 96)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1961, file: !1962, line: 21, baseType: !109, size: 32, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1961, file: !1962, line: 22, baseType: !360, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 23, baseType: !360, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1804, file: !1805, line: 138, baseType: !1972, size: 64, offset: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !397, line: 18, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1804, file: !1805, line: 139, baseType: !1975, size: 64, offset: 1216)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1977, line: 16, flags: DIFlagFwdDecl)
!1977 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1804, file: !1805, line: 140, baseType: !1979, size: 64, offset: 1280)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1805, line: 25, size: 64, elements: !1981)
!1981 = !{!1982, !1983, !1984}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1980, file: !1805, line: 26, baseType: !261, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1980, file: !1805, line: 27, baseType: !109, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1980, file: !1805, line: 28, baseType: !1985, offset: 64)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, elements: !1795)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1805, line: 142, baseType: !1987, size: 128, offset: 1344)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1805, line: 142, size: 128, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1987, file: !1805, line: 143, baseType: !109, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1987, file: !1805, line: 144, baseType: !866, size: 128, align: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1736, file: !28, line: 1013, baseType: !1992, size: 256, offset: 960)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1992, file: !28, line: 971, baseType: !360, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1992, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1992, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1992, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1992, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1992, file: !28, line: 976, baseType: !550, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1736, file: !28, line: 1014, baseType: !1217, size: 128, offset: 1216)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1736, file: !28, line: 1015, baseType: !390, size: 64, offset: 1344)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1736, file: !28, line: 1016, baseType: !2003, size: 64, offset: 1408)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !2006)
!2006 = !{!2007, !2008, !2012, !2017, !2021, !2397, !2398, !2404, !2417, !2434, !2438, !2439, !2443, !2444, !2448, !2453, !2454, !2458, !2462, !2468, !2469, !2473, !2474, !2480, !2484, !2488, !2494, !2498, !2502, !2506, !2510, !2511, !2517}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2005, file: !28, line: 1915, baseType: !578, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2005, file: !28, line: 1916, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!550, !1735, !550, !109}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2005, file: !28, line: 1917, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!342, !1735, !310, !357, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2005, file: !28, line: 1918, baseType: !2018, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!342, !1735, !224, !357, !2016}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2005, file: !28, line: 1919, baseType: !2022, size: 64, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!342, !2025, !2047}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2034, !2035, !2036, !2037}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2026, file: !28, line: 374, baseType: !1735, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2026, file: !28, line: 375, baseType: !550, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2026, file: !28, line: 376, baseType: !2031, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2025, !346}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2026, file: !28, line: 377, baseType: !213, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2026, file: !28, line: 378, baseType: !109, size: 32, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2026, file: !28, line: 379, baseType: !278, size: 16, offset: 288)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !28, line: 380, baseType: !2038, size: 64, offset: 320)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !28, line: 380, size: 64, elements: !2039)
!2039 = !{!2040, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2038, file: !28, line: 386, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2038, file: !28, line: 395, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!342, !213}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2049, line: 41, size: 320, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2061, !2392}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2048, file: !2049, line: 42, baseType: !269, size: 8)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2048, file: !2049, line: 43, baseType: !728, size: 8, offset: 8)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2048, file: !2049, line: 44, baseType: !728, size: 8, offset: 16)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2048, file: !2049, line: 45, baseType: !728, size: 8, offset: 24)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2048, file: !2049, line: 46, baseType: !728, size: 8, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2049, line: 47, baseType: !2057, size: 64, offset: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2049, line: 47, size: 64, elements: !2058)
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2057, file: !2049, line: 48, baseType: !357, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2057, file: !2049, line: 49, baseType: !109, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2049, line: 61, baseType: !2062, size: 128, offset: 128)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2049, line: 61, size: 128, elements: !2063)
!2063 = !{!2064, !2070}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2062, file: !2049, line: 67, baseType: !2065, size: 128)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2066, line: 17, size: 128, elements: !2067)
!2066 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2065, file: !2066, line: 19, baseType: !213, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2065, file: !2066, line: 20, baseType: !358, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2062, file: !2049, line: 68, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2062, file: !2049, line: 68, size: 128, elements: !2072)
!2072 = !{!2073, !2391}
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2049, line: 69, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !2049, line: 69, size: 64, elements: !2075)
!2075 = !{!2076, !2079, !2086, !2382, !2390}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2074, file: !2049, line: 71, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2065)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2074, file: !2049, line: 72, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2049, line: 17, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2082, file: !2049, line: 18, baseType: !213, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2082, file: !2049, line: 19, baseType: !357, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2074, file: !2049, line: 73, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2090, line: 31, size: 128, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2091 = !{!2092, !2380, !2381}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2089, file: !2090, line: 32, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !2095)
!2095 = !{!2096, !2097, !2374, !2379}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2094, file: !65, line: 75, baseType: !360, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !65, line: 83, baseType: !2098, size: 320, offset: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !65, line: 83, size: 320, elements: !2099)
!2099 = !{!2100, !2121, !2135, !2139, !2373}
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !65, line: 84, baseType: !2101, size: 320)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !65, line: 84, size: 320, elements: !2102)
!2102 = !{!2103, !2114, !2115, !2120}
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !65, line: 90, baseType: !2104, size: 128)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !65, line: 90, size: 128, elements: !2105)
!2105 = !{!2106, !2107, !2112, !2113}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2104, file: !65, line: 91, baseType: !228, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !65, line: 94, baseType: !2108, size: 128)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !65, line: 94, size: 128, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2108, file: !65, line: 96, baseType: !213, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2108, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2104, file: !65, line: 102, baseType: !228, size: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2104, file: !65, line: 103, baseType: !228, size: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2101, file: !65, line: 106, baseType: !386, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !65, line: 107, baseType: !2116, size: 64, offset: 192)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !65, line: 107, size: 64, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2116, file: !65, line: 108, baseType: !360, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2116, file: !65, line: 109, baseType: !360, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2101, file: !65, line: 117, baseType: !360, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !65, line: 119, baseType: !2122, size: 320)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !65, line: 119, size: 320, elements: !2123)
!2123 = !{!2124, !2125, !2128, !2129, !2130}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2122, file: !65, line: 124, baseType: !360, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2122, file: !65, line: 125, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2122, file: !65, line: 126, baseType: !360, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2122, file: !65, line: 127, baseType: !360, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !65, line: 128, baseType: !2131, size: 64, offset: 256)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !65, line: 128, size: 64, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2131, file: !65, line: 133, baseType: !360, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2131, file: !65, line: 138, baseType: !653, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !65, line: 141, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !65, line: 141, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2136, file: !65, line: 142, baseType: !360, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !65, line: 144, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !65, line: 144, size: 128, elements: !2141)
!2141 = !{!2142, !2372}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2140, file: !65, line: 146, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !57, line: 126, size: 1216, elements: !2145)
!2145 = !{!2146, !2156, !2177, !2178, !2179, !2180, !2181, !2354, !2355, !2356}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2144, file: !57, line: 127, baseType: !2147, size: 384)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !57, line: 21, size: 384, elements: !2148)
!2148 = !{!2149, !2150, !2152, !2153, !2154, !2155}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2147, file: !57, line: 22, baseType: !360, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2147, file: !57, line: 23, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2147, file: !57, line: 24, baseType: !2151, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2147, file: !57, line: 25, baseType: !360, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2147, file: !57, line: 26, baseType: !360, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2147, file: !57, line: 27, baseType: !360, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2144, file: !57, line: 128, baseType: !2157, size: 128, offset: 384)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2158, line: 105, size: 128, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2157, file: !2158, line: 110, baseType: !360, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2157, file: !2158, line: 118, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2158, line: 95, size: 448, elements: !2164)
!2164 = !{!2165, !2166, !2172, !2173, !2174, !2175, !2176}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2163, file: !2158, line: 96, baseType: !653, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2163, file: !2158, line: 97, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2158, line: 60, baseType: !2169)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2163, file: !2158, line: 98, baseType: !2167, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2163, file: !2158, line: 99, baseType: !728, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2163, file: !2158, line: 100, baseType: !728, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2163, file: !2158, line: 101, baseType: !866, size: 128, align: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2163, file: !2158, line: 102, baseType: !2171, size: 64, offset: 384)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2144, file: !57, line: 129, baseType: !598, size: 256, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2144, file: !57, line: 130, baseType: !56, size: 32, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2144, file: !57, line: 131, baseType: !7, size: 32, offset: 800)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2144, file: !57, line: 132, baseType: !360, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2144, file: !57, line: 133, baseType: !2182, size: 64, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !57, line: 77, size: 192, elements: !2185)
!2185 = !{!2186, !2190, !2350}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2184, file: !57, line: 83, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2093}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2184, file: !57, line: 89, baseType: !2191, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2197, line: 512, size: 896, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2198 = !{!2199, !2317, !2318, !2325, !2332, !2342, !2343, !2344, !2346, !2348}
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2197, line: 513, baseType: !2200, size: 320)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2196, file: !2197, line: 513, size: 320, elements: !2201)
!2201 = !{!2202, !2313, !2314, !2315, !2316}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2200, file: !2197, line: 514, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !2205)
!2205 = !{!2206, !2215, !2216, !2224, !2231, !2232, !2237, !2238, !2243, !2244, !2247, !2306, !2307, !2308, !2309, !2310, !2311}
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !65, line: 628, baseType: !2207, size: 128)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !65, line: 628, size: 128, elements: !2208)
!2208 = !{!2209, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !65, line: 629, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !65, line: 629, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2210, file: !65, line: 631, baseType: !360, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2210, file: !65, line: 632, baseType: !360, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2207, file: !65, line: 635, baseType: !866, size: 128, align: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2204, file: !65, line: 639, baseType: !1708, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2204, file: !65, line: 640, baseType: !2217, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2218, line: 297, baseType: !2219)
!2218 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2218, line: 297, size: 64, elements: !2220)
!2220 = !{!2221}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2219, file: !2218, line: 297, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2223, line: 19, baseType: !360)
!2223 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !65, line: 646, baseType: !2225, size: 64, offset: 256)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !65, line: 646, size: 64, elements: !2226)
!2226 = !{!2227, !2230}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2225, file: !65, line: 647, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !360)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2225, file: !65, line: 648, baseType: !2229, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2204, file: !65, line: 666, baseType: !109, size: 32, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2204, file: !65, line: 667, baseType: !2233, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !2235)
!2235 = !{!2236}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2234, file: !65, line: 580, baseType: !1305, size: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2204, file: !65, line: 670, baseType: !728, size: 8, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2204, file: !65, line: 681, baseType: !2239, size: 256, offset: 512)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2204, file: !65, line: 678, size: 256, elements: !2240)
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2239, file: !65, line: 679, baseType: !760, size: 192, align: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2239, file: !65, line: 680, baseType: !360, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2204, file: !65, line: 689, baseType: !228, size: 128, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2204, file: !65, line: 691, baseType: !2245, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2204, file: !65, line: 694, baseType: !2248, size: 64, offset: 960)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2197, line: 563, size: 1024, elements: !2251)
!2251 = !{!2252, !2256, !2257, !2261, !2265, !2269, !2270, !2274, !2278, !2282, !2283, !2284, !2288, !2292, !2298, !2302}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2250, file: !2197, line: 564, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !2203}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2250, file: !2197, line: 569, baseType: !2253, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2250, file: !2197, line: 571, baseType: !2258, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!109, !2203, !360}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2250, file: !2197, line: 572, baseType: !2262, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!109, !2203}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2250, file: !2197, line: 578, baseType: !2266, size: 64, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!109, !2203, !360, !360, !360}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2250, file: !2197, line: 580, baseType: !2191, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2250, file: !2197, line: 581, baseType: !2271, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2194, !2195, !7}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2250, file: !2197, line: 582, baseType: !2275, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2194, !2195, !360, !360}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2250, file: !2197, line: 584, baseType: !2279, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!360, !2203}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2250, file: !2197, line: 588, baseType: !2191, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2250, file: !2197, line: 591, baseType: !2191, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2250, file: !2197, line: 597, baseType: !2285, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!109, !2203, !360, !213, !109, !109}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2250, file: !2197, line: 603, baseType: !2289, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!224, !2203}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2250, file: !2197, line: 613, baseType: !2293, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!109, !2203, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2250, file: !2197, line: 625, baseType: !2299, size: 64, offset: 896)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2296, !2203, !360}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2250, file: !2197, line: 633, baseType: !2303, size: 64, offset: 960)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!2093, !2203, !360}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2204, file: !65, line: 697, baseType: !360, size: 64, offset: 1024)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2204, file: !65, line: 699, baseType: !1735, size: 64, offset: 1088)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2204, file: !65, line: 700, baseType: !213, size: 64, offset: 1152)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2204, file: !65, line: 711, baseType: !653, size: 64, offset: 1216)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2204, file: !65, line: 717, baseType: !2296, size: 64, offset: 1280)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2204, file: !65, line: 722, baseType: !2312, offset: 1344)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !933)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2200, file: !2197, line: 515, baseType: !214, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2200, file: !2197, line: 516, baseType: !360, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2200, file: !2197, line: 517, baseType: !360, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2200, file: !2197, line: 518, baseType: !360, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 520, baseType: !64, size: 32, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2196, file: !2197, line: 522, baseType: !2319, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2223, line: 22, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2223, line: 22, size: 64, elements: !2322)
!2322 = !{!2323}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2321, file: !2223, line: 22, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2223, line: 15, baseType: !360)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2196, file: !2197, line: 524, baseType: !2326, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2218, line: 372, baseType: !2328)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2218, line: 372, size: 64, elements: !2329)
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2328, file: !2218, line: 372, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2223, line: 16, baseType: !360)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2197, line: 527, baseType: !2333, size: 64, offset: 512)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !2197, line: 527, size: 64, elements: !2334)
!2334 = !{!2335, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2333, file: !2197, line: 528, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2223, line: 21, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2223, line: 21, size: 64, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2337, file: !2223, line: 21, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2223, line: 14, baseType: !360)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2333, file: !2197, line: 529, baseType: !2320, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2196, file: !2197, line: 534, baseType: !2093, size: 64, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2196, file: !2197, line: 535, baseType: !2093, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2196, file: !2197, line: 541, baseType: !2345, size: 64, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2196, file: !2197, line: 545, baseType: !2347, size: 64, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2196, file: !2197, line: 549, baseType: !2349, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2218, line: 520, baseType: !2093)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2184, file: !57, line: 100, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!109, !2143, !360, !360, !109}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2144, file: !57, line: 134, baseType: !213, size: 64, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2144, file: !57, line: 135, baseType: !109, size: 32, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !57, line: 136, baseType: !2357, size: 128, offset: 1088)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !57, line: 136, size: 128, elements: !2358)
!2358 = !{!2359, !2365}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2357, file: !57, line: 137, baseType: !2360, size: 128)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2361, line: 6, size: 128, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2360, file: !2361, line: 7, baseType: !462, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2360, file: !2361, line: 8, baseType: !462, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !57, line: 138, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2357, file: !57, line: 138, elements: !2367)
!2367 = !{!2368, !2370}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2366, file: !57, line: 138, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2366, file: !57, line: 138, elements: !933)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2366, file: !57, line: 138, baseType: !2371)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, elements: !1795)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2140, file: !65, line: 147, baseType: !213, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2098, file: !65, line: 161, baseType: !866, size: 128, align: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !65, line: 164, baseType: !2375, size: 32, offset: 384)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !65, line: 164, size: 32, elements: !2376)
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2375, file: !65, line: 169, baseType: !261, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2375, file: !65, line: 177, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2094, file: !65, line: 181, baseType: !261, size: 32, offset: 416)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2089, file: !2090, line: 33, baseType: !7, size: 32, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2089, file: !2090, line: 34, baseType: !7, size: 32, offset: 96)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2074, file: !2049, line: 74, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2385, line: 296, size: 128, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2384, file: !2385, line: 297, baseType: !241, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2384, file: !2385, line: 299, baseType: !214, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2384, file: !2385, line: 300, baseType: !213, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2074, file: !2049, line: 75, baseType: !213, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2071, file: !2049, line: 77, baseType: !357, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2049, line: 80, baseType: !2393, size: 64, offset: 256)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2049, line: 80, size: 64, elements: !2394)
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2393, file: !2049, line: 81, baseType: !360, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2393, file: !2049, line: 82, baseType: !550, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2005, file: !28, line: 1920, baseType: !2022, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2005, file: !28, line: 1921, baseType: !2399, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!109, !2025, !2402, !7}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2005, file: !28, line: 1923, baseType: !2405, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!109, !1735, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !2410)
!2410 = !{!2411, !2416}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2409, file: !28, line: 1859, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!728, !2408, !224, !109, !550, !462, !7}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2409, file: !28, line: 1860, baseType: !550, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2005, file: !28, line: 1924, baseType: !2418, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2421, !1735, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2422, line: 59, baseType: !7)
!2422 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2425, line: 37, size: 128, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2426 = !{!2427, !2433}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2424, file: !2425, line: 38, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2425, line: 31, baseType: !2429)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !1735, !2432, !2423}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2424, file: !2425, line: 39, baseType: !2421, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2005, file: !28, line: 1925, baseType: !2435, size: 64, offset: 576)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!346, !1735, !7, !360}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2005, file: !28, line: 1926, baseType: !2435, size: 64, offset: 640)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2005, file: !28, line: 1927, baseType: !2440, size: 64, offset: 704)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!109, !1735, !2203}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2005, file: !28, line: 1928, baseType: !360, size: 64, offset: 768)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2005, file: !28, line: 1929, baseType: !2445, size: 64, offset: 832)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!109, !390, !1735}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2005, file: !28, line: 1930, baseType: !2449, size: 64, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!109, !1735, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !213)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2005, file: !28, line: 1931, baseType: !2445, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2005, file: !28, line: 1932, baseType: !2455, size: 64, offset: 1024)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!109, !1735, !550, !550, !109}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2005, file: !28, line: 1933, baseType: !2459, size: 64, offset: 1088)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!109, !109, !1735, !109}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2005, file: !28, line: 1934, baseType: !2463, size: 64, offset: 1152)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!109, !1735, !109, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2005, file: !28, line: 1935, baseType: !1732, size: 64, offset: 1216)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2005, file: !28, line: 1936, baseType: !2470, size: 64, offset: 1280)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!109, !109}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2005, file: !28, line: 1937, baseType: !2463, size: 64, offset: 1344)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2005, file: !28, line: 1938, baseType: !2475, size: 64, offset: 1408)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!342, !2478, !1735, !2016, !357, !7}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1088, line: 59, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2005, file: !28, line: 1939, baseType: !2481, size: 64, offset: 1472)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!342, !1735, !2016, !2478, !357, !7}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2005, file: !28, line: 1940, baseType: !2485, size: 64, offset: 1536)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !1735}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2005, file: !28, line: 1941, baseType: !2489, size: 64, offset: 1600)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!109, !1735, !109, !2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2005, file: !28, line: 1942, baseType: !2495, size: 64, offset: 1664)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!346, !1735, !109, !550, !550}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2005, file: !28, line: 1944, baseType: !2499, size: 64, offset: 1728)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !1086, !1735}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2005, file: !28, line: 1948, baseType: !2503, size: 64, offset: 1792)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!342, !1735, !550, !1735, !550, !357, !7}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2005, file: !28, line: 1950, baseType: !2507, size: 64, offset: 1856)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!550, !1735, !550, !1735, !550, !550, !7}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2005, file: !28, line: 1953, baseType: !2455, size: 64, offset: 1920)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2005, file: !28, line: 1954, baseType: !2512, size: 64, offset: 1984)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!109, !2515, !7}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2005, file: !28, line: 1955, baseType: !2518, size: 64, offset: 2048)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!109, !2515, !2402, !7}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1736, file: !28, line: 1018, baseType: !462, size: 64, offset: 1472)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1736, file: !28, line: 1020, baseType: !213, size: 64, offset: 1536)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1736, file: !28, line: 1023, baseType: !213, size: 64, offset: 1600)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1736, file: !28, line: 1027, baseType: !2525, size: 64, offset: 1664)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1736, file: !28, line: 1029, baseType: !386, size: 64, offset: 1728)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1736, file: !28, line: 1030, baseType: !2528, size: 32, offset: 1792)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2529, line: 8, baseType: !459)
!2529 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1736, file: !28, line: 1031, baseType: !2528, size: 32, offset: 1824)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1712, file: !65, line: 756, baseType: !360, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1712, file: !65, line: 757, baseType: !360, size: 64, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1712, file: !65, line: 760, baseType: !360, size: 64, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1712, file: !65, line: 761, baseType: !360, size: 64, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1712, file: !65, line: 763, baseType: !360, size: 64, offset: 960)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1712, file: !65, line: 764, baseType: !2537, size: 64, offset: 1024)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2218, line: 299, baseType: !2539)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2218, line: 299, size: 64, elements: !2540)
!2540 = !{!2541}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2539, file: !2218, line: 299, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2223, line: 18, baseType: !360)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1712, file: !65, line: 773, baseType: !261, size: 32, offset: 1088)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1712, file: !65, line: 785, baseType: !261, size: 32, offset: 1120)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1712, file: !65, line: 795, baseType: !2546, size: 64, offset: 1152)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2547, file: !65, line: 727, baseType: !462, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2547, file: !65, line: 728, baseType: !109, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1712, file: !65, line: 801, baseType: !360, size: 64, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1712, file: !65, line: 804, baseType: !653, size: 64, offset: 1280)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1712, file: !65, line: 806, baseType: !109, size: 32, offset: 1344)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1712, file: !65, line: 808, baseType: !241, size: 32, offset: 1376)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1712, file: !65, line: 823, baseType: !1305, size: 320, offset: 1408)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1712, file: !65, line: 825, baseType: !228, size: 128, offset: 1728)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1712, file: !65, line: 845, baseType: !109, size: 32, offset: 1856)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1712, file: !65, line: 849, baseType: !360, size: 64, offset: 1920)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1712, file: !65, line: 850, baseType: !360, size: 64, offset: 1984)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1712, file: !65, line: 852, baseType: !360, size: 64, offset: 2048)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1712, file: !65, line: 853, baseType: !360, size: 64, offset: 2112)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1712, file: !65, line: 854, baseType: !655, size: 64, offset: 2176)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1712, file: !65, line: 855, baseType: !360, size: 64, offset: 2240)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1712, file: !65, line: 856, baseType: !360, size: 64, offset: 2304)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1712, file: !65, line: 857, baseType: !360, size: 64, offset: 2368)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1712, file: !65, line: 858, baseType: !360, size: 64, offset: 2432)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1712, file: !65, line: 865, baseType: !436, size: 32, offset: 2496)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1712, file: !65, line: 867, baseType: !241, size: 32, offset: 2528)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1712, file: !65, line: 869, baseType: !360, size: 64, offset: 2560)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1712, file: !65, line: 869, baseType: !360, size: 64, offset: 2624)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1712, file: !65, line: 869, baseType: !360, size: 64, offset: 2688)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1712, file: !65, line: 869, baseType: !360, size: 64, offset: 2752)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1712, file: !65, line: 870, baseType: !360, size: 64, offset: 2816)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1712, file: !65, line: 870, baseType: !360, size: 64, offset: 2880)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1712, file: !65, line: 870, baseType: !360, size: 64, offset: 2944)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1712, file: !65, line: 871, baseType: !360, size: 64, offset: 3008)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1712, file: !65, line: 871, baseType: !360, size: 64, offset: 3072)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1712, file: !65, line: 871, baseType: !360, size: 64, offset: 3136)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1712, file: !65, line: 871, baseType: !360, size: 64, offset: 3200)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1712, file: !65, line: 873, baseType: !2581, size: 3328, offset: 3264)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 3328, elements: !2582)
!2582 = !{!2583}
!2583 = !DISubrange(count: 52)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1712, file: !65, line: 875, baseType: !2585, size: 1280, offset: 6592)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1947, size: 1280, elements: !185)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1712, file: !65, line: 877, baseType: !2587, size: 64, offset: 7872)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1712, file: !65, line: 880, baseType: !2590, size: 1088, offset: 7936)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2591, line: 72, baseType: !2592)
!2591 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2591, line: 23, size: 1088, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2601, !2602, !2603, !2604, !2631, !2632, !2633}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2592, file: !2591, line: 28, baseType: !462, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2592, file: !2591, line: 38, baseType: !655, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2592, file: !2591, line: 40, baseType: !360, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2592, file: !2591, line: 43, baseType: !1305, size: 320, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2592, file: !2591, line: 44, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2591, line: 44, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !2591, line: 48, baseType: !360, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2592, file: !2591, line: 59, baseType: !649, size: 256, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2592, file: !2591, line: 60, baseType: !213, size: 64, offset: 896)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2592, file: !2591, line: 61, baseType: !2605, size: 64, offset: 960)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2608, line: 13, size: 1216, elements: !2609)
!2608 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2607, file: !2608, line: 14, baseType: !213, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2607, file: !2608, line: 15, baseType: !360, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2607, file: !2608, line: 17, baseType: !360, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2607, file: !2608, line: 17, baseType: !360, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2607, file: !2608, line: 18, baseType: !360, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2607, file: !2608, line: 18, baseType: !360, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2607, file: !2608, line: 19, baseType: !2617, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2607, file: !2608, line: 21, baseType: !346, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2607, file: !2608, line: 23, baseType: !346, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2607, file: !2608, line: 24, baseType: !346, size: 64, offset: 576)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2607, file: !2608, line: 25, baseType: !346, size: 64, offset: 640)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2607, file: !2608, line: 26, baseType: !346, size: 64, offset: 704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2607, file: !2608, line: 27, baseType: !346, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2607, file: !2608, line: 28, baseType: !346, size: 64, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2607, file: !2608, line: 29, baseType: !346, size: 64, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2607, file: !2608, line: 30, baseType: !346, size: 64, offset: 960)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2607, file: !2608, line: 31, baseType: !346, size: 64, offset: 1024)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2607, file: !2608, line: 32, baseType: !346, size: 64, offset: 1088)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2607, file: !2608, line: 33, baseType: !346, size: 64, offset: 1152)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2592, file: !2591, line: 63, baseType: !261, size: 32, offset: 1024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2592, file: !2591, line: 69, baseType: !278, size: 16, offset: 1056)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2592, file: !2591, line: 70, baseType: !782, size: 16, offset: 1072)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !65, line: 882, baseType: !360, size: 64, offset: 9024)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1712, file: !65, line: 885, baseType: !241, size: 32, offset: 9088)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1712, file: !65, line: 886, baseType: !2637, size: 64, offset: 9152)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1712, file: !65, line: 901, baseType: !1972, size: 64, offset: 9216)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1712, file: !65, line: 904, baseType: !1735, size: 64, offset: 9280)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1712, file: !65, line: 906, baseType: !2642, size: 64, offset: 9344)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1712, file: !65, line: 930, baseType: !261, size: 32, offset: 9408)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1712, file: !65, line: 933, baseType: !261, size: 32, offset: 9440)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1712, file: !65, line: 935, baseType: !2647, size: 64, offset: 9472)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2647, file: !81, line: 104, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1712, file: !65, line: 940, baseType: !653, size: 64, offset: 9536)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1712, file: !65, line: 942, baseType: !904, size: 256, offset: 9600)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1709, file: !65, line: 986, baseType: !2655, offset: 10240)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !1795)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1412, file: !1088, line: 882, baseType: !1708, size: 64, offset: 9792)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1412, file: !1088, line: 884, baseType: !109, size: 32, offset: 9856)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1412, file: !1088, line: 885, baseType: !109, size: 32, offset: 9888)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1412, file: !1088, line: 886, baseType: !109, size: 32, offset: 9920)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1412, file: !1088, line: 888, baseType: !109, size: 32, offset: 9952)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1412, file: !1088, line: 890, baseType: !360, size: 64, offset: 9984)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1412, file: !1088, line: 893, baseType: !7, size: 32, offset: 10048)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1412, file: !1088, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1412, file: !1088, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1412, file: !1088, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1412, file: !1088, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1412, file: !1088, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1412, file: !1088, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1412, file: !1088, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1412, file: !1088, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1412, file: !1088, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1412, file: !1088, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1412, file: !1088, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1412, file: !1088, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1412, file: !1088, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1412, file: !1088, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1412, file: !1088, line: 969, baseType: !360, size: 64, offset: 10176)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1412, file: !1088, line: 971, baseType: !2679, size: 448, offset: 10240)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2680)
!2680 = !{!2681, !2682, !2687}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2679, file: !44, line: 26, baseType: !360, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2679, file: !44, line: 27, baseType: !2683, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!346, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, scope: !2679, file: !44, line: 28, baseType: !2688, size: 320, offset: 128)
!2688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2679, file: !44, line: 28, size: 320, elements: !2689)
!2689 = !{!2690, !2700, !2725}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2688, file: !44, line: 37, baseType: !2691, size: 320)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2688, file: !44, line: 30, size: 320, elements: !2692)
!2692 = !{!2693, !2695, !2696, !2697, !2698, !2699}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2691, file: !44, line: 31, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2691, file: !44, line: 32, baseType: !459, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2691, file: !44, line: 33, baseType: !459, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2691, file: !44, line: 34, baseType: !459, size: 32, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2691, file: !44, line: 35, baseType: !462, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2691, file: !44, line: 36, baseType: !2694, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2688, file: !44, line: 47, baseType: !2701, size: 192)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2688, file: !44, line: 39, size: 192, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2724}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2701, file: !44, line: 40, baseType: !1579, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2701, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !44, line: 42, baseType: !2706, size: 64, offset: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2701, file: !44, line: 42, size: 64, elements: !2707)
!2707 = !{!2708, !2716}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2706, file: !44, line: 43, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2711, line: 7, size: 128, elements: !2712)
!2711 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2712 = !{!2713, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2710, file: !2711, line: 8, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !344, line: 93, baseType: !171)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2710, file: !2711, line: 9, baseType: !171, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2706, file: !44, line: 44, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2719, line: 7, size: 64, elements: !2720)
!2719 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2720 = !{!2721, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2718, file: !2719, line: 8, baseType: !2722, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2719, line: 5, baseType: !645)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2718, file: !2719, line: 9, baseType: !645, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2701, file: !44, line: 46, baseType: !462, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2688, file: !44, line: 55, baseType: !2726, size: 256)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2688, file: !44, line: 49, size: 256, elements: !2727)
!2727 = !{!2728, !2736, !2737, !2738, !2739}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2726, file: !44, line: 50, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2731, line: 36, size: 64, elements: !2732)
!2731 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2732 = !{!2733, !2734, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2730, file: !2731, line: 37, baseType: !109, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2730, file: !2731, line: 38, baseType: !784, size: 16, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2730, file: !2731, line: 39, baseType: !784, size: 16, offset: 48)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2726, file: !44, line: 51, baseType: !109, size: 32, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2726, file: !44, line: 52, baseType: !109, size: 32, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2726, file: !44, line: 53, baseType: !360, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2726, file: !44, line: 54, baseType: !360, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1412, file: !1088, line: 973, baseType: !2741, size: 32, offset: 10688)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !215, line: 27, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !344, line: 28, baseType: !109)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1412, file: !1088, line: 974, baseType: !2741, size: 32, offset: 10720)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1412, file: !1088, line: 978, baseType: !360, size: 64, offset: 10752)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1412, file: !1088, line: 987, baseType: !1411, size: 64, offset: 10816)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1412, file: !1088, line: 990, baseType: !1411, size: 64, offset: 10880)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1412, file: !1088, line: 995, baseType: !228, size: 128, offset: 10944)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1412, file: !1088, line: 996, baseType: !228, size: 128, offset: 11072)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1412, file: !1088, line: 997, baseType: !1411, size: 64, offset: 11200)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1412, file: !1088, line: 1005, baseType: !228, size: 128, offset: 11264)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1412, file: !1088, line: 1006, baseType: !228, size: 128, offset: 11392)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1412, file: !1088, line: 1009, baseType: !1776, size: 64, offset: 11520)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1412, file: !1088, line: 1010, baseType: !2754, size: 512, offset: 11584)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 512, elements: !185)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1412, file: !1088, line: 1011, baseType: !228, size: 128, offset: 12096)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1412, file: !1088, line: 1012, baseType: !228, size: 128, offset: 12224)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1412, file: !1088, line: 1014, baseType: !597, size: 64, offset: 12352)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1412, file: !1088, line: 1017, baseType: !775, size: 64, offset: 12416)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1412, file: !1088, line: 1020, baseType: !775, size: 64, offset: 12480)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1412, file: !1088, line: 1023, baseType: !213, size: 64, offset: 12544)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1412, file: !1088, line: 1025, baseType: !462, size: 64, offset: 12608)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1412, file: !1088, line: 1026, baseType: !462, size: 64, offset: 12672)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1412, file: !1088, line: 1031, baseType: !462, size: 64, offset: 12736)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1412, file: !1088, line: 1032, baseType: !2765, size: 192, offset: 12800)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1088, line: 324, size: 192, elements: !2766)
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2765, file: !1088, line: 326, baseType: !462, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2765, file: !1088, line: 327, baseType: !462, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2765, file: !1088, line: 328, baseType: !607, size: 32, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1412, file: !1088, line: 1041, baseType: !360, size: 64, offset: 12992)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1412, file: !1088, line: 1042, baseType: !360, size: 64, offset: 13056)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1412, file: !1088, line: 1045, baseType: !462, size: 64, offset: 13120)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1412, file: !1088, line: 1048, baseType: !462, size: 64, offset: 13184)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1412, file: !1088, line: 1051, baseType: !360, size: 64, offset: 13248)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1412, file: !1088, line: 1052, baseType: !360, size: 64, offset: 13312)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1412, file: !1088, line: 1055, baseType: !2777, size: 640, offset: 13376)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2778, line: 132, size: 640, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2779 = !{!2780, !2786, !2787}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2777, file: !2778, line: 133, baseType: !2781, size: 576)
!2781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2782, size: 576, elements: !311)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2778, line: 117, size: 192, elements: !2783)
!2783 = !{!2784, !2785}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2782, file: !2778, line: 118, baseType: !462, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2782, file: !2778, line: 119, baseType: !1588, size: 128, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2777, file: !2778, line: 134, baseType: !7, size: 32, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2777, file: !2778, line: 135, baseType: !7, size: 32, offset: 608)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1412, file: !1088, line: 1058, baseType: !2789, size: 448, offset: 14016)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2778, line: 144, size: 448, elements: !2790)
!2790 = !{!2791, !2792, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2789, file: !2778, line: 145, baseType: !866, size: 128, align: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2789, file: !2778, line: 146, baseType: !649, size: 256, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2789, file: !2778, line: 147, baseType: !7, size: 32, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1412, file: !1088, line: 1064, baseType: !1802, size: 64, offset: 14464)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1412, file: !1088, line: 1067, baseType: !1802, size: 64, offset: 14528)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1412, file: !1088, line: 1070, baseType: !1802, size: 64, offset: 14592)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1412, file: !1088, line: 1074, baseType: !1829, size: 64, offset: 14656)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1412, file: !1088, line: 1084, baseType: !2799, size: 128, offset: 14720)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 16)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1412, file: !1088, line: 1086, baseType: !2803, size: 64, offset: 14848)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1088, line: 55, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1412, file: !1088, line: 1089, baseType: !2806, size: 64, offset: 14912)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2807, line: 12, size: 64, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2806, file: !2807, line: 13, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2807, line: 8, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1412, file: !1088, line: 1090, baseType: !2813, size: 128, offset: 14976)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2814, line: 13, size: 128, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2815 = !{!2816}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2813, file: !2814, line: 14, baseType: !228, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1412, file: !1088, line: 1097, baseType: !2818, size: 64, offset: 15104)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1088, line: 50, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1412, file: !1088, line: 1100, baseType: !2821, size: 64, offset: 15168)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1088, line: 1100, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1412, file: !1088, line: 1103, baseType: !2824, size: 64, offset: 15232)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1088, line: 53, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1412, file: !1088, line: 1107, baseType: !2827, size: 64, offset: 15296)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1088, line: 56, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1412, file: !1088, line: 1110, baseType: !2830, size: 64, offset: 15360)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2832, line: 93, size: 8768, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2881, !2890, !2891, !2893, !2894, !2895, !2898, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2936, !2937, !2944, !2954, !2957, !2958, !2961, !2962, !2963, !2964, !2965, !2966}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2831, file: !2832, line: 94, baseType: !1425, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2831, file: !2832, line: 95, baseType: !261, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2831, file: !2832, line: 96, baseType: !109, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2831, file: !2832, line: 97, baseType: !109, size: 32, offset: 96)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2831, file: !2832, line: 98, baseType: !228, size: 128, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2831, file: !2832, line: 100, baseType: !1398, size: 192, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2831, file: !2832, line: 103, baseType: !1411, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2831, file: !2832, line: 106, baseType: !2842, size: 192, offset: 512)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1977, line: 32, size: 192, elements: !2843)
!2843 = !{!2844, !2845}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2842, file: !1977, line: 33, baseType: !228, size: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2842, file: !1977, line: 34, baseType: !2846, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2847, line: 25, baseType: !2848)
!2847 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2847, line: 23, size: 64, elements: !2849)
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2848, file: !2847, line: 24, baseType: !1659, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2831, file: !2832, line: 109, baseType: !1014, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2831, file: !2832, line: 112, baseType: !109, size: 32, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2831, file: !2832, line: 114, baseType: !109, size: 32, offset: 800)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2831, file: !2832, line: 115, baseType: !1411, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2831, file: !2832, line: 118, baseType: !109, size: 32, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2831, file: !2832, line: 119, baseType: !7, size: 32, offset: 928)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2831, file: !2832, line: 121, baseType: !2858, size: 64, offset: 960)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2832, line: 80, size: 448, elements: !2860)
!2860 = !{!2861, !2862, !2868}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2859, file: !2832, line: 81, baseType: !261, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2859, file: !2832, line: 82, baseType: !2863, size: 128, offset: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2832, line: 75, size: 128, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2863, file: !2832, line: 76, baseType: !1411, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2863, file: !2832, line: 77, baseType: !2867, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2859, file: !2832, line: 83, baseType: !598, size: 256, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2831, file: !2832, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2831, file: !2832, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2831, file: !2832, line: 138, baseType: !7, size: 32, offset: 1056)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2831, file: !2832, line: 139, baseType: !228, size: 128, offset: 1088)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2831, file: !2832, line: 142, baseType: !1532, size: 512, offset: 1216)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2831, file: !2832, line: 143, baseType: !1540, size: 64, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2831, file: !2832, line: 150, baseType: !2876, size: 256, offset: 1792)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2877, size: 256, elements: !157)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2832, line: 38, size: 128, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2877, file: !2832, line: 39, baseType: !462, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2877, file: !2832, line: 40, baseType: !462, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2831, file: !2832, line: 156, baseType: !2882, size: 192, offset: 2048)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2832, line: 66, size: 192, elements: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2882, file: !2832, line: 67, baseType: !2885, size: 192)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2832, line: 47, size: 192, elements: !2886)
!2886 = !{!2887, !2888, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2885, file: !2832, line: 48, baseType: !655, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2885, file: !2832, line: 49, baseType: !655, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2885, file: !2832, line: 50, baseType: !655, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2831, file: !2832, line: 160, baseType: !2777, size: 640, offset: 2240)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2831, file: !2832, line: 163, baseType: !2892, size: 256, offset: 2880)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1776, size: 256, elements: !185)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2831, file: !2832, line: 169, baseType: !1776, size: 64, offset: 3136)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2831, file: !2832, line: 172, baseType: !109, size: 32, offset: 3200)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2831, file: !2832, line: 174, baseType: !2896, size: 64, offset: 3264)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2832, line: 174, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2831, file: !2832, line: 185, baseType: !2899, size: 64, offset: 3328)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !432, line: 860, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 853, size: 64, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2900, file: !432, line: 858, baseType: !431, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !432, line: 859, baseType: !241, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2831, file: !2832, line: 186, baseType: !462, size: 64, offset: 3392)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2831, file: !2832, line: 186, baseType: !462, size: 64, offset: 3456)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2831, file: !2832, line: 186, baseType: !462, size: 64, offset: 3520)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2831, file: !2832, line: 186, baseType: !462, size: 64, offset: 3584)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2831, file: !2832, line: 187, baseType: !462, size: 64, offset: 3648)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2831, file: !2832, line: 188, baseType: !462, size: 64, offset: 3712)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2831, file: !2832, line: 189, baseType: !2765, size: 192, offset: 3776)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2831, file: !2832, line: 190, baseType: !360, size: 64, offset: 3968)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2831, file: !2832, line: 190, baseType: !360, size: 64, offset: 4032)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2831, file: !2832, line: 190, baseType: !360, size: 64, offset: 4096)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2831, file: !2832, line: 190, baseType: !360, size: 64, offset: 4160)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2831, file: !2832, line: 191, baseType: !360, size: 64, offset: 4224)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2831, file: !2832, line: 191, baseType: !360, size: 64, offset: 4288)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2831, file: !2832, line: 191, baseType: !360, size: 64, offset: 4352)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2831, file: !2832, line: 191, baseType: !360, size: 64, offset: 4416)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2831, file: !2832, line: 192, baseType: !360, size: 64, offset: 4480)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2831, file: !2832, line: 192, baseType: !360, size: 64, offset: 4544)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2831, file: !2832, line: 192, baseType: !360, size: 64, offset: 4608)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2831, file: !2832, line: 192, baseType: !360, size: 64, offset: 4672)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2831, file: !2832, line: 193, baseType: !360, size: 64, offset: 4736)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2831, file: !2832, line: 193, baseType: !360, size: 64, offset: 4800)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2831, file: !2832, line: 194, baseType: !2926, size: 448, offset: 4864)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2927, line: 12, size: 448, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2926, file: !2927, line: 15, baseType: !462, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2926, file: !2927, line: 17, baseType: !462, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2926, file: !2927, line: 19, baseType: !462, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2926, file: !2927, line: 21, baseType: !462, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2926, file: !2927, line: 29, baseType: !462, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2926, file: !2927, line: 35, baseType: !462, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2926, file: !2927, line: 44, baseType: !462, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2831, file: !2832, line: 202, baseType: !464, size: 64, offset: 5312)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2831, file: !2832, line: 213, baseType: !2938, size: 2048, offset: 5376)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2939, size: 2048, elements: !2800)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2940, line: 43, size: 128, elements: !2941)
!2940 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2939, file: !2940, line: 44, baseType: !359, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2939, file: !2940, line: 45, baseType: !359, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2831, file: !2832, line: 216, baseType: !2945, size: 448, offset: 7424)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2832, line: 30, size: 448, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2945, file: !2832, line: 31, baseType: !109, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2945, file: !2832, line: 32, baseType: !346, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2945, file: !2832, line: 33, baseType: !360, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2945, file: !2832, line: 34, baseType: !462, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2945, file: !2832, line: 34, baseType: !462, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2945, file: !2832, line: 35, baseType: !360, size: 64, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2945, file: !2832, line: 35, baseType: !360, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2831, file: !2832, line: 219, baseType: !2955, size: 64, offset: 7872)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2832, line: 219, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2831, file: !2832, line: 222, baseType: !7, size: 32, offset: 7936)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2831, file: !2832, line: 223, baseType: !2959, size: 64, offset: 8000)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2832, line: 223, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2831, file: !2832, line: 230, baseType: !728, size: 8, offset: 8064)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2831, file: !2832, line: 231, baseType: !784, size: 16, offset: 8080)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2831, file: !2832, line: 232, baseType: !784, size: 16, offset: 8096)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2831, file: !2832, line: 234, baseType: !1708, size: 64, offset: 8128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2831, file: !2832, line: 237, baseType: !649, size: 256, offset: 8192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2831, file: !2832, line: 243, baseType: !1305, size: 320, offset: 8448)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1412, file: !1088, line: 1111, baseType: !2968, size: 64, offset: 15424)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2832, line: 20, size: 16640, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2969, file: !2832, line: 21, baseType: !241, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2969, file: !2832, line: 22, baseType: !1425, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2969, file: !2832, line: 23, baseType: !1398, size: 192, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2969, file: !2832, line: 24, baseType: !2975, size: 16384, offset: 256)
!2975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2976, size: 16384, elements: !315)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1977, line: 51, size: 256, elements: !2977)
!2977 = !{!2978}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2976, file: !1977, line: 52, baseType: !2979, size: 256)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1977, line: 37, size: 256, elements: !2980)
!2980 = !{!2981, !2988, !2989, !2993}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2979, file: !1977, line: 39, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2983, line: 83, baseType: !2984)
!2983 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2983, line: 82, baseType: !2986)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !109}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2979, file: !1977, line: 40, baseType: !360, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2979, file: !1977, line: 46, baseType: !2990, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2983, line: 86, baseType: !2991)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2983, line: 85, baseType: !1009)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2979, file: !1977, line: 48, baseType: !2846, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1412, file: !1088, line: 1112, baseType: !2846, size: 64, offset: 15488)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1412, file: !1088, line: 1113, baseType: !2846, size: 64, offset: 15552)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1412, file: !1088, line: 1115, baseType: !2846, size: 64, offset: 15616)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1412, file: !1088, line: 1116, baseType: !2842, size: 192, offset: 15680)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1412, file: !1088, line: 1117, baseType: !360, size: 64, offset: 15872)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1412, file: !1088, line: 1118, baseType: !357, size: 64, offset: 15936)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1412, file: !1088, line: 1119, baseType: !7, size: 32, offset: 16000)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1412, file: !1088, line: 1121, baseType: !865, size: 64, offset: 16064)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1412, file: !1088, line: 1125, baseType: !3003, size: 64, offset: 16128)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1088, line: 43, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1412, file: !1088, line: 1127, baseType: !396, size: 32, offset: 16192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1412, file: !1088, line: 1128, baseType: !7, size: 32, offset: 16224)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1412, file: !1088, line: 1130, baseType: !3008, size: 128, offset: 16256)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3009, line: 37, size: 128, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3010 = !{!3011, !3012, !3013}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3008, file: !3009, line: 38, baseType: !109, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3008, file: !3009, line: 39, baseType: !261, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3008, file: !3009, line: 40, baseType: !3014, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3009, line: 24, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1412, file: !1088, line: 1131, baseType: !3017, size: 256, offset: 16384)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3018, line: 12, size: 256, elements: !3019)
!3018 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3017, file: !3018, line: 13, baseType: !310, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3017, file: !3018, line: 14, baseType: !360, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3017, file: !3018, line: 15, baseType: !360, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3017, file: !3018, line: 16, baseType: !728, size: 8, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1412, file: !1088, line: 1134, baseType: !462, size: 64, offset: 16640)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1412, file: !1088, line: 1135, baseType: !462, size: 64, offset: 16704)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1412, file: !1088, line: 1138, baseType: !241, size: 32, offset: 16768)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1412, file: !1088, line: 1141, baseType: !607, size: 32, offset: 16800)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1412, file: !1088, line: 1143, baseType: !3029, size: 64, offset: 16832)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1088, line: 735, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3029, file: !1088, line: 736, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1412, file: !1088, line: 1147, baseType: !1591, size: 128, offset: 16896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1412, file: !1088, line: 1149, baseType: !1411, size: 64, offset: 17024)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1412, file: !1088, line: 1151, baseType: !3036, size: 64, offset: 17088)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1088, line: 1151, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1412, file: !1088, line: 1188, baseType: !213, size: 64, offset: 17152)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1412, file: !1088, line: 1191, baseType: !3040, size: 64, offset: 17216)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1088, line: 44, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1412, file: !1088, line: 1194, baseType: !3043, size: 64, offset: 17280)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1088, line: 45, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1412, file: !1088, line: 1197, baseType: !3046, size: 64, offset: 17344)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1088, line: 61, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1412, file: !1088, line: 1199, baseType: !3049, size: 64, offset: 17408)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3051, line: 99, size: 128, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3052 = !{!3053, !3054, !3055}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3050, file: !3051, line: 100, baseType: !653, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3050, file: !3051, line: 101, baseType: !261, size: 32, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3050, file: !3051, line: 103, baseType: !280, size: 16, offset: 96)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1412, file: !1088, line: 1202, baseType: !3057, size: 64, offset: 17472)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1088, line: 48, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1412, file: !1088, line: 1205, baseType: !360, size: 64, offset: 17536)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1412, file: !1088, line: 1206, baseType: !3061, size: 64, offset: 17600)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1977, line: 14, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1977, line: 12, size: 384, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, scope: !3063, file: !1977, line: 13, baseType: !3066, size: 384)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3063, file: !1977, line: 13, size: 384, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3066, file: !1977, line: 13, baseType: !109, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3066, file: !1977, line: 13, baseType: !109, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3066, file: !1977, line: 13, baseType: !109, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3066, file: !1977, line: 13, baseType: !3072, size: 256, offset: 128)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3073, line: 37, size: 256, elements: !3074)
!3073 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3074 = !{!3075, !3080, !3093, !3099, !3108, !3135, !3140}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3072, file: !3073, line: 42, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 39, size: 64, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3076, file: !3073, line: 40, baseType: !2742, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3076, file: !3073, line: 41, baseType: !402, size: 32, offset: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3072, file: !3073, line: 50, baseType: !3081, size: 192)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 45, size: 192, elements: !3082)
!3082 = !{!3083, !3085, !3086, !3092}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3081, file: !3073, line: 46, baseType: !3084, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !344, line: 95, baseType: !109)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3081, file: !3073, line: 47, baseType: !109, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3081, file: !3073, line: 48, baseType: !3087, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3073, line: 11, baseType: !3088)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3073, line: 8, size: 64, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3088, file: !3073, line: 9, baseType: !109, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3088, file: !3073, line: 10, baseType: !213, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3081, file: !3073, line: 49, baseType: !109, size: 32, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3072, file: !3073, line: 57, baseType: !3094, size: 128)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 53, size: 128, elements: !3095)
!3095 = !{!3096, !3097, !3098}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3094, file: !3073, line: 54, baseType: !2742, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3094, file: !3073, line: 55, baseType: !402, size: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3094, file: !3073, line: 56, baseType: !3087, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3072, file: !3073, line: 66, baseType: !3100, size: 256)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 60, size: 256, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3107}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3100, file: !3073, line: 61, baseType: !2742, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3100, file: !3073, line: 62, baseType: !402, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3100, file: !3073, line: 63, baseType: !109, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3100, file: !3073, line: 64, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !344, line: 94, baseType: !345)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3100, file: !3073, line: 65, baseType: !3106, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3072, file: !3073, line: 105, baseType: !3109, size: 256)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 69, size: 256, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3109, file: !3073, line: 70, baseType: !213, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !3073, line: 79, baseType: !3113, size: 192, offset: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !3073, line: 79, size: 192, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3124, !3129}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3113, file: !3073, line: 81, baseType: !109, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3113, file: !3073, line: 86, baseType: !784, size: 16)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3113, file: !3073, line: 92, baseType: !3118, size: 192)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3073, line: 88, size: 192, elements: !3119)
!3119 = !{!3120, !3122, !3123}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3118, file: !3073, line: 89, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !1575)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3118, file: !3073, line: 90, baseType: !213, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3118, file: !3073, line: 91, baseType: !213, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3113, file: !3073, line: 97, baseType: !3125, size: 96)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3073, line: 94, size: 96, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3125, file: !3073, line: 95, baseType: !3121, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3125, file: !3073, line: 96, baseType: !173, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3113, file: !3073, line: 103, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3073, line: 99, size: 128, elements: !3131)
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3130, file: !3073, line: 100, baseType: !360, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3130, file: !3073, line: 101, baseType: !173, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3130, file: !3073, line: 102, baseType: !173, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3072, file: !3073, line: 111, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 108, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3136, file: !3073, line: 109, baseType: !346, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3136, file: !3073, line: 110, baseType: !109, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3072, file: !3073, line: 118, baseType: !3141, size: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3073, line: 114, size: 128, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3141, file: !3073, line: 115, baseType: !213, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3141, file: !3073, line: 116, baseType: !109, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3141, file: !3073, line: 117, baseType: !7, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1412, file: !1088, line: 1208, baseType: !2926, size: 448, offset: 17664)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1412, file: !1088, line: 1215, baseType: !462, size: 64, offset: 18112)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1412, file: !1088, line: 1217, baseType: !462, size: 64, offset: 18176)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1412, file: !1088, line: 1219, baseType: !462, size: 64, offset: 18240)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1412, file: !1088, line: 1223, baseType: !3151, size: 64, offset: 18304)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3152, line: 99, baseType: !3153)
!3152 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3152, line: 99, size: 64, elements: !3154)
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3153, file: !3152, line: 99, baseType: !1659, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1412, file: !1088, line: 1225, baseType: !431, size: 32, offset: 18368)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1412, file: !1088, line: 1226, baseType: !109, size: 32, offset: 18400)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1412, file: !1088, line: 1227, baseType: !109, size: 32, offset: 18432)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1412, file: !1088, line: 1231, baseType: !3160, size: 64, offset: 18496)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1088, line: 1231, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1412, file: !1088, line: 1233, baseType: !228, size: 128, offset: 18560)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1412, file: !1088, line: 1240, baseType: !3164, size: 64, offset: 18688)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1088, line: 62, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1412, file: !1088, line: 1242, baseType: !3167, size: 64, offset: 18752)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1088, line: 1242, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1412, file: !1088, line: 1244, baseType: !228, size: 128, offset: 18816)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1412, file: !1088, line: 1245, baseType: !3171, size: 64, offset: 18944)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1088, line: 51, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1412, file: !1088, line: 1246, baseType: !649, size: 256, offset: 19008)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1412, file: !1088, line: 1247, baseType: !7, size: 32, offset: 19264)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1412, file: !1088, line: 1250, baseType: !3176, size: 64, offset: 19328)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1088, line: 57, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1412, file: !1088, line: 1251, baseType: !649, size: 256, offset: 19392)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1412, file: !1088, line: 1252, baseType: !228, size: 128, offset: 19648)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1412, file: !1088, line: 1259, baseType: !2296, size: 64, offset: 19776)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1412, file: !1088, line: 1260, baseType: !784, size: 16, offset: 19840)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1412, file: !1088, line: 1261, baseType: !784, size: 16, offset: 19856)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1412, file: !1088, line: 1314, baseType: !3184, size: 64, offset: 19904)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3186, line: 62, size: 256, align: 256, elements: !3187)
!3186 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3185, file: !3186, line: 75, baseType: !173, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3185, file: !3186, line: 90, baseType: !173, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3185, file: !3186, line: 112, baseType: !463, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3185, file: !3186, line: 132, baseType: !173, size: 32, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3185, file: !3186, line: 140, baseType: !173, size: 32, offset: 160)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3185, file: !3186, line: 149, baseType: !173, size: 32, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3185, file: !3186, line: 154, baseType: !3195, offset: 224)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !1795)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1412, file: !1088, line: 1315, baseType: !459, size: 32, offset: 19968)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1412, file: !1088, line: 1316, baseType: !459, size: 32, offset: 20000)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1412, file: !1088, line: 1321, baseType: !360, size: 64, offset: 20032)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1412, file: !1088, line: 1325, baseType: !109, size: 32, offset: 20096)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1412, file: !1088, line: 1326, baseType: !109, size: 32, offset: 20128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1412, file: !1088, line: 1327, baseType: !109, size: 32, offset: 20160)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1412, file: !1088, line: 1328, baseType: !109, size: 32, offset: 20192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1412, file: !1088, line: 1329, baseType: !866, size: 128, align: 64, offset: 20224)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1412, file: !1088, line: 1332, baseType: !3205, size: 128, offset: 20352)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3206, line: 51, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3207 = !{!3208, !3213, !3214}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3205, file: !3206, line: 60, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3210, line: 7, size: 64, elements: !3211)
!3210 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3209, file: !3210, line: 12, baseType: !1656, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3205, file: !3206, line: 63, baseType: !728, size: 8, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3205, file: !3206, line: 70, baseType: !728, size: 8, offset: 72)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1412, file: !1088, line: 1335, baseType: !2478, size: 64, offset: 20480)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1412, file: !1088, line: 1337, baseType: !3217, size: 128, offset: 20544)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3206, line: 39, size: 128, elements: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3217, file: !3206, line: 40, baseType: !2093, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3217, file: !3206, line: 42, baseType: !173, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3217, file: !3206, line: 43, baseType: !173, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1412, file: !1088, line: 1340, baseType: !3223, size: 64, offset: 20672)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1088, line: 69, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1412, file: !1088, line: 1351, baseType: !109, size: 32, offset: 20736)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1412, file: !1088, line: 1352, baseType: !109, size: 32, offset: 20768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1412, file: !1088, line: 1354, baseType: !360, size: 64, offset: 20800)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1412, file: !1088, line: 1364, baseType: !462, size: 64, offset: 20864)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1412, file: !1088, line: 1365, baseType: !462, size: 64, offset: 20928)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1412, file: !1088, line: 1412, baseType: !360, size: 64, offset: 20992)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1412, file: !1088, line: 1453, baseType: !3232, size: 64, offset: 21056)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1088, line: 1453, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1412, file: !1088, line: 1457, baseType: !3235, size: 64, offset: 21120)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3237)
!3237 = !{!3238, !3239, !3258, !3261, !3262, !3295, !3305}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3236, file: !81, line: 62, baseType: !80, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !81, line: 64, baseType: !3240, size: 192, offset: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !81, line: 64, size: 192, elements: !3241)
!3241 = !{!3242, !3253}
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !81, line: 65, baseType: !3243, size: 192)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3240, file: !81, line: 65, size: 192, elements: !3244)
!3244 = !{!3245, !3252}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3243, file: !81, line: 66, baseType: !3246, size: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3247, line: 50, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3246, file: !3247, line: 52, baseType: !360, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3246, file: !3247, line: 54, baseType: !7, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3246, file: !3247, line: 55, baseType: !7, size: 32, offset: 96)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3243, file: !81, line: 67, baseType: !360, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !81, line: 70, baseType: !3254, size: 192)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3240, file: !81, line: 70, size: 192, elements: !3255)
!3255 = !{!3256, !3257}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3254, file: !81, line: 71, baseType: !866, size: 128, align: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3254, file: !81, line: 72, baseType: !360, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3236, file: !81, line: 76, baseType: !3259, size: 64, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3236, file: !81, line: 77, baseType: !360, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3236, file: !81, line: 79, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3247, line: 25, size: 256, elements: !3265)
!3265 = !{!3266, !3272, !3276}
!3266 = !DIDerivedType(tag: DW_TAG_member, scope: !3264, file: !3247, line: 26, baseType: !3267, size: 128)
!3267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !3247, line: 26, size: 128, elements: !3268)
!3268 = !{!3269, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3267, file: !3247, line: 27, baseType: !3270, size: 128)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 128, elements: !2800)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3267, file: !3247, line: 28, baseType: !3270, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3264, file: !3247, line: 31, baseType: !3273, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3275)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3247, line: 23, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3264, file: !3247, line: 33, baseType: !3277, size: 64, offset: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !3247, line: 33, size: 64, elements: !3278)
!3278 = !{!3279, !3285, !3290}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3277, file: !3247, line: 38, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !3247, line: 34, size: 64, elements: !3281)
!3281 = !{!3282, !3283, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3280, file: !3247, line: 35, baseType: !645, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3280, file: !3247, line: 36, baseType: !269, size: 8, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3280, file: !3247, line: 37, baseType: !269, size: 8, offset: 40)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3277, file: !3247, line: 42, baseType: !3286, size: 16)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !3247, line: 39, size: 16, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3286, file: !3247, line: 40, baseType: !269, size: 8)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3286, file: !3247, line: 41, baseType: !269, size: 8, offset: 8)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3277, file: !3247, line: 46, baseType: !3291, size: 16)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !3247, line: 43, size: 16, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3291, file: !3247, line: 44, baseType: !269, size: 8)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3291, file: !3247, line: 45, baseType: !269, size: 8, offset: 8)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3236, file: !81, line: 81, baseType: !3296, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3297, file: !81, line: 86, baseType: !3259, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3297, file: !81, line: 87, baseType: !360, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3297, file: !81, line: 88, baseType: !360, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3297, file: !81, line: 89, baseType: !360, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3297, file: !81, line: 90, baseType: !728, size: 8, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3297, file: !81, line: 92, baseType: !3296, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3236, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1412, file: !1088, line: 1463, baseType: !3307, offset: 21184)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1088, line: 739, elements: !933)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1412, file: !1088, line: 1470, baseType: !866, size: 128, align: 64, offset: 21184)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1412, file: !1088, line: 1471, baseType: !1425, size: 32, offset: 21312)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1412, file: !1088, line: 1472, baseType: !109, size: 32, offset: 21344)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1412, file: !1088, line: 1474, baseType: !1411, size: 64, offset: 21376)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1412, file: !1088, line: 1475, baseType: !886, size: 320, offset: 21440)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1412, file: !1088, line: 1478, baseType: !3314, size: 64, offset: 21760)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3316, line: 49, size: 512, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3324, !3325, !3326, !3328}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3315, file: !3316, line: 50, baseType: !3314, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3315, file: !3316, line: 51, baseType: !213, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3315, file: !3316, line: 52, baseType: !360, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !3316, line: 53, baseType: !360, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3315, file: !3316, line: 54, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3315, file: !3316, line: 56, baseType: !7, size: 32, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3315, file: !3316, line: 58, baseType: !7, size: 32, offset: 352)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3315, file: !3316, line: 59, baseType: !3327, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !215, line: 159, baseType: !462)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3315, file: !3316, line: 60, baseType: !2617, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1412, file: !1088, line: 1482, baseType: !1425, size: 32, offset: 21824)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1412, file: !1088, line: 1489, baseType: !213, size: 64, offset: 21888)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1412, file: !1088, line: 1504, baseType: !213, size: 64, offset: 21952)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1412, file: !1088, line: 1505, baseType: !463, size: 64, offset: 22016)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1412, file: !1088, line: 1506, baseType: !462, size: 64, offset: 22080)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1412, file: !1088, line: 1507, baseType: !463, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1412, file: !1088, line: 1508, baseType: !463, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1412, file: !1088, line: 1509, baseType: !463, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1412, file: !1088, line: 1510, baseType: !866, size: 128, align: 64, offset: 22208)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1412, file: !1088, line: 1511, baseType: !109, size: 32, offset: 22336)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1412, file: !1088, line: 1515, baseType: !3340, size: 64, offset: 22400)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1439, line: 56, size: 64, elements: !3341)
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3340, file: !1439, line: 57, baseType: !1442, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1412, file: !1088, line: 1518, baseType: !3340, size: 64, offset: 22464)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1412, file: !1088, line: 1528, baseType: !866, size: 128, align: 64, offset: 22528)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1412, file: !1088, line: 1552, baseType: !3346, size: 35328, offset: 23040)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3347, line: 430, size: 35328, elements: !3348)
!3347 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3348 = !{!3349, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3378, !3379, !3380, !3381, !3382, !3383, !3386, !3387, !3388, !3389}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3346, file: !3347, line: 432, baseType: !3350, size: 192)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 192, elements: !311)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3352, line: 16, size: 64, elements: !3353)
!3352 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3351, file: !3352, line: 17, baseType: !278, size: 16)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3351, file: !3352, line: 18, baseType: !278, size: 16, offset: 16)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3351, file: !3352, line: 19, baseType: !278, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3351, file: !3352, line: 19, baseType: !278, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3351, file: !3352, line: 19, baseType: !278, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3351, file: !3352, line: 19, baseType: !278, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3351, file: !3352, line: 19, baseType: !278, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3351, file: !3352, line: 20, baseType: !278, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3351, file: !3352, line: 20, baseType: !278, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3351, file: !3352, line: 20, baseType: !278, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3351, file: !3352, line: 20, baseType: !278, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3351, file: !3352, line: 20, baseType: !278, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3351, file: !3352, line: 20, baseType: !278, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3346, file: !3347, line: 436, baseType: !360, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3346, file: !3347, line: 440, baseType: !280, size: 16, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3346, file: !3347, line: 441, baseType: !280, size: 16, offset: 272)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3346, file: !3347, line: 442, baseType: !280, size: 16, offset: 288)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3346, file: !3347, line: 443, baseType: !280, size: 16, offset: 304)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3346, file: !3347, line: 447, baseType: !360, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3346, file: !3347, line: 448, baseType: !360, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3346, file: !3347, line: 459, baseType: !3375, size: 256, offset: 448)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3376, size: 256, elements: !185)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3347, line: 428, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3346, file: !3347, line: 461, baseType: !360, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3346, file: !3347, line: 463, baseType: !360, size: 64, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3346, file: !3347, line: 465, baseType: !360, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3346, file: !3347, line: 466, baseType: !360, size: 64, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3346, file: !3347, line: 467, baseType: !360, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3346, file: !3347, line: 473, baseType: !3384, size: 64, offset: 1024)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3347, line: 10, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3346, file: !3347, line: 480, baseType: !360, size: 64, offset: 1088)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3346, file: !3347, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3346, file: !3347, line: 491, baseType: !459, size: 32, offset: 1184)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3346, file: !3347, line: 501, baseType: !3390, size: 33792, offset: 1536)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3391, line: 448, size: 33792, elements: !3392)
!3391 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3392 = !{!3393, !3394, !3395, !3557, !3558, !3564, !3565}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3390, file: !3391, line: 461, baseType: !7, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3390, file: !3391, line: 468, baseType: !360, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3390, file: !3391, line: 476, baseType: !3396, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3391, line: 356, size: 33280, align: 512, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3397, file: !3391, line: 358, baseType: !7, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3397, file: !3391, line: 361, baseType: !7, size: 32, offset: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3397, file: !3391, line: 364, baseType: !462, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3397, file: !3391, line: 367, baseType: !462, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3397, file: !3391, line: 370, baseType: !462, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3397, file: !3391, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3397, file: !3391, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3397, file: !3391, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3397, file: !3391, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3397, file: !3391, line: 397, baseType: !3409, size: 32768, offset: 512)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3391, line: 348, size: 32768, elements: !3410)
!3410 = !{!3411, !3426, !3463, !3540, !3553}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3409, file: !3391, line: 349, baseType: !3412, size: 896)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3391, line: 12, size: 896, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3425}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3412, file: !3391, line: 13, baseType: !459, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3412, file: !3391, line: 14, baseType: !459, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3412, file: !3391, line: 15, baseType: !459, size: 32, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3412, file: !3391, line: 16, baseType: !459, size: 32, offset: 96)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3412, file: !3391, line: 17, baseType: !459, size: 32, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3412, file: !3391, line: 18, baseType: !459, size: 32, offset: 160)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3412, file: !3391, line: 19, baseType: !459, size: 32, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3412, file: !3391, line: 22, baseType: !3422, size: 640, offset: 224)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 640, elements: !3423)
!3423 = !{!3424}
!3424 = !DISubrange(count: 20)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3412, file: !3391, line: 25, baseType: !459, size: 32, offset: 864)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3409, file: !3391, line: 350, baseType: !3427, size: 4096, align: 128)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3391, line: 34, size: 4096, align: 128, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3448, !3449, !3450, !3452, !3454, !3458}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3427, file: !3391, line: 35, baseType: !278, size: 16)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3427, file: !3391, line: 36, baseType: !278, size: 16, offset: 16)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3427, file: !3391, line: 37, baseType: !278, size: 16, offset: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3427, file: !3391, line: 38, baseType: !278, size: 16, offset: 48)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !3427, file: !3391, line: 39, baseType: !3434, size: 128, offset: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3427, file: !3391, line: 39, size: 128, elements: !3435)
!3435 = !{!3436, !3441}
!3436 = !DIDerivedType(tag: DW_TAG_member, scope: !3434, file: !3391, line: 40, baseType: !3437, size: 128)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3434, file: !3391, line: 40, size: 128, elements: !3438)
!3438 = !{!3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3437, file: !3391, line: 41, baseType: !462, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3437, file: !3391, line: 42, baseType: !462, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !3434, file: !3391, line: 44, baseType: !3442, size: 128)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3434, file: !3391, line: 44, size: 128, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3442, file: !3391, line: 45, baseType: !459, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3442, file: !3391, line: 46, baseType: !459, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3442, file: !3391, line: 47, baseType: !459, size: 32, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3442, file: !3391, line: 48, baseType: !459, size: 32, offset: 96)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3427, file: !3391, line: 51, baseType: !459, size: 32, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3427, file: !3391, line: 52, baseType: !459, size: 32, offset: 224)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3427, file: !3391, line: 55, baseType: !3451, size: 1024, offset: 256)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 1024, elements: !471)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3427, file: !3391, line: 58, baseType: !3453, size: 2048, offset: 1280)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 2048, elements: !315)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3427, file: !3391, line: 60, baseType: !3455, size: 384, offset: 3328)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 384, elements: !3456)
!3456 = !{!3457}
!3457 = !DISubrange(count: 12)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3427, file: !3391, line: 62, baseType: !3459, size: 384, offset: 3712)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3427, file: !3391, line: 62, size: 384, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3459, file: !3391, line: 63, baseType: !3455, size: 384)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3459, file: !3391, line: 64, baseType: !3455, size: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3409, file: !3391, line: 351, baseType: !3464, size: 1088)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3391, line: 79, size: 1088, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3539}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3464, file: !3391, line: 80, baseType: !459, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3464, file: !3391, line: 81, baseType: !459, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3464, file: !3391, line: 82, baseType: !459, size: 32, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3464, file: !3391, line: 83, baseType: !459, size: 32, offset: 96)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3464, file: !3391, line: 84, baseType: !459, size: 32, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3464, file: !3391, line: 85, baseType: !459, size: 32, offset: 160)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3464, file: !3391, line: 86, baseType: !459, size: 32, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3464, file: !3391, line: 88, baseType: !3422, size: 640, offset: 224)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3464, file: !3391, line: 89, baseType: !269, size: 8, offset: 864)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3464, file: !3391, line: 90, baseType: !269, size: 8, offset: 872)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3464, file: !3391, line: 91, baseType: !269, size: 8, offset: 880)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3464, file: !3391, line: 92, baseType: !269, size: 8, offset: 888)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3464, file: !3391, line: 93, baseType: !269, size: 8, offset: 896)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3464, file: !3391, line: 94, baseType: !269, size: 8, offset: 904)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3464, file: !3391, line: 95, baseType: !3481, size: 64, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3483, line: 11, size: 128, elements: !3484)
!3483 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3482, file: !3483, line: 12, baseType: !346, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3482, file: !3483, line: 13, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3489, line: 103, size: 1344, elements: !3490)
!3489 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3519, !3520, !3521}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3488, file: !3489, line: 109, baseType: !360, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3488, file: !3489, line: 110, baseType: !360, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3488, file: !3489, line: 111, baseType: !360, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3488, file: !3489, line: 112, baseType: !360, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3488, file: !3489, line: 113, baseType: !360, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3488, file: !3489, line: 114, baseType: !360, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3488, file: !3489, line: 117, baseType: !360, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3488, file: !3489, line: 118, baseType: !360, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3488, file: !3489, line: 119, baseType: !360, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3488, file: !3489, line: 120, baseType: !360, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3488, file: !3489, line: 121, baseType: !360, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3488, file: !3489, line: 122, baseType: !360, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3488, file: !3489, line: 123, baseType: !360, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3488, file: !3489, line: 124, baseType: !360, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3488, file: !3489, line: 125, baseType: !360, size: 64, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3488, file: !3489, line: 139, baseType: !360, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3488, file: !3489, line: 142, baseType: !360, size: 64, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !3489, line: 144, baseType: !3509, size: 64, offset: 1088)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !3489, line: 144, size: 64, elements: !3510)
!3510 = !{!3511, !3512, !3513}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3509, file: !3489, line: 146, baseType: !278, size: 16)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3509, file: !3489, line: 148, baseType: !462, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3509, file: !3489, line: 150, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3489, line: 59, size: 64, elements: !3515)
!3515 = !{!3516, !3517, !3518}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3514, file: !3489, line: 61, baseType: !462, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3514, file: !3489, line: 63, baseType: !462, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3514, file: !3489, line: 65, baseType: !462, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3488, file: !3489, line: 153, baseType: !360, size: 64, offset: 1152)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3488, file: !3489, line: 154, baseType: !360, size: 64, offset: 1216)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !3489, line: 156, baseType: !3522, size: 64, offset: 1280)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !3489, line: 156, size: 64, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3522, file: !3489, line: 158, baseType: !278, size: 16)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3522, file: !3489, line: 160, baseType: !462, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3522, file: !3489, line: 162, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3489, line: 69, size: 64, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3527, file: !3489, line: 71, baseType: !462, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3527, file: !3489, line: 73, baseType: !462, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3527, file: !3489, line: 75, baseType: !462, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3527, file: !3489, line: 77, baseType: !462, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3527, file: !3489, line: 80, baseType: !462, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3527, file: !3489, line: 83, baseType: !462, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3527, file: !3489, line: 86, baseType: !462, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3527, file: !3489, line: 88, baseType: !462, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3527, file: !3489, line: 93, baseType: !462, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3527, file: !3489, line: 100, baseType: !462, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3464, file: !3391, line: 96, baseType: !459, size: 32, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3409, file: !3391, line: 352, baseType: !3541, size: 4608, align: 512)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3391, line: 333, size: 4608, align: 512, elements: !3542)
!3542 = !{!3543, !3544, !3551}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3541, file: !3391, line: 334, baseType: !3427, size: 4096, align: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3541, file: !3391, line: 335, baseType: !3545, size: 512, offset: 4096)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3391, line: 312, size: 512, elements: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3545, file: !3391, line: 313, baseType: !462, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3545, file: !3391, line: 314, baseType: !462, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3545, file: !3391, line: 315, baseType: !3550, size: 384, offset: 128)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 384, elements: !1878)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3541, file: !3391, line: 336, baseType: !3552, offset: 4608)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, elements: !1795)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3409, file: !3391, line: 353, baseType: !3554, size: 32768)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 32768, elements: !3555)
!3555 = !{!3556}
!3556 = !DISubrange(count: 4096)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3390, file: !3391, line: 484, baseType: !3396, size: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3390, file: !3391, line: 491, baseType: !3559, size: 128, offset: 256)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3391, line: 404, size: 128, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3559, file: !3391, line: 424, baseType: !462, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3559, file: !3391, line: 432, baseType: !7, size: 32, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3559, file: !3391, line: 440, baseType: !7, size: 32, offset: 96)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3390, file: !3391, line: 498, baseType: !3559, size: 128, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3390, file: !3391, line: 508, baseType: !3397, size: 33280, align: 512, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1388, file: !1389, line: 16, baseType: !1398, size: 192, offset: 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1388, file: !1389, line: 17, baseType: !261, size: 32, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !541, file: !28, line: 1240, baseType: !213, size: 64, offset: 6912)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !541, file: !28, line: 1243, baseType: !459, size: 32, offset: 6976)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !541, file: !28, line: 1245, baseType: !1146, size: 64, offset: 7040)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !541, file: !28, line: 1246, baseType: !1146, size: 64, offset: 7104)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !541, file: !28, line: 1248, baseType: !173, size: 32, offset: 7168)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !541, file: !28, line: 1249, baseType: !3574, size: 64, offset: 7232)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !541, file: !28, line: 1252, baseType: !3577, size: 256, offset: 7296)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !471)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !541, file: !28, line: 1253, baseType: !3579, size: 128, offset: 7552)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3580, line: 21, baseType: !3581)
!3580 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3580, line: 19, size: 128, elements: !3582)
!3582 = !{!3583}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3581, file: !3580, line: 20, baseType: !3584, size: 128)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 128, elements: !2800)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !541, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !541, file: !28, line: 1261, baseType: !649, size: 256, offset: 7744)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !541, file: !28, line: 1267, baseType: !224, size: 64, offset: 8000)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !541, file: !28, line: 1269, baseType: !487, size: 64, offset: 8064)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !541, file: !28, line: 1271, baseType: !3590, size: 448, offset: 8128)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1155, line: 63, size: 448, elements: !3591)
!3591 = !{!3592, !3597, !3598, !3599, !3600, !3601, !3602}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3590, file: !1155, line: 64, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!360, !3596, !1153}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3590, file: !1155, line: 66, baseType: !3593, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3590, file: !1155, line: 69, baseType: !346, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3590, file: !1155, line: 70, baseType: !109, size: 32, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3590, file: !1155, line: 71, baseType: !7, size: 32, offset: 224)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3590, file: !1155, line: 74, baseType: !228, size: 128, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3590, file: !1155, line: 85, baseType: !3603, size: 64, offset: 384)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !541, file: !28, line: 1274, baseType: !653, size: 64, offset: 8576)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !541, file: !28, line: 1280, baseType: !653, size: 64, offset: 8640)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !541, file: !28, line: 1283, baseType: !109, size: 32, offset: 8704)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !541, file: !28, line: 1286, baseType: !2528, size: 32, offset: 8736)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !541, file: !28, line: 1289, baseType: !966, size: 64, offset: 8768)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !541, file: !28, line: 1290, baseType: !1014, size: 64, offset: 8832)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !541, file: !28, line: 1297, baseType: !1972, size: 64, offset: 8896)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !541, file: !28, line: 1304, baseType: !3612, size: 64, offset: 8960)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3613, line: 49, size: 64, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3614 = !{!3615}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3612, file: !3613, line: 50, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3613, line: 41, size: 512, align: 512, elements: !3618)
!3618 = !{!3619, !3620, !3625}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3617, file: !3613, line: 43, baseType: !241, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3617, file: !3613, line: 45, baseType: !3621, size: 192, offset: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3613, line: 29, size: 192, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3621, file: !3613, line: 30, baseType: !228, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3621, file: !3613, line: 32, baseType: !346, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3617, file: !3613, line: 46, baseType: !346, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !541, file: !28, line: 1305, baseType: !3612, size: 64, offset: 9024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !541, file: !28, line: 1306, baseType: !866, size: 128, align: 64, offset: 9088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !541, file: !28, line: 1307, baseType: !904, size: 256, offset: 9216)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !541, file: !28, line: 1309, baseType: !649, size: 256, offset: 9472)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !541, file: !28, line: 1314, baseType: !109, size: 32, offset: 9728)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !541, file: !28, line: 1317, baseType: !241, size: 32, align: 512, offset: 10240)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !541, file: !28, line: 1318, baseType: !228, size: 128, offset: 10304)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !541, file: !28, line: 1320, baseType: !241, size: 32, offset: 10432)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !541, file: !28, line: 1321, baseType: !228, size: 128, offset: 10496)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !535, file: !536, line: 73, baseType: !109, size: 32, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !535, file: !536, line: 74, baseType: !3637, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1819, line: 42, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !489, file: !427, line: 141, baseType: !3641, size: 64, offset: 704)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!109, !1215, !728}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !489, file: !427, line: 142, baseType: !3645, size: 64, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!425, !425, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !426, file: !427, line: 96, baseType: !540, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !426, file: !427, line: 97, baseType: !360, size: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !426, file: !427, line: 98, baseType: !213, size: 64, offset: 960)
!3653 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 100, baseType: !3654, size: 128, offset: 1024)
!3654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 100, size: 128, elements: !3655)
!3655 = !{!3656, !3657}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3654, file: !427, line: 101, baseType: !228, size: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3654, file: !427, line: 102, baseType: !2432, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !426, file: !427, line: 104, baseType: !228, size: 128, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !426, file: !427, line: 105, baseType: !228, size: 128, offset: 1280)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !426, file: !427, line: 113, baseType: !3661, size: 128, offset: 1408)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 109, size: 128, elements: !3662)
!3662 = !{!3663, !3664, !3665}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3661, file: !427, line: 110, baseType: !890, size: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3661, file: !427, line: 111, baseType: !441, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3661, file: !427, line: 112, baseType: !866, size: 128, align: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !419, file: !28, line: 1968, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!224, !425, !390, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3672, line: 10, size: 128, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3671, file: !3672, line: 11, baseType: !691, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3671, file: !3672, line: 12, baseType: !213, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !419, file: !28, line: 1969, baseType: !3677, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!109, !3637, !390, !109}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !419, file: !28, line: 1970, baseType: !3681, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!413, !390, !109, !728}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !419, file: !28, line: 1972, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!109, !425, !310, !109}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !419, file: !28, line: 1974, baseType: !3689, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!109, !3637, !390, !425, !352, !728}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !419, file: !28, line: 1976, baseType: !3693, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!109, !425, !390, !425}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !419, file: !28, line: 1977, baseType: !3697, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!109, !390, !425}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !419, file: !28, line: 1978, baseType: !3701, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!109, !3637, !390, !425, !224}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !419, file: !28, line: 1980, baseType: !3705, size: 64, offset: 576)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!109, !3637, !390, !425, !352}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !419, file: !28, line: 1982, baseType: !3697, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !419, file: !28, line: 1983, baseType: !3710, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!109, !3637, !390, !425, !352, !545}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !419, file: !28, line: 1985, baseType: !3714, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!109, !3637, !390, !425, !390, !425, !7}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !419, file: !28, line: 1987, baseType: !3718, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!109, !3637, !425, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3736, !3745, !3746, !3751, !3752, !3753}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3722, file: !28, line: 227, baseType: !7, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3722, file: !28, line: 228, baseType: !352, size: 16, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !28, line: 241, baseType: !3727, size: 32, offset: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !28, line: 241, size: 32, elements: !3728)
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3727, file: !28, line: 242, baseType: !396, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3727, file: !28, line: 243, baseType: !3731, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3732, line: 16, baseType: !3733)
!3732 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3732, line: 14, size: 32, elements: !3734)
!3734 = !{!3735}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3733, file: !3732, line: 15, baseType: !401, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !28, line: 245, baseType: !3737, size: 32, offset: 96)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !28, line: 245, size: 32, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3737, file: !28, line: 246, baseType: !405, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3737, file: !28, line: 247, baseType: !3741, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3732, line: 20, baseType: !3742)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3732, line: 18, size: 32, elements: !3743)
!3743 = !{!3744}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3742, file: !3732, line: 19, baseType: !409, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3722, file: !28, line: 249, baseType: !550, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3722, file: !28, line: 250, baseType: !3747, size: 128, offset: 192)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1147, line: 13, size: 128, elements: !3748)
!3748 = !{!3749, !3750}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3747, file: !1147, line: 14, baseType: !1146, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3747, file: !1147, line: 15, baseType: !346, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3722, file: !28, line: 251, baseType: !3747, size: 128, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3722, file: !28, line: 252, baseType: !3747, size: 128, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3722, file: !28, line: 259, baseType: !1735, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !419, file: !28, line: 1988, baseType: !3755, size: 64, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!109, !3637, !1215, !3758, !459, !7}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3760, line: 22, size: 1280, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3759, file: !3760, line: 23, baseType: !459, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3759, file: !3760, line: 24, baseType: !352, size: 16, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3759, file: !3760, line: 25, baseType: !7, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3759, file: !3760, line: 26, baseType: !1857, size: 32, offset: 96)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3759, file: !3760, line: 27, baseType: !462, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3759, file: !3760, line: 28, baseType: !462, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3759, file: !3760, line: 41, baseType: !462, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3759, file: !3760, line: 42, baseType: !545, size: 32, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3759, file: !3760, line: 43, baseType: !545, size: 32, offset: 352)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3759, file: !3760, line: 44, baseType: !396, size: 32, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3759, file: !3760, line: 45, baseType: !405, size: 32, offset: 416)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3759, file: !3760, line: 46, baseType: !550, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3759, file: !3760, line: 47, baseType: !3747, size: 128, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3759, file: !3760, line: 48, baseType: !3747, size: 128, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3759, file: !3760, line: 49, baseType: !3747, size: 128, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3759, file: !3760, line: 50, baseType: !3747, size: 128, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3759, file: !3760, line: 51, baseType: !462, size: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3759, file: !3760, line: 52, baseType: !462, size: 64, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3759, file: !3760, line: 53, baseType: !459, size: 32, offset: 1152)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3759, file: !3760, line: 54, baseType: !459, size: 32, offset: 1184)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3759, file: !3760, line: 55, baseType: !462, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !419, file: !28, line: 1990, baseType: !3784, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!342, !425, !310, !357}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !419, file: !28, line: 1991, baseType: !3788, size: 64, offset: 1024)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!109, !390, !3791, !462, !462}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !419, file: !28, line: 1993, baseType: !3794, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!109, !390, !109}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !419, file: !28, line: 1994, baseType: !3798, size: 64, offset: 1152)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!109, !390, !425, !1735, !7, !352}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !419, file: !28, line: 1997, baseType: !3802, size: 64, offset: 1216)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!109, !3637, !390, !1735, !352}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !419, file: !28, line: 1999, baseType: !3806, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!413, !3637, !425, !109}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !419, file: !28, line: 2001, baseType: !3810, size: 64, offset: 1344)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!109, !3637, !425, !413, !109}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !419, file: !28, line: 2003, baseType: !3814, size: 64, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!109, !3637, !425, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !419, file: !28, line: 2005, baseType: !3820, size: 64, offset: 1472)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!109, !425, !3817}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !419, file: !28, line: 2006, baseType: !3824, size: 64, offset: 1536)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3827, !390}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3828, file: !28, line: 3193, baseType: !2384, size: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3828, file: !28, line: 3194, baseType: !459, size: 32, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !391, file: !28, line: 655, baseType: !540, size: 64, offset: 448)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !391, file: !28, line: 656, baseType: !386, size: 64, offset: 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !391, file: !28, line: 659, baseType: !213, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !391, file: !28, line: 663, baseType: !360, size: 64, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !28, line: 671, baseType: !3837, size: 32, offset: 704)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !28, line: 671, size: 32, elements: !3838)
!3838 = !{!3839, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3837, file: !28, line: 672, baseType: !3840, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3837, file: !28, line: 673, baseType: !7, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !391, file: !28, line: 675, baseType: !545, size: 32, offset: 736)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !391, file: !28, line: 676, baseType: !550, size: 64, offset: 768)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !391, file: !28, line: 677, baseType: !3747, size: 128, offset: 832)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !391, file: !28, line: 678, baseType: !3747, size: 128, offset: 960)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !391, file: !28, line: 679, baseType: !3747, size: 128, offset: 1088)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !391, file: !28, line: 680, baseType: !241, size: 32, offset: 1216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !391, file: !28, line: 681, baseType: !280, size: 16, offset: 1248)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !391, file: !28, line: 682, baseType: !269, size: 8, offset: 1264)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !391, file: !28, line: 683, baseType: !269, size: 8, offset: 1272)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !391, file: !28, line: 684, baseType: !1293, size: 64, offset: 1280)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !391, file: !28, line: 691, baseType: !360, size: 64, offset: 1344)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !391, file: !28, line: 692, baseType: !1305, size: 320, offset: 1408)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !391, file: !28, line: 694, baseType: !360, size: 64, offset: 1728)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !391, file: !28, line: 695, baseType: !360, size: 64, offset: 1792)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !391, file: !28, line: 697, baseType: !890, size: 128, offset: 1856)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !391, file: !28, line: 698, baseType: !228, size: 128, offset: 1984)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !391, file: !28, line: 707, baseType: !228, size: 128, offset: 2112)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !391, file: !28, line: 708, baseType: !228, size: 128, offset: 2240)
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !28, line: 709, baseType: !3861, size: 128, offset: 2368)
!3861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !28, line: 709, size: 128, elements: !3862)
!3862 = !{!3863, !3864}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3861, file: !28, line: 710, baseType: !1014, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3861, file: !28, line: 711, baseType: !866, size: 128, align: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !391, file: !28, line: 713, baseType: !655, size: 64, offset: 2496)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !391, file: !28, line: 714, baseType: !655, size: 64, offset: 2560)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !391, file: !28, line: 715, baseType: !261, size: 32, offset: 2624)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !391, file: !28, line: 716, baseType: !261, size: 32, offset: 2656)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !391, file: !28, line: 717, baseType: !261, size: 32, offset: 2688)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !391, file: !28, line: 719, baseType: !261, size: 32, offset: 2720)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !28, line: 721, baseType: !3872, size: 64, offset: 2752)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !28, line: 721, size: 64, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3872, file: !28, line: 722, baseType: !2003, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3872, file: !28, line: 723, baseType: !1037, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !391, file: !28, line: 725, baseType: !3877, size: 64, offset: 2816)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !391, file: !28, line: 726, baseType: !387, size: 1536, align: 64, offset: 2880)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !391, file: !28, line: 727, baseType: !228, size: 128, offset: 4416)
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !28, line: 728, baseType: !3882, size: 64, offset: 4544)
!3882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !28, line: 728, size: 64, elements: !3883)
!3883 = !{!3884, !3885, !3896, !3897}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3882, file: !28, line: 729, baseType: !2478, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3882, file: !28, line: 730, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3888, line: 14, size: 832, elements: !3889)
!3888 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3887, file: !3888, line: 15, baseType: !220, size: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3887, file: !3888, line: 16, baseType: !578, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3887, file: !3888, line: 17, baseType: !2003, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3887, file: !3888, line: 18, baseType: !228, size: 128, offset: 640)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3887, file: !3888, line: 19, baseType: !545, size: 32, offset: 768)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3887, file: !3888, line: 20, baseType: !7, size: 32, offset: 800)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3882, file: !28, line: 731, baseType: !310, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3882, file: !28, line: 732, baseType: !7, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !391, file: !28, line: 735, baseType: !173, size: 32, offset: 4608)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !391, file: !28, line: 738, baseType: !173, size: 32, offset: 4640)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !391, file: !28, line: 739, baseType: !3574, size: 64, offset: 4672)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !391, file: !28, line: 750, baseType: !213, size: 64, offset: 4736)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !387, file: !28, line: 474, baseType: !2384, size: 128, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !387, file: !28, line: 475, baseType: !1305, size: 320, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !387, file: !28, line: 476, baseType: !214, size: 32, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !387, file: !28, line: 477, baseType: !261, size: 32, offset: 544)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !387, file: !28, line: 482, baseType: !1591, size: 128, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !387, file: !28, line: 483, baseType: !360, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !387, file: !28, line: 484, baseType: !360, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !387, file: !28, line: 485, baseType: !3910, size: 64, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3913)
!3913 = !{!3914, !3918, !3988, !3992, !3996, !4002, !4006, !4010, !4015, !4019, !4023, !4027, !4028, !4032, !4036, !4040, !4045, !4049, !4056, !4057}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3912, file: !28, line: 405, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!109, !2093, !1049}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3912, file: !28, line: 406, baseType: !3919, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!109, !1735, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !3924)
!3924 = !{!3925, !3955, !3969}
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3923, file: !65, line: 295, baseType: !3926, size: 512)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3923, file: !65, line: 295, size: 512, elements: !3927)
!3927 = !{!3928, !3954}
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !65, line: 296, baseType: !3929, size: 448)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !65, line: 296, size: 448, elements: !3930)
!3930 = !{!3931, !3932, !3941, !3942, !3943, !3952, !3953}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3929, file: !65, line: 298, baseType: !360, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !65, line: 299, baseType: !3933, size: 128, offset: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !65, line: 299, size: 128, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3933, file: !65, line: 300, baseType: !228, size: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3933, file: !65, line: 302, baseType: !3937, size: 128)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3933, file: !65, line: 302, size: 128, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3937, file: !65, line: 303, baseType: !213, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3937, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3929, file: !65, line: 310, baseType: !386, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3929, file: !65, line: 311, baseType: !360, size: 64, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !65, line: 312, baseType: !3944, size: 64, offset: 320)
!3944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !65, line: 312, size: 64, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3944, file: !65, line: 313, baseType: !213, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3944, file: !65, line: 314, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !3949)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !3950)
!3950 = !{!3951}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3949, file: !65, line: 256, baseType: !360, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3929, file: !65, line: 316, baseType: !261, size: 32, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3929, file: !65, line: 317, baseType: !261, size: 32, offset: 416)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3926, file: !65, line: 323, baseType: !2094, size: 512, align: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3923, file: !65, line: 325, baseType: !3956, size: 512, offset: 512)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3923, file: !65, line: 325, size: 512, elements: !3957)
!3957 = !{!3958, !3968}
!3958 = !DIDerivedType(tag: DW_TAG_member, scope: !3956, file: !65, line: 326, baseType: !3959, size: 320)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3956, file: !65, line: 326, size: 320, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3966, !3967}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3959, file: !65, line: 327, baseType: !360, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3959, file: !65, line: 328, baseType: !360, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3959, file: !65, line: 329, baseType: !360, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3959, file: !65, line: 331, baseType: !261, size: 32, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3959, file: !65, line: 332, baseType: !261, size: 32, offset: 224)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3959, file: !65, line: 333, baseType: !261, size: 32, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3959, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3956, file: !65, line: 339, baseType: !2094, size: 512, align: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !3923, file: !65, line: 341, baseType: !3970, size: 512, offset: 1024)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3923, file: !65, line: 341, size: 512, elements: !3971)
!3971 = !{!3972, !3981, !3987}
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3970, file: !65, line: 342, baseType: !3973, size: 384)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !65, line: 342, size: 384, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3973, file: !65, line: 343, baseType: !360, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3973, file: !65, line: 344, baseType: !360, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3973, file: !65, line: 346, baseType: !213, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3973, file: !65, line: 347, baseType: !213, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3973, file: !65, line: 348, baseType: !213, size: 64, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3973, file: !65, line: 349, baseType: !213, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !3970, file: !65, line: 352, baseType: !3982, size: 256)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !65, line: 352, size: 256, elements: !3983)
!3983 = !{!3984, !3985, !3986}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3982, file: !65, line: 353, baseType: !360, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3982, file: !65, line: 354, baseType: !360, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3982, file: !65, line: 356, baseType: !228, size: 128, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3970, file: !65, line: 359, baseType: !2094, size: 512, align: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3912, file: !28, line: 409, baseType: !3989, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!109, !386, !1049}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3912, file: !28, line: 412, baseType: !3993, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!728, !386, !3922}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3912, file: !28, line: 414, baseType: !3997, size: 64, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !4000}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3912, file: !28, line: 416, baseType: !4003, size: 64, offset: 320)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!109, !1735, !386, !550, !7, !3323, !2493}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3912, file: !28, line: 419, baseType: !4007, size: 64, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!109, !1735, !386, !550, !7, !7, !2093, !213}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3912, file: !28, line: 424, baseType: !4011, size: 64, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!4014, !386, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !215, line: 131, baseType: !462)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3912, file: !28, line: 425, baseType: !4016, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{null, !3922, !357, !357}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3912, file: !28, line: 426, baseType: !4020, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!728, !3922, !214}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3912, file: !28, line: 427, baseType: !4024, size: 64, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !3922}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3912, file: !28, line: 428, baseType: !2022, size: 64, offset: 704)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3912, file: !28, line: 433, baseType: !4029, size: 64, offset: 768)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!109, !386, !3922, !3922, !49}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3912, file: !28, line: 435, baseType: !4033, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!109, !3922}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3912, file: !28, line: 436, baseType: !4037, size: 64, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!728, !3922, !357, !357}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3912, file: !28, line: 438, baseType: !4041, size: 64, offset: 960)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{null, !3922, !4044, !4044}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3912, file: !28, line: 439, baseType: !4046, size: 64, offset: 1024)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!109, !386, !2093}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3912, file: !28, line: 442, baseType: !4050, size: 64, offset: 1088)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!109, !4053, !1735, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3912, file: !28, line: 444, baseType: !2485, size: 64, offset: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3912, file: !28, line: 445, baseType: !4058, size: 64, offset: 1216)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!109, !2025, !2047}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !28, line: 486, baseType: !360, size: 64, offset: 896)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !387, file: !28, line: 487, baseType: !1305, size: 320, offset: 960)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !387, file: !28, line: 488, baseType: !2528, size: 32, offset: 1280)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !387, file: !28, line: 489, baseType: !241, size: 32, offset: 1312)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !387, file: !28, line: 490, baseType: !228, size: 128, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !387, file: !28, line: 491, baseType: !213, size: 64, offset: 1472)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !377, file: !336, line: 180, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!342, !1735, !234, !376, !310, !550, !357}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !377, file: !336, line: 182, baseType: !4068, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !377, file: !336, line: 184, baseType: !4073, size: 64, offset: 448)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!109, !1735, !234, !376, !2203}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !365, file: !336, line: 90, baseType: !4077, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !365, file: !336, line: 91, baseType: !4079, size: 64, offset: 256)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !326, file: !221, line: 120, baseType: !4081, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!4084, !293}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !4087)
!4087 = !{!4088, !4089, !4093, !4097, !4103, !4107}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4086, file: !6, line: 40, baseType: !5, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4086, file: !6, line: 41, baseType: !4090, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!728}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4086, file: !6, line: 42, baseType: !4094, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!213}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4086, file: !6, line: 43, baseType: !4098, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!2617, !4101}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4086, file: !6, line: 44, baseType: !4104, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!2617}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4086, file: !6, line: 45, baseType: !691, size: 64, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !326, file: !221, line: 121, baseType: !4109, size: 64, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!2617, !293}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !326, file: !221, line: 122, baseType: !4113, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !293, !4116, !4117}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !220, file: !221, line: 70, baseType: !4119, size: 64, offset: 384)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !564, line: 190, size: 1152, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4213, !4214, !4215, !4216, !4217, !4220}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4120, file: !564, line: 191, baseType: !261, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4120, file: !564, line: 192, baseType: !261, size: 32, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4120, file: !564, line: 202, baseType: !4119, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4120, file: !564, line: 203, baseType: !224, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4120, file: !564, line: 205, baseType: !760, size: 192, align: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4120, file: !564, line: 207, baseType: !2617, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4120, file: !564, line: 208, baseType: !7, size: 32, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4120, file: !564, line: 209, baseType: !4130, size: 256, offset: 512)
!4130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4120, file: !564, line: 209, size: 256, elements: !4131)
!4131 = !{!4132, !4141, !4145}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4130, file: !564, line: 210, baseType: !4133, size: 256)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !564, line: 153, size: 256, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4140}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4133, file: !564, line: 154, baseType: !360, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4133, file: !564, line: 156, baseType: !1594, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4133, file: !564, line: 162, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !564, line: 162, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4133, file: !564, line: 167, baseType: !360, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4130, file: !564, line: 211, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !564, line: 170, size: 64, elements: !4143)
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4142, file: !564, line: 171, baseType: !4119, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4130, file: !564, line: 212, baseType: !4146, size: 256)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !564, line: 174, size: 256, elements: !4147)
!4147 = !{!4148, !4208, !4211, !4212}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4146, file: !564, line: 175, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !564, line: 271, size: 768, elements: !4152)
!4152 = !{!4153, !4173, !4177, !4181, !4185, !4189, !4193, !4197, !4198, !4199, !4200, !4204}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4151, file: !564, line: 276, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!109, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !564, line: 251, size: 1216, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4158, file: !564, line: 253, baseType: !4119, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4158, file: !564, line: 254, baseType: !1735, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4158, file: !564, line: 255, baseType: !1086, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4158, file: !564, line: 256, baseType: !213, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4158, file: !564, line: 259, baseType: !649, size: 256, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4158, file: !564, line: 260, baseType: !649, size: 256, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4158, file: !564, line: 261, baseType: !109, size: 32, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4158, file: !564, line: 262, baseType: !228, size: 128, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4158, file: !564, line: 263, baseType: !310, size: 64, offset: 960)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4158, file: !564, line: 265, baseType: !357, size: 64, offset: 1024)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4158, file: !564, line: 266, baseType: !728, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4158, file: !564, line: 267, baseType: !728, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4158, file: !564, line: 268, baseType: !2248, size: 64, offset: 1152)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4151, file: !564, line: 277, baseType: !4174, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4157}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4151, file: !564, line: 290, baseType: !4178, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!109, !1086, !213}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4151, file: !564, line: 292, baseType: !4182, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!213, !1086, !2016}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4151, file: !564, line: 293, baseType: !4186, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!213, !1086, !213, !2016}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4151, file: !564, line: 294, baseType: !4190, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !1086, !213}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4151, file: !564, line: 296, baseType: !4194, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!342, !4157, !310, !357, !550}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4151, file: !564, line: 306, baseType: !357, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4151, file: !564, line: 313, baseType: !728, size: 8, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4151, file: !564, line: 314, baseType: !4194, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4151, file: !564, line: 317, baseType: !4201, size: 64, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!2421, !4157, !2423}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4151, file: !564, line: 320, baseType: !4205, size: 64, offset: 704)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!109, !4157, !2203}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4146, file: !564, line: 176, baseType: !4209, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !564, line: 35, flags: DIFlagFwdDecl)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4146, file: !564, line: 177, baseType: !550, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4146, file: !564, line: 178, baseType: !4119, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4120, file: !564, line: 215, baseType: !213, size: 64, offset: 768)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4120, file: !564, line: 221, baseType: !462, size: 64, offset: 832)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4120, file: !564, line: 223, baseType: !280, size: 16, offset: 896)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4120, file: !564, line: 224, baseType: !352, size: 16, offset: 912)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4120, file: !564, line: 225, baseType: !4218, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !564, line: 36, flags: DIFlagFwdDecl)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4120, file: !564, line: 227, baseType: !866, size: 128, align: 64, offset: 1024)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !220, file: !221, line: 71, baseType: !4222, size: 32, offset: 448)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4223, line: 19, size: 32, elements: !4224)
!4223 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4224 = !{!4225}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4222, file: !4223, line: 20, baseType: !1425, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !220, file: !221, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !220, file: !221, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !220, file: !221, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !220, file: !221, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !220, file: !221, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !94, line: 707, baseType: !216, size: 64, offset: 512)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !217, file: !94, line: 709, baseType: !4233, size: 64, offset: 576)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !217, file: !94, line: 711, baseType: !224, size: 64, offset: 640)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !94, line: 712, baseType: !4237, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4239)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4249, !4254, !4258}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4239, file: !94, line: 90, baseType: !224, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4239, file: !94, line: 91, baseType: !362, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4239, file: !94, line: 92, baseType: !4244, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!109, !4247, !305}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4239, file: !94, line: 93, baseType: !4250, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!310, !4247, !4253, !4116, !4117}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4239, file: !94, line: 95, baseType: !4255, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !216}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4239, file: !94, line: 97, baseType: !4259, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4261)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4262)
!4262 = !{!4263, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4261, file: !101, line: 287, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!109, !216}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4261, file: !101, line: 288, baseType: !4255, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4261, file: !101, line: 289, baseType: !4264, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4261, file: !101, line: 290, baseType: !4264, size: 64, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4261, file: !101, line: 291, baseType: !4264, size: 64, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4261, file: !101, line: 292, baseType: !4264, size: 64, offset: 320)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4261, file: !101, line: 293, baseType: !4264, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4261, file: !101, line: 294, baseType: !4264, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4261, file: !101, line: 295, baseType: !4264, size: 64, offset: 512)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4261, file: !101, line: 296, baseType: !4264, size: 64, offset: 576)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4261, file: !101, line: 297, baseType: !4264, size: 64, offset: 640)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4261, file: !101, line: 298, baseType: !4264, size: 64, offset: 704)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4261, file: !101, line: 299, baseType: !4264, size: 64, offset: 768)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4261, file: !101, line: 300, baseType: !4264, size: 64, offset: 832)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4261, file: !101, line: 301, baseType: !4264, size: 64, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4261, file: !101, line: 302, baseType: !4264, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4261, file: !101, line: 303, baseType: !4264, size: 64, offset: 1024)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4261, file: !101, line: 304, baseType: !4264, size: 64, offset: 1088)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4261, file: !101, line: 305, baseType: !4264, size: 64, offset: 1152)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4261, file: !101, line: 306, baseType: !4264, size: 64, offset: 1216)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4261, file: !101, line: 307, baseType: !4264, size: 64, offset: 1280)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4261, file: !101, line: 308, baseType: !4264, size: 64, offset: 1344)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4261, file: !101, line: 309, baseType: !4264, size: 64, offset: 1408)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !217, file: !94, line: 714, baseType: !4290, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4292)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4293, line: 80, size: 1344, elements: !4294)
!4293 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4358}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4292, file: !4293, line: 81, baseType: !224, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4292, file: !4293, line: 82, baseType: !224, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4292, file: !4293, line: 83, baseType: !362, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4292, file: !4293, line: 84, baseType: !362, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4292, file: !4293, line: 85, baseType: !362, size: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4292, file: !4293, line: 87, baseType: !4301, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!109, !216, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317, !4321, !4322, !4323, !4324, !4325, !4333, !4334, !4335, !4336, !4337, !4338}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4305, file: !88, line: 97, baseType: !224, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4305, file: !88, line: 98, baseType: !4290, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4305, file: !88, line: 100, baseType: !578, size: 64, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4305, file: !88, line: 101, baseType: !224, size: 64, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4305, file: !88, line: 103, baseType: !728, size: 8, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4305, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4305, file: !88, line: 106, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4316)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4305, file: !88, line: 107, baseType: !4318, size: 64, offset: 384)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4305, file: !88, line: 109, baseType: !4264, size: 64, offset: 448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4305, file: !88, line: 110, baseType: !4255, size: 64, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4305, file: !88, line: 111, baseType: !4264, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4305, file: !88, line: 112, baseType: !4255, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4305, file: !88, line: 113, baseType: !4326, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!109, !216, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4331)
!4331 = !{!4332}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4330, file: !101, line: 59, baseType: !109, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4305, file: !88, line: 114, baseType: !4264, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4305, file: !88, line: 115, baseType: !362, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4305, file: !88, line: 116, baseType: !362, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4305, file: !88, line: 118, baseType: !4259, size: 64, offset: 960)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4305, file: !88, line: 119, baseType: !4255, size: 64, offset: 1024)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4305, file: !88, line: 121, baseType: !4339, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4292, file: !4293, line: 88, baseType: !4244, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4292, file: !4293, line: 89, baseType: !4264, size: 64, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4292, file: !4293, line: 90, baseType: !4255, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4292, file: !4293, line: 91, baseType: !4255, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4292, file: !4293, line: 92, baseType: !4255, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4292, file: !4293, line: 94, baseType: !4264, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4292, file: !4293, line: 95, baseType: !4264, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4292, file: !4293, line: 97, baseType: !4326, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4292, file: !4293, line: 98, baseType: !4264, size: 64, offset: 896)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4292, file: !4293, line: 100, baseType: !4264, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4292, file: !4293, line: 102, baseType: !4264, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4292, file: !4293, line: 103, baseType: !4255, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4292, file: !4293, line: 105, baseType: !4259, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4292, file: !4293, line: 107, baseType: !4355, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4293, line: 107, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4292, file: !4293, line: 109, baseType: !728, size: 8, offset: 1280)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !217, file: !94, line: 715, baseType: !4304, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !217, file: !94, line: 717, baseType: !213, size: 64, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !217, file: !94, line: 719, baseType: !213, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !217, file: !94, line: 721, baseType: !649, size: 256, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !217, file: !94, line: 725, baseType: !4364, size: 448, offset: 1280)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4364, file: !94, line: 518, baseType: !228, size: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4364, file: !94, line: 519, baseType: !228, size: 128, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4364, file: !94, line: 520, baseType: !228, size: 128, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4364, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !217, file: !94, line: 726, baseType: !4371, size: 2496, offset: 1728)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4455, !4459}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4371, file: !101, line: 664, baseType: !4329, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4371, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4371, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4371, file: !101, line: 667, baseType: !728, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4371, file: !101, line: 668, baseType: !728, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4371, file: !101, line: 669, baseType: !728, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4371, file: !101, line: 670, baseType: !728, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4371, file: !101, line: 671, baseType: !728, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4371, file: !101, line: 672, baseType: !728, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4371, file: !101, line: 673, baseType: !728, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4371, file: !101, line: 674, baseType: !728, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4371, file: !101, line: 675, baseType: !459, size: 32, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4371, file: !101, line: 676, baseType: !241, size: 32, offset: 96)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4371, file: !101, line: 678, baseType: !228, size: 128, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4371, file: !101, line: 679, baseType: !598, size: 256, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4371, file: !101, line: 680, baseType: !4389, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4391, line: 43, size: 1536, elements: !4392)
!4391 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4390, file: !4391, line: 44, baseType: !224, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4390, file: !4391, line: 45, baseType: !109, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4390, file: !4391, line: 46, baseType: !228, size: 128, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4390, file: !4391, line: 47, baseType: !241, size: 32, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4390, file: !4391, line: 48, baseType: !4398, size: 64, offset: 320)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4390, file: !4391, line: 49, baseType: !886, size: 320, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4390, file: !4391, line: 50, baseType: !360, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4390, file: !4391, line: 51, baseType: !1540, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4390, file: !4391, line: 52, baseType: !1540, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4390, file: !4391, line: 53, baseType: !1540, size: 64, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4390, file: !4391, line: 54, baseType: !1540, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4390, file: !4391, line: 55, baseType: !1540, size: 64, offset: 1024)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4390, file: !4391, line: 56, baseType: !360, size: 64, offset: 1088)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4390, file: !4391, line: 57, baseType: !360, size: 64, offset: 1152)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4390, file: !4391, line: 58, baseType: !360, size: 64, offset: 1216)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4390, file: !4391, line: 59, baseType: !360, size: 64, offset: 1280)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4390, file: !4391, line: 60, baseType: !360, size: 64, offset: 1344)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4390, file: !4391, line: 61, baseType: !216, size: 64, offset: 1408)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4390, file: !4391, line: 62, baseType: !728, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4390, file: !4391, line: 63, baseType: !728, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4371, file: !101, line: 681, baseType: !728, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4371, file: !101, line: 682, baseType: !728, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4371, file: !101, line: 683, baseType: !728, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4371, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4371, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4371, file: !101, line: 690, baseType: !1532, size: 512, offset: 640)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4371, file: !101, line: 691, baseType: !462, size: 64, offset: 1152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4371, file: !101, line: 692, baseType: !904, size: 256, offset: 1216)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4371, file: !101, line: 693, baseType: !1398, size: 192, offset: 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4371, file: !101, line: 694, baseType: !4398, size: 64, offset: 1664)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4371, file: !101, line: 695, baseType: !261, size: 32, offset: 1728)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4371, file: !101, line: 696, baseType: !261, size: 32, offset: 1760)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4371, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4371, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4371, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4371, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4371, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4371, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4371, file: !101, line: 703, baseType: !728, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4371, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4371, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4371, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4371, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4371, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4371, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4371, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4371, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4371, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4371, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4371, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4371, file: !101, line: 715, baseType: !462, size: 64, offset: 2048)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4371, file: !101, line: 716, baseType: !462, size: 64, offset: 2112)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4371, file: !101, line: 717, baseType: !462, size: 64, offset: 2176)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4371, file: !101, line: 718, baseType: !462, size: 64, offset: 2240)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4371, file: !101, line: 720, baseType: !4450, size: 64, offset: 2304)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4452)
!4452 = !{!4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4451, file: !101, line: 633, baseType: !241, size: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4451, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4371, file: !101, line: 721, baseType: !4456, size: 64, offset: 2368)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !216, !645}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4371, file: !101, line: 722, baseType: !4460, size: 64, offset: 2432)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !217, file: !94, line: 727, baseType: !4463, size: 64, offset: 4224)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4472, !4473, !4474}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4464, file: !101, line: 743, baseType: !4261, size: 1472)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4464, file: !101, line: 744, baseType: !4264, size: 64, offset: 1472)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4464, file: !101, line: 745, baseType: !4469, size: 64, offset: 1536)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !216, !728}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4464, file: !101, line: 746, baseType: !4264, size: 64, offset: 1600)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4464, file: !101, line: 747, baseType: !4255, size: 64, offset: 1664)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4464, file: !101, line: 748, baseType: !4255, size: 64, offset: 1728)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !217, file: !94, line: 736, baseType: !4476, size: 128, offset: 4288)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4477)
!4477 = !{!4478, !4482}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4476, file: !94, line: 531, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4481, line: 13, flags: DIFlagFwdDecl)
!4481 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4476, file: !94, line: 532, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !217, file: !94, line: 738, baseType: !4486, size: 64, offset: 4416)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !217, file: !94, line: 740, baseType: !4490, size: 64, offset: 4480)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !217, file: !94, line: 741, baseType: !462, size: 64, offset: 4544)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !217, file: !94, line: 746, baseType: !462, size: 64, offset: 4608)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !217, file: !94, line: 747, baseType: !4494, size: 64, offset: 4672)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !217, file: !94, line: 749, baseType: !4498, size: 64, offset: 4736)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4499, file: !94, line: 433, baseType: !7, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4499, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4499, file: !94, line: 435, baseType: !360, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !217, file: !94, line: 751, baseType: !228, size: 128, offset: 4800)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !217, file: !94, line: 762, baseType: !4506, size: 64, offset: 4928)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !217, file: !94, line: 770, baseType: !4509, offset: 4992)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4510, line: 5, elements: !933)
!4510 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !217, file: !94, line: 772, baseType: !4512, size: 64, offset: 4992)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4514, line: 18, flags: DIFlagFwdDecl)
!4514 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !217, file: !94, line: 773, baseType: !4516, size: 64, offset: 5056)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4518, line: 41, size: 512, elements: !4519)
!4518 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4519 = !{!4520, !4521, !4615, !4616, !4617, !4618}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4517, file: !4518, line: 42, baseType: !4516, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4517, file: !4518, line: 43, baseType: !4522, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4524)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4518, line: 125, size: 1408, elements: !4525)
!4525 = !{!4526, !4530, !4534, !4540, !4544, !4545, !4550, !4554, !4558, !4562, !4566, !4567, !4571, !4575, !4579, !4590, !4591, !4592, !4593, !4603, !4607, !4611}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4524, file: !4518, line: 126, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!4516, !4516}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4524, file: !4518, line: 127, baseType: !4531, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !4516}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4524, file: !4518, line: 128, baseType: !4535, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!728, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4517)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4524, file: !4518, line: 129, baseType: !4541, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!2617, !4538, !4247}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4524, file: !4518, line: 131, baseType: !4535, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4524, file: !4518, line: 133, baseType: !4546, size: 64, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!4549, !4538}
!4549 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4518, line: 132, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4524, file: !4518, line: 134, baseType: !4551, size: 64, offset: 384)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!728, !4538, !224}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4524, file: !4518, line: 136, baseType: !4555, size: 64, offset: 448)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!109, !4538, !224, !7, !213, !357}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4524, file: !4518, line: 141, baseType: !4559, size: 64, offset: 512)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!109, !4538, !224, !981, !357}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4524, file: !4518, line: 144, baseType: !4563, size: 64, offset: 576)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!224, !4538}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4524, file: !4518, line: 145, baseType: !4563, size: 64, offset: 640)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4524, file: !4518, line: 146, baseType: !4568, size: 64, offset: 704)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!4516, !4538}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4524, file: !4518, line: 148, baseType: !4572, size: 64, offset: 768)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!4516, !4538, !4516}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4524, file: !4518, line: 151, baseType: !4576, size: 64, offset: 832)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4516, !4538, !224}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4524, file: !4518, line: 153, baseType: !4580, size: 64, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!109, !4538, !224, !224, !7, !7, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4518, line: 94, size: 640, elements: !4585)
!4585 = !{!4586, !4587, !4588}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4584, file: !4518, line: 95, baseType: !4516, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4584, file: !4518, line: 96, baseType: !7, size: 32, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4584, file: !4518, line: 97, baseType: !4589, size: 512, offset: 128)
!4589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 512, elements: !1575)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4524, file: !4518, line: 158, baseType: !4572, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4524, file: !4518, line: 161, baseType: !4568, size: 64, offset: 1024)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4524, file: !4518, line: 163, baseType: !4527, size: 64, offset: 1088)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4524, file: !4518, line: 164, baseType: !4594, size: 64, offset: 1152)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!109, !4538, !4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4518, line: 73, size: 128, elements: !4599)
!4599 = !{!4600, !4601, !4602}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4598, file: !4518, line: 74, baseType: !7, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4598, file: !4518, line: 75, baseType: !7, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4598, file: !4518, line: 76, baseType: !4538, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4524, file: !4518, line: 166, baseType: !4604, size: 64, offset: 1216)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!213, !4516, !109}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4524, file: !4518, line: 167, baseType: !4608, size: 64, offset: 1280)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!109, !4538, !7}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4524, file: !4518, line: 168, baseType: !4612, size: 64, offset: 1344)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!109, !4516}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4517, file: !4518, line: 44, baseType: !216, size: 64, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4517, file: !4518, line: 45, baseType: !228, size: 128, offset: 192)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4517, file: !4518, line: 46, baseType: !228, size: 128, offset: 320)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4517, file: !4518, line: 47, baseType: !269, size: 8, offset: 448)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !217, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !217, file: !94, line: 778, baseType: !545, size: 32, offset: 5152)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !217, file: !94, line: 779, baseType: !459, size: 32, offset: 5184)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !217, file: !94, line: 781, baseType: !241, size: 32, offset: 5216)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !217, file: !94, line: 782, baseType: !228, size: 128, offset: 5248)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !217, file: !94, line: 784, baseType: !4625, size: 64, offset: 5376)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4627)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4628, line: 52, size: 768, elements: !4629)
!4628 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4638, !4642, !4643, !4644, !4645, !4649, !4653}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4627, file: !4628, line: 53, baseType: !224, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4627, file: !4628, line: 55, baseType: !362, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4627, file: !4628, line: 56, baseType: !362, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4627, file: !4628, line: 58, baseType: !4244, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4627, file: !4628, line: 59, baseType: !4635, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!310, !4247, !4253}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4627, file: !4628, line: 61, baseType: !4639, size: 64, offset: 320)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4625}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4627, file: !4628, line: 62, baseType: !4255, size: 64, offset: 384)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4627, file: !4628, line: 64, baseType: !4264, size: 64, offset: 448)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4627, file: !4628, line: 66, baseType: !4084, size: 64, offset: 512)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4627, file: !4628, line: 67, baseType: !4646, size: 64, offset: 576)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!2617, !4247}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4627, file: !4628, line: 69, baseType: !4650, size: 64, offset: 640)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{null, !4247, !4116, !4117}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4627, file: !4628, line: 71, baseType: !4259, size: 64, offset: 704)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !217, file: !94, line: 785, baseType: !362, size: 64, offset: 5440)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !217, file: !94, line: 787, baseType: !4255, size: 64, offset: 5504)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !217, file: !94, line: 788, baseType: !4657, size: 64, offset: 5568)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !217, file: !94, line: 789, baseType: !4660, size: 64, offset: 5632)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !217, file: !94, line: 791, baseType: !4663, size: 64, offset: 5696)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4665)
!4665 = !{!4666, !4667, !4668, !4669, !4670}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4664, file: !94, line: 598, baseType: !116, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4664, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4664, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4664, file: !94, line: 601, baseType: !728, size: 8, offset: 96)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4664, file: !94, line: 602, baseType: !728, size: 8, offset: 104)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !217, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !217, file: !94, line: 795, baseType: !728, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !217, file: !94, line: 796, baseType: !728, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !217, file: !94, line: 797, baseType: !728, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !217, file: !94, line: 798, baseType: !728, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !217, file: !94, line: 799, baseType: !728, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_vclock", file: !4683, line: 62, size: 2496, elements: !4684)
!4683 = !DIFile(filename: "drivers/ptp/ptp_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6401785878d097ded4610e2a083f87")
!4684 = !{!4685, !4979, !4980, !4981, !4982, !4995, !5003}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pclock", scope: !4682, file: !4683, line: 63, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !4683, line: 30, size: 43392, elements: !4688)
!4688 = !{!4689, !4769, !4770, !4855, !4856, !4857, !4908, !4909, !4925, !4926, !4927, !4928, !4929, !4942, !4943, !4944, !4946, !4968, !4973, !4974, !4975, !4976, !4977, !4978}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4687, file: !4683, line: 31, baseType: !4690, size: 1920)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock", file: !4691, line: 85, size: 1920, elements: !4692)
!4691 = !DIFile(filename: "./include/linux/posix-clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "033589a08c5a69dceae9211ceff0c050")
!4692 = !{!4693, !4765, !4766, !4767, !4768}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4690, file: !4691, line: 86, baseType: !4694, size: 640)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock_operations", file: !4691, line: 38, size: 640, elements: !4695)
!4695 = !{!4696, !4697, !4730, !4735, !4736, !4742, !4746, !4750, !4756, !4760}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4694, file: !4691, line: 39, baseType: !578, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "clock_adjtime", scope: !4694, file: !4691, line: 41, baseType: !4698, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!109, !4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex", file: !4704, line: 102, size: 1664, elements: !4705)
!4704 = !DIFile(filename: "./include/uapi/linux/timex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37fb729d65fdd1562db85b44515cd515")
!4705 = !{!4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !4703, file: !4704, line: 103, baseType: !7, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4703, file: !4704, line: 105, baseType: !171, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4703, file: !4704, line: 106, baseType: !171, size: 64, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !4703, file: !4704, line: 107, baseType: !171, size: 64, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !4703, file: !4704, line: 108, baseType: !171, size: 64, offset: 256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4703, file: !4704, line: 109, baseType: !109, size: 32, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4703, file: !4704, line: 111, baseType: !171, size: 64, offset: 384)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !4703, file: !4704, line: 112, baseType: !171, size: 64, offset: 448)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !4703, file: !4704, line: 113, baseType: !171, size: 64, offset: 512)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4703, file: !4704, line: 116, baseType: !4716, size: 128, offset: 576)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex_timeval", file: !4704, line: 97, size: 128, elements: !4717)
!4717 = !{!4718, !4719}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4716, file: !4704, line: 98, baseType: !2714, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4716, file: !4704, line: 99, baseType: !171, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !4703, file: !4704, line: 117, baseType: !171, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !4703, file: !4704, line: 119, baseType: !171, size: 64, offset: 768)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !4703, file: !4704, line: 120, baseType: !171, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4703, file: !4704, line: 121, baseType: !109, size: 32, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !4703, file: !4704, line: 123, baseType: !171, size: 64, offset: 960)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !4703, file: !4704, line: 124, baseType: !171, size: 64, offset: 1024)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !4703, file: !4704, line: 125, baseType: !171, size: 64, offset: 1088)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !4703, file: !4704, line: 126, baseType: !171, size: 64, offset: 1152)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !4703, file: !4704, line: 127, baseType: !171, size: 64, offset: 1216)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !4703, file: !4704, line: 129, baseType: !109, size: 32, offset: 1280)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "clock_gettime", scope: !4694, file: !4691, line: 43, baseType: !4731, size: 64, offset: 128)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!109, !4701, !4734}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "clock_getres", scope: !4694, file: !4691, line: 45, baseType: !4731, size: 64, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "clock_settime", scope: !4694, file: !4691, line: 47, baseType: !4737, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!109, !4701, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3747)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4694, file: !4691, line: 53, baseType: !4743, size: 64, offset: 320)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!346, !4701, !7, !360}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4694, file: !4691, line: 56, baseType: !4747, size: 64, offset: 384)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!109, !4701, !1746}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4694, file: !4691, line: 58, baseType: !4751, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!2421, !4701, !1735, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2425, line: 40, baseType: !2424)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4694, file: !4691, line: 61, baseType: !4757, size: 64, offset: 512)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!109, !4701}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4694, file: !4691, line: 63, baseType: !4761, size: 64, offset: 576)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!342, !4701, !4764, !310, !357}
!4764 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !215, line: 93, baseType: !7)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4690, file: !4691, line: 87, baseType: !3887, size: 832, offset: 640)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4690, file: !4691, line: 88, baseType: !216, size: 64, offset: 1472)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4690, file: !4691, line: 89, baseType: !1305, size: 320, offset: 1536)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !4690, file: !4691, line: 90, baseType: !728, size: 8, offset: 1856)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4687, file: !4683, line: 32, baseType: !217, size: 5824, offset: 1920)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4687, file: !4683, line: 33, baseType: !4771, size: 64, offset: 7744)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !142, line: 166, size: 1472, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4795, !4799, !4803, !4807, !4811, !4815, !4824, !4835, !4839, !4840, !4841, !4842, !4847, !4851}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4772, file: !142, line: 167, baseType: !578, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4772, file: !142, line: 168, baseType: !3577, size: 256, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !4772, file: !142, line: 169, baseType: !645, size: 32, offset: 320)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !4772, file: !142, line: 170, baseType: !109, size: 32, offset: 352)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !4772, file: !142, line: 171, baseType: !109, size: 32, offset: 384)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !4772, file: !142, line: 172, baseType: !109, size: 32, offset: 416)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !4772, file: !142, line: 173, baseType: !109, size: 32, offset: 448)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !4772, file: !142, line: 174, baseType: !109, size: 32, offset: 480)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !4772, file: !142, line: 175, baseType: !4783, size: 64, offset: 512)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !151, line: 175, size: 768, elements: !4785)
!4785 = !{!4786, !4788, !4789, !4790, !4791}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4784, file: !151, line: 181, baseType: !4787, size: 512)
!4787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 512, elements: !315)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4784, file: !151, line: 185, baseType: !7, size: 32, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4784, file: !151, line: 189, baseType: !7, size: 32, offset: 544)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4784, file: !151, line: 195, baseType: !7, size: 32, offset: 576)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4784, file: !151, line: 199, baseType: !4792, size: 160, offset: 608)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !4793)
!4793 = !{!4794}
!4794 = !DISubrange(count: 5)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !4772, file: !142, line: 176, baseType: !4796, size: 64, offset: 576)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!109, !4771, !346}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !4772, file: !142, line: 177, baseType: !4800, size: 64, offset: 640)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!109, !4771, !645}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "getmaxphase", scope: !4772, file: !142, line: 178, baseType: !4804, size: 64, offset: 704)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!645, !4771}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !4772, file: !142, line: 179, baseType: !4808, size: 64, offset: 768)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!109, !4771, !659}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !4772, file: !142, line: 180, baseType: !4812, size: 64, offset: 832)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!109, !4771, !4734}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !4772, file: !142, line: 181, baseType: !4816, size: 64, offset: 896)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!109, !4771, !4734, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !142, line: 51, size: 256, elements: !4821)
!4821 = !{!4822, !4823}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !4820, file: !142, line: 52, baseType: !3747, size: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !4820, file: !142, line: 53, baseType: !3747, size: 128, offset: 128)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !4772, file: !142, line: 183, baseType: !4825, size: 64, offset: 960)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!109, !4771, !4828}
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !4830, line: 263, size: 192, elements: !4831)
!4830 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4831 = !{!4832, !4833, !4834}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4829, file: !4830, line: 264, baseType: !1540, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !4829, file: !4830, line: 265, baseType: !1540, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !4829, file: !4830, line: 266, baseType: !1540, size: 64, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !4772, file: !142, line: 185, baseType: !4836, size: 64, offset: 1024)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!109, !4771, !4740}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "getcycles64", scope: !4772, file: !142, line: 186, baseType: !4812, size: 64, offset: 1088)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "getcyclesx64", scope: !4772, file: !142, line: 187, baseType: !4816, size: 64, offset: 1152)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosscycles", scope: !4772, file: !142, line: 189, baseType: !4825, size: 64, offset: 1216)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4772, file: !142, line: 191, baseType: !4843, size: 64, offset: 1280)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!109, !4771, !4846, !109}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !4772, file: !142, line: 193, baseType: !4848, size: 64, offset: 1344)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!109, !4771, !7, !191, !7}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !4772, file: !142, line: 195, baseType: !4852, size: 64, offset: 1408)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!346, !4771}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !4687, file: !4683, line: 34, baseType: !545, size: 32, offset: 7808)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4687, file: !4683, line: 35, baseType: !109, size: 32, offset: 7840)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pps_source", scope: !4687, file: !4683, line: 36, baseType: !4858, size: 64, offset: 7872)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !4860, line: 43, size: 7744, elements: !4861)
!4860 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84efb6f82a468768bae0d7aa032cd392")
!4861 = !{!4862, !4874, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4907}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4859, file: !4860, line: 44, baseType: !4863, size: 768)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !4860, line: 23, size: 768, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4868, !4872, !4873}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4863, file: !4860, line: 24, baseType: !3577, size: 256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4863, file: !4860, line: 25, baseType: !3577, size: 256, offset: 256)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4863, file: !4860, line: 26, baseType: !109, size: 32, offset: 512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !4863, file: !4860, line: 28, baseType: !4869, size: 64, offset: 576)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{null, !4858, !109, !213}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4863, file: !4860, line: 31, baseType: !578, size: 64, offset: 640)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4863, file: !4860, line: 32, baseType: !216, size: 64, offset: 704)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !4859, file: !4860, line: 46, baseType: !4875, size: 320, offset: 768)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !4876, line: 83, size: 320, elements: !4877)
!4876 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c00ae321b94f0eea44369ad4fb4a07b")
!4877 = !{!4878, !4879, !4880, !4886}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4875, file: !4876, line: 84, baseType: !109, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4875, file: !4876, line: 85, baseType: !109, size: 32, offset: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !4875, file: !4876, line: 86, baseType: !4881, size: 128, offset: 64)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !4876, line: 54, size: 128, elements: !4882)
!4882 = !{!4883, !4884, !4885}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4881, file: !4876, line: 55, baseType: !169, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4881, file: !4876, line: 56, baseType: !646, size: 32, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4881, file: !4876, line: 57, baseType: !173, size: 32, offset: 96)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !4875, file: !4876, line: 87, baseType: !4881, size: 128, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !4859, file: !4860, line: 48, baseType: !173, size: 32, offset: 1088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !4859, file: !4860, line: 49, baseType: !173, size: 32, offset: 1120)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !4859, file: !4860, line: 50, baseType: !4881, size: 128, offset: 1152)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !4859, file: !4860, line: 51, baseType: !4881, size: 128, offset: 1280)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !4859, file: !4860, line: 52, baseType: !109, size: 32, offset: 1408)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !4859, file: !4860, line: 54, baseType: !7, size: 32, offset: 1440)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4859, file: !4860, line: 55, baseType: !1398, size: 192, offset: 1472)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4859, file: !4860, line: 57, baseType: !7, size: 32, offset: 1664)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !4859, file: !4860, line: 58, baseType: !2617, size: 64, offset: 1728)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4859, file: !4860, line: 59, baseType: !217, size: 5824, offset: 1792)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4859, file: !4860, line: 60, baseType: !4898, size: 64, offset: 7616)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !28, line: 1083, size: 384, elements: !4900)
!4900 = !{!4901, !4902, !4903, !4904, !4905, !4906}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4899, file: !28, line: 1084, baseType: !1755, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4899, file: !28, line: 1085, baseType: !109, size: 32, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4899, file: !28, line: 1086, baseType: !109, size: 32, offset: 96)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4899, file: !28, line: 1087, baseType: !4898, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4899, file: !28, line: 1088, baseType: !1735, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4899, file: !28, line: 1089, baseType: !866, size: 128, align: 64, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4859, file: !4860, line: 61, baseType: !241, size: 32, offset: 7680)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dialed_frequency", scope: !4687, file: !4683, line: 37, baseType: !346, size: 64, offset: 7936)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq", scope: !4687, file: !4683, line: 38, baseType: !4910, size: 32896, offset: 8000)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timestamp_event_queue", file: !4683, line: 23, size: 32896, elements: !4911)
!4911 = !{!4912, !4922, !4923, !4924}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4910, file: !4683, line: 24, baseType: !4913, size: 32768)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4914, size: 32768, elements: !4920)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_event", file: !151, line: 228, size: 256, elements: !4915)
!4915 = !{!4916, !4917, !4918, !4919}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !4914, file: !151, line: 229, baseType: !166, size: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4914, file: !151, line: 230, baseType: !7, size: 32, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4914, file: !151, line: 231, baseType: !7, size: 32, offset: 160)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4914, file: !151, line: 232, baseType: !156, size: 64, offset: 192)
!4920 = !{!4921}
!4921 = !DISubrange(count: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4910, file: !4683, line: 25, baseType: !109, size: 32, offset: 32768)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4910, file: !4683, line: 26, baseType: !109, size: 32, offset: 32800)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4910, file: !4683, line: 27, baseType: !241, size: 32, offset: 32832)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq_mux", scope: !4687, file: !4683, line: 39, baseType: !649, size: 256, offset: 40896)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg_mux", scope: !4687, file: !4683, line: 40, baseType: !649, size: 256, offset: 41152)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "tsev_wq", scope: !4687, file: !4683, line: 41, baseType: !1398, size: 192, offset: 41408)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "defunct", scope: !4687, file: !4683, line: 42, baseType: !109, size: 32, offset: 41600)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "pin_dev_attr", scope: !4687, file: !4683, line: 43, baseType: !4930, size: 64, offset: 41664)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !4932)
!4932 = !{!4933, !4934, !4938}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4931, file: !94, line: 107, baseType: !348, size: 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4931, file: !94, line: 108, baseType: !4935, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!342, !216, !4930, !310}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4931, file: !94, line: 110, baseType: !4939, size: 64, offset: 192)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!342, !216, !4930, !224, !357}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr", scope: !4687, file: !4683, line: 44, baseType: !4077, size: 64, offset: 41728)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_group", scope: !4687, file: !4683, line: 45, baseType: !365, size: 320, offset: 41792)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_groups", scope: !4687, file: !4683, line: 47, baseType: !4945, size: 128, offset: 42112)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 128, elements: !157)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !4687, file: !4683, line: 48, baseType: !4947, size: 64, offset: 42240)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4949, line: 123, size: 448, elements: !4950)
!4949 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4950 = !{!4951, !4952, !4953, !4954, !4955, !4956}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4948, file: !4949, line: 124, baseType: !7, size: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4948, file: !4949, line: 125, baseType: !607, size: 32, offset: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4948, file: !4949, line: 126, baseType: !228, size: 128, offset: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4948, file: !4949, line: 127, baseType: !228, size: 128, offset: 192)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4948, file: !4949, line: 128, baseType: !1411, size: 64, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4948, file: !4949, line: 129, baseType: !4957, size: 64, offset: 384)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4949, line: 132, size: 320, elements: !4959)
!4959 = !{!4960, !4961, !4966, !4967}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4958, file: !4949, line: 133, baseType: !228, size: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4958, file: !4949, line: 134, baseType: !4962, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4949, line: 116, baseType: !4963)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !4957}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4958, file: !4949, line: 135, baseType: !4947, size: 64, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4958, file: !4949, line: 137, baseType: !109, size: 32, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !4687, file: !4683, line: 49, baseType: !4969, size: 640, offset: 42304)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_delayed_work", file: !4949, line: 140, size: 640, elements: !4970)
!4970 = !{!4971, !4972}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4969, file: !4949, line: 141, baseType: !4958, size: 320)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4969, file: !4949, line: 142, baseType: !886, size: 320, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "max_vclocks", scope: !4687, file: !4683, line: 50, baseType: !7, size: 32, offset: 42944)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "n_vclocks", scope: !4687, file: !4683, line: 51, baseType: !7, size: 32, offset: 42976)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "vclock_index", scope: !4687, file: !4683, line: 52, baseType: !775, size: 64, offset: 43008)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "n_vclocks_mux", scope: !4687, file: !4683, line: 53, baseType: !649, size: 256, offset: 43072)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual_clock", scope: !4687, file: !4683, line: 54, baseType: !728, size: 8, offset: 43328)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "has_cycles", scope: !4687, file: !4683, line: 55, baseType: !728, size: 8, offset: 43336)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4682, file: !4683, line: 64, baseType: !4772, size: 1472, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4682, file: !4683, line: 65, baseType: !4686, size: 64, offset: 1536)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "vclock_hash_node", scope: !4682, file: !4683, line: 66, baseType: !890, size: 128, offset: 1600)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !4682, file: !4683, line: 67, baseType: !4983, size: 192, offset: 1728)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyclecounter", file: !4984, line: 30, size: 192, elements: !4985)
!4984 = !DIFile(filename: "./include/linux/timecounter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "383ec9a52560b80db2c6f4d48ce753fd")
!4985 = !{!4986, !4992, !4993, !4994}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4983, file: !4984, line: 31, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!462, !4990}
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4983)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4983, file: !4984, line: 32, baseType: !462, size: 64, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !4983, file: !4984, line: 33, baseType: !459, size: 32, offset: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4983, file: !4984, line: 34, baseType: !459, size: 32, offset: 160)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !4682, file: !4683, line: 68, baseType: !4996, size: 320, offset: 1920)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timecounter", file: !4984, line: 55, size: 320, elements: !4997)
!4997 = !{!4998, !4999, !5000, !5001, !5002}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !4996, file: !4984, line: 56, baseType: !4990, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !4996, file: !4984, line: 57, baseType: !462, size: 64, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4996, file: !4984, line: 58, baseType: !462, size: 64, offset: 128)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4996, file: !4984, line: 59, baseType: !462, size: 64, offset: 192)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "frac", scope: !4996, file: !4984, line: 60, baseType: !462, size: 64, offset: 256)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4682, file: !4683, line: 69, baseType: !649, size: 256, offset: 2240)
!5004 = !{!5005, !5007, !0, !5010, !5015, !5017, !5019, !5021, !5023, !5026, !5029, !5031, !5036, !5041, !5043, !5046, !5051, !5053, !5056, !5061, !5066, !5068, !5073, !5078, !5080, !5082, !5087, !5089, !5091, !5096, !5098, !5100, !5102, !5105, !5107, !5112, !5114, !5119, !5121, !5123, !5125, !5128, !5130, !5135, !5137, !5139, !5141}
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(name: "ptp_groups", scope: !2, file: !3, line: 374, type: !4945, isLocal: false, isDefinition: true)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !5009, isLocal: true, isDefinition: true)
!5009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 40, elements: !4793)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !5012, isLocal: true, isDefinition: true)
!5012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 104, elements: !5013)
!5013 = !{!5014}
!5014 = !DISubrange(count: 13)
!5015 = !DIGlobalVariableExpression(var: !5016, expr: !DIExpression())
!5016 = distinct !DIGlobalVariable(name: "dev_attr_extts_enable", scope: !2, file: !3, line: 72, type: !4931, isLocal: true, isDefinition: true)
!5017 = !DIGlobalVariableExpression(var: !5018, expr: !DIExpression())
!5018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !1877, isLocal: true, isDefinition: true)
!5019 = !DIGlobalVariableExpression(var: !5020, expr: !DIExpression())
!5020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !5009, isLocal: true, isDefinition: true)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(name: "dev_attr_fifo", scope: !2, file: !3, line: 107, type: !4931, isLocal: true, isDefinition: true)
!5023 = !DIGlobalVariableExpression(var: !5024, expr: !DIExpression())
!5024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !5025, isLocal: true, isDefinition: true)
!5025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 96, elements: !3456)
!5026 = !DIGlobalVariableExpression(var: !5027, expr: !DIExpression())
!5027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !5028, isLocal: true, isDefinition: true)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 56, elements: !767)
!5029 = !DIGlobalVariableExpression(var: !5030, expr: !DIExpression())
!5030 = distinct !DIGlobalVariable(name: "dev_attr_period", scope: !2, file: !3, line: 135, type: !4931, isLocal: true, isDefinition: true)
!5031 = !DIGlobalVariableExpression(var: !5032, expr: !DIExpression())
!5032 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !5033, isLocal: true, isDefinition: true)
!5033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 152, elements: !5034)
!5034 = !{!5035}
!5035 = !DISubrange(count: 19)
!5036 = !DIGlobalVariableExpression(var: !5037, expr: !DIExpression())
!5037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !5038, isLocal: true, isDefinition: true)
!5038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 88, elements: !5039)
!5039 = !{!5040}
!5040 = !DISubrange(count: 11)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "dev_attr_pps_enable", scope: !2, file: !3, line: 162, type: !4931, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !5045, isLocal: true, isDefinition: true)
!5045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 24, elements: !311)
!5046 = !DIGlobalVariableExpression(var: !5047, expr: !DIExpression())
!5047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !5048, isLocal: true, isDefinition: true)
!5048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 80, elements: !5049)
!5049 = !{!5050}
!5050 = !DISubrange(count: 10)
!5051 = !DIGlobalVariableExpression(var: !5052, expr: !DIExpression())
!5052 = distinct !DIGlobalVariable(name: "dev_attr_n_vclocks", scope: !2, file: !3, line: 262, type: !4931, isLocal: true, isDefinition: true)
!5053 = !DIGlobalVariableExpression(var: !5054, expr: !DIExpression())
!5054 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !5055, isLocal: true, isDefinition: true)
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32, elements: !185)
!5056 = !DIGlobalVariableExpression(var: !5057, expr: !DIExpression())
!5057 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !5058, isLocal: true, isDefinition: true)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 136, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 17)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !5063, isLocal: true, isDefinition: true)
!5063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 200, elements: !5064)
!5064 = !{!5065}
!5065 = !DISubrange(count: 25)
!5066 = !DIGlobalVariableExpression(var: !5067, expr: !DIExpression())
!5067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !3577, isLocal: true, isDefinition: true)
!5068 = !DIGlobalVariableExpression(var: !5069, expr: !DIExpression())
!5069 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !5070, isLocal: true, isDefinition: true)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 312, elements: !5071)
!5071 = !{!5072}
!5072 = !DISubrange(count: 39)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !5075, isLocal: true, isDefinition: true)
!5075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 224, elements: !5076)
!5076 = !{!5077}
!5077 = !DISubrange(count: 28)
!5078 = !DIGlobalVariableExpression(var: !5079, expr: !DIExpression())
!5079 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !5025, isLocal: true, isDefinition: true)
!5080 = !DIGlobalVariableExpression(var: !5081, expr: !DIExpression())
!5081 = distinct !DIGlobalVariable(name: "dev_attr_max_vclocks", scope: !2, file: !3, line: 317, type: !4931, isLocal: true, isDefinition: true)
!5082 = !DIGlobalVariableExpression(var: !5083, expr: !DIExpression())
!5083 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !5084, isLocal: true, isDefinition: true)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 168, elements: !5085)
!5085 = !{!5086}
!5086 = !DISubrange(count: 21)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(name: "dev_attr_max_phase_adjustment", scope: !2, file: !3, line: 30, type: !4931, isLocal: true, isDefinition: true)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !5055, isLocal: true, isDefinition: true)
!5091 = !DIGlobalVariableExpression(var: !5092, expr: !DIExpression())
!5092 = distinct !DIGlobalVariable(name: "ptp_attrs", scope: !2, file: !3, line: 319, type: !5093, isLocal: true, isDefinition: true)
!5093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 960, elements: !5094)
!5094 = !{!5095}
!5095 = !DISubrange(count: 15)
!5096 = !DIGlobalVariableExpression(var: !5097, expr: !DIExpression())
!5097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 19, type: !5038, isLocal: true, isDefinition: true)
!5098 = !DIGlobalVariableExpression(var: !5099, expr: !DIExpression())
!5099 = distinct !DIGlobalVariable(name: "dev_attr_clock_name", scope: !2, file: !3, line: 19, type: !4931, isLocal: true, isDefinition: true)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 17, type: !5055, isLocal: true, isDefinition: true)
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !5104, isLocal: true, isDefinition: true)
!5104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 120, elements: !5094)
!5105 = !DIGlobalVariableExpression(var: !5106, expr: !DIExpression())
!5106 = distinct !DIGlobalVariable(name: "dev_attr_max_adjustment", scope: !2, file: !3, line: 41, type: !4931, isLocal: true, isDefinition: true)
!5107 = !DIGlobalVariableExpression(var: !5108, expr: !DIExpression())
!5108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !5109, isLocal: true, isDefinition: true)
!5109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 72, elements: !5110)
!5110 = !{!5111}
!5111 = !DISubrange(count: 9)
!5112 = !DIGlobalVariableExpression(var: !5113, expr: !DIExpression())
!5113 = distinct !DIGlobalVariable(name: "dev_attr_n_alarms", scope: !2, file: !3, line: 42, type: !4931, isLocal: true, isDefinition: true)
!5114 = !DIGlobalVariableExpression(var: !5115, expr: !DIExpression())
!5115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !5116, isLocal: true, isDefinition: true)
!5116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 176, elements: !5117)
!5117 = !{!5118}
!5118 = !DISubrange(count: 22)
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(name: "dev_attr_n_external_timestamps", scope: !2, file: !3, line: 43, type: !4931, isLocal: true, isDefinition: true)
!5121 = !DIGlobalVariableExpression(var: !5122, expr: !DIExpression())
!5122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !5033, isLocal: true, isDefinition: true)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(name: "dev_attr_n_periodic_outputs", scope: !2, file: !3, line: 44, type: !4931, isLocal: true, isDefinition: true)
!5125 = !DIGlobalVariableExpression(var: !5126, expr: !DIExpression())
!5126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !5127, isLocal: true, isDefinition: true)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 160, elements: !3423)
!5128 = !DIGlobalVariableExpression(var: !5129, expr: !DIExpression())
!5129 = distinct !DIGlobalVariable(name: "dev_attr_n_programmable_pins", scope: !2, file: !3, line: 45, type: !4931, isLocal: true, isDefinition: true)
!5130 = !DIGlobalVariableExpression(var: !5131, expr: !DIExpression())
!5131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !5132, isLocal: true, isDefinition: true)
!5132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 112, elements: !5133)
!5133 = !{!5134}
!5134 = !DISubrange(count: 14)
!5135 = !DIGlobalVariableExpression(var: !5136, expr: !DIExpression())
!5136 = distinct !DIGlobalVariable(name: "dev_attr_pps_available", scope: !2, file: !3, line: 46, type: !4931, isLocal: true, isDefinition: true)
!5137 = !DIGlobalVariableExpression(var: !5138, expr: !DIExpression())
!5138 = distinct !DIGlobalVariable(scope: null, file: !203, line: 480, type: !5084, isLocal: true, isDefinition: true)
!5139 = !DIGlobalVariableExpression(var: !5140, expr: !DIExpression())
!5140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !5028, isLocal: true, isDefinition: true)
!5141 = !DIGlobalVariableExpression(var: !5142, expr: !DIExpression())
!5142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !1877, isLocal: true, isDefinition: true)
!5143 = !{i32 7, !"Dwarf Version", i32 5}
!5144 = !{i32 2, !"Debug Info Version", i32 3}
!5145 = !{i32 1, !"wchar_size", i32 2}
!5146 = !{i32 8, !"cf-protection-branch", i32 1}
!5147 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5148 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5149 = !{i32 1, !"Code Model", i32 2}
!5150 = !{i32 1, !"override-stack-alignment", i32 8}
!5151 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5152 = distinct !DISubprogram(name: "ptp_populate_pin_groups", scope: !3, file: !3, line: 436, type: !5153, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!109, !4686}
!5155 = !{!5156, !5157, !5158, !5159, !5160, !5161, !5165, !5166}
!5156 = !DILocalVariable(name: "ptp", arg: 1, scope: !5152, file: !3, line: 436, type: !4686)
!5157 = !DILocalVariable(name: "info", scope: !5152, file: !3, line: 438, type: !4771)
!5158 = !DILocalVariable(name: "err", scope: !5152, file: !3, line: 439, type: !109)
!5159 = !DILocalVariable(name: "i", scope: !5152, file: !3, line: 439, type: !109)
!5160 = !DILocalVariable(name: "n_pins", scope: !5152, file: !3, line: 439, type: !109)
!5161 = !DILocalVariable(name: "da", scope: !5162, file: !3, line: 454, type: !4930)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 453, column: 31)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 453, column: 2)
!5164 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 453, column: 2)
!5165 = !DILabel(scope: !5152, name: "no_pin_attr", file: !3, line: 470)
!5166 = !DILabel(scope: !5152, name: "no_dev_attr", file: !3, line: 472)
!5167 = !DILocation(line: 436, column: 47, scope: !5152)
!5168 = !DILocation(line: 438, column: 2, scope: !5152)
!5169 = !DILocation(line: 438, column: 25, scope: !5152)
!5170 = !DILocation(line: 438, column: 32, scope: !5152)
!5171 = !DILocation(line: 438, column: 37, scope: !5152)
!5172 = !DILocation(line: 439, column: 2, scope: !5152)
!5173 = !DILocation(line: 439, column: 6, scope: !5152)
!5174 = !DILocation(line: 439, column: 21, scope: !5152)
!5175 = !DILocation(line: 439, column: 24, scope: !5152)
!5176 = !DILocation(line: 439, column: 33, scope: !5152)
!5177 = !DILocation(line: 439, column: 39, scope: !5152)
!5178 = !DILocation(line: 441, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 441, column: 6)
!5180 = !DILocation(line: 441, column: 6, scope: !5152)
!5181 = !DILocation(line: 442, column: 3, scope: !5179)
!5182 = !DILocation(line: 444, column: 30, scope: !5152)
!5183 = !DILocation(line: 444, column: 22, scope: !5152)
!5184 = !DILocation(line: 444, column: 2, scope: !5152)
!5185 = !DILocation(line: 444, column: 7, scope: !5152)
!5186 = !DILocation(line: 444, column: 20, scope: !5152)
!5187 = !DILocation(line: 446, column: 7, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 446, column: 6)
!5189 = !DILocation(line: 446, column: 12, scope: !5188)
!5190 = !DILocation(line: 446, column: 6, scope: !5152)
!5191 = !DILocation(line: 447, column: 3, scope: !5188)
!5192 = !DILocation(line: 449, column: 30, scope: !5152)
!5193 = !DILocation(line: 449, column: 28, scope: !5152)
!5194 = !DILocation(line: 449, column: 26, scope: !5152)
!5195 = !DILocation(line: 449, column: 18, scope: !5152)
!5196 = !DILocation(line: 449, column: 2, scope: !5152)
!5197 = !DILocation(line: 449, column: 7, scope: !5152)
!5198 = !DILocation(line: 449, column: 16, scope: !5152)
!5199 = !DILocation(line: 450, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 450, column: 6)
!5201 = !DILocation(line: 450, column: 12, scope: !5200)
!5202 = !DILocation(line: 450, column: 6, scope: !5152)
!5203 = !DILocation(line: 451, column: 3, scope: !5200)
!5204 = !DILocation(line: 453, column: 9, scope: !5164)
!5205 = !DILocation(line: 453, column: 7, scope: !5164)
!5206 = !DILocation(line: 453, column: 14, scope: !5163)
!5207 = !DILocation(line: 453, column: 18, scope: !5163)
!5208 = !DILocation(line: 453, column: 16, scope: !5163)
!5209 = !DILocation(line: 453, column: 2, scope: !5164)
!5210 = !DILocation(line: 454, column: 3, scope: !5162)
!5211 = !DILocation(line: 454, column: 28, scope: !5162)
!5212 = !DILocation(line: 454, column: 34, scope: !5162)
!5213 = !DILocation(line: 454, column: 39, scope: !5162)
!5214 = !DILocation(line: 454, column: 52, scope: !5162)
!5215 = !DILocation(line: 455, column: 3, scope: !5162)
!5216 = !DILocation(line: 455, column: 3, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 455, column: 3)
!5218 = !DILocation(line: 456, column: 19, scope: !5162)
!5219 = !DILocation(line: 456, column: 25, scope: !5162)
!5220 = !DILocation(line: 456, column: 36, scope: !5162)
!5221 = !DILocation(line: 456, column: 39, scope: !5162)
!5222 = !DILocation(line: 456, column: 3, scope: !5162)
!5223 = !DILocation(line: 456, column: 7, scope: !5162)
!5224 = !DILocation(line: 456, column: 12, scope: !5162)
!5225 = !DILocation(line: 456, column: 17, scope: !5162)
!5226 = !DILocation(line: 457, column: 3, scope: !5162)
!5227 = !DILocation(line: 457, column: 7, scope: !5162)
!5228 = !DILocation(line: 457, column: 12, scope: !5162)
!5229 = !DILocation(line: 457, column: 17, scope: !5162)
!5230 = !DILocation(line: 458, column: 3, scope: !5162)
!5231 = !DILocation(line: 458, column: 7, scope: !5162)
!5232 = !DILocation(line: 458, column: 12, scope: !5162)
!5233 = !DILocation(line: 459, column: 3, scope: !5162)
!5234 = !DILocation(line: 459, column: 7, scope: !5162)
!5235 = !DILocation(line: 459, column: 13, scope: !5162)
!5236 = !DILocation(line: 460, column: 23, scope: !5162)
!5237 = !DILocation(line: 460, column: 27, scope: !5162)
!5238 = !DILocation(line: 460, column: 3, scope: !5162)
!5239 = !DILocation(line: 460, column: 8, scope: !5162)
!5240 = !DILocation(line: 460, column: 17, scope: !5162)
!5241 = !DILocation(line: 460, column: 20, scope: !5162)
!5242 = !DILocation(line: 461, column: 2, scope: !5163)
!5243 = !DILocation(line: 461, column: 2, scope: !5162)
!5244 = !DILocation(line: 453, column: 27, scope: !5163)
!5245 = !DILocation(line: 453, column: 2, scope: !5163)
!5246 = distinct !{!5246, !5209, !5247, !5248, !5249}
!5247 = !DILocation(line: 461, column: 2, scope: !5164)
!5248 = !{!"llvm.loop.mustprogress"}
!5249 = !{!"llvm.loop.unroll.disable"}
!5250 = !DILocation(line: 463, column: 2, scope: !5152)
!5251 = !DILocation(line: 463, column: 7, scope: !5152)
!5252 = !DILocation(line: 463, column: 22, scope: !5152)
!5253 = !DILocation(line: 463, column: 27, scope: !5152)
!5254 = !DILocation(line: 464, column: 30, scope: !5152)
!5255 = !DILocation(line: 464, column: 35, scope: !5152)
!5256 = !DILocation(line: 464, column: 2, scope: !5152)
!5257 = !DILocation(line: 464, column: 7, scope: !5152)
!5258 = !DILocation(line: 464, column: 22, scope: !5152)
!5259 = !DILocation(line: 464, column: 28, scope: !5152)
!5260 = !DILocation(line: 466, column: 29, scope: !5152)
!5261 = !DILocation(line: 466, column: 34, scope: !5152)
!5262 = !DILocation(line: 466, column: 2, scope: !5152)
!5263 = !DILocation(line: 466, column: 7, scope: !5152)
!5264 = !DILocation(line: 466, column: 26, scope: !5152)
!5265 = !DILocation(line: 468, column: 2, scope: !5152)
!5266 = !DILocation(line: 470, column: 1, scope: !5152)
!5267 = !DILocation(line: 471, column: 8, scope: !5152)
!5268 = !DILocation(line: 471, column: 13, scope: !5152)
!5269 = !DILocation(line: 471, column: 2, scope: !5152)
!5270 = !DILocation(line: 472, column: 1, scope: !5152)
!5271 = !DILocation(line: 473, column: 9, scope: !5152)
!5272 = !DILocation(line: 473, column: 2, scope: !5152)
!5273 = !DILocation(line: 474, column: 1, scope: !5152)
!5274 = distinct !DISubprogram(name: "kcalloc", scope: !203, file: !203, line: 666, type: !5275, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!213, !357, !357, !214}
!5277 = !{!5278, !5279, !5280}
!5278 = !DILocalVariable(name: "n", arg: 1, scope: !5274, file: !203, line: 666, type: !357)
!5279 = !DILocalVariable(name: "size", arg: 2, scope: !5274, file: !203, line: 666, type: !357)
!5280 = !DILocalVariable(name: "flags", arg: 3, scope: !5274, file: !203, line: 666, type: !214)
!5281 = !DILocation(line: 666, column: 55, scope: !5274)
!5282 = !DILocation(line: 666, column: 65, scope: !5274)
!5283 = !DILocation(line: 666, column: 77, scope: !5274)
!5284 = !DILocation(line: 668, column: 23, scope: !5274)
!5285 = !DILocation(line: 668, column: 26, scope: !5274)
!5286 = !DILocation(line: 668, column: 32, scope: !5274)
!5287 = !DILocation(line: 668, column: 38, scope: !5274)
!5288 = !DILocation(line: 668, column: 9, scope: !5274)
!5289 = !DILocation(line: 668, column: 2, scope: !5274)
!5290 = distinct !DISubprogram(name: "ptp_pin_show", scope: !3, file: !3, line: 389, type: !4936, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5291 = !{!5292, !5293, !5294, !5295, !5296, !5297, !5298}
!5292 = !DILocalVariable(name: "dev", arg: 1, scope: !5290, file: !3, line: 389, type: !216)
!5293 = !DILocalVariable(name: "attr", arg: 2, scope: !5290, file: !3, line: 389, type: !4930)
!5294 = !DILocalVariable(name: "page", arg: 3, scope: !5290, file: !3, line: 390, type: !310)
!5295 = !DILocalVariable(name: "ptp", scope: !5290, file: !3, line: 392, type: !4686)
!5296 = !DILocalVariable(name: "func", scope: !5290, file: !3, line: 393, type: !7)
!5297 = !DILocalVariable(name: "chan", scope: !5290, file: !3, line: 393, type: !7)
!5298 = !DILocalVariable(name: "index", scope: !5290, file: !3, line: 394, type: !109)
!5299 = !DILocation(line: 389, column: 44, scope: !5290)
!5300 = !DILocation(line: 389, column: 74, scope: !5290)
!5301 = !DILocation(line: 390, column: 14, scope: !5290)
!5302 = !DILocation(line: 392, column: 2, scope: !5290)
!5303 = !DILocation(line: 392, column: 20, scope: !5290)
!5304 = !DILocation(line: 392, column: 42, scope: !5290)
!5305 = !DILocation(line: 392, column: 26, scope: !5290)
!5306 = !DILocation(line: 393, column: 2, scope: !5290)
!5307 = !DILocation(line: 393, column: 15, scope: !5290)
!5308 = !DILocation(line: 393, column: 21, scope: !5290)
!5309 = !DILocation(line: 394, column: 2, scope: !5290)
!5310 = !DILocation(line: 394, column: 6, scope: !5290)
!5311 = !DILocation(line: 396, column: 29, scope: !5290)
!5312 = !DILocation(line: 396, column: 34, scope: !5290)
!5313 = !DILocation(line: 396, column: 40, scope: !5290)
!5314 = !DILocation(line: 396, column: 45, scope: !5290)
!5315 = !DILocation(line: 396, column: 10, scope: !5290)
!5316 = !DILocation(line: 396, column: 8, scope: !5290)
!5317 = !DILocation(line: 397, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 397, column: 6)
!5319 = !DILocation(line: 397, column: 12, scope: !5318)
!5320 = !DILocation(line: 397, column: 6, scope: !5290)
!5321 = !DILocation(line: 398, column: 3, scope: !5318)
!5322 = !DILocation(line: 400, column: 32, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 400, column: 6)
!5324 = !DILocation(line: 400, column: 37, scope: !5323)
!5325 = !DILocation(line: 400, column: 6, scope: !5323)
!5326 = !DILocation(line: 400, column: 6, scope: !5290)
!5327 = !DILocation(line: 401, column: 3, scope: !5323)
!5328 = !DILocation(line: 403, column: 9, scope: !5290)
!5329 = !DILocation(line: 403, column: 14, scope: !5290)
!5330 = !DILocation(line: 403, column: 20, scope: !5290)
!5331 = !DILocation(line: 403, column: 31, scope: !5290)
!5332 = !DILocation(line: 403, column: 38, scope: !5290)
!5333 = !DILocation(line: 403, column: 7, scope: !5290)
!5334 = !DILocation(line: 404, column: 9, scope: !5290)
!5335 = !DILocation(line: 404, column: 14, scope: !5290)
!5336 = !DILocation(line: 404, column: 20, scope: !5290)
!5337 = !DILocation(line: 404, column: 31, scope: !5290)
!5338 = !DILocation(line: 404, column: 38, scope: !5290)
!5339 = !DILocation(line: 404, column: 7, scope: !5290)
!5340 = !DILocation(line: 406, column: 16, scope: !5290)
!5341 = !DILocation(line: 406, column: 21, scope: !5290)
!5342 = !DILocation(line: 406, column: 2, scope: !5290)
!5343 = !DILocation(line: 408, column: 20, scope: !5290)
!5344 = !DILocation(line: 408, column: 37, scope: !5290)
!5345 = !DILocation(line: 408, column: 43, scope: !5290)
!5346 = !DILocation(line: 408, column: 9, scope: !5290)
!5347 = !DILocation(line: 408, column: 2, scope: !5290)
!5348 = !DILocation(line: 409, column: 1, scope: !5290)
!5349 = distinct !DISubprogram(name: "ptp_pin_store", scope: !3, file: !3, line: 411, type: !4940, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5350)
!5350 = !{!5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360}
!5351 = !DILocalVariable(name: "dev", arg: 1, scope: !5349, file: !3, line: 411, type: !216)
!5352 = !DILocalVariable(name: "attr", arg: 2, scope: !5349, file: !3, line: 411, type: !4930)
!5353 = !DILocalVariable(name: "buf", arg: 3, scope: !5349, file: !3, line: 412, type: !224)
!5354 = !DILocalVariable(name: "count", arg: 4, scope: !5349, file: !3, line: 412, type: !357)
!5355 = !DILocalVariable(name: "ptp", scope: !5349, file: !3, line: 414, type: !4686)
!5356 = !DILocalVariable(name: "func", scope: !5349, file: !3, line: 415, type: !7)
!5357 = !DILocalVariable(name: "chan", scope: !5349, file: !3, line: 415, type: !7)
!5358 = !DILocalVariable(name: "cnt", scope: !5349, file: !3, line: 416, type: !109)
!5359 = !DILocalVariable(name: "err", scope: !5349, file: !3, line: 416, type: !109)
!5360 = !DILocalVariable(name: "index", scope: !5349, file: !3, line: 416, type: !109)
!5361 = !DILocation(line: 411, column: 45, scope: !5349)
!5362 = !DILocation(line: 411, column: 75, scope: !5349)
!5363 = !DILocation(line: 412, column: 21, scope: !5349)
!5364 = !DILocation(line: 412, column: 33, scope: !5349)
!5365 = !DILocation(line: 414, column: 2, scope: !5349)
!5366 = !DILocation(line: 414, column: 20, scope: !5349)
!5367 = !DILocation(line: 414, column: 42, scope: !5349)
!5368 = !DILocation(line: 414, column: 26, scope: !5349)
!5369 = !DILocation(line: 415, column: 2, scope: !5349)
!5370 = !DILocation(line: 415, column: 15, scope: !5349)
!5371 = !DILocation(line: 415, column: 21, scope: !5349)
!5372 = !DILocation(line: 416, column: 2, scope: !5349)
!5373 = !DILocation(line: 416, column: 6, scope: !5349)
!5374 = !DILocation(line: 416, column: 11, scope: !5349)
!5375 = !DILocation(line: 416, column: 16, scope: !5349)
!5376 = !DILocation(line: 418, column: 15, scope: !5349)
!5377 = !DILocation(line: 418, column: 8, scope: !5349)
!5378 = !DILocation(line: 418, column: 6, scope: !5349)
!5379 = !DILocation(line: 419, column: 6, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 419, column: 6)
!5381 = !DILocation(line: 419, column: 10, scope: !5380)
!5382 = !DILocation(line: 419, column: 6, scope: !5349)
!5383 = !DILocation(line: 420, column: 3, scope: !5380)
!5384 = !DILocation(line: 422, column: 29, scope: !5349)
!5385 = !DILocation(line: 422, column: 34, scope: !5349)
!5386 = !DILocation(line: 422, column: 40, scope: !5349)
!5387 = !DILocation(line: 422, column: 45, scope: !5349)
!5388 = !DILocation(line: 422, column: 10, scope: !5349)
!5389 = !DILocation(line: 422, column: 8, scope: !5349)
!5390 = !DILocation(line: 423, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 423, column: 6)
!5392 = !DILocation(line: 423, column: 12, scope: !5391)
!5393 = !DILocation(line: 423, column: 6, scope: !5349)
!5394 = !DILocation(line: 424, column: 3, scope: !5391)
!5395 = !DILocation(line: 426, column: 32, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 426, column: 6)
!5397 = !DILocation(line: 426, column: 37, scope: !5396)
!5398 = !DILocation(line: 426, column: 6, scope: !5396)
!5399 = !DILocation(line: 426, column: 6, scope: !5349)
!5400 = !DILocation(line: 427, column: 3, scope: !5396)
!5401 = !DILocation(line: 428, column: 24, scope: !5349)
!5402 = !DILocation(line: 428, column: 29, scope: !5349)
!5403 = !DILocation(line: 428, column: 36, scope: !5349)
!5404 = !DILocation(line: 428, column: 42, scope: !5349)
!5405 = !DILocation(line: 428, column: 8, scope: !5349)
!5406 = !DILocation(line: 428, column: 6, scope: !5349)
!5407 = !DILocation(line: 429, column: 16, scope: !5349)
!5408 = !DILocation(line: 429, column: 21, scope: !5349)
!5409 = !DILocation(line: 429, column: 2, scope: !5349)
!5410 = !DILocation(line: 430, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 430, column: 6)
!5412 = !DILocation(line: 430, column: 6, scope: !5349)
!5413 = !DILocation(line: 431, column: 10, scope: !5411)
!5414 = !DILocation(line: 431, column: 3, scope: !5411)
!5415 = !DILocation(line: 433, column: 9, scope: !5349)
!5416 = !DILocation(line: 433, column: 2, scope: !5349)
!5417 = !DILocation(line: 434, column: 1, scope: !5349)
!5418 = !DISubprogram(name: "kfree", scope: !203, file: !203, line: 227, type: !5419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{null, !2617}
!5421 = distinct !DISubprogram(name: "ptp_cleanup_pin_groups", scope: !3, file: !3, line: 476, type: !5422, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5424)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{null, !4686}
!5424 = !{!5425}
!5425 = !DILocalVariable(name: "ptp", arg: 1, scope: !5421, file: !3, line: 476, type: !4686)
!5426 = !DILocation(line: 476, column: 47, scope: !5421)
!5427 = !DILocation(line: 478, column: 8, scope: !5421)
!5428 = !DILocation(line: 478, column: 13, scope: !5421)
!5429 = !DILocation(line: 478, column: 2, scope: !5421)
!5430 = !DILocation(line: 479, column: 8, scope: !5421)
!5431 = !DILocation(line: 479, column: 13, scope: !5421)
!5432 = !DILocation(line: 479, column: 2, scope: !5421)
!5433 = !DILocation(line: 480, column: 1, scope: !5421)
!5434 = distinct !DISubprogram(name: "ptp_is_attribute_visible", scope: !3, file: !3, line: 339, type: !370, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5435)
!5435 = !{!5436, !5437, !5438, !5439, !5440, !5442, !5443, !5444}
!5436 = !DILocalVariable(name: "kobj", arg: 1, scope: !5434, file: !3, line: 339, type: !234)
!5437 = !DILocalVariable(name: "attr", arg: 2, scope: !5434, file: !3, line: 340, type: !347)
!5438 = !DILocalVariable(name: "n", arg: 3, scope: !5434, file: !3, line: 340, type: !109)
!5439 = !DILocalVariable(name: "dev", scope: !5434, file: !3, line: 342, type: !216)
!5440 = !DILocalVariable(name: "__mptr", scope: !5441, file: !3, line: 342, type: !213)
!5441 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 342, column: 23)
!5442 = !DILocalVariable(name: "ptp", scope: !5434, file: !3, line: 343, type: !4686)
!5443 = !DILocalVariable(name: "info", scope: !5434, file: !3, line: 344, type: !4771)
!5444 = !DILocalVariable(name: "mode", scope: !5434, file: !3, line: 345, type: !352)
!5445 = !DILocation(line: 339, column: 57, scope: !5434)
!5446 = !DILocation(line: 340, column: 24, scope: !5434)
!5447 = !DILocation(line: 340, column: 34, scope: !5434)
!5448 = !DILocation(line: 342, column: 2, scope: !5434)
!5449 = !DILocation(line: 342, column: 17, scope: !5434)
!5450 = !DILocation(line: 342, column: 23, scope: !5441)
!5451 = !DILocation(line: 342, column: 23, scope: !5434)
!5452 = !DILocation(line: 343, column: 2, scope: !5434)
!5453 = !DILocation(line: 343, column: 20, scope: !5434)
!5454 = !DILocation(line: 343, column: 42, scope: !5434)
!5455 = !DILocation(line: 343, column: 26, scope: !5434)
!5456 = !DILocation(line: 344, column: 2, scope: !5434)
!5457 = !DILocation(line: 344, column: 25, scope: !5434)
!5458 = !DILocation(line: 344, column: 32, scope: !5434)
!5459 = !DILocation(line: 344, column: 37, scope: !5434)
!5460 = !DILocation(line: 345, column: 2, scope: !5434)
!5461 = !DILocation(line: 345, column: 10, scope: !5434)
!5462 = !DILocation(line: 345, column: 17, scope: !5434)
!5463 = !DILocation(line: 345, column: 23, scope: !5434)
!5464 = !DILocation(line: 347, column: 6, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 347, column: 6)
!5466 = !DILocation(line: 347, column: 11, scope: !5465)
!5467 = !DILocation(line: 347, column: 42, scope: !5465)
!5468 = !DILocation(line: 348, column: 6, scope: !5465)
!5469 = !DILocation(line: 348, column: 11, scope: !5465)
!5470 = !DILocation(line: 347, column: 6, scope: !5434)
!5471 = !DILocation(line: 349, column: 8, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 349, column: 7)
!5473 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 348, column: 35)
!5474 = !DILocation(line: 349, column: 14, scope: !5472)
!5475 = !DILocation(line: 349, column: 7, scope: !5473)
!5476 = !DILocation(line: 350, column: 9, scope: !5472)
!5477 = !DILocation(line: 350, column: 4, scope: !5472)
!5478 = !DILocation(line: 351, column: 2, scope: !5473)
!5479 = !DILocation(line: 351, column: 13, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 351, column: 13)
!5481 = !DILocation(line: 351, column: 18, scope: !5480)
!5482 = !DILocation(line: 351, column: 13, scope: !5465)
!5483 = !DILocation(line: 352, column: 8, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 352, column: 7)
!5485 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 351, column: 44)
!5486 = !DILocation(line: 352, column: 14, scope: !5484)
!5487 = !DILocation(line: 352, column: 7, scope: !5485)
!5488 = !DILocation(line: 353, column: 9, scope: !5484)
!5489 = !DILocation(line: 353, column: 4, scope: !5484)
!5490 = !DILocation(line: 354, column: 2, scope: !5485)
!5491 = !DILocation(line: 354, column: 13, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 354, column: 13)
!5493 = !DILocation(line: 354, column: 18, scope: !5492)
!5494 = !DILocation(line: 354, column: 13, scope: !5480)
!5495 = !DILocation(line: 355, column: 8, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 355, column: 7)
!5497 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 354, column: 48)
!5498 = !DILocation(line: 355, column: 14, scope: !5496)
!5499 = !DILocation(line: 355, column: 7, scope: !5497)
!5500 = !DILocation(line: 356, column: 9, scope: !5496)
!5501 = !DILocation(line: 356, column: 4, scope: !5496)
!5502 = !DILocation(line: 357, column: 2, scope: !5497)
!5503 = !DILocation(line: 357, column: 13, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 357, column: 13)
!5505 = !DILocation(line: 357, column: 18, scope: !5504)
!5506 = !DILocation(line: 357, column: 46, scope: !5504)
!5507 = !DILocation(line: 358, column: 6, scope: !5504)
!5508 = !DILocation(line: 358, column: 11, scope: !5504)
!5509 = !DILocation(line: 357, column: 13, scope: !5492)
!5510 = !DILocation(line: 359, column: 7, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 359, column: 7)
!5512 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 358, column: 42)
!5513 = !DILocation(line: 359, column: 12, scope: !5511)
!5514 = !{i8 0, i8 2}
!5515 = !DILocation(line: 359, column: 7, scope: !5512)
!5516 = !DILocation(line: 360, column: 9, scope: !5511)
!5517 = !DILocation(line: 360, column: 4, scope: !5511)
!5518 = !DILocation(line: 361, column: 2, scope: !5512)
!5519 = !DILocation(line: 361, column: 13, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 361, column: 13)
!5521 = !DILocation(line: 361, column: 18, scope: !5520)
!5522 = !DILocation(line: 361, column: 13, scope: !5504)
!5523 = !DILocation(line: 362, column: 8, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 362, column: 7)
!5525 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 361, column: 58)
!5526 = !DILocation(line: 362, column: 14, scope: !5524)
!5527 = !DILocation(line: 362, column: 23, scope: !5524)
!5528 = !DILocation(line: 362, column: 27, scope: !5524)
!5529 = !DILocation(line: 362, column: 33, scope: !5524)
!5530 = !DILocation(line: 362, column: 7, scope: !5525)
!5531 = !DILocation(line: 363, column: 9, scope: !5524)
!5532 = !DILocation(line: 363, column: 4, scope: !5524)
!5533 = !DILocation(line: 364, column: 2, scope: !5525)
!5534 = !DILocation(line: 366, column: 9, scope: !5434)
!5535 = !DILocation(line: 367, column: 1, scope: !5434)
!5536 = !DILocation(line: 366, column: 2, scope: !5434)
!5537 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !5538, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!213, !4247}
!5540 = !{!5541}
!5541 = !DILocalVariable(name: "dev", arg: 1, scope: !5537, file: !94, line: 916, type: !4247)
!5542 = !DILocation(line: 916, column: 58, scope: !5537)
!5543 = !DILocation(line: 918, column: 9, scope: !5537)
!5544 = !DILocation(line: 918, column: 14, scope: !5537)
!5545 = !DILocation(line: 918, column: 2, scope: !5537)
!5546 = distinct !DISubprogram(name: "extts_enable_store", scope: !3, file: !3, line: 48, type: !4940, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5547)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558}
!5548 = !DILocalVariable(name: "dev", arg: 1, scope: !5546, file: !3, line: 48, type: !216)
!5549 = !DILocalVariable(name: "attr", arg: 2, scope: !5546, file: !3, line: 49, type: !4930)
!5550 = !DILocalVariable(name: "buf", arg: 3, scope: !5546, file: !3, line: 50, type: !224)
!5551 = !DILocalVariable(name: "count", arg: 4, scope: !5546, file: !3, line: 50, type: !357)
!5552 = !DILocalVariable(name: "ptp", scope: !5546, file: !3, line: 52, type: !4686)
!5553 = !DILocalVariable(name: "ops", scope: !5546, file: !3, line: 53, type: !4771)
!5554 = !DILocalVariable(name: "req", scope: !5546, file: !3, line: 54, type: !143)
!5555 = !DILocalVariable(name: "cnt", scope: !5546, file: !3, line: 55, type: !109)
!5556 = !DILocalVariable(name: "enable", scope: !5546, file: !3, line: 55, type: !109)
!5557 = !DILocalVariable(name: "err", scope: !5546, file: !3, line: 56, type: !109)
!5558 = !DILabel(scope: !5546, name: "out", file: !3, line: 69)
!5559 = !DILocation(line: 48, column: 50, scope: !5546)
!5560 = !DILocation(line: 49, column: 32, scope: !5546)
!5561 = !DILocation(line: 50, column: 19, scope: !5546)
!5562 = !DILocation(line: 50, column: 31, scope: !5546)
!5563 = !DILocation(line: 52, column: 2, scope: !5546)
!5564 = !DILocation(line: 52, column: 20, scope: !5546)
!5565 = !DILocation(line: 52, column: 42, scope: !5546)
!5566 = !DILocation(line: 52, column: 26, scope: !5546)
!5567 = !DILocation(line: 53, column: 2, scope: !5546)
!5568 = !DILocation(line: 53, column: 25, scope: !5546)
!5569 = !DILocation(line: 53, column: 31, scope: !5546)
!5570 = !DILocation(line: 53, column: 36, scope: !5546)
!5571 = !DILocation(line: 54, column: 2, scope: !5546)
!5572 = !DILocation(line: 54, column: 27, scope: !5546)
!5573 = !DILocation(line: 55, column: 2, scope: !5546)
!5574 = !DILocation(line: 55, column: 6, scope: !5546)
!5575 = !DILocation(line: 55, column: 11, scope: !5546)
!5576 = !DILocation(line: 56, column: 2, scope: !5546)
!5577 = !DILocation(line: 56, column: 6, scope: !5546)
!5578 = !DILocation(line: 58, column: 15, scope: !5546)
!5579 = !DILocation(line: 58, column: 34, scope: !5546)
!5580 = !DILocation(line: 58, column: 40, scope: !5546)
!5581 = !DILocation(line: 58, column: 8, scope: !5546)
!5582 = !DILocation(line: 58, column: 6, scope: !5546)
!5583 = !DILocation(line: 59, column: 6, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 59, column: 6)
!5585 = !DILocation(line: 59, column: 10, scope: !5584)
!5586 = !DILocation(line: 59, column: 6, scope: !5546)
!5587 = !DILocation(line: 60, column: 3, scope: !5584)
!5588 = !DILocation(line: 61, column: 10, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 61, column: 6)
!5590 = !DILocation(line: 61, column: 16, scope: !5589)
!5591 = !DILocation(line: 61, column: 25, scope: !5589)
!5592 = !DILocation(line: 61, column: 30, scope: !5589)
!5593 = !DILocation(line: 61, column: 22, scope: !5589)
!5594 = !DILocation(line: 61, column: 6, scope: !5546)
!5595 = !DILocation(line: 62, column: 3, scope: !5589)
!5596 = !DILocation(line: 64, column: 8, scope: !5546)
!5597 = !DILocation(line: 64, column: 13, scope: !5546)
!5598 = !DILocation(line: 64, column: 20, scope: !5546)
!5599 = !DILocation(line: 64, column: 31, scope: !5546)
!5600 = !DILocation(line: 64, column: 6, scope: !5546)
!5601 = !DILocation(line: 65, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 65, column: 6)
!5603 = !DILocation(line: 65, column: 6, scope: !5546)
!5604 = !DILocation(line: 66, column: 3, scope: !5602)
!5605 = !DILocation(line: 68, column: 9, scope: !5546)
!5606 = !DILocation(line: 68, column: 2, scope: !5546)
!5607 = !DILocation(line: 69, column: 1, scope: !5546)
!5608 = !DILocation(line: 70, column: 9, scope: !5546)
!5609 = !DILocation(line: 70, column: 2, scope: !5546)
!5610 = !DILocation(line: 71, column: 1, scope: !5546)
!5611 = !DISubprogram(name: "sscanf", scope: !5612, file: !5612, line: 20, type: !5613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5612 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!109, !224, !224, null}
!5615 = distinct !DISubprogram(name: "extts_fifo_show", scope: !3, file: !3, line: 74, type: !4936, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617, !5618, !5619, !5620, !5621, !5623, !5624, !5625, !5626, !5627, !5631, !5632}
!5617 = !DILocalVariable(name: "dev", arg: 1, scope: !5615, file: !3, line: 74, type: !216)
!5618 = !DILocalVariable(name: "attr", arg: 2, scope: !5615, file: !3, line: 75, type: !4930)
!5619 = !DILocalVariable(name: "page", arg: 3, scope: !5615, file: !3, line: 75, type: !310)
!5620 = !DILocalVariable(name: "ptp", scope: !5615, file: !3, line: 77, type: !4686)
!5621 = !DILocalVariable(name: "queue", scope: !5615, file: !3, line: 78, type: !5622)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!5623 = !DILocalVariable(name: "event", scope: !5615, file: !3, line: 79, type: !4914)
!5624 = !DILocalVariable(name: "flags", scope: !5615, file: !3, line: 80, type: !360)
!5625 = !DILocalVariable(name: "qcnt", scope: !5615, file: !3, line: 81, type: !357)
!5626 = !DILocalVariable(name: "cnt", scope: !5615, file: !3, line: 82, type: !109)
!5627 = !DILocalVariable(name: "__dummy", scope: !5628, file: !3, line: 89, type: !360)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 89, column: 2)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 89, column: 2)
!5630 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 89, column: 2)
!5631 = !DILocalVariable(name: "__dummy2", scope: !5628, file: !3, line: 89, type: !360)
!5632 = !DILabel(scope: !5615, name: "out", file: !3, line: 103)
!5633 = !DILocation(line: 74, column: 47, scope: !5615)
!5634 = !DILocation(line: 75, column: 36, scope: !5615)
!5635 = !DILocation(line: 75, column: 48, scope: !5615)
!5636 = !DILocation(line: 77, column: 2, scope: !5615)
!5637 = !DILocation(line: 77, column: 20, scope: !5615)
!5638 = !DILocation(line: 77, column: 42, scope: !5615)
!5639 = !DILocation(line: 77, column: 26, scope: !5615)
!5640 = !DILocation(line: 78, column: 2, scope: !5615)
!5641 = !DILocation(line: 78, column: 32, scope: !5615)
!5642 = !DILocation(line: 78, column: 41, scope: !5615)
!5643 = !DILocation(line: 78, column: 46, scope: !5615)
!5644 = !DILocation(line: 79, column: 2, scope: !5615)
!5645 = !DILocation(line: 79, column: 25, scope: !5615)
!5646 = !DILocation(line: 80, column: 2, scope: !5615)
!5647 = !DILocation(line: 80, column: 16, scope: !5615)
!5648 = !DILocation(line: 81, column: 2, scope: !5615)
!5649 = !DILocation(line: 81, column: 9, scope: !5615)
!5650 = !DILocation(line: 82, column: 2, scope: !5615)
!5651 = !DILocation(line: 82, column: 6, scope: !5615)
!5652 = !DILocation(line: 84, column: 2, scope: !5615)
!5653 = !DILocation(line: 86, column: 32, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 86, column: 6)
!5655 = !DILocation(line: 86, column: 37, scope: !5654)
!5656 = !DILocation(line: 86, column: 6, scope: !5654)
!5657 = !DILocation(line: 86, column: 6, scope: !5615)
!5658 = !DILocation(line: 87, column: 3, scope: !5654)
!5659 = !DILocation(line: 89, column: 2, scope: !5615)
!5660 = !DILocation(line: 89, column: 2, scope: !5630)
!5661 = !DILocation(line: 89, column: 2, scope: !5628)
!5662 = !DILocation(line: 89, column: 2, scope: !5629)
!5663 = !DILocation(line: 90, column: 19, scope: !5615)
!5664 = !DILocation(line: 90, column: 9, scope: !5615)
!5665 = !DILocation(line: 90, column: 7, scope: !5615)
!5666 = !DILocation(line: 91, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 91, column: 6)
!5668 = !DILocation(line: 91, column: 6, scope: !5615)
!5669 = !DILocation(line: 92, column: 11, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 91, column: 12)
!5671 = !DILocation(line: 92, column: 18, scope: !5670)
!5672 = !DILocation(line: 92, column: 22, scope: !5670)
!5673 = !DILocation(line: 92, column: 29, scope: !5670)
!5674 = !DILocation(line: 94, column: 3, scope: !5670)
!5675 = !DILocation(line: 94, column: 3, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 94, column: 3)
!5677 = !DILocation(line: 94, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 94, column: 3)
!5679 = !DILocation(line: 94, column: 3, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 94, column: 3)
!5681 = !DILocation(line: 95, column: 2, scope: !5670)
!5682 = !DILocation(line: 96, column: 26, scope: !5615)
!5683 = !DILocation(line: 96, column: 33, scope: !5615)
!5684 = !DILocation(line: 96, column: 39, scope: !5615)
!5685 = !DILocation(line: 96, column: 2, scope: !5615)
!5686 = !DILocation(line: 98, column: 7, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 98, column: 6)
!5688 = !DILocation(line: 98, column: 6, scope: !5615)
!5689 = !DILocation(line: 99, column: 3, scope: !5687)
!5690 = !DILocation(line: 101, column: 17, scope: !5615)
!5691 = !DILocation(line: 102, column: 16, scope: !5615)
!5692 = !DILocation(line: 102, column: 29, scope: !5615)
!5693 = !DILocation(line: 102, column: 31, scope: !5615)
!5694 = !DILocation(line: 102, column: 42, scope: !5615)
!5695 = !DILocation(line: 102, column: 44, scope: !5615)
!5696 = !DILocation(line: 101, column: 8, scope: !5615)
!5697 = !DILocation(line: 101, column: 6, scope: !5615)
!5698 = !DILocation(line: 101, column: 2, scope: !5615)
!5699 = !DILocation(line: 103, column: 1, scope: !5615)
!5700 = !DILocation(line: 104, column: 16, scope: !5615)
!5701 = !DILocation(line: 104, column: 21, scope: !5615)
!5702 = !DILocation(line: 104, column: 2, scope: !5615)
!5703 = !DILocation(line: 105, column: 9, scope: !5615)
!5704 = !DILocation(line: 105, column: 2, scope: !5615)
!5705 = !DILocation(line: 106, column: 1, scope: !5615)
!5706 = !DISubprogram(name: "mutex_lock_interruptible", scope: !650, file: !650, line: 228, type: !5707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!109, !5709}
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!5710 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5711, file: !5711, line: 32, type: !5712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5711 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!360, !5714}
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!5715 = distinct !DISubprogram(name: "spinlock_check", scope: !5716, file: !5716, line: 324, type: !5717, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5719)
!5716 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!5714, !2347}
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "lock", arg: 1, scope: !5715, file: !5716, line: 324, type: !2347)
!5721 = !DILocation(line: 324, column: 67, scope: !5715)
!5722 = !DILocation(line: 326, column: 10, scope: !5715)
!5723 = !DILocation(line: 326, column: 16, scope: !5715)
!5724 = !DILocation(line: 326, column: 2, scope: !5715)
!5725 = distinct !DISubprogram(name: "queue_cnt", scope: !4683, file: !4683, line: 79, type: !5726, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5730)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!109, !5728}
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4910)
!5730 = !{!5731, !5732}
!5731 = !DILocalVariable(name: "q", arg: 1, scope: !5725, file: !4683, line: 79, type: !5728)
!5732 = !DILocalVariable(name: "cnt", scope: !5725, file: !4683, line: 85, type: !109)
!5733 = !DILocation(line: 79, column: 65, scope: !5725)
!5734 = !DILocation(line: 85, column: 2, scope: !5725)
!5735 = !DILocation(line: 85, column: 6, scope: !5725)
!5736 = !DILocation(line: 85, column: 12, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5725, file: !4683, line: 85, column: 12)
!5738 = !DILocation(line: 85, column: 12, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5737, file: !4683, line: 85, column: 12)
!5740 = !DILocation(line: 85, column: 33, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5725, file: !4683, line: 85, column: 33)
!5742 = !DILocation(line: 85, column: 33, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5741, file: !4683, line: 85, column: 33)
!5744 = !DILocation(line: 85, column: 31, scope: !5725)
!5745 = !DILocation(line: 86, column: 9, scope: !5725)
!5746 = !DILocation(line: 86, column: 13, scope: !5725)
!5747 = !DILocation(line: 86, column: 40, scope: !5725)
!5748 = !DILocation(line: 86, column: 38, scope: !5725)
!5749 = !DILocation(line: 86, column: 46, scope: !5725)
!5750 = !DILocation(line: 87, column: 1, scope: !5725)
!5751 = !DILocation(line: 86, column: 2, scope: !5725)
!5752 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5716, file: !5716, line: 404, type: !5753, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5755)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{null, !2347, !360}
!5755 = !{!5756, !5757, !5758, !5761}
!5756 = !DILocalVariable(name: "lock", arg: 1, scope: !5752, file: !5716, line: 404, type: !2347)
!5757 = !DILocalVariable(name: "flags", arg: 2, scope: !5752, file: !5716, line: 404, type: !360)
!5758 = !DILocalVariable(name: "__dummy", scope: !5759, file: !5716, line: 406, type: !360)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !5716, line: 406, column: 2)
!5760 = distinct !DILexicalBlock(scope: !5752, file: !5716, line: 406, column: 2)
!5761 = !DILocalVariable(name: "__dummy2", scope: !5759, file: !5716, line: 406, type: !360)
!5762 = !DILocation(line: 404, column: 64, scope: !5752)
!5763 = !DILocation(line: 404, column: 84, scope: !5752)
!5764 = !DILocation(line: 406, column: 2, scope: !5752)
!5765 = !DILocation(line: 406, column: 2, scope: !5759)
!5766 = !DILocation(line: 406, column: 2, scope: !5760)
!5767 = !DILocation(line: 407, column: 1, scope: !5752)
!5768 = !DISubprogram(name: "snprintf", scope: !5612, file: !5612, line: 12, type: !5769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!109, !310, !357, !224, null}
!5771 = !DISubprogram(name: "mutex_unlock", scope: !650, file: !650, line: 246, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !5709}
!5774 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5711, file: !5711, line: 43, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !5714, !360}
!5777 = distinct !DISubprogram(name: "period_store", scope: !3, file: !3, line: 109, type: !4940, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5778)
!5778 = !{!5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789}
!5779 = !DILocalVariable(name: "dev", arg: 1, scope: !5777, file: !3, line: 109, type: !216)
!5780 = !DILocalVariable(name: "attr", arg: 2, scope: !5777, file: !3, line: 110, type: !4930)
!5781 = !DILocalVariable(name: "buf", arg: 3, scope: !5777, file: !3, line: 111, type: !224)
!5782 = !DILocalVariable(name: "count", arg: 4, scope: !5777, file: !3, line: 111, type: !357)
!5783 = !DILocalVariable(name: "ptp", scope: !5777, file: !3, line: 113, type: !4686)
!5784 = !DILocalVariable(name: "ops", scope: !5777, file: !3, line: 114, type: !4771)
!5785 = !DILocalVariable(name: "req", scope: !5777, file: !3, line: 115, type: !143)
!5786 = !DILocalVariable(name: "cnt", scope: !5777, file: !3, line: 116, type: !109)
!5787 = !DILocalVariable(name: "enable", scope: !5777, file: !3, line: 116, type: !109)
!5788 = !DILocalVariable(name: "err", scope: !5777, file: !3, line: 116, type: !109)
!5789 = !DILabel(scope: !5777, name: "out", file: !3, line: 132)
!5790 = !DILocation(line: 109, column: 44, scope: !5777)
!5791 = !DILocation(line: 110, column: 33, scope: !5777)
!5792 = !DILocation(line: 111, column: 20, scope: !5777)
!5793 = !DILocation(line: 111, column: 32, scope: !5777)
!5794 = !DILocation(line: 113, column: 2, scope: !5777)
!5795 = !DILocation(line: 113, column: 20, scope: !5777)
!5796 = !DILocation(line: 113, column: 42, scope: !5777)
!5797 = !DILocation(line: 113, column: 26, scope: !5777)
!5798 = !DILocation(line: 114, column: 2, scope: !5777)
!5799 = !DILocation(line: 114, column: 25, scope: !5777)
!5800 = !DILocation(line: 114, column: 31, scope: !5777)
!5801 = !DILocation(line: 114, column: 36, scope: !5777)
!5802 = !DILocation(line: 115, column: 2, scope: !5777)
!5803 = !DILocation(line: 115, column: 27, scope: !5777)
!5804 = !DILocation(line: 116, column: 2, scope: !5777)
!5805 = !DILocation(line: 116, column: 6, scope: !5777)
!5806 = !DILocation(line: 116, column: 11, scope: !5777)
!5807 = !DILocation(line: 116, column: 19, scope: !5777)
!5808 = !DILocation(line: 118, column: 15, scope: !5777)
!5809 = !DILocation(line: 118, column: 47, scope: !5777)
!5810 = !DILocation(line: 118, column: 54, scope: !5777)
!5811 = !DILocation(line: 119, column: 13, scope: !5777)
!5812 = !DILocation(line: 119, column: 20, scope: !5777)
!5813 = !DILocation(line: 119, column: 26, scope: !5777)
!5814 = !DILocation(line: 119, column: 36, scope: !5777)
!5815 = !DILocation(line: 119, column: 43, scope: !5777)
!5816 = !DILocation(line: 119, column: 49, scope: !5777)
!5817 = !DILocation(line: 120, column: 13, scope: !5777)
!5818 = !DILocation(line: 120, column: 20, scope: !5777)
!5819 = !DILocation(line: 120, column: 27, scope: !5777)
!5820 = !DILocation(line: 120, column: 37, scope: !5777)
!5821 = !DILocation(line: 120, column: 44, scope: !5777)
!5822 = !DILocation(line: 120, column: 51, scope: !5777)
!5823 = !DILocation(line: 118, column: 8, scope: !5777)
!5824 = !DILocation(line: 118, column: 6, scope: !5777)
!5825 = !DILocation(line: 121, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 121, column: 6)
!5827 = !DILocation(line: 121, column: 10, scope: !5826)
!5828 = !DILocation(line: 121, column: 6, scope: !5777)
!5829 = !DILocation(line: 122, column: 3, scope: !5826)
!5830 = !DILocation(line: 123, column: 10, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 123, column: 6)
!5832 = !DILocation(line: 123, column: 17, scope: !5831)
!5833 = !DILocation(line: 123, column: 26, scope: !5831)
!5834 = !DILocation(line: 123, column: 31, scope: !5831)
!5835 = !DILocation(line: 123, column: 23, scope: !5831)
!5836 = !DILocation(line: 123, column: 6, scope: !5777)
!5837 = !DILocation(line: 124, column: 3, scope: !5831)
!5838 = !DILocation(line: 126, column: 15, scope: !5777)
!5839 = !DILocation(line: 126, column: 22, scope: !5777)
!5840 = !DILocation(line: 126, column: 29, scope: !5777)
!5841 = !DILocation(line: 126, column: 11, scope: !5777)
!5842 = !DILocation(line: 126, column: 33, scope: !5777)
!5843 = !DILocation(line: 126, column: 40, scope: !5777)
!5844 = !DILocation(line: 126, column: 47, scope: !5777)
!5845 = !DILocation(line: 126, column: 54, scope: !5777)
!5846 = !DILocation(line: 126, column: 9, scope: !5777)
!5847 = !DILocation(line: 127, column: 8, scope: !5777)
!5848 = !DILocation(line: 127, column: 13, scope: !5777)
!5849 = !DILocation(line: 127, column: 20, scope: !5777)
!5850 = !DILocation(line: 127, column: 31, scope: !5777)
!5851 = !DILocation(line: 127, column: 6, scope: !5777)
!5852 = !DILocation(line: 128, column: 6, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 128, column: 6)
!5854 = !DILocation(line: 128, column: 6, scope: !5777)
!5855 = !DILocation(line: 129, column: 3, scope: !5853)
!5856 = !DILocation(line: 131, column: 9, scope: !5777)
!5857 = !DILocation(line: 131, column: 2, scope: !5777)
!5858 = !DILocation(line: 132, column: 1, scope: !5777)
!5859 = !DILocation(line: 133, column: 9, scope: !5777)
!5860 = !DILocation(line: 133, column: 2, scope: !5777)
!5861 = !DILocation(line: 134, column: 1, scope: !5777)
!5862 = distinct !DISubprogram(name: "pps_enable_store", scope: !3, file: !3, line: 137, type: !4940, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5863)
!5863 = !{!5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874}
!5864 = !DILocalVariable(name: "dev", arg: 1, scope: !5862, file: !3, line: 137, type: !216)
!5865 = !DILocalVariable(name: "attr", arg: 2, scope: !5862, file: !3, line: 138, type: !4930)
!5866 = !DILocalVariable(name: "buf", arg: 3, scope: !5862, file: !3, line: 139, type: !224)
!5867 = !DILocalVariable(name: "count", arg: 4, scope: !5862, file: !3, line: 139, type: !357)
!5868 = !DILocalVariable(name: "ptp", scope: !5862, file: !3, line: 141, type: !4686)
!5869 = !DILocalVariable(name: "ops", scope: !5862, file: !3, line: 142, type: !4771)
!5870 = !DILocalVariable(name: "req", scope: !5862, file: !3, line: 143, type: !143)
!5871 = !DILocalVariable(name: "cnt", scope: !5862, file: !3, line: 144, type: !109)
!5872 = !DILocalVariable(name: "enable", scope: !5862, file: !3, line: 144, type: !109)
!5873 = !DILocalVariable(name: "err", scope: !5862, file: !3, line: 145, type: !109)
!5874 = !DILabel(scope: !5862, name: "out", file: !3, line: 159)
!5875 = !DILocation(line: 137, column: 48, scope: !5862)
!5876 = !DILocation(line: 138, column: 30, scope: !5862)
!5877 = !DILocation(line: 139, column: 17, scope: !5862)
!5878 = !DILocation(line: 139, column: 29, scope: !5862)
!5879 = !DILocation(line: 141, column: 2, scope: !5862)
!5880 = !DILocation(line: 141, column: 20, scope: !5862)
!5881 = !DILocation(line: 141, column: 42, scope: !5862)
!5882 = !DILocation(line: 141, column: 26, scope: !5862)
!5883 = !DILocation(line: 142, column: 2, scope: !5862)
!5884 = !DILocation(line: 142, column: 25, scope: !5862)
!5885 = !DILocation(line: 142, column: 31, scope: !5862)
!5886 = !DILocation(line: 142, column: 36, scope: !5862)
!5887 = !DILocation(line: 143, column: 2, scope: !5862)
!5888 = !DILocation(line: 143, column: 27, scope: !5862)
!5889 = !DILocation(line: 144, column: 2, scope: !5862)
!5890 = !DILocation(line: 144, column: 6, scope: !5862)
!5891 = !DILocation(line: 144, column: 11, scope: !5862)
!5892 = !DILocation(line: 145, column: 2, scope: !5862)
!5893 = !DILocation(line: 145, column: 6, scope: !5862)
!5894 = !DILocation(line: 147, column: 7, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 147, column: 6)
!5896 = !DILocation(line: 147, column: 6, scope: !5862)
!5897 = !DILocation(line: 148, column: 3, scope: !5895)
!5898 = !DILocation(line: 150, column: 15, scope: !5862)
!5899 = !DILocation(line: 150, column: 8, scope: !5862)
!5900 = !DILocation(line: 150, column: 6, scope: !5862)
!5901 = !DILocation(line: 151, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 151, column: 6)
!5903 = !DILocation(line: 151, column: 10, scope: !5902)
!5904 = !DILocation(line: 151, column: 6, scope: !5862)
!5905 = !DILocation(line: 152, column: 3, scope: !5902)
!5906 = !DILocation(line: 154, column: 8, scope: !5862)
!5907 = !DILocation(line: 154, column: 13, scope: !5862)
!5908 = !DILocation(line: 154, column: 20, scope: !5862)
!5909 = !DILocation(line: 154, column: 31, scope: !5862)
!5910 = !DILocation(line: 154, column: 6, scope: !5862)
!5911 = !DILocation(line: 155, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 155, column: 6)
!5913 = !DILocation(line: 155, column: 6, scope: !5862)
!5914 = !DILocation(line: 156, column: 3, scope: !5912)
!5915 = !DILocation(line: 158, column: 9, scope: !5862)
!5916 = !DILocation(line: 158, column: 2, scope: !5862)
!5917 = !DILocation(line: 159, column: 1, scope: !5862)
!5918 = !DILocation(line: 160, column: 9, scope: !5862)
!5919 = !DILocation(line: 160, column: 2, scope: !5862)
!5920 = !DILocation(line: 161, column: 1, scope: !5862)
!5921 = !DISubprogram(name: "capable", scope: !1819, file: !1819, line: 148, type: !5922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!728, !109}
!5924 = distinct !DISubprogram(name: "n_vclocks_show", scope: !3, file: !3, line: 185, type: !4936, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5925)
!5925 = !{!5926, !5927, !5928, !5929, !5930}
!5926 = !DILocalVariable(name: "dev", arg: 1, scope: !5924, file: !3, line: 185, type: !216)
!5927 = !DILocalVariable(name: "attr", arg: 2, scope: !5924, file: !3, line: 186, type: !4930)
!5928 = !DILocalVariable(name: "page", arg: 3, scope: !5924, file: !3, line: 186, type: !310)
!5929 = !DILocalVariable(name: "ptp", scope: !5924, file: !3, line: 188, type: !4686)
!5930 = !DILocalVariable(name: "size", scope: !5924, file: !3, line: 189, type: !342)
!5931 = !DILocation(line: 185, column: 46, scope: !5924)
!5932 = !DILocation(line: 186, column: 35, scope: !5924)
!5933 = !DILocation(line: 186, column: 47, scope: !5924)
!5934 = !DILocation(line: 188, column: 2, scope: !5924)
!5935 = !DILocation(line: 188, column: 20, scope: !5924)
!5936 = !DILocation(line: 188, column: 42, scope: !5924)
!5937 = !DILocation(line: 188, column: 26, scope: !5924)
!5938 = !DILocation(line: 189, column: 2, scope: !5924)
!5939 = !DILocation(line: 189, column: 10, scope: !5924)
!5940 = !DILocation(line: 191, column: 32, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 191, column: 6)
!5942 = !DILocation(line: 191, column: 37, scope: !5941)
!5943 = !DILocation(line: 191, column: 6, scope: !5941)
!5944 = !DILocation(line: 191, column: 6, scope: !5924)
!5945 = !DILocation(line: 192, column: 3, scope: !5941)
!5946 = !DILocation(line: 194, column: 18, scope: !5924)
!5947 = !DILocation(line: 194, column: 47, scope: !5924)
!5948 = !DILocation(line: 194, column: 52, scope: !5924)
!5949 = !DILocation(line: 194, column: 9, scope: !5924)
!5950 = !DILocation(line: 194, column: 7, scope: !5924)
!5951 = !DILocation(line: 196, column: 16, scope: !5924)
!5952 = !DILocation(line: 196, column: 21, scope: !5924)
!5953 = !DILocation(line: 196, column: 2, scope: !5924)
!5954 = !DILocation(line: 198, column: 9, scope: !5924)
!5955 = !DILocation(line: 198, column: 2, scope: !5924)
!5956 = !DILocation(line: 199, column: 1, scope: !5924)
!5957 = distinct !DISubprogram(name: "n_vclocks_store", scope: !3, file: !3, line: 201, type: !4940, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5958)
!5958 = !{!5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968}
!5959 = !DILocalVariable(name: "dev", arg: 1, scope: !5957, file: !3, line: 201, type: !216)
!5960 = !DILocalVariable(name: "attr", arg: 2, scope: !5957, file: !3, line: 202, type: !4930)
!5961 = !DILocalVariable(name: "buf", arg: 3, scope: !5957, file: !3, line: 203, type: !224)
!5962 = !DILocalVariable(name: "count", arg: 4, scope: !5957, file: !3, line: 203, type: !357)
!5963 = !DILocalVariable(name: "ptp", scope: !5957, file: !3, line: 205, type: !4686)
!5964 = !DILocalVariable(name: "vclock", scope: !5957, file: !3, line: 206, type: !4681)
!5965 = !DILocalVariable(name: "err", scope: !5957, file: !3, line: 207, type: !109)
!5966 = !DILocalVariable(name: "num", scope: !5957, file: !3, line: 208, type: !459)
!5967 = !DILocalVariable(name: "i", scope: !5957, file: !3, line: 208, type: !459)
!5968 = !DILabel(scope: !5957, name: "out", file: !3, line: 258)
!5969 = !DILocation(line: 201, column: 47, scope: !5957)
!5970 = !DILocation(line: 202, column: 36, scope: !5957)
!5971 = !DILocation(line: 203, column: 23, scope: !5957)
!5972 = !DILocation(line: 203, column: 35, scope: !5957)
!5973 = !DILocation(line: 205, column: 2, scope: !5957)
!5974 = !DILocation(line: 205, column: 20, scope: !5957)
!5975 = !DILocation(line: 205, column: 42, scope: !5957)
!5976 = !DILocation(line: 205, column: 26, scope: !5957)
!5977 = !DILocation(line: 206, column: 2, scope: !5957)
!5978 = !DILocation(line: 206, column: 21, scope: !5957)
!5979 = !DILocation(line: 207, column: 2, scope: !5957)
!5980 = !DILocation(line: 207, column: 6, scope: !5957)
!5981 = !DILocation(line: 208, column: 2, scope: !5957)
!5982 = !DILocation(line: 208, column: 6, scope: !5957)
!5983 = !DILocation(line: 208, column: 11, scope: !5957)
!5984 = !DILocation(line: 210, column: 16, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 210, column: 6)
!5986 = !DILocation(line: 210, column: 6, scope: !5985)
!5987 = !DILocation(line: 210, column: 6, scope: !5957)
!5988 = !DILocation(line: 211, column: 10, scope: !5985)
!5989 = !DILocation(line: 211, column: 3, scope: !5985)
!5990 = !DILocation(line: 213, column: 32, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 213, column: 6)
!5992 = !DILocation(line: 213, column: 37, scope: !5991)
!5993 = !DILocation(line: 213, column: 6, scope: !5991)
!5994 = !DILocation(line: 213, column: 6, scope: !5957)
!5995 = !DILocation(line: 214, column: 3, scope: !5991)
!5996 = !DILocation(line: 216, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 216, column: 6)
!5998 = !DILocation(line: 216, column: 12, scope: !5997)
!5999 = !DILocation(line: 216, column: 17, scope: !5997)
!6000 = !DILocation(line: 216, column: 10, scope: !5997)
!6001 = !DILocation(line: 216, column: 6, scope: !5957)
!6002 = !DILocation(line: 217, column: 3, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 217, column: 3)
!6004 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 216, column: 30)
!6005 = !DILocation(line: 217, column: 3, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 217, column: 3)
!6007 = !DILocation(line: 218, column: 3, scope: !6004)
!6008 = !DILocation(line: 222, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 222, column: 6)
!6010 = !DILocation(line: 222, column: 12, scope: !6009)
!6011 = !DILocation(line: 222, column: 17, scope: !6009)
!6012 = !DILocation(line: 222, column: 10, scope: !6009)
!6013 = !DILocation(line: 222, column: 6, scope: !5957)
!6014 = !DILocation(line: 223, column: 10, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 223, column: 3)
!6016 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 222, column: 28)
!6017 = !DILocation(line: 223, column: 8, scope: !6015)
!6018 = !DILocation(line: 223, column: 15, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 223, column: 3)
!6020 = !DILocation(line: 223, column: 19, scope: !6019)
!6021 = !DILocation(line: 223, column: 25, scope: !6019)
!6022 = !DILocation(line: 223, column: 30, scope: !6019)
!6023 = !DILocation(line: 223, column: 23, scope: !6019)
!6024 = !DILocation(line: 223, column: 17, scope: !6019)
!6025 = !DILocation(line: 223, column: 3, scope: !6015)
!6026 = !DILocation(line: 224, column: 33, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 223, column: 46)
!6028 = !DILocation(line: 224, column: 13, scope: !6027)
!6029 = !DILocation(line: 224, column: 11, scope: !6027)
!6030 = !DILocation(line: 225, column: 9, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 225, column: 8)
!6032 = !DILocation(line: 225, column: 8, scope: !6027)
!6033 = !DILocation(line: 226, column: 5, scope: !6031)
!6034 = !DILocation(line: 229, column: 5, scope: !6027)
!6035 = !DILocation(line: 229, column: 13, scope: !6027)
!6036 = !DILocation(line: 229, column: 20, scope: !6027)
!6037 = !DILocation(line: 228, column: 6, scope: !6027)
!6038 = !DILocation(line: 228, column: 11, scope: !6027)
!6039 = !DILocation(line: 228, column: 26, scope: !6027)
!6040 = !DILocation(line: 228, column: 31, scope: !6027)
!6041 = !DILocation(line: 228, column: 24, scope: !6027)
!6042 = !DILocation(line: 228, column: 43, scope: !6027)
!6043 = !DILocation(line: 228, column: 41, scope: !6027)
!6044 = !DILocation(line: 228, column: 46, scope: !6027)
!6045 = !DILocation(line: 231, column: 4, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 231, column: 4)
!6047 = !DILocation(line: 231, column: 4, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6046, file: !3, line: 231, column: 4)
!6049 = !DILocation(line: 233, column: 3, scope: !6027)
!6050 = !DILocation(line: 223, column: 42, scope: !6019)
!6051 = !DILocation(line: 223, column: 3, scope: !6019)
!6052 = distinct !{!6052, !6025, !6053, !5248, !5249}
!6053 = !DILocation(line: 233, column: 3, scope: !6015)
!6054 = !DILocation(line: 234, column: 2, scope: !6016)
!6055 = !DILocation(line: 237, column: 6, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 237, column: 6)
!6057 = !DILocation(line: 237, column: 12, scope: !6056)
!6058 = !DILocation(line: 237, column: 17, scope: !6056)
!6059 = !DILocation(line: 237, column: 10, scope: !6056)
!6060 = !DILocation(line: 237, column: 6, scope: !5957)
!6061 = !DILocation(line: 238, column: 7, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 237, column: 28)
!6063 = !DILocation(line: 238, column: 12, scope: !6062)
!6064 = !DILocation(line: 238, column: 24, scope: !6062)
!6065 = !DILocation(line: 238, column: 22, scope: !6062)
!6066 = !DILocation(line: 238, column: 5, scope: !6062)
!6067 = !DILocation(line: 239, column: 33, scope: !6062)
!6068 = !DILocation(line: 239, column: 3, scope: !6062)
!6069 = !DILocation(line: 242, column: 10, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 242, column: 3)
!6071 = !DILocation(line: 242, column: 8, scope: !6070)
!6072 = !DILocation(line: 242, column: 15, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 242, column: 3)
!6074 = !DILocation(line: 242, column: 20, scope: !6073)
!6075 = !DILocation(line: 242, column: 25, scope: !6073)
!6076 = !DILocation(line: 242, column: 37, scope: !6073)
!6077 = !DILocation(line: 242, column: 35, scope: !6073)
!6078 = !DILocation(line: 242, column: 17, scope: !6073)
!6079 = !DILocation(line: 242, column: 3, scope: !6070)
!6080 = !DILocation(line: 243, column: 6, scope: !6073)
!6081 = !DILocation(line: 243, column: 11, scope: !6073)
!6082 = !DILocation(line: 243, column: 26, scope: !6073)
!6083 = !DILocation(line: 243, column: 31, scope: !6073)
!6084 = !DILocation(line: 243, column: 24, scope: !6073)
!6085 = !DILocation(line: 243, column: 43, scope: !6073)
!6086 = !DILocation(line: 243, column: 41, scope: !6073)
!6087 = !DILocation(line: 243, column: 46, scope: !6073)
!6088 = !DILocation(line: 243, column: 4, scope: !6073)
!6089 = !DILocation(line: 242, column: 43, scope: !6073)
!6090 = !DILocation(line: 242, column: 3, scope: !6073)
!6091 = distinct !{!6091, !6079, !6092, !5248, !5249}
!6092 = !DILocation(line: 243, column: 49, scope: !6070)
!6093 = !DILocation(line: 244, column: 2, scope: !6062)
!6094 = !DILocation(line: 247, column: 7, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 247, column: 6)
!6096 = !DILocation(line: 247, column: 12, scope: !6095)
!6097 = !DILocation(line: 247, column: 6, scope: !5957)
!6098 = !DILocation(line: 248, column: 7, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 248, column: 7)
!6100 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 247, column: 24)
!6101 = !DILocation(line: 248, column: 11, scope: !6099)
!6102 = !DILocation(line: 248, column: 7, scope: !6100)
!6103 = !DILocation(line: 249, column: 4, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 249, column: 4)
!6105 = !DILocation(line: 249, column: 4, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 249, column: 4)
!6107 = !DILocation(line: 249, column: 4, scope: !6099)
!6108 = !DILocation(line: 251, column: 4, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 251, column: 4)
!6110 = !DILocation(line: 251, column: 4, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 251, column: 4)
!6112 = !DILocation(line: 252, column: 2, scope: !6100)
!6113 = !DILocation(line: 254, column: 19, scope: !5957)
!6114 = !DILocation(line: 254, column: 2, scope: !5957)
!6115 = !DILocation(line: 254, column: 7, scope: !5957)
!6116 = !DILocation(line: 254, column: 17, scope: !5957)
!6117 = !DILocation(line: 255, column: 16, scope: !5957)
!6118 = !DILocation(line: 255, column: 21, scope: !5957)
!6119 = !DILocation(line: 255, column: 2, scope: !5957)
!6120 = !DILocation(line: 257, column: 9, scope: !5957)
!6121 = !DILocation(line: 257, column: 2, scope: !5957)
!6122 = !DILocation(line: 258, column: 1, scope: !5957)
!6123 = !DILocation(line: 259, column: 16, scope: !5957)
!6124 = !DILocation(line: 259, column: 21, scope: !5957)
!6125 = !DILocation(line: 259, column: 2, scope: !5957)
!6126 = !DILocation(line: 260, column: 9, scope: !5957)
!6127 = !DILocation(line: 260, column: 2, scope: !5957)
!6128 = !DILocation(line: 261, column: 1, scope: !5957)
!6129 = distinct !DISubprogram(name: "kstrtou32", scope: !6130, file: !6130, line: 84, type: !6131, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6130 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!109, !224, !7, !2694}
!6133 = !{!6134, !6135, !6136}
!6134 = !DILocalVariable(name: "s", arg: 1, scope: !6129, file: !6130, line: 84, type: !224)
!6135 = !DILocalVariable(name: "base", arg: 2, scope: !6129, file: !6130, line: 84, type: !7)
!6136 = !DILocalVariable(name: "res", arg: 3, scope: !6129, file: !6130, line: 84, type: !2694)
!6137 = !DILocation(line: 84, column: 54, scope: !6129)
!6138 = !DILocation(line: 84, column: 70, scope: !6129)
!6139 = !DILocation(line: 84, column: 81, scope: !6129)
!6140 = !DILocation(line: 86, column: 20, scope: !6129)
!6141 = !DILocation(line: 86, column: 23, scope: !6129)
!6142 = !DILocation(line: 86, column: 29, scope: !6129)
!6143 = !DILocation(line: 86, column: 9, scope: !6129)
!6144 = !DILocation(line: 86, column: 2, scope: !6129)
!6145 = !DISubprogram(name: "_dev_err", scope: !6146, file: !6146, line: 50, type: !6147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6146 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !4247, !224, null}
!6149 = !DISubprogram(name: "ptp_vclock_register", scope: !4683, file: !4683, line: 144, type: !6150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!4681, !4686}
!6152 = !DISubprogram(name: "_dev_info", scope: !6146, file: !6146, line: 56, type: !6147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6153 = !DISubprogram(name: "device_for_each_child_reverse", scope: !94, file: !94, line: 1064, type: !6154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!109, !216, !213, !6156}
!6156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6157, size: 64)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!109, !216, !213}
!6159 = distinct !DISubprogram(name: "unregister_vclock", scope: !3, file: !3, line: 164, type: !6157, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6160)
!6160 = !{!6161, !6162, !6163, !6164, !6165, !6166, !6167}
!6161 = !DILocalVariable(name: "dev", arg: 1, scope: !6159, file: !3, line: 164, type: !216)
!6162 = !DILocalVariable(name: "data", arg: 2, scope: !6159, file: !3, line: 164, type: !213)
!6163 = !DILocalVariable(name: "ptp", scope: !6159, file: !3, line: 166, type: !4686)
!6164 = !DILocalVariable(name: "info", scope: !6159, file: !3, line: 167, type: !4771)
!6165 = !DILocalVariable(name: "vclock", scope: !6159, file: !3, line: 168, type: !4681)
!6166 = !DILocalVariable(name: "num", scope: !6159, file: !3, line: 169, type: !2694)
!6167 = !DILocalVariable(name: "__mptr", scope: !6168, file: !3, line: 171, type: !213)
!6168 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 171, column: 11)
!6169 = !DILocation(line: 164, column: 45, scope: !6159)
!6170 = !DILocation(line: 164, column: 56, scope: !6159)
!6171 = !DILocation(line: 166, column: 2, scope: !6159)
!6172 = !DILocation(line: 166, column: 20, scope: !6159)
!6173 = !DILocation(line: 166, column: 42, scope: !6159)
!6174 = !DILocation(line: 166, column: 26, scope: !6159)
!6175 = !DILocation(line: 167, column: 2, scope: !6159)
!6176 = !DILocation(line: 167, column: 25, scope: !6159)
!6177 = !DILocation(line: 167, column: 32, scope: !6159)
!6178 = !DILocation(line: 167, column: 37, scope: !6159)
!6179 = !DILocation(line: 168, column: 2, scope: !6159)
!6180 = !DILocation(line: 168, column: 21, scope: !6159)
!6181 = !DILocation(line: 169, column: 2, scope: !6159)
!6182 = !DILocation(line: 169, column: 7, scope: !6159)
!6183 = !DILocation(line: 169, column: 13, scope: !6159)
!6184 = !DILocation(line: 171, column: 11, scope: !6168)
!6185 = !DILocation(line: 171, column: 11, scope: !6159)
!6186 = !DILocation(line: 171, column: 9, scope: !6159)
!6187 = !DILocation(line: 172, column: 2, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 172, column: 2)
!6189 = !DILocation(line: 172, column: 2, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 172, column: 2)
!6191 = !DILocation(line: 175, column: 24, scope: !6159)
!6192 = !DILocation(line: 175, column: 2, scope: !6159)
!6193 = !DILocation(line: 176, column: 4, scope: !6159)
!6194 = !DILocation(line: 176, column: 8, scope: !6159)
!6195 = !DILocation(line: 179, column: 7, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 179, column: 6)
!6197 = !DILocation(line: 179, column: 6, scope: !6196)
!6198 = !DILocation(line: 179, column: 11, scope: !6196)
!6199 = !DILocation(line: 179, column: 6, scope: !6159)
!6200 = !DILocation(line: 180, column: 3, scope: !6196)
!6201 = !DILocation(line: 182, column: 2, scope: !6159)
!6202 = !DILocation(line: 183, column: 1, scope: !6159)
!6203 = !DISubprogram(name: "kstrtouint", scope: !6130, file: !6130, line: 71, type: !6204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{!109, !224, !7, !720}
!6206 = !DISubprogram(name: "ptp_vclock_unregister", scope: !4683, file: !4683, line: 145, type: !6207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{null, !4681}
!6209 = distinct !DISubprogram(name: "max_vclocks_show", scope: !3, file: !3, line: 264, type: !4936, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6210 = !{!6211, !6212, !6213, !6214, !6215}
!6211 = !DILocalVariable(name: "dev", arg: 1, scope: !6209, file: !3, line: 264, type: !216)
!6212 = !DILocalVariable(name: "attr", arg: 2, scope: !6209, file: !3, line: 265, type: !4930)
!6213 = !DILocalVariable(name: "page", arg: 3, scope: !6209, file: !3, line: 265, type: !310)
!6214 = !DILocalVariable(name: "ptp", scope: !6209, file: !3, line: 267, type: !4686)
!6215 = !DILocalVariable(name: "size", scope: !6209, file: !3, line: 268, type: !342)
!6216 = !DILocation(line: 264, column: 48, scope: !6209)
!6217 = !DILocation(line: 265, column: 30, scope: !6209)
!6218 = !DILocation(line: 265, column: 42, scope: !6209)
!6219 = !DILocation(line: 267, column: 2, scope: !6209)
!6220 = !DILocation(line: 267, column: 20, scope: !6209)
!6221 = !DILocation(line: 267, column: 42, scope: !6209)
!6222 = !DILocation(line: 267, column: 26, scope: !6209)
!6223 = !DILocation(line: 268, column: 2, scope: !6209)
!6224 = !DILocation(line: 268, column: 10, scope: !6209)
!6225 = !DILocation(line: 270, column: 18, scope: !6209)
!6226 = !DILocation(line: 270, column: 47, scope: !6209)
!6227 = !DILocation(line: 270, column: 52, scope: !6209)
!6228 = !DILocation(line: 270, column: 9, scope: !6209)
!6229 = !DILocation(line: 270, column: 7, scope: !6209)
!6230 = !DILocation(line: 272, column: 9, scope: !6209)
!6231 = !DILocation(line: 273, column: 1, scope: !6209)
!6232 = !DILocation(line: 272, column: 2, scope: !6209)
!6233 = distinct !DISubprogram(name: "max_vclocks_store", scope: !3, file: !3, line: 275, type: !4940, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6234)
!6234 = !{!6235, !6236, !6237, !6238, !6239, !6240, !6241, !6242, !6243, !6244}
!6235 = !DILocalVariable(name: "dev", arg: 1, scope: !6233, file: !3, line: 275, type: !216)
!6236 = !DILocalVariable(name: "attr", arg: 2, scope: !6233, file: !3, line: 276, type: !4930)
!6237 = !DILocalVariable(name: "buf", arg: 3, scope: !6233, file: !3, line: 277, type: !224)
!6238 = !DILocalVariable(name: "count", arg: 4, scope: !6233, file: !3, line: 277, type: !357)
!6239 = !DILocalVariable(name: "ptp", scope: !6233, file: !3, line: 279, type: !4686)
!6240 = !DILocalVariable(name: "vclock_index", scope: !6233, file: !3, line: 280, type: !720)
!6241 = !DILocalVariable(name: "err", scope: !6233, file: !3, line: 281, type: !109)
!6242 = !DILocalVariable(name: "size", scope: !6233, file: !3, line: 282, type: !357)
!6243 = !DILocalVariable(name: "max", scope: !6233, file: !3, line: 283, type: !459)
!6244 = !DILabel(scope: !6233, name: "out", file: !3, line: 313)
!6245 = !DILocation(line: 275, column: 49, scope: !6233)
!6246 = !DILocation(line: 276, column: 31, scope: !6233)
!6247 = !DILocation(line: 277, column: 18, scope: !6233)
!6248 = !DILocation(line: 277, column: 30, scope: !6233)
!6249 = !DILocation(line: 279, column: 2, scope: !6233)
!6250 = !DILocation(line: 279, column: 20, scope: !6233)
!6251 = !DILocation(line: 279, column: 42, scope: !6233)
!6252 = !DILocation(line: 279, column: 26, scope: !6233)
!6253 = !DILocation(line: 280, column: 2, scope: !6233)
!6254 = !DILocation(line: 280, column: 16, scope: !6233)
!6255 = !DILocation(line: 281, column: 2, scope: !6233)
!6256 = !DILocation(line: 281, column: 6, scope: !6233)
!6257 = !DILocation(line: 282, column: 2, scope: !6233)
!6258 = !DILocation(line: 282, column: 9, scope: !6233)
!6259 = !DILocation(line: 283, column: 2, scope: !6233)
!6260 = !DILocation(line: 283, column: 6, scope: !6233)
!6261 = !DILocation(line: 285, column: 16, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 285, column: 6)
!6263 = !DILocation(line: 285, column: 6, scope: !6262)
!6264 = !DILocation(line: 285, column: 30, scope: !6262)
!6265 = !DILocation(line: 285, column: 33, scope: !6262)
!6266 = !DILocation(line: 285, column: 37, scope: !6262)
!6267 = !DILocation(line: 285, column: 6, scope: !6233)
!6268 = !DILocation(line: 286, column: 3, scope: !6262)
!6269 = !DILocation(line: 288, column: 6, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 288, column: 6)
!6271 = !DILocation(line: 288, column: 13, scope: !6270)
!6272 = !DILocation(line: 288, column: 18, scope: !6270)
!6273 = !DILocation(line: 288, column: 10, scope: !6270)
!6274 = !DILocation(line: 288, column: 6, scope: !6233)
!6275 = !DILocation(line: 289, column: 10, scope: !6270)
!6276 = !DILocation(line: 289, column: 3, scope: !6270)
!6277 = !DILocation(line: 291, column: 32, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 291, column: 6)
!6279 = !DILocation(line: 291, column: 37, scope: !6278)
!6280 = !DILocation(line: 291, column: 6, scope: !6278)
!6281 = !DILocation(line: 291, column: 6, scope: !6233)
!6282 = !DILocation(line: 292, column: 3, scope: !6278)
!6283 = !DILocation(line: 294, column: 6, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 294, column: 6)
!6285 = !DILocation(line: 294, column: 12, scope: !6284)
!6286 = !DILocation(line: 294, column: 17, scope: !6284)
!6287 = !DILocation(line: 294, column: 10, scope: !6284)
!6288 = !DILocation(line: 294, column: 6, scope: !6233)
!6289 = !DILocation(line: 295, column: 3, scope: !6284)
!6290 = !DILocation(line: 297, column: 25, scope: !6233)
!6291 = !DILocation(line: 297, column: 17, scope: !6233)
!6292 = !DILocation(line: 297, column: 15, scope: !6233)
!6293 = !DILocation(line: 298, column: 7, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 298, column: 6)
!6295 = !DILocation(line: 298, column: 6, scope: !6233)
!6296 = !DILocation(line: 299, column: 7, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 298, column: 21)
!6298 = !DILocation(line: 300, column: 3, scope: !6297)
!6299 = !DILocation(line: 303, column: 23, scope: !6233)
!6300 = !DILocation(line: 303, column: 28, scope: !6233)
!6301 = !DILocation(line: 303, column: 21, scope: !6233)
!6302 = !DILocation(line: 303, column: 7, scope: !6233)
!6303 = !DILocation(line: 304, column: 9, scope: !6233)
!6304 = !DILocation(line: 304, column: 23, scope: !6233)
!6305 = !DILocation(line: 304, column: 28, scope: !6233)
!6306 = !DILocation(line: 304, column: 42, scope: !6233)
!6307 = !DILocation(line: 304, column: 2, scope: !6233)
!6308 = !DILocation(line: 306, column: 8, scope: !6233)
!6309 = !DILocation(line: 306, column: 13, scope: !6233)
!6310 = !DILocation(line: 306, column: 2, scope: !6233)
!6311 = !DILocation(line: 307, column: 22, scope: !6233)
!6312 = !DILocation(line: 307, column: 2, scope: !6233)
!6313 = !DILocation(line: 307, column: 7, scope: !6233)
!6314 = !DILocation(line: 307, column: 20, scope: !6233)
!6315 = !DILocation(line: 308, column: 21, scope: !6233)
!6316 = !DILocation(line: 308, column: 2, scope: !6233)
!6317 = !DILocation(line: 308, column: 7, scope: !6233)
!6318 = !DILocation(line: 308, column: 19, scope: !6233)
!6319 = !DILocation(line: 310, column: 16, scope: !6233)
!6320 = !DILocation(line: 310, column: 21, scope: !6233)
!6321 = !DILocation(line: 310, column: 2, scope: !6233)
!6322 = !DILocation(line: 312, column: 9, scope: !6233)
!6323 = !DILocation(line: 312, column: 2, scope: !6233)
!6324 = !DILocation(line: 313, column: 1, scope: !6233)
!6325 = !DILocation(line: 314, column: 16, scope: !6233)
!6326 = !DILocation(line: 314, column: 21, scope: !6233)
!6327 = !DILocation(line: 314, column: 2, scope: !6233)
!6328 = !DILocation(line: 315, column: 9, scope: !6233)
!6329 = !DILocation(line: 315, column: 2, scope: !6233)
!6330 = !DILocation(line: 316, column: 1, scope: !6233)
!6331 = distinct !DISubprogram(name: "max_phase_adjustment_show", scope: !3, file: !3, line: 21, type: !4936, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6332)
!6332 = !{!6333, !6334, !6335, !6336}
!6333 = !DILocalVariable(name: "dev", arg: 1, scope: !6331, file: !3, line: 21, type: !216)
!6334 = !DILocalVariable(name: "attr", arg: 2, scope: !6331, file: !3, line: 22, type: !4930)
!6335 = !DILocalVariable(name: "page", arg: 3, scope: !6331, file: !3, line: 23, type: !310)
!6336 = !DILocalVariable(name: "ptp", scope: !6331, file: !3, line: 25, type: !4686)
!6337 = !DILocation(line: 21, column: 57, scope: !6331)
!6338 = !DILocation(line: 22, column: 32, scope: !6331)
!6339 = !DILocation(line: 23, column: 13, scope: !6331)
!6340 = !DILocation(line: 25, column: 2, scope: !6331)
!6341 = !DILocation(line: 25, column: 20, scope: !6331)
!6342 = !DILocation(line: 25, column: 42, scope: !6331)
!6343 = !DILocation(line: 25, column: 26, scope: !6331)
!6344 = !DILocation(line: 27, column: 18, scope: !6331)
!6345 = !DILocation(line: 28, column: 4, scope: !6331)
!6346 = !DILocation(line: 28, column: 9, scope: !6331)
!6347 = !DILocation(line: 28, column: 15, scope: !6331)
!6348 = !DILocation(line: 28, column: 27, scope: !6331)
!6349 = !DILocation(line: 28, column: 32, scope: !6331)
!6350 = !DILocation(line: 27, column: 9, scope: !6331)
!6351 = !DILocation(line: 29, column: 1, scope: !6331)
!6352 = !DILocation(line: 27, column: 2, scope: !6331)
!6353 = distinct !DISubprogram(name: "clock_name_show", scope: !3, file: !3, line: 13, type: !4936, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6354)
!6354 = !{!6355, !6356, !6357, !6358}
!6355 = !DILocalVariable(name: "dev", arg: 1, scope: !6353, file: !3, line: 13, type: !216)
!6356 = !DILocalVariable(name: "attr", arg: 2, scope: !6353, file: !3, line: 14, type: !4930)
!6357 = !DILocalVariable(name: "page", arg: 3, scope: !6353, file: !3, line: 14, type: !310)
!6358 = !DILocalVariable(name: "ptp", scope: !6353, file: !3, line: 16, type: !4686)
!6359 = !DILocation(line: 13, column: 47, scope: !6353)
!6360 = !DILocation(line: 14, column: 36, scope: !6353)
!6361 = !DILocation(line: 14, column: 48, scope: !6353)
!6362 = !DILocation(line: 16, column: 2, scope: !6353)
!6363 = !DILocation(line: 16, column: 20, scope: !6353)
!6364 = !DILocation(line: 16, column: 42, scope: !6353)
!6365 = !DILocation(line: 16, column: 26, scope: !6353)
!6366 = !DILocation(line: 17, column: 20, scope: !6353)
!6367 = !DILocation(line: 17, column: 34, scope: !6353)
!6368 = !DILocation(line: 17, column: 39, scope: !6353)
!6369 = !DILocation(line: 17, column: 45, scope: !6353)
!6370 = !DILocation(line: 17, column: 9, scope: !6353)
!6371 = !DILocation(line: 18, column: 1, scope: !6353)
!6372 = !DILocation(line: 17, column: 2, scope: !6353)
!6373 = !DISubprogram(name: "sysfs_emit", scope: !336, file: !336, line: 357, type: !6374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!109, !310, !224, null}
!6376 = distinct !DISubprogram(name: "max_adj_show", scope: !3, file: !3, line: 41, type: !4936, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6377)
!6377 = !{!6378, !6379, !6380, !6381}
!6378 = !DILocalVariable(name: "dev", arg: 1, scope: !6376, file: !3, line: 41, type: !216)
!6379 = !DILocalVariable(name: "attr", arg: 2, scope: !6376, file: !3, line: 41, type: !4930)
!6380 = !DILocalVariable(name: "page", arg: 3, scope: !6376, file: !3, line: 41, type: !310)
!6381 = !DILocalVariable(name: "ptp", scope: !6376, file: !3, line: 41, type: !4686)
!6382 = !DILocation(line: 41, column: 1, scope: !6376)
!6383 = distinct !DISubprogram(name: "n_alarm_show", scope: !3, file: !3, line: 42, type: !4936, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6384)
!6384 = !{!6385, !6386, !6387, !6388}
!6385 = !DILocalVariable(name: "dev", arg: 1, scope: !6383, file: !3, line: 42, type: !216)
!6386 = !DILocalVariable(name: "attr", arg: 2, scope: !6383, file: !3, line: 42, type: !4930)
!6387 = !DILocalVariable(name: "page", arg: 3, scope: !6383, file: !3, line: 42, type: !310)
!6388 = !DILocalVariable(name: "ptp", scope: !6383, file: !3, line: 42, type: !4686)
!6389 = !DILocation(line: 42, column: 1, scope: !6383)
!6390 = distinct !DISubprogram(name: "n_ext_ts_show", scope: !3, file: !3, line: 43, type: !4936, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6391)
!6391 = !{!6392, !6393, !6394, !6395}
!6392 = !DILocalVariable(name: "dev", arg: 1, scope: !6390, file: !3, line: 43, type: !216)
!6393 = !DILocalVariable(name: "attr", arg: 2, scope: !6390, file: !3, line: 43, type: !4930)
!6394 = !DILocalVariable(name: "page", arg: 3, scope: !6390, file: !3, line: 43, type: !310)
!6395 = !DILocalVariable(name: "ptp", scope: !6390, file: !3, line: 43, type: !4686)
!6396 = !DILocation(line: 43, column: 1, scope: !6390)
!6397 = distinct !DISubprogram(name: "n_per_out_show", scope: !3, file: !3, line: 44, type: !4936, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6398)
!6398 = !{!6399, !6400, !6401, !6402}
!6399 = !DILocalVariable(name: "dev", arg: 1, scope: !6397, file: !3, line: 44, type: !216)
!6400 = !DILocalVariable(name: "attr", arg: 2, scope: !6397, file: !3, line: 44, type: !4930)
!6401 = !DILocalVariable(name: "page", arg: 3, scope: !6397, file: !3, line: 44, type: !310)
!6402 = !DILocalVariable(name: "ptp", scope: !6397, file: !3, line: 44, type: !4686)
!6403 = !DILocation(line: 44, column: 1, scope: !6397)
!6404 = distinct !DISubprogram(name: "n_pins_show", scope: !3, file: !3, line: 45, type: !4936, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6405 = !{!6406, !6407, !6408, !6409}
!6406 = !DILocalVariable(name: "dev", arg: 1, scope: !6404, file: !3, line: 45, type: !216)
!6407 = !DILocalVariable(name: "attr", arg: 2, scope: !6404, file: !3, line: 45, type: !4930)
!6408 = !DILocalVariable(name: "page", arg: 3, scope: !6404, file: !3, line: 45, type: !310)
!6409 = !DILocalVariable(name: "ptp", scope: !6404, file: !3, line: 45, type: !4686)
!6410 = !DILocation(line: 45, column: 1, scope: !6404)
!6411 = distinct !DISubprogram(name: "pps_show", scope: !3, file: !3, line: 46, type: !4936, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6412)
!6412 = !{!6413, !6414, !6415, !6416}
!6413 = !DILocalVariable(name: "dev", arg: 1, scope: !6411, file: !3, line: 46, type: !216)
!6414 = !DILocalVariable(name: "attr", arg: 2, scope: !6411, file: !3, line: 46, type: !4930)
!6415 = !DILocalVariable(name: "page", arg: 3, scope: !6411, file: !3, line: 46, type: !310)
!6416 = !DILocalVariable(name: "ptp", scope: !6411, file: !3, line: 46, type: !4686)
!6417 = !DILocation(line: 46, column: 1, scope: !6411)
!6418 = distinct !DISubprogram(name: "kmalloc_array", scope: !203, file: !203, line: 629, type: !5275, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6419)
!6419 = !{!6420, !6421, !6422, !6423}
!6420 = !DILocalVariable(name: "n", arg: 1, scope: !6418, file: !203, line: 629, type: !357)
!6421 = !DILocalVariable(name: "size", arg: 2, scope: !6418, file: !203, line: 629, type: !357)
!6422 = !DILocalVariable(name: "flags", arg: 3, scope: !6418, file: !203, line: 629, type: !214)
!6423 = !DILocalVariable(name: "bytes", scope: !6418, file: !203, line: 631, type: !357)
!6424 = !DILocation(line: 629, column: 61, scope: !6418)
!6425 = !DILocation(line: 629, column: 71, scope: !6418)
!6426 = !DILocation(line: 629, column: 83, scope: !6418)
!6427 = !DILocation(line: 631, column: 2, scope: !6418)
!6428 = !DILocation(line: 631, column: 9, scope: !6418)
!6429 = !DILocation(line: 633, column: 6, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6418, file: !203, line: 633, column: 6)
!6431 = !DILocation(line: 633, column: 6, scope: !6418)
!6432 = !DILocation(line: 634, column: 3, scope: !6430)
!6433 = !DILocation(line: 635, column: 27, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6418, file: !203, line: 635, column: 6)
!6435 = !DILocation(line: 635, column: 6, scope: !6434)
!6436 = !DILocation(line: 635, column: 30, scope: !6434)
!6437 = !DILocation(line: 635, column: 54, scope: !6434)
!6438 = !DILocation(line: 635, column: 33, scope: !6434)
!6439 = !DILocation(line: 635, column: 6, scope: !6418)
!6440 = !DILocation(line: 636, column: 18, scope: !6434)
!6441 = !DILocation(line: 636, column: 25, scope: !6434)
!6442 = !DILocation(line: 636, column: 10, scope: !6434)
!6443 = !DILocation(line: 636, column: 3, scope: !6434)
!6444 = !DILocation(line: 637, column: 19, scope: !6418)
!6445 = !DILocation(line: 637, column: 26, scope: !6418)
!6446 = !DILocation(line: 637, column: 9, scope: !6418)
!6447 = !DILocation(line: 637, column: 2, scope: !6418)
!6448 = !DILocation(line: 638, column: 1, scope: !6418)
!6449 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6450, file: !6450, line: 51, type: !6451, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6453)
!6450 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!728, !728}
!6453 = !{!6454}
!6454 = !DILocalVariable(name: "overflow", arg: 1, scope: !6449, file: !6450, line: 51, type: !728)
!6455 = !DILocation(line: 51, column: 60, scope: !6449)
!6456 = !DILocation(line: 53, column: 9, scope: !6449)
!6457 = !DILocation(line: 53, column: 2, scope: !6449)
!6458 = distinct !DISubprogram(name: "kmalloc", scope: !203, file: !203, line: 591, type: !6459, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6461)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!213, !357, !214}
!6461 = !{!6462, !6463, !6464}
!6462 = !DILocalVariable(name: "size", arg: 1, scope: !6458, file: !203, line: 591, type: !357)
!6463 = !DILocalVariable(name: "flags", arg: 2, scope: !6458, file: !203, line: 591, type: !214)
!6464 = !DILocalVariable(name: "index", scope: !6465, file: !203, line: 594, type: !7)
!6465 = distinct !DILexicalBlock(scope: !6466, file: !203, line: 593, column: 42)
!6466 = distinct !DILexicalBlock(scope: !6458, file: !203, line: 593, column: 6)
!6467 = !DILocation(line: 591, column: 61, scope: !6458)
!6468 = !DILocation(line: 591, column: 73, scope: !6458)
!6469 = !DILocation(line: 593, column: 27, scope: !6466)
!6470 = !DILocation(line: 593, column: 6, scope: !6466)
!6471 = !DILocation(line: 593, column: 33, scope: !6466)
!6472 = !DILocation(line: 593, column: 36, scope: !6466)
!6473 = !DILocation(line: 593, column: 6, scope: !6458)
!6474 = !DILocation(line: 594, column: 3, scope: !6465)
!6475 = !DILocation(line: 594, column: 16, scope: !6465)
!6476 = !DILocation(line: 596, column: 7, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6465, file: !203, line: 596, column: 7)
!6478 = !DILocation(line: 596, column: 12, scope: !6477)
!6479 = !DILocation(line: 596, column: 7, scope: !6465)
!6480 = !DILocation(line: 597, column: 25, scope: !6477)
!6481 = !DILocation(line: 597, column: 31, scope: !6477)
!6482 = !DILocation(line: 597, column: 11, scope: !6477)
!6483 = !DILocation(line: 597, column: 4, scope: !6477)
!6484 = !DILocation(line: 599, column: 11, scope: !6465)
!6485 = !DILocation(line: 599, column: 9, scope: !6465)
!6486 = !DILocation(line: 601, column: 33, scope: !6465)
!6487 = !DILocation(line: 601, column: 40, scope: !6465)
!6488 = !DILocation(line: 601, column: 20, scope: !6465)
!6489 = !DILocation(line: 601, column: 5, scope: !6465)
!6490 = !DILocation(line: 601, column: 51, scope: !6465)
!6491 = !DILocation(line: 602, column: 5, scope: !6465)
!6492 = !DILocation(line: 602, column: 12, scope: !6465)
!6493 = !DILocation(line: 600, column: 10, scope: !6465)
!6494 = !DILocation(line: 600, column: 3, scope: !6465)
!6495 = !DILocation(line: 603, column: 2, scope: !6466)
!6496 = !DILocation(line: 604, column: 19, scope: !6458)
!6497 = !DILocation(line: 604, column: 25, scope: !6458)
!6498 = !DILocation(line: 604, column: 9, scope: !6458)
!6499 = !DILocation(line: 604, column: 2, scope: !6458)
!6500 = !DILocation(line: 605, column: 1, scope: !6458)
!6501 = !DISubprogram(name: "__kmalloc", scope: !203, file: !203, line: 488, type: !6459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6502 = !DISubprogram(name: "kmalloc_large", scope: !203, file: !203, line: 531, type: !6459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6503 = distinct !DISubprogram(name: "__kmalloc_index", scope: !203, file: !203, line: 444, type: !6504, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6506)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!7, !357, !728}
!6506 = !{!6507, !6508}
!6507 = !DILocalVariable(name: "size", arg: 1, scope: !6503, file: !203, line: 444, type: !357)
!6508 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6503, file: !203, line: 445, type: !728)
!6509 = !DILocation(line: 444, column: 60, scope: !6503)
!6510 = !DILocation(line: 445, column: 16, scope: !6503)
!6511 = !DILocation(line: 447, column: 7, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 447, column: 6)
!6513 = !DILocation(line: 447, column: 6, scope: !6503)
!6514 = !DILocation(line: 448, column: 3, scope: !6512)
!6515 = !DILocation(line: 450, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 450, column: 6)
!6517 = !DILocation(line: 450, column: 11, scope: !6516)
!6518 = !DILocation(line: 450, column: 6, scope: !6503)
!6519 = !DILocation(line: 451, column: 3, scope: !6516)
!6520 = !DILocation(line: 453, column: 32, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 453, column: 6)
!6522 = !DILocation(line: 453, column: 37, scope: !6521)
!6523 = !DILocation(line: 453, column: 42, scope: !6521)
!6524 = !DILocation(line: 453, column: 45, scope: !6521)
!6525 = !DILocation(line: 453, column: 50, scope: !6521)
!6526 = !DILocation(line: 453, column: 6, scope: !6503)
!6527 = !DILocation(line: 454, column: 3, scope: !6521)
!6528 = !DILocation(line: 455, column: 32, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 455, column: 6)
!6530 = !DILocation(line: 455, column: 37, scope: !6529)
!6531 = !DILocation(line: 455, column: 43, scope: !6529)
!6532 = !DILocation(line: 455, column: 46, scope: !6529)
!6533 = !DILocation(line: 455, column: 51, scope: !6529)
!6534 = !DILocation(line: 455, column: 6, scope: !6503)
!6535 = !DILocation(line: 456, column: 3, scope: !6529)
!6536 = !DILocation(line: 457, column: 6, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 457, column: 6)
!6538 = !DILocation(line: 457, column: 11, scope: !6537)
!6539 = !DILocation(line: 457, column: 6, scope: !6503)
!6540 = !DILocation(line: 457, column: 26, scope: !6537)
!6541 = !DILocation(line: 458, column: 6, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 458, column: 6)
!6543 = !DILocation(line: 458, column: 11, scope: !6542)
!6544 = !DILocation(line: 458, column: 6, scope: !6503)
!6545 = !DILocation(line: 458, column: 26, scope: !6542)
!6546 = !DILocation(line: 459, column: 6, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 459, column: 6)
!6548 = !DILocation(line: 459, column: 11, scope: !6547)
!6549 = !DILocation(line: 459, column: 6, scope: !6503)
!6550 = !DILocation(line: 459, column: 26, scope: !6547)
!6551 = !DILocation(line: 460, column: 6, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 460, column: 6)
!6553 = !DILocation(line: 460, column: 11, scope: !6552)
!6554 = !DILocation(line: 460, column: 6, scope: !6503)
!6555 = !DILocation(line: 460, column: 26, scope: !6552)
!6556 = !DILocation(line: 461, column: 6, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 461, column: 6)
!6558 = !DILocation(line: 461, column: 11, scope: !6557)
!6559 = !DILocation(line: 461, column: 6, scope: !6503)
!6560 = !DILocation(line: 461, column: 26, scope: !6557)
!6561 = !DILocation(line: 462, column: 6, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 462, column: 6)
!6563 = !DILocation(line: 462, column: 11, scope: !6562)
!6564 = !DILocation(line: 462, column: 6, scope: !6503)
!6565 = !DILocation(line: 462, column: 26, scope: !6562)
!6566 = !DILocation(line: 463, column: 6, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 463, column: 6)
!6568 = !DILocation(line: 463, column: 11, scope: !6567)
!6569 = !DILocation(line: 463, column: 6, scope: !6503)
!6570 = !DILocation(line: 463, column: 26, scope: !6567)
!6571 = !DILocation(line: 464, column: 6, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 464, column: 6)
!6573 = !DILocation(line: 464, column: 11, scope: !6572)
!6574 = !DILocation(line: 464, column: 6, scope: !6503)
!6575 = !DILocation(line: 464, column: 26, scope: !6572)
!6576 = !DILocation(line: 465, column: 6, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 465, column: 6)
!6578 = !DILocation(line: 465, column: 11, scope: !6577)
!6579 = !DILocation(line: 465, column: 6, scope: !6503)
!6580 = !DILocation(line: 465, column: 26, scope: !6577)
!6581 = !DILocation(line: 466, column: 6, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 466, column: 6)
!6583 = !DILocation(line: 466, column: 11, scope: !6582)
!6584 = !DILocation(line: 466, column: 6, scope: !6503)
!6585 = !DILocation(line: 466, column: 26, scope: !6582)
!6586 = !DILocation(line: 467, column: 6, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 467, column: 6)
!6588 = !DILocation(line: 467, column: 11, scope: !6587)
!6589 = !DILocation(line: 467, column: 6, scope: !6503)
!6590 = !DILocation(line: 467, column: 26, scope: !6587)
!6591 = !DILocation(line: 468, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 468, column: 6)
!6593 = !DILocation(line: 468, column: 11, scope: !6592)
!6594 = !DILocation(line: 468, column: 6, scope: !6503)
!6595 = !DILocation(line: 468, column: 26, scope: !6592)
!6596 = !DILocation(line: 469, column: 6, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 469, column: 6)
!6598 = !DILocation(line: 469, column: 11, scope: !6597)
!6599 = !DILocation(line: 469, column: 6, scope: !6503)
!6600 = !DILocation(line: 469, column: 26, scope: !6597)
!6601 = !DILocation(line: 470, column: 6, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 470, column: 6)
!6603 = !DILocation(line: 470, column: 11, scope: !6602)
!6604 = !DILocation(line: 470, column: 6, scope: !6503)
!6605 = !DILocation(line: 470, column: 26, scope: !6602)
!6606 = !DILocation(line: 471, column: 6, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 471, column: 6)
!6608 = !DILocation(line: 471, column: 11, scope: !6607)
!6609 = !DILocation(line: 471, column: 6, scope: !6503)
!6610 = !DILocation(line: 471, column: 26, scope: !6607)
!6611 = !DILocation(line: 472, column: 6, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 472, column: 6)
!6613 = !DILocation(line: 472, column: 11, scope: !6612)
!6614 = !DILocation(line: 472, column: 6, scope: !6503)
!6615 = !DILocation(line: 472, column: 26, scope: !6612)
!6616 = !DILocation(line: 473, column: 6, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 473, column: 6)
!6618 = !DILocation(line: 473, column: 11, scope: !6617)
!6619 = !DILocation(line: 473, column: 6, scope: !6503)
!6620 = !DILocation(line: 473, column: 26, scope: !6617)
!6621 = !DILocation(line: 474, column: 6, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 474, column: 6)
!6623 = !DILocation(line: 474, column: 11, scope: !6622)
!6624 = !DILocation(line: 474, column: 6, scope: !6503)
!6625 = !DILocation(line: 474, column: 27, scope: !6622)
!6626 = !DILocation(line: 475, column: 6, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 475, column: 6)
!6628 = !DILocation(line: 475, column: 11, scope: !6627)
!6629 = !DILocation(line: 475, column: 6, scope: !6503)
!6630 = !DILocation(line: 475, column: 32, scope: !6627)
!6631 = !DILocation(line: 477, column: 50, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6503, file: !203, line: 477, column: 6)
!6633 = !DILocation(line: 477, column: 6, scope: !6503)
!6634 = !DILocation(line: 478, column: 3, scope: !6632)
!6635 = !DILocation(line: 478, column: 3, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6637, file: !203, line: 478, column: 3)
!6637 = distinct !DILexicalBlock(scope: !6632, file: !203, line: 478, column: 3)
!6638 = !{i32 -2143514637}
!6639 = !DILocation(line: 478, column: 3, scope: !6637)
!6640 = !DILocation(line: 480, column: 3, scope: !6632)
!6641 = !DILocation(line: 480, column: 3, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6632, file: !203, line: 480, column: 3)
!6643 = !DILocation(line: 480, column: 3, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6642, file: !203, line: 480, column: 3)
!6645 = !DILocation(line: 480, column: 3, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6642, file: !203, line: 480, column: 3)
!6647 = !{i64 2151452862, i64 2151452891, i64 2151452937, i64 2151452995, i64 2151453049, i64 2151453103, i64 2151453158, i64 2151453189}
!6648 = !DILocation(line: 483, column: 2, scope: !6503)
!6649 = !DILocation(line: 484, column: 1, scope: !6503)
!6650 = !DISubprogram(name: "kmalloc_trace", scope: !203, file: !203, line: 525, type: !6651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6651 = !DISubroutineType(types: !6652)
!6652 = !{!213, !6653, !214, !357}
!6653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6654, size: 64)
!6654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6655, line: 11, flags: DIFlagFwdDecl)
!6655 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6656 = distinct !DISubprogram(name: "kmalloc_type", scope: !203, file: !203, line: 401, type: !6657, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!202, !214, !360}
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "flags", arg: 1, scope: !6656, file: !203, line: 401, type: !214)
!6661 = !DILocalVariable(name: "caller", arg: 2, scope: !6656, file: !203, line: 401, type: !360)
!6662 = !DILocation(line: 401, column: 67, scope: !6656)
!6663 = !DILocation(line: 401, column: 88, scope: !6656)
!6664 = !DILocation(line: 407, column: 6, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6656, file: !203, line: 407, column: 6)
!6666 = !DILocation(line: 407, column: 6, scope: !6656)
!6667 = !DILocation(line: 413, column: 3, scope: !6665)
!6668 = !DILocation(line: 423, column: 38, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6656, file: !203, line: 423, column: 6)
!6670 = !DILocation(line: 423, column: 44, scope: !6669)
!6671 = !DILocation(line: 423, column: 6, scope: !6656)
!6672 = !DILocation(line: 424, column: 3, scope: !6669)
!6673 = !DILocation(line: 426, column: 3, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6656, file: !203, line: 425, column: 6)
!6675 = !DILocation(line: 429, column: 1, scope: !6656)
!6676 = !DISubprogram(name: "__compiletime_assert_117", scope: !203, file: !203, line: 478, type: !1009, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6677 = distinct !DISubprogram(name: "ptp_pin_name2index", scope: !3, file: !3, line: 379, type: !6678, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6680)
!6678 = !DISubroutineType(types: !6679)
!6679 = !{!109, !4686, !224}
!6680 = !{!6681, !6682, !6683}
!6681 = !DILocalVariable(name: "ptp", arg: 1, scope: !6677, file: !3, line: 379, type: !4686)
!6682 = !DILocalVariable(name: "name", arg: 2, scope: !6677, file: !3, line: 379, type: !224)
!6683 = !DILocalVariable(name: "i", scope: !6677, file: !3, line: 381, type: !109)
!6684 = !DILocation(line: 379, column: 49, scope: !6677)
!6685 = !DILocation(line: 379, column: 66, scope: !6677)
!6686 = !DILocation(line: 381, column: 2, scope: !6677)
!6687 = !DILocation(line: 381, column: 6, scope: !6677)
!6688 = !DILocation(line: 382, column: 9, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6677, file: !3, line: 382, column: 2)
!6690 = !DILocation(line: 382, column: 7, scope: !6689)
!6691 = !DILocation(line: 382, column: 14, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 382, column: 2)
!6693 = !DILocation(line: 382, column: 18, scope: !6692)
!6694 = !DILocation(line: 382, column: 23, scope: !6692)
!6695 = !DILocation(line: 382, column: 29, scope: !6692)
!6696 = !DILocation(line: 382, column: 16, scope: !6692)
!6697 = !DILocation(line: 382, column: 2, scope: !6689)
!6698 = !DILocation(line: 383, column: 15, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 383, column: 7)
!6700 = distinct !DILexicalBlock(scope: !6692, file: !3, line: 382, column: 42)
!6701 = !DILocation(line: 383, column: 20, scope: !6699)
!6702 = !DILocation(line: 383, column: 26, scope: !6699)
!6703 = !DILocation(line: 383, column: 37, scope: !6699)
!6704 = !DILocation(line: 383, column: 40, scope: !6699)
!6705 = !DILocation(line: 383, column: 46, scope: !6699)
!6706 = !DILocation(line: 383, column: 8, scope: !6699)
!6707 = !DILocation(line: 383, column: 7, scope: !6700)
!6708 = !DILocation(line: 384, column: 11, scope: !6699)
!6709 = !DILocation(line: 384, column: 4, scope: !6699)
!6710 = !DILocation(line: 385, column: 2, scope: !6700)
!6711 = !DILocation(line: 382, column: 38, scope: !6692)
!6712 = !DILocation(line: 382, column: 2, scope: !6692)
!6713 = distinct !{!6713, !6697, !6714, !5248, !5249}
!6714 = !DILocation(line: 385, column: 2, scope: !6689)
!6715 = !DILocation(line: 386, column: 2, scope: !6677)
!6716 = !DILocation(line: 387, column: 1, scope: !6677)
!6717 = !DISubprogram(name: "strcmp", scope: !6718, file: !6718, line: 88, type: !6719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6718 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6719 = !DISubroutineType(types: !6720)
!6720 = !{!109, !224, !224}
!6721 = !DISubprogram(name: "ptp_set_pinfunc", scope: !4683, file: !4683, line: 121, type: !6722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6722 = !DISubroutineType(types: !6723)
!6723 = !{!109, !4686, !7, !191, !7}
