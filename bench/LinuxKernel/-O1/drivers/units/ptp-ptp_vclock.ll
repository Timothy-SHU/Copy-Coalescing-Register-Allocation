; ModuleID = 'drivers/ptp/ptp_vclock.c'
source_filename = "drivers/ptp/ptp_vclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ptp_get_vclocks_index: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ptp_get_vclocks_index ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ptp_convert_timestamp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ptp_convert_timestamp ; .previous"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.lock_class_key = type {}
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ptp_vclock = type { ptr, %struct.ptp_clock_info, ptr, %struct.hlist_node, %struct.cyclecounter, %struct.timecounter, %struct.mutex }
%struct.hlist_node = type { ptr, ptr }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i64, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.system_device_crosststamp = type { i64, i64, i64 }

@ptp_vclock_info = internal constant %struct.ptp_clock_info { ptr null, [32 x i8] c"ptp virtual clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 500000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @ptp_vclock_adjfine, ptr null, ptr null, ptr @ptp_vclock_adjtime, ptr null, ptr null, ptr null, ptr @ptp_vclock_settime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ptp_vclock_refresh }, align 8, !dbg !0
@ptp_vclock_cc = internal constant %struct.cyclecounter { ptr @ptp_vclock_read, i64 4294967295, i32 -2147483648, i32 31 }, align 8, !dbg !5037
@.str = private unnamed_addr constant [11 x i8] c"ptp%d_virt\00", align 1, !dbg !5008
@ptp_vclock_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5013
@.str.1 = private unnamed_addr constant [14 x i8] c"&vclock->lock\00", align 1, !dbg !5021
@.str.2 = private unnamed_addr constant [6 x i8] c"ptp%d\00", align 1, !dbg !5026
@ptp_class = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_ptp_get_vclocks_index338 = internal global ptr @ptp_get_vclocks_index, section ".discard.addressable", align 8, !dbg !5028
@vclock_hash = internal global [256 x %struct.hlist_head] zeroinitializer, section ".data..read_mostly", align 16, !dbg !5041
@__UNIQUE_ID___addressable_ptp_convert_timestamp343 = internal global ptr @ptp_convert_timestamp, section ".discard.addressable", align 8, !dbg !5030
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5032
@vclock_hash_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !5039
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_ptp_get_vclocks_index338, ptr @__UNIQUE_ID___addressable_ptp_convert_timestamp343], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ptp_vclock_register(ptr noundef %pclock) #0 align 16 !dbg !5015 {
entry:
  %retval = alloca ptr, align 8
  %pclock.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pclock, ptr %pclock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pclock.addr, metadata !5019, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5020, metadata !DIExpression()), !dbg !5058
  %call = call noalias ptr @kzalloc(i64 noundef 312, i32 noundef 3264) #16, !dbg !5059
  store ptr %call, ptr %vclock, align 8, !dbg !5060
  %0 = load ptr, ptr %vclock, align 8, !dbg !5061
  %tobool = icmp ne ptr %0, null, !dbg !5061
  br i1 %tobool, label %if.end, label %if.then, !dbg !5063

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5064

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pclock.addr, align 8, !dbg !5065
  %2 = load ptr, ptr %vclock, align 8, !dbg !5066
  %pclock1 = getelementptr inbounds %struct.ptp_vclock, ptr %2, i32 0, i32 0, !dbg !5067
  store ptr %1, ptr %pclock1, align 8, !dbg !5068
  %3 = load ptr, ptr %vclock, align 8, !dbg !5069
  %info = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 1, !dbg !5070
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %info, ptr align 8 @ptp_vclock_info, i64 184, i1 false), !dbg !5071
  %4 = load ptr, ptr %pclock.addr, align 8, !dbg !5072
  %info2 = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 2, !dbg !5074
  %5 = load ptr, ptr %info2, align 8, !dbg !5074
  %getcyclesx64 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 18, !dbg !5075
  %6 = load ptr, ptr %getcyclesx64, align 8, !dbg !5075
  %tobool3 = icmp ne ptr %6, null, !dbg !5072
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5076

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %vclock, align 8, !dbg !5077
  %info5 = getelementptr inbounds %struct.ptp_vclock, ptr %7, i32 0, i32 1, !dbg !5078
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, ptr %info5, i32 0, i32 14, !dbg !5079
  store ptr @ptp_vclock_gettimex, ptr %gettimex64, align 8, !dbg !5080
  br label %if.end7, !dbg !5077

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %vclock, align 8, !dbg !5081
  %info6 = getelementptr inbounds %struct.ptp_vclock, ptr %8, i32 0, i32 1, !dbg !5082
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, ptr %info6, i32 0, i32 13, !dbg !5083
  store ptr @ptp_vclock_gettime, ptr %gettime64, align 8, !dbg !5084
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %9 = load ptr, ptr %pclock.addr, align 8, !dbg !5085
  %info8 = getelementptr inbounds %struct.ptp_clock, ptr %9, i32 0, i32 2, !dbg !5087
  %10 = load ptr, ptr %info8, align 8, !dbg !5087
  %getcrosscycles = getelementptr inbounds %struct.ptp_clock_info, ptr %10, i32 0, i32 19, !dbg !5088
  %11 = load ptr, ptr %getcrosscycles, align 8, !dbg !5088
  %tobool9 = icmp ne ptr %11, null, !dbg !5085
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5089

if.then10:                                        ; preds = %if.end7
  %12 = load ptr, ptr %vclock, align 8, !dbg !5090
  %info11 = getelementptr inbounds %struct.ptp_vclock, ptr %12, i32 0, i32 1, !dbg !5091
  %getcrosststamp = getelementptr inbounds %struct.ptp_clock_info, ptr %info11, i32 0, i32 15, !dbg !5092
  store ptr @ptp_vclock_getcrosststamp, ptr %getcrosststamp, align 8, !dbg !5093
  br label %if.end12, !dbg !5090

if.end12:                                         ; preds = %if.then10, %if.end7
  %13 = load ptr, ptr %vclock, align 8, !dbg !5094
  %cc = getelementptr inbounds %struct.ptp_vclock, ptr %13, i32 0, i32 4, !dbg !5095
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cc, ptr align 8 @ptp_vclock_cc, i64 24, i1 false), !dbg !5096
  %14 = load ptr, ptr %vclock, align 8, !dbg !5097
  %info13 = getelementptr inbounds %struct.ptp_vclock, ptr %14, i32 0, i32 1, !dbg !5098
  %name = getelementptr inbounds %struct.ptp_clock_info, ptr %info13, i32 0, i32 1, !dbg !5099
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !5097
  %15 = load ptr, ptr %pclock.addr, align 8, !dbg !5100
  %index = getelementptr inbounds %struct.ptp_clock, ptr %15, i32 0, i32 4, !dbg !5101
  %16 = load i32, ptr %index, align 4, !dbg !5101
  %call14 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str, i32 noundef %16) #17, !dbg !5102
  %17 = load ptr, ptr %vclock, align 8, !dbg !5103
  %vclock_hash_node = getelementptr inbounds %struct.ptp_vclock, ptr %17, i32 0, i32 3, !dbg !5104
  call void @INIT_HLIST_NODE(ptr noundef %vclock_hash_node) #17, !dbg !5105
  br label %do.body, !dbg !5106

do.body:                                          ; preds = %if.end12
  %18 = load ptr, ptr %vclock, align 8, !dbg !5107
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %18, i32 0, i32 6, !dbg !5107
  call void @__mutex_init(ptr noundef %lock, ptr noundef @.str.1, ptr noundef @ptp_vclock_register.__key) #17, !dbg !5107
  br label %do.cond, !dbg !5107

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5107

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %vclock, align 8, !dbg !5109
  %info15 = getelementptr inbounds %struct.ptp_vclock, ptr %19, i32 0, i32 1, !dbg !5110
  %20 = load ptr, ptr %pclock.addr, align 8, !dbg !5111
  %dev = getelementptr inbounds %struct.ptp_clock, ptr %20, i32 0, i32 1, !dbg !5112
  %call16 = call ptr @ptp_clock_register(ptr noundef %info15, ptr noundef %dev) #17, !dbg !5113
  %21 = load ptr, ptr %vclock, align 8, !dbg !5114
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %21, i32 0, i32 2, !dbg !5115
  store ptr %call16, ptr %clock, align 8, !dbg !5116
  %22 = load ptr, ptr %vclock, align 8, !dbg !5117
  %clock17 = getelementptr inbounds %struct.ptp_vclock, ptr %22, i32 0, i32 2, !dbg !5119
  %23 = load ptr, ptr %clock17, align 8, !dbg !5119
  %call18 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %23) #17, !dbg !5120
  br i1 %call18, label %if.then19, label %if.end20, !dbg !5121

if.then19:                                        ; preds = %do.end
  %24 = load ptr, ptr %vclock, align 8, !dbg !5122
  call void @kfree(ptr noundef %24) #17, !dbg !5124
  store ptr null, ptr %retval, align 8, !dbg !5125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5125

if.end20:                                         ; preds = %do.end
  %25 = load ptr, ptr %vclock, align 8, !dbg !5126
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %25, i32 0, i32 5, !dbg !5127
  %26 = load ptr, ptr %vclock, align 8, !dbg !5128
  %cc21 = getelementptr inbounds %struct.ptp_vclock, ptr %26, i32 0, i32 4, !dbg !5129
  call void @timecounter_init(ptr noundef %tc, ptr noundef %cc21, i64 noundef 0) #17, !dbg !5130
  %27 = load ptr, ptr %vclock, align 8, !dbg !5131
  %clock22 = getelementptr inbounds %struct.ptp_vclock, ptr %27, i32 0, i32 2, !dbg !5132
  %28 = load ptr, ptr %clock22, align 8, !dbg !5132
  %call23 = call i32 @ptp_schedule_worker(ptr noundef %28, i64 noundef 2000) #17, !dbg !5133
  %29 = load ptr, ptr %vclock, align 8, !dbg !5134
  call void @ptp_vclock_hash_add(ptr noundef %29) #17, !dbg !5135
  %30 = load ptr, ptr %vclock, align 8, !dbg !5136
  store ptr %30, ptr %retval, align 8, !dbg !5137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5137

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5138
  %31 = load ptr, ptr %retval, align 8, !dbg !5138
  ret ptr %31, !dbg !5138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5139 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5143, metadata !DIExpression()), !dbg !5145
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5144, metadata !DIExpression()), !dbg !5146
  %0 = load i64, ptr %size.addr, align 8, !dbg !5147
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5148
  %or = or i32 %1, 256, !dbg !5149
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !5150
  ret ptr %call, !dbg !5151
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_vclock_gettimex(ptr noundef %ptp, ptr noundef %ts, ptr noundef %sts) #0 align 16 !dbg !5152 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %sts.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pptp = alloca ptr, align 8
  %pts = alloca %struct.timespec64, align 8
  %err = alloca i32, align 4
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca %struct.timespec64, align 8
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5154, metadata !DIExpression()), !dbg !5164
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5155, metadata !DIExpression()), !dbg !5165
  store ptr %sts, ptr %sts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sts.addr, metadata !5156, metadata !DIExpression()), !dbg !5166
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5167
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5157, metadata !DIExpression()), !dbg !5168
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5169
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5158, metadata !DIExpression()), !dbg !5169
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5169
  store ptr %0, ptr %__mptr, align 8, !dbg !5169
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5169
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5169
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5170
  %2 = load ptr, ptr %tmp, align 8, !dbg !5169
  store ptr %2, ptr %vclock, align 8, !dbg !5168
  call void @llvm.lifetime.start.p0(i64 8, ptr %pptp) #15, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %pptp, metadata !5160, metadata !DIExpression()), !dbg !5172
  %3 = load ptr, ptr %vclock, align 8, !dbg !5173
  %pclock = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 0, !dbg !5174
  %4 = load ptr, ptr %pclock, align 8, !dbg !5174
  store ptr %4, ptr %pptp, align 8, !dbg !5172
  call void @llvm.lifetime.start.p0(i64 16, ptr %pts) #15, !dbg !5175
  call void @llvm.dbg.declare(metadata ptr %pts, metadata !5161, metadata !DIExpression()), !dbg !5176
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5177
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5162, metadata !DIExpression()), !dbg !5178
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !5163, metadata !DIExpression()), !dbg !5180
  %5 = load ptr, ptr %pptp, align 8, !dbg !5181
  %info = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2, !dbg !5182
  %6 = load ptr, ptr %info, align 8, !dbg !5182
  %getcyclesx64 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 18, !dbg !5183
  %7 = load ptr, ptr %getcyclesx64, align 8, !dbg !5183
  %8 = load ptr, ptr %pptp, align 8, !dbg !5184
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 2, !dbg !5185
  %9 = load ptr, ptr %info1, align 8, !dbg !5185
  %10 = load ptr, ptr %sts.addr, align 8, !dbg !5186
  %call = call i32 %7(ptr noundef %9, ptr noundef %pts, ptr noundef %10) #17, !dbg !5181
  store i32 %call, ptr %err, align 4, !dbg !5187
  %11 = load i32, ptr %err, align 4, !dbg !5188
  %tobool = icmp ne i32 %11, 0, !dbg !5188
  br i1 %tobool, label %if.then, label %if.end, !dbg !5190

if.then:                                          ; preds = %entry
  %12 = load i32, ptr %err, align 4, !dbg !5191
  store i32 %12, ptr %retval, align 4, !dbg !5192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5192

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %vclock, align 8, !dbg !5193
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %13, i32 0, i32 6, !dbg !5195
  %call2 = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5196
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5196
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5197

if.then4:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4, !dbg !5198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5198

if.end5:                                          ; preds = %if.end
  %14 = load ptr, ptr %vclock, align 8, !dbg !5199
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %14, i32 0, i32 5, !dbg !5200
  %call6 = call i64 @timespec64_to_ns(ptr noundef %pts) #17, !dbg !5201
  %call7 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %call6) #17, !dbg !5202
  store i64 %call7, ptr %ns, align 8, !dbg !5203
  %15 = load ptr, ptr %vclock, align 8, !dbg !5204
  %lock8 = getelementptr inbounds %struct.ptp_vclock, ptr %15, i32 0, i32 6, !dbg !5205
  call void @mutex_unlock(ptr noundef %lock8) #17, !dbg !5206
  %16 = load ptr, ptr %ts.addr, align 8, !dbg !5207
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp9) #15, !dbg !5208
  %17 = load i64, ptr %ns, align 8, !dbg !5209
  %call10 = call { i64, i64 } @ns_to_timespec64(i64 noundef %17) #17, !dbg !5208
  %18 = getelementptr inbounds { i64, i64 }, ptr %tmp9, i32 0, i32 0, !dbg !5208
  %19 = extractvalue { i64, i64 } %call10, 0, !dbg !5208
  store i64 %19, ptr %18, align 8, !dbg !5208
  %20 = getelementptr inbounds { i64, i64 }, ptr %tmp9, i32 0, i32 1, !dbg !5208
  %21 = extractvalue { i64, i64 } %call10, 1, !dbg !5208
  store i64 %21, ptr %20, align 8, !dbg !5208
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %tmp9, i64 16, i1 false), !dbg !5208
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp9) #15, !dbg !5208
  store i32 0, ptr %retval, align 4, !dbg !5210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5210

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 16, ptr %pts) #15, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 8, ptr %pptp) #15, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5211
  %22 = load i32, ptr %retval, align 4, !dbg !5211
  ret i32 %22, !dbg !5211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_vclock_gettime(ptr noundef %ptp, ptr noundef %ts) #0 align 16 !dbg !5212 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp3 = alloca %struct.timespec64, align 8
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5214, metadata !DIExpression()), !dbg !5220
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5215, metadata !DIExpression()), !dbg !5221
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5222
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5216, metadata !DIExpression()), !dbg !5223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5217, metadata !DIExpression()), !dbg !5224
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5224
  store ptr %0, ptr %__mptr, align 8, !dbg !5224
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5224
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5224
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5225
  %2 = load ptr, ptr %tmp, align 8, !dbg !5224
  store ptr %2, ptr %vclock, align 8, !dbg !5223
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !5219, metadata !DIExpression()), !dbg !5227
  %3 = load ptr, ptr %vclock, align 8, !dbg !5228
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 6, !dbg !5230
  %call = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5231
  %tobool = icmp ne i32 %call, 0, !dbg !5231
  br i1 %tobool, label %if.then, label %if.end, !dbg !5232

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4, !dbg !5233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5233

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vclock, align 8, !dbg !5234
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %4, i32 0, i32 5, !dbg !5235
  %call1 = call i64 @timecounter_read(ptr noundef %tc) #17, !dbg !5236
  store i64 %call1, ptr %ns, align 8, !dbg !5237
  %5 = load ptr, ptr %vclock, align 8, !dbg !5238
  %lock2 = getelementptr inbounds %struct.ptp_vclock, ptr %5, i32 0, i32 6, !dbg !5239
  call void @mutex_unlock(ptr noundef %lock2) #17, !dbg !5240
  %6 = load ptr, ptr %ts.addr, align 8, !dbg !5241
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp3) #15, !dbg !5242
  %7 = load i64, ptr %ns, align 8, !dbg !5243
  %call4 = call { i64, i64 } @ns_to_timespec64(i64 noundef %7) #17, !dbg !5242
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp3, i32 0, i32 0, !dbg !5242
  %9 = extractvalue { i64, i64 } %call4, 0, !dbg !5242
  store i64 %9, ptr %8, align 8, !dbg !5242
  %10 = getelementptr inbounds { i64, i64 }, ptr %tmp3, i32 0, i32 1, !dbg !5242
  %11 = extractvalue { i64, i64 } %call4, 1, !dbg !5242
  store i64 %11, ptr %10, align 8, !dbg !5242
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %tmp3, i64 16, i1 false), !dbg !5242
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp3) #15, !dbg !5242
  store i32 0, ptr %retval, align 4, !dbg !5244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5244

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5245
  %12 = load i32, ptr %retval, align 4, !dbg !5245
  ret i32 %12, !dbg !5245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_vclock_getcrosststamp(ptr noundef %ptp, ptr noundef %xtstamp) #0 align 16 !dbg !5246 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %xtstamp.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pptp = alloca ptr, align 8
  %err = alloca i32, align 4
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5248, metadata !DIExpression()), !dbg !5256
  store ptr %xtstamp, ptr %xtstamp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xtstamp.addr, metadata !5249, metadata !DIExpression()), !dbg !5257
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5250, metadata !DIExpression()), !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5251, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5260
  store ptr %0, ptr %__mptr, align 8, !dbg !5260
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5260
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5260
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5261
  %2 = load ptr, ptr %tmp, align 8, !dbg !5260
  store ptr %2, ptr %vclock, align 8, !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %pptp) #15, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %pptp, metadata !5253, metadata !DIExpression()), !dbg !5263
  %3 = load ptr, ptr %vclock, align 8, !dbg !5264
  %pclock = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 0, !dbg !5265
  %4 = load ptr, ptr %pclock, align 8, !dbg !5265
  store ptr %4, ptr %pptp, align 8, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5254, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !5255, metadata !DIExpression()), !dbg !5269
  %5 = load ptr, ptr %pptp, align 8, !dbg !5270
  %info = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2, !dbg !5271
  %6 = load ptr, ptr %info, align 8, !dbg !5271
  %getcrosscycles = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 19, !dbg !5272
  %7 = load ptr, ptr %getcrosscycles, align 8, !dbg !5272
  %8 = load ptr, ptr %pptp, align 8, !dbg !5273
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 2, !dbg !5274
  %9 = load ptr, ptr %info1, align 8, !dbg !5274
  %10 = load ptr, ptr %xtstamp.addr, align 8, !dbg !5275
  %call = call i32 %7(ptr noundef %9, ptr noundef %10) #17, !dbg !5270
  store i32 %call, ptr %err, align 4, !dbg !5276
  %11 = load i32, ptr %err, align 4, !dbg !5277
  %tobool = icmp ne i32 %11, 0, !dbg !5277
  br i1 %tobool, label %if.then, label %if.end, !dbg !5279

if.then:                                          ; preds = %entry
  %12 = load i32, ptr %err, align 4, !dbg !5280
  store i32 %12, ptr %retval, align 4, !dbg !5281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5281

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %vclock, align 8, !dbg !5282
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %13, i32 0, i32 6, !dbg !5284
  %call2 = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5285
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5285
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5286

if.then4:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4, !dbg !5287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5287

if.end5:                                          ; preds = %if.end
  %14 = load ptr, ptr %vclock, align 8, !dbg !5288
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %14, i32 0, i32 5, !dbg !5289
  %15 = load ptr, ptr %xtstamp.addr, align 8, !dbg !5290
  %device = getelementptr inbounds %struct.system_device_crosststamp, ptr %15, i32 0, i32 0, !dbg !5291
  %16 = load i64, ptr %device, align 8, !dbg !5291
  %call6 = call i64 @ktime_to_ns(i64 noundef %16) #17, !dbg !5292
  %call7 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %call6) #17, !dbg !5293
  store i64 %call7, ptr %ns, align 8, !dbg !5294
  %17 = load ptr, ptr %vclock, align 8, !dbg !5295
  %lock8 = getelementptr inbounds %struct.ptp_vclock, ptr %17, i32 0, i32 6, !dbg !5296
  call void @mutex_unlock(ptr noundef %lock8) #17, !dbg !5297
  %18 = load i64, ptr %ns, align 8, !dbg !5298
  %call9 = call i64 @ns_to_ktime(i64 noundef %18) #17, !dbg !5299
  %19 = load ptr, ptr %xtstamp.addr, align 8, !dbg !5300
  %device10 = getelementptr inbounds %struct.system_device_crosststamp, ptr %19, i32 0, i32 0, !dbg !5301
  store i64 %call9, ptr %device10, align 8, !dbg !5302
  store i32 0, ptr %retval, align 4, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %pptp) #15, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5304
  %20 = load i32, ptr %retval, align 4, !dbg !5304
  ret i32 %20, !dbg !5304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5305 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_HLIST_NODE(ptr noundef %h) #6 align 16 !dbg !5309 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5316
  %next = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !5317
  store ptr null, ptr %next, align 8, !dbg !5318
  %1 = load ptr, ptr %h.addr, align 8, !dbg !5319
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !5320
  store ptr null, ptr %pprev, align 8, !dbg !5321
  ret void, !dbg !5322
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5323 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5328 dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #6 align 16 !dbg !5331 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5338
  %tobool = icmp ne ptr %0, null, !dbg !5338
  %lnot = xor i1 %tobool, true, !dbg !5338
  %lnot1 = xor i1 %lnot, true, !dbg !5338
  %lnot2 = xor i1 %lnot1, true, !dbg !5338
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5338
  %conv = sext i32 %lnot.ext to i64, !dbg !5338
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5338
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5338
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5339

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5340
  %2 = ptrtoint ptr %1 to i64, !dbg !5340
  %3 = inttoptr i64 %2 to ptr, !dbg !5340
  %4 = ptrtoint ptr %3 to i64, !dbg !5340
  %cmp = icmp uge i64 %4, -4095, !dbg !5340
  %lnot5 = xor i1 %cmp, true, !dbg !5340
  %lnot7 = xor i1 %lnot5, true, !dbg !5340
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5340
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5340
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5340
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !5339
  br label %lor.end, !dbg !5339

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !5341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5342 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5345 dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5349 dso_local i32 @ptp_schedule_worker(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ptp_vclock_hash_add(ptr noundef %vclock) #0 align 16 !dbg !5352 {
entry:
  %vclock.addr = alloca ptr, align 8
  store ptr %vclock, ptr %vclock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vclock.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  call void @spin_lock(ptr noundef @vclock_hash_lock) #17, !dbg !5358
  %0 = load ptr, ptr %vclock.addr, align 8, !dbg !5359
  %vclock_hash_node = getelementptr inbounds %struct.ptp_vclock, ptr %0, i32 0, i32 3, !dbg !5360
  %1 = load ptr, ptr %vclock.addr, align 8, !dbg !5361
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %1, i32 0, i32 2, !dbg !5362
  %2 = load ptr, ptr %clock, align 8, !dbg !5362
  %index = getelementptr inbounds %struct.ptp_clock, ptr %2, i32 0, i32 4, !dbg !5363
  %3 = load i32, ptr %index, align 4, !dbg !5363
  %conv = sext i32 %3 to i64, !dbg !5361
  %rem = urem i64 %conv, 256, !dbg !5364
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @vclock_hash, i64 0, i64 %rem, !dbg !5365
  call void @hlist_add_head_rcu(ptr noundef %vclock_hash_node, ptr noundef %arrayidx) #17, !dbg !5366
  call void @spin_unlock(ptr noundef @vclock_hash_lock) #17, !dbg !5367
  ret void, !dbg !5368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ptp_vclock_unregister(ptr noundef %vclock) #0 align 16 !dbg !5369 {
entry:
  %vclock.addr = alloca ptr, align 8
  store ptr %vclock, ptr %vclock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vclock.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  %0 = load ptr, ptr %vclock.addr, align 8, !dbg !5373
  call void @ptp_vclock_hash_del(ptr noundef %0) #17, !dbg !5374
  %1 = load ptr, ptr %vclock.addr, align 8, !dbg !5375
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %1, i32 0, i32 2, !dbg !5376
  %2 = load ptr, ptr %clock, align 8, !dbg !5376
  %call = call i32 @ptp_clock_unregister(ptr noundef %2) #17, !dbg !5377
  %3 = load ptr, ptr %vclock.addr, align 8, !dbg !5378
  call void @kfree(ptr noundef %3) #17, !dbg !5379
  ret void, !dbg !5380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ptp_vclock_hash_del(ptr noundef %vclock) #0 align 16 !dbg !5381 {
entry:
  %vclock.addr = alloca ptr, align 8
  store ptr %vclock, ptr %vclock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vclock.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  call void @spin_lock(ptr noundef @vclock_hash_lock) #17, !dbg !5385
  %0 = load ptr, ptr %vclock.addr, align 8, !dbg !5386
  %vclock_hash_node = getelementptr inbounds %struct.ptp_vclock, ptr %0, i32 0, i32 3, !dbg !5387
  call void @hlist_del_init_rcu(ptr noundef %vclock_hash_node) #17, !dbg !5388
  call void @spin_unlock(ptr noundef @vclock_hash_lock) #17, !dbg !5389
  call void @synchronize_rcu() #17, !dbg !5390
  ret void, !dbg !5391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5392 dso_local i32 @ptp_clock_unregister(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ptp_get_vclocks_index(i32 noundef %pclock_index, ptr noundef %vclock_index) #0 align 16 !dbg !5395 {
entry:
  %retval = alloca i32, align 4
  %pclock_index.addr = alloca i32, align 4
  %vclock_index.addr = alloca ptr, align 8
  %name = alloca [32 x i8], align 16
  %ptp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %num = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pclock_index, ptr %pclock_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pclock_index.addr, metadata !5400, metadata !DIExpression()), !dbg !5407
  store ptr %vclock_index, ptr %vclock_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vclock_index.addr, metadata !5401, metadata !DIExpression()), !dbg !5408
  call void @llvm.lifetime.start.p0(i64 32, ptr %name) #15, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5402, metadata !DIExpression()), !dbg !5410
  call void @llvm.memset.p0.i64(ptr align 16 %name, i8 0, i64 32, i1 false), !dbg !5410
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #15, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !5403, metadata !DIExpression()), !dbg !5412
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5404, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #15, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %num, metadata !5405, metadata !DIExpression()), !dbg !5416
  store i32 0, ptr %num, align 4, !dbg !5416
  %0 = load i32, ptr %pclock_index.addr, align 4, !dbg !5417
  %cmp = icmp slt i32 %0, 0, !dbg !5419
  br i1 %cmp, label %if.then, label %if.end, !dbg !5420

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %num, align 4, !dbg !5421
  store i32 %1, ptr %retval, align 4, !dbg !5422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5422

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !5423
  %2 = load i32, ptr %pclock_index.addr, align 4, !dbg !5424
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str.2, i32 noundef %2) #17, !dbg !5425
  %3 = load ptr, ptr @ptp_class, align 8, !dbg !5426
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !5427
  %call2 = call ptr @class_find_device_by_name(ptr noundef %3, ptr noundef %arraydecay1) #17, !dbg !5428
  store ptr %call2, ptr %dev, align 8, !dbg !5429
  %4 = load ptr, ptr %dev, align 8, !dbg !5430
  %tobool = icmp ne ptr %4, null, !dbg !5430
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !5432

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %num, align 4, !dbg !5433
  store i32 %5, ptr %retval, align 4, !dbg !5434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5434

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %dev, align 8, !dbg !5435
  %call5 = call ptr @dev_get_drvdata(ptr noundef %6) #17, !dbg !5436
  store ptr %call5, ptr %ptp, align 8, !dbg !5437
  %7 = load ptr, ptr %ptp, align 8, !dbg !5438
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 21, !dbg !5440
  %call6 = call i32 @mutex_lock_interruptible(ptr noundef %n_vclocks_mux) #17, !dbg !5441
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5441
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5442

if.then8:                                         ; preds = %if.end4
  %8 = load ptr, ptr %dev, align 8, !dbg !5443
  call void @put_device(ptr noundef %8) #17, !dbg !5445
  %9 = load i32, ptr %num, align 4, !dbg !5446
  store i32 %9, ptr %retval, align 4, !dbg !5447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5447

if.end9:                                          ; preds = %if.end4
  %10 = load ptr, ptr %ptp, align 8, !dbg !5448
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %10, i32 0, i32 19, !dbg !5449
  %11 = load i32, ptr %n_vclocks, align 4, !dbg !5449
  %conv = zext i32 %11 to i64, !dbg !5448
  %mul = mul i64 4, %conv, !dbg !5450
  %call10 = call noalias ptr @kzalloc(i64 noundef %mul, i32 noundef 3264) #16, !dbg !5451
  %12 = load ptr, ptr %vclock_index.addr, align 8, !dbg !5452
  store ptr %call10, ptr %12, align 8, !dbg !5453
  %13 = load ptr, ptr %vclock_index.addr, align 8, !dbg !5454
  %14 = load ptr, ptr %13, align 8, !dbg !5456
  %tobool11 = icmp ne ptr %14, null, !dbg !5457
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5458

if.then12:                                        ; preds = %if.end9
  br label %out, !dbg !5459

if.end13:                                         ; preds = %if.end9
  %15 = load ptr, ptr %vclock_index.addr, align 8, !dbg !5460
  %16 = load ptr, ptr %15, align 8, !dbg !5461
  %17 = load ptr, ptr %ptp, align 8, !dbg !5462
  %vclock_index14 = getelementptr inbounds %struct.ptp_clock, ptr %17, i32 0, i32 20, !dbg !5463
  %18 = load ptr, ptr %vclock_index14, align 8, !dbg !5463
  %19 = load ptr, ptr %ptp, align 8, !dbg !5464
  %n_vclocks15 = getelementptr inbounds %struct.ptp_clock, ptr %19, i32 0, i32 19, !dbg !5465
  %20 = load i32, ptr %n_vclocks15, align 4, !dbg !5465
  %conv16 = zext i32 %20 to i64, !dbg !5464
  %mul17 = mul i64 4, %conv16, !dbg !5466
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %mul17, i1 false), !dbg !5467
  %21 = load ptr, ptr %ptp, align 8, !dbg !5468
  %n_vclocks18 = getelementptr inbounds %struct.ptp_clock, ptr %21, i32 0, i32 19, !dbg !5469
  %22 = load i32, ptr %n_vclocks18, align 4, !dbg !5469
  store i32 %22, ptr %num, align 4, !dbg !5470
  br label %out, !dbg !5471

out:                                              ; preds = %if.end13, %if.then12
  call void @llvm.dbg.label(metadata !5406), !dbg !5472
  %23 = load ptr, ptr %ptp, align 8, !dbg !5473
  %n_vclocks_mux19 = getelementptr inbounds %struct.ptp_clock, ptr %23, i32 0, i32 21, !dbg !5474
  call void @mutex_unlock(ptr noundef %n_vclocks_mux19) #17, !dbg !5475
  %24 = load ptr, ptr %dev, align 8, !dbg !5476
  call void @put_device(ptr noundef %24) #17, !dbg !5477
  %25 = load i32, ptr %num, align 4, !dbg !5478
  store i32 %25, ptr %retval, align 4, !dbg !5479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5479

cleanup:                                          ; preds = %out, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #15, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #15, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 32, ptr %name) #15, !dbg !5480
  %26 = load i32, ptr %retval, align 4, !dbg !5480
  ret i32 %26, !dbg !5480
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_find_device_by_name(ptr noundef %class, ptr noundef %name) #6 align 16 !dbg !5481 {
entry:
  %class.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5485, metadata !DIExpression()), !dbg !5487
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5486, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %class.addr, align 8, !dbg !5489
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5490
  %call = call ptr @class_find_device(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef @device_match_name) #17, !dbg !5491
  ret ptr %call, !dbg !5492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #6 align 16 !dbg !5493 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5499
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !5500
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5500
  ret ptr %1, !dbg !5501
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5502 dso_local i32 @mutex_lock_interruptible(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5505 dso_local void @put_device(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5506 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ptp_convert_timestamp(ptr noundef %hwtstamp, i32 noundef %vclock_index) #0 align 16 !dbg !5509 {
entry:
  %hwtstamp.addr = alloca ptr, align 8
  %vclock_index.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %vclock = alloca ptr, align 8
  %ns = alloca i64, align 8
  %vclock_ns = alloca i64, align 8
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu339 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %____ptr13 = alloca ptr, align 8
  %__UNIQUE_ID_rcu341 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %hwtstamp, ptr %hwtstamp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwtstamp.addr, metadata !5515, metadata !DIExpression()), !dbg !5535
  store i32 %vclock_index, ptr %vclock_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vclock_index.addr, metadata !5516, metadata !DIExpression()), !dbg !5536
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #15, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !5517, metadata !DIExpression()), !dbg !5538
  %0 = load i32, ptr %vclock_index.addr, align 4, !dbg !5539
  %conv = sext i32 %0 to i64, !dbg !5539
  %rem = urem i64 %conv, 256, !dbg !5540
  %conv1 = trunc i64 %rem to i32, !dbg !5539
  store i32 %conv1, ptr %hash, align 4, !dbg !5538
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5541
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5518, metadata !DIExpression()), !dbg !5542
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !5519, metadata !DIExpression()), !dbg !5544
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock_ns) #15, !dbg !5545
  call void @llvm.dbg.declare(metadata ptr %vclock_ns, metadata !5520, metadata !DIExpression()), !dbg !5546
  store i64 0, ptr %vclock_ns, align 8, !dbg !5546
  %1 = load ptr, ptr %hwtstamp.addr, align 8, !dbg !5547
  %2 = load i64, ptr %1, align 8, !dbg !5548
  %call = call i64 @ktime_to_ns(i64 noundef %2) #17, !dbg !5549
  store i64 %call, ptr %ns, align 8, !dbg !5550
  call void @rcu_read_lock() #17, !dbg !5551
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #15, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5521, metadata !DIExpression()), !dbg !5552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu339) #15, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu339, metadata !5524, metadata !DIExpression()), !dbg !5553
  br label %do.body, !dbg !5554

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5556

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5556

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %hash, align 4, !dbg !5554
  %idxprom = zext i32 %3 to i64, !dbg !5554
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @vclock_hash, i64 0, i64 %idxprom, !dbg !5554
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !5554
  %4 = load volatile ptr, ptr %first, align 8, !dbg !5554
  store ptr %4, ptr %tmp, align 8, !dbg !5556
  %5 = load ptr, ptr %tmp, align 8, !dbg !5554
  store ptr %5, ptr %__UNIQUE_ID_rcu339, align 8, !dbg !5553
  %6 = load ptr, ptr %__UNIQUE_ID_rcu339, align 8, !dbg !5553
  store ptr %6, ptr %tmp2, align 8, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu339) #15, !dbg !5552
  %7 = load ptr, ptr %tmp2, align 8, !dbg !5553
  store ptr %7, ptr %____ptr, align 8, !dbg !5552
  %8 = load ptr, ptr %____ptr, align 8, !dbg !5552
  %tobool = icmp ne ptr %8, null, !dbg !5552
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5552

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5526, metadata !DIExpression()), !dbg !5558
  %9 = load ptr, ptr %____ptr, align 8, !dbg !5558
  store ptr %9, ptr %__mptr, align 8, !dbg !5558
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5558
  %add.ptr = getelementptr i8, ptr %10, i64 -200, !dbg !5558
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5552
  %11 = load ptr, ptr %tmp4, align 8, !dbg !5558
  br label %cond.end, !dbg !5552

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5552

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ null, %cond.false ], !dbg !5552
  store ptr %cond, ptr %tmp3, align 8, !dbg !5552
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #15, !dbg !5559
  %12 = load ptr, ptr %tmp3, align 8, !dbg !5552
  store ptr %12, ptr %vclock, align 8, !dbg !5559
  br label %for.cond, !dbg !5559

for.cond:                                         ; preds = %cond.end26, %cond.end
  %13 = load ptr, ptr %vclock, align 8, !dbg !5560
  %tobool5 = icmp ne ptr %13, null, !dbg !5559
  br i1 %tobool5, label %for.body, label %for.end, !dbg !5559

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %vclock, align 8, !dbg !5561
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %14, i32 0, i32 2, !dbg !5564
  %15 = load ptr, ptr %clock, align 8, !dbg !5564
  %index = getelementptr inbounds %struct.ptp_clock, ptr %15, i32 0, i32 4, !dbg !5565
  %16 = load i32, ptr %index, align 4, !dbg !5565
  %17 = load i32, ptr %vclock_index.addr, align 4, !dbg !5566
  %cmp = icmp ne i32 %16, %17, !dbg !5567
  br i1 %cmp, label %if.then, label %if.end, !dbg !5568

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5569

if.end:                                           ; preds = %for.body
  %18 = load ptr, ptr %vclock, align 8, !dbg !5570
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %18, i32 0, i32 6, !dbg !5572
  %call7 = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5573
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5573
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5574

if.then9:                                         ; preds = %if.end
  br label %for.end, !dbg !5575

if.end10:                                         ; preds = %if.end
  %19 = load ptr, ptr %vclock, align 8, !dbg !5576
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %19, i32 0, i32 5, !dbg !5577
  %20 = load i64, ptr %ns, align 8, !dbg !5578
  %call11 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %20) #17, !dbg !5579
  store i64 %call11, ptr %vclock_ns, align 8, !dbg !5580
  %21 = load ptr, ptr %vclock, align 8, !dbg !5581
  %lock12 = getelementptr inbounds %struct.ptp_vclock, ptr %21, i32 0, i32 6, !dbg !5582
  call void @mutex_unlock(ptr noundef %lock12) #17, !dbg !5583
  br label %for.end, !dbg !5584

for.inc:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr13) #15, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %____ptr13, metadata !5528, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu341) #15, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu341, metadata !5531, metadata !DIExpression()), !dbg !5586
  br label %do.body14, !dbg !5587

do.body14:                                        ; preds = %for.inc
  br label %do.cond15, !dbg !5589

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5589

do.end16:                                         ; preds = %do.cond15
  %22 = load ptr, ptr %vclock, align 8, !dbg !5587
  %vclock_hash_node = getelementptr inbounds %struct.ptp_vclock, ptr %22, i32 0, i32 3, !dbg !5587
  %next = getelementptr inbounds %struct.hlist_node, ptr %vclock_hash_node, i32 0, i32 0, !dbg !5587
  %23 = load volatile ptr, ptr %next, align 8, !dbg !5587
  store ptr %23, ptr %tmp17, align 8, !dbg !5589
  %24 = load ptr, ptr %tmp17, align 8, !dbg !5587
  store ptr %24, ptr %__UNIQUE_ID_rcu341, align 8, !dbg !5586
  %25 = load ptr, ptr %__UNIQUE_ID_rcu341, align 8, !dbg !5586
  store ptr %25, ptr %tmp18, align 8, !dbg !5586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu341) #15, !dbg !5585
  %26 = load ptr, ptr %tmp18, align 8, !dbg !5586
  store ptr %26, ptr %____ptr13, align 8, !dbg !5585
  %27 = load ptr, ptr %____ptr13, align 8, !dbg !5585
  %tobool20 = icmp ne ptr %27, null, !dbg !5585
  br i1 %tobool20, label %cond.true21, label %cond.false25, !dbg !5585

cond.true21:                                      ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #15, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !5533, metadata !DIExpression()), !dbg !5591
  %28 = load ptr, ptr %____ptr13, align 8, !dbg !5591
  store ptr %28, ptr %__mptr22, align 8, !dbg !5591
  %29 = load ptr, ptr %__mptr22, align 8, !dbg !5591
  %add.ptr24 = getelementptr i8, ptr %29, i64 -200, !dbg !5591
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #15, !dbg !5585
  %30 = load ptr, ptr %tmp23, align 8, !dbg !5591
  br label %cond.end26, !dbg !5585

cond.false25:                                     ; preds = %do.end16
  br label %cond.end26, !dbg !5585

cond.end26:                                       ; preds = %cond.false25, %cond.true21
  %cond27 = phi ptr [ %30, %cond.true21 ], [ null, %cond.false25 ], !dbg !5585
  store ptr %cond27, ptr %tmp19, align 8, !dbg !5585
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr13) #15, !dbg !5560
  %31 = load ptr, ptr %tmp19, align 8, !dbg !5585
  store ptr %31, ptr %vclock, align 8, !dbg !5560
  br label %for.cond, !dbg !5560, !llvm.loop !5592

for.end:                                          ; preds = %if.end10, %if.then9, %for.cond
  call void @rcu_read_unlock() #17, !dbg !5596
  %32 = load i64, ptr %vclock_ns, align 8, !dbg !5597
  %call28 = call i64 @ns_to_ktime(i64 noundef %32) #17, !dbg !5598
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock_ns) #15, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #15, !dbg !5599
  ret i64 %call28, !dbg !5600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ns(i64 noundef %kt) #6 align 16 !dbg !5601 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  %0 = load i64, ptr %kt.addr, align 8, !dbg !5607
  ret i64 %0, !dbg !5608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #8 align 16 !dbg !5609 {
entry:
  call void @__rcu_read_lock() #17, !dbg !5611
  br label %do.body, !dbg !5612

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5613

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5615

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5616

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5618
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5619 dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #6 align 16 !dbg !5624 {
entry:
  br label %do.body, !dbg !5625

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5626

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !5628
  br label %do.body1, !dbg !5629

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5630

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ns_to_ktime(i64 noundef %ns) #6 align 16 !dbg !5633 {
entry:
  %ns.addr = alloca i64, align 8
  store i64 %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  %0 = load i64, ptr %ns.addr, align 8, !dbg !5639
  ret i64 %0, !dbg !5640
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5641 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5643, metadata !DIExpression()), !dbg !5648
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5644, metadata !DIExpression()), !dbg !5649
  %0 = load i64, ptr %size.addr, align 8, !dbg !5650
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5651
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5652

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5653
  %tobool = icmp ne i64 %2, 0, !dbg !5653
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5654

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5645, metadata !DIExpression()), !dbg !5656
  %3 = load i64, ptr %size.addr, align 8, !dbg !5657
  %cmp = icmp ugt i64 %3, 8192, !dbg !5659
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5660

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5661
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5662
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5663
  store ptr %call, ptr %retval, align 8, !dbg !5664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5664

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5665
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5665
  store i32 %call2, ptr %index, align 4, !dbg !5666
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5667
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5668
  %9 = ptrtoint ptr %8 to i64, !dbg !5668
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5669
  %idxprom = zext i32 %call3 to i64, !dbg !5670
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5670
  %10 = load i32, ptr %index, align 4, !dbg !5671
  %idxprom4 = zext i32 %10 to i64, !dbg !5670
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5670
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5670
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5672
  %13 = load i64, ptr %size.addr, align 8, !dbg !5673
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5674
  store ptr %call6, ptr %retval, align 8, !dbg !5675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5675

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5676
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5677
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5678
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5679
  store ptr %call8, ptr %retval, align 8, !dbg !5680
  br label %return, !dbg !5680

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5681
  ret ptr %16, !dbg !5681
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5682 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5683 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5687, metadata !DIExpression()), !dbg !5689
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5688, metadata !DIExpression()), !dbg !5690
  %0 = load i64, ptr %size.addr, align 8, !dbg !5691
  %tobool = icmp ne i64 %0, 0, !dbg !5691
  br i1 %tobool, label %if.end, label %if.then, !dbg !5693

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5694
  br label %return, !dbg !5694

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5695
  %cmp = icmp ule i64 %1, 8, !dbg !5697
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5698

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5699
  br label %return, !dbg !5699

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5700
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5702
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5703

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5704
  %cmp4 = icmp ule i64 %3, 96, !dbg !5705
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5706

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5707
  br label %return, !dbg !5707

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5708
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5710
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5711

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5712
  %cmp9 = icmp ule i64 %5, 192, !dbg !5713
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5714

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5716
  %cmp12 = icmp ule i64 %6, 8, !dbg !5718
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5719

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5720
  br label %return, !dbg !5720

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5721
  %cmp15 = icmp ule i64 %7, 16, !dbg !5723
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5724

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5725
  br label %return, !dbg !5725

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5726
  %cmp18 = icmp ule i64 %8, 32, !dbg !5728
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5729

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5730
  br label %return, !dbg !5730

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5731
  %cmp21 = icmp ule i64 %9, 64, !dbg !5733
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5734

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5735
  br label %return, !dbg !5735

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5736
  %cmp24 = icmp ule i64 %10, 128, !dbg !5738
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5739

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5741
  %cmp27 = icmp ule i64 %11, 256, !dbg !5743
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5744

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5745
  br label %return, !dbg !5745

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5746
  %cmp30 = icmp ule i64 %12, 512, !dbg !5748
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5749

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5751
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5753
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5754

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5755
  br label %return, !dbg !5755

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5756
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5758
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5759

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5760
  br label %return, !dbg !5760

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5761
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5763
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5764

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5765
  br label %return, !dbg !5765

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5766
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5768
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5769

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5770
  br label %return, !dbg !5770

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5771
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5773
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5774

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5776
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5778
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5779

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5780
  br label %return, !dbg !5780

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5781
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5783
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5784

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5785
  br label %return, !dbg !5785

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5786
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5788
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5789

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5790
  br label %return, !dbg !5790

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5791
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5793
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5794

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5796
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5798
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5799

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5800
  br label %return, !dbg !5800

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5801
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5803
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5804

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5805
  br label %return, !dbg !5805

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5806
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5808
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5809

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5810
  br label %return, !dbg !5810

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5811, !range !5813, !noundef !620
  %tobool69 = trunc i8 %25 to i1, !dbg !5811
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5814

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5815

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !5816, !srcloc !5819
  unreachable, !dbg !5816

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5820

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5821

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5822

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5824

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5822

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !5826, !srcloc !5828
  br label %do.end75, !dbg !5826

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5822

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5829
  br label %return, !dbg !5829

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5830
  ret i32 %26, !dbg !5830
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5831 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5837 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5841, metadata !DIExpression()), !dbg !5843
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5842, metadata !DIExpression()), !dbg !5844
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5845
  %and = and i32 %0, 17, !dbg !5845
  %cmp = icmp eq i32 %and, 0, !dbg !5845
  %lnot = xor i1 %cmp, true, !dbg !5845
  %lnot1 = xor i1 %lnot, true, !dbg !5845
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5845
  %conv = sext i32 %lnot.ext to i64, !dbg !5845
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5845
  %tobool = icmp ne i64 %expval, 0, !dbg !5845
  br i1 %tobool, label %if.then, label %if.end, !dbg !5847

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5849
  %and2 = and i32 %1, 1, !dbg !5851
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5851
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5852

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5853
  br label %return, !dbg !5853

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5856
  ret i32 %2, !dbg !5856
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5857 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5858 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_vclock_adjfine(ptr noundef %ptp, i64 noundef %scaled_ppm) #0 align 16 !dbg !5859 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %scaled_ppm.addr = alloca i64, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %adj = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5861, metadata !DIExpression()), !dbg !5867
  store i64 %scaled_ppm, ptr %scaled_ppm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scaled_ppm.addr, metadata !5862, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5863, metadata !DIExpression()), !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5864, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5871
  store ptr %0, ptr %__mptr, align 8, !dbg !5871
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5871
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5871
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5872
  %2 = load ptr, ptr %tmp, align 8, !dbg !5871
  store ptr %2, ptr %vclock, align 8, !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #15, !dbg !5873
  call void @llvm.dbg.declare(metadata ptr %adj, metadata !5866, metadata !DIExpression()), !dbg !5874
  %3 = load i64, ptr %scaled_ppm.addr, align 8, !dbg !5875
  %shl = shl i64 %3, 9, !dbg !5876
  store i64 %shl, ptr %adj, align 8, !dbg !5877
  %4 = load i64, ptr %adj, align 8, !dbg !5878
  %call = call i64 @div_s64(i64 noundef %4, i32 noundef 15625) #17, !dbg !5879
  store i64 %call, ptr %adj, align 8, !dbg !5880
  %5 = load ptr, ptr %vclock, align 8, !dbg !5881
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %5, i32 0, i32 6, !dbg !5883
  %call1 = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5884
  %tobool = icmp ne i32 %call1, 0, !dbg !5884
  br i1 %tobool, label %if.then, label %if.end, !dbg !5885

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4, !dbg !5886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5886

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %vclock, align 8, !dbg !5887
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %6, i32 0, i32 5, !dbg !5888
  %call2 = call i64 @timecounter_read(ptr noundef %tc) #17, !dbg !5889
  %7 = load i64, ptr %adj, align 8, !dbg !5890
  %add = add i64 -2147483648, %7, !dbg !5891
  %conv = trunc i64 %add to i32, !dbg !5892
  %8 = load ptr, ptr %vclock, align 8, !dbg !5893
  %cc = getelementptr inbounds %struct.ptp_vclock, ptr %8, i32 0, i32 4, !dbg !5894
  %mult = getelementptr inbounds %struct.cyclecounter, ptr %cc, i32 0, i32 2, !dbg !5895
  store i32 %conv, ptr %mult, align 8, !dbg !5896
  %9 = load ptr, ptr %vclock, align 8, !dbg !5897
  %lock3 = getelementptr inbounds %struct.ptp_vclock, ptr %9, i32 0, i32 6, !dbg !5898
  call void @mutex_unlock(ptr noundef %lock3) #17, !dbg !5899
  store i32 0, ptr %retval, align 4, !dbg !5900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5900

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #15, !dbg !5901
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5901
  %10 = load i32, ptr %retval, align 4, !dbg !5901
  ret i32 %10, !dbg !5901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_vclock_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 16 !dbg !5902 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %delta.addr = alloca i64, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5904, metadata !DIExpression()), !dbg !5909
  store i64 %delta, ptr %delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !5905, metadata !DIExpression()), !dbg !5910
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5911
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5906, metadata !DIExpression()), !dbg !5912
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5907, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5913
  store ptr %0, ptr %__mptr, align 8, !dbg !5913
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5913
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5913
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5914
  %2 = load ptr, ptr %tmp, align 8, !dbg !5913
  store ptr %2, ptr %vclock, align 8, !dbg !5912
  %3 = load ptr, ptr %vclock, align 8, !dbg !5915
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 6, !dbg !5917
  %call = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5918
  %tobool = icmp ne i32 %call, 0, !dbg !5918
  br i1 %tobool, label %if.then, label %if.end, !dbg !5919

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4, !dbg !5920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5920

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vclock, align 8, !dbg !5921
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %4, i32 0, i32 5, !dbg !5922
  %5 = load i64, ptr %delta.addr, align 8, !dbg !5923
  call void @timecounter_adjtime(ptr noundef %tc, i64 noundef %5) #17, !dbg !5924
  %6 = load ptr, ptr %vclock, align 8, !dbg !5925
  %lock1 = getelementptr inbounds %struct.ptp_vclock, ptr %6, i32 0, i32 6, !dbg !5926
  call void @mutex_unlock(ptr noundef %lock1) #17, !dbg !5927
  store i32 0, ptr %retval, align 4, !dbg !5928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5928

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5929
  %7 = load i32, ptr %retval, align 4, !dbg !5929
  ret i32 %7, !dbg !5929
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptp_vclock_settime(ptr noundef %ptp, ptr noundef %ts) #0 align 16 !dbg !5930 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5932, metadata !DIExpression()), !dbg !5938
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5933, metadata !DIExpression()), !dbg !5939
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5934, metadata !DIExpression()), !dbg !5941
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5935, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5942
  store ptr %0, ptr %__mptr, align 8, !dbg !5942
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5942
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5942
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5942
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5943
  %2 = load ptr, ptr %tmp, align 8, !dbg !5942
  store ptr %2, ptr %vclock, align 8, !dbg !5941
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !5944
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !5937, metadata !DIExpression()), !dbg !5945
  %3 = load ptr, ptr %ts.addr, align 8, !dbg !5946
  %call = call i64 @timespec64_to_ns(ptr noundef %3) #17, !dbg !5947
  store i64 %call, ptr %ns, align 8, !dbg !5945
  %4 = load ptr, ptr %vclock, align 8, !dbg !5948
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %4, i32 0, i32 6, !dbg !5950
  %call1 = call i32 @mutex_lock_interruptible(ptr noundef %lock) #17, !dbg !5951
  %tobool = icmp ne i32 %call1, 0, !dbg !5951
  br i1 %tobool, label %if.then, label %if.end, !dbg !5952

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4, !dbg !5953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5953

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %vclock, align 8, !dbg !5954
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %5, i32 0, i32 5, !dbg !5955
  %6 = load ptr, ptr %vclock, align 8, !dbg !5956
  %cc = getelementptr inbounds %struct.ptp_vclock, ptr %6, i32 0, i32 4, !dbg !5957
  %7 = load i64, ptr %ns, align 8, !dbg !5958
  call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %7) #17, !dbg !5959
  %8 = load ptr, ptr %vclock, align 8, !dbg !5960
  %lock2 = getelementptr inbounds %struct.ptp_vclock, ptr %8, i32 0, i32 6, !dbg !5961
  call void @mutex_unlock(ptr noundef %lock2) #17, !dbg !5962
  store i32 0, ptr %retval, align 4, !dbg !5963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5963

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !5964
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5964
  %9 = load i32, ptr %retval, align 4, !dbg !5964
  ret i32 %9, !dbg !5964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptp_vclock_refresh(ptr noundef %ptp) #0 align 16 !dbg !5965 {
entry:
  %ptp.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ts = alloca %struct.timespec64, align 8
  store ptr %ptp, ptr %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptp.addr, metadata !5967, metadata !DIExpression()), !dbg !5972
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !5968, metadata !DIExpression()), !dbg !5974
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5969, metadata !DIExpression()), !dbg !5975
  %0 = load ptr, ptr %ptp.addr, align 8, !dbg !5975
  store ptr %0, ptr %__mptr, align 8, !dbg !5975
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5975
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5975
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5976
  %2 = load ptr, ptr %tmp, align 8, !dbg !5975
  store ptr %2, ptr %vclock, align 8, !dbg !5974
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #15, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5971, metadata !DIExpression()), !dbg !5978
  %3 = load ptr, ptr %vclock, align 8, !dbg !5979
  %info = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 1, !dbg !5980
  %call = call i32 @ptp_vclock_gettime(ptr noundef %info, ptr noundef %ts) #17, !dbg !5981
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #15, !dbg !5982
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !5982
  ret i64 2000, !dbg !5983
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64(i64 noundef %dividend, i32 noundef %divisor) #6 align 16 !dbg !5984 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !5989, metadata !DIExpression()), !dbg !5992
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !5990, metadata !DIExpression()), !dbg !5993
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #15, !dbg !5994
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !5991, metadata !DIExpression()), !dbg !5995
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !5996
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !5997
  %call = call i64 @div_s64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #17, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #15, !dbg !5999
  ret i64 %call, !dbg !6000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6001 dso_local i64 @timecounter_read(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #6 align 16 !dbg !6004 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !6008, metadata !DIExpression()), !dbg !6011
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !6009, metadata !DIExpression()), !dbg !6012
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !6010, metadata !DIExpression()), !dbg !6013
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !6014
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !6015
  %conv = sext i32 %1 to i64, !dbg !6015
  %rem = srem i64 %0, %conv, !dbg !6016
  %conv1 = trunc i64 %rem to i32, !dbg !6014
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !6017
  store i32 %conv1, ptr %2, align 4, !dbg !6018
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !6019
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !6020
  %conv2 = sext i32 %4 to i64, !dbg !6020
  %div = sdiv i64 %3, %conv2, !dbg !6021
  ret i64 %div, !dbg !6022
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timecounter_adjtime(ptr noundef %tc, i64 noundef %delta) #6 align 16 !dbg !6023 {
entry:
  %tc.addr = alloca ptr, align 8
  %delta.addr = alloca i64, align 8
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !6027, metadata !DIExpression()), !dbg !6029
  store i64 %delta, ptr %delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !6028, metadata !DIExpression()), !dbg !6030
  %0 = load i64, ptr %delta.addr, align 8, !dbg !6031
  %1 = load ptr, ptr %tc.addr, align 8, !dbg !6032
  %nsec = getelementptr inbounds %struct.timecounter, ptr %1, i32 0, i32 2, !dbg !6033
  %2 = load i64, ptr %nsec, align 8, !dbg !6034
  %add = add i64 %2, %0, !dbg !6034
  store i64 %add, ptr %nsec, align 8, !dbg !6034
  ret void, !dbg !6035
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timespec64_to_ns(ptr noundef %ts) #6 align 16 !dbg !6036 {
entry:
  %retval = alloca i64, align 8
  %ts.addr = alloca ptr, align 8
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !6040, metadata !DIExpression()), !dbg !6041
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !6042
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 0, !dbg !6044
  %1 = load i64, ptr %tv_sec, align 8, !dbg !6044
  %cmp = icmp sge i64 %1, 9223372036, !dbg !6045
  br i1 %cmp, label %if.then, label %if.end, !dbg !6046

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !6047
  br label %return, !dbg !6047

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ts.addr, align 8, !dbg !6048
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 0, !dbg !6050
  %3 = load i64, ptr %tv_sec1, align 8, !dbg !6050
  %cmp2 = icmp sle i64 %3, -9223372036, !dbg !6051
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6052

if.then3:                                         ; preds = %if.end
  store i64 -9223372036854775808, ptr %retval, align 8, !dbg !6053
  br label %return, !dbg !6053

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %ts.addr, align 8, !dbg !6054
  %tv_sec5 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 0, !dbg !6055
  %5 = load i64, ptr %tv_sec5, align 8, !dbg !6055
  %mul = mul i64 %5, 1000000000, !dbg !6056
  %6 = load ptr, ptr %ts.addr, align 8, !dbg !6057
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1, !dbg !6058
  %7 = load i64, ptr %tv_nsec, align 8, !dbg !6058
  %add = add i64 %mul, %7, !dbg !6059
  store i64 %add, ptr %retval, align 8, !dbg !6060
  br label %return, !dbg !6060

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !6061
  ret i64 %8, !dbg !6061
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6062 dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptp_vclock_read(ptr noundef %cc) #0 align 16 !dbg !6065 {
entry:
  %cc.addr = alloca ptr, align 8
  %vclock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ptp = alloca ptr, align 8
  %ts = alloca %struct.timespec64, align 8
  store ptr %cc, ptr %cc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !6067, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 8, ptr %vclock) #15, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %vclock, metadata !6068, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6069, metadata !DIExpression()), !dbg !6076
  %0 = load ptr, ptr %cc.addr, align 8, !dbg !6076
  store ptr %0, ptr %__mptr, align 8, !dbg !6076
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6076
  %add.ptr = getelementptr i8, ptr %1, i64 -216, !dbg !6076
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6077
  %2 = load ptr, ptr %tmp, align 8, !dbg !6076
  store ptr %2, ptr %vclock, align 8, !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptp) #15, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %ptp, metadata !6071, metadata !DIExpression()), !dbg !6079
  %3 = load ptr, ptr %vclock, align 8, !dbg !6080
  %pclock = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 0, !dbg !6081
  %4 = load ptr, ptr %pclock, align 8, !dbg !6081
  store ptr %4, ptr %ptp, align 8, !dbg !6079
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #15, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6072, metadata !DIExpression()), !dbg !6083
  call void @llvm.memset.p0.i64(ptr align 8 %ts, i8 0, i64 16, i1 false), !dbg !6083
  %5 = load ptr, ptr %ptp, align 8, !dbg !6084
  %info = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2, !dbg !6085
  %6 = load ptr, ptr %info, align 8, !dbg !6085
  %getcycles64 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 17, !dbg !6086
  %7 = load ptr, ptr %getcycles64, align 8, !dbg !6086
  %8 = load ptr, ptr %ptp, align 8, !dbg !6087
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 2, !dbg !6088
  %9 = load ptr, ptr %info1, align 8, !dbg !6088
  %call = call i32 %7(ptr noundef %9, ptr noundef %ts) #17, !dbg !6084
  %call2 = call i64 @timespec64_to_ns(ptr noundef %ts) #17, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #15, !dbg !6090
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptp) #15, !dbg !6090
  call void @llvm.lifetime.end.p0(i64 8, ptr %vclock) #15, !dbg !6090
  ret i64 %call2, !dbg !6091
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #8 align 16 !dbg !6092 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6099
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6099
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !6099
  ret void, !dbg !6100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head_rcu(ptr noundef %n, ptr noundef %h) #6 align 16 !dbg !6101 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6106, metadata !DIExpression()), !dbg !6111
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6107, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #15, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %first, metadata !6108, metadata !DIExpression()), !dbg !6114
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6115
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !6116
  %1 = load ptr, ptr %first1, align 8, !dbg !6116
  store ptr %1, ptr %first, align 8, !dbg !6114
  %2 = load ptr, ptr %first, align 8, !dbg !6117
  %3 = load ptr, ptr %n.addr, align 8, !dbg !6118
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !6119
  store ptr %2, ptr %next, align 8, !dbg !6120
  br label %do.body, !dbg !6121

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6122

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6124

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6124

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6122

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %h.addr, align 8, !dbg !6126
  %first4 = getelementptr inbounds %struct.hlist_head, ptr %4, i32 0, i32 0, !dbg !6126
  %5 = load ptr, ptr %n.addr, align 8, !dbg !6126
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1, !dbg !6126
  store volatile ptr %first4, ptr %pprev, align 8, !dbg !6126
  br label %do.cond5, !dbg !6126

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !6126

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !6122

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6122

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !6128

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !6129
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !6109, metadata !DIExpression()), !dbg !6129
  %6 = load ptr, ptr %n.addr, align 8, !dbg !6129
  %7 = ptrtoint ptr %6 to i64, !dbg !6129
  store i64 %7, ptr %_r_a_p__v, align 8, !dbg !6129
  br i1 false, label %land.lhs.true, label %if.else, !dbg !6130

land.lhs.true:                                    ; preds = %do.body9
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !6130
  %cmp = icmp eq i64 %8, 0, !dbg !6130
  br i1 %cmp, label %if.then, label %if.else, !dbg !6129

if.then:                                          ; preds = %land.lhs.true
  br label %do.body10, !dbg !6130

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !6132

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6134

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6134

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6132

do.body14:                                        ; preds = %do.end13
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !6136
  %10 = inttoptr i64 %9 to ptr, !dbg !6136
  %11 = load ptr, ptr %h.addr, align 8, !dbg !6136
  %first15 = getelementptr inbounds %struct.hlist_head, ptr %11, i32 0, i32 0, !dbg !6136
  store volatile ptr %10, ptr %first15, align 8, !dbg !6136
  br label %do.cond16, !dbg !6136

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !6136

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !6132

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6132

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6132

if.else:                                          ; preds = %land.lhs.true, %do.body9
  br label %do.body20, !dbg !6130

do.body20:                                        ; preds = %if.else
  br label %do.body21, !dbg !6138

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6140

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6140

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6138

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !6142

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !6144

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6144

do.end27:                                         ; preds = %do.cond26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6142, !srcloc !6146
  br label %do.body28, !dbg !6142

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !6147

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !6149

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6149

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6147

do.body32:                                        ; preds = %do.end31
  %12 = load i64, ptr %_r_a_p__v, align 8, !dbg !6151
  %13 = inttoptr i64 %12 to ptr, !dbg !6151
  %14 = load ptr, ptr %h.addr, align 8, !dbg !6151
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %14, i32 0, i32 0, !dbg !6151
  store volatile ptr %13, ptr %first33, align 8, !dbg !6151
  br label %do.cond34, !dbg !6151

do.cond34:                                        ; preds = %do.body32
  br label %do.end35, !dbg !6151

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !6147

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !6147

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !6142

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !6142

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !6138

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !6138

do.end41:                                         ; preds = %do.cond40
  br label %if.end

if.end:                                           ; preds = %do.end41, %do.end19
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !6128
  br label %do.cond42, !dbg !6129

do.cond42:                                        ; preds = %if.end
  br label %do.end43, !dbg !6129

do.end43:                                         ; preds = %do.cond42
  %15 = load ptr, ptr %first, align 8, !dbg !6153
  %tobool = icmp ne ptr %15, null, !dbg !6153
  br i1 %tobool, label %if.then44, label %if.end56, !dbg !6155

if.then44:                                        ; preds = %do.end43
  br label %do.body45, !dbg !6156

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !6157

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !6159

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6159

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !6157

do.body49:                                        ; preds = %do.end48
  %16 = load ptr, ptr %n.addr, align 8, !dbg !6161
  %next50 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 0, !dbg !6161
  %17 = load ptr, ptr %first, align 8, !dbg !6161
  %pprev51 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1, !dbg !6161
  store volatile ptr %next50, ptr %pprev51, align 8, !dbg !6161
  br label %do.cond52, !dbg !6161

do.cond52:                                        ; preds = %do.body49
  br label %do.end53, !dbg !6161

do.end53:                                         ; preds = %do.cond52
  br label %do.cond54, !dbg !6157

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !6157

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !6157

if.end56:                                         ; preds = %do.end55, %do.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #15, !dbg !6163
  ret void, !dbg !6163
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #8 align 16 !dbg !6164 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6168
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6168
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !6168
  ret void, !dbg !6169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6170 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6175 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_init_rcu(ptr noundef %n) #6 align 16 !dbg !6176 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  %0 = load ptr, ptr %n.addr, align 8, !dbg !6180
  %call = call i32 @hlist_unhashed(ptr noundef %0) #17, !dbg !6182
  %tobool = icmp ne i32 %call, 0, !dbg !6182
  br i1 %tobool, label %if.end, label %if.then, !dbg !6183

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !6184
  call void @__hlist_del(ptr noundef %1) #17, !dbg !6186
  br label %do.body, !dbg !6187

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !6188

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6190

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6188

do.body2:                                         ; preds = %do.end
  %2 = load ptr, ptr %n.addr, align 8, !dbg !6192
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !6192
  store volatile ptr null, ptr %pprev, align 8, !dbg !6192
  br label %do.end3, !dbg !6192

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6188

do.end4:                                          ; preds = %do.end3
  br label %if.end, !dbg !6194

if.end:                                           ; preds = %do.end4, %entry
  ret void, !dbg !6195
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6196 dso_local void @synchronize_rcu() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #6 align 16 !dbg !6197 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6205
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !6206
  %1 = load ptr, ptr %pprev, align 8, !dbg !6206
  %tobool = icmp ne ptr %1, null, !dbg !6207
  %lnot = xor i1 %tobool, true, !dbg !6207
  %lnot.ext = zext i1 %lnot to i32, !dbg !6207
  ret i32 %lnot.ext, !dbg !6208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #6 align 16 !dbg !6209 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6211, metadata !DIExpression()), !dbg !6214
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !6215
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6212, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %n.addr, align 8, !dbg !6217
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !6218
  %1 = load ptr, ptr %next1, align 8, !dbg !6218
  store ptr %1, ptr %next, align 8, !dbg !6216
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #15, !dbg !6219
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !6213, metadata !DIExpression()), !dbg !6220
  %2 = load ptr, ptr %n.addr, align 8, !dbg !6221
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !6222
  %3 = load ptr, ptr %pprev2, align 8, !dbg !6222
  store ptr %3, ptr %pprev, align 8, !dbg !6220
  br label %do.body, !dbg !6223

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !6224

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !6226

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6226

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6224

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !6228
  %5 = load ptr, ptr %pprev, align 8, !dbg !6228
  store volatile ptr %4, ptr %5, align 8, !dbg !6228
  br label %do.cond5, !dbg !6228

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6228

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !6224

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6224

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !6230
  %tobool = icmp ne ptr %6, null, !dbg !6230
  br i1 %tobool, label %if.then, label %if.end, !dbg !6232

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !6233

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !6234

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !6236

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6236

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6234

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !6238
  %8 = load ptr, ptr %next, align 8, !dbg !6238
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !6238
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !6238
  br label %do.cond15, !dbg !6238

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !6238

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !6234

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6234

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6234

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #15, !dbg !6240
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !6240
  ret void, !dbg !6240
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6241 dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6247 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6248 dso_local void @__rcu_read_unlock() #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054}
!llvm.ident = !{!5055}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ptp_vclock_info", scope: !2, file: !3, line: 157, type: !5046, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/ptp/.ptp_vclock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/ptp/ptp\22 -D KBUILD_BASENAME=\22ptp_vclock\22 -D KBUILD_MODNAME=\22ptp\22 -D __KBUILD_MODNAME=kmod_ptp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/ptp/ptp_vclock.ll drivers/ptp/ptp_vclock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, globals: !5007, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ptp/ptp_vclock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "106e364443703a8c5efd88a8ac312374")
!4 = !{!5, !13, !18, !24, !29, !37, !45, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !191, !197, !202}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!49 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!50 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!51 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!52 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!53 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!54 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!55 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!56 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!57 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!58 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!59 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!60 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!212 = !{!213, !215, !109, !216, !224, !219, !225, !394, !241, !726, !496, !5003, !5005, !5006}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !214, line: 154, baseType: !7)
!214 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !214, line: 198, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !214, line: 199, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !220, file: !214, line: 199, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_vclock", file: !227, line: 62, size: 2496, elements: !228)
!227 = !DIFile(filename: "drivers/ptp/ptp_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6401785878d097ded4610e2a083f87")
!228 = !{!229, !4978, !4979, !4980, !4981, !4994, !5002}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pclock", scope: !226, file: !227, line: 63, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !227, line: 30, size: 43392, elements: !232)
!232 = !{!233, !4768, !4769, !4854, !4855, !4856, !4907, !4908, !4924, !4925, !4926, !4927, !4928, !4941, !4942, !4943, !4945, !4967, !4972, !4973, !4974, !4975, !4976, !4977}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !231, file: !227, line: 31, baseType: !234, size: 1920)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock", file: !235, line: 85, size: 1920, elements: !236)
!235 = !DIFile(filename: "./include/linux/posix-clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "033589a08c5a69dceae9211ceff0c050")
!236 = !{!237, !4314, !4315, !4766, !4767}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !234, file: !235, line: 86, baseType: !238, size: 640)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock_operations", file: !235, line: 38, size: 640, elements: !239)
!239 = !{!240, !4246, !4279, !4284, !4285, !4291, !4295, !4299, !4305, !4309}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !238, file: !235, line: 39, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !243)
!243 = !{!244, !245, !251, !256, !3922, !3948, !3949, !3950, !3951, !3955, !3958, !3959, !3960, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4027, !4031, !4049, !4066, !4067, !4068, !4069, !4078, !4101, !4102, !4105, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4119, !4120, !4206, !4214, !4215, !4216, !4218, !4222, !4223, !4227, !4228, !4229, !4230, !4232, !4233, !4234, !4241, !4242, !4243, !4245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !242, file: !6, line: 403, baseType: !5, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !242, file: !6, line: 406, baseType: !246, size: 128, offset: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !214, line: 190, size: 128, elements: !247)
!247 = !{!248, !250}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !214, line: 191, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !246, file: !214, line: 191, baseType: !249, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !6, line: 409, baseType: !252, size: 448, offset: 192)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 448, elements: !254)
!253 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!254 = !{!255}
!255 = !DISubrange(count: 56)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !242, file: !6, line: 417, baseType: !257, size: 768, offset: 640)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !258)
!258 = !{!259, !3916, !3917, !3918, !3921}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !257, file: !6, line: 46, baseType: !260, size: 512)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !261, line: 64, size: 512, elements: !262)
!261 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!262 = !{!263, !266, !267, !269, !357, !3803, !3906, !3911, !3912, !3913, !3914, !3915}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !261, line: 65, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !260, file: !261, line: 66, baseType: !246, size: 128, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !261, line: 67, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !260, file: !261, line: 68, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !261, line: 168, size: 768, elements: !272)
!272 = !{!273, !274, !316, !317}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !271, file: !261, line: 169, baseType: !246, size: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !271, file: !261, line: 170, baseType: !275, size: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !276, line: 29, baseType: !277)
!276 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !276, line: 17, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !276, line: 18, baseType: !280, size: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !276, line: 18, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !280, file: !276, line: 19, baseType: !283, size: 32)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !284, line: 14, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !283, file: !284, line: 15, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !288, line: 44, baseType: !289)
!288 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !288, line: 14, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !288, line: 15, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !288, line: 15, size: 32, elements: !293)
!293 = !{!294, !299, !308}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !292, file: !288, line: 16, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !214, line: 174, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 172, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !296, file: !214, line: 173, baseType: !109, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !288, line: 24, baseType: !300, size: 16)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !288, line: 24, size: 16, elements: !301)
!301 = !{!302, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !300, file: !288, line: 25, baseType: !303, size: 8)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !304, line: 17, baseType: !305)
!304 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !170, line: 21, baseType: !306)
!306 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !300, file: !288, line: 26, baseType: !303, size: 8, offset: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !288, line: 28, baseType: !309, size: 32)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !288, line: 28, size: 32, elements: !310)
!310 = !{!311, !315}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !309, file: !288, line: 29, baseType: !312, size: 16)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !304, line: 19, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !170, line: 24, baseType: !314)
!314 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !309, file: !288, line: 30, baseType: !312, size: 16, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !271, file: !261, line: 171, baseType: !260, size: 512, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !271, file: !261, line: 172, baseType: !318, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !261, line: 133, size: 192, elements: !321)
!321 = !{!322, !329, !334}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !320, file: !261, line: 134, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!109, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !261, line: 135, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!264, !327}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !320, file: !261, line: 136, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!109, !327, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !261, line: 125, size: 20736, elements: !341)
!341 = !{!342, !347, !351, !352, !356}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !340, file: !261, line: 126, baseType: !343, size: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !345)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!345 = !{!346}
!346 = !DISubrange(count: 3)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !340, file: !261, line: 127, baseType: !348, size: 4096, offset: 192)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 4096, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !340, file: !261, line: 128, baseType: !109, size: 32, offset: 4288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !340, file: !261, line: 129, baseType: !353, size: 16384, offset: 4320)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 16384, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 2048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !340, file: !261, line: 130, baseType: !109, size: 32, offset: 20704)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !260, file: !261, line: 69, baseType: !358, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !261, line: 116, size: 384, elements: !361)
!361 = !{!362, !366, !395, !3765, !3793, !3797}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !360, file: !261, line: 117, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !268}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !360, file: !261, line: 118, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !370, line: 254, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!371 = !{!372, !387}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !369, file: !370, line: 255, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !268, !381, !344}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !214, line: 66, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !378, line: 73, baseType: !379)
!378 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !378, line: 15, baseType: !380)
!380 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !370, line: 30, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !370, line: 31, baseType: !264, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !382, file: !370, line: 32, baseType: !386, size: 16, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !214, line: 24, baseType: !314)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !369, file: !370, line: 256, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!376, !268, !381, !264, !391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 61, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !378, line: 72, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !378, line: 16, baseType: !394)
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !360, file: !261, line: 119, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !370, line: 84, size: 320, elements: !400)
!400 = !{!401, !402, !406, !3761, !3763}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !370, line: 85, baseType: !264, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !399, file: !370, line: 86, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!386, !268, !381, !109}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !399, file: !370, line: 88, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!386, !268, !410, !109}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !370, line: 175, size: 512, elements: !412)
!412 = !{!413, !414, !415, !416, !3752, !3756, !3757}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !411, file: !370, line: 176, baseType: !382, size: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !370, line: 177, baseType: !391, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !411, file: !370, line: 178, baseType: !215, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !411, file: !370, line: 179, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !422)
!422 = !{!423, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3746, !3747, !3748, !3749, !3750, !3751}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !421, file: !14, line: 473, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !426)
!426 = !{!427, !428, !429, !437, !438, !445, !446, !449, !450, !3517, !3518, !3519, !3520, !3521, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3561, !3564, !3565, !3566, !3583, !3584, !3585, !3586}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !425, file: !14, line: 642, baseType: !386, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !425, file: !14, line: 643, baseType: !314, size: 16, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !425, file: !14, line: 644, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !431, line: 23, baseType: !432)
!431 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 21, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !431, line: 22, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !214, line: 37, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !378, line: 49, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !425, file: !14, line: 645, baseType: !246, size: 128, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !425, file: !14, line: 646, baseType: !439, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !431, line: 28, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 26, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !440, file: !431, line: 27, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !214, line: 38, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !378, line: 50, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !425, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !425, file: !14, line: 650, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !425, file: !14, line: 651, baseType: !447, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !425, file: !14, line: 654, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !454)
!454 = !{!455, !3348, !3361, !3365, !3369, !3373, !3377, !3381, !3385, !3389, !3393, !3394, !3398, !3402, !3439, !3468, !3472, !3478, !3482, !3486, !3490, !3494, !3498, !3504, !3508}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !453, file: !14, line: 1967, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !424, !459, !7}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !461, line: 82, size: 1536, elements: !462)
!461 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!462 = !{!463, !464, !474, !482, !483, !502, !503, !507, !520, !3332, !3333, !3334, !3335, !3340, !3341, !3342}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !460, file: !461, line: 84, baseType: !7, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !460, file: !461, line: 85, baseType: !465, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !466, line: 275, baseType: !467)
!466 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !466, line: 275, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !467, file: !466, line: 275, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !466, line: 69, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !466, line: 64, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !471, file: !466, line: 65, baseType: !7, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !460, file: !461, line: 86, baseType: !475, size: 128, offset: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !476, line: 38, size: 128, elements: !477)
!476 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!477 = !{!478, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !476, line: 39, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !475, file: !476, line: 39, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !460, file: !461, line: 87, baseType: !459, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !460, file: !461, line: 88, baseType: !484, size: 128, offset: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !461, line: 49, size: 128, elements: !485)
!485 = !{!486, !499}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !461, line: 50, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !461, line: 50, size: 64, elements: !488)
!488 = !{!489, !495}
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !461, line: 51, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !461, line: 51, size: 64, elements: !491)
!491 = !{!492, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !490, file: !461, line: 52, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !304, line: 21, baseType: !173)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !490, file: !461, line: 52, baseType: !493, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !487, file: !461, line: 54, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !304, line: 23, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !170, line: 31, baseType: !498)
!498 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !461, line: 56, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !460, file: !461, line: 89, baseType: !424, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !460, file: !461, line: 91, baseType: !504, size: 256, offset: 448)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !460, file: !461, line: 94, baseType: !508, size: 64, offset: 704)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !509, line: 25, size: 64, elements: !510)
!509 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 26, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 26, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !512, file: !509, line: 28, baseType: !497, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !509, line: 30, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !509, line: 30, size: 64, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !516, file: !509, line: 31, baseType: !275, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !516, file: !509, line: 32, baseType: !109, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !460, file: !461, line: 95, baseType: !521, size: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !461, line: 128, size: 1024, align: 512, elements: !524)
!524 = !{!525, !529, !530, !537, !543, !547, !551, !555, !556, !560, !564, !3322, !3326}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !523, file: !461, line: 129, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!109, !459, !7}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !523, file: !461, line: 130, baseType: !526, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !523, file: !461, line: 131, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!109, !534, !536}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !523, file: !461, line: 132, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!109, !534, !7, !264, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !523, file: !461, line: 134, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!109, !534}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !523, file: !461, line: 135, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!109, !459}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !523, file: !461, line: 136, baseType: !552, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !459}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !523, file: !461, line: 137, baseType: !552, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !523, file: !461, line: 138, baseType: !557, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !459, !424}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !523, file: !461, line: 139, baseType: !561, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!344, !459, !344, !109}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !523, file: !461, line: 140, baseType: !565, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!568, !3321}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !570, line: 70, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!571 = !{!572, !573, !3317, !3318}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !569, file: !570, line: 71, baseType: !459, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !569, file: !570, line: 72, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !576)
!576 = !{!577, !578, !581, !582, !583, !586, !629, !788, !828, !918, !922, !923, !924, !925, !926, !935, !936, !937, !938, !943, !947, !948, !951, !954, !957, !960, !961, !962, !1003, !3248, !3249, !3250, !3251, !3252, !3253, !3256, !3258, !3265, !3266, !3267, !3268, !3269, !3284, !3285, !3286, !3287, !3288, !3291, !3292, !3293, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !575, file: !14, line: 1191, baseType: !246, size: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !575, file: !14, line: 1192, baseType: !579, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !214, line: 21, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !214, line: 18, baseType: !493)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !575, file: !14, line: 1193, baseType: !306, size: 8, offset: 160)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !575, file: !14, line: 1194, baseType: !394, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !575, file: !14, line: 1195, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !214, line: 52, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !378, line: 88, baseType: !171)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !575, file: !14, line: 1196, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !589)
!589 = !{!590, !591, !592, !599, !603, !607, !611, !612, !613, !617, !621, !622, !623, !625, !626, !627, !628}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !14, line: 2367, baseType: !264, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !588, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !588, file: !14, line: 2376, baseType: !593, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!109, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !598, line: 32, flags: DIFlagFwdDecl)
!598 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !588, file: !14, line: 2377, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !588, file: !14, line: 2378, baseType: !604, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!459, !587, !109, !264, !215}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !588, file: !14, line: 2380, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !574}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !588, file: !14, line: 2381, baseType: !241, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !14, line: 2382, baseType: !587, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !588, file: !14, line: 2383, baseType: !614, size: 64, offset: 512)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !214, line: 194, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !614, file: !214, line: 195, baseType: !219, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !588, file: !14, line: 2385, baseType: !618, offset: 576)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !619, line: 206, elements: !620)
!619 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!620 = !{}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !588, file: !14, line: 2386, baseType: !618, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !588, file: !14, line: 2387, baseType: !618, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !588, file: !14, line: 2388, baseType: !624, offset: 576)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, elements: !345)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !588, file: !14, line: 2390, baseType: !618, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !588, file: !14, line: 2391, baseType: !618, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !588, file: !14, line: 2392, baseType: !618, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !588, file: !14, line: 2393, baseType: !618, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !575, file: !14, line: 1197, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !633)
!633 = !{!634, !638, !642, !643, !647, !653, !657, !658, !659, !663, !667, !671, !672, !673, !679, !684, !685, !692, !693, !694, !695, !699, !703, !771, !786, !787}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !632, file: !14, line: 2058, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!424, !574}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !632, file: !14, line: 2059, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !424}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !632, file: !14, line: 2060, baseType: !639, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !632, file: !14, line: 2062, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !424, !109}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !632, file: !14, line: 2063, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!109, !424, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !632, file: !14, line: 2064, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!109, !424}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !632, file: !14, line: 2065, baseType: !639, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !632, file: !14, line: 2066, baseType: !608, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !632, file: !14, line: 2067, baseType: !660, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!109, !574, !109}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !632, file: !14, line: 2068, baseType: !664, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!109, !574, !13}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !632, file: !14, line: 2069, baseType: !668, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!109, !574}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !632, file: !14, line: 2070, baseType: !664, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !632, file: !14, line: 2071, baseType: !668, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !632, file: !14, line: 2072, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!109, !459, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !632, file: !14, line: 2073, baseType: !680, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!109, !574, !683, !344}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !632, file: !14, line: 2074, baseType: !608, size: 64, offset: 960)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !632, file: !14, line: 2076, baseType: !686, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!109, !689, !459}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !691, line: 66, flags: DIFlagFwdDecl)
!691 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !632, file: !14, line: 2077, baseType: !686, size: 64, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !632, file: !14, line: 2078, baseType: !686, size: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !632, file: !14, line: 2079, baseType: !686, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !632, file: !14, line: 2081, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!376, !574, !109, !344, !391, !584}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !632, file: !14, line: 2082, baseType: !700, size: 64, offset: 1344)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!376, !574, !109, !264, !391, !584}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !632, file: !14, line: 2083, baseType: !704, size: 64, offset: 1408)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!707, !424}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !735, !736, !737, !738, !754, !755, !756}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !709, file: !19, line: 297, baseType: !220, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !709, file: !19, line: 298, baseType: !246, size: 128, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !709, file: !19, line: 299, baseType: !246, size: 128, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !709, file: !19, line: 300, baseType: !246, size: 128, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !709, file: !19, line: 301, baseType: !716, size: 256, offset: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !717, line: 66, size: 256, elements: !718)
!717 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!718 = !{!719, !727, !729, !734}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !716, file: !717, line: 67, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !721, line: 13, baseType: !722)
!721 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !214, line: 181, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 179, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !723, file: !214, line: 180, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !304, line: 22, baseType: !169)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !716, file: !717, line: 68, baseType: !728, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !284, line: 23, baseType: !283)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !716, file: !717, line: 70, baseType: !730, size: 32, offset: 96)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !731, line: 15, size: 32, elements: !732)
!731 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !730, file: !731, line: 20, baseType: !295, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !716, file: !717, line: 72, baseType: !246, size: 128, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !709, file: !19, line: 302, baseType: !275, size: 32, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !709, file: !19, line: 303, baseType: !295, size: 32, offset: 800)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !709, file: !19, line: 304, baseType: !574, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !709, file: !19, line: 305, baseType: !739, size: 64, offset: 896)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !740)
!740 = !{!741, !753}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !19, line: 69, baseType: !742, size: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !19, line: 69, size: 32, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !742, file: !19, line: 70, baseType: !430, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !742, file: !19, line: 71, baseType: !439, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !742, file: !19, line: 72, baseType: !747, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !748, line: 24, baseType: !749)
!748 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 22, size: 32, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !749, file: !748, line: 23, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !748, line: 20, baseType: !436)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !709, file: !19, line: 306, baseType: !584, size: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !709, file: !19, line: 307, baseType: !394, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !709, file: !19, line: 308, baseType: !757, size: 576, offset: 1088)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !758)
!758 = !{!759, !761, !762, !763, !764, !765, !766, !767, !770}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !757, file: !19, line: 206, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !171)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !757, file: !19, line: 207, baseType: !760, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !757, file: !19, line: 208, baseType: !760, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !757, file: !19, line: 209, baseType: !760, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !757, file: !19, line: 210, baseType: !760, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !757, file: !19, line: 211, baseType: !760, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !757, file: !19, line: 212, baseType: !760, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !757, file: !19, line: 213, baseType: !768, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !769, line: 8, baseType: !169)
!769 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !757, file: !19, line: 214, baseType: !768, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !632, file: !14, line: 2085, baseType: !772, size: 64, offset: 1472)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!380, !574, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !777, line: 15, size: 256, elements: !778)
!777 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!778 = !{!779, !780, !781, !782, !783}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !776, file: !777, line: 16, baseType: !213, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !776, file: !777, line: 19, baseType: !109, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !776, file: !777, line: 26, baseType: !394, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !776, file: !777, line: 33, baseType: !394, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !776, file: !777, line: 36, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !46, line: 33, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !632, file: !14, line: 2087, baseType: !772, size: 64, offset: 1536)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !632, file: !14, line: 2089, baseType: !608, size: 64, offset: 1600)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !575, file: !14, line: 1198, baseType: !789, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !792)
!792 = !{!793, !797, !801, !805, !806, !807, !808, !809, !814, !819, !823}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !791, file: !19, line: 325, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!109, !708}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !791, file: !19, line: 326, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!708, !574, !109}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !791, file: !19, line: 327, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !708}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !791, file: !19, line: 328, baseType: !794, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !791, file: !19, line: 329, baseType: !794, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !791, file: !19, line: 330, baseType: !794, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !791, file: !19, line: 331, baseType: !660, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !791, file: !19, line: 334, baseType: !810, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!813, !424}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !791, file: !19, line: 335, baseType: !815, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!109, !424, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !791, file: !19, line: 337, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!109, !424, !813}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !791, file: !19, line: 339, baseType: !824, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!109, !574, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !575, file: !14, line: 1199, baseType: !829, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !832)
!832 = !{!833, !844, !845, !849, !850, !851, !866, !889, !893, !894, !917}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !831, file: !19, line: 431, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!109, !574, !109, !109, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !840, line: 8, size: 128, elements: !841)
!840 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !839, file: !840, line: 9, baseType: !568, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !839, file: !840, line: 10, baseType: !459, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !831, file: !19, line: 432, baseType: !660, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !831, file: !19, line: 433, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!109, !574, !7}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !831, file: !19, line: 434, baseType: !846, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !831, file: !19, line: 435, baseType: !660, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !831, file: !19, line: 436, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!109, !574, !109, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !856, file: !19, line: 418, baseType: !109, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !856, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !856, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !856, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !856, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !856, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !856, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !856, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !831, file: !19, line: 437, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!109, !574, !739, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !871, file: !19, line: 346, baseType: !109, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !871, file: !19, line: 347, baseType: !496, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !871, file: !19, line: 348, baseType: !496, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !871, file: !19, line: 349, baseType: !496, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !871, file: !19, line: 350, baseType: !496, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !871, file: !19, line: 351, baseType: !496, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !871, file: !19, line: 352, baseType: !496, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !871, file: !19, line: 353, baseType: !726, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !871, file: !19, line: 355, baseType: !726, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !871, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !871, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !871, file: !19, line: 358, baseType: !496, size: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !871, file: !19, line: 359, baseType: !496, size: 64, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !871, file: !19, line: 360, baseType: !496, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !871, file: !19, line: 361, baseType: !726, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !871, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !831, file: !19, line: 438, baseType: !890, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!109, !574, !827, !870}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !831, file: !19, line: 440, baseType: !867, size: 64, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !831, file: !19, line: 441, baseType: !895, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!109, !574, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !899, file: !19, line: 412, baseType: !7, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !899, file: !19, line: 413, baseType: !903, size: 1344, offset: 64)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 1344, elements: !345)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914, !916}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !19, line: 398, baseType: !7, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !904, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !904, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !904, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !904, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !904, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !904, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !904, file: !19, line: 406, baseType: !498, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !904, file: !19, line: 407, baseType: !915, size: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !214, line: 132, baseType: !496)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !904, file: !19, line: 408, baseType: !915, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !831, file: !19, line: 442, baseType: !846, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !575, file: !14, line: 1200, baseType: !919, size: 64, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !575, file: !14, line: 1201, baseType: !394, size: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !575, file: !14, line: 1202, baseType: !394, size: 64, offset: 704)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !575, file: !14, line: 1203, baseType: !394, size: 64, offset: 768)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !575, file: !14, line: 1204, baseType: !459, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !575, file: !14, line: 1205, baseType: !927, size: 320, offset: 896)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !928, line: 48, size: 320, elements: !929)
!928 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!929 = !{!930, !931, !932, !933, !934}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !927, file: !928, line: 49, baseType: !720, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !927, file: !928, line: 55, baseType: !720, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !927, file: !928, line: 57, baseType: !730, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !927, file: !928, line: 59, baseType: !728, size: 32, offset: 160)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !927, file: !928, line: 60, baseType: !246, size: 128, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !575, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !575, file: !14, line: 1207, baseType: !295, size: 32, offset: 1248)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !575, file: !14, line: 1209, baseType: !215, size: 64, offset: 1280)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !575, file: !14, line: 1211, baseType: !939, size: 64, offset: 1344)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !575, file: !14, line: 1223, baseType: !944, size: 64, offset: 1408)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !476, line: 34, size: 64, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !944, file: !476, line: 35, baseType: !479, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !575, file: !14, line: 1224, baseType: !246, size: 128, offset: 1472)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !575, file: !14, line: 1225, baseType: !949, size: 64, offset: 1600)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !575, file: !14, line: 1226, baseType: !952, size: 64, offset: 1664)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !575, file: !14, line: 1227, baseType: !955, size: 64, offset: 1728)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !575, file: !14, line: 1228, baseType: !958, size: 64, offset: 1792)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !575, file: !14, line: 1229, baseType: !220, size: 128, offset: 1856)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !575, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !575, file: !14, line: 1231, baseType: !963, size: 2496, offset: 2048)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !964)
!964 = !{!965, !966, !967, !969, !1001}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !19, line: 522, baseType: !7, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !963, file: !19, line: 523, baseType: !927, size: 320, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !963, file: !19, line: 524, baseType: !968, size: 192, offset: 384)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !345)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !963, file: !19, line: 525, baseType: !970, size: 1728, offset: 576)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 1728, elements: !345)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !972)
!972 = !{!973, !993, !994, !995, !996, !997, !998, !999, !1000}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !971, file: !19, line: 223, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !976)
!976 = !{!977, !978, !991, !992}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !975, file: !19, line: 446, baseType: !109, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !975, file: !19, line: 447, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !981, file: !19, line: 313, baseType: !660, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !981, file: !19, line: 314, baseType: !660, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !981, file: !19, line: 315, baseType: !660, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !981, file: !19, line: 316, baseType: !660, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !981, file: !19, line: 317, baseType: !794, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !981, file: !19, line: 318, baseType: !794, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !981, file: !19, line: 319, baseType: !794, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !981, file: !19, line: 320, baseType: !824, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !975, file: !19, line: 448, baseType: !241, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !975, file: !19, line: 449, baseType: !974, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !971, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !971, file: !19, line: 226, baseType: !246, size: 128, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !971, file: !19, line: 227, baseType: !394, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !971, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !971, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !971, file: !19, line: 230, baseType: !760, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !971, file: !19, line: 231, baseType: !760, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !971, file: !19, line: 232, baseType: !215, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !963, file: !19, line: 526, baseType: !1002, size: 192, offset: 2304)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 192, elements: !345)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !575, file: !14, line: 1233, baseType: !1004, size: 2368, offset: 4544)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1004, file: !14, line: 1185, baseType: !314, size: 16)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1004, file: !14, line: 1186, baseType: !314, size: 16, offset: 16)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1004, file: !14, line: 1187, baseType: !1009, size: 2304, offset: 64)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 2304, elements: !345)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1011, line: 12, size: 768, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1012 = !{!1013, !1035, !1037, !3246, !3247}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1010, file: !1011, line: 13, baseType: !1014, size: 384)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1015, line: 17, size: 384, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1016 = !{!1017, !1018, !1019, !1026}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1014, file: !1015, line: 18, baseType: !109, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1014, file: !1015, line: 19, baseType: !109, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1014, file: !1015, line: 20, baseType: !1020, size: 192, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1021, line: 41, baseType: !1022)
!1021 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1021, line: 37, size: 192, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1022, file: !1021, line: 38, baseType: !275, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1022, file: !1021, line: 39, baseType: !246, size: 128, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1014, file: !1015, line: 22, baseType: !1027, size: 128, align: 64, offset: 256)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !214, line: 232, size: 128, align: 64, elements: !1028)
!1028 = !{!1029, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1027, file: !214, line: 233, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1027, file: !214, line: 234, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !1030}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1010, file: !1011, line: 14, baseType: !1036, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1010, file: !1011, line: 15, baseType: !1038, size: 64, offset: 448)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1039, line: 16, size: 64, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1038, file: !1039, line: 17, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !691, line: 746, size: 58368, elements: !1044)
!1044 = !{!1045, !1053, !1054, !1055, !1061, !1062, !1063, !1064, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1142, !1153, !1248, !1252, !1255, !1286, !1287, !1288, !1289, !1300, !1302, !1303, !1304, !1305, !1306, !1307, !1318, !1319, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1336, !1337, !1344, !1345, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2406, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2421, !2422, !2423, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2455, !2461, !2462, !2463, !2464, !2465, !2469, !2472, !2479, !2484, !2487, !2490, !2493, !2496, !2634, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2674, !2675, !2676, !2685, !2693, !2694, !2695, !2696, !2697, !2702, !2703, !2704, !2707, !2708, !2711, !2714, !2717, !2725, !2728, !2729, !2815, !2816, !2817, !2818, !2819, !2825, !2826, !2827, !2828, !2831, !2832, !2835, !2838, !2839, !2842, !2843, !2844, !2847, !2848, !2849, !2850, !2851, !2852, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2884, !2885, !2891, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2903, !2975, !2977, !2978, !2979, !2980, !2981, !2993, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3023, !3024, !3025}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1043, file: !691, line: 752, baseType: !1046, size: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1047, line: 56, size: 192, elements: !1048)
!1047 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1048 = !{!1049, !1050, !1051, !1052}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !1047, line: 57, baseType: !394, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1046, file: !1047, line: 58, baseType: !394, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1046, file: !1047, line: 59, baseType: !493, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1046, file: !1047, line: 61, baseType: !493, size: 32, offset: 160)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1043, file: !691, line: 754, baseType: !7, size: 32, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1043, file: !691, line: 767, baseType: !215, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1043, file: !691, line: 768, baseType: !1056, size: 32, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1057, line: 113, baseType: !1058)
!1057 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1057, line: 111, size: 32, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1058, file: !1057, line: 112, baseType: !295, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !691, line: 770, baseType: !7, size: 32, offset: 352)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1043, file: !691, line: 771, baseType: !7, size: 32, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1043, file: !691, line: 774, baseType: !109, size: 32, offset: 416)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1043, file: !691, line: 775, baseType: !1065, size: 128, offset: 448)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1066, line: 58, size: 128, elements: !1067)
!1066 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1067 = !{!1068, !1074, !1079, !1080}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1065, file: !1066, line: 59, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1070, line: 60, size: 64, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1069, file: !1070, line: 61, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !1066, line: 60, baseType: !1075, size: 32, offset: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !1066, line: 60, size: 32, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1075, file: !1066, line: 61, baseType: !7, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1075, file: !1066, line: 62, baseType: !295, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1065, file: !1066, line: 65, baseType: !312, size: 16, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1065, file: !1066, line: 65, baseType: !312, size: 16, offset: 112)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1043, file: !691, line: 776, baseType: !7, size: 32, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1043, file: !691, line: 777, baseType: !394, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1043, file: !691, line: 778, baseType: !1042, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1043, file: !691, line: 787, baseType: !109, size: 32, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1043, file: !691, line: 788, baseType: !109, size: 32, offset: 800)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1043, file: !691, line: 790, baseType: !109, size: 32, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1043, file: !691, line: 792, baseType: !109, size: 32, offset: 864)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1043, file: !691, line: 793, baseType: !109, size: 32, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1043, file: !691, line: 794, baseType: !109, size: 32, offset: 928)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1043, file: !691, line: 795, baseType: !7, size: 32, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1043, file: !691, line: 797, baseType: !1092, size: 2048, offset: 1024)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !691, line: 551, size: 2048, elements: !1093)
!1093 = !{!1094, !1099, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1121, !1124, !1125, !1126}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1092, file: !691, line: 553, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !691, line: 411, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1095, file: !691, line: 412, baseType: !394, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1095, file: !691, line: 413, baseType: !493, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1092, file: !691, line: 554, baseType: !1100, size: 192, align: 64, offset: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1101, line: 5, size: 192, align: 64, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1102 = !{!1103, !1104, !1106}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1100, file: !1101, line: 6, baseType: !394, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1100, file: !1101, line: 7, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1100, file: !1101, line: 8, baseType: !1105, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1092, file: !691, line: 555, baseType: !496, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1092, file: !691, line: 556, baseType: !496, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1092, file: !691, line: 558, baseType: !246, size: 128, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1092, file: !691, line: 559, baseType: !7, size: 32, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1092, file: !691, line: 561, baseType: !496, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1092, file: !691, line: 562, baseType: !496, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1092, file: !691, line: 563, baseType: !496, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1092, file: !691, line: 564, baseType: !496, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1092, file: !691, line: 565, baseType: !726, size: 64, offset: 896)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1092, file: !691, line: 566, baseType: !496, size: 64, offset: 960)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1092, file: !691, line: 568, baseType: !496, size: 64, offset: 1024)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1092, file: !691, line: 571, baseType: !109, size: 32, offset: 1088)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1092, file: !691, line: 572, baseType: !1120, size: 64, offset: 1152)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1092, file: !691, line: 574, baseType: !1122, size: 64, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !691, line: 49, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1092, file: !691, line: 576, baseType: !1122, size: 64, offset: 1280)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1092, file: !691, line: 578, baseType: !394, size: 64, offset: 1344)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1092, file: !691, line: 588, baseType: !1127, size: 512, align: 512, offset: 1536)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !691, line: 497, size: 512, align: 512, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1127, file: !691, line: 498, baseType: !496, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1127, file: !691, line: 499, baseType: !496, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1127, file: !691, line: 500, baseType: !496, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1127, file: !691, line: 501, baseType: !493, size: 32, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1127, file: !691, line: 502, baseType: !493, size: 32, offset: 224)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1127, file: !691, line: 503, baseType: !394, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1127, file: !691, line: 504, baseType: !394, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1127, file: !691, line: 505, baseType: !394, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1127, file: !691, line: 506, baseType: !1138, size: 64, align: 64, offset: 448)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !691, line: 445, size: 64, align: 64, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1138, file: !691, line: 446, baseType: !7, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1138, file: !691, line: 447, baseType: !7, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1043, file: !691, line: 798, baseType: !1143, size: 384, offset: 3072)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !691, line: 592, size: 384, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1143, file: !691, line: 593, baseType: !246, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1143, file: !691, line: 594, baseType: !394, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1143, file: !691, line: 595, baseType: !394, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1143, file: !691, line: 596, baseType: !7, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1143, file: !691, line: 597, baseType: !314, size: 16, offset: 288)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1143, file: !691, line: 598, baseType: !314, size: 16, offset: 304)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1143, file: !691, line: 600, baseType: !1152, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1043, file: !691, line: 799, baseType: !1154, size: 1792, offset: 3456)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !691, line: 610, size: 1792, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1245, !1246}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1154, file: !691, line: 611, baseType: !1100, size: 192, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1154, file: !691, line: 618, baseType: !496, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1154, file: !691, line: 619, baseType: !496, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1154, file: !691, line: 620, baseType: !496, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1154, file: !691, line: 621, baseType: !496, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1154, file: !691, line: 622, baseType: !496, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1154, file: !691, line: 629, baseType: !726, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1154, file: !691, line: 630, baseType: !496, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !691, line: 631, baseType: !7, size: 32, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1154, file: !691, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1154, file: !691, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1154, file: !691, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1154, file: !691, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1154, file: !691, line: 662, baseType: !1170, size: 512, offset: 704)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1171)
!1171 = !{!1172, !1180, !1181, !1186, !1241, !1242, !1243, !1244}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1170, file: !25, line: 119, baseType: !1173, size: 256)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1174, line: 9, size: 256, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1173, file: !1174, line: 10, baseType: !1100, size: 192, align: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1173, file: !1174, line: 11, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1179, line: 29, baseType: !726)
!1179 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1170, file: !25, line: 120, baseType: !1178, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1170, file: !25, line: 121, baseType: !1182, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!24, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1170, file: !25, line: 122, baseType: !1187, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1189)
!1189 = !{!1190, !1215, !1216, !1219, !1224, !1225, !1236, !1240}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1188, file: !25, line: 160, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1192, file: !25, line: 216, baseType: !728, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1192, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1192, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1192, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1192, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1192, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1192, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1192, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1192, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1192, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1192, file: !25, line: 227, baseType: !314, size: 16, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1192, file: !25, line: 228, baseType: !314, size: 16, offset: 208)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1192, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1192, file: !25, line: 235, baseType: !1178, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1192, file: !25, line: 236, baseType: !1185, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1192, file: !25, line: 237, baseType: !1178, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1192, file: !25, line: 238, baseType: !1185, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1192, file: !25, line: 239, baseType: !1212, size: 4096, align: 512, offset: 512)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 4096, align: 512, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 8)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1188, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1188, file: !25, line: 162, baseType: !1217, size: 32, offset: 96)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !214, line: 32, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !378, line: 96, baseType: !109)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1188, file: !25, line: 163, baseType: !1220, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !466, line: 274, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !466, line: 274, size: 32, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1221, file: !466, line: 274, baseType: !470, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1188, file: !25, line: 164, baseType: !1185, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1188, file: !25, line: 165, baseType: !1226, size: 128, offset: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1174, line: 14, size: 128, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1226, file: !1174, line: 15, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1101, line: 26, size: 128, elements: !1230)
!1230 = !{!1231, !1235}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1229, file: !1101, line: 27, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1101, line: 12, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1232, file: !1101, line: 13, baseType: !1105, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1229, file: !1101, line: 28, baseType: !1105, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1188, file: !25, line: 166, baseType: !1237, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1178}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1188, file: !25, line: 167, baseType: !1178, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1170, file: !25, line: 123, baseType: !303, size: 8, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1170, file: !25, line: 124, baseType: !303, size: 8, offset: 456)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1170, file: !25, line: 125, baseType: !303, size: 8, offset: 464)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1170, file: !25, line: 126, baseType: !303, size: 8, offset: 472)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1154, file: !691, line: 671, baseType: !1170, size: 512, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1154, file: !691, line: 679, baseType: !1247, size: 64, offset: 1728)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1043, file: !691, line: 800, baseType: !1249, size: 64, offset: 5248)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !691, line: 800, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1043, file: !691, line: 809, baseType: !1253, size: 64, offset: 5312)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !691, line: 70, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1043, file: !691, line: 825, baseType: !1256, size: 2048, align: 512, offset: 5632)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !691, line: 509, size: 2048, align: 512, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1256, file: !691, line: 511, baseType: !496, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1256, file: !691, line: 512, baseType: !496, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1256, file: !691, line: 513, baseType: !496, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1256, file: !691, line: 514, baseType: !496, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1256, file: !691, line: 515, baseType: !496, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1256, file: !691, line: 516, baseType: !496, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1256, file: !691, line: 518, baseType: !496, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1256, file: !691, line: 519, baseType: !496, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1256, file: !691, line: 520, baseType: !726, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1256, file: !691, line: 522, baseType: !496, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1256, file: !691, line: 523, baseType: !496, size: 64, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1256, file: !691, line: 524, baseType: !726, size: 64, offset: 704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1256, file: !691, line: 526, baseType: !726, size: 64, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1256, file: !691, line: 527, baseType: !496, size: 64, offset: 832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1256, file: !691, line: 529, baseType: !496, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1256, file: !691, line: 530, baseType: !496, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1256, file: !691, line: 531, baseType: !496, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1256, file: !691, line: 532, baseType: !496, size: 64, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1256, file: !691, line: 533, baseType: !496, size: 64, offset: 1152)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1256, file: !691, line: 535, baseType: !496, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1256, file: !691, line: 536, baseType: !496, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1256, file: !691, line: 537, baseType: !496, size: 64, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1256, file: !691, line: 538, baseType: !496, size: 64, offset: 1408)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1256, file: !691, line: 539, baseType: !496, size: 64, offset: 1472)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1256, file: !691, line: 540, baseType: !496, size: 64, offset: 1536)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1256, file: !691, line: 541, baseType: !496, size: 64, offset: 1600)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1256, file: !691, line: 542, baseType: !496, size: 64, offset: 1664)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1256, file: !691, line: 543, baseType: !496, size: 64, offset: 1728)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1043, file: !691, line: 833, baseType: !7, size: 32, offset: 7680)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1043, file: !691, line: 836, baseType: !7, size: 32, offset: 7712)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1043, file: !691, line: 837, baseType: !109, size: 32, offset: 7744)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1043, file: !691, line: 838, baseType: !1290, size: 64, offset: 7808)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1293, line: 19, baseType: !1294)
!1293 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1293, line: 19, size: 64, elements: !1295)
!1295 = !{!1296}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1294, file: !1293, line: 19, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 64, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 1)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1043, file: !691, line: 839, baseType: !1301, size: 64, offset: 7872)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1043, file: !691, line: 840, baseType: !1292, size: 64, offset: 7936)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1043, file: !691, line: 841, baseType: !215, size: 64, offset: 8000)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1043, file: !691, line: 843, baseType: !314, size: 16, offset: 8064)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1043, file: !691, line: 845, baseType: !314, size: 16, offset: 8080)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1043, file: !691, line: 848, baseType: !109, size: 32, offset: 8096)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1043, file: !691, line: 849, baseType: !1308, size: 32, offset: 8128)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !691, line: 718, size: 32, elements: !1309)
!1309 = !{!1310, !1317}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1308, file: !691, line: 724, baseType: !1311, size: 32)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !691, line: 719, size: 32, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1311, file: !691, line: 720, baseType: !303, size: 8)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1311, file: !691, line: 721, baseType: !303, size: 8, offset: 8)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1311, file: !691, line: 722, baseType: !303, size: 8, offset: 16)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1311, file: !691, line: 723, baseType: !303, size: 8, offset: 24)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1308, file: !691, line: 725, baseType: !493, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1043, file: !691, line: 850, baseType: !246, size: 128, offset: 8192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1043, file: !691, line: 851, baseType: !1320, size: 64, offset: 8320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !691, line: 60, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1043, file: !691, line: 855, baseType: !394, size: 64, offset: 8384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1043, file: !691, line: 856, baseType: !303, size: 8, offset: 8448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1043, file: !691, line: 857, baseType: !303, size: 8, offset: 8456)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1043, file: !691, line: 858, baseType: !109, size: 32, offset: 8480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1043, file: !691, line: 859, baseType: !246, size: 128, offset: 8512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1043, file: !691, line: 860, baseType: !109, size: 32, offset: 8640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1043, file: !691, line: 861, baseType: !246, size: 128, offset: 8704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1043, file: !691, line: 873, baseType: !1330, size: 256, offset: 8832)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !691, line: 376, size: 256, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1330, file: !691, line: 381, baseType: !394, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1330, file: !691, line: 384, baseType: !498, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1330, file: !691, line: 389, baseType: !498, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1330, file: !691, line: 392, baseType: !498, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1043, file: !691, line: 875, baseType: !246, size: 128, offset: 9088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1043, file: !691, line: 877, baseType: !1338, size: 320, offset: 9216)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1339, line: 86, size: 320, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1338, file: !1339, line: 87, baseType: !109, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1338, file: !1339, line: 88, baseType: !246, size: 128, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1338, file: !1339, line: 89, baseType: !246, size: 128, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1043, file: !691, line: 878, baseType: !1100, size: 192, align: 64, offset: 9536)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1043, file: !691, line: 881, baseType: !1346, size: 64, offset: 9728)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !1348)
!1348 = !{!1349, !2320}
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !46, line: 734, baseType: !1350, size: 10240)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !46, line: 734, size: 10240, elements: !1351)
!1351 = !{!1352, !1356, !1369, !2184, !2185, !2186, !2187, !2188, !2189, !2196, !2197, !2198, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2237, !2239, !2242, !2289, !2290, !2291, !2294, !2295, !2296, !2299, !2300, !2301, !2307, !2308}
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !46, line: 739, baseType: !1353, size: 512, align: 512)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !46, line: 739, size: 512, align: 512, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1353, file: !46, line: 747, baseType: !295, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1350, file: !46, line: 750, baseType: !1357, size: 128, offset: 512)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1358, line: 218, size: 128, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1359 = !{!1360, !1367, !1368}
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 219, baseType: !1361, size: 32)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 219, size: 32, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1361, file: !1358, line: 220, baseType: !275, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1361, file: !1358, line: 221, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1358, line: 197, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1358, line: 197, elements: !620)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1357, file: !1358, line: 223, baseType: !7, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1357, file: !1358, line: 224, baseType: !215, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1350, file: !46, line: 752, baseType: !1370, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!394, !1373, !394, !394, !394, !394}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1375)
!1375 = !{!1376, !1382, !1383, !1385, !1386, !1387, !1388, !1389, !1439, !1634, !1643, !1644, !1645, !2174, !2175, !2176, !2177, !2179, !2180, !2183}
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !14, line: 995, baseType: !1377, size: 128)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !14, line: 995, size: 128, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1377, file: !14, line: 996, baseType: !1069, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1377, file: !14, line: 997, baseType: !1027, size: 128, align: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1377, file: !14, line: 998, baseType: !7, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1374, file: !14, line: 1005, baseType: !275, size: 32, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1374, file: !14, line: 1006, baseType: !1384, size: 32, offset: 160)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !214, line: 156, baseType: !7)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1374, file: !14, line: 1007, baseType: !720, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1374, file: !14, line: 1008, baseType: !716, size: 256, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1374, file: !14, line: 1009, baseType: !584, size: 64, offset: 512)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1374, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1374, file: !14, line: 1011, baseType: !1390, size: 256, offset: 640)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1391)
!1391 = !{!1392, !1413, !1435, !1436, !1437, !1438}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1390, file: !14, line: 949, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1394, line: 34, baseType: !1395)
!1394 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1394, line: 25, size: 64, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1395, file: !1394, line: 26, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1399, line: 27, baseType: !1400)
!1399 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1399, line: 13, size: 64, elements: !1401)
!1401 = !{!1402, !1412}
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1399, line: 14, baseType: !1403, size: 32)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1399, line: 14, size: 32, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1403, file: !1399, line: 15, baseType: !295, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !1399, line: 16, baseType: !1407, size: 32)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !1399, line: 16, size: 32, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1407, file: !1399, line: 18, baseType: !303, size: 8)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1407, file: !1399, line: 19, baseType: !1411, size: 24, offset: 8)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 24, elements: !345)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1400, file: !1399, line: 26, baseType: !287, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1390, file: !14, line: 950, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1422, !1423, !1424, !1425}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1415, file: !30, line: 61, baseType: !1056, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1415, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1415, file: !30, line: 63, baseType: !275, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1415, file: !30, line: 65, baseType: !1421, size: 256, offset: 128)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 256, elements: !185)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1415, file: !30, line: 66, baseType: !614, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1415, file: !30, line: 68, baseType: !1020, size: 192, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1415, file: !30, line: 69, baseType: !1027, size: 128, align: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1415, file: !30, line: 70, baseType: !1426, offset: 768)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1427, elements: !1433)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1427, file: !30, line: 55, baseType: !109, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1427, file: !30, line: 56, baseType: !1431, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1433 = !{!1434}
!1434 = !DISubrange(count: -1)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1390, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1390, file: !14, line: 952, baseType: !430, size: 32, offset: 160)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1390, file: !14, line: 952, baseType: !430, size: 32, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1390, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1374, file: !14, line: 1012, baseType: !1440, size: 64, offset: 896)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1443, line: 110, size: 1472, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1461, !1462, !1463, !1464, !1465, !1466, !1579, !1580, !1581, !1582, !1583, !1614, !1617, !1621, !1629}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1442, file: !1443, line: 111, baseType: !720, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1442, file: !1443, line: 112, baseType: !430, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1442, file: !1443, line: 113, baseType: !439, size: 32, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1442, file: !1443, line: 114, baseType: !430, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1442, file: !1443, line: 115, baseType: !439, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1442, file: !1443, line: 116, baseType: !430, size: 32, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1442, file: !1443, line: 117, baseType: !439, size: 32, offset: 224)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1442, file: !1443, line: 118, baseType: !430, size: 32, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1442, file: !1443, line: 119, baseType: !439, size: 32, offset: 288)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1442, file: !1443, line: 120, baseType: !7, size: 32, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1442, file: !1443, line: 121, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1457, line: 24, baseType: !1458)
!1457 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1457, line: 24, size: 64, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1458, file: !1457, line: 24, baseType: !496, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1442, file: !1443, line: 122, baseType: !1456, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1442, file: !1443, line: 123, baseType: !1456, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1442, file: !1443, line: 124, baseType: !1456, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1442, file: !1443, line: 125, baseType: !1456, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1442, file: !1443, line: 127, baseType: !306, size: 8, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1442, file: !1443, line: 129, baseType: !1467, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1469, line: 195, size: 1728, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1470 = !{!1471, !1472, !1477, !1482, !1483, !1486, !1487, !1492, !1493, !1494, !1495, !1498, !1499, !1500, !1502, !1503, !1543, !1564}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1468, file: !1469, line: 196, baseType: !1056, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1468, file: !1469, line: 197, baseType: !1473, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1469, line: 28, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !214, line: 104, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !304, line: 20, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !170, line: 26, baseType: !109)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 198, baseType: !1478, size: 192, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 198, size: 192, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1478, file: !1469, line: 199, baseType: !246, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1478, file: !1469, line: 200, baseType: !1100, size: 192, align: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1468, file: !1469, line: 205, baseType: !927, size: 320, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1468, file: !1469, line: 206, baseType: !1484, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1469, line: 206, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1468, file: !1469, line: 207, baseType: !215, size: 64, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 208, baseType: !1488, size: 64, offset: 704)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 208, size: 64, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1488, file: !1469, line: 209, baseType: !768, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1488, file: !1469, line: 210, baseType: !768, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1468, file: !1469, line: 212, baseType: !768, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1468, file: !1469, line: 213, baseType: !430, size: 32, offset: 832)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1468, file: !1469, line: 214, baseType: !439, size: 32, offset: 864)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1468, file: !1469, line: 215, baseType: !1496, size: 32, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1469, line: 31, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !214, line: 110, baseType: !493)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1468, file: !1469, line: 216, baseType: !314, size: 16, offset: 928)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1468, file: !1469, line: 217, baseType: !314, size: 16, offset: 944)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1468, file: !1469, line: 221, baseType: !1501, size: 16, offset: 960)
!1501 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !1469, line: 228, baseType: !394, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 245, baseType: !1504, size: 320, offset: 1088)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 245, size: 320, elements: !1505)
!1505 = !{!1506, !1535}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1504, file: !1469, line: 246, baseType: !1507, size: 320)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1469, line: 114, size: 320, elements: !1508)
!1508 = !{!1509, !1510, !1522, !1525, !1534}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1507, file: !1469, line: 116, baseType: !394, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1469, line: 117, baseType: !1511, size: 64, offset: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1469, line: 117, size: 64, elements: !1512)
!1512 = !{!1513, !1521}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1469, line: 118, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1469, line: 118, size: 64, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1514, file: !1469, line: 120, baseType: !312, size: 16)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1514, file: !1469, line: 121, baseType: !1518, size: 48, offset: 16)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 48, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 6)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1511, file: !1469, line: 127, baseType: !394, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1507, file: !1469, line: 129, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1469, line: 102, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1507, file: !1469, line: 130, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1469, line: 108, size: 192, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1527, file: !1469, line: 109, baseType: !1027, size: 128, align: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1527, file: !1469, line: 110, baseType: !1056, size: 32, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1527, file: !1469, line: 111, baseType: !1532, size: 8, offset: 160)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !214, line: 35, baseType: !1533)
!1533 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1507, file: !1469, line: 131, baseType: !264, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1469, line: 247, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !1469, line: 247, size: 320, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !1542}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1536, file: !1469, line: 248, baseType: !394, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1536, file: !1469, line: 249, baseType: !394, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1536, file: !1469, line: 250, baseType: !1523, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1536, file: !1469, line: 251, baseType: !1526, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1536, file: !1469, line: 252, baseType: !344, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 260, baseType: !1544, size: 256, offset: 1408)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 260, size: 256, elements: !1545)
!1545 = !{!1546, !1552}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1544, file: !1469, line: 261, baseType: !1547, size: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1469, line: 134, size: 256, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1547, file: !1469, line: 135, baseType: !215, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1547, file: !1469, line: 136, baseType: !1551, size: 256)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !185)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1469, line: 262, baseType: !1553, size: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1544, file: !1469, line: 262, size: 256, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1553, file: !1469, line: 264, baseType: !246, size: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1553, file: !1469, line: 265, baseType: !1557, size: 128, offset: 128)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1558, line: 22, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1559 = !{!1560, !1563}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1557, file: !1558, line: 23, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1558, line: 23, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1557, file: !1558, line: 24, baseType: !394, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1468, file: !1469, line: 280, baseType: !1565, size: 64, offset: 1664)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1469, line: 176, size: 192, elements: !1567)
!1567 = !{!1568, !1577, !1578}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1566, file: !1469, line: 177, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1469, line: 171, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!109, !1467, !1573, !1575, !1467}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1566, file: !1469, line: 178, baseType: !1467, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1566, file: !1469, line: 179, baseType: !1523, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1442, file: !1443, line: 130, baseType: !1467, size: 64, offset: 832)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1442, file: !1443, line: 131, baseType: !1467, size: 64, offset: 896)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1442, file: !1443, line: 132, baseType: !1467, size: 64, offset: 960)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1442, file: !1443, line: 135, baseType: !215, size: 64, offset: 1024)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1442, file: !1443, line: 137, baseType: !1584, size: 64, offset: 1088)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1586, line: 14, size: 1088, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1587 = !{!1588, !1589, !1598, !1599, !1600, !1601, !1602, !1603}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1585, file: !1586, line: 15, baseType: !1056, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1585, file: !1586, line: 17, baseType: !1590, size: 320, offset: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1591, line: 22, size: 320, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1592 = !{!1593, !1594, !1595, !1596}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !1591, line: 23, baseType: !728, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1590, file: !1591, line: 24, baseType: !726, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1590, file: !1591, line: 26, baseType: !246, size: 128, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1590, file: !1591, line: 28, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1585, file: !1586, line: 19, baseType: !394, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1585, file: !1586, line: 20, baseType: !720, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1585, file: !1586, line: 23, baseType: !220, size: 128, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1585, file: !1586, line: 24, baseType: !430, size: 32, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1585, file: !1586, line: 29, baseType: !720, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1585, file: !1586, line: 36, baseType: !1604, size: 320, offset: 768)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1605, line: 15, size: 320, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1604, file: !1605, line: 16, baseType: !728, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1604, file: !1605, line: 18, baseType: !109, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1604, file: !1605, line: 19, baseType: !109, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1604, file: !1605, line: 20, baseType: !109, size: 32, offset: 96)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1604, file: !1605, line: 21, baseType: !109, size: 32, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1604, file: !1605, line: 22, baseType: !394, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1604, file: !1605, line: 23, baseType: !394, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1442, file: !1443, line: 138, baseType: !1615, size: 64, offset: 1152)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !46, line: 901, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1442, file: !1443, line: 139, baseType: !1618, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1620, line: 16, flags: DIFlagFwdDecl)
!1620 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1442, file: !1443, line: 140, baseType: !1622, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1443, line: 25, size: 64, elements: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1623, file: !1443, line: 26, baseType: !295, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1623, file: !1443, line: 27, baseType: !109, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1623, file: !1443, line: 28, baseType: !1628, offset: 64)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !1433)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1443, line: 142, baseType: !1630, size: 128, offset: 1344)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !1443, line: 142, size: 128, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1630, file: !1443, line: 143, baseType: !109, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !1443, line: 144, baseType: !1027, size: 128, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1374, file: !14, line: 1013, baseType: !1635, size: 256, offset: 960)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1635, file: !14, line: 971, baseType: !394, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1635, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1635, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1635, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1635, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1635, file: !14, line: 976, baseType: !584, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1374, file: !14, line: 1014, baseType: !839, size: 128, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1374, file: !14, line: 1015, baseType: !424, size: 64, offset: 1344)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1374, file: !14, line: 1016, baseType: !1646, size: 64, offset: 1408)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1649)
!1649 = !{!1650, !1651, !1655, !1660, !1664, !2050, !2051, !2057, !2070, !2087, !2091, !2092, !2096, !2097, !2101, !2106, !2107, !2111, !2115, !2121, !2122, !2126, !2127, !2133, !2137, !2141, !2147, !2151, !2155, !2159, !2163, !2164, !2170}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1648, file: !14, line: 1915, baseType: !241, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1648, file: !14, line: 1916, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!584, !1373, !584, !109}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1648, file: !14, line: 1917, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!376, !1373, !344, !391, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1648, file: !14, line: 1918, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!376, !1373, !264, !391, !1659}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1648, file: !14, line: 1919, baseType: !1665, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!376, !1668, !1690}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1677, !1678, !1679, !1680}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1669, file: !14, line: 374, baseType: !1373, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1669, file: !14, line: 375, baseType: !584, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1669, file: !14, line: 376, baseType: !1674, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1668, !380}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1669, file: !14, line: 377, baseType: !215, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1669, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1669, file: !14, line: 379, baseType: !312, size: 16, offset: 288)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !14, line: 380, baseType: !1681, size: 64, offset: 320)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !14, line: 380, size: 64, elements: !1682)
!1682 = !{!1683, !1686}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1681, file: !14, line: 386, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1681, file: !14, line: 395, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!376, !215}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1692, line: 41, size: 320, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1704, !2045}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1691, file: !1692, line: 42, baseType: !303, size: 8)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1691, file: !1692, line: 43, baseType: !1532, size: 8, offset: 8)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1691, file: !1692, line: 44, baseType: !1532, size: 8, offset: 16)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1691, file: !1692, line: 45, baseType: !1532, size: 8, offset: 24)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1691, file: !1692, line: 46, baseType: !1532, size: 8, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1692, line: 47, baseType: !1700, size: 64, offset: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1692, line: 47, size: 64, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1700, file: !1692, line: 48, baseType: !391, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1700, file: !1692, line: 49, baseType: !109, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1692, line: 61, baseType: !1705, size: 128, offset: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1692, line: 61, size: 128, elements: !1706)
!1706 = !{!1707, !1713}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1705, file: !1692, line: 67, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1709, line: 17, size: 128, elements: !1710)
!1709 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1708, file: !1709, line: 19, baseType: !215, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1708, file: !1709, line: 20, baseType: !392, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1692, line: 68, baseType: !1714, size: 128)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !1692, line: 68, size: 128, elements: !1715)
!1715 = !{!1716, !2044}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !1692, line: 69, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !1692, line: 69, size: 64, elements: !1718)
!1718 = !{!1719, !1722, !1729, !2035, !2043}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1717, file: !1692, line: 71, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1717, file: !1692, line: 72, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1692, line: 17, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1725, file: !1692, line: 18, baseType: !215, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1725, file: !1692, line: 19, baseType: !391, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1717, file: !1692, line: 73, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1733, line: 31, size: 128, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1734 = !{!1735, !2033, !2034}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1732, file: !1733, line: 32, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !1738)
!1738 = !{!1739, !1740, !2027, !2032}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !46, line: 75, baseType: !394, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !46, line: 83, baseType: !1741, size: 320, offset: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !46, line: 83, size: 320, elements: !1742)
!1742 = !{!1743, !1764, !1778, !1782, !2026}
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !46, line: 84, baseType: !1744, size: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !46, line: 84, size: 320, elements: !1745)
!1745 = !{!1746, !1757, !1758, !1763}
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !46, line: 90, baseType: !1747, size: 128)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !46, line: 90, size: 128, elements: !1748)
!1748 = !{!1749, !1750, !1755, !1756}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1747, file: !46, line: 91, baseType: !246, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !46, line: 94, baseType: !1751, size: 128)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1747, file: !46, line: 94, size: 128, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1751, file: !46, line: 96, baseType: !215, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1751, file: !46, line: 98, baseType: !7, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1747, file: !46, line: 102, baseType: !246, size: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1747, file: !46, line: 103, baseType: !246, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1744, file: !46, line: 106, baseType: !420, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !46, line: 107, baseType: !1759, size: 64, offset: 192)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !46, line: 107, size: 64, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1759, file: !46, line: 108, baseType: !394, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1759, file: !46, line: 109, baseType: !394, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1744, file: !46, line: 117, baseType: !394, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !46, line: 119, baseType: !1765, size: 320)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !46, line: 119, size: 320, elements: !1766)
!1766 = !{!1767, !1768, !1771, !1772, !1773}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1765, file: !46, line: 124, baseType: !394, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1765, file: !46, line: 125, baseType: !1769, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1765, file: !46, line: 126, baseType: !394, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1765, file: !46, line: 127, baseType: !394, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !46, line: 128, baseType: !1774, size: 64, offset: 256)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !46, line: 128, size: 64, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1774, file: !46, line: 133, baseType: !394, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1774, file: !46, line: 138, baseType: !720, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !46, line: 141, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !46, line: 141, size: 64, elements: !1780)
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1779, file: !46, line: 142, baseType: !394, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !46, line: 144, baseType: !1783, size: 128)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !46, line: 144, size: 128, elements: !1784)
!1784 = !{!1785, !2025}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1783, file: !46, line: 146, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !1788)
!1788 = !{!1789, !1799, !1820, !1831, !1832, !1833, !1834, !2007, !2008, !2009}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1787, file: !38, line: 127, baseType: !1790, size: 384)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !1791)
!1791 = !{!1792, !1793, !1795, !1796, !1797, !1798}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1790, file: !38, line: 22, baseType: !394, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1790, file: !38, line: 23, baseType: !1794, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1790, file: !38, line: 24, baseType: !1794, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1790, file: !38, line: 25, baseType: !394, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1790, file: !38, line: 26, baseType: !394, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1790, file: !38, line: 27, baseType: !394, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1787, file: !38, line: 128, baseType: !1800, size: 128, offset: 384)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1801, line: 105, size: 128, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1800, file: !1801, line: 110, baseType: !394, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1800, file: !1801, line: 118, baseType: !1805, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1801, line: 95, size: 448, elements: !1807)
!1807 = !{!1808, !1809, !1815, !1816, !1817, !1818, !1819}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1806, file: !1801, line: 96, baseType: !720, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1806, file: !1801, line: 97, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1801, line: 60, baseType: !1812)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1806, file: !1801, line: 98, baseType: !1810, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1806, file: !1801, line: 99, baseType: !1532, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1806, file: !1801, line: 100, baseType: !1532, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1806, file: !1801, line: 101, baseType: !1027, size: 128, align: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1806, file: !1801, line: 102, baseType: !1814, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1787, file: !38, line: 129, baseType: !1821, size: 256, offset: 512)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1822, line: 26, size: 256, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1821, file: !1822, line: 27, baseType: !7, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1821, file: !1822, line: 28, baseType: !1826, size: 192, offset: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1827, line: 43, size: 192, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1826, file: !1827, line: 44, baseType: !728, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1826, file: !1827, line: 45, baseType: !246, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1787, file: !38, line: 131, baseType: !7, size: 32, offset: 800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1787, file: !38, line: 132, baseType: !394, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1787, file: !38, line: 133, baseType: !1835, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !1838)
!1838 = !{!1839, !1843, !2003}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1837, file: !38, line: 83, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1736}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1837, file: !38, line: 89, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !7)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1850, line: 512, size: 896, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1851 = !{!1852, !1970, !1971, !1978, !1985, !1995, !1996, !1997, !1999, !2001}
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1850, line: 513, baseType: !1853, size: 320)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !1850, line: 513, size: 320, elements: !1854)
!1854 = !{!1855, !1966, !1967, !1968, !1969}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1853, file: !1850, line: 514, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1858)
!1858 = !{!1859, !1868, !1869, !1877, !1884, !1885, !1890, !1891, !1896, !1897, !1900, !1959, !1960, !1961, !1962, !1963, !1964}
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !46, line: 628, baseType: !1860, size: 128)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !46, line: 628, size: 128, elements: !1861)
!1861 = !{!1862, !1867}
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !46, line: 629, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !46, line: 629, size: 128, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1863, file: !46, line: 631, baseType: !394, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1863, file: !46, line: 632, baseType: !394, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1860, file: !46, line: 635, baseType: !1027, size: 128, align: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1857, file: !46, line: 639, baseType: !1346, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1857, file: !46, line: 640, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1871, line: 297, baseType: !1872)
!1871 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1871, line: 297, size: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1872, file: !1871, line: 297, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1876, line: 19, baseType: !394)
!1876 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !46, line: 646, baseType: !1878, size: 64, offset: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !46, line: 646, size: 64, elements: !1879)
!1879 = !{!1880, !1883}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1878, file: !46, line: 647, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !394)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1878, file: !46, line: 648, baseType: !1882, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1857, file: !46, line: 666, baseType: !109, size: 32, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1857, file: !46, line: 667, baseType: !1886, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !1888)
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1887, file: !46, line: 580, baseType: !927, size: 320)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1857, file: !46, line: 670, baseType: !1532, size: 8, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1857, file: !46, line: 681, baseType: !1892, size: 256, offset: 512)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1857, file: !46, line: 678, size: 256, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1892, file: !46, line: 679, baseType: !1100, size: 192, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1892, file: !46, line: 680, baseType: !394, size: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1857, file: !46, line: 689, baseType: !246, size: 128, offset: 768)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1857, file: !46, line: 691, baseType: !1898, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1857, file: !46, line: 694, baseType: !1901, size: 64, offset: 960)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1850, line: 563, size: 1024, elements: !1904)
!1904 = !{!1905, !1909, !1910, !1914, !1918, !1922, !1923, !1927, !1931, !1935, !1936, !1937, !1941, !1945, !1951, !1955}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1903, file: !1850, line: 564, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1856}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1903, file: !1850, line: 569, baseType: !1906, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1903, file: !1850, line: 571, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!109, !1856, !394}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1903, file: !1850, line: 572, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!109, !1856}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1903, file: !1850, line: 578, baseType: !1919, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!109, !1856, !394, !394, !394}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1903, file: !1850, line: 580, baseType: !1844, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1903, file: !1850, line: 581, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1847, !1848, !7}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1903, file: !1850, line: 582, baseType: !1928, size: 64, offset: 448)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1847, !1848, !394, !394}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1903, file: !1850, line: 584, baseType: !1932, size: 64, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!394, !1856}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1903, file: !1850, line: 588, baseType: !1844, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1903, file: !1850, line: 591, baseType: !1844, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1903, file: !1850, line: 597, baseType: !1938, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!109, !1856, !394, !215, !109, !109}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1903, file: !1850, line: 603, baseType: !1942, size: 64, offset: 768)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!264, !1856}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1903, file: !1850, line: 613, baseType: !1946, size: 64, offset: 832)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!109, !1856, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !46, line: 717, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1903, file: !1850, line: 625, baseType: !1952, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1949, !1856, !394}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1903, file: !1850, line: 633, baseType: !1956, size: 64, offset: 960)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1736, !1856, !394}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1857, file: !46, line: 697, baseType: !394, size: 64, offset: 1024)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1857, file: !46, line: 699, baseType: !1373, size: 64, offset: 1088)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1857, file: !46, line: 700, baseType: !215, size: 64, offset: 1152)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1857, file: !46, line: 711, baseType: !720, size: 64, offset: 1216)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1857, file: !46, line: 717, baseType: !1949, size: 64, offset: 1280)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1857, file: !46, line: 722, baseType: !1965, offset: 1344)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !620)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1853, file: !1850, line: 515, baseType: !213, size: 32, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1853, file: !1850, line: 516, baseType: !394, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1853, file: !1850, line: 517, baseType: !394, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1853, file: !1850, line: 518, baseType: !394, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !1850, line: 520, baseType: !45, size: 32, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1849, file: !1850, line: 522, baseType: !1972, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1876, line: 22, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1876, line: 22, size: 64, elements: !1975)
!1975 = !{!1976}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1974, file: !1876, line: 22, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1876, line: 15, baseType: !394)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1849, file: !1850, line: 524, baseType: !1979, size: 64, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1871, line: 372, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1871, line: 372, size: 64, elements: !1982)
!1982 = !{!1983}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1981, file: !1871, line: 372, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1876, line: 16, baseType: !394)
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1850, line: 527, baseType: !1986, size: 64, offset: 512)
!1986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1850, line: 527, size: 64, elements: !1987)
!1987 = !{!1988, !1994}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1986, file: !1850, line: 528, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1876, line: 21, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1876, line: 21, size: 64, elements: !1991)
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1990, file: !1876, line: 21, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1876, line: 14, baseType: !394)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1986, file: !1850, line: 529, baseType: !1973, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1849, file: !1850, line: 534, baseType: !1736, size: 64, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1849, file: !1850, line: 535, baseType: !1736, size: 64, offset: 640)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1849, file: !1850, line: 541, baseType: !1998, size: 64, offset: 704)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1849, file: !1850, line: 545, baseType: !2000, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1849, file: !1850, line: 549, baseType: !2002, size: 64, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1871, line: 520, baseType: !1736)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1837, file: !38, line: 100, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!109, !1786, !394, !394, !109}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1787, file: !38, line: 134, baseType: !215, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1787, file: !38, line: 135, baseType: !109, size: 32, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !38, line: 136, baseType: !2010, size: 128, offset: 1088)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !38, line: 136, size: 128, elements: !2011)
!2011 = !{!2012, !2018}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2010, file: !38, line: 137, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2014, line: 6, size: 128, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2013, file: !2014, line: 7, baseType: !496, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2013, file: !2014, line: 8, baseType: !496, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !38, line: 138, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !38, line: 138, elements: !2020)
!2020 = !{!2021, !2023}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2019, file: !38, line: 138, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !38, line: 138, elements: !620)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2019, file: !38, line: 138, baseType: !2024)
!2024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, elements: !1433)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1783, file: !46, line: 147, baseType: !215, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1741, file: !46, line: 161, baseType: !1027, size: 128, align: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !46, line: 164, baseType: !2028, size: 32, offset: 384)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !46, line: 164, size: 32, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2028, file: !46, line: 169, baseType: !295, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2028, file: !46, line: 177, baseType: !7, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1737, file: !46, line: 181, baseType: !295, size: 32, offset: 416)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1732, file: !1733, line: 33, baseType: !7, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1732, file: !1733, line: 34, baseType: !7, size: 32, offset: 96)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1717, file: !1692, line: 74, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2038, line: 296, size: 128, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2037, file: !2038, line: 297, baseType: !275, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2037, file: !2038, line: 299, baseType: !213, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2037, file: !2038, line: 300, baseType: !215, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1717, file: !1692, line: 75, baseType: !215, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1714, file: !1692, line: 77, baseType: !391, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1692, line: 80, baseType: !2046, size: 64, offset: 256)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1692, line: 80, size: 64, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2046, file: !1692, line: 81, baseType: !394, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2046, file: !1692, line: 82, baseType: !584, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1648, file: !14, line: 1920, baseType: !1665, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1648, file: !14, line: 1921, baseType: !2052, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!109, !1668, !2055, !7}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1648, file: !14, line: 1923, baseType: !2058, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!109, !1373, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2063)
!2063 = !{!2064, !2069}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2062, file: !14, line: 1859, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!1532, !2061, !264, !109, !584, !496, !7}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2062, file: !14, line: 1860, baseType: !584, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1648, file: !14, line: 1924, baseType: !2071, size: 64, offset: 512)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!2074, !1373, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2075, line: 59, baseType: !7)
!2075 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2078, line: 37, size: 128, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2079 = !{!2080, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2077, file: !2078, line: 38, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2078, line: 31, baseType: !2082)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !1373, !2085, !2076}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2077, file: !2078, line: 39, baseType: !2074, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1648, file: !14, line: 1925, baseType: !2088, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!380, !1373, !7, !394}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1648, file: !14, line: 1926, baseType: !2088, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1648, file: !14, line: 1927, baseType: !2093, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!109, !1373, !1856}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1648, file: !14, line: 1928, baseType: !394, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1648, file: !14, line: 1929, baseType: !2098, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!109, !424, !1373}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1648, file: !14, line: 1930, baseType: !2102, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!109, !1373, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !215)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1648, file: !14, line: 1931, baseType: !2098, size: 64, offset: 960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1648, file: !14, line: 1932, baseType: !2108, size: 64, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!109, !1373, !584, !584, !109}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1648, file: !14, line: 1933, baseType: !2112, size: 64, offset: 1088)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!109, !109, !1373, !109}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1648, file: !14, line: 1934, baseType: !2116, size: 64, offset: 1152)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!109, !1373, !109, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1648, file: !14, line: 1935, baseType: !1370, size: 64, offset: 1216)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1648, file: !14, line: 1936, baseType: !2123, size: 64, offset: 1280)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!109, !109}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1648, file: !14, line: 1937, baseType: !2116, size: 64, offset: 1344)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1648, file: !14, line: 1938, baseType: !2128, size: 64, offset: 1408)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!376, !2131, !1373, !1659, !391, !7}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !691, line: 59, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1648, file: !14, line: 1939, baseType: !2134, size: 64, offset: 1472)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!376, !1373, !1659, !2131, !391, !7}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1648, file: !14, line: 1940, baseType: !2138, size: 64, offset: 1536)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !1373}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1648, file: !14, line: 1941, baseType: !2142, size: 64, offset: 1600)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!109, !1373, !109, !2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1648, file: !14, line: 1942, baseType: !2148, size: 64, offset: 1664)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!380, !1373, !109, !584, !584}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1648, file: !14, line: 1944, baseType: !2152, size: 64, offset: 1728)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !689, !1373}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1648, file: !14, line: 1948, baseType: !2156, size: 64, offset: 1792)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!376, !1373, !584, !1373, !584, !391, !7}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1648, file: !14, line: 1950, baseType: !2160, size: 64, offset: 1856)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!584, !1373, !584, !1373, !584, !584, !7}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1648, file: !14, line: 1953, baseType: !2108, size: 64, offset: 1920)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1648, file: !14, line: 1954, baseType: !2165, size: 64, offset: 1984)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!109, !2168, !7}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1648, file: !14, line: 1955, baseType: !2171, size: 64, offset: 2048)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!109, !2168, !2055, !7}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1374, file: !14, line: 1018, baseType: !496, size: 64, offset: 1472)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1374, file: !14, line: 1020, baseType: !215, size: 64, offset: 1536)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1374, file: !14, line: 1023, baseType: !215, size: 64, offset: 1600)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1374, file: !14, line: 1027, baseType: !2178, size: 64, offset: 1664)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1374, file: !14, line: 1029, baseType: !420, size: 64, offset: 1728)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1374, file: !14, line: 1030, baseType: !2181, size: 32, offset: 1792)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2182, line: 8, baseType: !493)
!2182 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1374, file: !14, line: 1031, baseType: !2181, size: 32, offset: 1824)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1350, file: !46, line: 756, baseType: !394, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1350, file: !46, line: 757, baseType: !394, size: 64, offset: 768)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1350, file: !46, line: 760, baseType: !394, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1350, file: !46, line: 761, baseType: !394, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1350, file: !46, line: 763, baseType: !394, size: 64, offset: 960)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1350, file: !46, line: 764, baseType: !2190, size: 64, offset: 1024)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1871, line: 299, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1871, line: 299, size: 64, elements: !2193)
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2192, file: !1871, line: 299, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1876, line: 18, baseType: !394)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1350, file: !46, line: 773, baseType: !295, size: 32, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1350, file: !46, line: 785, baseType: !295, size: 32, offset: 1120)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1350, file: !46, line: 795, baseType: !2199, size: 64, offset: 1152)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2200, file: !46, line: 727, baseType: !496, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2200, file: !46, line: 728, baseType: !109, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1350, file: !46, line: 801, baseType: !394, size: 64, offset: 1216)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1350, file: !46, line: 804, baseType: !720, size: 64, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1350, file: !46, line: 806, baseType: !109, size: 32, offset: 1344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1350, file: !46, line: 808, baseType: !275, size: 32, offset: 1376)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1350, file: !46, line: 823, baseType: !927, size: 320, offset: 1408)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1350, file: !46, line: 825, baseType: !246, size: 128, offset: 1728)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1350, file: !46, line: 845, baseType: !109, size: 32, offset: 1856)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1350, file: !46, line: 849, baseType: !394, size: 64, offset: 1920)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1350, file: !46, line: 850, baseType: !394, size: 64, offset: 1984)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1350, file: !46, line: 852, baseType: !394, size: 64, offset: 2048)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1350, file: !46, line: 853, baseType: !394, size: 64, offset: 2112)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1350, file: !46, line: 854, baseType: !722, size: 64, offset: 2176)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1350, file: !46, line: 855, baseType: !394, size: 64, offset: 2240)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1350, file: !46, line: 856, baseType: !394, size: 64, offset: 2304)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1350, file: !46, line: 857, baseType: !394, size: 64, offset: 2368)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1350, file: !46, line: 858, baseType: !394, size: 64, offset: 2432)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1350, file: !46, line: 865, baseType: !470, size: 32, offset: 2496)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1350, file: !46, line: 867, baseType: !275, size: 32, offset: 2528)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1350, file: !46, line: 869, baseType: !394, size: 64, offset: 2560)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1350, file: !46, line: 869, baseType: !394, size: 64, offset: 2624)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1350, file: !46, line: 869, baseType: !394, size: 64, offset: 2688)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1350, file: !46, line: 869, baseType: !394, size: 64, offset: 2752)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1350, file: !46, line: 870, baseType: !394, size: 64, offset: 2816)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1350, file: !46, line: 870, baseType: !394, size: 64, offset: 2880)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1350, file: !46, line: 870, baseType: !394, size: 64, offset: 2944)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1350, file: !46, line: 871, baseType: !394, size: 64, offset: 3008)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1350, file: !46, line: 871, baseType: !394, size: 64, offset: 3072)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1350, file: !46, line: 871, baseType: !394, size: 64, offset: 3136)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1350, file: !46, line: 871, baseType: !394, size: 64, offset: 3200)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1350, file: !46, line: 873, baseType: !2234, size: 3328, offset: 3264)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 3328, elements: !2235)
!2235 = !{!2236}
!2236 = !DISubrange(count: 52)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1350, file: !46, line: 875, baseType: !2238, size: 1280, offset: 6592)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1590, size: 1280, elements: !185)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1350, file: !46, line: 877, baseType: !2240, size: 64, offset: 7872)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1350, file: !46, line: 880, baseType: !2243, size: 1088, offset: 7936)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2244, line: 72, baseType: !2245)
!2244 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2244, line: 23, size: 1088, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2254, !2255, !2256, !2257, !2284, !2285, !2286}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2245, file: !2244, line: 28, baseType: !496, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2245, file: !2244, line: 38, baseType: !722, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2245, file: !2244, line: 40, baseType: !394, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2245, file: !2244, line: 43, baseType: !927, size: 320, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2245, file: !2244, line: 44, baseType: !2252, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2244, line: 44, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2245, file: !2244, line: 48, baseType: !394, size: 64, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2245, file: !2244, line: 59, baseType: !716, size: 256, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2245, file: !2244, line: 60, baseType: !215, size: 64, offset: 896)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2245, file: !2244, line: 61, baseType: !2258, size: 64, offset: 960)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2261, line: 13, size: 1216, elements: !2262)
!2261 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2260, file: !2261, line: 14, baseType: !215, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2260, file: !2261, line: 15, baseType: !394, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2260, file: !2261, line: 17, baseType: !394, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2260, file: !2261, line: 17, baseType: !394, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2260, file: !2261, line: 18, baseType: !394, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2260, file: !2261, line: 18, baseType: !394, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2260, file: !2261, line: 19, baseType: !2270, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2260, file: !2261, line: 21, baseType: !380, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2260, file: !2261, line: 23, baseType: !380, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2260, file: !2261, line: 24, baseType: !380, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2260, file: !2261, line: 25, baseType: !380, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2260, file: !2261, line: 26, baseType: !380, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2260, file: !2261, line: 27, baseType: !380, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2260, file: !2261, line: 28, baseType: !380, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2260, file: !2261, line: 29, baseType: !380, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2260, file: !2261, line: 30, baseType: !380, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2260, file: !2261, line: 31, baseType: !380, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2260, file: !2261, line: 32, baseType: !380, size: 64, offset: 1088)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2260, file: !2261, line: 33, baseType: !380, size: 64, offset: 1152)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2245, file: !2244, line: 63, baseType: !295, size: 32, offset: 1024)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2245, file: !2244, line: 69, baseType: !312, size: 16, offset: 1056)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2245, file: !2244, line: 70, baseType: !2287, size: 16, offset: 1072)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !304, line: 18, baseType: !2288)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !170, line: 23, baseType: !1501)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1350, file: !46, line: 882, baseType: !394, size: 64, offset: 9024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1350, file: !46, line: 885, baseType: !275, size: 32, offset: 9088)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1350, file: !46, line: 886, baseType: !2292, size: 64, offset: 9152)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1350, file: !46, line: 901, baseType: !1615, size: 64, offset: 9216)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1350, file: !46, line: 904, baseType: !1373, size: 64, offset: 9280)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1350, file: !46, line: 906, baseType: !2297, size: 64, offset: 9344)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1350, file: !46, line: 930, baseType: !295, size: 32, offset: 9408)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1350, file: !46, line: 933, baseType: !295, size: 32, offset: 9440)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1350, file: !46, line: 935, baseType: !2302, size: 64, offset: 9472)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2302, file: !68, line: 104, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1350, file: !46, line: 940, baseType: !720, size: 64, offset: 9536)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1350, file: !46, line: 942, baseType: !2309, size: 256, offset: 9600)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2310, line: 98, size: 256, elements: !2311)
!2310 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2309, file: !2310, line: 99, baseType: !720, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2309, file: !2310, line: 100, baseType: !246, size: 128, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2309, file: !2310, line: 101, baseType: !2315, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2310, line: 21, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1347, file: !46, line: 986, baseType: !2321, offset: 10240)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, elements: !1433)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1043, file: !691, line: 882, baseType: !1346, size: 64, offset: 9792)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1043, file: !691, line: 884, baseType: !109, size: 32, offset: 9856)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1043, file: !691, line: 885, baseType: !109, size: 32, offset: 9888)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1043, file: !691, line: 886, baseType: !109, size: 32, offset: 9920)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1043, file: !691, line: 888, baseType: !109, size: 32, offset: 9952)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1043, file: !691, line: 890, baseType: !394, size: 64, offset: 9984)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1043, file: !691, line: 893, baseType: !7, size: 32, offset: 10048)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1043, file: !691, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1043, file: !691, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1043, file: !691, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1043, file: !691, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1043, file: !691, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1043, file: !691, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1043, file: !691, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1043, file: !691, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1043, file: !691, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1043, file: !691, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1043, file: !691, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1043, file: !691, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1043, file: !691, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1043, file: !691, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1043, file: !691, line: 969, baseType: !394, size: 64, offset: 10176)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1043, file: !691, line: 971, baseType: !2345, size: 448, offset: 10240)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2346)
!2346 = !{!2347, !2348, !2353}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2345, file: !62, line: 26, baseType: !394, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2345, file: !62, line: 27, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!380, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !2345, file: !62, line: 28, baseType: !2354, size: 320, offset: 128)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2345, file: !62, line: 28, size: 320, elements: !2355)
!2355 = !{!2356, !2366, !2391}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2354, file: !62, line: 37, baseType: !2357, size: 320)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !62, line: 30, size: 320, elements: !2358)
!2358 = !{!2359, !2361, !2362, !2363, !2364, !2365}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2357, file: !62, line: 31, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2357, file: !62, line: 32, baseType: !493, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2357, file: !62, line: 33, baseType: !493, size: 32, offset: 96)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2357, file: !62, line: 34, baseType: !493, size: 32, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2357, file: !62, line: 35, baseType: !496, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2357, file: !62, line: 36, baseType: !2360, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2354, file: !62, line: 47, baseType: !2367, size: 192)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !62, line: 39, size: 192, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2390}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2367, file: !62, line: 40, baseType: !1217, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2367, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2367, file: !62, line: 42, baseType: !2372, size: 64, offset: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2367, file: !62, line: 42, size: 64, elements: !2373)
!2373 = !{!2374, !2382}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2372, file: !62, line: 43, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2377, line: 7, size: 128, elements: !2378)
!2377 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2378 = !{!2379, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2376, file: !2377, line: 8, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !378, line: 93, baseType: !171)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2376, file: !2377, line: 9, baseType: !171, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2372, file: !62, line: 44, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2385, line: 7, size: 64, elements: !2386)
!2385 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2386 = !{!2387, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2384, file: !2385, line: 8, baseType: !2388, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2385, line: 5, baseType: !1475)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2384, file: !2385, line: 9, baseType: !1475, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2367, file: !62, line: 46, baseType: !496, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2354, file: !62, line: 55, baseType: !2392, size: 256)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !62, line: 49, size: 256, elements: !2393)
!2393 = !{!2394, !2402, !2403, !2404, !2405}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2392, file: !62, line: 50, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2397, line: 36, size: 64, elements: !2398)
!2397 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2398 = !{!2399, !2400, !2401}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2396, file: !2397, line: 37, baseType: !109, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2396, file: !2397, line: 38, baseType: !1501, size: 16, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2396, file: !2397, line: 39, baseType: !1501, size: 16, offset: 48)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2392, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2392, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2392, file: !62, line: 53, baseType: !394, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2392, file: !62, line: 54, baseType: !394, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1043, file: !691, line: 973, baseType: !2407, size: 32, offset: 10688)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !214, line: 27, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !378, line: 28, baseType: !109)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1043, file: !691, line: 974, baseType: !2407, size: 32, offset: 10720)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1043, file: !691, line: 978, baseType: !394, size: 64, offset: 10752)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1043, file: !691, line: 987, baseType: !1042, size: 64, offset: 10816)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1043, file: !691, line: 990, baseType: !1042, size: 64, offset: 10880)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1043, file: !691, line: 995, baseType: !246, size: 128, offset: 10944)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1043, file: !691, line: 996, baseType: !246, size: 128, offset: 11072)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1043, file: !691, line: 997, baseType: !1042, size: 64, offset: 11200)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1043, file: !691, line: 1005, baseType: !246, size: 128, offset: 11264)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1043, file: !691, line: 1006, baseType: !246, size: 128, offset: 11392)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1043, file: !691, line: 1009, baseType: !1414, size: 64, offset: 11520)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1043, file: !691, line: 1010, baseType: !2420, size: 512, offset: 11584)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !185)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1043, file: !691, line: 1011, baseType: !246, size: 128, offset: 12096)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1043, file: !691, line: 1012, baseType: !246, size: 128, offset: 12224)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1043, file: !691, line: 1014, baseType: !2424, size: 64, offset: 12352)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1043, file: !691, line: 1017, baseType: !683, size: 64, offset: 12416)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1043, file: !691, line: 1020, baseType: !683, size: 64, offset: 12480)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1043, file: !691, line: 1023, baseType: !215, size: 64, offset: 12544)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1043, file: !691, line: 1025, baseType: !496, size: 64, offset: 12608)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1043, file: !691, line: 1026, baseType: !496, size: 64, offset: 12672)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1043, file: !691, line: 1031, baseType: !496, size: 64, offset: 12736)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1043, file: !691, line: 1032, baseType: !2432, size: 192, offset: 12800)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !691, line: 324, size: 192, elements: !2433)
!2433 = !{!2434, !2435, !2436}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2432, file: !691, line: 326, baseType: !496, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2432, file: !691, line: 327, baseType: !496, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2432, file: !691, line: 328, baseType: !728, size: 32, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1043, file: !691, line: 1041, baseType: !394, size: 64, offset: 12992)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1043, file: !691, line: 1042, baseType: !394, size: 64, offset: 13056)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1043, file: !691, line: 1045, baseType: !496, size: 64, offset: 13120)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1043, file: !691, line: 1048, baseType: !496, size: 64, offset: 13184)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1043, file: !691, line: 1051, baseType: !394, size: 64, offset: 13248)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1043, file: !691, line: 1052, baseType: !394, size: 64, offset: 13312)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1043, file: !691, line: 1055, baseType: !2444, size: 640, offset: 13376)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2445, line: 132, size: 640, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2446 = !{!2447, !2453, !2454}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2444, file: !2445, line: 133, baseType: !2448, size: 576)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 576, elements: !345)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2445, line: 117, size: 192, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2449, file: !2445, line: 118, baseType: !496, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2449, file: !2445, line: 119, baseType: !1226, size: 128, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2444, file: !2445, line: 134, baseType: !7, size: 32, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2444, file: !2445, line: 135, baseType: !7, size: 32, offset: 608)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1043, file: !691, line: 1058, baseType: !2456, size: 448, offset: 14016)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2445, line: 144, size: 448, elements: !2457)
!2457 = !{!2458, !2459, !2460}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2456, file: !2445, line: 145, baseType: !1027, size: 128, align: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2456, file: !2445, line: 146, baseType: !716, size: 256, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2456, file: !2445, line: 147, baseType: !7, size: 32, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1043, file: !691, line: 1064, baseType: !1440, size: 64, offset: 14464)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1043, file: !691, line: 1067, baseType: !1440, size: 64, offset: 14528)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1043, file: !691, line: 1070, baseType: !1440, size: 64, offset: 14592)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1043, file: !691, line: 1074, baseType: !1467, size: 64, offset: 14656)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1043, file: !691, line: 1084, baseType: !2466, size: 128, offset: 14720)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, elements: !2467)
!2467 = !{!2468}
!2468 = !DISubrange(count: 16)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1043, file: !691, line: 1086, baseType: !2470, size: 64, offset: 14848)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !691, line: 55, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1043, file: !691, line: 1089, baseType: !2473, size: 64, offset: 14912)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2474, line: 12, size: 64, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2475 = !{!2476}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2473, file: !2474, line: 13, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2474, line: 8, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1043, file: !691, line: 1090, baseType: !2480, size: 128, offset: 14976)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2481, line: 13, size: 128, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2482 = !{!2483}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2480, file: !2481, line: 14, baseType: !246, size: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1043, file: !691, line: 1097, baseType: !2485, size: 64, offset: 15104)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !691, line: 50, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1043, file: !691, line: 1100, baseType: !2488, size: 64, offset: 15168)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !691, line: 1100, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1043, file: !691, line: 1103, baseType: !2491, size: 64, offset: 15232)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !691, line: 53, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1043, file: !691, line: 1107, baseType: !2494, size: 64, offset: 15296)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !691, line: 56, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1043, file: !691, line: 1110, baseType: !2497, size: 64, offset: 15360)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2499, line: 93, size: 8768, elements: !2500)
!2499 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2548, !2557, !2558, !2560, !2561, !2562, !2565, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2603, !2604, !2611, !2621, !2624, !2625, !2628, !2629, !2630, !2631, !2632, !2633}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2498, file: !2499, line: 94, baseType: !1056, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2498, file: !2499, line: 95, baseType: !295, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2498, file: !2499, line: 96, baseType: !109, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2498, file: !2499, line: 97, baseType: !109, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2498, file: !2499, line: 98, baseType: !246, size: 128, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2498, file: !2499, line: 100, baseType: !1020, size: 192, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2498, file: !2499, line: 103, baseType: !1042, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2498, file: !2499, line: 106, baseType: !2509, size: 192, offset: 512)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1620, line: 32, size: 192, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2509, file: !1620, line: 33, baseType: !246, size: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2509, file: !1620, line: 34, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2514, line: 25, baseType: !2515)
!2514 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2514, line: 23, size: 64, elements: !2516)
!2516 = !{!2517}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2515, file: !2514, line: 24, baseType: !1297, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2498, file: !2499, line: 109, baseType: !614, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2498, file: !2499, line: 112, baseType: !109, size: 32, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2498, file: !2499, line: 114, baseType: !109, size: 32, offset: 800)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2498, file: !2499, line: 115, baseType: !1042, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2498, file: !2499, line: 118, baseType: !109, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2498, file: !2499, line: 119, baseType: !7, size: 32, offset: 928)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2498, file: !2499, line: 121, baseType: !2525, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2499, line: 80, size: 448, elements: !2527)
!2527 = !{!2528, !2529, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2526, file: !2499, line: 81, baseType: !295, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2526, file: !2499, line: 82, baseType: !2530, size: 128, offset: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2499, line: 75, size: 128, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2530, file: !2499, line: 76, baseType: !1042, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2530, file: !2499, line: 77, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2526, file: !2499, line: 83, baseType: !1821, size: 256, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2498, file: !2499, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2498, file: !2499, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2498, file: !2499, line: 138, baseType: !7, size: 32, offset: 1056)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2498, file: !2499, line: 139, baseType: !246, size: 128, offset: 1088)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2498, file: !2499, line: 142, baseType: !1170, size: 512, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2498, file: !2499, line: 143, baseType: !1178, size: 64, offset: 1728)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2498, file: !2499, line: 150, baseType: !2543, size: 256, offset: 1792)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 256, elements: !157)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2499, line: 38, size: 128, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2544, file: !2499, line: 39, baseType: !496, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2544, file: !2499, line: 40, baseType: !496, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2498, file: !2499, line: 156, baseType: !2549, size: 192, offset: 2048)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2499, line: 66, size: 192, elements: !2550)
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2549, file: !2499, line: 67, baseType: !2552, size: 192)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2499, line: 47, size: 192, elements: !2553)
!2553 = !{!2554, !2555, !2556}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2552, file: !2499, line: 48, baseType: !722, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2552, file: !2499, line: 49, baseType: !722, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2552, file: !2499, line: 50, baseType: !722, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2498, file: !2499, line: 160, baseType: !2444, size: 640, offset: 2240)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2498, file: !2499, line: 163, baseType: !2559, size: 256, offset: 2880)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1414, size: 256, elements: !185)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2498, file: !2499, line: 169, baseType: !1414, size: 64, offset: 3136)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2498, file: !2499, line: 172, baseType: !109, size: 32, offset: 3200)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2498, file: !2499, line: 174, baseType: !2563, size: 64, offset: 3264)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2499, line: 174, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2498, file: !2499, line: 185, baseType: !2566, size: 64, offset: 3328)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !466, line: 860, baseType: !2567)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 853, size: 64, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2567, file: !466, line: 858, baseType: !465, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2567, file: !466, line: 859, baseType: !275, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2498, file: !2499, line: 186, baseType: !496, size: 64, offset: 3392)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2498, file: !2499, line: 186, baseType: !496, size: 64, offset: 3456)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2498, file: !2499, line: 186, baseType: !496, size: 64, offset: 3520)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2498, file: !2499, line: 186, baseType: !496, size: 64, offset: 3584)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2498, file: !2499, line: 187, baseType: !496, size: 64, offset: 3648)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2498, file: !2499, line: 188, baseType: !496, size: 64, offset: 3712)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2498, file: !2499, line: 189, baseType: !2432, size: 192, offset: 3776)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2498, file: !2499, line: 190, baseType: !394, size: 64, offset: 3968)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2498, file: !2499, line: 190, baseType: !394, size: 64, offset: 4032)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2498, file: !2499, line: 190, baseType: !394, size: 64, offset: 4096)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2498, file: !2499, line: 190, baseType: !394, size: 64, offset: 4160)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2498, file: !2499, line: 191, baseType: !394, size: 64, offset: 4224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2498, file: !2499, line: 191, baseType: !394, size: 64, offset: 4288)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2498, file: !2499, line: 191, baseType: !394, size: 64, offset: 4352)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2498, file: !2499, line: 191, baseType: !394, size: 64, offset: 4416)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2498, file: !2499, line: 192, baseType: !394, size: 64, offset: 4480)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2498, file: !2499, line: 192, baseType: !394, size: 64, offset: 4544)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2498, file: !2499, line: 192, baseType: !394, size: 64, offset: 4608)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2498, file: !2499, line: 192, baseType: !394, size: 64, offset: 4672)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2498, file: !2499, line: 193, baseType: !394, size: 64, offset: 4736)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2498, file: !2499, line: 193, baseType: !394, size: 64, offset: 4800)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2498, file: !2499, line: 194, baseType: !2593, size: 448, offset: 4864)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2594, line: 12, size: 448, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2593, file: !2594, line: 15, baseType: !496, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2593, file: !2594, line: 17, baseType: !496, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2593, file: !2594, line: 19, baseType: !496, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2593, file: !2594, line: 21, baseType: !496, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2593, file: !2594, line: 29, baseType: !496, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2593, file: !2594, line: 35, baseType: !496, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2593, file: !2594, line: 44, baseType: !496, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2498, file: !2499, line: 202, baseType: !498, size: 64, offset: 5312)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2498, file: !2499, line: 213, baseType: !2605, size: 2048, offset: 5376)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 2048, elements: !2467)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2607, line: 43, size: 128, elements: !2608)
!2607 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2606, file: !2607, line: 44, baseType: !393, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2606, file: !2607, line: 45, baseType: !393, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2498, file: !2499, line: 216, baseType: !2612, size: 448, offset: 7424)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2499, line: 30, size: 448, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2612, file: !2499, line: 31, baseType: !109, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2612, file: !2499, line: 32, baseType: !380, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2612, file: !2499, line: 33, baseType: !394, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2612, file: !2499, line: 34, baseType: !496, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2612, file: !2499, line: 34, baseType: !496, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2612, file: !2499, line: 35, baseType: !394, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2612, file: !2499, line: 35, baseType: !394, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2498, file: !2499, line: 219, baseType: !2622, size: 64, offset: 7872)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2499, line: 219, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2498, file: !2499, line: 222, baseType: !7, size: 32, offset: 7936)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2498, file: !2499, line: 223, baseType: !2626, size: 64, offset: 8000)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2499, line: 223, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2498, file: !2499, line: 230, baseType: !1532, size: 8, offset: 8064)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2498, file: !2499, line: 231, baseType: !1501, size: 16, offset: 8080)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2498, file: !2499, line: 232, baseType: !1501, size: 16, offset: 8096)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2498, file: !2499, line: 234, baseType: !1346, size: 64, offset: 8128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2498, file: !2499, line: 237, baseType: !716, size: 256, offset: 8192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2498, file: !2499, line: 243, baseType: !927, size: 320, offset: 8448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1043, file: !691, line: 1111, baseType: !2635, size: 64, offset: 15424)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2499, line: 20, size: 16640, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2636, file: !2499, line: 21, baseType: !275, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2636, file: !2499, line: 22, baseType: !1056, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2636, file: !2499, line: 23, baseType: !1020, size: 192, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2636, file: !2499, line: 24, baseType: !2642, size: 16384, offset: 256)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2643, size: 16384, elements: !349)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1620, line: 51, size: 256, elements: !2644)
!2644 = !{!2645}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2643, file: !1620, line: 52, baseType: !2646, size: 256)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1620, line: 37, size: 256, elements: !2647)
!2647 = !{!2648, !2655, !2656, !2662}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2646, file: !1620, line: 39, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2650, line: 83, baseType: !2651)
!2650 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2650, line: 82, baseType: !2653)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !109}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2646, file: !1620, line: 40, baseType: !394, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2646, file: !1620, line: 46, baseType: !2657, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2650, line: 86, baseType: !2658)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2650, line: 85, baseType: !2660)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2646, file: !1620, line: 48, baseType: !2513, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1043, file: !691, line: 1112, baseType: !2513, size: 64, offset: 15488)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1043, file: !691, line: 1113, baseType: !2513, size: 64, offset: 15552)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1043, file: !691, line: 1115, baseType: !2513, size: 64, offset: 15616)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1043, file: !691, line: 1116, baseType: !2509, size: 192, offset: 15680)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1043, file: !691, line: 1117, baseType: !394, size: 64, offset: 15872)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1043, file: !691, line: 1118, baseType: !391, size: 64, offset: 15936)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1043, file: !691, line: 1119, baseType: !7, size: 32, offset: 16000)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1043, file: !691, line: 1121, baseType: !1030, size: 64, offset: 16064)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1043, file: !691, line: 1125, baseType: !2672, size: 64, offset: 16128)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !691, line: 43, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1043, file: !691, line: 1127, baseType: !430, size: 32, offset: 16192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1043, file: !691, line: 1128, baseType: !7, size: 32, offset: 16224)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1043, file: !691, line: 1130, baseType: !2677, size: 128, offset: 16256)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2678, line: 37, size: 128, elements: !2679)
!2678 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2677, file: !2678, line: 38, baseType: !109, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2677, file: !2678, line: 39, baseType: !295, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2677, file: !2678, line: 40, baseType: !2683, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2678, line: 24, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1043, file: !691, line: 1131, baseType: !2686, size: 256, offset: 16384)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2687, line: 12, size: 256, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2686, file: !2687, line: 13, baseType: !344, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2686, file: !2687, line: 14, baseType: !394, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2686, file: !2687, line: 15, baseType: !394, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2686, file: !2687, line: 16, baseType: !1532, size: 8, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1043, file: !691, line: 1134, baseType: !496, size: 64, offset: 16640)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1043, file: !691, line: 1135, baseType: !496, size: 64, offset: 16704)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1043, file: !691, line: 1138, baseType: !275, size: 32, offset: 16768)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1043, file: !691, line: 1141, baseType: !728, size: 32, offset: 16800)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1043, file: !691, line: 1143, baseType: !2698, size: 64, offset: 16832)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !691, line: 735, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2698, file: !691, line: 736, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1043, file: !691, line: 1147, baseType: !1229, size: 128, offset: 16896)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1043, file: !691, line: 1149, baseType: !1042, size: 64, offset: 17024)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1043, file: !691, line: 1151, baseType: !2705, size: 64, offset: 17088)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !691, line: 1151, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1043, file: !691, line: 1188, baseType: !215, size: 64, offset: 17152)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1043, file: !691, line: 1191, baseType: !2709, size: 64, offset: 17216)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !691, line: 44, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1043, file: !691, line: 1194, baseType: !2712, size: 64, offset: 17280)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !691, line: 45, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1043, file: !691, line: 1197, baseType: !2715, size: 64, offset: 17344)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !691, line: 61, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1043, file: !691, line: 1199, baseType: !2718, size: 64, offset: 17408)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2720, line: 99, size: 128, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2721 = !{!2722, !2723, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2719, file: !2720, line: 100, baseType: !720, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2719, file: !2720, line: 101, baseType: !295, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2719, file: !2720, line: 103, baseType: !314, size: 16, offset: 96)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1043, file: !691, line: 1202, baseType: !2726, size: 64, offset: 17472)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !691, line: 48, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1043, file: !691, line: 1205, baseType: !394, size: 64, offset: 17536)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1043, file: !691, line: 1206, baseType: !2730, size: 64, offset: 17600)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1620, line: 14, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1620, line: 12, size: 384, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2732, file: !1620, line: 13, baseType: !2735, size: 384)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2732, file: !1620, line: 13, size: 384, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2735, file: !1620, line: 13, baseType: !109, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2735, file: !1620, line: 13, baseType: !109, size: 32, offset: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2735, file: !1620, line: 13, baseType: !109, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2735, file: !1620, line: 13, baseType: !2741, size: 256, offset: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2742, line: 37, size: 256, elements: !2743)
!2742 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2743 = !{!2744, !2749, !2762, !2768, !2777, !2804, !2809}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2741, file: !2742, line: 42, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 39, size: 64, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2745, file: !2742, line: 40, baseType: !2408, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2745, file: !2742, line: 41, baseType: !436, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2741, file: !2742, line: 50, baseType: !2750, size: 192)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 45, size: 192, elements: !2751)
!2751 = !{!2752, !2754, !2755, !2761}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2750, file: !2742, line: 46, baseType: !2753, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !378, line: 95, baseType: !109)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2750, file: !2742, line: 47, baseType: !109, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2750, file: !2742, line: 48, baseType: !2756, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2742, line: 11, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2742, line: 8, size: 64, elements: !2758)
!2758 = !{!2759, !2760}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2757, file: !2742, line: 9, baseType: !109, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2757, file: !2742, line: 10, baseType: !215, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2750, file: !2742, line: 49, baseType: !109, size: 32, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2741, file: !2742, line: 57, baseType: !2763, size: 128)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 53, size: 128, elements: !2764)
!2764 = !{!2765, !2766, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2763, file: !2742, line: 54, baseType: !2408, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2763, file: !2742, line: 55, baseType: !436, size: 32, offset: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2763, file: !2742, line: 56, baseType: !2756, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2741, file: !2742, line: 66, baseType: !2769, size: 256)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 60, size: 256, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2776}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2769, file: !2742, line: 61, baseType: !2408, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2769, file: !2742, line: 62, baseType: !436, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2769, file: !2742, line: 63, baseType: !109, size: 32, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2769, file: !2742, line: 64, baseType: !2775, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !378, line: 94, baseType: !379)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2769, file: !2742, line: 65, baseType: !2775, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2741, file: !2742, line: 105, baseType: !2778, size: 256)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 69, size: 256, elements: !2779)
!2779 = !{!2780, !2781}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2778, file: !2742, line: 70, baseType: !215, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, scope: !2778, file: !2742, line: 79, baseType: !2782, size: 192, offset: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2778, file: !2742, line: 79, size: 192, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2793, !2798}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2782, file: !2742, line: 81, baseType: !109, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2782, file: !2742, line: 86, baseType: !1501, size: 16)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2782, file: !2742, line: 92, baseType: !2787, size: 192)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !2742, line: 88, size: 192, elements: !2788)
!2788 = !{!2789, !2791, !2792}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2787, file: !2742, line: 89, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 64, elements: !1213)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2787, file: !2742, line: 90, baseType: !215, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2787, file: !2742, line: 91, baseType: !215, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2782, file: !2742, line: 97, baseType: !2794, size: 96)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !2742, line: 94, size: 96, elements: !2795)
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2794, file: !2742, line: 95, baseType: !2790, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2794, file: !2742, line: 96, baseType: !173, size: 32, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2782, file: !2742, line: 103, baseType: !2799, size: 128)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !2742, line: 99, size: 128, elements: !2800)
!2800 = !{!2801, !2802, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2799, file: !2742, line: 100, baseType: !394, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2799, file: !2742, line: 101, baseType: !173, size: 32, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2799, file: !2742, line: 102, baseType: !173, size: 32, offset: 96)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2741, file: !2742, line: 111, baseType: !2805, size: 128)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 108, size: 128, elements: !2806)
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2805, file: !2742, line: 109, baseType: !380, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2805, file: !2742, line: 110, baseType: !109, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2741, file: !2742, line: 118, baseType: !2810, size: 128)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2742, line: 114, size: 128, elements: !2811)
!2811 = !{!2812, !2813, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2810, file: !2742, line: 115, baseType: !215, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2810, file: !2742, line: 116, baseType: !109, size: 32, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2810, file: !2742, line: 117, baseType: !7, size: 32, offset: 96)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1043, file: !691, line: 1208, baseType: !2593, size: 448, offset: 17664)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1043, file: !691, line: 1215, baseType: !496, size: 64, offset: 18112)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1043, file: !691, line: 1217, baseType: !496, size: 64, offset: 18176)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1043, file: !691, line: 1219, baseType: !496, size: 64, offset: 18240)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1043, file: !691, line: 1223, baseType: !2820, size: 64, offset: 18304)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2821, line: 99, baseType: !2822)
!2821 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2821, line: 99, size: 64, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2822, file: !2821, line: 99, baseType: !1297, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1043, file: !691, line: 1225, baseType: !465, size: 32, offset: 18368)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1043, file: !691, line: 1226, baseType: !109, size: 32, offset: 18400)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1043, file: !691, line: 1227, baseType: !109, size: 32, offset: 18432)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1043, file: !691, line: 1231, baseType: !2829, size: 64, offset: 18496)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !691, line: 1231, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1043, file: !691, line: 1233, baseType: !246, size: 128, offset: 18560)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1043, file: !691, line: 1240, baseType: !2833, size: 64, offset: 18688)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !691, line: 62, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1043, file: !691, line: 1242, baseType: !2836, size: 64, offset: 18752)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !691, line: 1242, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1043, file: !691, line: 1244, baseType: !246, size: 128, offset: 18816)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1043, file: !691, line: 1245, baseType: !2840, size: 64, offset: 18944)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !691, line: 51, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1043, file: !691, line: 1246, baseType: !716, size: 256, offset: 19008)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1043, file: !691, line: 1247, baseType: !7, size: 32, offset: 19264)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1043, file: !691, line: 1250, baseType: !2845, size: 64, offset: 19328)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !691, line: 57, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1043, file: !691, line: 1251, baseType: !716, size: 256, offset: 19392)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1043, file: !691, line: 1252, baseType: !246, size: 128, offset: 19648)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1043, file: !691, line: 1259, baseType: !1949, size: 64, offset: 19776)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1043, file: !691, line: 1260, baseType: !1501, size: 16, offset: 19840)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1043, file: !691, line: 1261, baseType: !1501, size: 16, offset: 19856)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1043, file: !691, line: 1314, baseType: !2853, size: 64, offset: 19904)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2855, line: 62, size: 256, align: 256, elements: !2856)
!2855 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2854, file: !2855, line: 75, baseType: !173, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2854, file: !2855, line: 90, baseType: !173, size: 32, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2854, file: !2855, line: 112, baseType: !497, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2854, file: !2855, line: 132, baseType: !173, size: 32, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2854, file: !2855, line: 140, baseType: !173, size: 32, offset: 160)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2854, file: !2855, line: 149, baseType: !173, size: 32, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2854, file: !2855, line: 154, baseType: !2864, offset: 224)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, elements: !1433)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1043, file: !691, line: 1315, baseType: !493, size: 32, offset: 19968)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1043, file: !691, line: 1316, baseType: !493, size: 32, offset: 20000)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1043, file: !691, line: 1321, baseType: !394, size: 64, offset: 20032)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1043, file: !691, line: 1325, baseType: !109, size: 32, offset: 20096)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1043, file: !691, line: 1326, baseType: !109, size: 32, offset: 20128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1043, file: !691, line: 1327, baseType: !109, size: 32, offset: 20160)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1043, file: !691, line: 1328, baseType: !109, size: 32, offset: 20192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1043, file: !691, line: 1329, baseType: !1027, size: 128, align: 64, offset: 20224)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1043, file: !691, line: 1332, baseType: !2874, size: 128, offset: 20352)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2875, line: 51, size: 128, elements: !2876)
!2875 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2876 = !{!2877, !2882, !2883}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2874, file: !2875, line: 60, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2879, line: 7, size: 64, elements: !2880)
!2879 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2880 = !{!2881}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2878, file: !2879, line: 12, baseType: !1294, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2874, file: !2875, line: 63, baseType: !1532, size: 8, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2874, file: !2875, line: 70, baseType: !1532, size: 8, offset: 72)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1043, file: !691, line: 1335, baseType: !2131, size: 64, offset: 20480)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1043, file: !691, line: 1337, baseType: !2886, size: 128, offset: 20544)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2875, line: 39, size: 128, elements: !2887)
!2887 = !{!2888, !2889, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2886, file: !2875, line: 40, baseType: !1736, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2886, file: !2875, line: 42, baseType: !173, size: 32, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2886, file: !2875, line: 43, baseType: !173, size: 32, offset: 96)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1043, file: !691, line: 1340, baseType: !2892, size: 64, offset: 20672)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !691, line: 69, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1043, file: !691, line: 1351, baseType: !109, size: 32, offset: 20736)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1043, file: !691, line: 1352, baseType: !109, size: 32, offset: 20768)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1043, file: !691, line: 1354, baseType: !394, size: 64, offset: 20800)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1043, file: !691, line: 1364, baseType: !496, size: 64, offset: 20864)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1043, file: !691, line: 1365, baseType: !496, size: 64, offset: 20928)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1043, file: !691, line: 1412, baseType: !394, size: 64, offset: 20992)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1043, file: !691, line: 1453, baseType: !2901, size: 64, offset: 21056)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !691, line: 1453, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1043, file: !691, line: 1457, baseType: !2904, size: 64, offset: 21120)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2906)
!2906 = !{!2907, !2908, !2927, !2930, !2931, !2964, !2974}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2905, file: !68, line: 62, baseType: !67, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2905, file: !68, line: 64, baseType: !2909, size: 192, offset: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2905, file: !68, line: 64, size: 192, elements: !2910)
!2910 = !{!2911, !2922}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !68, line: 65, baseType: !2912, size: 192)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !68, line: 65, size: 192, elements: !2913)
!2913 = !{!2914, !2921}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2912, file: !68, line: 66, baseType: !2915, size: 128)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2916, line: 50, size: 128, elements: !2917)
!2916 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2915, file: !2916, line: 52, baseType: !394, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2915, file: !2916, line: 54, baseType: !7, size: 32, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2915, file: !2916, line: 55, baseType: !7, size: 32, offset: 96)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2912, file: !68, line: 67, baseType: !394, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !68, line: 70, baseType: !2923, size: 192)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !68, line: 70, size: 192, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2923, file: !68, line: 71, baseType: !1027, size: 128, align: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2923, file: !68, line: 72, baseType: !394, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2905, file: !68, line: 76, baseType: !2928, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2905, file: !68, line: 77, baseType: !394, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2905, file: !68, line: 79, baseType: !2932, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2916, line: 25, size: 256, elements: !2934)
!2934 = !{!2935, !2941, !2945}
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !2933, file: !2916, line: 26, baseType: !2936, size: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2933, file: !2916, line: 26, size: 128, elements: !2937)
!2937 = !{!2938, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2936, file: !2916, line: 27, baseType: !2939, size: 128)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 128, elements: !2467)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2936, file: !2916, line: 28, baseType: !2939, size: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2933, file: !2916, line: 31, baseType: !2942, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2944)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2916, line: 23, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2933, file: !2916, line: 33, baseType: !2946, size: 64, offset: 192)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2933, file: !2916, line: 33, size: 64, elements: !2947)
!2947 = !{!2948, !2954, !2959}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2946, file: !2916, line: 38, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2916, line: 34, size: 64, elements: !2950)
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2949, file: !2916, line: 35, baseType: !1475, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2949, file: !2916, line: 36, baseType: !303, size: 8, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2949, file: !2916, line: 37, baseType: !303, size: 8, offset: 40)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2946, file: !2916, line: 42, baseType: !2955, size: 16)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2916, line: 39, size: 16, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2955, file: !2916, line: 40, baseType: !303, size: 8)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2955, file: !2916, line: 41, baseType: !303, size: 8, offset: 8)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2946, file: !2916, line: 46, baseType: !2960, size: 16)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2916, line: 43, size: 16, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2960, file: !2916, line: 44, baseType: !303, size: 8)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2960, file: !2916, line: 45, baseType: !303, size: 8, offset: 8)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2905, file: !68, line: 81, baseType: !2965, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2966, file: !68, line: 86, baseType: !2928, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2966, file: !68, line: 87, baseType: !394, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2966, file: !68, line: 88, baseType: !394, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2966, file: !68, line: 89, baseType: !394, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2966, file: !68, line: 90, baseType: !1532, size: 8, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2966, file: !68, line: 92, baseType: !2965, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2905, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1043, file: !691, line: 1463, baseType: !2976, offset: 21184)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !691, line: 739, elements: !620)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1043, file: !691, line: 1470, baseType: !1027, size: 128, align: 64, offset: 21184)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1043, file: !691, line: 1471, baseType: !1056, size: 32, offset: 21312)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1043, file: !691, line: 1472, baseType: !109, size: 32, offset: 21344)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1043, file: !691, line: 1474, baseType: !1042, size: 64, offset: 21376)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1043, file: !691, line: 1475, baseType: !2982, size: 320, offset: 21440)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2983, line: 11, size: 320, elements: !2984)
!2983 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2984 = !{!2985, !2986, !2987, !2992}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2982, file: !2983, line: 16, baseType: !220, size: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2982, file: !2983, line: 17, baseType: !394, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2982, file: !2983, line: 18, baseType: !2988, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2982, file: !2983, line: 19, baseType: !493, size: 32, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1043, file: !691, line: 1478, baseType: !2994, size: 64, offset: 21760)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2996, line: 49, size: 512, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2997 = !{!2998, !2999, !3000, !3001, !3002, !3004, !3005, !3006, !3008}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2995, file: !2996, line: 50, baseType: !2994, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2995, file: !2996, line: 51, baseType: !215, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2995, file: !2996, line: 52, baseType: !394, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2995, file: !2996, line: 53, baseType: !394, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2995, file: !2996, line: 54, baseType: !3003, size: 64, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2995, file: !2996, line: 56, baseType: !7, size: 32, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2995, file: !2996, line: 58, baseType: !7, size: 32, offset: 352)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2995, file: !2996, line: 59, baseType: !3007, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !214, line: 159, baseType: !496)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2995, file: !2996, line: 60, baseType: !2270, size: 64, offset: 448)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1043, file: !691, line: 1482, baseType: !1056, size: 32, offset: 21824)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1043, file: !691, line: 1489, baseType: !215, size: 64, offset: 21888)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1043, file: !691, line: 1504, baseType: !215, size: 64, offset: 21952)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1043, file: !691, line: 1505, baseType: !497, size: 64, offset: 22016)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1043, file: !691, line: 1506, baseType: !496, size: 64, offset: 22080)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1043, file: !691, line: 1507, baseType: !497, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1043, file: !691, line: 1508, baseType: !497, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1043, file: !691, line: 1509, baseType: !497, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1043, file: !691, line: 1510, baseType: !1027, size: 128, align: 64, offset: 22208)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1043, file: !691, line: 1511, baseType: !109, size: 32, offset: 22336)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1043, file: !691, line: 1515, baseType: !3020, size: 64, offset: 22400)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1070, line: 56, size: 64, elements: !3021)
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3020, file: !1070, line: 57, baseType: !1073, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1043, file: !691, line: 1518, baseType: !3020, size: 64, offset: 22464)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1043, file: !691, line: 1528, baseType: !1027, size: 128, align: 64, offset: 22528)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1043, file: !691, line: 1552, baseType: !3026, size: 35328, offset: 23040)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3027, line: 430, size: 35328, elements: !3028)
!3027 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3028 = !{!3029, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3058, !3059, !3060, !3061, !3062, !3063, !3066, !3067, !3068, !3069}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3026, file: !3027, line: 432, baseType: !3030, size: 192)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3031, size: 192, elements: !345)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3032, line: 16, size: 64, elements: !3033)
!3032 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3031, file: !3032, line: 17, baseType: !312, size: 16)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3031, file: !3032, line: 18, baseType: !312, size: 16, offset: 16)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3031, file: !3032, line: 19, baseType: !312, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3031, file: !3032, line: 19, baseType: !312, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3031, file: !3032, line: 19, baseType: !312, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3031, file: !3032, line: 19, baseType: !312, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3031, file: !3032, line: 19, baseType: !312, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3031, file: !3032, line: 20, baseType: !312, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3031, file: !3032, line: 20, baseType: !312, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3031, file: !3032, line: 20, baseType: !312, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3031, file: !3032, line: 20, baseType: !312, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3031, file: !3032, line: 20, baseType: !312, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3031, file: !3032, line: 20, baseType: !312, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3026, file: !3027, line: 436, baseType: !394, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3026, file: !3027, line: 440, baseType: !314, size: 16, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3026, file: !3027, line: 441, baseType: !314, size: 16, offset: 272)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3026, file: !3027, line: 442, baseType: !314, size: 16, offset: 288)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3026, file: !3027, line: 443, baseType: !314, size: 16, offset: 304)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3026, file: !3027, line: 447, baseType: !394, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3026, file: !3027, line: 448, baseType: !394, size: 64, offset: 384)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3026, file: !3027, line: 459, baseType: !3055, size: 256, offset: 448)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3056, size: 256, elements: !185)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3027, line: 428, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3026, file: !3027, line: 461, baseType: !394, size: 64, offset: 704)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3026, file: !3027, line: 463, baseType: !394, size: 64, offset: 768)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3026, file: !3027, line: 465, baseType: !394, size: 64, offset: 832)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3026, file: !3027, line: 466, baseType: !394, size: 64, offset: 896)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3026, file: !3027, line: 467, baseType: !394, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3026, file: !3027, line: 473, baseType: !3064, size: 64, offset: 1024)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3027, line: 10, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3026, file: !3027, line: 480, baseType: !394, size: 64, offset: 1088)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3026, file: !3027, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3026, file: !3027, line: 491, baseType: !493, size: 32, offset: 1184)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3026, file: !3027, line: 501, baseType: !3070, size: 33792, offset: 1536)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3071, line: 448, size: 33792, elements: !3072)
!3071 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3072 = !{!3073, !3074, !3075, !3237, !3238, !3244, !3245}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3070, file: !3071, line: 461, baseType: !7, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3070, file: !3071, line: 468, baseType: !394, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3070, file: !3071, line: 476, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3071, line: 356, size: 33280, align: 512, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3077, file: !3071, line: 358, baseType: !7, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3077, file: !3071, line: 361, baseType: !7, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3077, file: !3071, line: 364, baseType: !496, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3077, file: !3071, line: 367, baseType: !496, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3077, file: !3071, line: 370, baseType: !496, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3077, file: !3071, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3077, file: !3071, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3077, file: !3071, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3077, file: !3071, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3077, file: !3071, line: 397, baseType: !3089, size: 32768, offset: 512)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3071, line: 348, size: 32768, elements: !3090)
!3090 = !{!3091, !3106, !3143, !3220, !3233}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3089, file: !3071, line: 349, baseType: !3092, size: 896)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3071, line: 12, size: 896, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3105}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3092, file: !3071, line: 13, baseType: !493, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3092, file: !3071, line: 14, baseType: !493, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3092, file: !3071, line: 15, baseType: !493, size: 32, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3092, file: !3071, line: 16, baseType: !493, size: 32, offset: 96)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3092, file: !3071, line: 17, baseType: !493, size: 32, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3092, file: !3071, line: 18, baseType: !493, size: 32, offset: 160)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3092, file: !3071, line: 19, baseType: !493, size: 32, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3092, file: !3071, line: 22, baseType: !3102, size: 640, offset: 224)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 640, elements: !3103)
!3103 = !{!3104}
!3104 = !DISubrange(count: 20)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3092, file: !3071, line: 25, baseType: !493, size: 32, offset: 864)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3089, file: !3071, line: 350, baseType: !3107, size: 4096, align: 128)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3071, line: 34, size: 4096, align: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3128, !3129, !3130, !3132, !3134, !3138}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3107, file: !3071, line: 35, baseType: !312, size: 16)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3107, file: !3071, line: 36, baseType: !312, size: 16, offset: 16)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3107, file: !3071, line: 37, baseType: !312, size: 16, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3107, file: !3071, line: 38, baseType: !312, size: 16, offset: 48)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3107, file: !3071, line: 39, baseType: !3114, size: 128, offset: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3107, file: !3071, line: 39, size: 128, elements: !3115)
!3115 = !{!3116, !3121}
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3071, line: 40, baseType: !3117, size: 128)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3071, line: 40, size: 128, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3117, file: !3071, line: 41, baseType: !496, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3117, file: !3071, line: 42, baseType: !496, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3071, line: 44, baseType: !3122, size: 128)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3071, line: 44, size: 128, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3122, file: !3071, line: 45, baseType: !493, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3122, file: !3071, line: 46, baseType: !493, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3122, file: !3071, line: 47, baseType: !493, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3122, file: !3071, line: 48, baseType: !493, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3107, file: !3071, line: 51, baseType: !493, size: 32, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3107, file: !3071, line: 52, baseType: !493, size: 32, offset: 224)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3107, file: !3071, line: 55, baseType: !3131, size: 1024, offset: 256)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 1024, elements: !505)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3107, file: !3071, line: 58, baseType: !3133, size: 2048, offset: 1280)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 2048, elements: !349)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3107, file: !3071, line: 60, baseType: !3135, size: 384, offset: 3328)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 384, elements: !3136)
!3136 = !{!3137}
!3137 = !DISubrange(count: 12)
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3107, file: !3071, line: 62, baseType: !3139, size: 384, offset: 3712)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3107, file: !3071, line: 62, size: 384, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3139, file: !3071, line: 63, baseType: !3135, size: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3139, file: !3071, line: 64, baseType: !3135, size: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3089, file: !3071, line: 351, baseType: !3144, size: 1088)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3071, line: 79, size: 1088, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3219}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3144, file: !3071, line: 80, baseType: !493, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3144, file: !3071, line: 81, baseType: !493, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3144, file: !3071, line: 82, baseType: !493, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3144, file: !3071, line: 83, baseType: !493, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3144, file: !3071, line: 84, baseType: !493, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3144, file: !3071, line: 85, baseType: !493, size: 32, offset: 160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3144, file: !3071, line: 86, baseType: !493, size: 32, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3144, file: !3071, line: 88, baseType: !3102, size: 640, offset: 224)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3144, file: !3071, line: 89, baseType: !303, size: 8, offset: 864)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3144, file: !3071, line: 90, baseType: !303, size: 8, offset: 872)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3144, file: !3071, line: 91, baseType: !303, size: 8, offset: 880)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3144, file: !3071, line: 92, baseType: !303, size: 8, offset: 888)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3144, file: !3071, line: 93, baseType: !303, size: 8, offset: 896)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3144, file: !3071, line: 94, baseType: !303, size: 8, offset: 904)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3144, file: !3071, line: 95, baseType: !3161, size: 64, offset: 960)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3163, line: 11, size: 128, elements: !3164)
!3163 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3162, file: !3163, line: 12, baseType: !380, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3162, file: !3163, line: 13, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3169, line: 103, size: 1344, elements: !3170)
!3169 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3199, !3200, !3201}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3168, file: !3169, line: 109, baseType: !394, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3168, file: !3169, line: 110, baseType: !394, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3168, file: !3169, line: 111, baseType: !394, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3168, file: !3169, line: 112, baseType: !394, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3168, file: !3169, line: 113, baseType: !394, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3168, file: !3169, line: 114, baseType: !394, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3168, file: !3169, line: 117, baseType: !394, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3168, file: !3169, line: 118, baseType: !394, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3168, file: !3169, line: 119, baseType: !394, size: 64, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3168, file: !3169, line: 120, baseType: !394, size: 64, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3168, file: !3169, line: 121, baseType: !394, size: 64, offset: 640)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3168, file: !3169, line: 122, baseType: !394, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3168, file: !3169, line: 123, baseType: !394, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3168, file: !3169, line: 124, baseType: !394, size: 64, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3168, file: !3169, line: 125, baseType: !394, size: 64, offset: 896)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3168, file: !3169, line: 139, baseType: !394, size: 64, offset: 960)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3168, file: !3169, line: 142, baseType: !394, size: 64, offset: 1024)
!3188 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3169, line: 144, baseType: !3189, size: 64, offset: 1088)
!3189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3169, line: 144, size: 64, elements: !3190)
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3189, file: !3169, line: 146, baseType: !312, size: 16)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3189, file: !3169, line: 148, baseType: !496, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3189, file: !3169, line: 150, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3169, line: 59, size: 64, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3194, file: !3169, line: 61, baseType: !496, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3194, file: !3169, line: 63, baseType: !496, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3194, file: !3169, line: 65, baseType: !496, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3168, file: !3169, line: 153, baseType: !394, size: 64, offset: 1152)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3168, file: !3169, line: 154, baseType: !394, size: 64, offset: 1216)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3169, line: 156, baseType: !3202, size: 64, offset: 1280)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3169, line: 156, size: 64, elements: !3203)
!3203 = !{!3204, !3205, !3206}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3202, file: !3169, line: 158, baseType: !312, size: 16)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3202, file: !3169, line: 160, baseType: !496, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3202, file: !3169, line: 162, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3169, line: 69, size: 64, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3207, file: !3169, line: 71, baseType: !496, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3207, file: !3169, line: 73, baseType: !496, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3207, file: !3169, line: 75, baseType: !496, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3207, file: !3169, line: 77, baseType: !496, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3207, file: !3169, line: 80, baseType: !496, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3207, file: !3169, line: 83, baseType: !496, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3207, file: !3169, line: 86, baseType: !496, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3207, file: !3169, line: 88, baseType: !496, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3207, file: !3169, line: 93, baseType: !496, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3207, file: !3169, line: 100, baseType: !496, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3144, file: !3071, line: 96, baseType: !493, size: 32, offset: 1024)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3089, file: !3071, line: 352, baseType: !3221, size: 4608, align: 512)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3071, line: 333, size: 4608, align: 512, elements: !3222)
!3222 = !{!3223, !3224, !3231}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3221, file: !3071, line: 334, baseType: !3107, size: 4096, align: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3221, file: !3071, line: 335, baseType: !3225, size: 512, offset: 4096)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3071, line: 312, size: 512, elements: !3226)
!3226 = !{!3227, !3228, !3229}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3225, file: !3071, line: 313, baseType: !496, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3225, file: !3071, line: 314, baseType: !496, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3225, file: !3071, line: 315, baseType: !3230, size: 384, offset: 128)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 384, elements: !1519)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3221, file: !3071, line: 336, baseType: !3232, offset: 4608)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, elements: !1433)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3089, file: !3071, line: 353, baseType: !3234, size: 32768)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 32768, elements: !3235)
!3235 = !{!3236}
!3236 = !DISubrange(count: 4096)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3070, file: !3071, line: 484, baseType: !3076, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3070, file: !3071, line: 491, baseType: !3239, size: 128, offset: 256)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3071, line: 404, size: 128, elements: !3240)
!3240 = !{!3241, !3242, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3239, file: !3071, line: 424, baseType: !496, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3239, file: !3071, line: 432, baseType: !7, size: 32, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3239, file: !3071, line: 440, baseType: !7, size: 32, offset: 96)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3070, file: !3071, line: 498, baseType: !3239, size: 128, offset: 384)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3070, file: !3071, line: 508, baseType: !3077, size: 33280, align: 512, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1010, file: !1011, line: 16, baseType: !1020, size: 192, offset: 512)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1010, file: !1011, line: 17, baseType: !295, size: 32, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !575, file: !14, line: 1240, baseType: !215, size: 64, offset: 6912)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !575, file: !14, line: 1243, baseType: !493, size: 32, offset: 6976)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !575, file: !14, line: 1245, baseType: !768, size: 64, offset: 7040)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !575, file: !14, line: 1246, baseType: !768, size: 64, offset: 7104)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !575, file: !14, line: 1248, baseType: !173, size: 32, offset: 7168)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !575, file: !14, line: 1249, baseType: !3254, size: 64, offset: 7232)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !575, file: !14, line: 1252, baseType: !3257, size: 256, offset: 7296)
!3257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !505)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !575, file: !14, line: 1253, baseType: !3259, size: 128, offset: 7552)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3260, line: 21, baseType: !3261)
!3260 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3260, line: 19, size: 128, elements: !3262)
!3262 = !{!3263}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3261, file: !3260, line: 20, baseType: !3264, size: 128)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 128, elements: !2467)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !575, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !575, file: !14, line: 1261, baseType: !716, size: 256, offset: 7744)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !575, file: !14, line: 1267, baseType: !264, size: 64, offset: 8000)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !575, file: !14, line: 1269, baseType: !521, size: 64, offset: 8064)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !575, file: !14, line: 1271, baseType: !3270, size: 448, offset: 8128)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !777, line: 63, size: 448, elements: !3271)
!3271 = !{!3272, !3277, !3278, !3279, !3280, !3281, !3282}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3270, file: !777, line: 64, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!394, !3276, !775}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3270, file: !777, line: 66, baseType: !3273, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3270, file: !777, line: 69, baseType: !380, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3270, file: !777, line: 70, baseType: !109, size: 32, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3270, file: !777, line: 71, baseType: !7, size: 32, offset: 224)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3270, file: !777, line: 74, baseType: !246, size: 128, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3270, file: !777, line: 85, baseType: !3283, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !575, file: !14, line: 1274, baseType: !720, size: 64, offset: 8576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !575, file: !14, line: 1280, baseType: !720, size: 64, offset: 8640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !575, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !575, file: !14, line: 1286, baseType: !2181, size: 32, offset: 8736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !575, file: !14, line: 1289, baseType: !3289, size: 64, offset: 8768)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2310, line: 18, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !575, file: !14, line: 1290, baseType: !614, size: 64, offset: 8832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !575, file: !14, line: 1297, baseType: !1615, size: 64, offset: 8896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !575, file: !14, line: 1304, baseType: !3294, size: 64, offset: 8960)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3295, line: 49, size: 64, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3296 = !{!3297}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3294, file: !3295, line: 50, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3295, line: 41, size: 512, align: 512, elements: !3300)
!3300 = !{!3301, !3302, !3307}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3299, file: !3295, line: 43, baseType: !275, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3299, file: !3295, line: 45, baseType: !3303, size: 192, offset: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3295, line: 29, size: 192, elements: !3304)
!3304 = !{!3305, !3306}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3303, file: !3295, line: 30, baseType: !246, size: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3303, file: !3295, line: 32, baseType: !380, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3299, file: !3295, line: 46, baseType: !380, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !575, file: !14, line: 1305, baseType: !3294, size: 64, offset: 9024)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !575, file: !14, line: 1306, baseType: !1027, size: 128, align: 64, offset: 9088)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !575, file: !14, line: 1307, baseType: !2309, size: 256, offset: 9216)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !575, file: !14, line: 1309, baseType: !716, size: 256, offset: 9472)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !575, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !575, file: !14, line: 1317, baseType: !275, size: 32, align: 512, offset: 10240)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !575, file: !14, line: 1318, baseType: !246, size: 128, offset: 10304)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !575, file: !14, line: 1320, baseType: !275, size: 32, offset: 10432)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !575, file: !14, line: 1321, baseType: !246, size: 128, offset: 10496)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !569, file: !570, line: 73, baseType: !109, size: 32, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !569, file: !570, line: 74, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1457, line: 42, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !523, file: !461, line: 141, baseType: !3323, size: 64, offset: 704)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!109, !837, !1532}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !523, file: !461, line: 142, baseType: !3327, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!459, !459, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !460, file: !461, line: 96, baseType: !574, size: 64, offset: 832)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !460, file: !461, line: 97, baseType: !394, size: 64, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !460, file: !461, line: 98, baseType: !215, size: 64, offset: 960)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !461, line: 100, baseType: !3336, size: 128, offset: 1024)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 100, size: 128, elements: !3337)
!3337 = !{!3338, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3336, file: !461, line: 101, baseType: !246, size: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3336, file: !461, line: 102, baseType: !2085, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !460, file: !461, line: 104, baseType: !246, size: 128, offset: 1152)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !460, file: !461, line: 105, baseType: !246, size: 128, offset: 1280)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !460, file: !461, line: 113, baseType: !3343, size: 128, offset: 1408)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 109, size: 128, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3343, file: !461, line: 110, baseType: !220, size: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3343, file: !461, line: 111, baseType: !475, size: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3343, file: !461, line: 112, baseType: !1027, size: 128, align: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !453, file: !14, line: 1968, baseType: !3349, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!264, !459, !424, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3354, line: 10, size: 128, elements: !3355)
!3354 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3355 = !{!3356, !3360}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3353, file: !3354, line: 11, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !215}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3353, file: !3354, line: 12, baseType: !215, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !453, file: !14, line: 1969, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!109, !3319, !424, !109}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !453, file: !14, line: 1970, baseType: !3366, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!447, !424, !109, !1532}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !453, file: !14, line: 1972, baseType: !3370, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!109, !459, !344, !109}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !453, file: !14, line: 1974, baseType: !3374, size: 64, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!109, !3319, !424, !459, !386, !1532}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !453, file: !14, line: 1976, baseType: !3378, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!109, !459, !424, !459}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !453, file: !14, line: 1977, baseType: !3382, size: 64, offset: 448)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!109, !424, !459}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !453, file: !14, line: 1978, baseType: !3386, size: 64, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!109, !3319, !424, !459, !264}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !453, file: !14, line: 1980, baseType: !3390, size: 64, offset: 576)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!109, !3319, !424, !459, !386}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !453, file: !14, line: 1982, baseType: !3382, size: 64, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !453, file: !14, line: 1983, baseType: !3395, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!109, !3319, !424, !459, !386, !579}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !453, file: !14, line: 1985, baseType: !3399, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!109, !3319, !424, !459, !424, !459, !7}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !453, file: !14, line: 1987, baseType: !3403, size: 64, offset: 832)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!109, !3319, !459, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3421, !3430, !3431, !3436, !3437, !3438}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3407, file: !14, line: 227, baseType: !7, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3407, file: !14, line: 228, baseType: !386, size: 16, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !14, line: 241, baseType: !3412, size: 32, offset: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !14, line: 241, size: 32, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3412, file: !14, line: 242, baseType: !430, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3412, file: !14, line: 243, baseType: !3416, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3417, line: 16, baseType: !3418)
!3417 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3417, line: 14, size: 32, elements: !3419)
!3419 = !{!3420}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3418, file: !3417, line: 15, baseType: !435, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !14, line: 245, baseType: !3422, size: 32, offset: 96)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !14, line: 245, size: 32, elements: !3423)
!3423 = !{!3424, !3425}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3422, file: !14, line: 246, baseType: !439, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3422, file: !14, line: 247, baseType: !3426, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3417, line: 20, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3417, line: 18, size: 32, elements: !3428)
!3428 = !{!3429}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3427, file: !3417, line: 19, baseType: !443, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3407, file: !14, line: 249, baseType: !584, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3407, file: !14, line: 250, baseType: !3432, size: 128, offset: 192)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !769, line: 13, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3432, file: !769, line: 14, baseType: !768, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3432, file: !769, line: 15, baseType: !380, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3407, file: !14, line: 251, baseType: !3432, size: 128, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3407, file: !14, line: 252, baseType: !3432, size: 128, offset: 448)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3407, file: !14, line: 259, baseType: !1373, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !453, file: !14, line: 1988, baseType: !3440, size: 64, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!109, !3319, !837, !3443, !493, !7}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3445, line: 22, size: 1280, elements: !3446)
!3445 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3444, file: !3445, line: 23, baseType: !493, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3444, file: !3445, line: 24, baseType: !386, size: 16, offset: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3444, file: !3445, line: 25, baseType: !7, size: 32, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3444, file: !3445, line: 26, baseType: !1497, size: 32, offset: 96)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3444, file: !3445, line: 27, baseType: !496, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3444, file: !3445, line: 28, baseType: !496, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3444, file: !3445, line: 41, baseType: !496, size: 64, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3444, file: !3445, line: 42, baseType: !579, size: 32, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3444, file: !3445, line: 43, baseType: !579, size: 32, offset: 352)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3444, file: !3445, line: 44, baseType: !430, size: 32, offset: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3444, file: !3445, line: 45, baseType: !439, size: 32, offset: 416)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3444, file: !3445, line: 46, baseType: !584, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3444, file: !3445, line: 47, baseType: !3432, size: 128, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3444, file: !3445, line: 48, baseType: !3432, size: 128, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3444, file: !3445, line: 49, baseType: !3432, size: 128, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3444, file: !3445, line: 50, baseType: !3432, size: 128, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3444, file: !3445, line: 51, baseType: !496, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3444, file: !3445, line: 52, baseType: !496, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3444, file: !3445, line: 53, baseType: !493, size: 32, offset: 1152)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3444, file: !3445, line: 54, baseType: !493, size: 32, offset: 1184)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3444, file: !3445, line: 55, baseType: !496, size: 64, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !453, file: !14, line: 1990, baseType: !3469, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!376, !459, !344, !391}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !453, file: !14, line: 1991, baseType: !3473, size: 64, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!109, !424, !3476, !496, !496}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !453, file: !14, line: 1993, baseType: !3479, size: 64, offset: 1088)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!109, !424, !109}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !453, file: !14, line: 1994, baseType: !3483, size: 64, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!109, !424, !459, !1373, !7, !386}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !453, file: !14, line: 1997, baseType: !3487, size: 64, offset: 1216)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!109, !3319, !424, !1373, !386}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !453, file: !14, line: 1999, baseType: !3491, size: 64, offset: 1280)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!447, !3319, !459, !109}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !453, file: !14, line: 2001, baseType: !3495, size: 64, offset: 1344)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!109, !3319, !459, !447, !109}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !453, file: !14, line: 2003, baseType: !3499, size: 64, offset: 1408)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!109, !3319, !459, !3502}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !453, file: !14, line: 2005, baseType: !3505, size: 64, offset: 1472)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!109, !459, !3502}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !453, file: !14, line: 2006, baseType: !3509, size: 64, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3512, !424}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3514)
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3513, file: !14, line: 3193, baseType: !2037, size: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3513, file: !14, line: 3194, baseType: !493, size: 32, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !425, file: !14, line: 655, baseType: !574, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !425, file: !14, line: 656, baseType: !420, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !425, file: !14, line: 659, baseType: !215, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !425, file: !14, line: 663, baseType: !394, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 671, baseType: !3522, size: 32, offset: 704)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 671, size: 32, elements: !3523)
!3523 = !{!3524, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3522, file: !14, line: 672, baseType: !3525, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3522, file: !14, line: 673, baseType: !7, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !425, file: !14, line: 675, baseType: !579, size: 32, offset: 736)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !425, file: !14, line: 676, baseType: !584, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !425, file: !14, line: 677, baseType: !3432, size: 128, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !425, file: !14, line: 678, baseType: !3432, size: 128, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !425, file: !14, line: 679, baseType: !3432, size: 128, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !425, file: !14, line: 680, baseType: !275, size: 32, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !425, file: !14, line: 681, baseType: !314, size: 16, offset: 1248)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !425, file: !14, line: 682, baseType: !303, size: 8, offset: 1264)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !425, file: !14, line: 683, baseType: !303, size: 8, offset: 1272)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !425, file: !14, line: 684, baseType: !915, size: 64, offset: 1280)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !425, file: !14, line: 691, baseType: !394, size: 64, offset: 1344)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !425, file: !14, line: 692, baseType: !927, size: 320, offset: 1408)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !425, file: !14, line: 694, baseType: !394, size: 64, offset: 1728)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !425, file: !14, line: 695, baseType: !394, size: 64, offset: 1792)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !425, file: !14, line: 697, baseType: !220, size: 128, offset: 1856)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !425, file: !14, line: 698, baseType: !246, size: 128, offset: 1984)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !425, file: !14, line: 707, baseType: !246, size: 128, offset: 2112)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !425, file: !14, line: 708, baseType: !246, size: 128, offset: 2240)
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 709, baseType: !3546, size: 128, offset: 2368)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 709, size: 128, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3546, file: !14, line: 710, baseType: !614, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3546, file: !14, line: 711, baseType: !1027, size: 128, align: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !425, file: !14, line: 713, baseType: !722, size: 64, offset: 2496)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !425, file: !14, line: 714, baseType: !722, size: 64, offset: 2560)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !425, file: !14, line: 715, baseType: !295, size: 32, offset: 2624)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !425, file: !14, line: 716, baseType: !295, size: 32, offset: 2656)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !425, file: !14, line: 717, baseType: !295, size: 32, offset: 2688)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !425, file: !14, line: 719, baseType: !295, size: 32, offset: 2720)
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 721, baseType: !3557, size: 64, offset: 2752)
!3557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 721, size: 64, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3557, file: !14, line: 722, baseType: !1646, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3557, file: !14, line: 723, baseType: !639, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !425, file: !14, line: 725, baseType: !3562, size: 64, offset: 2816)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !425, file: !14, line: 726, baseType: !421, size: 1536, align: 64, offset: 2880)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !425, file: !14, line: 727, baseType: !246, size: 128, offset: 4416)
!3566 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 728, baseType: !3567, size: 64, offset: 4544)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 728, size: 64, elements: !3568)
!3568 = !{!3569, !3570, !3581, !3582}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3567, file: !14, line: 729, baseType: !2131, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3567, file: !14, line: 730, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3573, line: 14, size: 832, elements: !3574)
!3573 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3572, file: !3573, line: 15, baseType: !260, size: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3572, file: !3573, line: 16, baseType: !241, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3572, file: !3573, line: 17, baseType: !1646, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3572, file: !3573, line: 18, baseType: !246, size: 128, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3572, file: !3573, line: 19, baseType: !579, size: 32, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3572, file: !3573, line: 20, baseType: !7, size: 32, offset: 800)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3567, file: !14, line: 731, baseType: !344, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3567, file: !14, line: 732, baseType: !7, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !425, file: !14, line: 735, baseType: !173, size: 32, offset: 4608)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !425, file: !14, line: 738, baseType: !173, size: 32, offset: 4640)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !425, file: !14, line: 739, baseType: !3254, size: 64, offset: 4672)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !425, file: !14, line: 750, baseType: !215, size: 64, offset: 4736)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !421, file: !14, line: 474, baseType: !2037, size: 128, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !421, file: !14, line: 475, baseType: !927, size: 320, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !421, file: !14, line: 476, baseType: !213, size: 32, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !421, file: !14, line: 477, baseType: !295, size: 32, offset: 544)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !421, file: !14, line: 482, baseType: !1229, size: 128, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !421, file: !14, line: 483, baseType: !394, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !421, file: !14, line: 484, baseType: !394, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !421, file: !14, line: 485, baseType: !3595, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3598)
!3598 = !{!3599, !3603, !3673, !3677, !3681, !3687, !3691, !3695, !3700, !3704, !3708, !3712, !3713, !3717, !3721, !3725, !3730, !3734, !3741, !3742}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3597, file: !14, line: 405, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!109, !1736, !651}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3597, file: !14, line: 406, baseType: !3604, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!109, !1373, !3607}
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !3609)
!3609 = !{!3610, !3640, !3654}
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3608, file: !46, line: 295, baseType: !3611, size: 512)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3608, file: !46, line: 295, size: 512, elements: !3612)
!3612 = !{!3613, !3639}
!3613 = !DIDerivedType(tag: DW_TAG_member, scope: !3611, file: !46, line: 296, baseType: !3614, size: 448)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3611, file: !46, line: 296, size: 448, elements: !3615)
!3615 = !{!3616, !3617, !3626, !3627, !3628, !3637, !3638}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3614, file: !46, line: 298, baseType: !394, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, scope: !3614, file: !46, line: 299, baseType: !3618, size: 128, offset: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3614, file: !46, line: 299, size: 128, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3618, file: !46, line: 300, baseType: !246, size: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !46, line: 302, baseType: !3622, size: 128)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3618, file: !46, line: 302, size: 128, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3622, file: !46, line: 303, baseType: !215, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3622, file: !46, line: 305, baseType: !7, size: 32, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3614, file: !46, line: 310, baseType: !420, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3614, file: !46, line: 311, baseType: !394, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !3614, file: !46, line: 312, baseType: !3629, size: 64, offset: 320)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3614, file: !46, line: 312, size: 64, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3629, file: !46, line: 313, baseType: !215, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3629, file: !46, line: 314, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !3635)
!3635 = !{!3636}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3634, file: !46, line: 256, baseType: !394, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3614, file: !46, line: 316, baseType: !295, size: 32, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3614, file: !46, line: 317, baseType: !295, size: 32, offset: 416)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3611, file: !46, line: 323, baseType: !1737, size: 512, align: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3608, file: !46, line: 325, baseType: !3641, size: 512, offset: 512)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3608, file: !46, line: 325, size: 512, elements: !3642)
!3642 = !{!3643, !3653}
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !46, line: 326, baseType: !3644, size: 320)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3641, file: !46, line: 326, size: 320, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3644, file: !46, line: 327, baseType: !394, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3644, file: !46, line: 328, baseType: !394, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3644, file: !46, line: 329, baseType: !394, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3644, file: !46, line: 331, baseType: !295, size: 32, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3644, file: !46, line: 332, baseType: !295, size: 32, offset: 224)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3644, file: !46, line: 333, baseType: !295, size: 32, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3644, file: !46, line: 335, baseType: !7, size: 32, offset: 288)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3641, file: !46, line: 339, baseType: !1737, size: 512, align: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3608, file: !46, line: 341, baseType: !3655, size: 512, offset: 1024)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3608, file: !46, line: 341, size: 512, elements: !3656)
!3656 = !{!3657, !3666, !3672}
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !46, line: 342, baseType: !3658, size: 384)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !46, line: 342, size: 384, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664, !3665}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3658, file: !46, line: 343, baseType: !394, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3658, file: !46, line: 344, baseType: !394, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3658, file: !46, line: 346, baseType: !215, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3658, file: !46, line: 347, baseType: !215, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3658, file: !46, line: 348, baseType: !215, size: 64, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3658, file: !46, line: 349, baseType: !215, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !46, line: 352, baseType: !3667, size: 256)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !46, line: 352, size: 256, elements: !3668)
!3668 = !{!3669, !3670, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3667, file: !46, line: 353, baseType: !394, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3667, file: !46, line: 354, baseType: !394, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3667, file: !46, line: 356, baseType: !246, size: 128, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3655, file: !46, line: 359, baseType: !1737, size: 512, align: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3597, file: !14, line: 409, baseType: !3674, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!109, !420, !651}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3597, file: !14, line: 412, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!1532, !420, !3607}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3597, file: !14, line: 414, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3597, file: !14, line: 416, baseType: !3688, size: 64, offset: 320)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !1373, !420, !584, !7, !3003, !2146}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3597, file: !14, line: 419, baseType: !3692, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !1373, !420, !584, !7, !7, !1736, !215}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3597, file: !14, line: 424, baseType: !3696, size: 64, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!3699, !420, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !214, line: 131, baseType: !496)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3597, file: !14, line: 425, baseType: !3701, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3607, !391, !391}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3597, file: !14, line: 426, baseType: !3705, size: 64, offset: 576)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!1532, !3607, !213}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3597, file: !14, line: 427, baseType: !3709, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3607}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3597, file: !14, line: 428, baseType: !1665, size: 64, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3597, file: !14, line: 433, baseType: !3714, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!109, !420, !3607, !3607, !74}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3597, file: !14, line: 435, baseType: !3718, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!109, !3607}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3597, file: !14, line: 436, baseType: !3722, size: 64, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!1532, !3607, !391, !391}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3597, file: !14, line: 438, baseType: !3726, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3607, !3729, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3597, file: !14, line: 439, baseType: !3731, size: 64, offset: 1024)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!109, !420, !1736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3597, file: !14, line: 442, baseType: !3735, size: 64, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!109, !3738, !1373, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3597, file: !14, line: 444, baseType: !2138, size: 64, offset: 1152)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3597, file: !14, line: 445, baseType: !3743, size: 64, offset: 1216)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!109, !1668, !1690}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !14, line: 486, baseType: !394, size: 64, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !421, file: !14, line: 487, baseType: !927, size: 320, offset: 960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !421, file: !14, line: 488, baseType: !2181, size: 32, offset: 1280)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !421, file: !14, line: 489, baseType: !275, size: 32, offset: 1312)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !421, file: !14, line: 490, baseType: !246, size: 128, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !421, file: !14, line: 491, baseType: !215, size: 64, offset: 1472)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !411, file: !370, line: 180, baseType: !3753, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!376, !1373, !268, !410, !344, !584, !391}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !411, file: !370, line: 182, baseType: !3753, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !411, file: !370, line: 184, baseType: !3758, size: 64, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!109, !1373, !268, !410, !1856}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !399, file: !370, line: 90, baseType: !3762, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !399, file: !370, line: 91, baseType: !3764, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !360, file: !261, line: 120, baseType: !3766, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!3769, !327}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3771)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3772)
!3772 = !{!3773, !3774, !3778, !3782, !3788, !3792}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3771, file: !82, line: 40, baseType: !81, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3771, file: !82, line: 41, baseType: !3775, size: 64, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!1532}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3771, file: !82, line: 42, baseType: !3779, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!215}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3771, file: !82, line: 43, baseType: !3783, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!2270, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3771, file: !82, line: 44, baseType: !3789, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!2270}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3771, file: !82, line: 45, baseType: !3357, size: 64, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !360, file: !261, line: 121, baseType: !3794, size: 64, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!2270, !327}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !360, file: !261, line: 122, baseType: !3798, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !327, !3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !260, file: !261, line: 70, baseType: !3804, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !598, line: 190, size: 1152, elements: !3806)
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3898, !3899, !3900, !3901, !3902, !3905}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3805, file: !598, line: 191, baseType: !295, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3805, file: !598, line: 192, baseType: !295, size: 32, offset: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3805, file: !598, line: 202, baseType: !3804, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3805, file: !598, line: 203, baseType: !264, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3805, file: !598, line: 205, baseType: !1100, size: 192, align: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3805, file: !598, line: 207, baseType: !2270, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3805, file: !598, line: 208, baseType: !7, size: 32, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !598, line: 209, baseType: !3815, size: 256, offset: 512)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !598, line: 209, size: 256, elements: !3816)
!3816 = !{!3817, !3826, !3830}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3815, file: !598, line: 210, baseType: !3818, size: 256)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !598, line: 153, size: 256, elements: !3819)
!3819 = !{!3820, !3821, !3822, !3825}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3818, file: !598, line: 154, baseType: !394, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3818, file: !598, line: 156, baseType: !1232, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3818, file: !598, line: 162, baseType: !3823, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !598, line: 162, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3818, file: !598, line: 167, baseType: !394, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3815, file: !598, line: 211, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !598, line: 170, size: 64, elements: !3828)
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3827, file: !598, line: 171, baseType: !3804, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3815, file: !598, line: 212, baseType: !3831, size: 256)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !598, line: 174, size: 256, elements: !3832)
!3832 = !{!3833, !3893, !3896, !3897}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3831, file: !598, line: 175, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3836)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !598, line: 271, size: 768, elements: !3837)
!3837 = !{!3838, !3858, !3862, !3866, !3870, !3874, !3878, !3882, !3883, !3884, !3885, !3889}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3836, file: !598, line: 276, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!109, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !598, line: 251, size: 1216, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3843, file: !598, line: 253, baseType: !3804, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3843, file: !598, line: 254, baseType: !1373, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3843, file: !598, line: 255, baseType: !689, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3843, file: !598, line: 256, baseType: !215, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3843, file: !598, line: 259, baseType: !716, size: 256, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3843, file: !598, line: 260, baseType: !716, size: 256, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3843, file: !598, line: 261, baseType: !109, size: 32, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3843, file: !598, line: 262, baseType: !246, size: 128, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3843, file: !598, line: 263, baseType: !344, size: 64, offset: 960)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3843, file: !598, line: 265, baseType: !391, size: 64, offset: 1024)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3843, file: !598, line: 266, baseType: !1532, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3843, file: !598, line: 267, baseType: !1532, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3843, file: !598, line: 268, baseType: !1901, size: 64, offset: 1152)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3836, file: !598, line: 277, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3842}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3836, file: !598, line: 290, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!109, !689, !215}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3836, file: !598, line: 292, baseType: !3867, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!215, !689, !1659}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3836, file: !598, line: 293, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!215, !689, !215, !1659}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3836, file: !598, line: 294, baseType: !3875, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !689, !215}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3836, file: !598, line: 296, baseType: !3879, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!376, !3842, !344, !391, !584}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3836, file: !598, line: 306, baseType: !391, size: 64, offset: 448)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3836, file: !598, line: 313, baseType: !1532, size: 8, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3836, file: !598, line: 314, baseType: !3879, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3836, file: !598, line: 317, baseType: !3886, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!2074, !3842, !2076}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3836, file: !598, line: 320, baseType: !3890, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!109, !3842, !1856}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3831, file: !598, line: 176, baseType: !3894, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !598, line: 35, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3831, file: !598, line: 177, baseType: !584, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3831, file: !598, line: 178, baseType: !3804, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3805, file: !598, line: 215, baseType: !215, size: 64, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3805, file: !598, line: 221, baseType: !496, size: 64, offset: 832)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3805, file: !598, line: 223, baseType: !314, size: 16, offset: 896)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3805, file: !598, line: 224, baseType: !386, size: 16, offset: 912)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3805, file: !598, line: 225, baseType: !3903, size: 64, offset: 960)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !598, line: 36, flags: DIFlagFwdDecl)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3805, file: !598, line: 227, baseType: !1027, size: 128, align: 64, offset: 1024)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !260, file: !261, line: 71, baseType: !3907, size: 32, offset: 448)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3908, line: 19, size: 32, elements: !3909)
!3908 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3909 = !{!3910}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3907, file: !3908, line: 20, baseType: !1056, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !260, file: !261, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !260, file: !261, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !260, file: !261, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !260, file: !261, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !260, file: !261, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !257, file: !6, line: 47, baseType: !241, size: 64, offset: 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !257, file: !6, line: 48, baseType: !268, size: 64, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !257, file: !6, line: 49, baseType: !3919, size: 64, offset: 640)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !257, file: !6, line: 50, baseType: !2424, size: 64, offset: 704)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !242, file: !6, line: 418, baseType: !3923, size: 64, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3925)
!3925 = !{!3926, !3927, !3932, !3936, !3940, !3944}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3924, file: !6, line: 54, baseType: !382, size: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3924, file: !6, line: 55, baseType: !3928, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!376, !3923, !3931, !344}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3924, file: !6, line: 57, baseType: !3933, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!376, !3923, !3931, !264, !391}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3924, file: !6, line: 59, baseType: !3937, size: 64, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !241, !264}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3924, file: !6, line: 60, baseType: !3941, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!109, !241}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3924, file: !6, line: 61, baseType: !3945, size: 64, offset: 384)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !241}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !242, file: !6, line: 419, baseType: !264, size: 64, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !242, file: !6, line: 420, baseType: !264, size: 64, offset: 1536)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !242, file: !6, line: 421, baseType: !268, size: 64, offset: 1600)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !242, file: !6, line: 424, baseType: !3952, size: 64, offset: 1664)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !242, file: !6, line: 425, baseType: !3956, size: 64, offset: 1728)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !242, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !242, file: !6, line: 435, baseType: !716, size: 256, offset: 1856)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !242, file: !6, line: 437, baseType: !3961, size: 64, offset: 2112)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3963, line: 69, size: 320, elements: !3964)
!3963 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3964 = !{!3965, !3966, !3967, !3984, !3986, !3990, !3991}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3962, file: !3963, line: 70, baseType: !264, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3962, file: !3963, line: 71, baseType: !241, size: 64, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3962, file: !3963, line: 72, baseType: !3968, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3963, line: 47, size: 256, elements: !3971)
!3971 = !{!3972, !3973, !3979, !3983}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3970, file: !3963, line: 49, baseType: !7, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3970, file: !3963, line: 51, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!109, !264, !3977}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3970, file: !3963, line: 53, baseType: !3980, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!109, !344, !3977}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3970, file: !3963, line: 55, baseType: !3357, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3962, file: !3963, line: 73, baseType: !3985, size: 16, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3962, file: !3963, line: 74, baseType: !3987, size: 8, offset: 208)
!3987 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !304, line: 16, baseType: !3988)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !170, line: 20, baseType: !3989)
!3989 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3962, file: !3963, line: 75, baseType: !303, size: 8, offset: 216)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !3963, line: 76, baseType: !3992, size: 64, offset: 256)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3962, file: !3963, line: 76, size: 64, elements: !3993)
!3993 = !{!3994, !3995, !4002}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3992, file: !3963, line: 77, baseType: !215, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3992, file: !3963, line: 78, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3998)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3963, line: 86, size: 128, elements: !3999)
!3999 = !{!4000, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3998, file: !3963, line: 87, baseType: !7, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3998, file: !3963, line: 88, baseType: !344, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3992, file: !3963, line: 79, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3963, line: 92, size: 256, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4005, file: !3963, line: 94, baseType: !7, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4005, file: !3963, line: 95, baseType: !7, size: 32, offset: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4005, file: !3963, line: 96, baseType: !1036, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4005, file: !3963, line: 97, baseType: !3968, size: 64, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4005, file: !3963, line: 98, baseType: !215, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !242, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !242, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !242, file: !6, line: 442, baseType: !3952, size: 64, offset: 2240)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !242, file: !6, line: 443, baseType: !3956, size: 64, offset: 2304)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !242, file: !6, line: 444, baseType: !1532, size: 8, offset: 2368)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !242, file: !6, line: 451, baseType: !1532, size: 8, offset: 2376)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !242, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !242, file: !6, line: 455, baseType: !4020, size: 64, offset: 2432)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4022, line: 23, size: 96, elements: !4023)
!4022 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4023 = !{!4024, !4025, !4026}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4021, file: !4022, line: 24, baseType: !109, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4021, file: !4022, line: 24, baseType: !109, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4021, file: !4022, line: 24, baseType: !109, size: 32, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !242, file: !6, line: 458, baseType: !4028, size: 64, offset: 2496)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !242, file: !6, line: 460, baseType: !4032, size: 4032, align: 512, offset: 2560)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4033, size: 4032, elements: !4047)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4034)
!4034 = !{!4035, !4036, !4037}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4033, file: !6, line: 363, baseType: !215, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4033, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4033, file: !6, line: 367, baseType: !4038, size: 448, offset: 128)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4039)
!4039 = !{!4040, !4041}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4038, file: !6, line: 320, baseType: !241, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4038, file: !6, line: 321, baseType: !4042, size: 384, offset: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4043, line: 40, size: 384, elements: !4044)
!4043 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4044 = !{!4045}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4042, file: !4043, line: 41, baseType: !4046, size: 384, align: 64)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 384, align: 64, elements: !157)
!4047 = !{!4048}
!4048 = !DISubrange(count: 7)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !242, file: !6, line: 463, baseType: !4050, size: 192, offset: 6592)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4051, line: 8, size: 192, elements: !4052)
!4051 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4052 = !{!4053, !4054, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4050, file: !4051, line: 10, baseType: !7, size: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4050, file: !4051, line: 11, baseType: !683, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4050, file: !4051, line: 12, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4058, line: 59, size: 48, elements: !4059)
!4058 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4059 = !{!4060, !4061, !4062, !4063, !4064, !4065}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4057, file: !4058, line: 60, baseType: !2287, size: 16)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4057, file: !4058, line: 61, baseType: !2287, size: 16, offset: 16)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4057, file: !4058, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4057, file: !4058, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4057, file: !4058, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4057, file: !4058, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !242, file: !6, line: 465, baseType: !394, size: 64, offset: 6784)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !242, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !242, file: !6, line: 470, baseType: !246, size: 128, offset: 6912)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !242, file: !6, line: 471, baseType: !4070, size: 64, offset: 7040)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4072, line: 33, size: 96, elements: !4073)
!4072 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4071, file: !4072, line: 37, baseType: !109, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4071, file: !4072, line: 43, baseType: !109, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4071, file: !4072, line: 45, baseType: !314, size: 16, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4071, file: !4072, line: 47, baseType: !314, size: 16, offset: 80)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !242, file: !6, line: 476, baseType: !4079, size: 64, offset: 7104)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4081)
!4081 = !{!4082, !4098, !4099, !4100}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4080, file: !6, line: 379, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4085, line: 204, baseType: !4086)
!4085 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4085, line: 197, size: 192, elements: !4087)
!4087 = !{!4088, !4090, !4091, !4092, !4094, !4096}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4086, file: !4085, line: 198, baseType: !4089, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4085, line: 21, baseType: !173)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4086, file: !4085, line: 199, baseType: !306, size: 8, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4086, file: !4085, line: 200, baseType: !306, size: 8, offset: 40)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4086, file: !4085, line: 201, baseType: !4093, size: 16, offset: 48)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4085, line: 17, baseType: !313)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4086, file: !4085, line: 202, baseType: !4095, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4085, line: 16, baseType: !497)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4086, file: !4085, line: 203, baseType: !4097, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4085, line: 22, baseType: !497)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4080, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4080, file: !6, line: 381, baseType: !344, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4080, file: !6, line: 382, baseType: !344, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !242, file: !6, line: 477, baseType: !4080, size: 256, offset: 7168)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !242, file: !6, line: 480, baseType: !4103, size: 64, offset: 7424)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !242, file: !6, line: 483, baseType: !4106, size: 64, offset: 7488)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !242, file: !6, line: 488, baseType: !344, size: 64, offset: 7552)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !242, file: !6, line: 492, baseType: !215, size: 64, offset: 7616)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !242, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !242, file: !6, line: 495, baseType: !215, size: 64, offset: 7744)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !242, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !242, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !242, file: !6, line: 500, baseType: !4115, size: 64, offset: 7872)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4117, line: 45, baseType: !4118)
!4117 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !242, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !242, file: !6, line: 504, baseType: !4121, size: 64, offset: 8000)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4124, line: 96, size: 192, elements: !4125)
!4124 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4125 = !{!4126, !4127, !4170, !4172}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4123, file: !4124, line: 97, baseType: !7, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4123, file: !4124, line: 98, baseType: !4128, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4124, line: 24, size: 3072, elements: !4130)
!4130 = !{!4131, !4133, !4134, !4135, !4136, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4167, !4168, !4169}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4129, file: !4124, line: 26, baseType: !4132, size: 128)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 128, elements: !157)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4129, file: !4124, line: 27, baseType: !4132, size: 128, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4129, file: !4124, line: 28, baseType: !109, size: 32, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4129, file: !4124, line: 31, baseType: !275, size: 32, align: 512, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4129, file: !4124, line: 32, baseType: !4137, size: 960, offset: 576)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4138, line: 206, size: 960, elements: !4139)
!4138 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4139 = !{!4140, !4141, !4144, !4146, !4147, !4149}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4137, file: !4138, line: 207, baseType: !1030, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4137, file: !4138, line: 208, baseType: !4142, size: 256, offset: 64)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4143, size: 256, elements: !185)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4137, file: !4138, line: 209, baseType: !4145, size: 256, offset: 320)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !185)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4137, file: !4138, line: 213, baseType: !380, size: 64, offset: 576)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4137, file: !4138, line: 215, baseType: !4148, size: 256, offset: 640)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !185)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4137, file: !4138, line: 216, baseType: !303, size: 8, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4129, file: !4124, line: 33, baseType: !394, size: 64, offset: 1536)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4129, file: !4124, line: 34, baseType: !394, size: 64, offset: 1600)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4129, file: !4124, line: 35, baseType: !1532, size: 8, offset: 1664)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4129, file: !4124, line: 36, baseType: !2982, size: 320, offset: 1728)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4129, file: !4124, line: 37, baseType: !2309, size: 256, offset: 2048)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4129, file: !4124, line: 38, baseType: !1027, size: 128, align: 64, offset: 2304)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4129, file: !4124, line: 39, baseType: !4157, size: 64, offset: 2432)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4124, line: 49, size: 768, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4158, file: !4124, line: 50, baseType: !275, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4158, file: !4124, line: 51, baseType: !4145, size: 256, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4158, file: !4124, line: 53, baseType: !4145, size: 256, offset: 320)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4158, file: !4124, line: 54, baseType: !394, size: 64, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4158, file: !4124, line: 55, baseType: !4157, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4158, file: !4124, line: 56, baseType: !109, size: 32, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4158, file: !4124, line: 57, baseType: !109, size: 32, offset: 736)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4129, file: !4124, line: 40, baseType: !394, size: 64, offset: 2496)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4129, file: !4124, line: 42, baseType: !109, size: 32, offset: 2560)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4129, file: !4124, line: 43, baseType: !4122, size: 64, offset: 2624)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4123, file: !4124, line: 99, baseType: !4171, offset: 128)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !619, line: 211, elements: !620)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4123, file: !4124, line: 100, baseType: !4173, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4124, line: 63, size: 3008, elements: !4175)
!4175 = !{!4176, !4177, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4205}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4174, file: !4124, line: 64, baseType: !4157, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4174, file: !4124, line: 65, baseType: !4178, size: 192, offset: 64)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4157, size: 192, elements: !345)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4174, file: !4124, line: 67, baseType: !109, size: 32, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4174, file: !4124, line: 68, baseType: !716, size: 256, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4174, file: !4124, line: 69, baseType: !275, size: 32, offset: 576)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4174, file: !4124, line: 70, baseType: !716, size: 256, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4174, file: !4124, line: 71, baseType: !394, size: 64, offset: 896)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4174, file: !4124, line: 72, baseType: !394, size: 64, offset: 960)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4174, file: !4124, line: 73, baseType: !394, size: 64, offset: 1024)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4174, file: !4124, line: 74, baseType: !394, size: 64, offset: 1088)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4174, file: !4124, line: 75, baseType: !394, size: 64, offset: 1152)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4174, file: !4124, line: 76, baseType: !394, size: 64, offset: 1216)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4174, file: !4124, line: 77, baseType: !394, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4174, file: !4124, line: 78, baseType: !394, size: 64, offset: 1344)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4174, file: !4124, line: 79, baseType: !1532, size: 8, offset: 1408)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4174, file: !4124, line: 80, baseType: !394, size: 64, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4174, file: !4124, line: 81, baseType: !716, size: 256, offset: 1536)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4174, file: !4124, line: 82, baseType: !1821, size: 256, offset: 1792)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4174, file: !4124, line: 84, baseType: !295, size: 32, offset: 2048)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4174, file: !4124, line: 87, baseType: !394, size: 64, offset: 2112)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4174, file: !4124, line: 88, baseType: !394, size: 64, offset: 2176)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4174, file: !4124, line: 89, baseType: !4199, size: 704, offset: 2240)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2310, line: 111, size: 704, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4199, file: !2310, line: 112, baseType: !2309, size: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4199, file: !2310, line: 113, baseType: !2982, size: 320, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4199, file: !2310, line: 116, baseType: !3289, size: 64, offset: 576)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4199, file: !2310, line: 117, baseType: !109, size: 32, offset: 640)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4174, file: !4124, line: 90, baseType: !4122, size: 64, offset: 2944)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !242, file: !6, line: 515, baseType: !4207, size: 64, offset: 8064)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4209, line: 117, size: 128, elements: !4210)
!4209 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4210 = !{!4211, !4212, !4213}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4208, file: !4209, line: 118, baseType: !1475, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4208, file: !4209, line: 119, baseType: !1475, size: 32, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4208, file: !4209, line: 120, baseType: !380, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !242, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !242, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !242, file: !6, line: 520, baseType: !4217, size: 64, offset: 8192)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !242, file: !6, line: 523, baseType: !4219, size: 64, offset: 8256)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !242, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !242, file: !6, line: 525, baseType: !4224, size: 64, offset: 8384)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !242, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !242, file: !6, line: 533, baseType: !215, size: 64, offset: 8512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !242, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !242, file: !6, line: 535, baseType: !4231, size: 64, offset: 8640)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !242, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !242, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !242, file: !6, line: 540, baseType: !4235, size: 64, offset: 8768)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4237, line: 32, size: 64, elements: !4238)
!4237 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4238 = !{!4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4236, file: !4237, line: 33, baseType: !1475, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4236, file: !4237, line: 34, baseType: !1475, size: 32, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !242, file: !6, line: 563, baseType: !246, size: 128, offset: 8832)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !242, file: !6, line: 565, baseType: !246, size: 128, offset: 8960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !242, file: !6, line: 568, baseType: !4244, size: 64, offset: 9088)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !242, file: !6, line: 570, baseType: !295, size: 32, offset: 9152)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "clock_adjtime", scope: !238, file: !235, line: 41, baseType: !4247, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!109, !4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex", file: !4253, line: 102, size: 1664, elements: !4254)
!4253 = !DIFile(filename: "./include/uapi/linux/timex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37fb729d65fdd1562db85b44515cd515")
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !4252, file: !4253, line: 103, baseType: !7, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4252, file: !4253, line: 105, baseType: !171, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4252, file: !4253, line: 106, baseType: !171, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !4252, file: !4253, line: 107, baseType: !171, size: 64, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !4252, file: !4253, line: 108, baseType: !171, size: 64, offset: 256)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4252, file: !4253, line: 109, baseType: !109, size: 32, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4252, file: !4253, line: 111, baseType: !171, size: 64, offset: 384)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !4252, file: !4253, line: 112, baseType: !171, size: 64, offset: 448)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !4252, file: !4253, line: 113, baseType: !171, size: 64, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4252, file: !4253, line: 116, baseType: !4265, size: 128, offset: 576)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex_timeval", file: !4253, line: 97, size: 128, elements: !4266)
!4266 = !{!4267, !4268}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4265, file: !4253, line: 98, baseType: !2380, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4265, file: !4253, line: 99, baseType: !171, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !4252, file: !4253, line: 117, baseType: !171, size: 64, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !4252, file: !4253, line: 119, baseType: !171, size: 64, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !4252, file: !4253, line: 120, baseType: !171, size: 64, offset: 832)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4252, file: !4253, line: 121, baseType: !109, size: 32, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !4252, file: !4253, line: 123, baseType: !171, size: 64, offset: 960)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !4252, file: !4253, line: 124, baseType: !171, size: 64, offset: 1024)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !4252, file: !4253, line: 125, baseType: !171, size: 64, offset: 1088)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !4252, file: !4253, line: 126, baseType: !171, size: 64, offset: 1152)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !4252, file: !4253, line: 127, baseType: !171, size: 64, offset: 1216)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !4252, file: !4253, line: 129, baseType: !109, size: 32, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "clock_gettime", scope: !238, file: !235, line: 43, baseType: !4280, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!109, !4250, !4283}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "clock_getres", scope: !238, file: !235, line: 45, baseType: !4280, size: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "clock_settime", scope: !238, file: !235, line: 47, baseType: !4286, size: 64, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!109, !4250, !4289}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3432)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !238, file: !235, line: 53, baseType: !4292, size: 64, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!380, !4250, !7, !394}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !238, file: !235, line: 56, baseType: !4296, size: 64, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!109, !4250, !1384}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !238, file: !235, line: 58, baseType: !4300, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!2074, !4250, !1373, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2078, line: 40, baseType: !2077)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !238, file: !235, line: 61, baseType: !4306, size: 64, offset: 512)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!109, !4250}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !238, file: !235, line: 63, baseType: !4310, size: 64, offset: 576)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!376, !4250, !4313, !344, !391}
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !214, line: 93, baseType: !7)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !234, file: !235, line: 87, baseType: !3572, size: 832, offset: 640)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !234, file: !235, line: 88, baseType: !4316, size: 64, offset: 1472)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4324, !4325, !4378, !4448, !4449, !4450, !4451, !4452, !4459, !4551, !4564, !4574, !4578, !4580, !4581, !4582, !4586, !4593, !4594, !4597, !4600, !4604, !4708, !4709, !4710, !4711, !4712, !4713, !4743, !4744, !4745, !4748, !4751, !4760, !4761, !4762, !4763, !4764, !4765}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4317, file: !94, line: 706, baseType: !260, size: 512)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4317, file: !94, line: 707, baseType: !4316, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4317, file: !94, line: 709, baseType: !4322, size: 64, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4317, file: !94, line: 711, baseType: !264, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4317, file: !94, line: 712, baseType: !4326, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4329)
!4329 = !{!4330, !4331, !4332, !4338, !4343, !4347}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4328, file: !94, line: 90, baseType: !264, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4328, file: !94, line: 91, baseType: !396, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4328, file: !94, line: 92, baseType: !4333, size: 64, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!109, !4336, !339}
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4317)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4328, file: !94, line: 93, baseType: !4339, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!344, !4336, !4342, !3801, !3802}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4328, file: !94, line: 95, baseType: !4344, size: 64, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !4316}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4328, file: !94, line: 97, baseType: !4348, size: 64, offset: 320)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4350)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4351)
!4351 = !{!4352, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4350, file: !101, line: 287, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!109, !4316}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4350, file: !101, line: 288, baseType: !4344, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4350, file: !101, line: 289, baseType: !4353, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4350, file: !101, line: 290, baseType: !4353, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4350, file: !101, line: 291, baseType: !4353, size: 64, offset: 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4350, file: !101, line: 292, baseType: !4353, size: 64, offset: 320)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4350, file: !101, line: 293, baseType: !4353, size: 64, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4350, file: !101, line: 294, baseType: !4353, size: 64, offset: 448)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4350, file: !101, line: 295, baseType: !4353, size: 64, offset: 512)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4350, file: !101, line: 296, baseType: !4353, size: 64, offset: 576)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4350, file: !101, line: 297, baseType: !4353, size: 64, offset: 640)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4350, file: !101, line: 298, baseType: !4353, size: 64, offset: 704)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4350, file: !101, line: 299, baseType: !4353, size: 64, offset: 768)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4350, file: !101, line: 300, baseType: !4353, size: 64, offset: 832)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4350, file: !101, line: 301, baseType: !4353, size: 64, offset: 896)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4350, file: !101, line: 302, baseType: !4353, size: 64, offset: 960)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4350, file: !101, line: 303, baseType: !4353, size: 64, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4350, file: !101, line: 304, baseType: !4353, size: 64, offset: 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4350, file: !101, line: 305, baseType: !4353, size: 64, offset: 1152)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4350, file: !101, line: 306, baseType: !4353, size: 64, offset: 1216)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4350, file: !101, line: 307, baseType: !4353, size: 64, offset: 1280)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4350, file: !101, line: 308, baseType: !4353, size: 64, offset: 1344)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4350, file: !101, line: 309, baseType: !4353, size: 64, offset: 1408)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4317, file: !94, line: 714, baseType: !4379, size: 64, offset: 768)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4382, line: 80, size: 1344, elements: !4383)
!4382 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4447}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4381, file: !4382, line: 81, baseType: !264, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4381, file: !4382, line: 82, baseType: !264, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4381, file: !4382, line: 83, baseType: !396, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4381, file: !4382, line: 84, baseType: !396, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4381, file: !4382, line: 85, baseType: !396, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4381, file: !4382, line: 87, baseType: !4390, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!109, !4316, !4393}
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399, !4400, !4401, !4402, !4406, !4410, !4411, !4412, !4413, !4414, !4422, !4423, !4424, !4425, !4426, !4427}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4394, file: !88, line: 97, baseType: !264, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4394, file: !88, line: 98, baseType: !4379, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4394, file: !88, line: 100, baseType: !241, size: 64, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4394, file: !88, line: 101, baseType: !264, size: 64, offset: 192)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4394, file: !88, line: 103, baseType: !1532, size: 8, offset: 256)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4394, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4394, file: !88, line: 106, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4405)
!4405 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4394, file: !88, line: 107, baseType: !4407, size: 64, offset: 384)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4409)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4394, file: !88, line: 109, baseType: !4353, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4394, file: !88, line: 110, baseType: !4344, size: 64, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4394, file: !88, line: 111, baseType: !4353, size: 64, offset: 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4394, file: !88, line: 112, baseType: !4344, size: 64, offset: 640)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4394, file: !88, line: 113, baseType: !4415, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!109, !4316, !4418}
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4419)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4420)
!4420 = !{!4421}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4419, file: !101, line: 59, baseType: !109, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4394, file: !88, line: 114, baseType: !4353, size: 64, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4394, file: !88, line: 115, baseType: !396, size: 64, offset: 832)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4394, file: !88, line: 116, baseType: !396, size: 64, offset: 896)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4394, file: !88, line: 118, baseType: !4348, size: 64, offset: 960)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4394, file: !88, line: 119, baseType: !4344, size: 64, offset: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4394, file: !88, line: 121, baseType: !4428, size: 64, offset: 1088)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4381, file: !4382, line: 88, baseType: !4333, size: 64, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4381, file: !4382, line: 89, baseType: !4353, size: 64, offset: 448)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4381, file: !4382, line: 90, baseType: !4344, size: 64, offset: 512)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4381, file: !4382, line: 91, baseType: !4344, size: 64, offset: 576)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4381, file: !4382, line: 92, baseType: !4344, size: 64, offset: 640)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4381, file: !4382, line: 94, baseType: !4353, size: 64, offset: 704)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4381, file: !4382, line: 95, baseType: !4353, size: 64, offset: 768)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4381, file: !4382, line: 97, baseType: !4415, size: 64, offset: 832)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4381, file: !4382, line: 98, baseType: !4353, size: 64, offset: 896)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4381, file: !4382, line: 100, baseType: !4353, size: 64, offset: 960)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4381, file: !4382, line: 102, baseType: !4353, size: 64, offset: 1024)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4381, file: !4382, line: 103, baseType: !4344, size: 64, offset: 1088)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4381, file: !4382, line: 105, baseType: !4348, size: 64, offset: 1152)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4381, file: !4382, line: 107, baseType: !4444, size: 64, offset: 1216)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4446)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4382, line: 107, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4381, file: !4382, line: 109, baseType: !1532, size: 8, offset: 1280)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4317, file: !94, line: 715, baseType: !4393, size: 64, offset: 832)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4317, file: !94, line: 717, baseType: !215, size: 64, offset: 896)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4317, file: !94, line: 719, baseType: !215, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4317, file: !94, line: 721, baseType: !716, size: 256, offset: 1024)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4317, file: !94, line: 725, baseType: !4453, size: 448, offset: 1280)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4453, file: !94, line: 518, baseType: !246, size: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4453, file: !94, line: 519, baseType: !246, size: 128, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4453, file: !94, line: 520, baseType: !246, size: 128, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4453, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4317, file: !94, line: 726, baseType: !4460, size: 2496, offset: 1728)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4461)
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4544, !4548}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4460, file: !101, line: 664, baseType: !4418, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4460, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4460, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4460, file: !101, line: 667, baseType: !1532, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4460, file: !101, line: 668, baseType: !1532, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4460, file: !101, line: 669, baseType: !1532, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4460, file: !101, line: 670, baseType: !1532, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4460, file: !101, line: 671, baseType: !1532, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4460, file: !101, line: 672, baseType: !1532, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4460, file: !101, line: 673, baseType: !1532, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4460, file: !101, line: 674, baseType: !1532, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4460, file: !101, line: 675, baseType: !493, size: 32, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4460, file: !101, line: 676, baseType: !275, size: 32, offset: 96)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4460, file: !101, line: 678, baseType: !246, size: 128, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4460, file: !101, line: 679, baseType: !1821, size: 256, offset: 256)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4460, file: !101, line: 680, baseType: !4478, size: 64, offset: 512)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4480, line: 43, size: 1536, elements: !4481)
!4480 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4479, file: !4480, line: 44, baseType: !264, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4479, file: !4480, line: 45, baseType: !109, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4479, file: !4480, line: 46, baseType: !246, size: 128, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4479, file: !4480, line: 47, baseType: !275, size: 32, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4479, file: !4480, line: 48, baseType: !4487, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4479, file: !4480, line: 49, baseType: !2982, size: 320, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4479, file: !4480, line: 50, baseType: !394, size: 64, offset: 704)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4479, file: !4480, line: 51, baseType: !1178, size: 64, offset: 768)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4479, file: !4480, line: 52, baseType: !1178, size: 64, offset: 832)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4479, file: !4480, line: 53, baseType: !1178, size: 64, offset: 896)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4479, file: !4480, line: 54, baseType: !1178, size: 64, offset: 960)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4479, file: !4480, line: 55, baseType: !1178, size: 64, offset: 1024)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4479, file: !4480, line: 56, baseType: !394, size: 64, offset: 1088)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4479, file: !4480, line: 57, baseType: !394, size: 64, offset: 1152)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4479, file: !4480, line: 58, baseType: !394, size: 64, offset: 1216)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4479, file: !4480, line: 59, baseType: !394, size: 64, offset: 1280)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4479, file: !4480, line: 60, baseType: !394, size: 64, offset: 1344)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4479, file: !4480, line: 61, baseType: !4316, size: 64, offset: 1408)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4479, file: !4480, line: 62, baseType: !1532, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4479, file: !4480, line: 63, baseType: !1532, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4460, file: !101, line: 681, baseType: !1532, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4460, file: !101, line: 682, baseType: !1532, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4460, file: !101, line: 683, baseType: !1532, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4460, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4460, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4460, file: !101, line: 690, baseType: !1170, size: 512, offset: 640)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4460, file: !101, line: 691, baseType: !496, size: 64, offset: 1152)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4460, file: !101, line: 692, baseType: !2309, size: 256, offset: 1216)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4460, file: !101, line: 693, baseType: !1020, size: 192, offset: 1472)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4460, file: !101, line: 694, baseType: !4487, size: 64, offset: 1664)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4460, file: !101, line: 695, baseType: !295, size: 32, offset: 1728)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4460, file: !101, line: 696, baseType: !295, size: 32, offset: 1760)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4460, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4460, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4460, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4460, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4460, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4460, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4460, file: !101, line: 703, baseType: !1532, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4460, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4460, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4460, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4460, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4460, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4460, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4460, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4460, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4460, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4460, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4460, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4460, file: !101, line: 715, baseType: !496, size: 64, offset: 2048)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4460, file: !101, line: 716, baseType: !496, size: 64, offset: 2112)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4460, file: !101, line: 717, baseType: !496, size: 64, offset: 2176)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4460, file: !101, line: 718, baseType: !496, size: 64, offset: 2240)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4460, file: !101, line: 720, baseType: !4539, size: 64, offset: 2304)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4541)
!4541 = !{!4542, !4543}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4540, file: !101, line: 633, baseType: !275, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4540, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4460, file: !101, line: 721, baseType: !4545, size: 64, offset: 2368)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !4316, !1475}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4460, file: !101, line: 722, baseType: !4549, size: 64, offset: 2432)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4317, file: !94, line: 727, baseType: !4552, size: 64, offset: 4224)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4554)
!4554 = !{!4555, !4556, !4557, !4561, !4562, !4563}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4553, file: !101, line: 743, baseType: !4350, size: 1472)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4553, file: !101, line: 744, baseType: !4353, size: 64, offset: 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4553, file: !101, line: 745, baseType: !4558, size: 64, offset: 1536)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4316, !1532}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4553, file: !101, line: 746, baseType: !4353, size: 64, offset: 1600)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4553, file: !101, line: 747, baseType: !4344, size: 64, offset: 1664)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4553, file: !101, line: 748, baseType: !4344, size: 64, offset: 1728)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4317, file: !94, line: 736, baseType: !4565, size: 128, offset: 4288)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4566)
!4566 = !{!4567, !4571}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4565, file: !94, line: 531, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4570, line: 13, flags: DIFlagFwdDecl)
!4570 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4565, file: !94, line: 532, baseType: !4572, size: 64, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4317, file: !94, line: 738, baseType: !4575, size: 64, offset: 4416)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4577)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4317, file: !94, line: 740, baseType: !4579, size: 64, offset: 4480)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4317, file: !94, line: 741, baseType: !496, size: 64, offset: 4544)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4317, file: !94, line: 746, baseType: !496, size: 64, offset: 4608)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4317, file: !94, line: 747, baseType: !4583, size: 64, offset: 4672)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4585)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4317, file: !94, line: 749, baseType: !4587, size: 64, offset: 4736)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4589)
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4588, file: !94, line: 433, baseType: !7, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4588, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4588, file: !94, line: 435, baseType: !394, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4317, file: !94, line: 751, baseType: !246, size: 128, offset: 4800)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4317, file: !94, line: 762, baseType: !4595, size: 64, offset: 4928)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4317, file: !94, line: 770, baseType: !4598, offset: 4992)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4599, line: 5, elements: !620)
!4599 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4317, file: !94, line: 772, baseType: !4601, size: 64, offset: 4992)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4603, line: 18, flags: DIFlagFwdDecl)
!4603 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4317, file: !94, line: 773, baseType: !4605, size: 64, offset: 5056)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4607, line: 41, size: 512, elements: !4608)
!4607 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4608 = !{!4609, !4610, !4704, !4705, !4706, !4707}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4606, file: !4607, line: 42, baseType: !4605, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4606, file: !4607, line: 43, baseType: !4611, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4613)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4607, line: 125, size: 1408, elements: !4614)
!4614 = !{!4615, !4619, !4623, !4629, !4633, !4634, !4639, !4643, !4647, !4651, !4655, !4656, !4660, !4664, !4668, !4679, !4680, !4681, !4682, !4692, !4696, !4700}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4613, file: !4607, line: 126, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!4605, !4605}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4613, file: !4607, line: 127, baseType: !4620, size: 64, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !4605}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4613, file: !4607, line: 128, baseType: !4624, size: 64, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!1532, !4627}
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4606)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4613, file: !4607, line: 129, baseType: !4630, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!2270, !4627, !4336}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4613, file: !4607, line: 131, baseType: !4624, size: 64, offset: 256)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4613, file: !4607, line: 133, baseType: !4635, size: 64, offset: 320)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!4638, !4627}
!4638 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4607, line: 132, flags: DIFlagFwdDecl)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4613, file: !4607, line: 134, baseType: !4640, size: 64, offset: 384)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!1532, !4627, !264}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4613, file: !4607, line: 136, baseType: !4644, size: 64, offset: 448)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!109, !4627, !264, !7, !215, !391}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4613, file: !4607, line: 141, baseType: !4648, size: 64, offset: 512)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!109, !4627, !264, !4217, !391}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4613, file: !4607, line: 144, baseType: !4652, size: 64, offset: 576)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!264, !4627}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4613, file: !4607, line: 145, baseType: !4652, size: 64, offset: 640)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4613, file: !4607, line: 146, baseType: !4657, size: 64, offset: 704)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!4605, !4627}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4613, file: !4607, line: 148, baseType: !4661, size: 64, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!4605, !4627, !4605}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4613, file: !4607, line: 151, baseType: !4665, size: 64, offset: 832)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!4605, !4627, !264}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4613, file: !4607, line: 153, baseType: !4669, size: 64, offset: 896)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!109, !4627, !264, !264, !7, !7, !4672}
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4607, line: 94, size: 640, elements: !4674)
!4674 = !{!4675, !4676, !4677}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4673, file: !4607, line: 95, baseType: !4605, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4673, file: !4607, line: 96, baseType: !7, size: 32, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4673, file: !4607, line: 97, baseType: !4678, size: 512, offset: 128)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 512, elements: !1213)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4613, file: !4607, line: 158, baseType: !4661, size: 64, offset: 960)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4613, file: !4607, line: 161, baseType: !4657, size: 64, offset: 1024)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4613, file: !4607, line: 163, baseType: !4616, size: 64, offset: 1088)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4613, file: !4607, line: 164, baseType: !4683, size: 64, offset: 1152)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!109, !4627, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4607, line: 73, size: 128, elements: !4688)
!4688 = !{!4689, !4690, !4691}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4687, file: !4607, line: 74, baseType: !7, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4687, file: !4607, line: 75, baseType: !7, size: 32, offset: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4687, file: !4607, line: 76, baseType: !4627, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4613, file: !4607, line: 166, baseType: !4693, size: 64, offset: 1216)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!215, !4605, !109}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4613, file: !4607, line: 167, baseType: !4697, size: 64, offset: 1280)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!109, !4627, !7}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4613, file: !4607, line: 168, baseType: !4701, size: 64, offset: 1344)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!109, !4605}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4606, file: !4607, line: 44, baseType: !4316, size: 64, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4606, file: !4607, line: 45, baseType: !246, size: 128, offset: 192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4606, file: !4607, line: 46, baseType: !246, size: 128, offset: 320)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4606, file: !4607, line: 47, baseType: !303, size: 8, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4317, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4317, file: !94, line: 778, baseType: !579, size: 32, offset: 5152)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4317, file: !94, line: 779, baseType: !493, size: 32, offset: 5184)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4317, file: !94, line: 781, baseType: !275, size: 32, offset: 5216)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4317, file: !94, line: 782, baseType: !246, size: 128, offset: 5248)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4317, file: !94, line: 784, baseType: !4714, size: 64, offset: 5376)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4717, line: 52, size: 768, elements: !4718)
!4717 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4727, !4731, !4732, !4733, !4734, !4738, !4742}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4716, file: !4717, line: 53, baseType: !264, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4716, file: !4717, line: 55, baseType: !396, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4716, file: !4717, line: 56, baseType: !396, size: 64, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4716, file: !4717, line: 58, baseType: !4333, size: 64, offset: 192)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4716, file: !4717, line: 59, baseType: !4724, size: 64, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!344, !4336, !4342}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4716, file: !4717, line: 61, baseType: !4728, size: 64, offset: 320)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{null, !4714}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4716, file: !4717, line: 62, baseType: !4344, size: 64, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4716, file: !4717, line: 64, baseType: !4353, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4716, file: !4717, line: 66, baseType: !3769, size: 64, offset: 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4716, file: !4717, line: 67, baseType: !4735, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!2270, !4336}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4716, file: !4717, line: 69, baseType: !4739, size: 64, offset: 640)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !4336, !3801, !3802}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4716, file: !4717, line: 71, baseType: !4348, size: 64, offset: 704)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4317, file: !94, line: 785, baseType: !396, size: 64, offset: 5440)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4317, file: !94, line: 787, baseType: !4344, size: 64, offset: 5504)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4317, file: !94, line: 788, baseType: !4746, size: 64, offset: 5568)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4317, file: !94, line: 789, baseType: !4749, size: 64, offset: 5632)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4317, file: !94, line: 791, baseType: !4752, size: 64, offset: 5696)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4753, file: !94, line: 598, baseType: !116, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4753, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4753, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4753, file: !94, line: 601, baseType: !1532, size: 8, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4753, file: !94, line: 602, baseType: !1532, size: 8, offset: 104)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4317, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4317, file: !94, line: 795, baseType: !1532, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4317, file: !94, line: 796, baseType: !1532, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4317, file: !94, line: 797, baseType: !1532, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4317, file: !94, line: 798, baseType: !1532, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4317, file: !94, line: 799, baseType: !1532, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !234, file: !235, line: 89, baseType: !927, size: 320, offset: 1536)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !234, file: !235, line: 90, baseType: !1532, size: 8, offset: 1856)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !231, file: !227, line: 32, baseType: !4317, size: 5824, offset: 1920)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !231, file: !227, line: 33, baseType: !4770, size: 64, offset: 7744)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !142, line: 166, size: 1472, elements: !4772)
!4772 = !{!4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4794, !4798, !4802, !4806, !4810, !4814, !4823, !4834, !4838, !4839, !4840, !4841, !4846, !4850}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4771, file: !142, line: 167, baseType: !241, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4771, file: !142, line: 168, baseType: !3257, size: 256, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !4771, file: !142, line: 169, baseType: !1475, size: 32, offset: 320)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !4771, file: !142, line: 170, baseType: !109, size: 32, offset: 352)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !4771, file: !142, line: 171, baseType: !109, size: 32, offset: 384)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !4771, file: !142, line: 172, baseType: !109, size: 32, offset: 416)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !4771, file: !142, line: 173, baseType: !109, size: 32, offset: 448)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !4771, file: !142, line: 174, baseType: !109, size: 32, offset: 480)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !4771, file: !142, line: 175, baseType: !4782, size: 64, offset: 512)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !151, line: 175, size: 768, elements: !4784)
!4784 = !{!4785, !4787, !4788, !4789, !4790}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4783, file: !151, line: 181, baseType: !4786, size: 512)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !349)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4783, file: !151, line: 185, baseType: !7, size: 32, offset: 512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4783, file: !151, line: 189, baseType: !7, size: 32, offset: 544)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4783, file: !151, line: 195, baseType: !7, size: 32, offset: 576)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4783, file: !151, line: 199, baseType: !4791, size: 160, offset: 608)
!4791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !4792)
!4792 = !{!4793}
!4793 = !DISubrange(count: 5)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !4771, file: !142, line: 176, baseType: !4795, size: 64, offset: 576)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!109, !4770, !380}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !4771, file: !142, line: 177, baseType: !4799, size: 64, offset: 640)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!109, !4770, !1475}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "getmaxphase", scope: !4771, file: !142, line: 178, baseType: !4803, size: 64, offset: 704)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!1475, !4770}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !4771, file: !142, line: 179, baseType: !4807, size: 64, offset: 768)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!109, !4770, !726}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !4771, file: !142, line: 180, baseType: !4811, size: 64, offset: 832)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!109, !4770, !4283}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !4771, file: !142, line: 181, baseType: !4815, size: 64, offset: 896)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!109, !4770, !4283, !4818}
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !142, line: 51, size: 256, elements: !4820)
!4820 = !{!4821, !4822}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !4819, file: !142, line: 52, baseType: !3432, size: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !4819, file: !142, line: 53, baseType: !3432, size: 128, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !4771, file: !142, line: 183, baseType: !4824, size: 64, offset: 960)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!109, !4770, !4827}
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !4829, line: 263, size: 192, elements: !4830)
!4829 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4830 = !{!4831, !4832, !4833}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4828, file: !4829, line: 264, baseType: !1178, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !4828, file: !4829, line: 265, baseType: !1178, size: 64, offset: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !4828, file: !4829, line: 266, baseType: !1178, size: 64, offset: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !4771, file: !142, line: 185, baseType: !4835, size: 64, offset: 1024)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!109, !4770, !4289}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "getcycles64", scope: !4771, file: !142, line: 186, baseType: !4811, size: 64, offset: 1088)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "getcyclesx64", scope: !4771, file: !142, line: 187, baseType: !4815, size: 64, offset: 1152)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosscycles", scope: !4771, file: !142, line: 189, baseType: !4824, size: 64, offset: 1216)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4771, file: !142, line: 191, baseType: !4842, size: 64, offset: 1280)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!109, !4770, !4845, !109}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !4771, file: !142, line: 193, baseType: !4847, size: 64, offset: 1344)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!109, !4770, !7, !191, !7}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !4771, file: !142, line: 195, baseType: !4851, size: 64, offset: 1408)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!380, !4770}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !231, file: !227, line: 34, baseType: !579, size: 32, offset: 7808)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !231, file: !227, line: 35, baseType: !109, size: 32, offset: 7840)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "pps_source", scope: !231, file: !227, line: 36, baseType: !4857, size: 64, offset: 7872)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !4859, line: 43, size: 7744, elements: !4860)
!4859 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84efb6f82a468768bae0d7aa032cd392")
!4860 = !{!4861, !4873, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4906}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4858, file: !4859, line: 44, baseType: !4862, size: 768)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !4859, line: 23, size: 768, elements: !4863)
!4863 = !{!4864, !4865, !4866, !4867, !4871, !4872}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4862, file: !4859, line: 24, baseType: !3257, size: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4862, file: !4859, line: 25, baseType: !3257, size: 256, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4862, file: !4859, line: 26, baseType: !109, size: 32, offset: 512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !4862, file: !4859, line: 28, baseType: !4868, size: 64, offset: 576)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !4857, !109, !215}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4862, file: !4859, line: 31, baseType: !241, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4862, file: !4859, line: 32, baseType: !4316, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !4858, file: !4859, line: 46, baseType: !4874, size: 320, offset: 768)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !4875, line: 83, size: 320, elements: !4876)
!4875 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c00ae321b94f0eea44369ad4fb4a07b")
!4876 = !{!4877, !4878, !4879, !4885}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4874, file: !4875, line: 84, baseType: !109, size: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4874, file: !4875, line: 85, baseType: !109, size: 32, offset: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !4874, file: !4875, line: 86, baseType: !4880, size: 128, offset: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !4875, line: 54, size: 128, elements: !4881)
!4881 = !{!4882, !4883, !4884}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4880, file: !4875, line: 55, baseType: !169, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4880, file: !4875, line: 56, baseType: !1476, size: 32, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4880, file: !4875, line: 57, baseType: !173, size: 32, offset: 96)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !4874, file: !4875, line: 87, baseType: !4880, size: 128, offset: 192)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !4858, file: !4859, line: 48, baseType: !173, size: 32, offset: 1088)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !4858, file: !4859, line: 49, baseType: !173, size: 32, offset: 1120)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !4858, file: !4859, line: 50, baseType: !4880, size: 128, offset: 1152)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !4858, file: !4859, line: 51, baseType: !4880, size: 128, offset: 1280)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !4858, file: !4859, line: 52, baseType: !109, size: 32, offset: 1408)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !4858, file: !4859, line: 54, baseType: !7, size: 32, offset: 1440)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4858, file: !4859, line: 55, baseType: !1020, size: 192, offset: 1472)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4858, file: !4859, line: 57, baseType: !7, size: 32, offset: 1664)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !4858, file: !4859, line: 58, baseType: !2270, size: 64, offset: 1728)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4858, file: !4859, line: 59, baseType: !4317, size: 5824, offset: 1792)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4858, file: !4859, line: 60, baseType: !4897, size: 64, offset: 7616)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4898, file: !14, line: 1084, baseType: !1393, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4898, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4898, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4898, file: !14, line: 1087, baseType: !4897, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4898, file: !14, line: 1088, baseType: !1373, size: 64, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4898, file: !14, line: 1089, baseType: !1027, size: 128, align: 64, offset: 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4858, file: !4859, line: 61, baseType: !275, size: 32, offset: 7680)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dialed_frequency", scope: !231, file: !227, line: 37, baseType: !380, size: 64, offset: 7936)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq", scope: !231, file: !227, line: 38, baseType: !4909, size: 32896, offset: 8000)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timestamp_event_queue", file: !227, line: 23, size: 32896, elements: !4910)
!4910 = !{!4911, !4921, !4922, !4923}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4909, file: !227, line: 24, baseType: !4912, size: 32768)
!4912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4913, size: 32768, elements: !4919)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_event", file: !151, line: 228, size: 256, elements: !4914)
!4914 = !{!4915, !4916, !4917, !4918}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !4913, file: !151, line: 229, baseType: !166, size: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4913, file: !151, line: 230, baseType: !7, size: 32, offset: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4913, file: !151, line: 231, baseType: !7, size: 32, offset: 160)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4913, file: !151, line: 232, baseType: !156, size: 64, offset: 192)
!4919 = !{!4920}
!4920 = !DISubrange(count: 128)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4909, file: !227, line: 25, baseType: !109, size: 32, offset: 32768)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4909, file: !227, line: 26, baseType: !109, size: 32, offset: 32800)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4909, file: !227, line: 27, baseType: !275, size: 32, offset: 32832)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq_mux", scope: !231, file: !227, line: 39, baseType: !716, size: 256, offset: 40896)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg_mux", scope: !231, file: !227, line: 40, baseType: !716, size: 256, offset: 41152)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "tsev_wq", scope: !231, file: !227, line: 41, baseType: !1020, size: 192, offset: 41408)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "defunct", scope: !231, file: !227, line: 42, baseType: !109, size: 32, offset: 41600)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "pin_dev_attr", scope: !231, file: !227, line: 43, baseType: !4929, size: 64, offset: 41664)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !4931)
!4931 = !{!4932, !4933, !4937}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4930, file: !94, line: 107, baseType: !382, size: 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4930, file: !94, line: 108, baseType: !4934, size: 64, offset: 128)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!376, !4316, !4929, !344}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4930, file: !94, line: 110, baseType: !4938, size: 64, offset: 192)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!376, !4316, !4929, !264, !391}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr", scope: !231, file: !227, line: 44, baseType: !3762, size: 64, offset: 41728)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_group", scope: !231, file: !227, line: 45, baseType: !399, size: 320, offset: 41792)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_groups", scope: !231, file: !227, line: 47, baseType: !4944, size: 128, offset: 42112)
!4944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, elements: !157)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !231, file: !227, line: 48, baseType: !4946, size: 64, offset: 42240)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4948, line: 123, size: 448, elements: !4949)
!4948 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4949 = !{!4950, !4951, !4952, !4953, !4954, !4955}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4947, file: !4948, line: 124, baseType: !7, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4947, file: !4948, line: 125, baseType: !728, size: 32, offset: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4947, file: !4948, line: 126, baseType: !246, size: 128, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4947, file: !4948, line: 127, baseType: !246, size: 128, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4947, file: !4948, line: 128, baseType: !1042, size: 64, offset: 320)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4947, file: !4948, line: 129, baseType: !4956, size: 64, offset: 384)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4948, line: 132, size: 320, elements: !4958)
!4958 = !{!4959, !4960, !4965, !4966}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4957, file: !4948, line: 133, baseType: !246, size: 128)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4957, file: !4948, line: 134, baseType: !4961, size: 64, offset: 128)
!4961 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4948, line: 116, baseType: !4962)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{null, !4956}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4957, file: !4948, line: 135, baseType: !4946, size: 64, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4957, file: !4948, line: 137, baseType: !109, size: 32, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !231, file: !227, line: 49, baseType: !4968, size: 640, offset: 42304)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_delayed_work", file: !4948, line: 140, size: 640, elements: !4969)
!4969 = !{!4970, !4971}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4968, file: !4948, line: 141, baseType: !4957, size: 320)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4968, file: !4948, line: 142, baseType: !2982, size: 320, offset: 320)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "max_vclocks", scope: !231, file: !227, line: 50, baseType: !7, size: 32, offset: 42944)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "n_vclocks", scope: !231, file: !227, line: 51, baseType: !7, size: 32, offset: 42976)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "vclock_index", scope: !231, file: !227, line: 52, baseType: !683, size: 64, offset: 43008)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "n_vclocks_mux", scope: !231, file: !227, line: 53, baseType: !716, size: 256, offset: 43072)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual_clock", scope: !231, file: !227, line: 54, baseType: !1532, size: 8, offset: 43328)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "has_cycles", scope: !231, file: !227, line: 55, baseType: !1532, size: 8, offset: 43336)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !226, file: !227, line: 64, baseType: !4771, size: 1472, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !226, file: !227, line: 65, baseType: !230, size: 64, offset: 1536)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "vclock_hash_node", scope: !226, file: !227, line: 66, baseType: !220, size: 128, offset: 1600)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !226, file: !227, line: 67, baseType: !4982, size: 192, offset: 1728)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyclecounter", file: !4983, line: 30, size: 192, elements: !4984)
!4983 = !DIFile(filename: "./include/linux/timecounter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "383ec9a52560b80db2c6f4d48ce753fd")
!4984 = !{!4985, !4991, !4992, !4993}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4982, file: !4983, line: 31, baseType: !4986, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!496, !4989}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4982)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4982, file: !4983, line: 32, baseType: !496, size: 64, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !4982, file: !4983, line: 33, baseType: !493, size: 32, offset: 128)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4982, file: !4983, line: 34, baseType: !493, size: 32, offset: 160)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !226, file: !227, line: 68, baseType: !4995, size: 320, offset: 1920)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timecounter", file: !4983, line: 55, size: 320, elements: !4996)
!4996 = !{!4997, !4998, !4999, !5000, !5001}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !4995, file: !4983, line: 56, baseType: !4989, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !4995, file: !4983, line: 57, baseType: !496, size: 64, offset: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4995, file: !4983, line: 58, baseType: !496, size: 64, offset: 128)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4995, file: !4983, line: 59, baseType: !496, size: 64, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "frac", scope: !4995, file: !4983, line: 60, baseType: !496, size: 64, offset: 256)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !226, file: !227, line: 69, baseType: !716, size: 256, offset: 2240)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !224)
!5005 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !214, line: 42, baseType: !394)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!5007 = !{!5008, !5013, !5021, !5026, !5028, !5030, !5032, !0, !5037, !5039, !5041}
!5008 = !DIGlobalVariableExpression(var: !5009, expr: !DIExpression())
!5009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !5010, isLocal: true, isDefinition: true)
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 88, elements: !5011)
!5011 = !{!5012}
!5012 = !DISubrange(count: 11)
!5013 = !DIGlobalVariableExpression(var: !5014, expr: !DIExpression())
!5014 = distinct !DIGlobalVariable(name: "__key", scope: !5015, file: !3, line: 208, type: !618, isLocal: true, isDefinition: true)
!5015 = distinct !DISubprogram(name: "ptp_vclock_register", scope: !3, file: !3, line: 185, type: !5016, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5018)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!225, !230}
!5018 = !{!5019, !5020}
!5019 = !DILocalVariable(name: "pclock", arg: 1, scope: !5015, file: !3, line: 185, type: !230)
!5020 = !DILocalVariable(name: "vclock", scope: !5015, file: !3, line: 187, type: !225)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !5023, isLocal: true, isDefinition: true)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 112, elements: !5024)
!5024 = !{!5025}
!5025 = !DISubrange(count: 14)
!5026 = !DIGlobalVariableExpression(var: !5027, expr: !DIExpression())
!5027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !1518, isLocal: true, isDefinition: true)
!5028 = !DIGlobalVariableExpression(var: !5029, expr: !DIExpression())
!5029 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptp_get_vclocks_index338", scope: !2, file: !3, line: 266, type: !215, isLocal: true, isDefinition: true)
!5030 = !DIGlobalVariableExpression(var: !5031, expr: !DIExpression())
!5031 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptp_convert_timestamp343", scope: !2, file: !3, line: 294, type: !215, isLocal: true, isDefinition: true)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(scope: null, file: !203, line: 480, type: !5034, isLocal: true, isDefinition: true)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 168, elements: !5035)
!5035 = !{!5036}
!5036 = !DISubrange(count: 21)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(name: "ptp_vclock_cc", scope: !2, file: !3, line: 178, type: !4990, isLocal: true, isDefinition: true)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "vclock_hash_lock", scope: !2, file: !3, line: 18, type: !275, isLocal: true, isDefinition: true)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "vclock_hash", scope: !2, file: !3, line: 20, type: !5043, isLocal: true, isDefinition: true)
!5043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 16384, elements: !5044)
!5044 = !{!5045}
!5045 = !DISubrange(count: 256)
!5046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4771)
!5047 = !{i32 7, !"Dwarf Version", i32 5}
!5048 = !{i32 2, !"Debug Info Version", i32 3}
!5049 = !{i32 1, !"wchar_size", i32 2}
!5050 = !{i32 8, !"cf-protection-branch", i32 1}
!5051 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5052 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5053 = !{i32 1, !"Code Model", i32 2}
!5054 = !{i32 1, !"override-stack-alignment", i32 8}
!5055 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5056 = !DILocation(line: 185, column: 58, scope: !5015)
!5057 = !DILocation(line: 187, column: 2, scope: !5015)
!5058 = !DILocation(line: 187, column: 21, scope: !5015)
!5059 = !DILocation(line: 189, column: 11, scope: !5015)
!5060 = !DILocation(line: 189, column: 9, scope: !5015)
!5061 = !DILocation(line: 190, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 190, column: 6)
!5063 = !DILocation(line: 190, column: 6, scope: !5015)
!5064 = !DILocation(line: 191, column: 3, scope: !5062)
!5065 = !DILocation(line: 193, column: 19, scope: !5015)
!5066 = !DILocation(line: 193, column: 2, scope: !5015)
!5067 = !DILocation(line: 193, column: 10, scope: !5015)
!5068 = !DILocation(line: 193, column: 17, scope: !5015)
!5069 = !DILocation(line: 194, column: 2, scope: !5015)
!5070 = !DILocation(line: 194, column: 10, scope: !5015)
!5071 = !DILocation(line: 194, column: 17, scope: !5015)
!5072 = !DILocation(line: 195, column: 6, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 195, column: 6)
!5074 = !DILocation(line: 195, column: 14, scope: !5073)
!5075 = !DILocation(line: 195, column: 20, scope: !5073)
!5076 = !DILocation(line: 195, column: 6, scope: !5015)
!5077 = !DILocation(line: 196, column: 3, scope: !5073)
!5078 = !DILocation(line: 196, column: 11, scope: !5073)
!5079 = !DILocation(line: 196, column: 16, scope: !5073)
!5080 = !DILocation(line: 196, column: 27, scope: !5073)
!5081 = !DILocation(line: 198, column: 3, scope: !5073)
!5082 = !DILocation(line: 198, column: 11, scope: !5073)
!5083 = !DILocation(line: 198, column: 16, scope: !5073)
!5084 = !DILocation(line: 198, column: 26, scope: !5073)
!5085 = !DILocation(line: 199, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 199, column: 6)
!5087 = !DILocation(line: 199, column: 14, scope: !5086)
!5088 = !DILocation(line: 199, column: 20, scope: !5086)
!5089 = !DILocation(line: 199, column: 6, scope: !5015)
!5090 = !DILocation(line: 200, column: 3, scope: !5086)
!5091 = !DILocation(line: 200, column: 11, scope: !5086)
!5092 = !DILocation(line: 200, column: 16, scope: !5086)
!5093 = !DILocation(line: 200, column: 31, scope: !5086)
!5094 = !DILocation(line: 201, column: 2, scope: !5015)
!5095 = !DILocation(line: 201, column: 10, scope: !5015)
!5096 = !DILocation(line: 201, column: 15, scope: !5015)
!5097 = !DILocation(line: 203, column: 11, scope: !5015)
!5098 = !DILocation(line: 203, column: 19, scope: !5015)
!5099 = !DILocation(line: 203, column: 24, scope: !5015)
!5100 = !DILocation(line: 204, column: 4, scope: !5015)
!5101 = !DILocation(line: 204, column: 12, scope: !5015)
!5102 = !DILocation(line: 203, column: 2, scope: !5015)
!5103 = !DILocation(line: 206, column: 19, scope: !5015)
!5104 = !DILocation(line: 206, column: 27, scope: !5015)
!5105 = !DILocation(line: 206, column: 2, scope: !5015)
!5106 = !DILocation(line: 208, column: 2, scope: !5015)
!5107 = !DILocation(line: 208, column: 2, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 208, column: 2)
!5109 = !DILocation(line: 210, column: 38, scope: !5015)
!5110 = !DILocation(line: 210, column: 46, scope: !5015)
!5111 = !DILocation(line: 210, column: 53, scope: !5015)
!5112 = !DILocation(line: 210, column: 61, scope: !5015)
!5113 = !DILocation(line: 210, column: 18, scope: !5015)
!5114 = !DILocation(line: 210, column: 2, scope: !5015)
!5115 = !DILocation(line: 210, column: 10, scope: !5015)
!5116 = !DILocation(line: 210, column: 16, scope: !5015)
!5117 = !DILocation(line: 211, column: 21, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 211, column: 6)
!5119 = !DILocation(line: 211, column: 29, scope: !5118)
!5120 = !DILocation(line: 211, column: 6, scope: !5118)
!5121 = !DILocation(line: 211, column: 6, scope: !5015)
!5122 = !DILocation(line: 212, column: 9, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 211, column: 37)
!5124 = !DILocation(line: 212, column: 3, scope: !5123)
!5125 = !DILocation(line: 213, column: 3, scope: !5123)
!5126 = !DILocation(line: 216, column: 20, scope: !5015)
!5127 = !DILocation(line: 216, column: 28, scope: !5015)
!5128 = !DILocation(line: 216, column: 33, scope: !5015)
!5129 = !DILocation(line: 216, column: 41, scope: !5015)
!5130 = !DILocation(line: 216, column: 2, scope: !5015)
!5131 = !DILocation(line: 217, column: 22, scope: !5015)
!5132 = !DILocation(line: 217, column: 30, scope: !5015)
!5133 = !DILocation(line: 217, column: 2, scope: !5015)
!5134 = !DILocation(line: 219, column: 22, scope: !5015)
!5135 = !DILocation(line: 219, column: 2, scope: !5015)
!5136 = !DILocation(line: 221, column: 9, scope: !5015)
!5137 = !DILocation(line: 221, column: 2, scope: !5015)
!5138 = !DILocation(line: 222, column: 1, scope: !5015)
!5139 = distinct !DISubprogram(name: "kzalloc", scope: !203, file: !203, line: 719, type: !5140, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!215, !391, !213}
!5142 = !{!5143, !5144}
!5143 = !DILocalVariable(name: "size", arg: 1, scope: !5139, file: !203, line: 719, type: !391)
!5144 = !DILocalVariable(name: "flags", arg: 2, scope: !5139, file: !203, line: 719, type: !213)
!5145 = !DILocation(line: 719, column: 52, scope: !5139)
!5146 = !DILocation(line: 719, column: 64, scope: !5139)
!5147 = !DILocation(line: 721, column: 17, scope: !5139)
!5148 = !DILocation(line: 721, column: 23, scope: !5139)
!5149 = !DILocation(line: 721, column: 29, scope: !5139)
!5150 = !DILocation(line: 721, column: 9, scope: !5139)
!5151 = !DILocation(line: 721, column: 2, scope: !5139)
!5152 = distinct !DISubprogram(name: "ptp_vclock_gettimex", scope: !3, file: !3, line: 87, type: !4816, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5153 = !{!5154, !5155, !5156, !5157, !5158, !5160, !5161, !5162, !5163}
!5154 = !DILocalVariable(name: "ptp", arg: 1, scope: !5152, file: !3, line: 87, type: !4770)
!5155 = !DILocalVariable(name: "ts", arg: 2, scope: !5152, file: !3, line: 88, type: !4283)
!5156 = !DILocalVariable(name: "sts", arg: 3, scope: !5152, file: !3, line: 89, type: !4818)
!5157 = !DILocalVariable(name: "vclock", scope: !5152, file: !3, line: 91, type: !225)
!5158 = !DILocalVariable(name: "__mptr", scope: !5159, file: !3, line: 91, type: !215)
!5159 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 91, column: 30)
!5160 = !DILocalVariable(name: "pptp", scope: !5152, file: !3, line: 92, type: !230)
!5161 = !DILocalVariable(name: "pts", scope: !5152, file: !3, line: 93, type: !3432)
!5162 = !DILocalVariable(name: "err", scope: !5152, file: !3, line: 94, type: !109)
!5163 = !DILocalVariable(name: "ns", scope: !5152, file: !3, line: 95, type: !496)
!5164 = !DILocation(line: 87, column: 55, scope: !5152)
!5165 = !DILocation(line: 88, column: 30, scope: !5152)
!5166 = !DILocation(line: 89, column: 40, scope: !5152)
!5167 = !DILocation(line: 91, column: 2, scope: !5152)
!5168 = !DILocation(line: 91, column: 21, scope: !5152)
!5169 = !DILocation(line: 91, column: 30, scope: !5159)
!5170 = !DILocation(line: 91, column: 30, scope: !5152)
!5171 = !DILocation(line: 92, column: 2, scope: !5152)
!5172 = !DILocation(line: 92, column: 20, scope: !5152)
!5173 = !DILocation(line: 92, column: 27, scope: !5152)
!5174 = !DILocation(line: 92, column: 35, scope: !5152)
!5175 = !DILocation(line: 93, column: 2, scope: !5152)
!5176 = !DILocation(line: 93, column: 20, scope: !5152)
!5177 = !DILocation(line: 94, column: 2, scope: !5152)
!5178 = !DILocation(line: 94, column: 6, scope: !5152)
!5179 = !DILocation(line: 95, column: 2, scope: !5152)
!5180 = !DILocation(line: 95, column: 6, scope: !5152)
!5181 = !DILocation(line: 97, column: 8, scope: !5152)
!5182 = !DILocation(line: 97, column: 14, scope: !5152)
!5183 = !DILocation(line: 97, column: 20, scope: !5152)
!5184 = !DILocation(line: 97, column: 33, scope: !5152)
!5185 = !DILocation(line: 97, column: 39, scope: !5152)
!5186 = !DILocation(line: 97, column: 51, scope: !5152)
!5187 = !DILocation(line: 97, column: 6, scope: !5152)
!5188 = !DILocation(line: 98, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 98, column: 6)
!5190 = !DILocation(line: 98, column: 6, scope: !5152)
!5191 = !DILocation(line: 99, column: 10, scope: !5189)
!5192 = !DILocation(line: 99, column: 3, scope: !5189)
!5193 = !DILocation(line: 101, column: 32, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 101, column: 6)
!5195 = !DILocation(line: 101, column: 40, scope: !5194)
!5196 = !DILocation(line: 101, column: 6, scope: !5194)
!5197 = !DILocation(line: 101, column: 6, scope: !5152)
!5198 = !DILocation(line: 102, column: 3, scope: !5194)
!5199 = !DILocation(line: 103, column: 29, scope: !5152)
!5200 = !DILocation(line: 103, column: 37, scope: !5152)
!5201 = !DILocation(line: 103, column: 41, scope: !5152)
!5202 = !DILocation(line: 103, column: 7, scope: !5152)
!5203 = !DILocation(line: 103, column: 5, scope: !5152)
!5204 = !DILocation(line: 104, column: 16, scope: !5152)
!5205 = !DILocation(line: 104, column: 24, scope: !5152)
!5206 = !DILocation(line: 104, column: 2, scope: !5152)
!5207 = !DILocation(line: 106, column: 3, scope: !5152)
!5208 = !DILocation(line: 106, column: 8, scope: !5152)
!5209 = !DILocation(line: 106, column: 25, scope: !5152)
!5210 = !DILocation(line: 108, column: 2, scope: !5152)
!5211 = !DILocation(line: 109, column: 1, scope: !5152)
!5212 = distinct !DISubprogram(name: "ptp_vclock_gettime", scope: !3, file: !3, line: 72, type: !4812, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5213)
!5213 = !{!5214, !5215, !5216, !5217, !5219}
!5214 = !DILocalVariable(name: "ptp", arg: 1, scope: !5212, file: !3, line: 72, type: !4770)
!5215 = !DILocalVariable(name: "ts", arg: 2, scope: !5212, file: !3, line: 73, type: !4283)
!5216 = !DILocalVariable(name: "vclock", scope: !5212, file: !3, line: 75, type: !225)
!5217 = !DILocalVariable(name: "__mptr", scope: !5218, file: !3, line: 75, type: !215)
!5218 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 75, column: 30)
!5219 = !DILocalVariable(name: "ns", scope: !5212, file: !3, line: 76, type: !496)
!5220 = !DILocation(line: 72, column: 54, scope: !5212)
!5221 = !DILocation(line: 73, column: 29, scope: !5212)
!5222 = !DILocation(line: 75, column: 2, scope: !5212)
!5223 = !DILocation(line: 75, column: 21, scope: !5212)
!5224 = !DILocation(line: 75, column: 30, scope: !5218)
!5225 = !DILocation(line: 75, column: 30, scope: !5212)
!5226 = !DILocation(line: 76, column: 2, scope: !5212)
!5227 = !DILocation(line: 76, column: 6, scope: !5212)
!5228 = !DILocation(line: 78, column: 32, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 78, column: 6)
!5230 = !DILocation(line: 78, column: 40, scope: !5229)
!5231 = !DILocation(line: 78, column: 6, scope: !5229)
!5232 = !DILocation(line: 78, column: 6, scope: !5212)
!5233 = !DILocation(line: 79, column: 3, scope: !5229)
!5234 = !DILocation(line: 80, column: 25, scope: !5212)
!5235 = !DILocation(line: 80, column: 33, scope: !5212)
!5236 = !DILocation(line: 80, column: 7, scope: !5212)
!5237 = !DILocation(line: 80, column: 5, scope: !5212)
!5238 = !DILocation(line: 81, column: 16, scope: !5212)
!5239 = !DILocation(line: 81, column: 24, scope: !5212)
!5240 = !DILocation(line: 81, column: 2, scope: !5212)
!5241 = !DILocation(line: 82, column: 3, scope: !5212)
!5242 = !DILocation(line: 82, column: 8, scope: !5212)
!5243 = !DILocation(line: 82, column: 25, scope: !5212)
!5244 = !DILocation(line: 84, column: 2, scope: !5212)
!5245 = !DILocation(line: 85, column: 1, scope: !5212)
!5246 = distinct !DISubprogram(name: "ptp_vclock_getcrosststamp", scope: !3, file: !3, line: 125, type: !4825, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5247 = !{!5248, !5249, !5250, !5251, !5253, !5254, !5255}
!5248 = !DILocalVariable(name: "ptp", arg: 1, scope: !5246, file: !3, line: 125, type: !4770)
!5249 = !DILocalVariable(name: "xtstamp", arg: 2, scope: !5246, file: !3, line: 126, type: !4827)
!5250 = !DILocalVariable(name: "vclock", scope: !5246, file: !3, line: 128, type: !225)
!5251 = !DILocalVariable(name: "__mptr", scope: !5252, file: !3, line: 128, type: !215)
!5252 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 128, column: 30)
!5253 = !DILocalVariable(name: "pptp", scope: !5246, file: !3, line: 129, type: !230)
!5254 = !DILocalVariable(name: "err", scope: !5246, file: !3, line: 130, type: !109)
!5255 = !DILocalVariable(name: "ns", scope: !5246, file: !3, line: 131, type: !496)
!5256 = !DILocation(line: 125, column: 61, scope: !5246)
!5257 = !DILocation(line: 126, column: 44, scope: !5246)
!5258 = !DILocation(line: 128, column: 2, scope: !5246)
!5259 = !DILocation(line: 128, column: 21, scope: !5246)
!5260 = !DILocation(line: 128, column: 30, scope: !5252)
!5261 = !DILocation(line: 128, column: 30, scope: !5246)
!5262 = !DILocation(line: 129, column: 2, scope: !5246)
!5263 = !DILocation(line: 129, column: 20, scope: !5246)
!5264 = !DILocation(line: 129, column: 27, scope: !5246)
!5265 = !DILocation(line: 129, column: 35, scope: !5246)
!5266 = !DILocation(line: 130, column: 2, scope: !5246)
!5267 = !DILocation(line: 130, column: 6, scope: !5246)
!5268 = !DILocation(line: 131, column: 2, scope: !5246)
!5269 = !DILocation(line: 131, column: 6, scope: !5246)
!5270 = !DILocation(line: 133, column: 8, scope: !5246)
!5271 = !DILocation(line: 133, column: 14, scope: !5246)
!5272 = !DILocation(line: 133, column: 20, scope: !5246)
!5273 = !DILocation(line: 133, column: 35, scope: !5246)
!5274 = !DILocation(line: 133, column: 41, scope: !5246)
!5275 = !DILocation(line: 133, column: 47, scope: !5246)
!5276 = !DILocation(line: 133, column: 6, scope: !5246)
!5277 = !DILocation(line: 134, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 134, column: 6)
!5279 = !DILocation(line: 134, column: 6, scope: !5246)
!5280 = !DILocation(line: 135, column: 10, scope: !5278)
!5281 = !DILocation(line: 135, column: 3, scope: !5278)
!5282 = !DILocation(line: 137, column: 32, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 137, column: 6)
!5284 = !DILocation(line: 137, column: 40, scope: !5283)
!5285 = !DILocation(line: 137, column: 6, scope: !5283)
!5286 = !DILocation(line: 137, column: 6, scope: !5246)
!5287 = !DILocation(line: 138, column: 3, scope: !5283)
!5288 = !DILocation(line: 139, column: 29, scope: !5246)
!5289 = !DILocation(line: 139, column: 37, scope: !5246)
!5290 = !DILocation(line: 139, column: 53, scope: !5246)
!5291 = !DILocation(line: 139, column: 62, scope: !5246)
!5292 = !DILocation(line: 139, column: 41, scope: !5246)
!5293 = !DILocation(line: 139, column: 7, scope: !5246)
!5294 = !DILocation(line: 139, column: 5, scope: !5246)
!5295 = !DILocation(line: 140, column: 16, scope: !5246)
!5296 = !DILocation(line: 140, column: 24, scope: !5246)
!5297 = !DILocation(line: 140, column: 2, scope: !5246)
!5298 = !DILocation(line: 142, column: 32, scope: !5246)
!5299 = !DILocation(line: 142, column: 20, scope: !5246)
!5300 = !DILocation(line: 142, column: 2, scope: !5246)
!5301 = !DILocation(line: 142, column: 11, scope: !5246)
!5302 = !DILocation(line: 142, column: 18, scope: !5246)
!5303 = !DILocation(line: 144, column: 2, scope: !5246)
!5304 = !DILocation(line: 145, column: 1, scope: !5246)
!5305 = !DISubprogram(name: "snprintf", scope: !5306, file: !5306, line: 12, type: !5307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5306 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!109, !344, !391, !264, null}
!5309 = distinct !DISubprogram(name: "INIT_HLIST_NODE", scope: !5310, file: !5310, line: 934, type: !5311, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5313)
!5310 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !219}
!5313 = !{!5314}
!5314 = !DILocalVariable(name: "h", arg: 1, scope: !5309, file: !5310, line: 934, type: !219)
!5315 = !DILocation(line: 934, column: 55, scope: !5309)
!5316 = !DILocation(line: 936, column: 2, scope: !5309)
!5317 = !DILocation(line: 936, column: 5, scope: !5309)
!5318 = !DILocation(line: 936, column: 10, scope: !5309)
!5319 = !DILocation(line: 937, column: 2, scope: !5309)
!5320 = !DILocation(line: 937, column: 5, scope: !5309)
!5321 = !DILocation(line: 937, column: 11, scope: !5309)
!5322 = !DILocation(line: 938, column: 1, scope: !5309)
!5323 = !DISubprogram(name: "__mutex_init", scope: !717, file: !717, line: 121, type: !5324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !5326, !264, !5327}
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!5328 = !DISubprogram(name: "ptp_clock_register", scope: !142, file: !142, line: 311, type: !5329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!230, !4770, !4316}
!5331 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5332, file: !5332, line: 70, type: !5333, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5335)
!5332 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!1532, !2270}
!5335 = !{!5336}
!5336 = !DILocalVariable(name: "ptr", arg: 1, scope: !5331, file: !5332, line: 70, type: !2270)
!5337 = !DILocation(line: 70, column: 68, scope: !5331)
!5338 = !DILocation(line: 72, column: 9, scope: !5331)
!5339 = !DILocation(line: 72, column: 24, scope: !5331)
!5340 = !DILocation(line: 72, column: 27, scope: !5331)
!5341 = !DILocation(line: 72, column: 2, scope: !5331)
!5342 = !DISubprogram(name: "kfree", scope: !203, file: !203, line: 227, type: !5343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{null, !2270}
!5345 = !DISubprogram(name: "timecounter_init", scope: !4983, file: !4983, line: 99, type: !5346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !5348, !4989, !496}
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!5349 = !DISubprogram(name: "ptp_schedule_worker", scope: !142, file: !142, line: 385, type: !5350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!109, !230, !394}
!5352 = distinct !DISubprogram(name: "ptp_vclock_hash_add", scope: !3, file: !3, line: 22, type: !5353, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{null, !225}
!5355 = !{!5356}
!5356 = !DILocalVariable(name: "vclock", arg: 1, scope: !5352, file: !3, line: 22, type: !225)
!5357 = !DILocation(line: 22, column: 52, scope: !5352)
!5358 = !DILocation(line: 24, column: 2, scope: !5352)
!5359 = !DILocation(line: 26, column: 22, scope: !5352)
!5360 = !DILocation(line: 26, column: 30, scope: !5352)
!5361 = !DILocation(line: 27, column: 20, scope: !5352)
!5362 = !DILocation(line: 27, column: 28, scope: !5352)
!5363 = !DILocation(line: 27, column: 35, scope: !5352)
!5364 = !DILocation(line: 27, column: 41, scope: !5352)
!5365 = !DILocation(line: 27, column: 8, scope: !5352)
!5366 = !DILocation(line: 26, column: 2, scope: !5352)
!5367 = !DILocation(line: 29, column: 2, scope: !5352)
!5368 = !DILocation(line: 30, column: 1, scope: !5352)
!5369 = distinct !DISubprogram(name: "ptp_vclock_unregister", scope: !3, file: !3, line: 224, type: !5353, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5370)
!5370 = !{!5371}
!5371 = !DILocalVariable(name: "vclock", arg: 1, scope: !5369, file: !3, line: 224, type: !225)
!5372 = !DILocation(line: 224, column: 47, scope: !5369)
!5373 = !DILocation(line: 226, column: 22, scope: !5369)
!5374 = !DILocation(line: 226, column: 2, scope: !5369)
!5375 = !DILocation(line: 228, column: 23, scope: !5369)
!5376 = !DILocation(line: 228, column: 31, scope: !5369)
!5377 = !DILocation(line: 228, column: 2, scope: !5369)
!5378 = !DILocation(line: 229, column: 8, scope: !5369)
!5379 = !DILocation(line: 229, column: 2, scope: !5369)
!5380 = !DILocation(line: 230, column: 1, scope: !5369)
!5381 = distinct !DISubprogram(name: "ptp_vclock_hash_del", scope: !3, file: !3, line: 32, type: !5353, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5382)
!5382 = !{!5383}
!5383 = !DILocalVariable(name: "vclock", arg: 1, scope: !5381, file: !3, line: 32, type: !225)
!5384 = !DILocation(line: 32, column: 52, scope: !5381)
!5385 = !DILocation(line: 34, column: 2, scope: !5381)
!5386 = !DILocation(line: 36, column: 22, scope: !5381)
!5387 = !DILocation(line: 36, column: 30, scope: !5381)
!5388 = !DILocation(line: 36, column: 2, scope: !5381)
!5389 = !DILocation(line: 38, column: 2, scope: !5381)
!5390 = !DILocation(line: 40, column: 2, scope: !5381)
!5391 = !DILocation(line: 41, column: 1, scope: !5381)
!5392 = !DISubprogram(name: "ptp_clock_unregister", scope: !142, file: !142, line: 320, type: !5393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!109, !230}
!5395 = distinct !DISubprogram(name: "ptp_get_vclocks_index", scope: !3, file: !3, line: 233, type: !5396, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5399)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!109, !109, !5398}
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!5399 = !{!5400, !5401, !5402, !5403, !5404, !5405, !5406}
!5400 = !DILocalVariable(name: "pclock_index", arg: 1, scope: !5395, file: !3, line: 233, type: !109)
!5401 = !DILocalVariable(name: "vclock_index", arg: 2, scope: !5395, file: !3, line: 233, type: !5398)
!5402 = !DILocalVariable(name: "name", scope: !5395, file: !3, line: 235, type: !3257)
!5403 = !DILocalVariable(name: "ptp", scope: !5395, file: !3, line: 236, type: !230)
!5404 = !DILocalVariable(name: "dev", scope: !5395, file: !3, line: 237, type: !4316)
!5405 = !DILocalVariable(name: "num", scope: !5395, file: !3, line: 238, type: !109)
!5406 = !DILabel(scope: !5395, name: "out", file: !3, line: 261)
!5407 = !DILocation(line: 233, column: 31, scope: !5395)
!5408 = !DILocation(line: 233, column: 51, scope: !5395)
!5409 = !DILocation(line: 235, column: 2, scope: !5395)
!5410 = !DILocation(line: 235, column: 7, scope: !5395)
!5411 = !DILocation(line: 236, column: 2, scope: !5395)
!5412 = !DILocation(line: 236, column: 20, scope: !5395)
!5413 = !DILocation(line: 237, column: 2, scope: !5395)
!5414 = !DILocation(line: 237, column: 17, scope: !5395)
!5415 = !DILocation(line: 238, column: 2, scope: !5395)
!5416 = !DILocation(line: 238, column: 6, scope: !5395)
!5417 = !DILocation(line: 240, column: 6, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 240, column: 6)
!5419 = !DILocation(line: 240, column: 19, scope: !5418)
!5420 = !DILocation(line: 240, column: 6, scope: !5395)
!5421 = !DILocation(line: 241, column: 10, scope: !5418)
!5422 = !DILocation(line: 241, column: 3, scope: !5418)
!5423 = !DILocation(line: 243, column: 11, scope: !5395)
!5424 = !DILocation(line: 243, column: 46, scope: !5395)
!5425 = !DILocation(line: 243, column: 2, scope: !5395)
!5426 = !DILocation(line: 244, column: 34, scope: !5395)
!5427 = !DILocation(line: 244, column: 45, scope: !5395)
!5428 = !DILocation(line: 244, column: 8, scope: !5395)
!5429 = !DILocation(line: 244, column: 6, scope: !5395)
!5430 = !DILocation(line: 245, column: 7, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 245, column: 6)
!5432 = !DILocation(line: 245, column: 6, scope: !5395)
!5433 = !DILocation(line: 246, column: 10, scope: !5431)
!5434 = !DILocation(line: 246, column: 3, scope: !5431)
!5435 = !DILocation(line: 248, column: 24, scope: !5395)
!5436 = !DILocation(line: 248, column: 8, scope: !5395)
!5437 = !DILocation(line: 248, column: 6, scope: !5395)
!5438 = !DILocation(line: 250, column: 32, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 250, column: 6)
!5440 = !DILocation(line: 250, column: 37, scope: !5439)
!5441 = !DILocation(line: 250, column: 6, scope: !5439)
!5442 = !DILocation(line: 250, column: 6, scope: !5395)
!5443 = !DILocation(line: 251, column: 14, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 250, column: 53)
!5445 = !DILocation(line: 251, column: 3, scope: !5444)
!5446 = !DILocation(line: 252, column: 10, scope: !5444)
!5447 = !DILocation(line: 252, column: 3, scope: !5444)
!5448 = !DILocation(line: 255, column: 40, scope: !5395)
!5449 = !DILocation(line: 255, column: 45, scope: !5395)
!5450 = !DILocation(line: 255, column: 38, scope: !5395)
!5451 = !DILocation(line: 255, column: 18, scope: !5395)
!5452 = !DILocation(line: 255, column: 3, scope: !5395)
!5453 = !DILocation(line: 255, column: 16, scope: !5395)
!5454 = !DILocation(line: 256, column: 9, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 256, column: 6)
!5456 = !DILocation(line: 256, column: 8, scope: !5455)
!5457 = !DILocation(line: 256, column: 7, scope: !5455)
!5458 = !DILocation(line: 256, column: 6, scope: !5395)
!5459 = !DILocation(line: 257, column: 3, scope: !5455)
!5460 = !DILocation(line: 259, column: 10, scope: !5395)
!5461 = !DILocation(line: 259, column: 9, scope: !5395)
!5462 = !DILocation(line: 259, column: 24, scope: !5395)
!5463 = !DILocation(line: 259, column: 29, scope: !5395)
!5464 = !DILocation(line: 259, column: 57, scope: !5395)
!5465 = !DILocation(line: 259, column: 62, scope: !5395)
!5466 = !DILocation(line: 259, column: 55, scope: !5395)
!5467 = !DILocation(line: 259, column: 2, scope: !5395)
!5468 = !DILocation(line: 260, column: 8, scope: !5395)
!5469 = !DILocation(line: 260, column: 13, scope: !5395)
!5470 = !DILocation(line: 260, column: 6, scope: !5395)
!5471 = !DILocation(line: 260, column: 2, scope: !5395)
!5472 = !DILocation(line: 261, column: 1, scope: !5395)
!5473 = !DILocation(line: 262, column: 16, scope: !5395)
!5474 = !DILocation(line: 262, column: 21, scope: !5395)
!5475 = !DILocation(line: 262, column: 2, scope: !5395)
!5476 = !DILocation(line: 263, column: 13, scope: !5395)
!5477 = !DILocation(line: 263, column: 2, scope: !5395)
!5478 = !DILocation(line: 264, column: 9, scope: !5395)
!5479 = !DILocation(line: 264, column: 2, scope: !5395)
!5480 = !DILocation(line: 265, column: 1, scope: !5395)
!5481 = distinct !DISubprogram(name: "class_find_device_by_name", scope: !4717, file: !4717, line: 108, type: !5482, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5484)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!4316, !4714, !264}
!5484 = !{!5485, !5486}
!5485 = !DILocalVariable(name: "class", arg: 1, scope: !5481, file: !4717, line: 108, type: !4714)
!5486 = !DILocalVariable(name: "name", arg: 2, scope: !5481, file: !4717, line: 109, type: !264)
!5487 = !DILocation(line: 108, column: 76, scope: !5481)
!5488 = !DILocation(line: 109, column: 26, scope: !5481)
!5489 = !DILocation(line: 111, column: 27, scope: !5481)
!5490 = !DILocation(line: 111, column: 40, scope: !5481)
!5491 = !DILocation(line: 111, column: 9, scope: !5481)
!5492 = !DILocation(line: 111, column: 2, scope: !5481)
!5493 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !5494, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!215, !4336}
!5496 = !{!5497}
!5497 = !DILocalVariable(name: "dev", arg: 1, scope: !5493, file: !94, line: 916, type: !4336)
!5498 = !DILocation(line: 916, column: 58, scope: !5493)
!5499 = !DILocation(line: 918, column: 9, scope: !5493)
!5500 = !DILocation(line: 918, column: 14, scope: !5493)
!5501 = !DILocation(line: 918, column: 2, scope: !5493)
!5502 = !DISubprogram(name: "mutex_lock_interruptible", scope: !717, file: !717, line: 228, type: !5503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!109, !5326}
!5505 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5506 = !DISubprogram(name: "mutex_unlock", scope: !717, file: !717, line: 246, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !5326}
!5509 = distinct !DISubprogram(name: "ptp_convert_timestamp", scope: !3, file: !3, line: 268, type: !5510, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!1178, !5512, !109}
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!5514 = !{!5515, !5516, !5517, !5518, !5519, !5520, !5521, !5524, !5526, !5528, !5531, !5533}
!5515 = !DILocalVariable(name: "hwtstamp", arg: 1, scope: !5509, file: !3, line: 268, type: !5512)
!5516 = !DILocalVariable(name: "vclock_index", arg: 2, scope: !5509, file: !3, line: 268, type: !109)
!5517 = !DILocalVariable(name: "hash", scope: !5509, file: !3, line: 270, type: !7)
!5518 = !DILocalVariable(name: "vclock", scope: !5509, file: !3, line: 271, type: !225)
!5519 = !DILocalVariable(name: "ns", scope: !5509, file: !3, line: 272, type: !496)
!5520 = !DILocalVariable(name: "vclock_ns", scope: !5509, file: !3, line: 273, type: !496)
!5521 = !DILocalVariable(name: "____ptr", scope: !5522, file: !3, line: 279, type: !219)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 279, column: 2)
!5523 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 279, column: 2)
!5524 = !DILocalVariable(name: "__UNIQUE_ID_rcu339", scope: !5525, file: !3, line: 279, type: !219)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 279, column: 2)
!5526 = !DILocalVariable(name: "__mptr", scope: !5527, file: !3, line: 279, type: !215)
!5527 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 279, column: 2)
!5528 = !DILocalVariable(name: "____ptr", scope: !5529, file: !3, line: 279, type: !219)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 279, column: 2)
!5530 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 279, column: 2)
!5531 = !DILocalVariable(name: "__UNIQUE_ID_rcu341", scope: !5532, file: !3, line: 279, type: !219)
!5532 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 279, column: 2)
!5533 = !DILocalVariable(name: "__mptr", scope: !5534, file: !3, line: 279, type: !215)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 279, column: 2)
!5535 = !DILocation(line: 268, column: 46, scope: !5509)
!5536 = !DILocation(line: 268, column: 60, scope: !5509)
!5537 = !DILocation(line: 270, column: 2, scope: !5509)
!5538 = !DILocation(line: 270, column: 15, scope: !5509)
!5539 = !DILocation(line: 270, column: 22, scope: !5509)
!5540 = !DILocation(line: 270, column: 35, scope: !5509)
!5541 = !DILocation(line: 271, column: 2, scope: !5509)
!5542 = !DILocation(line: 271, column: 21, scope: !5509)
!5543 = !DILocation(line: 272, column: 2, scope: !5509)
!5544 = !DILocation(line: 272, column: 6, scope: !5509)
!5545 = !DILocation(line: 273, column: 2, scope: !5509)
!5546 = !DILocation(line: 273, column: 6, scope: !5509)
!5547 = !DILocation(line: 275, column: 20, scope: !5509)
!5548 = !DILocation(line: 275, column: 19, scope: !5509)
!5549 = !DILocation(line: 275, column: 7, scope: !5509)
!5550 = !DILocation(line: 275, column: 5, scope: !5509)
!5551 = !DILocation(line: 277, column: 2, scope: !5509)
!5552 = !DILocation(line: 279, column: 2, scope: !5522)
!5553 = !DILocation(line: 279, column: 2, scope: !5525)
!5554 = !DILocation(line: 279, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 279, column: 2)
!5556 = !DILocation(line: 279, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 279, column: 2)
!5558 = !DILocation(line: 279, column: 2, scope: !5527)
!5559 = !DILocation(line: 279, column: 2, scope: !5523)
!5560 = !DILocation(line: 279, column: 2, scope: !5530)
!5561 = !DILocation(line: 280, column: 7, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 280, column: 7)
!5563 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 279, column: 73)
!5564 = !DILocation(line: 280, column: 15, scope: !5562)
!5565 = !DILocation(line: 280, column: 22, scope: !5562)
!5566 = !DILocation(line: 280, column: 31, scope: !5562)
!5567 = !DILocation(line: 280, column: 28, scope: !5562)
!5568 = !DILocation(line: 280, column: 7, scope: !5563)
!5569 = !DILocation(line: 281, column: 4, scope: !5562)
!5570 = !DILocation(line: 283, column: 33, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 283, column: 7)
!5572 = !DILocation(line: 283, column: 41, scope: !5571)
!5573 = !DILocation(line: 283, column: 7, scope: !5571)
!5574 = !DILocation(line: 283, column: 7, scope: !5563)
!5575 = !DILocation(line: 284, column: 4, scope: !5571)
!5576 = !DILocation(line: 285, column: 37, scope: !5563)
!5577 = !DILocation(line: 285, column: 45, scope: !5563)
!5578 = !DILocation(line: 285, column: 49, scope: !5563)
!5579 = !DILocation(line: 285, column: 15, scope: !5563)
!5580 = !DILocation(line: 285, column: 13, scope: !5563)
!5581 = !DILocation(line: 286, column: 17, scope: !5563)
!5582 = !DILocation(line: 286, column: 25, scope: !5563)
!5583 = !DILocation(line: 286, column: 3, scope: !5563)
!5584 = !DILocation(line: 287, column: 3, scope: !5563)
!5585 = !DILocation(line: 279, column: 2, scope: !5529)
!5586 = !DILocation(line: 279, column: 2, scope: !5532)
!5587 = !DILocation(line: 279, column: 2, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 279, column: 2)
!5589 = !DILocation(line: 279, column: 2, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 279, column: 2)
!5591 = !DILocation(line: 279, column: 2, scope: !5534)
!5592 = distinct !{!5592, !5559, !5593, !5594, !5595}
!5593 = !DILocation(line: 288, column: 2, scope: !5523)
!5594 = !{!"llvm.loop.mustprogress"}
!5595 = !{!"llvm.loop.unroll.disable"}
!5596 = !DILocation(line: 290, column: 2, scope: !5509)
!5597 = !DILocation(line: 292, column: 21, scope: !5509)
!5598 = !DILocation(line: 292, column: 9, scope: !5509)
!5599 = !DILocation(line: 293, column: 1, scope: !5509)
!5600 = !DILocation(line: 292, column: 2, scope: !5509)
!5601 = distinct !DISubprogram(name: "ktime_to_ns", scope: !1179, file: !1179, line: 80, type: !5602, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5604)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!726, !5513}
!5604 = !{!5605}
!5605 = !DILocalVariable(name: "kt", arg: 1, scope: !5601, file: !1179, line: 80, type: !5513)
!5606 = !DILocation(line: 80, column: 45, scope: !5601)
!5607 = !DILocation(line: 82, column: 9, scope: !5601)
!5608 = !DILocation(line: 82, column: 2, scope: !5601)
!5609 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5610, file: !5610, line: 782, type: !2660, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5610 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5611 = !DILocation(line: 784, column: 2, scope: !5609)
!5612 = !DILocation(line: 786, column: 2, scope: !5609)
!5613 = !DILocation(line: 786, column: 2, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5609, file: !5610, line: 786, column: 2)
!5615 = !DILocation(line: 787, column: 2, scope: !5609)
!5616 = !DILocation(line: 787, column: 2, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5609, file: !5610, line: 787, column: 2)
!5618 = !DILocation(line: 789, column: 1, scope: !5609)
!5619 = !DISubprogram(name: "timecounter_cyc2time", scope: !4983, file: !4983, line: 127, type: !5620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!496, !5622, !496}
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4995)
!5624 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5610, file: !5610, line: 813, type: !2660, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5625 = !DILocation(line: 815, column: 2, scope: !5624)
!5626 = !DILocation(line: 815, column: 2, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !5610, line: 815, column: 2)
!5628 = !DILocation(line: 818, column: 2, scope: !5624)
!5629 = !DILocation(line: 819, column: 2, scope: !5624)
!5630 = !DILocation(line: 819, column: 2, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5624, file: !5610, line: 819, column: 2)
!5632 = !DILocation(line: 820, column: 1, scope: !5624)
!5633 = distinct !DISubprogram(name: "ns_to_ktime", scope: !1179, file: !1179, line: 222, type: !5634, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!1178, !496}
!5636 = !{!5637}
!5637 = !DILocalVariable(name: "ns", arg: 1, scope: !5633, file: !1179, line: 222, type: !496)
!5638 = !DILocation(line: 222, column: 39, scope: !5633)
!5639 = !DILocation(line: 224, column: 9, scope: !5633)
!5640 = !DILocation(line: 224, column: 2, scope: !5633)
!5641 = distinct !DISubprogram(name: "kmalloc", scope: !203, file: !203, line: 591, type: !5140, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5642)
!5642 = !{!5643, !5644, !5645}
!5643 = !DILocalVariable(name: "size", arg: 1, scope: !5641, file: !203, line: 591, type: !391)
!5644 = !DILocalVariable(name: "flags", arg: 2, scope: !5641, file: !203, line: 591, type: !213)
!5645 = !DILocalVariable(name: "index", scope: !5646, file: !203, line: 594, type: !7)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !203, line: 593, column: 42)
!5647 = distinct !DILexicalBlock(scope: !5641, file: !203, line: 593, column: 6)
!5648 = !DILocation(line: 591, column: 61, scope: !5641)
!5649 = !DILocation(line: 591, column: 73, scope: !5641)
!5650 = !DILocation(line: 593, column: 27, scope: !5647)
!5651 = !DILocation(line: 593, column: 6, scope: !5647)
!5652 = !DILocation(line: 593, column: 33, scope: !5647)
!5653 = !DILocation(line: 593, column: 36, scope: !5647)
!5654 = !DILocation(line: 593, column: 6, scope: !5641)
!5655 = !DILocation(line: 594, column: 3, scope: !5646)
!5656 = !DILocation(line: 594, column: 16, scope: !5646)
!5657 = !DILocation(line: 596, column: 7, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5646, file: !203, line: 596, column: 7)
!5659 = !DILocation(line: 596, column: 12, scope: !5658)
!5660 = !DILocation(line: 596, column: 7, scope: !5646)
!5661 = !DILocation(line: 597, column: 25, scope: !5658)
!5662 = !DILocation(line: 597, column: 31, scope: !5658)
!5663 = !DILocation(line: 597, column: 11, scope: !5658)
!5664 = !DILocation(line: 597, column: 4, scope: !5658)
!5665 = !DILocation(line: 599, column: 11, scope: !5646)
!5666 = !DILocation(line: 599, column: 9, scope: !5646)
!5667 = !DILocation(line: 601, column: 33, scope: !5646)
!5668 = !DILocation(line: 601, column: 40, scope: !5646)
!5669 = !DILocation(line: 601, column: 20, scope: !5646)
!5670 = !DILocation(line: 601, column: 5, scope: !5646)
!5671 = !DILocation(line: 601, column: 51, scope: !5646)
!5672 = !DILocation(line: 602, column: 5, scope: !5646)
!5673 = !DILocation(line: 602, column: 12, scope: !5646)
!5674 = !DILocation(line: 600, column: 10, scope: !5646)
!5675 = !DILocation(line: 600, column: 3, scope: !5646)
!5676 = !DILocation(line: 603, column: 2, scope: !5647)
!5677 = !DILocation(line: 604, column: 19, scope: !5641)
!5678 = !DILocation(line: 604, column: 25, scope: !5641)
!5679 = !DILocation(line: 604, column: 9, scope: !5641)
!5680 = !DILocation(line: 604, column: 2, scope: !5641)
!5681 = !DILocation(line: 605, column: 1, scope: !5641)
!5682 = !DISubprogram(name: "kmalloc_large", scope: !203, file: !203, line: 531, type: !5140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5683 = distinct !DISubprogram(name: "__kmalloc_index", scope: !203, file: !203, line: 444, type: !5684, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5686)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!7, !391, !1532}
!5686 = !{!5687, !5688}
!5687 = !DILocalVariable(name: "size", arg: 1, scope: !5683, file: !203, line: 444, type: !391)
!5688 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5683, file: !203, line: 445, type: !1532)
!5689 = !DILocation(line: 444, column: 60, scope: !5683)
!5690 = !DILocation(line: 445, column: 16, scope: !5683)
!5691 = !DILocation(line: 447, column: 7, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 447, column: 6)
!5693 = !DILocation(line: 447, column: 6, scope: !5683)
!5694 = !DILocation(line: 448, column: 3, scope: !5692)
!5695 = !DILocation(line: 450, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 450, column: 6)
!5697 = !DILocation(line: 450, column: 11, scope: !5696)
!5698 = !DILocation(line: 450, column: 6, scope: !5683)
!5699 = !DILocation(line: 451, column: 3, scope: !5696)
!5700 = !DILocation(line: 453, column: 32, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 453, column: 6)
!5702 = !DILocation(line: 453, column: 37, scope: !5701)
!5703 = !DILocation(line: 453, column: 42, scope: !5701)
!5704 = !DILocation(line: 453, column: 45, scope: !5701)
!5705 = !DILocation(line: 453, column: 50, scope: !5701)
!5706 = !DILocation(line: 453, column: 6, scope: !5683)
!5707 = !DILocation(line: 454, column: 3, scope: !5701)
!5708 = !DILocation(line: 455, column: 32, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 455, column: 6)
!5710 = !DILocation(line: 455, column: 37, scope: !5709)
!5711 = !DILocation(line: 455, column: 43, scope: !5709)
!5712 = !DILocation(line: 455, column: 46, scope: !5709)
!5713 = !DILocation(line: 455, column: 51, scope: !5709)
!5714 = !DILocation(line: 455, column: 6, scope: !5683)
!5715 = !DILocation(line: 456, column: 3, scope: !5709)
!5716 = !DILocation(line: 457, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 457, column: 6)
!5718 = !DILocation(line: 457, column: 11, scope: !5717)
!5719 = !DILocation(line: 457, column: 6, scope: !5683)
!5720 = !DILocation(line: 457, column: 26, scope: !5717)
!5721 = !DILocation(line: 458, column: 6, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 458, column: 6)
!5723 = !DILocation(line: 458, column: 11, scope: !5722)
!5724 = !DILocation(line: 458, column: 6, scope: !5683)
!5725 = !DILocation(line: 458, column: 26, scope: !5722)
!5726 = !DILocation(line: 459, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 459, column: 6)
!5728 = !DILocation(line: 459, column: 11, scope: !5727)
!5729 = !DILocation(line: 459, column: 6, scope: !5683)
!5730 = !DILocation(line: 459, column: 26, scope: !5727)
!5731 = !DILocation(line: 460, column: 6, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 460, column: 6)
!5733 = !DILocation(line: 460, column: 11, scope: !5732)
!5734 = !DILocation(line: 460, column: 6, scope: !5683)
!5735 = !DILocation(line: 460, column: 26, scope: !5732)
!5736 = !DILocation(line: 461, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 461, column: 6)
!5738 = !DILocation(line: 461, column: 11, scope: !5737)
!5739 = !DILocation(line: 461, column: 6, scope: !5683)
!5740 = !DILocation(line: 461, column: 26, scope: !5737)
!5741 = !DILocation(line: 462, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 462, column: 6)
!5743 = !DILocation(line: 462, column: 11, scope: !5742)
!5744 = !DILocation(line: 462, column: 6, scope: !5683)
!5745 = !DILocation(line: 462, column: 26, scope: !5742)
!5746 = !DILocation(line: 463, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 463, column: 6)
!5748 = !DILocation(line: 463, column: 11, scope: !5747)
!5749 = !DILocation(line: 463, column: 6, scope: !5683)
!5750 = !DILocation(line: 463, column: 26, scope: !5747)
!5751 = !DILocation(line: 464, column: 6, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 464, column: 6)
!5753 = !DILocation(line: 464, column: 11, scope: !5752)
!5754 = !DILocation(line: 464, column: 6, scope: !5683)
!5755 = !DILocation(line: 464, column: 26, scope: !5752)
!5756 = !DILocation(line: 465, column: 6, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 465, column: 6)
!5758 = !DILocation(line: 465, column: 11, scope: !5757)
!5759 = !DILocation(line: 465, column: 6, scope: !5683)
!5760 = !DILocation(line: 465, column: 26, scope: !5757)
!5761 = !DILocation(line: 466, column: 6, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 466, column: 6)
!5763 = !DILocation(line: 466, column: 11, scope: !5762)
!5764 = !DILocation(line: 466, column: 6, scope: !5683)
!5765 = !DILocation(line: 466, column: 26, scope: !5762)
!5766 = !DILocation(line: 467, column: 6, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 467, column: 6)
!5768 = !DILocation(line: 467, column: 11, scope: !5767)
!5769 = !DILocation(line: 467, column: 6, scope: !5683)
!5770 = !DILocation(line: 467, column: 26, scope: !5767)
!5771 = !DILocation(line: 468, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 468, column: 6)
!5773 = !DILocation(line: 468, column: 11, scope: !5772)
!5774 = !DILocation(line: 468, column: 6, scope: !5683)
!5775 = !DILocation(line: 468, column: 26, scope: !5772)
!5776 = !DILocation(line: 469, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 469, column: 6)
!5778 = !DILocation(line: 469, column: 11, scope: !5777)
!5779 = !DILocation(line: 469, column: 6, scope: !5683)
!5780 = !DILocation(line: 469, column: 26, scope: !5777)
!5781 = !DILocation(line: 470, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 470, column: 6)
!5783 = !DILocation(line: 470, column: 11, scope: !5782)
!5784 = !DILocation(line: 470, column: 6, scope: !5683)
!5785 = !DILocation(line: 470, column: 26, scope: !5782)
!5786 = !DILocation(line: 471, column: 6, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 471, column: 6)
!5788 = !DILocation(line: 471, column: 11, scope: !5787)
!5789 = !DILocation(line: 471, column: 6, scope: !5683)
!5790 = !DILocation(line: 471, column: 26, scope: !5787)
!5791 = !DILocation(line: 472, column: 6, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 472, column: 6)
!5793 = !DILocation(line: 472, column: 11, scope: !5792)
!5794 = !DILocation(line: 472, column: 6, scope: !5683)
!5795 = !DILocation(line: 472, column: 26, scope: !5792)
!5796 = !DILocation(line: 473, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 473, column: 6)
!5798 = !DILocation(line: 473, column: 11, scope: !5797)
!5799 = !DILocation(line: 473, column: 6, scope: !5683)
!5800 = !DILocation(line: 473, column: 26, scope: !5797)
!5801 = !DILocation(line: 474, column: 6, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 474, column: 6)
!5803 = !DILocation(line: 474, column: 11, scope: !5802)
!5804 = !DILocation(line: 474, column: 6, scope: !5683)
!5805 = !DILocation(line: 474, column: 27, scope: !5802)
!5806 = !DILocation(line: 475, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 475, column: 6)
!5808 = !DILocation(line: 475, column: 11, scope: !5807)
!5809 = !DILocation(line: 475, column: 6, scope: !5683)
!5810 = !DILocation(line: 475, column: 32, scope: !5807)
!5811 = !DILocation(line: 477, column: 50, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5683, file: !203, line: 477, column: 6)
!5813 = !{i8 0, i8 2}
!5814 = !DILocation(line: 477, column: 6, scope: !5683)
!5815 = !DILocation(line: 478, column: 3, scope: !5812)
!5816 = !DILocation(line: 478, column: 3, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !203, line: 478, column: 3)
!5818 = distinct !DILexicalBlock(scope: !5812, file: !203, line: 478, column: 3)
!5819 = !{i32 -2143556375}
!5820 = !DILocation(line: 478, column: 3, scope: !5818)
!5821 = !DILocation(line: 480, column: 3, scope: !5812)
!5822 = !DILocation(line: 480, column: 3, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5812, file: !203, line: 480, column: 3)
!5824 = !DILocation(line: 480, column: 3, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5823, file: !203, line: 480, column: 3)
!5826 = !DILocation(line: 480, column: 3, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5823, file: !203, line: 480, column: 3)
!5828 = !{i64 2151411124, i64 2151411153, i64 2151411199, i64 2151411257, i64 2151411311, i64 2151411365, i64 2151411420, i64 2151411451}
!5829 = !DILocation(line: 483, column: 2, scope: !5683)
!5830 = !DILocation(line: 484, column: 1, scope: !5683)
!5831 = !DISubprogram(name: "kmalloc_trace", scope: !203, file: !203, line: 525, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!215, !5834, !213, !391}
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5836, line: 11, flags: DIFlagFwdDecl)
!5836 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5837 = distinct !DISubprogram(name: "kmalloc_type", scope: !203, file: !203, line: 401, type: !5838, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5840)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!202, !213, !394}
!5840 = !{!5841, !5842}
!5841 = !DILocalVariable(name: "flags", arg: 1, scope: !5837, file: !203, line: 401, type: !213)
!5842 = !DILocalVariable(name: "caller", arg: 2, scope: !5837, file: !203, line: 401, type: !394)
!5843 = !DILocation(line: 401, column: 67, scope: !5837)
!5844 = !DILocation(line: 401, column: 88, scope: !5837)
!5845 = !DILocation(line: 407, column: 6, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5837, file: !203, line: 407, column: 6)
!5847 = !DILocation(line: 407, column: 6, scope: !5837)
!5848 = !DILocation(line: 413, column: 3, scope: !5846)
!5849 = !DILocation(line: 423, column: 38, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5837, file: !203, line: 423, column: 6)
!5851 = !DILocation(line: 423, column: 44, scope: !5850)
!5852 = !DILocation(line: 423, column: 6, scope: !5837)
!5853 = !DILocation(line: 424, column: 3, scope: !5850)
!5854 = !DILocation(line: 426, column: 3, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5837, file: !203, line: 425, column: 6)
!5856 = !DILocation(line: 429, column: 1, scope: !5837)
!5857 = !DISubprogram(name: "__kmalloc", scope: !203, file: !203, line: 488, type: !5140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5858 = !DISubprogram(name: "__compiletime_assert_117", scope: !203, file: !203, line: 478, type: !2660, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5859 = distinct !DISubprogram(name: "ptp_vclock_adjfine", scope: !3, file: !3, line: 43, type: !4796, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5860 = !{!5861, !5862, !5863, !5864, !5866}
!5861 = !DILocalVariable(name: "ptp", arg: 1, scope: !5859, file: !3, line: 43, type: !4770)
!5862 = !DILocalVariable(name: "scaled_ppm", arg: 2, scope: !5859, file: !3, line: 43, type: !380)
!5863 = !DILocalVariable(name: "vclock", scope: !5859, file: !3, line: 45, type: !225)
!5864 = !DILocalVariable(name: "__mptr", scope: !5865, file: !3, line: 45, type: !215)
!5865 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 45, column: 30)
!5866 = !DILocalVariable(name: "adj", scope: !5859, file: !3, line: 46, type: !726)
!5867 = !DILocation(line: 43, column: 54, scope: !5859)
!5868 = !DILocation(line: 43, column: 64, scope: !5859)
!5869 = !DILocation(line: 45, column: 2, scope: !5859)
!5870 = !DILocation(line: 45, column: 21, scope: !5859)
!5871 = !DILocation(line: 45, column: 30, scope: !5865)
!5872 = !DILocation(line: 45, column: 30, scope: !5859)
!5873 = !DILocation(line: 46, column: 2, scope: !5859)
!5874 = !DILocation(line: 46, column: 6, scope: !5859)
!5875 = !DILocation(line: 48, column: 13, scope: !5859)
!5876 = !DILocation(line: 48, column: 24, scope: !5859)
!5877 = !DILocation(line: 48, column: 6, scope: !5859)
!5878 = !DILocation(line: 49, column: 16, scope: !5859)
!5879 = !DILocation(line: 49, column: 8, scope: !5859)
!5880 = !DILocation(line: 49, column: 6, scope: !5859)
!5881 = !DILocation(line: 51, column: 32, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 51, column: 6)
!5883 = !DILocation(line: 51, column: 40, scope: !5882)
!5884 = !DILocation(line: 51, column: 6, scope: !5882)
!5885 = !DILocation(line: 51, column: 6, scope: !5859)
!5886 = !DILocation(line: 52, column: 3, scope: !5882)
!5887 = !DILocation(line: 53, column: 20, scope: !5859)
!5888 = !DILocation(line: 53, column: 28, scope: !5859)
!5889 = !DILocation(line: 53, column: 2, scope: !5859)
!5890 = !DILocation(line: 54, column: 41, scope: !5859)
!5891 = !DILocation(line: 54, column: 39, scope: !5859)
!5892 = !DILocation(line: 54, column: 20, scope: !5859)
!5893 = !DILocation(line: 54, column: 2, scope: !5859)
!5894 = !DILocation(line: 54, column: 10, scope: !5859)
!5895 = !DILocation(line: 54, column: 13, scope: !5859)
!5896 = !DILocation(line: 54, column: 18, scope: !5859)
!5897 = !DILocation(line: 55, column: 16, scope: !5859)
!5898 = !DILocation(line: 55, column: 24, scope: !5859)
!5899 = !DILocation(line: 55, column: 2, scope: !5859)
!5900 = !DILocation(line: 57, column: 2, scope: !5859)
!5901 = !DILocation(line: 58, column: 1, scope: !5859)
!5902 = distinct !DISubprogram(name: "ptp_vclock_adjtime", scope: !3, file: !3, line: 60, type: !4808, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5903)
!5903 = !{!5904, !5905, !5906, !5907}
!5904 = !DILocalVariable(name: "ptp", arg: 1, scope: !5902, file: !3, line: 60, type: !4770)
!5905 = !DILocalVariable(name: "delta", arg: 2, scope: !5902, file: !3, line: 60, type: !726)
!5906 = !DILocalVariable(name: "vclock", scope: !5902, file: !3, line: 62, type: !225)
!5907 = !DILocalVariable(name: "__mptr", scope: !5908, file: !3, line: 62, type: !215)
!5908 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 62, column: 30)
!5909 = !DILocation(line: 60, column: 54, scope: !5902)
!5910 = !DILocation(line: 60, column: 63, scope: !5902)
!5911 = !DILocation(line: 62, column: 2, scope: !5902)
!5912 = !DILocation(line: 62, column: 21, scope: !5902)
!5913 = !DILocation(line: 62, column: 30, scope: !5908)
!5914 = !DILocation(line: 62, column: 30, scope: !5902)
!5915 = !DILocation(line: 64, column: 32, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 64, column: 6)
!5917 = !DILocation(line: 64, column: 40, scope: !5916)
!5918 = !DILocation(line: 64, column: 6, scope: !5916)
!5919 = !DILocation(line: 64, column: 6, scope: !5902)
!5920 = !DILocation(line: 65, column: 3, scope: !5916)
!5921 = !DILocation(line: 66, column: 23, scope: !5902)
!5922 = !DILocation(line: 66, column: 31, scope: !5902)
!5923 = !DILocation(line: 66, column: 35, scope: !5902)
!5924 = !DILocation(line: 66, column: 2, scope: !5902)
!5925 = !DILocation(line: 67, column: 16, scope: !5902)
!5926 = !DILocation(line: 67, column: 24, scope: !5902)
!5927 = !DILocation(line: 67, column: 2, scope: !5902)
!5928 = !DILocation(line: 69, column: 2, scope: !5902)
!5929 = !DILocation(line: 70, column: 1, scope: !5902)
!5930 = distinct !DISubprogram(name: "ptp_vclock_settime", scope: !3, file: !3, line: 111, type: !4836, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5931)
!5931 = !{!5932, !5933, !5934, !5935, !5937}
!5932 = !DILocalVariable(name: "ptp", arg: 1, scope: !5930, file: !3, line: 111, type: !4770)
!5933 = !DILocalVariable(name: "ts", arg: 2, scope: !5930, file: !3, line: 112, type: !4289)
!5934 = !DILocalVariable(name: "vclock", scope: !5930, file: !3, line: 114, type: !225)
!5935 = !DILocalVariable(name: "__mptr", scope: !5936, file: !3, line: 114, type: !215)
!5936 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 114, column: 30)
!5937 = !DILocalVariable(name: "ns", scope: !5930, file: !3, line: 115, type: !496)
!5938 = !DILocation(line: 111, column: 54, scope: !5930)
!5939 = !DILocation(line: 112, column: 35, scope: !5930)
!5940 = !DILocation(line: 114, column: 2, scope: !5930)
!5941 = !DILocation(line: 114, column: 21, scope: !5930)
!5942 = !DILocation(line: 114, column: 30, scope: !5936)
!5943 = !DILocation(line: 114, column: 30, scope: !5930)
!5944 = !DILocation(line: 115, column: 2, scope: !5930)
!5945 = !DILocation(line: 115, column: 6, scope: !5930)
!5946 = !DILocation(line: 115, column: 28, scope: !5930)
!5947 = !DILocation(line: 115, column: 11, scope: !5930)
!5948 = !DILocation(line: 117, column: 32, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 117, column: 6)
!5950 = !DILocation(line: 117, column: 40, scope: !5949)
!5951 = !DILocation(line: 117, column: 6, scope: !5949)
!5952 = !DILocation(line: 117, column: 6, scope: !5930)
!5953 = !DILocation(line: 118, column: 3, scope: !5949)
!5954 = !DILocation(line: 119, column: 20, scope: !5930)
!5955 = !DILocation(line: 119, column: 28, scope: !5930)
!5956 = !DILocation(line: 119, column: 33, scope: !5930)
!5957 = !DILocation(line: 119, column: 41, scope: !5930)
!5958 = !DILocation(line: 119, column: 45, scope: !5930)
!5959 = !DILocation(line: 119, column: 2, scope: !5930)
!5960 = !DILocation(line: 120, column: 16, scope: !5930)
!5961 = !DILocation(line: 120, column: 24, scope: !5930)
!5962 = !DILocation(line: 120, column: 2, scope: !5930)
!5963 = !DILocation(line: 122, column: 2, scope: !5930)
!5964 = !DILocation(line: 123, column: 1, scope: !5930)
!5965 = distinct !DISubprogram(name: "ptp_vclock_refresh", scope: !3, file: !3, line: 147, type: !4852, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5966)
!5966 = !{!5967, !5968, !5969, !5971}
!5967 = !DILocalVariable(name: "ptp", arg: 1, scope: !5965, file: !3, line: 147, type: !4770)
!5968 = !DILocalVariable(name: "vclock", scope: !5965, file: !3, line: 149, type: !225)
!5969 = !DILocalVariable(name: "__mptr", scope: !5970, file: !3, line: 149, type: !215)
!5970 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 149, column: 30)
!5971 = !DILocalVariable(name: "ts", scope: !5965, file: !3, line: 150, type: !3432)
!5972 = !DILocation(line: 147, column: 55, scope: !5965)
!5973 = !DILocation(line: 149, column: 2, scope: !5965)
!5974 = !DILocation(line: 149, column: 21, scope: !5965)
!5975 = !DILocation(line: 149, column: 30, scope: !5970)
!5976 = !DILocation(line: 149, column: 30, scope: !5965)
!5977 = !DILocation(line: 150, column: 2, scope: !5965)
!5978 = !DILocation(line: 150, column: 20, scope: !5965)
!5979 = !DILocation(line: 152, column: 22, scope: !5965)
!5980 = !DILocation(line: 152, column: 30, scope: !5965)
!5981 = !DILocation(line: 152, column: 2, scope: !5965)
!5982 = !DILocation(line: 155, column: 1, scope: !5965)
!5983 = !DILocation(line: 154, column: 2, scope: !5965)
!5984 = distinct !DISubprogram(name: "div_s64", scope: !5985, file: !5985, line: 142, type: !5986, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5985 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!726, !726, !1475}
!5988 = !{!5989, !5990, !5991}
!5989 = !DILocalVariable(name: "dividend", arg: 1, scope: !5984, file: !5985, line: 142, type: !726)
!5990 = !DILocalVariable(name: "divisor", arg: 2, scope: !5984, file: !5985, line: 142, type: !1475)
!5991 = !DILocalVariable(name: "remainder", scope: !5984, file: !5985, line: 144, type: !1475)
!5992 = !DILocation(line: 142, column: 31, scope: !5984)
!5993 = !DILocation(line: 142, column: 45, scope: !5984)
!5994 = !DILocation(line: 144, column: 2, scope: !5984)
!5995 = !DILocation(line: 144, column: 6, scope: !5984)
!5996 = !DILocation(line: 145, column: 21, scope: !5984)
!5997 = !DILocation(line: 145, column: 31, scope: !5984)
!5998 = !DILocation(line: 145, column: 9, scope: !5984)
!5999 = !DILocation(line: 146, column: 1, scope: !5984)
!6000 = !DILocation(line: 145, column: 2, scope: !5984)
!6001 = !DISubprogram(name: "timecounter_read", scope: !4983, file: !4983, line: 111, type: !6002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!496, !5348}
!6004 = distinct !DISubprogram(name: "div_s64_rem", scope: !5985, file: !5985, line: 40, type: !6005, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{!726, !726, !1475, !1597}
!6007 = !{!6008, !6009, !6010}
!6008 = !DILocalVariable(name: "dividend", arg: 1, scope: !6004, file: !5985, line: 40, type: !726)
!6009 = !DILocalVariable(name: "divisor", arg: 2, scope: !6004, file: !5985, line: 40, type: !1475)
!6010 = !DILocalVariable(name: "remainder", arg: 3, scope: !6004, file: !5985, line: 40, type: !1597)
!6011 = !DILocation(line: 40, column: 35, scope: !6004)
!6012 = !DILocation(line: 40, column: 49, scope: !6004)
!6013 = !DILocation(line: 40, column: 63, scope: !6004)
!6014 = !DILocation(line: 42, column: 15, scope: !6004)
!6015 = !DILocation(line: 42, column: 26, scope: !6004)
!6016 = !DILocation(line: 42, column: 24, scope: !6004)
!6017 = !DILocation(line: 42, column: 3, scope: !6004)
!6018 = !DILocation(line: 42, column: 13, scope: !6004)
!6019 = !DILocation(line: 43, column: 9, scope: !6004)
!6020 = !DILocation(line: 43, column: 20, scope: !6004)
!6021 = !DILocation(line: 43, column: 18, scope: !6004)
!6022 = !DILocation(line: 43, column: 2, scope: !6004)
!6023 = distinct !DISubprogram(name: "timecounter_adjtime", scope: !4983, file: !4983, line: 84, type: !6024, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6026)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{null, !5348, !726}
!6026 = !{!6027, !6028}
!6027 = !DILocalVariable(name: "tc", arg: 1, scope: !6023, file: !4983, line: 84, type: !5348)
!6028 = !DILocalVariable(name: "delta", arg: 2, scope: !6023, file: !4983, line: 84, type: !726)
!6029 = !DILocation(line: 84, column: 60, scope: !6023)
!6030 = !DILocation(line: 84, column: 68, scope: !6023)
!6031 = !DILocation(line: 86, column: 14, scope: !6023)
!6032 = !DILocation(line: 86, column: 2, scope: !6023)
!6033 = !DILocation(line: 86, column: 6, scope: !6023)
!6034 = !DILocation(line: 86, column: 11, scope: !6023)
!6035 = !DILocation(line: 87, column: 1, scope: !6023)
!6036 = distinct !DISubprogram(name: "timespec64_to_ns", scope: !769, file: !769, line: 130, type: !6037, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6039)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!726, !4289}
!6039 = !{!6040}
!6040 = !DILocalVariable(name: "ts", arg: 1, scope: !6036, file: !769, line: 130, type: !4289)
!6041 = !DILocation(line: 130, column: 61, scope: !6036)
!6042 = !DILocation(line: 133, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6036, file: !769, line: 133, column: 6)
!6044 = !DILocation(line: 133, column: 10, scope: !6043)
!6045 = !DILocation(line: 133, column: 17, scope: !6043)
!6046 = !DILocation(line: 133, column: 6, scope: !6036)
!6047 = !DILocation(line: 134, column: 3, scope: !6043)
!6048 = !DILocation(line: 136, column: 6, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6036, file: !769, line: 136, column: 6)
!6050 = !DILocation(line: 136, column: 10, scope: !6049)
!6051 = !DILocation(line: 136, column: 17, scope: !6049)
!6052 = !DILocation(line: 136, column: 6, scope: !6036)
!6053 = !DILocation(line: 137, column: 3, scope: !6049)
!6054 = !DILocation(line: 139, column: 16, scope: !6036)
!6055 = !DILocation(line: 139, column: 20, scope: !6036)
!6056 = !DILocation(line: 139, column: 27, scope: !6036)
!6057 = !DILocation(line: 139, column: 45, scope: !6036)
!6058 = !DILocation(line: 139, column: 49, scope: !6036)
!6059 = !DILocation(line: 139, column: 43, scope: !6036)
!6060 = !DILocation(line: 139, column: 2, scope: !6036)
!6061 = !DILocation(line: 140, column: 1, scope: !6036)
!6062 = !DISubprogram(name: "ns_to_timespec64", scope: !769, file: !769, line: 148, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!3432, !726}
!6065 = distinct !DISubprogram(name: "ptp_vclock_read", scope: !3, file: !3, line: 167, type: !4987, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6066)
!6066 = !{!6067, !6068, !6069, !6071, !6072}
!6067 = !DILocalVariable(name: "cc", arg: 1, scope: !6065, file: !3, line: 167, type: !4989)
!6068 = !DILocalVariable(name: "vclock", scope: !6065, file: !3, line: 169, type: !225)
!6069 = !DILocalVariable(name: "__mptr", scope: !6070, file: !3, line: 169, type: !215)
!6070 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 169, column: 30)
!6071 = !DILocalVariable(name: "ptp", scope: !6065, file: !3, line: 170, type: !230)
!6072 = !DILocalVariable(name: "ts", scope: !6065, file: !3, line: 171, type: !3432)
!6073 = !DILocation(line: 167, column: 55, scope: !6065)
!6074 = !DILocation(line: 169, column: 2, scope: !6065)
!6075 = !DILocation(line: 169, column: 21, scope: !6065)
!6076 = !DILocation(line: 169, column: 30, scope: !6070)
!6077 = !DILocation(line: 169, column: 30, scope: !6065)
!6078 = !DILocation(line: 170, column: 2, scope: !6065)
!6079 = !DILocation(line: 170, column: 20, scope: !6065)
!6080 = !DILocation(line: 170, column: 26, scope: !6065)
!6081 = !DILocation(line: 170, column: 34, scope: !6065)
!6082 = !DILocation(line: 171, column: 2, scope: !6065)
!6083 = !DILocation(line: 171, column: 20, scope: !6065)
!6084 = !DILocation(line: 173, column: 2, scope: !6065)
!6085 = !DILocation(line: 173, column: 7, scope: !6065)
!6086 = !DILocation(line: 173, column: 13, scope: !6065)
!6087 = !DILocation(line: 173, column: 25, scope: !6065)
!6088 = !DILocation(line: 173, column: 30, scope: !6065)
!6089 = !DILocation(line: 175, column: 9, scope: !6065)
!6090 = !DILocation(line: 176, column: 1, scope: !6065)
!6091 = !DILocation(line: 175, column: 2, scope: !6065)
!6092 = distinct !DISubprogram(name: "spin_lock", scope: !6093, file: !6093, line: 349, type: !6094, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6093 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6094 = !DISubroutineType(types: !6095)
!6095 = !{null, !2000}
!6096 = !{!6097}
!6097 = !DILocalVariable(name: "lock", arg: 1, scope: !6092, file: !6093, line: 349, type: !2000)
!6098 = !DILocation(line: 349, column: 51, scope: !6092)
!6099 = !DILocation(line: 351, column: 2, scope: !6092)
!6100 = !DILocation(line: 352, column: 1, scope: !6092)
!6101 = distinct !DISubprogram(name: "hlist_add_head_rcu", scope: !6102, file: !6102, line: 584, type: !6103, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6102 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!6103 = !DISubroutineType(types: !6104)
!6104 = !{null, !219, !2178}
!6105 = !{!6106, !6107, !6108, !6109}
!6106 = !DILocalVariable(name: "n", arg: 1, scope: !6101, file: !6102, line: 584, type: !219)
!6107 = !DILocalVariable(name: "h", arg: 2, scope: !6101, file: !6102, line: 585, type: !2178)
!6108 = !DILocalVariable(name: "first", scope: !6101, file: !6102, line: 587, type: !219)
!6109 = !DILocalVariable(name: "_r_a_p__v", scope: !6110, file: !6102, line: 591, type: !5005)
!6110 = distinct !DILexicalBlock(scope: !6101, file: !6102, line: 591, column: 2)
!6111 = !DILocation(line: 584, column: 58, scope: !6101)
!6112 = !DILocation(line: 585, column: 25, scope: !6101)
!6113 = !DILocation(line: 587, column: 2, scope: !6101)
!6114 = !DILocation(line: 587, column: 21, scope: !6101)
!6115 = !DILocation(line: 587, column: 29, scope: !6101)
!6116 = !DILocation(line: 587, column: 32, scope: !6101)
!6117 = !DILocation(line: 589, column: 12, scope: !6101)
!6118 = !DILocation(line: 589, column: 2, scope: !6101)
!6119 = !DILocation(line: 589, column: 5, scope: !6101)
!6120 = !DILocation(line: 589, column: 10, scope: !6101)
!6121 = !DILocation(line: 590, column: 2, scope: !6101)
!6122 = !DILocation(line: 590, column: 2, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6101, file: !6102, line: 590, column: 2)
!6124 = !DILocation(line: 590, column: 2, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6123, file: !6102, line: 590, column: 2)
!6126 = !DILocation(line: 590, column: 2, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6123, file: !6102, line: 590, column: 2)
!6128 = !DILocation(line: 591, column: 2, scope: !6101)
!6129 = !DILocation(line: 591, column: 2, scope: !6110)
!6130 = !DILocation(line: 591, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6110, file: !6102, line: 591, column: 2)
!6132 = !DILocation(line: 591, column: 2, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6131, file: !6102, line: 591, column: 2)
!6134 = !DILocation(line: 591, column: 2, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6133, file: !6102, line: 591, column: 2)
!6136 = !DILocation(line: 591, column: 2, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6133, file: !6102, line: 591, column: 2)
!6138 = !DILocation(line: 591, column: 2, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6131, file: !6102, line: 591, column: 2)
!6140 = !DILocation(line: 591, column: 2, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6139, file: !6102, line: 591, column: 2)
!6142 = !DILocation(line: 591, column: 2, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6139, file: !6102, line: 591, column: 2)
!6144 = !DILocation(line: 591, column: 2, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6143, file: !6102, line: 591, column: 2)
!6146 = !{i64 2151549137}
!6147 = !DILocation(line: 591, column: 2, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6143, file: !6102, line: 591, column: 2)
!6149 = !DILocation(line: 591, column: 2, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6148, file: !6102, line: 591, column: 2)
!6151 = !DILocation(line: 591, column: 2, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6148, file: !6102, line: 591, column: 2)
!6153 = !DILocation(line: 592, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6101, file: !6102, line: 592, column: 6)
!6155 = !DILocation(line: 592, column: 6, scope: !6101)
!6156 = !DILocation(line: 593, column: 3, scope: !6154)
!6157 = !DILocation(line: 593, column: 3, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6154, file: !6102, line: 593, column: 3)
!6159 = !DILocation(line: 593, column: 3, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6158, file: !6102, line: 593, column: 3)
!6161 = !DILocation(line: 593, column: 3, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6158, file: !6102, line: 593, column: 3)
!6163 = !DILocation(line: 594, column: 1, scope: !6101)
!6164 = distinct !DISubprogram(name: "spin_unlock", scope: !6093, file: !6093, line: 389, type: !6094, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6165)
!6165 = !{!6166}
!6166 = !DILocalVariable(name: "lock", arg: 1, scope: !6164, file: !6093, line: 389, type: !2000)
!6167 = !DILocation(line: 389, column: 53, scope: !6164)
!6168 = !DILocation(line: 391, column: 2, scope: !6164)
!6169 = !DILocation(line: 392, column: 1, scope: !6164)
!6170 = !DISubprogram(name: "_raw_spin_lock", scope: !6171, file: !6171, line: 22, type: !6172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6171 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6172 = !DISubroutineType(types: !6173)
!6173 = !{null, !6174}
!6174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!6175 = !DISubprogram(name: "_raw_spin_unlock", scope: !6171, file: !6171, line: 39, type: !6172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6176 = distinct !DISubprogram(name: "hlist_del_init_rcu", scope: !6102, file: !6102, line: 181, type: !5311, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6177)
!6177 = !{!6178}
!6178 = !DILocalVariable(name: "n", arg: 1, scope: !6176, file: !6102, line: 181, type: !219)
!6179 = !DILocation(line: 181, column: 58, scope: !6176)
!6180 = !DILocation(line: 183, column: 22, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6176, file: !6102, line: 183, column: 6)
!6182 = !DILocation(line: 183, column: 7, scope: !6181)
!6183 = !DILocation(line: 183, column: 6, scope: !6176)
!6184 = !DILocation(line: 184, column: 15, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6181, file: !6102, line: 183, column: 26)
!6186 = !DILocation(line: 184, column: 3, scope: !6185)
!6187 = !DILocation(line: 185, column: 3, scope: !6185)
!6188 = !DILocation(line: 185, column: 3, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6185, file: !6102, line: 185, column: 3)
!6190 = !DILocation(line: 185, column: 3, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6189, file: !6102, line: 185, column: 3)
!6192 = !DILocation(line: 185, column: 3, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !6102, line: 185, column: 3)
!6194 = !DILocation(line: 186, column: 2, scope: !6185)
!6195 = !DILocation(line: 187, column: 1, scope: !6176)
!6196 = !DISubprogram(name: "synchronize_rcu", scope: !5610, file: !5610, line: 45, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6197 = distinct !DISubprogram(name: "hlist_unhashed", scope: !5310, file: !5310, line: 948, type: !6198, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!109, !6200}
!6200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6201, size: 64)
!6201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!6202 = !{!6203}
!6203 = !DILocalVariable(name: "h", arg: 1, scope: !6197, file: !5310, line: 948, type: !6200)
!6204 = !DILocation(line: 948, column: 59, scope: !6197)
!6205 = !DILocation(line: 950, column: 10, scope: !6197)
!6206 = !DILocation(line: 950, column: 13, scope: !6197)
!6207 = !DILocation(line: 950, column: 9, scope: !6197)
!6208 = !DILocation(line: 950, column: 2, scope: !6197)
!6209 = distinct !DISubprogram(name: "__hlist_del", scope: !5310, file: !5310, line: 975, type: !5311, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6210 = !{!6211, !6212, !6213}
!6211 = !DILocalVariable(name: "n", arg: 1, scope: !6209, file: !5310, line: 975, type: !219)
!6212 = !DILocalVariable(name: "next", scope: !6209, file: !5310, line: 977, type: !219)
!6213 = !DILocalVariable(name: "pprev", scope: !6209, file: !5310, line: 978, type: !224)
!6214 = !DILocation(line: 975, column: 51, scope: !6209)
!6215 = !DILocation(line: 977, column: 2, scope: !6209)
!6216 = !DILocation(line: 977, column: 21, scope: !6209)
!6217 = !DILocation(line: 977, column: 28, scope: !6209)
!6218 = !DILocation(line: 977, column: 31, scope: !6209)
!6219 = !DILocation(line: 978, column: 2, scope: !6209)
!6220 = !DILocation(line: 978, column: 22, scope: !6209)
!6221 = !DILocation(line: 978, column: 30, scope: !6209)
!6222 = !DILocation(line: 978, column: 33, scope: !6209)
!6223 = !DILocation(line: 980, column: 2, scope: !6209)
!6224 = !DILocation(line: 980, column: 2, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6209, file: !5310, line: 980, column: 2)
!6226 = !DILocation(line: 980, column: 2, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6225, file: !5310, line: 980, column: 2)
!6228 = !DILocation(line: 980, column: 2, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6225, file: !5310, line: 980, column: 2)
!6230 = !DILocation(line: 981, column: 6, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6209, file: !5310, line: 981, column: 6)
!6232 = !DILocation(line: 981, column: 6, scope: !6209)
!6233 = !DILocation(line: 982, column: 3, scope: !6231)
!6234 = !DILocation(line: 982, column: 3, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6231, file: !5310, line: 982, column: 3)
!6236 = !DILocation(line: 982, column: 3, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6235, file: !5310, line: 982, column: 3)
!6238 = !DILocation(line: 982, column: 3, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6235, file: !5310, line: 982, column: 3)
!6240 = !DILocation(line: 983, column: 1, scope: !6209)
!6241 = !DISubprogram(name: "class_find_device", scope: !4717, file: !4717, line: 99, type: !6242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!4316, !4714, !4336, !2270, !6244}
!6244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6245, size: 64)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!109, !4316, !2270}
!6247 = !DISubprogram(name: "__rcu_read_lock", scope: !5610, file: !5610, line: 74, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = !DISubprogram(name: "__rcu_read_unlock", scope: !5610, file: !5610, line: 75, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
