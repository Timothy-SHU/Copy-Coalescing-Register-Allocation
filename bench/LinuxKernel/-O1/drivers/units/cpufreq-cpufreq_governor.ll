; ModuleID = 'drivers/cpufreq/cpufreq_governor.c'
source_filename = "drivers/cpufreq/cpufreq_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sampling_rate_store: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sampling_rate_store ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gov_update_cpu_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad gov_update_cpu_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dbs_update: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dbs_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_dbs_governor_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_dbs_governor_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_dbs_governor_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_dbs_governor_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_dbs_governor_start: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_dbs_governor_start ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_dbs_governor_stop: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_dbs_governor_stop ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_dbs_governor_limits: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_dbs_governor_limits ; .previous"

%struct.cpu_dbs_info = type { i64, i64, i64, i32, %struct.update_util_data, ptr }
%struct.update_util_data = type { ptr }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.dbs_data = type { %struct.gov_attr_set, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i64] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_sampling_rate_store263 = internal global ptr @sampling_rate_store, section ".discard.addressable", align 8, !dbg !7
@cpu_dbs = internal global %struct.cpu_dbs_info zeroinitializer, section ".data..percpu", align 8, !dbg !2887
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__UNIQUE_ID___addressable_gov_update_cpu_data264 = internal global ptr @gov_update_cpu_data, section ".discard.addressable", align 8, !dbg !2861
@__UNIQUE_ID___addressable_dbs_update265 = internal global ptr @dbs_update, section ".discard.addressable", align 8, !dbg !2863
@gov_dbs_data_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gov_dbs_data_mutex, i64 16), ptr getelementptr (i8, ptr @gov_dbs_data_mutex, i64 16) } }, align 8, !dbg !2921
@.str.1 = private unnamed_addr constant [35 x i8] c"drivers/cpufreq/cpufreq_governor.c\00", align 1, !dbg !2865
@governor_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !2870
@.str.3 = private unnamed_addr constant [76 x i8] c"\013cpufreq_governor: initialization failed (dbs_data kobject init error %d)\0A\00", align 1, !dbg !2872
@__UNIQUE_ID___addressable_cpufreq_dbs_governor_init270 = internal global ptr @cpufreq_dbs_governor_init, section ".discard.addressable", align 8, !dbg !2877
@__UNIQUE_ID___addressable_cpufreq_dbs_governor_exit271 = internal global ptr @cpufreq_dbs_governor_exit, section ".discard.addressable", align 8, !dbg !2879
@__UNIQUE_ID___addressable_cpufreq_dbs_governor_start272 = internal global ptr @cpufreq_dbs_governor_start, section ".discard.addressable", align 8, !dbg !2881
@__UNIQUE_ID___addressable_cpufreq_dbs_governor_stop273 = internal global ptr @cpufreq_dbs_governor_stop, section ".discard.addressable", align 8, !dbg !2883
@__UNIQUE_ID___addressable_cpufreq_dbs_governor_limits274 = internal global ptr @cpufreq_dbs_governor_limits, section ".discard.addressable", align 8, !dbg !2885
@alloc_policy_dbs_info.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2889
@.str.4 = private unnamed_addr constant [26 x i8] c"&policy_dbs->update_mutex\00", align 1, !dbg !2909
@alloc_policy_dbs_info.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2914
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !2916
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@system_wq = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2923
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_sampling_rate_store263, ptr @__UNIQUE_ID___addressable_gov_update_cpu_data264, ptr @__UNIQUE_ID___addressable_dbs_update265, ptr @__UNIQUE_ID___addressable_cpufreq_dbs_governor_init270, ptr @__UNIQUE_ID___addressable_cpufreq_dbs_governor_exit271, ptr @__UNIQUE_ID___addressable_cpufreq_dbs_governor_start272, ptr @__UNIQUE_ID___addressable_cpufreq_dbs_governor_stop273, ptr @__UNIQUE_ID___addressable_cpufreq_dbs_governor_limits274], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @sampling_rate_store(ptr noundef %attr_set, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !2937 {
entry:
  %retval = alloca i64, align 8
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dbs_data = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %sampling_interval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !2941, metadata !DIExpression()), !dbg !2954
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2942, metadata !DIExpression()), !dbg !2955
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2943, metadata !DIExpression()), !dbg !2956
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #17, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !2944, metadata !DIExpression()), !dbg !2958
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !2959
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !2960
  store ptr %call, ptr %dbs_data, align 8, !dbg !2958
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !2961
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !2945, metadata !DIExpression()), !dbg !2962
  call void @llvm.lifetime.start.p0(i64 4, ptr %sampling_interval) #17, !dbg !2963
  call void @llvm.dbg.declare(metadata ptr %sampling_interval, metadata !2946, metadata !DIExpression()), !dbg !2964
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2965
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2947, metadata !DIExpression()), !dbg !2966
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2967
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str, ptr noundef %sampling_interval) #18, !dbg !2968
  store i32 %call1, ptr %ret, align 4, !dbg !2969
  %2 = load i32, ptr %ret, align 4, !dbg !2970
  %cmp = icmp ne i32 %2, 1, !dbg !2972
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2973

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %sampling_interval, align 4, !dbg !2974
  %conv = zext i32 %3 to i64, !dbg !2974
  %cmp2 = icmp slt i64 %conv, 2000, !dbg !2975
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2976

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !2977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2977

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %sampling_interval, align 4, !dbg !2978
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !2979
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 4, !dbg !2980
  store i32 %4, ptr %sampling_rate, align 4, !dbg !2981
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2982
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2948, metadata !DIExpression()), !dbg !2982
  %6 = load ptr, ptr %attr_set.addr, align 8, !dbg !2982
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %6, i32 0, i32 1, !dbg !2982
  %next = getelementptr inbounds %struct.list_head, ptr %policy_list, i32 0, i32 0, !dbg !2982
  %7 = load ptr, ptr %next, align 8, !dbg !2982
  store ptr %7, ptr %__mptr, align 8, !dbg !2982
  %8 = load ptr, ptr %__mptr, align 8, !dbg !2982
  %add.ptr = getelementptr i8, ptr %8, i64 -136, !dbg !2982
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2983
  %9 = load ptr, ptr %tmp, align 8, !dbg !2982
  store ptr %9, ptr %policy_dbs, align 8, !dbg !2983
  br label %for.cond, !dbg !2983

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %policy_dbs, align 8, !dbg !2984
  %list = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 8, !dbg !2984
  %11 = load ptr, ptr %attr_set.addr, align 8, !dbg !2984
  %policy_list4 = getelementptr inbounds %struct.gov_attr_set, ptr %11, i32 0, i32 1, !dbg !2984
  %cmp5 = icmp eq ptr %list, %policy_list4, !dbg !2984
  %lnot = xor i1 %cmp5, true, !dbg !2984
  br i1 %lnot, label %for.body, label %for.end, !dbg !2983

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %policy_dbs, align 8, !dbg !2985
  %update_mutex = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 1, !dbg !2987
  call void @mutex_lock(ptr noundef %update_mutex) #18, !dbg !2988
  %13 = load ptr, ptr %policy_dbs, align 8, !dbg !2989
  call void @gov_update_sample_delay(ptr noundef %13, i32 noundef 0) #18, !dbg !2990
  %14 = load ptr, ptr %policy_dbs, align 8, !dbg !2991
  %update_mutex7 = getelementptr inbounds %struct.policy_dbs_info, ptr %14, i32 0, i32 1, !dbg !2992
  call void @mutex_unlock(ptr noundef %update_mutex7) #18, !dbg !2993
  br label %for.inc, !dbg !2994

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #17, !dbg !2995
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2951, metadata !DIExpression()), !dbg !2995
  %15 = load ptr, ptr %policy_dbs, align 8, !dbg !2995
  %list9 = getelementptr inbounds %struct.policy_dbs_info, ptr %15, i32 0, i32 8, !dbg !2995
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !2995
  %16 = load ptr, ptr %next10, align 8, !dbg !2995
  store ptr %16, ptr %__mptr8, align 8, !dbg !2995
  %17 = load ptr, ptr %__mptr8, align 8, !dbg !2995
  %add.ptr12 = getelementptr i8, ptr %17, i64 -136, !dbg !2995
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #17, !dbg !2984
  %18 = load ptr, ptr %tmp11, align 8, !dbg !2995
  store ptr %18, ptr %policy_dbs, align 8, !dbg !2984
  br label %for.cond, !dbg !2984, !llvm.loop !2996

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %count.addr, align 8, !dbg !3000
  store i64 %19, ptr %retval, align 8, !dbg !3001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3001

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !3002
  call void @llvm.lifetime.end.p0(i64 4, ptr %sampling_interval) #17, !dbg !3002
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3002
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #17, !dbg !3002
  %20 = load i64, ptr %retval, align 8, !dbg !3002
  ret i64 %20, !dbg !3002
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_dbs_data(ptr noundef %attr_set) #3 align 16 !dbg !3003 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3008, metadata !DIExpression()), !dbg !3011
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !3011
  store ptr %0, ptr %__mptr, align 8, !dbg !3011
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3011
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3011
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !3012
  %2 = load ptr, ptr %tmp, align 8, !dbg !3011
  ret ptr %2, !dbg !3013
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3014 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3018 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gov_update_sample_delay(ptr noundef %policy_dbs, i32 noundef %delay_us) #3 align 16 !dbg !3022 {
entry:
  %policy_dbs.addr = alloca ptr, align 8
  %delay_us.addr = alloca i32, align 4
  store ptr %policy_dbs, ptr %policy_dbs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy_dbs.addr, metadata !3026, metadata !DIExpression()), !dbg !3028
  store i32 %delay_us, ptr %delay_us.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %delay_us.addr, metadata !3027, metadata !DIExpression()), !dbg !3029
  %0 = load i32, ptr %delay_us.addr, align 4, !dbg !3030
  %conv = zext i32 %0 to i64, !dbg !3030
  %mul = mul i64 %conv, 1000, !dbg !3031
  %1 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3032
  %sample_delay_ns = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 3, !dbg !3033
  store i64 %mul, ptr %sample_delay_ns, align 8, !dbg !3034
  ret void, !dbg !3035
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3036 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gov_update_cpu_data(ptr noundef %dbs_data) #0 align 16 !dbg !3037 {
entry:
  %dbs_data.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %j = alloca i32, align 4
  %j_cdbs = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp10 = alloca ptr, align 8
  %__vpp_verify13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__ptr17 = alloca i64, align 8
  %tmp18 = alloca ptr, align 8
  %__mptr24 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %dbs_data, ptr %dbs_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbs_data.addr, metadata !3039, metadata !DIExpression()), !dbg !3064
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3065
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3040, metadata !DIExpression()), !dbg !3066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !3067
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3041, metadata !DIExpression()), !dbg !3067
  %0 = load ptr, ptr %dbs_data.addr, align 8, !dbg !3067
  %attr_set = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 0, !dbg !3067
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1, !dbg !3067
  %next = getelementptr inbounds %struct.list_head, ptr %policy_list, i32 0, i32 0, !dbg !3067
  %1 = load ptr, ptr %next, align 8, !dbg !3067
  store ptr %1, ptr %__mptr, align 8, !dbg !3067
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3067
  %add.ptr = getelementptr i8, ptr %2, i64 -136, !dbg !3067
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !3068
  %3 = load ptr, ptr %tmp, align 8, !dbg !3067
  store ptr %3, ptr %policy_dbs, align 8, !dbg !3068
  br label %for.cond, !dbg !3068

for.cond:                                         ; preds = %for.inc23, %entry
  %4 = load ptr, ptr %policy_dbs, align 8, !dbg !3069
  %list = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 8, !dbg !3069
  %5 = load ptr, ptr %dbs_data.addr, align 8, !dbg !3069
  %attr_set1 = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 0, !dbg !3069
  %policy_list2 = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set1, i32 0, i32 1, !dbg !3069
  %cmp = icmp eq ptr %list, %policy_list2, !dbg !3069
  %lnot = xor i1 %cmp, true, !dbg !3069
  br i1 %lnot, label %for.body, label %for.end29, !dbg !3068

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3070
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3044, metadata !DIExpression()), !dbg !3071
  store i32 0, ptr %j, align 4, !dbg !3072
  br label %for.cond3, !dbg !3072

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load ptr, ptr %policy_dbs, align 8, !dbg !3073
  %policy = getelementptr inbounds %struct.policy_dbs_info, ptr %6, i32 0, i32 0, !dbg !3073
  %7 = load ptr, ptr %policy, align 8, !dbg !3073
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %7, i32 0, i32 0, !dbg !3073
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3073
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3073
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3073
  %8 = load i32, ptr %j, align 4, !dbg !3073
  %conv = zext i32 %8 to i64, !dbg !3073
  %call = call i64 @find_next_bit(ptr noundef %arraydecay4, i64 noundef 64, i64 noundef %conv) #18, !dbg !3073
  %conv5 = trunc i64 %call to i32, !dbg !3073
  store i32 %conv5, ptr %j, align 4, !dbg !3073
  %9 = load i32, ptr %j, align 4, !dbg !3073
  %cmp6 = icmp ult i32 %9, 64, !dbg !3073
  br i1 %cmp6, label %for.body8, label %for.end, !dbg !3072

for.body8:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_cdbs) #17, !dbg !3074
  call void @llvm.dbg.declare(metadata ptr %j_cdbs, metadata !3047, metadata !DIExpression()), !dbg !3075
  br label %do.body, !dbg !3076

do.body:                                          ; preds = %for.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3051, metadata !DIExpression()), !dbg !3077
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3077
  %10 = load ptr, ptr %__vpp_verify, align 8, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3076
  br label %do.cond, !dbg !3077

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3077

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3078
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3054, metadata !DIExpression()), !dbg !3078
  store i64 ptrtoint (ptr @cpu_dbs to i64), ptr %__ptr, align 8, !dbg !3078
  %11 = load i64, ptr %__ptr, align 8, !dbg !3078
  %12 = load i32, ptr %j, align 4, !dbg !3078
  %idxprom = zext i32 %12 to i64, !dbg !3078
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3078
  %13 = load i64, ptr %arrayidx, align 8, !dbg !3078
  %add = add i64 %11, %13, !dbg !3078
  %14 = inttoptr i64 %add to ptr, !dbg !3078
  store ptr %14, ptr %tmp10, align 8, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3076
  %15 = load ptr, ptr %tmp10, align 8, !dbg !3078
  store ptr %15, ptr %tmp9, align 8, !dbg !3077
  %16 = load ptr, ptr %tmp9, align 8, !dbg !3076
  store ptr %16, ptr %j_cdbs, align 8, !dbg !3075
  %17 = load i32, ptr %j, align 4, !dbg !3079
  %18 = load ptr, ptr %j_cdbs, align 8, !dbg !3080
  %prev_update_time = getelementptr inbounds %struct.cpu_dbs_info, ptr %18, i32 0, i32 1, !dbg !3081
  %19 = load ptr, ptr %dbs_data.addr, align 8, !dbg !3082
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %19, i32 0, i32 7, !dbg !3083
  %20 = load i32, ptr %io_is_busy, align 8, !dbg !3083
  %call11 = call i64 @get_cpu_idle_time(i32 noundef %17, ptr noundef %prev_update_time, i32 noundef %20) #18, !dbg !3084
  %21 = load ptr, ptr %j_cdbs, align 8, !dbg !3085
  %prev_cpu_idle = getelementptr inbounds %struct.cpu_dbs_info, ptr %21, i32 0, i32 0, !dbg !3086
  store i64 %call11, ptr %prev_cpu_idle, align 8, !dbg !3087
  %22 = load ptr, ptr %dbs_data.addr, align 8, !dbg !3088
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %22, i32 0, i32 3, !dbg !3089
  %23 = load i32, ptr %ignore_nice_load, align 8, !dbg !3089
  %tobool = icmp ne i32 %23, 0, !dbg !3088
  br i1 %tobool, label %if.then, label %if.end, !dbg !3090

if.then:                                          ; preds = %do.end
  br label %do.body12, !dbg !3091

do.body12:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #17, !dbg !3092
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !3056, metadata !DIExpression()), !dbg !3092
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !3092
  %24 = load ptr, ptr %__vpp_verify13, align 8, !dbg !3092
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #17, !dbg !3091
  br label %do.cond14, !dbg !3092

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !3092

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr17) #17, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %__ptr17, metadata !3060, metadata !DIExpression()), !dbg !3093
  store i64 ptrtoint (ptr @kernel_cpustat to i64), ptr %__ptr17, align 8, !dbg !3093
  %25 = load i64, ptr %__ptr17, align 8, !dbg !3093
  %26 = load i32, ptr %j, align 4, !dbg !3093
  %idxprom19 = zext i32 %26 to i64, !dbg !3093
  %arrayidx20 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom19, !dbg !3093
  %27 = load i64, ptr %arrayidx20, align 8, !dbg !3093
  %add21 = add i64 %25, %27, !dbg !3093
  %28 = inttoptr i64 %add21 to ptr, !dbg !3093
  store ptr %28, ptr %tmp18, align 8, !dbg !3093
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr17) #17, !dbg !3091
  %29 = load ptr, ptr %tmp18, align 8, !dbg !3093
  store ptr %29, ptr %tmp16, align 8, !dbg !3092
  %30 = load ptr, ptr %tmp16, align 8, !dbg !3091
  %31 = load i32, ptr %j, align 4, !dbg !3094
  %call22 = call i64 @kcpustat_field(ptr noundef %30, i32 noundef 1, i32 noundef %31) #18, !dbg !3095
  %32 = load ptr, ptr %j_cdbs, align 8, !dbg !3096
  %prev_cpu_nice = getelementptr inbounds %struct.cpu_dbs_info, ptr %32, i32 0, i32 2, !dbg !3097
  store i64 %call22, ptr %prev_cpu_nice, align 8, !dbg !3098
  br label %if.end, !dbg !3096

if.end:                                           ; preds = %do.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_cdbs) #17, !dbg !3099
  br label %for.inc, !dbg !3100

for.inc:                                          ; preds = %if.end
  %33 = load i32, ptr %j, align 4, !dbg !3073
  %inc = add i32 %33, 1, !dbg !3073
  store i32 %inc, ptr %j, align 4, !dbg !3073
  br label %for.cond3, !dbg !3073, !llvm.loop !3101

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3103
  br label %for.inc23, !dbg !3104

for.inc23:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #17, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !3062, metadata !DIExpression()), !dbg !3105
  %34 = load ptr, ptr %policy_dbs, align 8, !dbg !3105
  %list25 = getelementptr inbounds %struct.policy_dbs_info, ptr %34, i32 0, i32 8, !dbg !3105
  %next26 = getelementptr inbounds %struct.list_head, ptr %list25, i32 0, i32 0, !dbg !3105
  %35 = load ptr, ptr %next26, align 8, !dbg !3105
  store ptr %35, ptr %__mptr24, align 8, !dbg !3105
  %36 = load ptr, ptr %__mptr24, align 8, !dbg !3105
  %add.ptr28 = getelementptr i8, ptr %36, i64 -136, !dbg !3105
  store ptr %add.ptr28, ptr %tmp27, align 8, !dbg !3105
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #17, !dbg !3069
  %37 = load ptr, ptr %tmp27, align 8, !dbg !3105
  store ptr %37, ptr %policy_dbs, align 8, !dbg !3069
  br label %for.cond, !dbg !3069, !llvm.loop !3106

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3108
  ret void, !dbg !3108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !3109 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3116, metadata !DIExpression()), !dbg !3122
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3117, metadata !DIExpression()), !dbg !3123
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3118, metadata !DIExpression()), !dbg !3124
  %0 = load i64, ptr %size.addr, align 8, !dbg !3125
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3125
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3125

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3125
  %cmp = icmp ule i64 %2, 64, !dbg !3125
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3125

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3125
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3125
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3126

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !3127
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3119, metadata !DIExpression()), !dbg !3128
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3129
  %5 = load i64, ptr %size.addr, align 8, !dbg !3129
  %cmp3 = icmp uge i64 %4, %5, !dbg !3129
  %lnot = xor i1 %cmp3, true, !dbg !3129
  %lnot4 = xor i1 %lnot, true, !dbg !3129
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3129
  %conv = sext i32 %lnot.ext to i64, !dbg !3129
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3129
  %tobool = icmp ne i64 %expval, 0, !dbg !3129
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3131

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3132
  store i64 %6, ptr %retval, align 8, !dbg !3133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3133

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3134
  %8 = load i64, ptr %7, align 8, !dbg !3135
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3136
  %shl = shl i64 1, %9, !dbg !3136
  %sub = sub i64 -1, %shl, !dbg !3136
  %add = add i64 %sub, 1, !dbg !3136
  %10 = load i64, ptr %size.addr, align 8, !dbg !3136
  %sub6 = sub i64 %10, 1, !dbg !3136
  %sub7 = sub i64 63, %sub6, !dbg !3136
  %shr = lshr i64 -1, %sub7, !dbg !3136
  %and = and i64 %add, %shr, !dbg !3136
  %add8 = add i64 0, %and, !dbg !3136
  %and9 = and i64 %8, %add8, !dbg !3137
  store i64 %and9, ptr %val, align 8, !dbg !3138
  %11 = load i64, ptr %val, align 8, !dbg !3139
  %tobool10 = icmp ne i64 %11, 0, !dbg !3139
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3139

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3140
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3140
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3140

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3140
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3140
  %cast = trunc i64 %15 to i32, !dbg !3140
  %conv12 = sext i32 %cast to i64, !dbg !3140
  br label %cond.end, !dbg !3140

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3140
  %call = call i64 @variable__ffs(i64 noundef %16) #18, !dbg !3140
  br label %cond.end, !dbg !3140

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3140
  br label %cond.end14, !dbg !3139

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3141
  br label %cond.end14, !dbg !3139

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3139
  store i64 %cond15, ptr %retval, align 8, !dbg !3142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3142

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !3143
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3144
  %19 = load i64, ptr %size.addr, align 8, !dbg !3145
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3146
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #18, !dbg !3147
  store i64 %call17, ptr %retval, align 8, !dbg !3148
  br label %return, !dbg !3148

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3149
  ret i64 %21, !dbg !3149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3150 dso_local i64 @get_cpu_idle_time(i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kcpustat_field(ptr noundef %kcpustat, i32 noundef %usage, i32 noundef %cpu) #3 align 16 !dbg !3154 {
entry:
  %kcpustat.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  store ptr %kcpustat, ptr %kcpustat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcpustat.addr, metadata !3158, metadata !DIExpression()), !dbg !3161
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !3159, metadata !DIExpression()), !dbg !3162
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3160, metadata !DIExpression()), !dbg !3163
  %0 = load ptr, ptr %kcpustat.addr, align 8, !dbg !3164
  %cpustat = getelementptr inbounds %struct.kernel_cpustat, ptr %0, i32 0, i32 0, !dbg !3165
  %1 = load i32, ptr %usage.addr, align 4, !dbg !3166
  %idxprom = zext i32 %1 to i64, !dbg !3164
  %arrayidx = getelementptr [10 x i64], ptr %cpustat, i64 0, i64 %idxprom, !dbg !3164
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3164
  ret i64 %2, !dbg !3167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dbs_update(ptr noundef %policy) #0 align 16 !dbg !3168 {
entry:
  %policy.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %ignore_nice = alloca i32, align 4
  %max_load = alloca i32, align 4
  %idle_periods = alloca i32, align 4
  %sampling_rate = alloca i32, align 4
  %io_busy = alloca i32, align 4
  %j = alloca i32, align 4
  %j_cdbs = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  %update_time = alloca i64, align 8
  %cur_idle_time = alloca i64, align 8
  %idle_time = alloca i32, align 4
  %time_elapsed = alloca i32, align 4
  %load = alloca i32, align 4
  %cur_nice = alloca i64, align 8
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ptr18 = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  %periods = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3170, metadata !DIExpression()), !dbg !3204
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3205
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3171, metadata !DIExpression()), !dbg !3206
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3207
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !3208
  %1 = load ptr, ptr %governor_data, align 8, !dbg !3208
  store ptr %1, ptr %policy_dbs, align 8, !dbg !3206
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #17, !dbg !3209
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !3172, metadata !DIExpression()), !dbg !3210
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !3211
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %2, i32 0, i32 7, !dbg !3212
  %3 = load ptr, ptr %dbs_data1, align 8, !dbg !3212
  store ptr %3, ptr %dbs_data, align 8, !dbg !3210
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignore_nice) #17, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %ignore_nice, metadata !3173, metadata !DIExpression()), !dbg !3214
  %4 = load ptr, ptr %dbs_data, align 8, !dbg !3215
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %4, i32 0, i32 3, !dbg !3216
  %5 = load i32, ptr %ignore_nice_load, align 8, !dbg !3216
  store i32 %5, ptr %ignore_nice, align 4, !dbg !3214
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_load) #17, !dbg !3217
  call void @llvm.dbg.declare(metadata ptr %max_load, metadata !3174, metadata !DIExpression()), !dbg !3218
  store i32 0, ptr %max_load, align 4, !dbg !3218
  call void @llvm.lifetime.start.p0(i64 4, ptr %idle_periods) #17, !dbg !3217
  call void @llvm.dbg.declare(metadata ptr %idle_periods, metadata !3175, metadata !DIExpression()), !dbg !3219
  store i32 -1, ptr %idle_periods, align 4, !dbg !3219
  call void @llvm.lifetime.start.p0(i64 4, ptr %sampling_rate) #17, !dbg !3220
  call void @llvm.dbg.declare(metadata ptr %sampling_rate, metadata !3176, metadata !DIExpression()), !dbg !3221
  call void @llvm.lifetime.start.p0(i64 4, ptr %io_busy) #17, !dbg !3220
  call void @llvm.dbg.declare(metadata ptr %io_busy, metadata !3177, metadata !DIExpression()), !dbg !3222
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3220
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3178, metadata !DIExpression()), !dbg !3223
  %6 = load ptr, ptr %dbs_data, align 8, !dbg !3224
  %sampling_rate2 = getelementptr inbounds %struct.dbs_data, ptr %6, i32 0, i32 4, !dbg !3225
  %7 = load i32, ptr %sampling_rate2, align 4, !dbg !3225
  %8 = load ptr, ptr %policy_dbs, align 8, !dbg !3226
  %rate_mult = getelementptr inbounds %struct.policy_dbs_info, ptr %8, i32 0, i32 9, !dbg !3227
  %9 = load i32, ptr %rate_mult, align 8, !dbg !3227
  %mul = mul i32 %7, %9, !dbg !3228
  store i32 %mul, ptr %sampling_rate, align 4, !dbg !3229
  %10 = load ptr, ptr %dbs_data, align 8, !dbg !3230
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %10, i32 0, i32 7, !dbg !3231
  %11 = load i32, ptr %io_is_busy, align 8, !dbg !3231
  store i32 %11, ptr %io_busy, align 4, !dbg !3232
  store i32 0, ptr %j, align 4, !dbg !3233
  br label %for.cond, !dbg !3233

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load ptr, ptr %policy.addr, align 8, !dbg !3234
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %12, i32 0, i32 0, !dbg !3234
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3234
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3234
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3234
  %13 = load i32, ptr %j, align 4, !dbg !3234
  %conv = zext i32 %13 to i64, !dbg !3234
  %call = call i64 @find_next_bit(ptr noundef %arraydecay3, i64 noundef 64, i64 noundef %conv) #18, !dbg !3234
  %conv4 = trunc i64 %call to i32, !dbg !3234
  store i32 %conv4, ptr %j, align 4, !dbg !3234
  %14 = load i32, ptr %j, align 4, !dbg !3234
  %cmp = icmp ult i32 %14, 64, !dbg !3234
  br i1 %cmp, label %for.body, label %for.end, !dbg !3233

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_cdbs) #17, !dbg !3235
  call void @llvm.dbg.declare(metadata ptr %j_cdbs, metadata !3179, metadata !DIExpression()), !dbg !3236
  br label %do.body, !dbg !3237

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3238
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3183, metadata !DIExpression()), !dbg !3238
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3238
  %15 = load ptr, ptr %__vpp_verify, align 8, !dbg !3238
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3237
  br label %do.cond, !dbg !3238

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3238

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3239
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3186, metadata !DIExpression()), !dbg !3239
  store i64 ptrtoint (ptr @cpu_dbs to i64), ptr %__ptr, align 8, !dbg !3239
  %16 = load i64, ptr %__ptr, align 8, !dbg !3239
  %17 = load i32, ptr %j, align 4, !dbg !3239
  %idxprom = zext i32 %17 to i64, !dbg !3239
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3239
  %18 = load i64, ptr %arrayidx, align 8, !dbg !3239
  %add = add i64 %16, %18, !dbg !3239
  %19 = inttoptr i64 %add to ptr, !dbg !3239
  store ptr %19, ptr %tmp6, align 8, !dbg !3239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3237
  %20 = load ptr, ptr %tmp6, align 8, !dbg !3239
  store ptr %20, ptr %tmp, align 8, !dbg !3238
  %21 = load ptr, ptr %tmp, align 8, !dbg !3237
  store ptr %21, ptr %j_cdbs, align 8, !dbg !3236
  call void @llvm.lifetime.start.p0(i64 8, ptr %update_time) #17, !dbg !3240
  call void @llvm.dbg.declare(metadata ptr %update_time, metadata !3188, metadata !DIExpression()), !dbg !3241
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_idle_time) #17, !dbg !3240
  call void @llvm.dbg.declare(metadata ptr %cur_idle_time, metadata !3189, metadata !DIExpression()), !dbg !3242
  call void @llvm.lifetime.start.p0(i64 4, ptr %idle_time) #17, !dbg !3243
  call void @llvm.dbg.declare(metadata ptr %idle_time, metadata !3190, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.start.p0(i64 4, ptr %time_elapsed) #17, !dbg !3243
  call void @llvm.dbg.declare(metadata ptr %time_elapsed, metadata !3191, metadata !DIExpression()), !dbg !3245
  call void @llvm.lifetime.start.p0(i64 4, ptr %load) #17, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %load, metadata !3192, metadata !DIExpression()), !dbg !3247
  %22 = load i32, ptr %j, align 4, !dbg !3248
  %23 = load i32, ptr %io_busy, align 4, !dbg !3249
  %call7 = call i64 @get_cpu_idle_time(i32 noundef %22, ptr noundef %update_time, i32 noundef %23) #18, !dbg !3250
  store i64 %call7, ptr %cur_idle_time, align 8, !dbg !3251
  %24 = load i64, ptr %update_time, align 8, !dbg !3252
  %25 = load ptr, ptr %j_cdbs, align 8, !dbg !3253
  %prev_update_time = getelementptr inbounds %struct.cpu_dbs_info, ptr %25, i32 0, i32 1, !dbg !3254
  %26 = load i64, ptr %prev_update_time, align 8, !dbg !3254
  %sub = sub i64 %24, %26, !dbg !3255
  %conv8 = trunc i64 %sub to i32, !dbg !3252
  store i32 %conv8, ptr %time_elapsed, align 4, !dbg !3256
  %27 = load i64, ptr %update_time, align 8, !dbg !3257
  %28 = load ptr, ptr %j_cdbs, align 8, !dbg !3258
  %prev_update_time9 = getelementptr inbounds %struct.cpu_dbs_info, ptr %28, i32 0, i32 1, !dbg !3259
  store i64 %27, ptr %prev_update_time9, align 8, !dbg !3260
  %29 = load i64, ptr %cur_idle_time, align 8, !dbg !3261
  %30 = load ptr, ptr %j_cdbs, align 8, !dbg !3262
  %prev_cpu_idle = getelementptr inbounds %struct.cpu_dbs_info, ptr %30, i32 0, i32 0, !dbg !3263
  %31 = load i64, ptr %prev_cpu_idle, align 8, !dbg !3263
  %sub10 = sub i64 %29, %31, !dbg !3264
  %conv11 = trunc i64 %sub10 to i32, !dbg !3261
  store i32 %conv11, ptr %idle_time, align 4, !dbg !3265
  %32 = load i64, ptr %cur_idle_time, align 8, !dbg !3266
  %33 = load ptr, ptr %j_cdbs, align 8, !dbg !3267
  %prev_cpu_idle12 = getelementptr inbounds %struct.cpu_dbs_info, ptr %33, i32 0, i32 0, !dbg !3268
  store i64 %32, ptr %prev_cpu_idle12, align 8, !dbg !3269
  %34 = load i32, ptr %ignore_nice, align 4, !dbg !3270
  %tobool = icmp ne i32 %34, 0, !dbg !3270
  br i1 %tobool, label %if.then, label %if.end, !dbg !3271

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_nice) #17, !dbg !3272
  call void @llvm.dbg.declare(metadata ptr %cur_nice, metadata !3193, metadata !DIExpression()), !dbg !3273
  br label %do.body13, !dbg !3274

do.body13:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #17, !dbg !3275
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !3196, metadata !DIExpression()), !dbg !3275
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !3275
  %35 = load ptr, ptr %__vpp_verify14, align 8, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #17, !dbg !3274
  br label %do.cond15, !dbg !3275

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !3275

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr18) #17, !dbg !3276
  call void @llvm.dbg.declare(metadata ptr %__ptr18, metadata !3199, metadata !DIExpression()), !dbg !3276
  store i64 ptrtoint (ptr @kernel_cpustat to i64), ptr %__ptr18, align 8, !dbg !3276
  %36 = load i64, ptr %__ptr18, align 8, !dbg !3276
  %37 = load i32, ptr %j, align 4, !dbg !3276
  %idxprom20 = zext i32 %37 to i64, !dbg !3276
  %arrayidx21 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom20, !dbg !3276
  %38 = load i64, ptr %arrayidx21, align 8, !dbg !3276
  %add22 = add i64 %36, %38, !dbg !3276
  %39 = inttoptr i64 %add22 to ptr, !dbg !3276
  store ptr %39, ptr %tmp19, align 8, !dbg !3276
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr18) #17, !dbg !3274
  %40 = load ptr, ptr %tmp19, align 8, !dbg !3276
  store ptr %40, ptr %tmp17, align 8, !dbg !3275
  %41 = load ptr, ptr %tmp17, align 8, !dbg !3274
  %42 = load i32, ptr %j, align 4, !dbg !3277
  %call23 = call i64 @kcpustat_field(ptr noundef %41, i32 noundef 1, i32 noundef %42) #18, !dbg !3278
  store i64 %call23, ptr %cur_nice, align 8, !dbg !3273
  %43 = load i64, ptr %cur_nice, align 8, !dbg !3279
  %44 = load ptr, ptr %j_cdbs, align 8, !dbg !3280
  %prev_cpu_nice = getelementptr inbounds %struct.cpu_dbs_info, ptr %44, i32 0, i32 2, !dbg !3281
  %45 = load i64, ptr %prev_cpu_nice, align 8, !dbg !3281
  %sub24 = sub i64 %43, %45, !dbg !3282
  %call25 = call i64 @div_u64(i64 noundef %sub24, i32 noundef 1000) #18, !dbg !3283
  %46 = load i32, ptr %idle_time, align 4, !dbg !3284
  %conv26 = zext i32 %46 to i64, !dbg !3284
  %add27 = add i64 %conv26, %call25, !dbg !3284
  %conv28 = trunc i64 %add27 to i32, !dbg !3284
  store i32 %conv28, ptr %idle_time, align 4, !dbg !3284
  %47 = load i64, ptr %cur_nice, align 8, !dbg !3285
  %48 = load ptr, ptr %j_cdbs, align 8, !dbg !3286
  %prev_cpu_nice29 = getelementptr inbounds %struct.cpu_dbs_info, ptr %48, i32 0, i32 2, !dbg !3287
  store i64 %47, ptr %prev_cpu_nice29, align 8, !dbg !3288
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_nice) #17, !dbg !3289
  br label %if.end, !dbg !3290

if.end:                                           ; preds = %do.end16, %do.end
  %49 = load i32, ptr %time_elapsed, align 4, !dbg !3291
  %tobool30 = icmp ne i32 %49, 0, !dbg !3291
  %lnot = xor i1 %tobool30, true, !dbg !3291
  %lnot31 = xor i1 %lnot, true, !dbg !3291
  %lnot32 = xor i1 %lnot31, true, !dbg !3291
  %lnot.ext = zext i1 %lnot32 to i32, !dbg !3291
  %conv33 = sext i32 %lnot.ext to i64, !dbg !3291
  %expval = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !3291
  %tobool34 = icmp ne i64 %expval, 0, !dbg !3291
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !3293

if.then35:                                        ; preds = %if.end
  %50 = load ptr, ptr %j_cdbs, align 8, !dbg !3294
  %prev_load = getelementptr inbounds %struct.cpu_dbs_info, ptr %50, i32 0, i32 3, !dbg !3296
  %51 = load i32, ptr %prev_load, align 8, !dbg !3296
  store i32 %51, ptr %load, align 4, !dbg !3297
  br label %if.end63, !dbg !3298

if.else:                                          ; preds = %if.end
  %52 = load i32, ptr %idle_time, align 4, !dbg !3299
  %53 = load i32, ptr %sampling_rate, align 4, !dbg !3299
  %mul36 = mul i32 2, %53, !dbg !3299
  %cmp37 = icmp ugt i32 %52, %mul36, !dbg !3299
  br i1 %cmp37, label %land.rhs, label %land.end, !dbg !3299

land.rhs:                                         ; preds = %if.else
  %54 = load ptr, ptr %j_cdbs, align 8, !dbg !3299
  %prev_load39 = getelementptr inbounds %struct.cpu_dbs_info, ptr %54, i32 0, i32 3, !dbg !3299
  %55 = load i32, ptr %prev_load39, align 8, !dbg !3299
  %tobool40 = icmp ne i32 %55, 0, !dbg !3299
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %56 = phi i1 [ false, %if.else ], [ %tobool40, %land.rhs ], !dbg !3301
  %lnot41 = xor i1 %56, true, !dbg !3299
  %lnot43 = xor i1 %lnot41, true, !dbg !3299
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !3299
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !3299
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !3299
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !3299
  br i1 %tobool47, label %if.then48, label %if.else51, !dbg !3302

if.then48:                                        ; preds = %land.end
  %57 = load ptr, ptr %j_cdbs, align 8, !dbg !3303
  %prev_load49 = getelementptr inbounds %struct.cpu_dbs_info, ptr %57, i32 0, i32 3, !dbg !3305
  %58 = load i32, ptr %prev_load49, align 8, !dbg !3305
  store i32 %58, ptr %load, align 4, !dbg !3306
  %59 = load ptr, ptr %j_cdbs, align 8, !dbg !3307
  %prev_load50 = getelementptr inbounds %struct.cpu_dbs_info, ptr %59, i32 0, i32 3, !dbg !3308
  store i32 0, ptr %prev_load50, align 8, !dbg !3309
  br label %if.end62, !dbg !3310

if.else51:                                        ; preds = %land.end
  %60 = load i32, ptr %time_elapsed, align 4, !dbg !3311
  %61 = load i32, ptr %idle_time, align 4, !dbg !3314
  %cmp52 = icmp uge i32 %60, %61, !dbg !3315
  br i1 %cmp52, label %if.then54, label %if.else57, !dbg !3316

if.then54:                                        ; preds = %if.else51
  %62 = load i32, ptr %time_elapsed, align 4, !dbg !3317
  %63 = load i32, ptr %idle_time, align 4, !dbg !3319
  %sub55 = sub i32 %62, %63, !dbg !3320
  %mul56 = mul i32 100, %sub55, !dbg !3321
  %64 = load i32, ptr %time_elapsed, align 4, !dbg !3322
  %div = udiv i32 %mul56, %64, !dbg !3323
  store i32 %div, ptr %load, align 4, !dbg !3324
  br label %if.end60, !dbg !3325

if.else57:                                        ; preds = %if.else51
  %65 = load i32, ptr %idle_time, align 4, !dbg !3326
  %cmp58 = icmp slt i32 %65, 0, !dbg !3328
  %66 = zext i1 %cmp58 to i64, !dbg !3329
  %cond = select i1 %cmp58, i32 100, i32 0, !dbg !3329
  store i32 %cond, ptr %load, align 4, !dbg !3330
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then54
  %67 = load i32, ptr %load, align 4, !dbg !3331
  %68 = load ptr, ptr %j_cdbs, align 8, !dbg !3332
  %prev_load61 = getelementptr inbounds %struct.cpu_dbs_info, ptr %68, i32 0, i32 3, !dbg !3333
  store i32 %67, ptr %prev_load61, align 8, !dbg !3334
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %if.then48
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then35
  %69 = load i32, ptr %idle_time, align 4, !dbg !3335
  %70 = load i32, ptr %sampling_rate, align 4, !dbg !3335
  %mul64 = mul i32 2, %70, !dbg !3335
  %cmp65 = icmp ugt i32 %69, %mul64, !dbg !3335
  %lnot67 = xor i1 %cmp65, true, !dbg !3335
  %lnot69 = xor i1 %lnot67, true, !dbg !3335
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !3335
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !3335
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !3335
  %tobool73 = icmp ne i64 %expval72, 0, !dbg !3335
  br i1 %tobool73, label %if.then74, label %if.end80, !dbg !3336

if.then74:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr %periods) #17, !dbg !3337
  call void @llvm.dbg.declare(metadata ptr %periods, metadata !3201, metadata !DIExpression()), !dbg !3338
  %71 = load i32, ptr %idle_time, align 4, !dbg !3339
  %72 = load i32, ptr %sampling_rate, align 4, !dbg !3340
  %div75 = udiv i32 %71, %72, !dbg !3341
  store i32 %div75, ptr %periods, align 4, !dbg !3338
  %73 = load i32, ptr %periods, align 4, !dbg !3342
  %74 = load i32, ptr %idle_periods, align 4, !dbg !3344
  %cmp76 = icmp ult i32 %73, %74, !dbg !3345
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !3346

if.then78:                                        ; preds = %if.then74
  %75 = load i32, ptr %periods, align 4, !dbg !3347
  store i32 %75, ptr %idle_periods, align 4, !dbg !3348
  br label %if.end79, !dbg !3349

if.end79:                                         ; preds = %if.then78, %if.then74
  call void @llvm.lifetime.end.p0(i64 4, ptr %periods) #17, !dbg !3350
  br label %if.end80, !dbg !3351

if.end80:                                         ; preds = %if.end79, %if.end63
  %76 = load i32, ptr %load, align 4, !dbg !3352
  %77 = load i32, ptr %max_load, align 4, !dbg !3354
  %cmp81 = icmp ugt i32 %76, %77, !dbg !3355
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !3356

if.then83:                                        ; preds = %if.end80
  %78 = load i32, ptr %load, align 4, !dbg !3357
  store i32 %78, ptr %max_load, align 4, !dbg !3358
  br label %if.end84, !dbg !3359

if.end84:                                         ; preds = %if.then83, %if.end80
  call void @llvm.lifetime.end.p0(i64 4, ptr %load) #17, !dbg !3360
  call void @llvm.lifetime.end.p0(i64 4, ptr %time_elapsed) #17, !dbg !3360
  call void @llvm.lifetime.end.p0(i64 4, ptr %idle_time) #17, !dbg !3360
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_idle_time) #17, !dbg !3360
  call void @llvm.lifetime.end.p0(i64 8, ptr %update_time) #17, !dbg !3360
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_cdbs) #17, !dbg !3360
  br label %for.inc, !dbg !3361

for.inc:                                          ; preds = %if.end84
  %79 = load i32, ptr %j, align 4, !dbg !3234
  %inc = add i32 %79, 1, !dbg !3234
  store i32 %inc, ptr %j, align 4, !dbg !3234
  br label %for.cond, !dbg !3234, !llvm.loop !3362

for.end:                                          ; preds = %for.cond
  %80 = load i32, ptr %idle_periods, align 4, !dbg !3364
  %81 = load ptr, ptr %policy_dbs, align 8, !dbg !3365
  %idle_periods85 = getelementptr inbounds %struct.policy_dbs_info, ptr %81, i32 0, i32 10, !dbg !3366
  store i32 %80, ptr %idle_periods85, align 4, !dbg !3367
  %82 = load i32, ptr %max_load, align 4, !dbg !3368
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 4, ptr %io_busy) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 4, ptr %sampling_rate) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 4, ptr %idle_periods) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_load) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignore_nice) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #17, !dbg !3369
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3369
  ret i32 %82, !dbg !3370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #3 align 16 !dbg !3371 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !3376, metadata !DIExpression()), !dbg !3379
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !3377, metadata !DIExpression()), !dbg !3380
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #17, !dbg !3381
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !3378, metadata !DIExpression()), !dbg !3382
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !3383
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !3384
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #18, !dbg !3385
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #17, !dbg !3386
  ret i64 %call, !dbg !3387
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_dbs_governor_init(ptr noundef %policy) #0 align 16 !dbg !3388 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %gov = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x268 = alloca i32, align 4
  %__UNIQUE_ID___y269 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3390, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #17, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !3391, metadata !DIExpression()), !dbg !3411
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3412
  %call = call ptr @dbs_governor_of(ptr noundef %0) #18, !dbg !3413
  store ptr %call, ptr %gov, align 8, !dbg !3411
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #17, !dbg !3414
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !3392, metadata !DIExpression()), !dbg !3415
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3416
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3393, metadata !DIExpression()), !dbg !3417
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !3418
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3394, metadata !DIExpression()), !dbg !3419
  store i32 0, ptr %ret, align 4, !dbg !3419
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3420
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 14, !dbg !3422
  %2 = load ptr, ptr %governor_data, align 8, !dbg !3422
  %tobool = icmp ne ptr %2, null, !dbg !3420
  br i1 %tobool, label %if.then, label %if.end, !dbg !3423

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !3424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3424

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !3425
  %4 = load ptr, ptr %gov, align 8, !dbg !3426
  %call1 = call ptr @alloc_policy_dbs_info(ptr noundef %3, ptr noundef %4) #18, !dbg !3427
  store ptr %call1, ptr %policy_dbs, align 8, !dbg !3428
  %5 = load ptr, ptr %policy_dbs, align 8, !dbg !3429
  %tobool2 = icmp ne ptr %5, null, !dbg !3429
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3431

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !3432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3432

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @gov_dbs_data_mutex) #18, !dbg !3433
  %6 = load ptr, ptr %gov, align 8, !dbg !3434
  %gdbs_data = getelementptr inbounds %struct.dbs_governor, ptr %6, i32 0, i32 2, !dbg !3435
  %7 = load ptr, ptr %gdbs_data, align 8, !dbg !3435
  store ptr %7, ptr %dbs_data, align 8, !dbg !3436
  %8 = load ptr, ptr %dbs_data, align 8, !dbg !3437
  %tobool5 = icmp ne ptr %8, null, !dbg !3437
  br i1 %tobool5, label %if.then6, label %if.end38, !dbg !3438

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !3439
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3395, metadata !DIExpression()), !dbg !3439
  %call7 = call zeroext i1 @have_governor_per_policy() #18, !dbg !3439
  %lnot = xor i1 %call7, true, !dbg !3439
  %lnot8 = xor i1 %lnot, true, !dbg !3439
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3439
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3439
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !3440
  %tobool9 = icmp ne i32 %9, 0, !dbg !3440
  %lnot10 = xor i1 %tobool9, true, !dbg !3440
  %lnot12 = xor i1 %lnot10, true, !dbg !3440
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !3440
  %conv = sext i32 %lnot.ext13 to i64, !dbg !3440
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3440
  %tobool14 = icmp ne i64 %expval, 0, !dbg !3440
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !3439

if.then15:                                        ; preds = %if.then6
  br label %do.body, !dbg !3440

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3400, metadata !DIExpression()), !dbg !3441
  store i32 2305, ptr %__flags, align 4, !dbg !3441
  br label %do.body16, !dbg !3441

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !3442

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !3442

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !3441

do.body17:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !3444
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 420, i32 %10, i64 12) #17, !dbg !3444, !srcloc !3446
  br label %do.cond18, !dbg !3444

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3444

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !3441

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !3447

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3447

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !3440
  br label %do.cond23, !dbg !3441

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !3441

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !3441

if.end25:                                         ; preds = %do.end24, %if.then6
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !3439
  %tobool26 = icmp ne i32 %11, 0, !dbg !3439
  %lnot27 = xor i1 %tobool26, true, !dbg !3439
  %lnot29 = xor i1 %lnot27, true, !dbg !3439
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !3439
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !3439
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !3439
  store i64 %expval32, ptr %tmp, align 8, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !3449
  %12 = load i64, ptr %tmp, align 8, !dbg !3439
  %tobool33 = icmp ne i64 %12, 0, !dbg !3449
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !3450

if.then34:                                        ; preds = %if.end25
  store i32 -22, ptr %ret, align 4, !dbg !3451
  br label %free_policy_dbs_info, !dbg !3453

if.end35:                                         ; preds = %if.end25
  %13 = load ptr, ptr %dbs_data, align 8, !dbg !3454
  %14 = load ptr, ptr %policy_dbs, align 8, !dbg !3455
  %dbs_data36 = getelementptr inbounds %struct.policy_dbs_info, ptr %14, i32 0, i32 7, !dbg !3456
  store ptr %13, ptr %dbs_data36, align 8, !dbg !3457
  %15 = load ptr, ptr %policy_dbs, align 8, !dbg !3458
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !3459
  %governor_data37 = getelementptr inbounds %struct.cpufreq_policy, ptr %16, i32 0, i32 14, !dbg !3460
  store ptr %15, ptr %governor_data37, align 8, !dbg !3461
  %17 = load ptr, ptr %dbs_data, align 8, !dbg !3462
  %attr_set = getelementptr inbounds %struct.dbs_data, ptr %17, i32 0, i32 0, !dbg !3463
  %18 = load ptr, ptr %policy_dbs, align 8, !dbg !3464
  %list = getelementptr inbounds %struct.policy_dbs_info, ptr %18, i32 0, i32 8, !dbg !3465
  call void @gov_attr_set_get(ptr noundef %attr_set, ptr noundef %list) #18, !dbg !3466
  br label %out, !dbg !3467

if.end38:                                         ; preds = %if.end4
  %call39 = call noalias ptr @kzalloc(i64 noundef 160, i32 noundef 3264) #19, !dbg !3468
  store ptr %call39, ptr %dbs_data, align 8, !dbg !3469
  %19 = load ptr, ptr %dbs_data, align 8, !dbg !3470
  %tobool40 = icmp ne ptr %19, null, !dbg !3470
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !3472

if.then41:                                        ; preds = %if.end38
  store i32 -12, ptr %ret, align 4, !dbg !3473
  br label %free_policy_dbs_info, !dbg !3475

if.end42:                                         ; preds = %if.end38
  %20 = load ptr, ptr %gov, align 8, !dbg !3476
  %21 = load ptr, ptr %dbs_data, align 8, !dbg !3477
  %gov43 = getelementptr inbounds %struct.dbs_data, ptr %21, i32 0, i32 1, !dbg !3478
  store ptr %20, ptr %gov43, align 8, !dbg !3479
  %22 = load ptr, ptr %dbs_data, align 8, !dbg !3480
  %attr_set44 = getelementptr inbounds %struct.dbs_data, ptr %22, i32 0, i32 0, !dbg !3481
  %23 = load ptr, ptr %policy_dbs, align 8, !dbg !3482
  %list45 = getelementptr inbounds %struct.policy_dbs_info, ptr %23, i32 0, i32 8, !dbg !3483
  call void @gov_attr_set_init(ptr noundef %attr_set44, ptr noundef %list45) #18, !dbg !3484
  %24 = load ptr, ptr %gov, align 8, !dbg !3485
  %init = getelementptr inbounds %struct.dbs_governor, ptr %24, i32 0, i32 6, !dbg !3486
  %25 = load ptr, ptr %init, align 8, !dbg !3486
  %26 = load ptr, ptr %dbs_data, align 8, !dbg !3487
  %call46 = call i32 %25(ptr noundef %26) #18, !dbg !3485
  store i32 %call46, ptr %ret, align 4, !dbg !3488
  %27 = load i32, ptr %ret, align 4, !dbg !3489
  %tobool47 = icmp ne i32 %27, 0, !dbg !3489
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !3491

if.then48:                                        ; preds = %if.end42
  br label %free_dbs_data, !dbg !3492

if.end49:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x268) #17, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x268, metadata !3403, metadata !DIExpression()), !dbg !3493
  store i32 2000, ptr %__UNIQUE_ID___x268, align 4, !dbg !3493
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y269) #17, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y269, metadata !3405, metadata !DIExpression()), !dbg !3493
  %28 = load ptr, ptr %policy.addr, align 8, !dbg !3493
  %call50 = call i32 @cpufreq_policy_transition_delay_us(ptr noundef %28) #18, !dbg !3493
  store i32 %call50, ptr %__UNIQUE_ID___y269, align 4, !dbg !3493
  %29 = load i32, ptr %__UNIQUE_ID___x268, align 4, !dbg !3493
  %30 = load i32, ptr %__UNIQUE_ID___y269, align 4, !dbg !3493
  %cmp = icmp ugt i32 %29, %30, !dbg !3493
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3493

cond.true:                                        ; preds = %if.end49
  %31 = load i32, ptr %__UNIQUE_ID___x268, align 4, !dbg !3493
  br label %cond.end, !dbg !3493

cond.false:                                       ; preds = %if.end49
  %32 = load i32, ptr %__UNIQUE_ID___y269, align 4, !dbg !3493
  br label %cond.end, !dbg !3493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ], !dbg !3493
  store i32 %cond, ptr %tmp51, align 4, !dbg !3493
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y269) #17, !dbg !3494
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x268) #17, !dbg !3494
  %33 = load i32, ptr %tmp51, align 4, !dbg !3493
  %34 = load ptr, ptr %dbs_data, align 8, !dbg !3495
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %34, i32 0, i32 4, !dbg !3496
  store i32 %33, ptr %sampling_rate, align 4, !dbg !3497
  %call53 = call zeroext i1 @have_governor_per_policy() #18, !dbg !3498
  br i1 %call53, label %if.end56, label %if.then54, !dbg !3500

if.then54:                                        ; preds = %cond.end
  %35 = load ptr, ptr %dbs_data, align 8, !dbg !3501
  %36 = load ptr, ptr %gov, align 8, !dbg !3502
  %gdbs_data55 = getelementptr inbounds %struct.dbs_governor, ptr %36, i32 0, i32 2, !dbg !3503
  store ptr %35, ptr %gdbs_data55, align 8, !dbg !3504
  br label %if.end56, !dbg !3502

if.end56:                                         ; preds = %if.then54, %cond.end
  %37 = load ptr, ptr %dbs_data, align 8, !dbg !3505
  %38 = load ptr, ptr %policy_dbs, align 8, !dbg !3506
  %dbs_data57 = getelementptr inbounds %struct.policy_dbs_info, ptr %38, i32 0, i32 7, !dbg !3507
  store ptr %37, ptr %dbs_data57, align 8, !dbg !3508
  %39 = load ptr, ptr %policy_dbs, align 8, !dbg !3509
  %40 = load ptr, ptr %policy.addr, align 8, !dbg !3510
  %governor_data58 = getelementptr inbounds %struct.cpufreq_policy, ptr %40, i32 0, i32 14, !dbg !3511
  store ptr %39, ptr %governor_data58, align 8, !dbg !3512
  %41 = load ptr, ptr %gov, align 8, !dbg !3513
  %kobj_type = getelementptr inbounds %struct.dbs_governor, ptr %41, i32 0, i32 1, !dbg !3514
  %sysfs_ops = getelementptr inbounds %struct.kobj_type, ptr %kobj_type, i32 0, i32 1, !dbg !3515
  store ptr @governor_sysfs_ops, ptr %sysfs_ops, align 8, !dbg !3516
  %42 = load ptr, ptr %gov, align 8, !dbg !3517
  %kobj_type59 = getelementptr inbounds %struct.dbs_governor, ptr %42, i32 0, i32 1, !dbg !3518
  %release = getelementptr inbounds %struct.kobj_type, ptr %kobj_type59, i32 0, i32 0, !dbg !3519
  store ptr @cpufreq_dbs_data_release, ptr %release, align 8, !dbg !3520
  %43 = load ptr, ptr %dbs_data, align 8, !dbg !3521
  %attr_set60 = getelementptr inbounds %struct.dbs_data, ptr %43, i32 0, i32 0, !dbg !3522
  %kobj = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set60, i32 0, i32 0, !dbg !3523
  %44 = load ptr, ptr %gov, align 8, !dbg !3524
  %kobj_type61 = getelementptr inbounds %struct.dbs_governor, ptr %44, i32 0, i32 1, !dbg !3525
  %45 = load ptr, ptr %policy.addr, align 8, !dbg !3526
  %call62 = call ptr @get_governor_parent_kobj(ptr noundef %45) #18, !dbg !3527
  %46 = load ptr, ptr %gov, align 8, !dbg !3528
  %gov63 = getelementptr inbounds %struct.dbs_governor, ptr %46, i32 0, i32 0, !dbg !3529
  %name = getelementptr inbounds %struct.cpufreq_governor, ptr %gov63, i32 0, i32 0, !dbg !3530
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !3528
  %call64 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef %kobj_type61, ptr noundef %call62, ptr noundef @.str.2, ptr noundef %arraydecay) #18, !dbg !3531
  store i32 %call64, ptr %ret, align 4, !dbg !3532
  %47 = load i32, ptr %ret, align 4, !dbg !3533
  %tobool65 = icmp ne i32 %47, 0, !dbg !3533
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !3535

if.then66:                                        ; preds = %if.end56
  br label %out, !dbg !3536

if.end67:                                         ; preds = %if.end56
  br label %do.body68, !dbg !3537

do.body68:                                        ; preds = %if.end67
  br label %do.cond69, !dbg !3539

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !3539

do.end70:                                         ; preds = %do.cond69
  %48 = load i32, ptr %ret, align 4, !dbg !3537
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %48) #20, !dbg !3537
  store i32 %call72, ptr %tmp71, align 4, !dbg !3539
  %49 = load i32, ptr %tmp71, align 4, !dbg !3537
  %50 = load ptr, ptr %dbs_data, align 8, !dbg !3541
  %attr_set73 = getelementptr inbounds %struct.dbs_data, ptr %50, i32 0, i32 0, !dbg !3542
  %kobj74 = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set73, i32 0, i32 0, !dbg !3543
  call void @kobject_put(ptr noundef %kobj74) #18, !dbg !3544
  %51 = load ptr, ptr %policy.addr, align 8, !dbg !3545
  %governor_data75 = getelementptr inbounds %struct.cpufreq_policy, ptr %51, i32 0, i32 14, !dbg !3546
  store ptr null, ptr %governor_data75, align 8, !dbg !3547
  %call76 = call zeroext i1 @have_governor_per_policy() #18, !dbg !3548
  br i1 %call76, label %if.end79, label %if.then77, !dbg !3550

if.then77:                                        ; preds = %do.end70
  %52 = load ptr, ptr %gov, align 8, !dbg !3551
  %gdbs_data78 = getelementptr inbounds %struct.dbs_governor, ptr %52, i32 0, i32 2, !dbg !3552
  store ptr null, ptr %gdbs_data78, align 8, !dbg !3553
  br label %if.end79, !dbg !3551

if.end79:                                         ; preds = %if.then77, %do.end70
  %53 = load ptr, ptr %gov, align 8, !dbg !3554
  %exit = getelementptr inbounds %struct.dbs_governor, ptr %53, i32 0, i32 7, !dbg !3555
  %54 = load ptr, ptr %exit, align 8, !dbg !3555
  %55 = load ptr, ptr %dbs_data, align 8, !dbg !3556
  call void %54(ptr noundef %55) #18, !dbg !3554
  br label %free_dbs_data, !dbg !3554

free_dbs_data:                                    ; preds = %if.end79, %if.then48
  call void @llvm.dbg.label(metadata !3406), !dbg !3557
  %56 = load ptr, ptr %dbs_data, align 8, !dbg !3558
  call void @kfree(ptr noundef %56) #18, !dbg !3559
  br label %free_policy_dbs_info, !dbg !3559

free_policy_dbs_info:                             ; preds = %free_dbs_data, %if.then41, %if.then34
  call void @llvm.dbg.label(metadata !3407), !dbg !3560
  %57 = load ptr, ptr %policy_dbs, align 8, !dbg !3561
  %58 = load ptr, ptr %gov, align 8, !dbg !3562
  call void @free_policy_dbs_info(ptr noundef %57, ptr noundef %58) #18, !dbg !3563
  br label %out, !dbg !3563

out:                                              ; preds = %free_policy_dbs_info, %if.then66, %if.end35
  call void @llvm.dbg.label(metadata !3408), !dbg !3564
  call void @mutex_unlock(ptr noundef @gov_dbs_data_mutex) #18, !dbg !3565
  %59 = load i32, ptr %ret, align 4, !dbg !3566
  store i32 %59, ptr %retval, align 4, !dbg !3567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3567

cleanup:                                          ; preds = %out, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !3568
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3568
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #17, !dbg !3568
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #17, !dbg !3568
  %60 = load i32, ptr %retval, align 4, !dbg !3568
  ret i32 %60, !dbg !3568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dbs_governor_of(ptr noundef %policy) #3 align 16 !dbg !3569 {
entry:
  %policy.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3573, metadata !DIExpression()), !dbg !3576
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !3577
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3574, metadata !DIExpression()), !dbg !3577
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3577
  %governor = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13, !dbg !3577
  %1 = load ptr, ptr %governor, align 8, !dbg !3577
  store ptr %1, ptr %__mptr, align 8, !dbg !3577
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3577
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3577
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3577
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !3578
  %3 = load ptr, ptr %tmp, align 8, !dbg !3577
  ret ptr %3, !dbg !3579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_policy_dbs_info(ptr noundef %policy, ptr noundef %gov) #0 align 16 !dbg !2891 {
entry:
  %retval = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %gov.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %j_cdbs = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2895, metadata !DIExpression()), !dbg !3580
  store ptr %gov, ptr %gov.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gov.addr, metadata !2896, metadata !DIExpression()), !dbg !3581
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3582
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !2897, metadata !DIExpression()), !dbg !3583
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3584
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2898, metadata !DIExpression()), !dbg !3585
  %0 = load ptr, ptr %gov.addr, align 8, !dbg !3586
  %alloc = getelementptr inbounds %struct.dbs_governor, ptr %0, i32 0, i32 4, !dbg !3587
  %1 = load ptr, ptr %alloc, align 8, !dbg !3587
  %call = call ptr %1() #18, !dbg !3586
  store ptr %call, ptr %policy_dbs, align 8, !dbg !3588
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !3589
  %tobool = icmp ne ptr %2, null, !dbg !3589
  br i1 %tobool, label %if.end, label %if.then, !dbg !3591

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3592

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !3593
  %4 = load ptr, ptr %policy_dbs, align 8, !dbg !3594
  %policy1 = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 0, !dbg !3595
  store ptr %3, ptr %policy1, align 8, !dbg !3596
  br label %do.body, !dbg !3597

do.body:                                          ; preds = %if.end
  %5 = load ptr, ptr %policy_dbs, align 8, !dbg !3598
  %update_mutex = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 1, !dbg !3598
  call void @__mutex_init(ptr noundef %update_mutex, ptr noundef @.str.4, ptr noundef @alloc_policy_dbs_info.__key) #18, !dbg !3598
  br label %do.cond, !dbg !3598

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3598

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %policy_dbs, align 8, !dbg !3600
  %work_count = getelementptr inbounds %struct.policy_dbs_info, ptr %6, i32 0, i32 4, !dbg !3601
  call void @atomic_set(ptr noundef %work_count, i32 noundef 0) #18, !dbg !3602
  %7 = load ptr, ptr %policy_dbs, align 8, !dbg !3603
  %irq_work = getelementptr inbounds %struct.policy_dbs_info, ptr %7, i32 0, i32 5, !dbg !3604
  call void @init_irq_work(ptr noundef %irq_work, ptr noundef @dbs_irq_work) #18, !dbg !3605
  br label %do.body2, !dbg !3606

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !3607

do.body3:                                         ; preds = %do.body2
  %8 = load ptr, ptr %policy_dbs, align 8, !dbg !3609
  %work = getelementptr inbounds %struct.policy_dbs_info, ptr %8, i32 0, i32 6, !dbg !3609
  call void @__init_work(ptr noundef %work, i32 noundef 0) #18, !dbg !3609
  %9 = load ptr, ptr %policy_dbs, align 8, !dbg !3609
  %work4 = getelementptr inbounds %struct.policy_dbs_info, ptr %9, i32 0, i32 6, !dbg !3609
  %data = getelementptr inbounds %struct.work_struct, ptr %work4, i32 0, i32 0, !dbg !3609
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3609
  store i64 68719476704, ptr %counter, align 8, !dbg !3609
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !3609
  %10 = load ptr, ptr %policy_dbs, align 8, !dbg !3609
  %work5 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 6, !dbg !3609
  %entry6 = getelementptr inbounds %struct.work_struct, ptr %work5, i32 0, i32 1, !dbg !3609
  call void @INIT_LIST_HEAD(ptr noundef %entry6) #18, !dbg !3609
  %11 = load ptr, ptr %policy_dbs, align 8, !dbg !3609
  %work7 = getelementptr inbounds %struct.policy_dbs_info, ptr %11, i32 0, i32 6, !dbg !3609
  %func = getelementptr inbounds %struct.work_struct, ptr %work7, i32 0, i32 2, !dbg !3609
  store ptr @dbs_work_handler, ptr %func, align 8, !dbg !3609
  br label %do.cond8, !dbg !3609

do.cond8:                                         ; preds = %do.body3
  br label %do.end9, !dbg !3609

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !3607

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !3607

do.end11:                                         ; preds = %do.cond10
  store i32 0, ptr %j, align 4, !dbg !3611
  br label %for.cond, !dbg !3611

for.cond:                                         ; preds = %for.inc, %do.end11
  %12 = load ptr, ptr %policy.addr, align 8, !dbg !3612
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %12, i32 0, i32 1, !dbg !3612
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %related_cpus, i64 0, i64 0, !dbg !3612
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3612
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3612
  %13 = load i32, ptr %j, align 4, !dbg !3612
  %conv = sext i32 %13 to i64, !dbg !3612
  %call13 = call i64 @find_next_bit(ptr noundef %arraydecay12, i64 noundef 64, i64 noundef %conv) #18, !dbg !3612
  %conv14 = trunc i64 %call13 to i32, !dbg !3612
  store i32 %conv14, ptr %j, align 4, !dbg !3612
  %14 = load i32, ptr %j, align 4, !dbg !3612
  %cmp = icmp ult i32 %14, 64, !dbg !3612
  br i1 %cmp, label %for.body, label %for.end, !dbg !3611

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_cdbs) #17, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %j_cdbs, metadata !2899, metadata !DIExpression()), !dbg !3614
  br label %do.body16, !dbg !3615

do.body16:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3616
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2903, metadata !DIExpression()), !dbg !3616
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3616
  %15 = load ptr, ptr %__vpp_verify, align 8, !dbg !3616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3615
  br label %do.cond17, !dbg !3616

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3616

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3617
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2906, metadata !DIExpression()), !dbg !3617
  store i64 ptrtoint (ptr @cpu_dbs to i64), ptr %__ptr, align 8, !dbg !3617
  %16 = load i64, ptr %__ptr, align 8, !dbg !3617
  %17 = load i32, ptr %j, align 4, !dbg !3617
  %idxprom = sext i32 %17 to i64, !dbg !3617
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3617
  %18 = load i64, ptr %arrayidx, align 8, !dbg !3617
  %add = add i64 %16, %18, !dbg !3617
  %19 = inttoptr i64 %add to ptr, !dbg !3617
  store ptr %19, ptr %tmp19, align 8, !dbg !3617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3615
  %20 = load ptr, ptr %tmp19, align 8, !dbg !3617
  store ptr %20, ptr %tmp, align 8, !dbg !3616
  %21 = load ptr, ptr %tmp, align 8, !dbg !3615
  store ptr %21, ptr %j_cdbs, align 8, !dbg !3614
  %22 = load ptr, ptr %policy_dbs, align 8, !dbg !3618
  %23 = load ptr, ptr %j_cdbs, align 8, !dbg !3619
  %policy_dbs20 = getelementptr inbounds %struct.cpu_dbs_info, ptr %23, i32 0, i32 5, !dbg !3620
  store ptr %22, ptr %policy_dbs20, align 8, !dbg !3621
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_cdbs) #17, !dbg !3622
  br label %for.inc, !dbg !3623

for.inc:                                          ; preds = %do.end18
  %24 = load i32, ptr %j, align 4, !dbg !3612
  %inc = add i32 %24, 1, !dbg !3612
  store i32 %inc, ptr %j, align 4, !dbg !3612
  br label %for.cond, !dbg !3612, !llvm.loop !3624

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %policy_dbs, align 8, !dbg !3626
  store ptr %25, ptr %retval, align 8, !dbg !3627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3627

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3628
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3628
  %26 = load ptr, ptr %retval, align 8, !dbg !3628
  ret ptr %26, !dbg !3628
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3629 dso_local zeroext i1 @have_governor_per_policy() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3630 dso_local void @gov_attr_set_get(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !3633 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3637, metadata !DIExpression()), !dbg !3639
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3638, metadata !DIExpression()), !dbg !3640
  %0 = load i64, ptr %size.addr, align 8, !dbg !3641
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3642
  %or = or i32 %1, 256, !dbg !3643
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !3644
  ret ptr %call, !dbg !3645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3646 dso_local void @gov_attr_set_init(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3647 dso_local i32 @cpufreq_policy_transition_delay_us(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpufreq_dbs_data_release(ptr noundef %kobj) #0 align 16 !dbg !3648 {
entry:
  %kobj.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %gov = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #17, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !3651, metadata !DIExpression()), !dbg !3655
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3656
  %call = call ptr @to_gov_attr_set(ptr noundef %0) #18, !dbg !3657
  %call1 = call ptr @to_dbs_data(ptr noundef %call) #18, !dbg !3658
  store ptr %call1, ptr %dbs_data, align 8, !dbg !3655
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #17, !dbg !3659
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !3652, metadata !DIExpression()), !dbg !3660
  %1 = load ptr, ptr %dbs_data, align 8, !dbg !3661
  %gov2 = getelementptr inbounds %struct.dbs_data, ptr %1, i32 0, i32 1, !dbg !3662
  %2 = load ptr, ptr %gov2, align 8, !dbg !3662
  store ptr %2, ptr %gov, align 8, !dbg !3660
  %3 = load ptr, ptr %gov, align 8, !dbg !3663
  %exit = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 7, !dbg !3664
  %4 = load ptr, ptr %exit, align 8, !dbg !3664
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !3665
  call void %4(ptr noundef %5) #18, !dbg !3663
  %6 = load ptr, ptr %dbs_data, align 8, !dbg !3666
  call void @kfree(ptr noundef %6) #18, !dbg !3667
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #17, !dbg !3668
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #17, !dbg !3668
  ret void, !dbg !3668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3669 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3672 dso_local ptr @get_governor_parent_kobj(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3675 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3679 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3680 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_policy_dbs_info(ptr noundef %policy_dbs, ptr noundef %gov) #0 align 16 !dbg !3683 {
entry:
  %policy_dbs.addr = alloca ptr, align 8
  %gov.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %j_cdbs = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %policy_dbs, ptr %policy_dbs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy_dbs.addr, metadata !3687, metadata !DIExpression()), !dbg !3699
  store ptr %gov, ptr %gov.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gov.addr, metadata !3688, metadata !DIExpression()), !dbg !3700
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3689, metadata !DIExpression()), !dbg !3702
  %0 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3703
  %update_mutex = getelementptr inbounds %struct.policy_dbs_info, ptr %0, i32 0, i32 1, !dbg !3704
  call void @mutex_destroy(ptr noundef %update_mutex) #18, !dbg !3705
  store i32 0, ptr %j, align 4, !dbg !3706
  br label %for.cond, !dbg !3706

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3707
  %policy = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 0, !dbg !3707
  %2 = load ptr, ptr %policy, align 8, !dbg !3707
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 1, !dbg !3707
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %related_cpus, i64 0, i64 0, !dbg !3707
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3707
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3707
  %3 = load i32, ptr %j, align 4, !dbg !3707
  %conv = sext i32 %3 to i64, !dbg !3707
  %call = call i64 @find_next_bit(ptr noundef %arraydecay1, i64 noundef 64, i64 noundef %conv) #18, !dbg !3707
  %conv2 = trunc i64 %call to i32, !dbg !3707
  store i32 %conv2, ptr %j, align 4, !dbg !3707
  %4 = load i32, ptr %j, align 4, !dbg !3707
  %cmp = icmp ult i32 %4, 64, !dbg !3707
  br i1 %cmp, label %for.body, label %for.end, !dbg !3706

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_cdbs) #17, !dbg !3708
  call void @llvm.dbg.declare(metadata ptr %j_cdbs, metadata !3690, metadata !DIExpression()), !dbg !3709
  br label %do.body, !dbg !3710

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3711
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3694, metadata !DIExpression()), !dbg !3711
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3711
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !3711
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3710
  br label %do.cond, !dbg !3711

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3711

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3712
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3697, metadata !DIExpression()), !dbg !3712
  store i64 ptrtoint (ptr @cpu_dbs to i64), ptr %__ptr, align 8, !dbg !3712
  %6 = load i64, ptr %__ptr, align 8, !dbg !3712
  %7 = load i32, ptr %j, align 4, !dbg !3712
  %idxprom = sext i32 %7 to i64, !dbg !3712
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3712
  %8 = load i64, ptr %arrayidx, align 8, !dbg !3712
  %add = add i64 %6, %8, !dbg !3712
  %9 = inttoptr i64 %add to ptr, !dbg !3712
  store ptr %9, ptr %tmp4, align 8, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3710
  %10 = load ptr, ptr %tmp4, align 8, !dbg !3712
  store ptr %10, ptr %tmp, align 8, !dbg !3711
  %11 = load ptr, ptr %tmp, align 8, !dbg !3710
  store ptr %11, ptr %j_cdbs, align 8, !dbg !3709
  %12 = load ptr, ptr %j_cdbs, align 8, !dbg !3713
  %policy_dbs5 = getelementptr inbounds %struct.cpu_dbs_info, ptr %12, i32 0, i32 5, !dbg !3714
  store ptr null, ptr %policy_dbs5, align 8, !dbg !3715
  %13 = load ptr, ptr %j_cdbs, align 8, !dbg !3716
  %update_util = getelementptr inbounds %struct.cpu_dbs_info, ptr %13, i32 0, i32 4, !dbg !3717
  %func = getelementptr inbounds %struct.update_util_data, ptr %update_util, i32 0, i32 0, !dbg !3718
  store ptr null, ptr %func, align 8, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_cdbs) #17, !dbg !3720
  br label %for.inc, !dbg !3721

for.inc:                                          ; preds = %do.end
  %14 = load i32, ptr %j, align 4, !dbg !3707
  %inc = add i32 %14, 1, !dbg !3707
  store i32 %inc, ptr %j, align 4, !dbg !3707
  br label %for.cond, !dbg !3707, !llvm.loop !3722

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %gov.addr, align 8, !dbg !3724
  %free = getelementptr inbounds %struct.dbs_governor, ptr %15, i32 0, i32 5, !dbg !3725
  %16 = load ptr, ptr %free, align 8, !dbg !3725
  %17 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3726
  call void %16(ptr noundef %17) #18, !dbg !3724
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3727
  ret void, !dbg !3727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpufreq_dbs_governor_exit(ptr noundef %policy) #0 align 16 !dbg !3728 {
entry:
  %policy.addr = alloca ptr, align 8
  %gov = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3730, metadata !DIExpression()), !dbg !3735
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #17, !dbg !3736
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !3731, metadata !DIExpression()), !dbg !3737
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3738
  %call = call ptr @dbs_governor_of(ptr noundef %0) #18, !dbg !3739
  store ptr %call, ptr %gov, align 8, !dbg !3737
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3740
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3732, metadata !DIExpression()), !dbg !3741
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3742
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 14, !dbg !3743
  %2 = load ptr, ptr %governor_data, align 8, !dbg !3743
  store ptr %2, ptr %policy_dbs, align 8, !dbg !3741
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #17, !dbg !3744
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !3733, metadata !DIExpression()), !dbg !3745
  %3 = load ptr, ptr %policy_dbs, align 8, !dbg !3746
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 7, !dbg !3747
  %4 = load ptr, ptr %dbs_data1, align 8, !dbg !3747
  store ptr %4, ptr %dbs_data, align 8, !dbg !3745
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !3748
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3734, metadata !DIExpression()), !dbg !3749
  call void @mutex_lock(ptr noundef @gov_dbs_data_mutex) #18, !dbg !3750
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !3751
  %attr_set = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 0, !dbg !3752
  %6 = load ptr, ptr %policy_dbs, align 8, !dbg !3753
  %list = getelementptr inbounds %struct.policy_dbs_info, ptr %6, i32 0, i32 8, !dbg !3754
  %call2 = call i32 @gov_attr_set_put(ptr noundef %attr_set, ptr noundef %list) #18, !dbg !3755
  store i32 %call2, ptr %count, align 4, !dbg !3756
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !3757
  %governor_data3 = getelementptr inbounds %struct.cpufreq_policy, ptr %7, i32 0, i32 14, !dbg !3758
  store ptr null, ptr %governor_data3, align 8, !dbg !3759
  %8 = load i32, ptr %count, align 4, !dbg !3760
  %tobool = icmp ne i32 %8, 0, !dbg !3760
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3762

land.lhs.true:                                    ; preds = %entry
  %call4 = call zeroext i1 @have_governor_per_policy() #18, !dbg !3763
  br i1 %call4, label %if.end, label %if.then, !dbg !3764

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %gov, align 8, !dbg !3765
  %gdbs_data = getelementptr inbounds %struct.dbs_governor, ptr %9, i32 0, i32 2, !dbg !3766
  store ptr null, ptr %gdbs_data, align 8, !dbg !3767
  br label %if.end, !dbg !3765

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %policy_dbs, align 8, !dbg !3768
  %11 = load ptr, ptr %gov, align 8, !dbg !3769
  call void @free_policy_dbs_info(ptr noundef %10, ptr noundef %11) #18, !dbg !3770
  call void @mutex_unlock(ptr noundef @gov_dbs_data_mutex) #18, !dbg !3771
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !3772
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #17, !dbg !3772
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3772
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #17, !dbg !3772
  ret void, !dbg !3772
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3773 dso_local i32 @gov_attr_set_put(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_dbs_governor_start(ptr noundef %policy) #0 align 16 !dbg !3776 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %gov = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %sampling_rate = alloca i32, align 4
  %ignore_nice = alloca i32, align 4
  %j = alloca i32, align 4
  %io_busy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j_cdbs = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %__vpp_verify13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__ptr17 = alloca i64, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3778, metadata !DIExpression()), !dbg !3801
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #17, !dbg !3802
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !3779, metadata !DIExpression()), !dbg !3803
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3804
  %call = call ptr @dbs_governor_of(ptr noundef %0) #18, !dbg !3805
  store ptr %call, ptr %gov, align 8, !dbg !3803
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3780, metadata !DIExpression()), !dbg !3807
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3808
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 14, !dbg !3809
  %2 = load ptr, ptr %governor_data, align 8, !dbg !3809
  store ptr %2, ptr %policy_dbs, align 8, !dbg !3807
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #17, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !3781, metadata !DIExpression()), !dbg !3811
  %3 = load ptr, ptr %policy_dbs, align 8, !dbg !3812
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 7, !dbg !3813
  %4 = load ptr, ptr %dbs_data1, align 8, !dbg !3813
  store ptr %4, ptr %dbs_data, align 8, !dbg !3811
  call void @llvm.lifetime.start.p0(i64 4, ptr %sampling_rate) #17, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %sampling_rate, metadata !3782, metadata !DIExpression()), !dbg !3815
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignore_nice) #17, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %ignore_nice, metadata !3783, metadata !DIExpression()), !dbg !3816
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3784, metadata !DIExpression()), !dbg !3817
  call void @llvm.lifetime.start.p0(i64 4, ptr %io_busy) #17, !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %io_busy, metadata !3785, metadata !DIExpression()), !dbg !3819
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !3820
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %5, i32 0, i32 9, !dbg !3822
  %6 = load i32, ptr %cur, align 4, !dbg !3822
  %tobool = icmp ne i32 %6, 0, !dbg !3820
  br i1 %tobool, label %if.end, label %if.then, !dbg !3823

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3824

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !3825
  %call2 = call zeroext i1 @policy_is_shared(ptr noundef %7) #18, !dbg !3826
  %8 = load ptr, ptr %policy_dbs, align 8, !dbg !3827
  %is_shared = getelementptr inbounds %struct.policy_dbs_info, ptr %8, i32 0, i32 11, !dbg !3828
  %frombool = zext i1 %call2 to i8, !dbg !3829
  store i8 %frombool, ptr %is_shared, align 8, !dbg !3829
  %9 = load ptr, ptr %policy_dbs, align 8, !dbg !3830
  %rate_mult = getelementptr inbounds %struct.policy_dbs_info, ptr %9, i32 0, i32 9, !dbg !3831
  store i32 1, ptr %rate_mult, align 8, !dbg !3832
  %10 = load ptr, ptr %dbs_data, align 8, !dbg !3833
  %sampling_rate3 = getelementptr inbounds %struct.dbs_data, ptr %10, i32 0, i32 4, !dbg !3834
  %11 = load i32, ptr %sampling_rate3, align 4, !dbg !3834
  store i32 %11, ptr %sampling_rate, align 4, !dbg !3835
  %12 = load ptr, ptr %dbs_data, align 8, !dbg !3836
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %12, i32 0, i32 3, !dbg !3837
  %13 = load i32, ptr %ignore_nice_load, align 8, !dbg !3837
  store i32 %13, ptr %ignore_nice, align 4, !dbg !3838
  %14 = load ptr, ptr %dbs_data, align 8, !dbg !3839
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %14, i32 0, i32 7, !dbg !3840
  %15 = load i32, ptr %io_is_busy, align 8, !dbg !3840
  store i32 %15, ptr %io_busy, align 4, !dbg !3841
  store i32 0, ptr %j, align 4, !dbg !3842
  br label %for.cond, !dbg !3842

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !3843
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %16, i32 0, i32 0, !dbg !3843
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3843
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3843
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3843
  %17 = load i32, ptr %j, align 4, !dbg !3843
  %conv = zext i32 %17 to i64, !dbg !3843
  %call5 = call i64 @find_next_bit(ptr noundef %arraydecay4, i64 noundef 64, i64 noundef %conv) #18, !dbg !3843
  %conv6 = trunc i64 %call5 to i32, !dbg !3843
  store i32 %conv6, ptr %j, align 4, !dbg !3843
  %18 = load i32, ptr %j, align 4, !dbg !3843
  %cmp = icmp ult i32 %18, 64, !dbg !3843
  br i1 %cmp, label %for.body, label %for.end, !dbg !3842

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_cdbs) #17, !dbg !3844
  call void @llvm.dbg.declare(metadata ptr %j_cdbs, metadata !3786, metadata !DIExpression()), !dbg !3845
  br label %do.body, !dbg !3846

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3847
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3790, metadata !DIExpression()), !dbg !3847
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3847
  %19 = load ptr, ptr %__vpp_verify, align 8, !dbg !3847
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3846
  br label %do.cond, !dbg !3847

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3847

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3793, metadata !DIExpression()), !dbg !3848
  store i64 ptrtoint (ptr @cpu_dbs to i64), ptr %__ptr, align 8, !dbg !3848
  %20 = load i64, ptr %__ptr, align 8, !dbg !3848
  %21 = load i32, ptr %j, align 4, !dbg !3848
  %idxprom = zext i32 %21 to i64, !dbg !3848
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3848
  %22 = load i64, ptr %arrayidx, align 8, !dbg !3848
  %add = add i64 %20, %22, !dbg !3848
  %23 = inttoptr i64 %add to ptr, !dbg !3848
  store ptr %23, ptr %tmp8, align 8, !dbg !3848
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3846
  %24 = load ptr, ptr %tmp8, align 8, !dbg !3848
  store ptr %24, ptr %tmp, align 8, !dbg !3847
  %25 = load ptr, ptr %tmp, align 8, !dbg !3846
  store ptr %25, ptr %j_cdbs, align 8, !dbg !3845
  %26 = load i32, ptr %j, align 4, !dbg !3849
  %27 = load ptr, ptr %j_cdbs, align 8, !dbg !3850
  %prev_update_time = getelementptr inbounds %struct.cpu_dbs_info, ptr %27, i32 0, i32 1, !dbg !3851
  %28 = load i32, ptr %io_busy, align 4, !dbg !3852
  %call9 = call i64 @get_cpu_idle_time(i32 noundef %26, ptr noundef %prev_update_time, i32 noundef %28) #18, !dbg !3853
  %29 = load ptr, ptr %j_cdbs, align 8, !dbg !3854
  %prev_cpu_idle = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 0, !dbg !3855
  store i64 %call9, ptr %prev_cpu_idle, align 8, !dbg !3856
  %30 = load ptr, ptr %j_cdbs, align 8, !dbg !3857
  %prev_load = getelementptr inbounds %struct.cpu_dbs_info, ptr %30, i32 0, i32 3, !dbg !3858
  store i32 0, ptr %prev_load, align 8, !dbg !3859
  %31 = load i32, ptr %ignore_nice, align 4, !dbg !3860
  %tobool10 = icmp ne i32 %31, 0, !dbg !3860
  br i1 %tobool10, label %if.then11, label %if.end23, !dbg !3861

if.then11:                                        ; preds = %do.end
  br label %do.body12, !dbg !3862

do.body12:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #17, !dbg !3863
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !3795, metadata !DIExpression()), !dbg !3863
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !3863
  %32 = load ptr, ptr %__vpp_verify13, align 8, !dbg !3863
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #17, !dbg !3862
  br label %do.cond14, !dbg !3863

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !3863

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr17) #17, !dbg !3864
  call void @llvm.dbg.declare(metadata ptr %__ptr17, metadata !3799, metadata !DIExpression()), !dbg !3864
  store i64 ptrtoint (ptr @kernel_cpustat to i64), ptr %__ptr17, align 8, !dbg !3864
  %33 = load i64, ptr %__ptr17, align 8, !dbg !3864
  %34 = load i32, ptr %j, align 4, !dbg !3864
  %idxprom19 = zext i32 %34 to i64, !dbg !3864
  %arrayidx20 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom19, !dbg !3864
  %35 = load i64, ptr %arrayidx20, align 8, !dbg !3864
  %add21 = add i64 %33, %35, !dbg !3864
  %36 = inttoptr i64 %add21 to ptr, !dbg !3864
  store ptr %36, ptr %tmp18, align 8, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr17) #17, !dbg !3862
  %37 = load ptr, ptr %tmp18, align 8, !dbg !3864
  store ptr %37, ptr %tmp16, align 8, !dbg !3863
  %38 = load ptr, ptr %tmp16, align 8, !dbg !3862
  %39 = load i32, ptr %j, align 4, !dbg !3865
  %call22 = call i64 @kcpustat_field(ptr noundef %38, i32 noundef 1, i32 noundef %39) #18, !dbg !3866
  %40 = load ptr, ptr %j_cdbs, align 8, !dbg !3867
  %prev_cpu_nice = getelementptr inbounds %struct.cpu_dbs_info, ptr %40, i32 0, i32 2, !dbg !3868
  store i64 %call22, ptr %prev_cpu_nice, align 8, !dbg !3869
  br label %if.end23, !dbg !3867

if.end23:                                         ; preds = %do.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_cdbs) #17, !dbg !3870
  br label %for.inc, !dbg !3871

for.inc:                                          ; preds = %if.end23
  %41 = load i32, ptr %j, align 4, !dbg !3843
  %inc = add i32 %41, 1, !dbg !3843
  store i32 %inc, ptr %j, align 4, !dbg !3843
  br label %for.cond, !dbg !3843, !llvm.loop !3872

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %gov, align 8, !dbg !3874
  %start = getelementptr inbounds %struct.dbs_governor, ptr %42, i32 0, i32 8, !dbg !3875
  %43 = load ptr, ptr %start, align 8, !dbg !3875
  %44 = load ptr, ptr %policy.addr, align 8, !dbg !3876
  call void %43(ptr noundef %44) #18, !dbg !3874
  %45 = load ptr, ptr %policy_dbs, align 8, !dbg !3877
  %46 = load i32, ptr %sampling_rate, align 4, !dbg !3878
  call void @gov_set_update_util(ptr noundef %45, i32 noundef %46) #18, !dbg !3879
  store i32 0, ptr %retval, align 4, !dbg !3880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3880

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %io_busy) #17, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignore_nice) #17, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 4, ptr %sampling_rate) #17, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #17, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #17, !dbg !3881
  %47 = load i32, ptr %retval, align 4, !dbg !3881
  ret i32 %47, !dbg !3881
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @policy_is_shared(ptr noundef %policy) #3 align 16 !dbg !3882 {
entry:
  %policy.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3886, metadata !DIExpression()), !dbg !3887
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3888
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 0, !dbg !3889
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3888
  %call = call i32 @cpumask_weight(ptr noundef %arraydecay) #18, !dbg !3890
  %cmp = icmp ugt i32 %call, 1, !dbg !3891
  ret i1 %cmp, !dbg !3892
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gov_set_update_util(ptr noundef %policy_dbs, i32 noundef %delay_us) #0 align 16 !dbg !3893 {
entry:
  %policy_dbs.addr = alloca ptr, align 8
  %delay_us.addr = alloca i32, align 4
  %policy = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %cdbs = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %policy_dbs, ptr %policy_dbs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy_dbs.addr, metadata !3895, metadata !DIExpression()), !dbg !3908
  store i32 %delay_us, ptr %delay_us.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %delay_us.addr, metadata !3896, metadata !DIExpression()), !dbg !3909
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #17, !dbg !3910
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !3897, metadata !DIExpression()), !dbg !3911
  %0 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3912
  %policy1 = getelementptr inbounds %struct.policy_dbs_info, ptr %0, i32 0, i32 0, !dbg !3913
  %1 = load ptr, ptr %policy1, align 8, !dbg !3913
  store ptr %1, ptr %policy, align 8, !dbg !3911
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #17, !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3898, metadata !DIExpression()), !dbg !3915
  %2 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3916
  %3 = load i32, ptr %delay_us.addr, align 4, !dbg !3917
  call void @gov_update_sample_delay(ptr noundef %2, i32 noundef %3) #18, !dbg !3918
  %4 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3919
  %last_sample_time = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 2, !dbg !3920
  store i64 0, ptr %last_sample_time, align 8, !dbg !3921
  store i32 0, ptr %cpu, align 4, !dbg !3922
  br label %for.cond, !dbg !3922

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %policy, align 8, !dbg !3923
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %5, i32 0, i32 0, !dbg !3923
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3923
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3923
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3923
  %6 = load i32, ptr %cpu, align 4, !dbg !3923
  %conv = sext i32 %6 to i64, !dbg !3923
  %call = call i64 @find_next_bit(ptr noundef %arraydecay2, i64 noundef 64, i64 noundef %conv) #18, !dbg !3923
  %conv3 = trunc i64 %call to i32, !dbg !3923
  store i32 %conv3, ptr %cpu, align 4, !dbg !3923
  %7 = load i32, ptr %cpu, align 4, !dbg !3923
  %cmp = icmp ult i32 %7, 64, !dbg !3923
  br i1 %cmp, label %for.body, label %for.end, !dbg !3922

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdbs) #17, !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %cdbs, metadata !3899, metadata !DIExpression()), !dbg !3925
  br label %do.body, !dbg !3926

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3903, metadata !DIExpression()), !dbg !3927
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3927
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !3927
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3926
  br label %do.cond, !dbg !3927

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3927

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3928
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3906, metadata !DIExpression()), !dbg !3928
  store i64 ptrtoint (ptr @cpu_dbs to i64), ptr %__ptr, align 8, !dbg !3928
  %9 = load i64, ptr %__ptr, align 8, !dbg !3928
  %10 = load i32, ptr %cpu, align 4, !dbg !3928
  %idxprom = sext i32 %10 to i64, !dbg !3928
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3928
  %11 = load i64, ptr %arrayidx, align 8, !dbg !3928
  %add = add i64 %9, %11, !dbg !3928
  %12 = inttoptr i64 %add to ptr, !dbg !3928
  store ptr %12, ptr %tmp5, align 8, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3926
  %13 = load ptr, ptr %tmp5, align 8, !dbg !3928
  store ptr %13, ptr %tmp, align 8, !dbg !3927
  %14 = load ptr, ptr %tmp, align 8, !dbg !3926
  store ptr %14, ptr %cdbs, align 8, !dbg !3925
  %15 = load i32, ptr %cpu, align 4, !dbg !3929
  %16 = load ptr, ptr %cdbs, align 8, !dbg !3930
  %update_util = getelementptr inbounds %struct.cpu_dbs_info, ptr %16, i32 0, i32 4, !dbg !3931
  call void @cpufreq_add_update_util_hook(i32 noundef %15, ptr noundef %update_util, ptr noundef @dbs_update_util_handler) #18, !dbg !3932
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdbs) #17, !dbg !3933
  br label %for.inc, !dbg !3934

for.inc:                                          ; preds = %do.end
  %17 = load i32, ptr %cpu, align 4, !dbg !3923
  %inc = add i32 %17, 1, !dbg !3923
  store i32 %inc, ptr %cpu, align 4, !dbg !3923
  br label %for.cond, !dbg !3923, !llvm.loop !3935

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #17, !dbg !3937
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #17, !dbg !3937
  ret void, !dbg !3937
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpufreq_dbs_governor_stop(ptr noundef %policy) #0 align 16 !dbg !3938 {
entry:
  %policy.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3940, metadata !DIExpression()), !dbg !3942
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !3943
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3941, metadata !DIExpression()), !dbg !3944
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3945
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !3946
  %1 = load ptr, ptr %governor_data, align 8, !dbg !3946
  store ptr %1, ptr %policy_dbs, align 8, !dbg !3944
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !3947
  %policy1 = getelementptr inbounds %struct.policy_dbs_info, ptr %2, i32 0, i32 0, !dbg !3948
  %3 = load ptr, ptr %policy1, align 8, !dbg !3948
  call void @gov_clear_update_util(ptr noundef %3) #18, !dbg !3949
  %4 = load ptr, ptr %policy_dbs, align 8, !dbg !3950
  %irq_work = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 5, !dbg !3951
  call void @irq_work_sync(ptr noundef %irq_work) #18, !dbg !3952
  %5 = load ptr, ptr %policy_dbs, align 8, !dbg !3953
  %work = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 6, !dbg !3954
  %call = call zeroext i1 @cancel_work_sync(ptr noundef %work) #18, !dbg !3955
  %6 = load ptr, ptr %policy_dbs, align 8, !dbg !3956
  %work_count = getelementptr inbounds %struct.policy_dbs_info, ptr %6, i32 0, i32 4, !dbg !3957
  call void @atomic_set(ptr noundef %work_count, i32 noundef 0) #18, !dbg !3958
  %7 = load ptr, ptr %policy_dbs, align 8, !dbg !3959
  %work_in_progress = getelementptr inbounds %struct.policy_dbs_info, ptr %7, i32 0, i32 12, !dbg !3960
  store i8 0, ptr %work_in_progress, align 1, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !3962
  ret void, !dbg !3962
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gov_clear_update_util(ptr noundef %policy) #3 align 16 !dbg !3963 {
entry:
  %policy.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3965, metadata !DIExpression()), !dbg !3967
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3968
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3966, metadata !DIExpression()), !dbg !3969
  store i32 0, ptr %i, align 4, !dbg !3970
  br label %for.cond, !dbg !3970

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3972
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 0, !dbg !3972
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3972
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3972
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3972
  %1 = load i32, ptr %i, align 4, !dbg !3972
  %conv = sext i32 %1 to i64, !dbg !3972
  %call = call i64 @find_next_bit(ptr noundef %arraydecay1, i64 noundef 64, i64 noundef %conv) #18, !dbg !3972
  %conv2 = trunc i64 %call to i32, !dbg !3972
  store i32 %conv2, ptr %i, align 4, !dbg !3972
  %2 = load i32, ptr %i, align 4, !dbg !3972
  %cmp = icmp ult i32 %2, 64, !dbg !3972
  br i1 %cmp, label %for.body, label %for.end, !dbg !3970

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !3974
  call void @cpufreq_remove_update_util_hook(i32 noundef %3) #18, !dbg !3975
  br label %for.inc, !dbg !3975

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !3972
  %inc = add i32 %4, 1, !dbg !3972
  store i32 %inc, ptr %i, align 4, !dbg !3972
  br label %for.cond, !dbg !3972, !llvm.loop !3976

for.end:                                          ; preds = %for.cond
  call void @synchronize_rcu() #18, !dbg !3978
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3979
  ret void, !dbg !3979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3980 dso_local void @irq_work_sync(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3981 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !3984 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3990, metadata !DIExpression()), !dbg !3992
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3991, metadata !DIExpression()), !dbg !3993
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3994
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !3995
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3996
  %2 = load i32, ptr %i.addr, align 4, !dbg !3997
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !3998
  ret void, !dbg !3999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpufreq_dbs_governor_limits(ptr noundef %policy) #0 align 16 !dbg !4000 {
entry:
  %policy.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4002, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4003, metadata !DIExpression()), !dbg !4007
  call void @mutex_lock(ptr noundef @gov_dbs_data_mutex) #18, !dbg !4008
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4009
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !4010
  %1 = load ptr, ptr %governor_data, align 8, !dbg !4010
  store ptr %1, ptr %policy_dbs, align 8, !dbg !4011
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !4012
  %tobool = icmp ne ptr %2, null, !dbg !4012
  br i1 %tobool, label %if.end, label %if.then, !dbg !4014

if.then:                                          ; preds = %entry
  br label %out, !dbg !4015

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %policy_dbs, align 8, !dbg !4016
  %update_mutex = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 1, !dbg !4017
  call void @mutex_lock(ptr noundef %update_mutex) #18, !dbg !4018
  %4 = load ptr, ptr %policy.addr, align 8, !dbg !4019
  call void @cpufreq_policy_apply_limits(ptr noundef %4) #18, !dbg !4020
  %5 = load ptr, ptr %policy_dbs, align 8, !dbg !4021
  call void @gov_update_sample_delay(ptr noundef %5, i32 noundef 0) #18, !dbg !4022
  %6 = load ptr, ptr %policy_dbs, align 8, !dbg !4023
  %update_mutex1 = getelementptr inbounds %struct.policy_dbs_info, ptr %6, i32 0, i32 1, !dbg !4024
  call void @mutex_unlock(ptr noundef %update_mutex1) #18, !dbg !4025
  br label %out, !dbg !4025

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !4004), !dbg !4026
  call void @mutex_unlock(ptr noundef @gov_dbs_data_mutex) #18, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !4028
  ret void, !dbg !4028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpufreq_policy_apply_limits(ptr noundef %policy) #3 align 16 !dbg !4029 {
entry:
  %policy.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4033
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8, !dbg !4035
  %1 = load i32, ptr %max, align 8, !dbg !4035
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !4036
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 9, !dbg !4037
  %3 = load i32, ptr %cur, align 4, !dbg !4037
  %cmp = icmp ult i32 %1, %3, !dbg !4038
  br i1 %cmp, label %if.then, label %if.else, !dbg !4039

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %policy.addr, align 8, !dbg !4040
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !4041
  %max1 = getelementptr inbounds %struct.cpufreq_policy, ptr %5, i32 0, i32 8, !dbg !4042
  %6 = load i32, ptr %max1, align 8, !dbg !4042
  %call = call i32 @__cpufreq_driver_target(ptr noundef %4, i32 noundef %6, i32 noundef 5) #18, !dbg !4043
  br label %if.end7, !dbg !4043

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !4044
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %7, i32 0, i32 7, !dbg !4046
  %8 = load i32, ptr %min, align 4, !dbg !4046
  %9 = load ptr, ptr %policy.addr, align 8, !dbg !4047
  %cur2 = getelementptr inbounds %struct.cpufreq_policy, ptr %9, i32 0, i32 9, !dbg !4048
  %10 = load i32, ptr %cur2, align 4, !dbg !4048
  %cmp3 = icmp ugt i32 %8, %10, !dbg !4049
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4050

if.then4:                                         ; preds = %if.else
  %11 = load ptr, ptr %policy.addr, align 8, !dbg !4051
  %12 = load ptr, ptr %policy.addr, align 8, !dbg !4052
  %min5 = getelementptr inbounds %struct.cpufreq_policy, ptr %12, i32 0, i32 7, !dbg !4053
  %13 = load i32, ptr %min5, align 4, !dbg !4053
  %call6 = call i32 @__cpufreq_driver_target(ptr noundef %11, i32 noundef %13, i32 noundef 4) #18, !dbg !4054
  br label %if.end, !dbg !4054

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !4055
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #8 align 16 !dbg !4056 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4061, metadata !DIExpression()), !dbg !4062
  %0 = load i64, ptr %word.addr, align 8, !dbg !4063
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !4064, !srcloc !4065
  store i64 %1, ptr %word.addr, align 8, !dbg !4064
  %2 = load i64, ptr %word.addr, align 8, !dbg !4066
  ret i64 %2, !dbg !4067
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4068 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !4069 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !4073, metadata !DIExpression()), !dbg !4076
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !4074, metadata !DIExpression()), !dbg !4077
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !4075, metadata !DIExpression()), !dbg !4078
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !4079
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !4080
  %conv = zext i32 %1 to i64, !dbg !4080
  %rem = urem i64 %0, %conv, !dbg !4081
  %conv1 = trunc i64 %rem to i32, !dbg !4079
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !4082
  store i32 %conv1, ptr %2, align 4, !dbg !4083
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !4084
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !4085
  %conv2 = zext i32 %4 to i64, !dbg !4085
  %div = udiv i64 %3, %conv2, !dbg !4086
  ret i64 %div, !dbg !4087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4088 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_irq_work(ptr noundef %work, ptr noundef %func) #3 align 16 !dbg !4092 {
entry:
  %work.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.irq_work, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4096, metadata !DIExpression()), !dbg !4098
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !4097, metadata !DIExpression()), !dbg !4099
  %0 = load ptr, ptr %work.addr, align 8, !dbg !4100
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 32, i1 false), !dbg !4101
  %func1 = getelementptr inbounds %struct.irq_work, ptr %.compoundliteral, i32 0, i32 1, !dbg !4101
  %1 = load ptr, ptr %func.addr, align 8, !dbg !4101
  store ptr %1, ptr %func1, align 8, !dbg !4101
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !4101
  ret void, !dbg !4102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbs_irq_work(ptr noundef %irq_work) #0 align 16 !dbg !4103 {
entry:
  %irq_work.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %irq_work, ptr %irq_work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irq_work.addr, metadata !4105, metadata !DIExpression()), !dbg !4116
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !4117
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4106, metadata !DIExpression()), !dbg !4118
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4119
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4107, metadata !DIExpression()), !dbg !4119
  %0 = load ptr, ptr %irq_work.addr, align 8, !dbg !4119
  store ptr %0, ptr %__mptr, align 8, !dbg !4119
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4119
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !4119
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4119
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4120
  %2 = load ptr, ptr %tmp, align 8, !dbg !4119
  store ptr %2, ptr %policy_dbs, align 8, !dbg !4121
  call void @__this_cpu_preempt_check(ptr noundef @.str.6) #18, !dbg !4122
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #17, !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4109, metadata !DIExpression()), !dbg !4123
  br label %do.body, !dbg !4123

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4124
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4112, metadata !DIExpression()), !dbg !4124
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4124
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !4124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4123
  br label %do.cond, !dbg !4124

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4124

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #17, !dbg !4125
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4114, metadata !DIExpression()), !dbg !4125
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !4125, !srcloc !4126
  store i32 %4, ptr %pfo_val__, align 4, !dbg !4125
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !4125
  %conv = zext i32 %5 to i64, !dbg !4125
  %conv3 = trunc i64 %conv to i32, !dbg !4125
  store i32 %conv3, ptr %tmp2, align 4, !dbg !4125
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #17, !dbg !4123
  %6 = load i32, ptr %tmp2, align 4, !dbg !4125
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !4123
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !4123
  store i32 %7, ptr %tmp4, align 4, !dbg !4123
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #17, !dbg !4122
  %8 = load i32, ptr %tmp4, align 4, !dbg !4123
  store i32 %8, ptr %tmp1, align 4, !dbg !4122
  %9 = load i32, ptr %tmp1, align 4, !dbg !4122
  %10 = load ptr, ptr %policy_dbs, align 8, !dbg !4127
  %work = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 6, !dbg !4128
  %call = call zeroext i1 @schedule_work_on(i32 noundef %9, ptr noundef %work) #18, !dbg !4129
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !4130
  ret void, !dbg !4130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !4131 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4135, metadata !DIExpression()), !dbg !4137
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !4136, metadata !DIExpression()), !dbg !4138
  ret void, !dbg !4139
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !4140 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4145, metadata !DIExpression()), !dbg !4146
  br label %do.body, !dbg !4147

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4148

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4150

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4148

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4152
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4152
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4152
  store volatile ptr %0, ptr %next, align 8, !dbg !4152
  br label %do.end3, !dbg !4152

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4148

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4154

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4155

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4157

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4155

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4159
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4159
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4159
  store volatile ptr %2, ptr %prev, align 8, !dbg !4159
  br label %do.end9, !dbg !4159

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4155

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbs_work_handler(ptr noundef %work) #0 align 16 !dbg !4162 {
entry:
  %work.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %policy = alloca ptr, align 8
  %gov = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4164, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !4171
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4165, metadata !DIExpression()), !dbg !4172
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #17, !dbg !4173
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !4166, metadata !DIExpression()), !dbg !4174
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #17, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !4167, metadata !DIExpression()), !dbg !4176
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4168, metadata !DIExpression()), !dbg !4177
  %0 = load ptr, ptr %work.addr, align 8, !dbg !4177
  store ptr %0, ptr %__mptr, align 8, !dbg !4177
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4177
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !4177
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4178
  %2 = load ptr, ptr %tmp, align 8, !dbg !4177
  store ptr %2, ptr %policy_dbs, align 8, !dbg !4179
  %3 = load ptr, ptr %policy_dbs, align 8, !dbg !4180
  %policy1 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 0, !dbg !4181
  %4 = load ptr, ptr %policy1, align 8, !dbg !4181
  store ptr %4, ptr %policy, align 8, !dbg !4182
  %5 = load ptr, ptr %policy, align 8, !dbg !4183
  %call = call ptr @dbs_governor_of(ptr noundef %5) #18, !dbg !4184
  store ptr %call, ptr %gov, align 8, !dbg !4185
  %6 = load ptr, ptr %policy_dbs, align 8, !dbg !4186
  %update_mutex = getelementptr inbounds %struct.policy_dbs_info, ptr %6, i32 0, i32 1, !dbg !4187
  call void @mutex_lock(ptr noundef %update_mutex) #18, !dbg !4188
  %7 = load ptr, ptr %policy_dbs, align 8, !dbg !4189
  %8 = load ptr, ptr %gov, align 8, !dbg !4190
  %gov_dbs_update = getelementptr inbounds %struct.dbs_governor, ptr %8, i32 0, i32 3, !dbg !4191
  %9 = load ptr, ptr %gov_dbs_update, align 8, !dbg !4191
  %10 = load ptr, ptr %policy, align 8, !dbg !4192
  %call2 = call i32 %9(ptr noundef %10) #18, !dbg !4190
  call void @gov_update_sample_delay(ptr noundef %7, i32 noundef %call2) #18, !dbg !4193
  %11 = load ptr, ptr %policy_dbs, align 8, !dbg !4194
  %update_mutex3 = getelementptr inbounds %struct.policy_dbs_info, ptr %11, i32 0, i32 1, !dbg !4195
  call void @mutex_unlock(ptr noundef %update_mutex3) #18, !dbg !4196
  %12 = load ptr, ptr %policy_dbs, align 8, !dbg !4197
  %work_count = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 4, !dbg !4198
  call void @atomic_set(ptr noundef %work_count, i32 noundef 0) #18, !dbg !4199
  br label %do.body, !dbg !4200

do.body:                                          ; preds = %entry
  br label %do.body4, !dbg !4201

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4203

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4203

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4201, !srcloc !4205
  br label %do.cond5, !dbg !4201

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !4201

do.end6:                                          ; preds = %do.cond5
  %13 = load ptr, ptr %policy_dbs, align 8, !dbg !4206
  %work_in_progress = getelementptr inbounds %struct.policy_dbs_info, ptr %13, i32 0, i32 12, !dbg !4207
  store i8 0, ptr %work_in_progress, align 1, !dbg !4208
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #17, !dbg !4209
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #17, !dbg !4209
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !4209
  ret void, !dbg !4209
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work_on(i32 noundef %cpu, ptr noundef %work) #3 align 16 !dbg !4210 {
entry:
  %cpu.addr = alloca i32, align 4
  %work.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4214, metadata !DIExpression()), !dbg !4216
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4215, metadata !DIExpression()), !dbg !4217
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4218
  %1 = load ptr, ptr @system_wq, align 8, !dbg !4219
  %2 = load ptr, ptr %work.addr, align 8, !dbg !4220
  %call = call zeroext i1 @queue_work_on(i32 noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !4221
  ret i1 %call, !dbg !4222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #8 align 16 !dbg !4223 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4228, metadata !DIExpression()), !dbg !4229
  ret void, !dbg !4230
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4231 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !4234 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4236, metadata !DIExpression()), !dbg !4241
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4237, metadata !DIExpression()), !dbg !4242
  %0 = load i64, ptr %size.addr, align 8, !dbg !4243
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4244
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4245

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4246
  %tobool = icmp ne i64 %2, 0, !dbg !4246
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4247

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4238, metadata !DIExpression()), !dbg !4249
  %3 = load i64, ptr %size.addr, align 8, !dbg !4250
  %cmp = icmp ugt i64 %3, 8192, !dbg !4252
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4253

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4254
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4255
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !4256
  store ptr %call, ptr %retval, align 8, !dbg !4257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4257

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4258
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !4258
  store i32 %call2, ptr %index, align 4, !dbg !4259
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4260
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4261
  %9 = ptrtoint ptr %8 to i64, !dbg !4261
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !4262
  %idxprom = zext i32 %call3 to i64, !dbg !4263
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4263
  %10 = load i32, ptr %index, align 4, !dbg !4264
  %idxprom4 = zext i32 %10 to i64, !dbg !4263
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4263
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4263
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4265
  %13 = load i64, ptr %size.addr, align 8, !dbg !4266
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !4267
  store ptr %call6, ptr %retval, align 8, !dbg !4268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4268

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !4269
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4270
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4271
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !4272
  store ptr %call8, ptr %retval, align 8, !dbg !4273
  br label %return, !dbg !4273

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4274
  ret ptr %16, !dbg !4274
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4275 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !4276 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4280, metadata !DIExpression()), !dbg !4282
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4281, metadata !DIExpression()), !dbg !4283
  %0 = load i64, ptr %size.addr, align 8, !dbg !4284
  %tobool = icmp ne i64 %0, 0, !dbg !4284
  br i1 %tobool, label %if.end, label %if.then, !dbg !4286

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4287
  br label %return, !dbg !4287

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4288
  %cmp = icmp ule i64 %1, 8, !dbg !4290
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4291

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4293
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4295
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4296

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4297
  %cmp4 = icmp ule i64 %3, 96, !dbg !4298
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4299

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4300
  br label %return, !dbg !4300

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4301
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4303
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4304

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4305
  %cmp9 = icmp ule i64 %5, 192, !dbg !4306
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4307

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4309
  %cmp12 = icmp ule i64 %6, 8, !dbg !4311
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4312

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4314
  %cmp15 = icmp ule i64 %7, 16, !dbg !4316
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4317

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4318
  br label %return, !dbg !4318

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4319
  %cmp18 = icmp ule i64 %8, 32, !dbg !4321
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4322

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4324
  %cmp21 = icmp ule i64 %9, 64, !dbg !4326
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4327

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4329
  %cmp24 = icmp ule i64 %10, 128, !dbg !4331
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4332

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4333
  br label %return, !dbg !4333

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4334
  %cmp27 = icmp ule i64 %11, 256, !dbg !4336
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4337

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4338
  br label %return, !dbg !4338

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4339
  %cmp30 = icmp ule i64 %12, 512, !dbg !4341
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4342

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4343
  br label %return, !dbg !4343

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4344
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4346
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4347

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4348
  br label %return, !dbg !4348

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4349
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4351
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4352

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4354
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4356
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4357

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4358
  br label %return, !dbg !4358

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4359
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4361
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4362

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4364
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4366
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4367

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4369
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4371
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4372

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4373
  br label %return, !dbg !4373

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4374
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4376
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4377

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4379
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4381
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4382

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4383
  br label %return, !dbg !4383

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4384
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4386
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4387

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4388
  br label %return, !dbg !4388

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4389
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4391
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4392

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4393
  br label %return, !dbg !4393

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4394
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4396
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4397

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4398
  br label %return, !dbg !4398

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4399
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4401
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4402

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4403
  br label %return, !dbg !4403

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4404, !range !4406, !noundef !422
  %tobool69 = trunc i8 %25 to i1, !dbg !4404
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4407

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4408

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #23, !dbg !4409, !srcloc !4412
  unreachable, !dbg !4409

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4413

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4414

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4415

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4417

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4415

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #17, !dbg !4419, !srcloc !4421
  br label %do.end75, !dbg !4419

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4415

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4422
  br label %return, !dbg !4422

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4423
  ret i32 %26, !dbg !4423
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4424 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !4430 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4434, metadata !DIExpression()), !dbg !4436
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4435, metadata !DIExpression()), !dbg !4437
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4438
  %and = and i32 %0, 17, !dbg !4438
  %cmp = icmp eq i32 %and, 0, !dbg !4438
  %lnot = xor i1 %cmp, true, !dbg !4438
  %lnot1 = xor i1 %lnot, true, !dbg !4438
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4438
  %conv = sext i32 %lnot.ext to i64, !dbg !4438
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4438
  %tobool = icmp ne i64 %expval, 0, !dbg !4438
  br i1 %tobool, label %if.then, label %if.end, !dbg !4440

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4441
  br label %return, !dbg !4441

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4442
  %and2 = and i32 %1, 1, !dbg !4444
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4444
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4445

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4446
  br label %return, !dbg !4446

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4447
  br label %return, !dbg !4447

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4449
  ret i32 %2, !dbg !4449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4450 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4451 dso_local void @__compiletime_assert_173() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_gov_attr_set(ptr noundef %kobj) #3 align 16 !dbg !4452 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4457, metadata !DIExpression()), !dbg !4460
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4460
  store ptr %0, ptr %__mptr, align 8, !dbg !4460
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4460
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4460
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4461
  %2 = load ptr, ptr %tmp, align 8, !dbg !4460
  ret ptr %2, !dbg !4462
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #3 align 16 !dbg !4463 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4465, metadata !DIExpression()), !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #3 align 16 !dbg !4468 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !4476
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4476
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4476
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #18, !dbg !4477
  ret i32 %call, !dbg !4478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #8 align 16 !dbg !4479 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4484, metadata !DIExpression()), !dbg !4486
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4485, metadata !DIExpression()), !dbg !4487
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4488
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4488
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4488

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !4488
  %cmp = icmp ule i32 %2, 64, !dbg !4488
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4488

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4488
  %cmp2 = icmp ugt i32 %3, 0, !dbg !4488
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4490

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !4491
  %5 = load i64, ptr %4, align 8, !dbg !4492
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !4493
  %sub = sub i32 0, %6, !dbg !4493
  %and = and i32 %sub, 63, !dbg !4493
  %sh_prom = zext i32 %and to i64, !dbg !4493
  %shr = lshr i64 -1, %sh_prom, !dbg !4493
  %and3 = and i64 %5, %shr, !dbg !4494
  %call = call i64 @hweight_long(i64 noundef %and3) #18, !dbg !4495
  %conv = trunc i64 %call to i32, !dbg !4495
  store i32 %conv, ptr %retval, align 4, !dbg !4496
  br label %return, !dbg !4496

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4497
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !4498
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #18, !dbg !4499
  store i32 %call4, ptr %retval, align 4, !dbg !4500
  br label %return, !dbg !4500

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !4501
  ret i32 %9, !dbg !4501
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #8 align 16 !dbg !4502 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  %0 = load i64, ptr %w.addr, align 8, !dbg !4507
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4507
  br i1 %1, label %cond.true, label %cond.false, !dbg !4507

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and = and i64 %2, 1, !dbg !4507
  %tobool = icmp ne i64 %and, 0, !dbg !4507
  %lnot = xor i1 %tobool, true, !dbg !4507
  %lnot1 = xor i1 %lnot, true, !dbg !4507
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4507
  %3 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and2 = and i64 %3, 2, !dbg !4507
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4507
  %lnot4 = xor i1 %tobool3, true, !dbg !4507
  %lnot6 = xor i1 %lnot4, true, !dbg !4507
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4507
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !4507
  %4 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and8 = and i64 %4, 4, !dbg !4507
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4507
  %lnot10 = xor i1 %tobool9, true, !dbg !4507
  %lnot12 = xor i1 %lnot10, true, !dbg !4507
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4507
  %add14 = add i32 %add, %lnot.ext13, !dbg !4507
  %5 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and15 = and i64 %5, 8, !dbg !4507
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4507
  %lnot17 = xor i1 %tobool16, true, !dbg !4507
  %lnot19 = xor i1 %lnot17, true, !dbg !4507
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4507
  %add21 = add i32 %add14, %lnot.ext20, !dbg !4507
  %6 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and22 = and i64 %6, 16, !dbg !4507
  %tobool23 = icmp ne i64 %and22, 0, !dbg !4507
  %lnot24 = xor i1 %tobool23, true, !dbg !4507
  %lnot26 = xor i1 %lnot24, true, !dbg !4507
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !4507
  %add28 = add i32 %add21, %lnot.ext27, !dbg !4507
  %7 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and29 = and i64 %7, 32, !dbg !4507
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4507
  %lnot31 = xor i1 %tobool30, true, !dbg !4507
  %lnot33 = xor i1 %lnot31, true, !dbg !4507
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !4507
  %add35 = add i32 %add28, %lnot.ext34, !dbg !4507
  %8 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and36 = and i64 %8, 64, !dbg !4507
  %tobool37 = icmp ne i64 %and36, 0, !dbg !4507
  %lnot38 = xor i1 %tobool37, true, !dbg !4507
  %lnot40 = xor i1 %lnot38, true, !dbg !4507
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !4507
  %add42 = add i32 %add35, %lnot.ext41, !dbg !4507
  %9 = load i64, ptr %w.addr, align 8, !dbg !4507
  %and43 = and i64 %9, 128, !dbg !4507
  %tobool44 = icmp ne i64 %and43, 0, !dbg !4507
  %lnot45 = xor i1 %tobool44, true, !dbg !4507
  %lnot47 = xor i1 %lnot45, true, !dbg !4507
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !4507
  %add49 = add i32 %add42, %lnot.ext48, !dbg !4507
  %10 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr = lshr i64 %10, 8, !dbg !4507
  %and50 = and i64 %shr, 1, !dbg !4507
  %tobool51 = icmp ne i64 %and50, 0, !dbg !4507
  %lnot52 = xor i1 %tobool51, true, !dbg !4507
  %lnot54 = xor i1 %lnot52, true, !dbg !4507
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4507
  %11 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr56 = lshr i64 %11, 8, !dbg !4507
  %and57 = and i64 %shr56, 2, !dbg !4507
  %tobool58 = icmp ne i64 %and57, 0, !dbg !4507
  %lnot59 = xor i1 %tobool58, true, !dbg !4507
  %lnot61 = xor i1 %lnot59, true, !dbg !4507
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !4507
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !4507
  %12 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr64 = lshr i64 %12, 8, !dbg !4507
  %and65 = and i64 %shr64, 4, !dbg !4507
  %tobool66 = icmp ne i64 %and65, 0, !dbg !4507
  %lnot67 = xor i1 %tobool66, true, !dbg !4507
  %lnot69 = xor i1 %lnot67, true, !dbg !4507
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !4507
  %add71 = add i32 %add63, %lnot.ext70, !dbg !4507
  %13 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr72 = lshr i64 %13, 8, !dbg !4507
  %and73 = and i64 %shr72, 8, !dbg !4507
  %tobool74 = icmp ne i64 %and73, 0, !dbg !4507
  %lnot75 = xor i1 %tobool74, true, !dbg !4507
  %lnot77 = xor i1 %lnot75, true, !dbg !4507
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !4507
  %add79 = add i32 %add71, %lnot.ext78, !dbg !4507
  %14 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr80 = lshr i64 %14, 8, !dbg !4507
  %and81 = and i64 %shr80, 16, !dbg !4507
  %tobool82 = icmp ne i64 %and81, 0, !dbg !4507
  %lnot83 = xor i1 %tobool82, true, !dbg !4507
  %lnot85 = xor i1 %lnot83, true, !dbg !4507
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !4507
  %add87 = add i32 %add79, %lnot.ext86, !dbg !4507
  %15 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr88 = lshr i64 %15, 8, !dbg !4507
  %and89 = and i64 %shr88, 32, !dbg !4507
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4507
  %lnot91 = xor i1 %tobool90, true, !dbg !4507
  %lnot93 = xor i1 %lnot91, true, !dbg !4507
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !4507
  %add95 = add i32 %add87, %lnot.ext94, !dbg !4507
  %16 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr96 = lshr i64 %16, 8, !dbg !4507
  %and97 = and i64 %shr96, 64, !dbg !4507
  %tobool98 = icmp ne i64 %and97, 0, !dbg !4507
  %lnot99 = xor i1 %tobool98, true, !dbg !4507
  %lnot101 = xor i1 %lnot99, true, !dbg !4507
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !4507
  %add103 = add i32 %add95, %lnot.ext102, !dbg !4507
  %17 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr104 = lshr i64 %17, 8, !dbg !4507
  %and105 = and i64 %shr104, 128, !dbg !4507
  %tobool106 = icmp ne i64 %and105, 0, !dbg !4507
  %lnot107 = xor i1 %tobool106, true, !dbg !4507
  %lnot109 = xor i1 %lnot107, true, !dbg !4507
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !4507
  %add111 = add i32 %add103, %lnot.ext110, !dbg !4507
  %add112 = add i32 %add49, %add111, !dbg !4507
  %18 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr113 = lshr i64 %18, 16, !dbg !4507
  %and114 = and i64 %shr113, 1, !dbg !4507
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4507
  %lnot116 = xor i1 %tobool115, true, !dbg !4507
  %lnot118 = xor i1 %lnot116, true, !dbg !4507
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !4507
  %19 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr120 = lshr i64 %19, 16, !dbg !4507
  %and121 = and i64 %shr120, 2, !dbg !4507
  %tobool122 = icmp ne i64 %and121, 0, !dbg !4507
  %lnot123 = xor i1 %tobool122, true, !dbg !4507
  %lnot125 = xor i1 %lnot123, true, !dbg !4507
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !4507
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !4507
  %20 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr128 = lshr i64 %20, 16, !dbg !4507
  %and129 = and i64 %shr128, 4, !dbg !4507
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4507
  %lnot131 = xor i1 %tobool130, true, !dbg !4507
  %lnot133 = xor i1 %lnot131, true, !dbg !4507
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !4507
  %add135 = add i32 %add127, %lnot.ext134, !dbg !4507
  %21 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr136 = lshr i64 %21, 16, !dbg !4507
  %and137 = and i64 %shr136, 8, !dbg !4507
  %tobool138 = icmp ne i64 %and137, 0, !dbg !4507
  %lnot139 = xor i1 %tobool138, true, !dbg !4507
  %lnot141 = xor i1 %lnot139, true, !dbg !4507
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !4507
  %add143 = add i32 %add135, %lnot.ext142, !dbg !4507
  %22 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr144 = lshr i64 %22, 16, !dbg !4507
  %and145 = and i64 %shr144, 16, !dbg !4507
  %tobool146 = icmp ne i64 %and145, 0, !dbg !4507
  %lnot147 = xor i1 %tobool146, true, !dbg !4507
  %lnot149 = xor i1 %lnot147, true, !dbg !4507
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !4507
  %add151 = add i32 %add143, %lnot.ext150, !dbg !4507
  %23 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr152 = lshr i64 %23, 16, !dbg !4507
  %and153 = and i64 %shr152, 32, !dbg !4507
  %tobool154 = icmp ne i64 %and153, 0, !dbg !4507
  %lnot155 = xor i1 %tobool154, true, !dbg !4507
  %lnot157 = xor i1 %lnot155, true, !dbg !4507
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !4507
  %add159 = add i32 %add151, %lnot.ext158, !dbg !4507
  %24 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr160 = lshr i64 %24, 16, !dbg !4507
  %and161 = and i64 %shr160, 64, !dbg !4507
  %tobool162 = icmp ne i64 %and161, 0, !dbg !4507
  %lnot163 = xor i1 %tobool162, true, !dbg !4507
  %lnot165 = xor i1 %lnot163, true, !dbg !4507
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !4507
  %add167 = add i32 %add159, %lnot.ext166, !dbg !4507
  %25 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr168 = lshr i64 %25, 16, !dbg !4507
  %and169 = and i64 %shr168, 128, !dbg !4507
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4507
  %lnot171 = xor i1 %tobool170, true, !dbg !4507
  %lnot173 = xor i1 %lnot171, true, !dbg !4507
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !4507
  %add175 = add i32 %add167, %lnot.ext174, !dbg !4507
  %26 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr176 = lshr i64 %26, 16, !dbg !4507
  %shr177 = lshr i64 %shr176, 8, !dbg !4507
  %and178 = and i64 %shr177, 1, !dbg !4507
  %tobool179 = icmp ne i64 %and178, 0, !dbg !4507
  %lnot180 = xor i1 %tobool179, true, !dbg !4507
  %lnot182 = xor i1 %lnot180, true, !dbg !4507
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !4507
  %27 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr184 = lshr i64 %27, 16, !dbg !4507
  %shr185 = lshr i64 %shr184, 8, !dbg !4507
  %and186 = and i64 %shr185, 2, !dbg !4507
  %tobool187 = icmp ne i64 %and186, 0, !dbg !4507
  %lnot188 = xor i1 %tobool187, true, !dbg !4507
  %lnot190 = xor i1 %lnot188, true, !dbg !4507
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !4507
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !4507
  %28 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr193 = lshr i64 %28, 16, !dbg !4507
  %shr194 = lshr i64 %shr193, 8, !dbg !4507
  %and195 = and i64 %shr194, 4, !dbg !4507
  %tobool196 = icmp ne i64 %and195, 0, !dbg !4507
  %lnot197 = xor i1 %tobool196, true, !dbg !4507
  %lnot199 = xor i1 %lnot197, true, !dbg !4507
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !4507
  %add201 = add i32 %add192, %lnot.ext200, !dbg !4507
  %29 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr202 = lshr i64 %29, 16, !dbg !4507
  %shr203 = lshr i64 %shr202, 8, !dbg !4507
  %and204 = and i64 %shr203, 8, !dbg !4507
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4507
  %lnot206 = xor i1 %tobool205, true, !dbg !4507
  %lnot208 = xor i1 %lnot206, true, !dbg !4507
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !4507
  %add210 = add i32 %add201, %lnot.ext209, !dbg !4507
  %30 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr211 = lshr i64 %30, 16, !dbg !4507
  %shr212 = lshr i64 %shr211, 8, !dbg !4507
  %and213 = and i64 %shr212, 16, !dbg !4507
  %tobool214 = icmp ne i64 %and213, 0, !dbg !4507
  %lnot215 = xor i1 %tobool214, true, !dbg !4507
  %lnot217 = xor i1 %lnot215, true, !dbg !4507
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !4507
  %add219 = add i32 %add210, %lnot.ext218, !dbg !4507
  %31 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr220 = lshr i64 %31, 16, !dbg !4507
  %shr221 = lshr i64 %shr220, 8, !dbg !4507
  %and222 = and i64 %shr221, 32, !dbg !4507
  %tobool223 = icmp ne i64 %and222, 0, !dbg !4507
  %lnot224 = xor i1 %tobool223, true, !dbg !4507
  %lnot226 = xor i1 %lnot224, true, !dbg !4507
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !4507
  %add228 = add i32 %add219, %lnot.ext227, !dbg !4507
  %32 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr229 = lshr i64 %32, 16, !dbg !4507
  %shr230 = lshr i64 %shr229, 8, !dbg !4507
  %and231 = and i64 %shr230, 64, !dbg !4507
  %tobool232 = icmp ne i64 %and231, 0, !dbg !4507
  %lnot233 = xor i1 %tobool232, true, !dbg !4507
  %lnot235 = xor i1 %lnot233, true, !dbg !4507
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !4507
  %add237 = add i32 %add228, %lnot.ext236, !dbg !4507
  %33 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr238 = lshr i64 %33, 16, !dbg !4507
  %shr239 = lshr i64 %shr238, 8, !dbg !4507
  %and240 = and i64 %shr239, 128, !dbg !4507
  %tobool241 = icmp ne i64 %and240, 0, !dbg !4507
  %lnot242 = xor i1 %tobool241, true, !dbg !4507
  %lnot244 = xor i1 %lnot242, true, !dbg !4507
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !4507
  %add246 = add i32 %add237, %lnot.ext245, !dbg !4507
  %add247 = add i32 %add175, %add246, !dbg !4507
  %add248 = add i32 %add112, %add247, !dbg !4507
  %34 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr249 = lshr i64 %34, 32, !dbg !4507
  %and250 = and i64 %shr249, 1, !dbg !4507
  %tobool251 = icmp ne i64 %and250, 0, !dbg !4507
  %lnot252 = xor i1 %tobool251, true, !dbg !4507
  %lnot254 = xor i1 %lnot252, true, !dbg !4507
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !4507
  %35 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr256 = lshr i64 %35, 32, !dbg !4507
  %and257 = and i64 %shr256, 2, !dbg !4507
  %tobool258 = icmp ne i64 %and257, 0, !dbg !4507
  %lnot259 = xor i1 %tobool258, true, !dbg !4507
  %lnot261 = xor i1 %lnot259, true, !dbg !4507
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !4507
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !4507
  %36 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr264 = lshr i64 %36, 32, !dbg !4507
  %and265 = and i64 %shr264, 4, !dbg !4507
  %tobool266 = icmp ne i64 %and265, 0, !dbg !4507
  %lnot267 = xor i1 %tobool266, true, !dbg !4507
  %lnot269 = xor i1 %lnot267, true, !dbg !4507
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !4507
  %add271 = add i32 %add263, %lnot.ext270, !dbg !4507
  %37 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr272 = lshr i64 %37, 32, !dbg !4507
  %and273 = and i64 %shr272, 8, !dbg !4507
  %tobool274 = icmp ne i64 %and273, 0, !dbg !4507
  %lnot275 = xor i1 %tobool274, true, !dbg !4507
  %lnot277 = xor i1 %lnot275, true, !dbg !4507
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !4507
  %add279 = add i32 %add271, %lnot.ext278, !dbg !4507
  %38 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr280 = lshr i64 %38, 32, !dbg !4507
  %and281 = and i64 %shr280, 16, !dbg !4507
  %tobool282 = icmp ne i64 %and281, 0, !dbg !4507
  %lnot283 = xor i1 %tobool282, true, !dbg !4507
  %lnot285 = xor i1 %lnot283, true, !dbg !4507
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !4507
  %add287 = add i32 %add279, %lnot.ext286, !dbg !4507
  %39 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr288 = lshr i64 %39, 32, !dbg !4507
  %and289 = and i64 %shr288, 32, !dbg !4507
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4507
  %lnot291 = xor i1 %tobool290, true, !dbg !4507
  %lnot293 = xor i1 %lnot291, true, !dbg !4507
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !4507
  %add295 = add i32 %add287, %lnot.ext294, !dbg !4507
  %40 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr296 = lshr i64 %40, 32, !dbg !4507
  %and297 = and i64 %shr296, 64, !dbg !4507
  %tobool298 = icmp ne i64 %and297, 0, !dbg !4507
  %lnot299 = xor i1 %tobool298, true, !dbg !4507
  %lnot301 = xor i1 %lnot299, true, !dbg !4507
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !4507
  %add303 = add i32 %add295, %lnot.ext302, !dbg !4507
  %41 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr304 = lshr i64 %41, 32, !dbg !4507
  %and305 = and i64 %shr304, 128, !dbg !4507
  %tobool306 = icmp ne i64 %and305, 0, !dbg !4507
  %lnot307 = xor i1 %tobool306, true, !dbg !4507
  %lnot309 = xor i1 %lnot307, true, !dbg !4507
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !4507
  %add311 = add i32 %add303, %lnot.ext310, !dbg !4507
  %42 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr312 = lshr i64 %42, 32, !dbg !4507
  %shr313 = lshr i64 %shr312, 8, !dbg !4507
  %and314 = and i64 %shr313, 1, !dbg !4507
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4507
  %lnot316 = xor i1 %tobool315, true, !dbg !4507
  %lnot318 = xor i1 %lnot316, true, !dbg !4507
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !4507
  %43 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr320 = lshr i64 %43, 32, !dbg !4507
  %shr321 = lshr i64 %shr320, 8, !dbg !4507
  %and322 = and i64 %shr321, 2, !dbg !4507
  %tobool323 = icmp ne i64 %and322, 0, !dbg !4507
  %lnot324 = xor i1 %tobool323, true, !dbg !4507
  %lnot326 = xor i1 %lnot324, true, !dbg !4507
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !4507
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !4507
  %44 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr329 = lshr i64 %44, 32, !dbg !4507
  %shr330 = lshr i64 %shr329, 8, !dbg !4507
  %and331 = and i64 %shr330, 4, !dbg !4507
  %tobool332 = icmp ne i64 %and331, 0, !dbg !4507
  %lnot333 = xor i1 %tobool332, true, !dbg !4507
  %lnot335 = xor i1 %lnot333, true, !dbg !4507
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !4507
  %add337 = add i32 %add328, %lnot.ext336, !dbg !4507
  %45 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr338 = lshr i64 %45, 32, !dbg !4507
  %shr339 = lshr i64 %shr338, 8, !dbg !4507
  %and340 = and i64 %shr339, 8, !dbg !4507
  %tobool341 = icmp ne i64 %and340, 0, !dbg !4507
  %lnot342 = xor i1 %tobool341, true, !dbg !4507
  %lnot344 = xor i1 %lnot342, true, !dbg !4507
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !4507
  %add346 = add i32 %add337, %lnot.ext345, !dbg !4507
  %46 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr347 = lshr i64 %46, 32, !dbg !4507
  %shr348 = lshr i64 %shr347, 8, !dbg !4507
  %and349 = and i64 %shr348, 16, !dbg !4507
  %tobool350 = icmp ne i64 %and349, 0, !dbg !4507
  %lnot351 = xor i1 %tobool350, true, !dbg !4507
  %lnot353 = xor i1 %lnot351, true, !dbg !4507
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !4507
  %add355 = add i32 %add346, %lnot.ext354, !dbg !4507
  %47 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr356 = lshr i64 %47, 32, !dbg !4507
  %shr357 = lshr i64 %shr356, 8, !dbg !4507
  %and358 = and i64 %shr357, 32, !dbg !4507
  %tobool359 = icmp ne i64 %and358, 0, !dbg !4507
  %lnot360 = xor i1 %tobool359, true, !dbg !4507
  %lnot362 = xor i1 %lnot360, true, !dbg !4507
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !4507
  %add364 = add i32 %add355, %lnot.ext363, !dbg !4507
  %48 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr365 = lshr i64 %48, 32, !dbg !4507
  %shr366 = lshr i64 %shr365, 8, !dbg !4507
  %and367 = and i64 %shr366, 64, !dbg !4507
  %tobool368 = icmp ne i64 %and367, 0, !dbg !4507
  %lnot369 = xor i1 %tobool368, true, !dbg !4507
  %lnot371 = xor i1 %lnot369, true, !dbg !4507
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !4507
  %add373 = add i32 %add364, %lnot.ext372, !dbg !4507
  %49 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr374 = lshr i64 %49, 32, !dbg !4507
  %shr375 = lshr i64 %shr374, 8, !dbg !4507
  %and376 = and i64 %shr375, 128, !dbg !4507
  %tobool377 = icmp ne i64 %and376, 0, !dbg !4507
  %lnot378 = xor i1 %tobool377, true, !dbg !4507
  %lnot380 = xor i1 %lnot378, true, !dbg !4507
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !4507
  %add382 = add i32 %add373, %lnot.ext381, !dbg !4507
  %add383 = add i32 %add311, %add382, !dbg !4507
  %50 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr384 = lshr i64 %50, 32, !dbg !4507
  %shr385 = lshr i64 %shr384, 16, !dbg !4507
  %and386 = and i64 %shr385, 1, !dbg !4507
  %tobool387 = icmp ne i64 %and386, 0, !dbg !4507
  %lnot388 = xor i1 %tobool387, true, !dbg !4507
  %lnot390 = xor i1 %lnot388, true, !dbg !4507
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !4507
  %51 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr392 = lshr i64 %51, 32, !dbg !4507
  %shr393 = lshr i64 %shr392, 16, !dbg !4507
  %and394 = and i64 %shr393, 2, !dbg !4507
  %tobool395 = icmp ne i64 %and394, 0, !dbg !4507
  %lnot396 = xor i1 %tobool395, true, !dbg !4507
  %lnot398 = xor i1 %lnot396, true, !dbg !4507
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !4507
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !4507
  %52 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr401 = lshr i64 %52, 32, !dbg !4507
  %shr402 = lshr i64 %shr401, 16, !dbg !4507
  %and403 = and i64 %shr402, 4, !dbg !4507
  %tobool404 = icmp ne i64 %and403, 0, !dbg !4507
  %lnot405 = xor i1 %tobool404, true, !dbg !4507
  %lnot407 = xor i1 %lnot405, true, !dbg !4507
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !4507
  %add409 = add i32 %add400, %lnot.ext408, !dbg !4507
  %53 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr410 = lshr i64 %53, 32, !dbg !4507
  %shr411 = lshr i64 %shr410, 16, !dbg !4507
  %and412 = and i64 %shr411, 8, !dbg !4507
  %tobool413 = icmp ne i64 %and412, 0, !dbg !4507
  %lnot414 = xor i1 %tobool413, true, !dbg !4507
  %lnot416 = xor i1 %lnot414, true, !dbg !4507
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !4507
  %add418 = add i32 %add409, %lnot.ext417, !dbg !4507
  %54 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr419 = lshr i64 %54, 32, !dbg !4507
  %shr420 = lshr i64 %shr419, 16, !dbg !4507
  %and421 = and i64 %shr420, 16, !dbg !4507
  %tobool422 = icmp ne i64 %and421, 0, !dbg !4507
  %lnot423 = xor i1 %tobool422, true, !dbg !4507
  %lnot425 = xor i1 %lnot423, true, !dbg !4507
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !4507
  %add427 = add i32 %add418, %lnot.ext426, !dbg !4507
  %55 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr428 = lshr i64 %55, 32, !dbg !4507
  %shr429 = lshr i64 %shr428, 16, !dbg !4507
  %and430 = and i64 %shr429, 32, !dbg !4507
  %tobool431 = icmp ne i64 %and430, 0, !dbg !4507
  %lnot432 = xor i1 %tobool431, true, !dbg !4507
  %lnot434 = xor i1 %lnot432, true, !dbg !4507
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !4507
  %add436 = add i32 %add427, %lnot.ext435, !dbg !4507
  %56 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr437 = lshr i64 %56, 32, !dbg !4507
  %shr438 = lshr i64 %shr437, 16, !dbg !4507
  %and439 = and i64 %shr438, 64, !dbg !4507
  %tobool440 = icmp ne i64 %and439, 0, !dbg !4507
  %lnot441 = xor i1 %tobool440, true, !dbg !4507
  %lnot443 = xor i1 %lnot441, true, !dbg !4507
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !4507
  %add445 = add i32 %add436, %lnot.ext444, !dbg !4507
  %57 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr446 = lshr i64 %57, 32, !dbg !4507
  %shr447 = lshr i64 %shr446, 16, !dbg !4507
  %and448 = and i64 %shr447, 128, !dbg !4507
  %tobool449 = icmp ne i64 %and448, 0, !dbg !4507
  %lnot450 = xor i1 %tobool449, true, !dbg !4507
  %lnot452 = xor i1 %lnot450, true, !dbg !4507
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !4507
  %add454 = add i32 %add445, %lnot.ext453, !dbg !4507
  %58 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr455 = lshr i64 %58, 32, !dbg !4507
  %shr456 = lshr i64 %shr455, 16, !dbg !4507
  %shr457 = lshr i64 %shr456, 8, !dbg !4507
  %and458 = and i64 %shr457, 1, !dbg !4507
  %tobool459 = icmp ne i64 %and458, 0, !dbg !4507
  %lnot460 = xor i1 %tobool459, true, !dbg !4507
  %lnot462 = xor i1 %lnot460, true, !dbg !4507
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !4507
  %59 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr464 = lshr i64 %59, 32, !dbg !4507
  %shr465 = lshr i64 %shr464, 16, !dbg !4507
  %shr466 = lshr i64 %shr465, 8, !dbg !4507
  %and467 = and i64 %shr466, 2, !dbg !4507
  %tobool468 = icmp ne i64 %and467, 0, !dbg !4507
  %lnot469 = xor i1 %tobool468, true, !dbg !4507
  %lnot471 = xor i1 %lnot469, true, !dbg !4507
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !4507
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !4507
  %60 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr474 = lshr i64 %60, 32, !dbg !4507
  %shr475 = lshr i64 %shr474, 16, !dbg !4507
  %shr476 = lshr i64 %shr475, 8, !dbg !4507
  %and477 = and i64 %shr476, 4, !dbg !4507
  %tobool478 = icmp ne i64 %and477, 0, !dbg !4507
  %lnot479 = xor i1 %tobool478, true, !dbg !4507
  %lnot481 = xor i1 %lnot479, true, !dbg !4507
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !4507
  %add483 = add i32 %add473, %lnot.ext482, !dbg !4507
  %61 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr484 = lshr i64 %61, 32, !dbg !4507
  %shr485 = lshr i64 %shr484, 16, !dbg !4507
  %shr486 = lshr i64 %shr485, 8, !dbg !4507
  %and487 = and i64 %shr486, 8, !dbg !4507
  %tobool488 = icmp ne i64 %and487, 0, !dbg !4507
  %lnot489 = xor i1 %tobool488, true, !dbg !4507
  %lnot491 = xor i1 %lnot489, true, !dbg !4507
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !4507
  %add493 = add i32 %add483, %lnot.ext492, !dbg !4507
  %62 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr494 = lshr i64 %62, 32, !dbg !4507
  %shr495 = lshr i64 %shr494, 16, !dbg !4507
  %shr496 = lshr i64 %shr495, 8, !dbg !4507
  %and497 = and i64 %shr496, 16, !dbg !4507
  %tobool498 = icmp ne i64 %and497, 0, !dbg !4507
  %lnot499 = xor i1 %tobool498, true, !dbg !4507
  %lnot501 = xor i1 %lnot499, true, !dbg !4507
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !4507
  %add503 = add i32 %add493, %lnot.ext502, !dbg !4507
  %63 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr504 = lshr i64 %63, 32, !dbg !4507
  %shr505 = lshr i64 %shr504, 16, !dbg !4507
  %shr506 = lshr i64 %shr505, 8, !dbg !4507
  %and507 = and i64 %shr506, 32, !dbg !4507
  %tobool508 = icmp ne i64 %and507, 0, !dbg !4507
  %lnot509 = xor i1 %tobool508, true, !dbg !4507
  %lnot511 = xor i1 %lnot509, true, !dbg !4507
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !4507
  %add513 = add i32 %add503, %lnot.ext512, !dbg !4507
  %64 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr514 = lshr i64 %64, 32, !dbg !4507
  %shr515 = lshr i64 %shr514, 16, !dbg !4507
  %shr516 = lshr i64 %shr515, 8, !dbg !4507
  %and517 = and i64 %shr516, 64, !dbg !4507
  %tobool518 = icmp ne i64 %and517, 0, !dbg !4507
  %lnot519 = xor i1 %tobool518, true, !dbg !4507
  %lnot521 = xor i1 %lnot519, true, !dbg !4507
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !4507
  %add523 = add i32 %add513, %lnot.ext522, !dbg !4507
  %65 = load i64, ptr %w.addr, align 8, !dbg !4507
  %shr524 = lshr i64 %65, 32, !dbg !4507
  %shr525 = lshr i64 %shr524, 16, !dbg !4507
  %shr526 = lshr i64 %shr525, 8, !dbg !4507
  %and527 = and i64 %shr526, 128, !dbg !4507
  %tobool528 = icmp ne i64 %and527, 0, !dbg !4507
  %lnot529 = xor i1 %tobool528, true, !dbg !4507
  %lnot531 = xor i1 %lnot529, true, !dbg !4507
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !4507
  %add533 = add i32 %add523, %lnot.ext532, !dbg !4507
  %add534 = add i32 %add454, %add533, !dbg !4507
  %add535 = add i32 %add383, %add534, !dbg !4507
  %add536 = add i32 %add248, %add535, !dbg !4507
  %conv = zext i32 %add536 to i64, !dbg !4507
  br label %cond.end, !dbg !4507

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !4507
  %call = call i64 @__arch_hweight64(i64 noundef %66) #18, !dbg !4507
  br label %cond.end, !dbg !4507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !4507
  ret i64 %cond, !dbg !4508
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4509 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #8 align 16 !dbg !4510 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !4515, metadata !DIExpression()), !dbg !4517
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #17, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4516, metadata !DIExpression()), !dbg !4519
  %0 = load i64, ptr %w.addr, align 8, !dbg !4520
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #24, !dbg !4521, !srcloc !4522
  store i64 %1, ptr %res, align 8, !dbg !4521
  %2 = load i64, ptr %res, align 8, !dbg !4523
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #17, !dbg !4524
  ret i64 %2, !dbg !4525
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4526 dso_local void @cpufreq_add_update_util_hook(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbs_update_util_handler(ptr noundef %data, i64 noundef %time, i32 noundef %flags) #0 align 16 !dbg !4529 {
entry:
  %data.addr = alloca ptr, align 8
  %time.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %cdbs = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %delta_ns = alloca i64, align 8
  %lst = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp16 = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4531, metadata !DIExpression()), !dbg !4540
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !4532, metadata !DIExpression()), !dbg !4541
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4533, metadata !DIExpression()), !dbg !4542
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdbs) #17, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %cdbs, metadata !4534, metadata !DIExpression()), !dbg !4544
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4545
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4535, metadata !DIExpression()), !dbg !4545
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4545
  store ptr %0, ptr %__mptr, align 8, !dbg !4545
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4545
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !4545
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4545
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4546
  %2 = load ptr, ptr %tmp, align 8, !dbg !4545
  store ptr %2, ptr %cdbs, align 8, !dbg !4544
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #17, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4537, metadata !DIExpression()), !dbg !4548
  %3 = load ptr, ptr %cdbs, align 8, !dbg !4549
  %policy_dbs1 = getelementptr inbounds %struct.cpu_dbs_info, ptr %3, i32 0, i32 5, !dbg !4550
  %4 = load ptr, ptr %policy_dbs1, align 8, !dbg !4550
  store ptr %4, ptr %policy_dbs, align 8, !dbg !4548
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_ns) #17, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %delta_ns, metadata !4538, metadata !DIExpression()), !dbg !4552
  call void @llvm.lifetime.start.p0(i64 8, ptr %lst) #17, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %lst, metadata !4539, metadata !DIExpression()), !dbg !4553
  %5 = load ptr, ptr %policy_dbs, align 8, !dbg !4554
  %policy = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 0, !dbg !4556
  %6 = load ptr, ptr %policy, align 8, !dbg !4556
  %call = call zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef %6) #18, !dbg !4557
  br i1 %call, label %if.end, label %if.then, !dbg !4558

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4559

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %policy_dbs, align 8, !dbg !4560
  %work_in_progress = getelementptr inbounds %struct.policy_dbs_info, ptr %7, i32 0, i32 12, !dbg !4562
  %8 = load i8, ptr %work_in_progress, align 1, !dbg !4562, !range !4406, !noundef !422
  %tobool = trunc i8 %8 to i1, !dbg !4562
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4563

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4564

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !4565

do.body:                                          ; preds = %if.end3
  br label %do.body4, !dbg !4566

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4568

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4568

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4566

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !4570

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !4572

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4572

do.end8:                                          ; preds = %do.cond7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4570, !srcloc !4574
  br label %do.cond9, !dbg !4570

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4570

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !4566

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4566

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4575

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4577

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4577

do.end15:                                         ; preds = %do.cond14
  %9 = load ptr, ptr %policy_dbs, align 8, !dbg !4575
  %last_sample_time = getelementptr inbounds %struct.policy_dbs_info, ptr %9, i32 0, i32 2, !dbg !4575
  %10 = load volatile i64, ptr %last_sample_time, align 8, !dbg !4575
  store i64 %10, ptr %tmp16, align 8, !dbg !4577
  %11 = load i64, ptr %tmp16, align 8, !dbg !4575
  store i64 %11, ptr %lst, align 8, !dbg !4579
  %12 = load i64, ptr %time.addr, align 8, !dbg !4580
  %13 = load i64, ptr %lst, align 8, !dbg !4581
  %sub = sub i64 %12, %13, !dbg !4582
  store i64 %sub, ptr %delta_ns, align 8, !dbg !4583
  %14 = load i64, ptr %delta_ns, align 8, !dbg !4584
  %15 = load ptr, ptr %policy_dbs, align 8, !dbg !4586
  %sample_delay_ns = getelementptr inbounds %struct.policy_dbs_info, ptr %15, i32 0, i32 3, !dbg !4587
  %16 = load i64, ptr %sample_delay_ns, align 8, !dbg !4587
  %cmp = icmp slt i64 %14, %16, !dbg !4588
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !4589

if.then17:                                        ; preds = %do.end15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4590

if.end18:                                         ; preds = %do.end15
  %17 = load ptr, ptr %policy_dbs, align 8, !dbg !4591
  %is_shared = getelementptr inbounds %struct.policy_dbs_info, ptr %17, i32 0, i32 11, !dbg !4593
  %18 = load i8, ptr %is_shared, align 8, !dbg !4593, !range !4406, !noundef !422
  %tobool19 = trunc i8 %18 to i1, !dbg !4593
  br i1 %tobool19, label %if.then20, label %if.end35, !dbg !4594

if.then20:                                        ; preds = %if.end18
  %19 = load ptr, ptr %policy_dbs, align 8, !dbg !4595
  %work_count = getelementptr inbounds %struct.policy_dbs_info, ptr %19, i32 0, i32 4, !dbg !4598
  %call21 = call zeroext i1 @atomic_add_unless(ptr noundef %work_count, i32 noundef 1, i32 noundef 1) #18, !dbg !4599
  br i1 %call21, label %if.end23, label %if.then22, !dbg !4600

if.then22:                                        ; preds = %if.then20
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4601

if.end23:                                         ; preds = %if.then20
  %20 = load i64, ptr %lst, align 8, !dbg !4602
  br label %do.body24, !dbg !4604

do.body24:                                        ; preds = %if.end23
  br label %do.cond25, !dbg !4606

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4606

do.end26:                                         ; preds = %do.cond25
  %21 = load ptr, ptr %policy_dbs, align 8, !dbg !4604
  %last_sample_time28 = getelementptr inbounds %struct.policy_dbs_info, ptr %21, i32 0, i32 2, !dbg !4604
  %22 = load volatile i64, ptr %last_sample_time28, align 8, !dbg !4604
  store i64 %22, ptr %tmp27, align 8, !dbg !4606
  %23 = load i64, ptr %tmp27, align 8, !dbg !4604
  %cmp29 = icmp ne i64 %20, %23, !dbg !4602
  %lnot = xor i1 %cmp29, true, !dbg !4602
  %lnot30 = xor i1 %lnot, true, !dbg !4602
  %lnot.ext = zext i1 %lnot30 to i32, !dbg !4602
  %conv = sext i32 %lnot.ext to i64, !dbg !4602
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4602
  %tobool31 = icmp ne i64 %expval, 0, !dbg !4602
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !4608

if.then32:                                        ; preds = %do.end26
  %24 = load ptr, ptr %policy_dbs, align 8, !dbg !4609
  %work_count33 = getelementptr inbounds %struct.policy_dbs_info, ptr %24, i32 0, i32 4, !dbg !4611
  call void @atomic_set(ptr noundef %work_count33, i32 noundef 0) #18, !dbg !4612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4613

if.end34:                                         ; preds = %do.end26
  br label %if.end35, !dbg !4614

if.end35:                                         ; preds = %if.end34, %if.end18
  %25 = load i64, ptr %time.addr, align 8, !dbg !4615
  %26 = load ptr, ptr %policy_dbs, align 8, !dbg !4616
  %last_sample_time36 = getelementptr inbounds %struct.policy_dbs_info, ptr %26, i32 0, i32 2, !dbg !4617
  store i64 %25, ptr %last_sample_time36, align 8, !dbg !4618
  %27 = load ptr, ptr %policy_dbs, align 8, !dbg !4619
  %work_in_progress37 = getelementptr inbounds %struct.policy_dbs_info, ptr %27, i32 0, i32 12, !dbg !4620
  store i8 1, ptr %work_in_progress37, align 1, !dbg !4621
  %28 = load ptr, ptr %policy_dbs, align 8, !dbg !4622
  %irq_work = getelementptr inbounds %struct.policy_dbs_info, ptr %28, i32 0, i32 5, !dbg !4623
  %call38 = call zeroext i1 @irq_work_queue(ptr noundef %irq_work) #18, !dbg !4624
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4625
  br label %cleanup, !dbg !4625

cleanup:                                          ; preds = %if.end35, %if.then32, %if.then22, %if.then17, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lst) #17, !dbg !4625
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_ns) #17, !dbg !4625
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #17, !dbg !4625
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdbs) #17, !dbg !4625
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4625

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4626 dso_local zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #8 align 16 !dbg !4627 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4631, metadata !DIExpression()), !dbg !4634
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4632, metadata !DIExpression()), !dbg !4635
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4633, metadata !DIExpression()), !dbg !4636
  br label %do.body, !dbg !4637

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4638

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4640
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !4641
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4642
  %2 = load i32, ptr %a.addr, align 4, !dbg !4643
  %3 = load i32, ptr %u.addr, align 4, !dbg !4644
  %call = call zeroext i1 @raw_atomic_add_unless(ptr noundef %1, i32 noundef %2, i32 noundef %3) #18, !dbg !4645
  ret i1 %call, !dbg !4646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4647 dso_local zeroext i1 @irq_work_queue(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !4650 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4658, metadata !DIExpression()), !dbg !4660
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4659, metadata !DIExpression()), !dbg !4661
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4662
  %1 = load i64, ptr %size.addr, align 8, !dbg !4663
  %conv = trunc i64 %1 to i32, !dbg !4663
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !4664
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4665
  %3 = load i64, ptr %size.addr, align 8, !dbg !4665
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !4665
  ret void, !dbg !4666
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #8 align 16 !dbg !4667 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4670, metadata !DIExpression()), !dbg !4673
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4671, metadata !DIExpression()), !dbg !4674
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4672, metadata !DIExpression()), !dbg !4675
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4676
  %1 = load i32, ptr %a.addr, align 4, !dbg !4677
  %2 = load i32, ptr %u.addr, align 4, !dbg !4678
  %call = call i32 @raw_atomic_fetch_add_unless(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18, !dbg !4679
  %3 = load i32, ptr %u.addr, align 4, !dbg !4680
  %cmp = icmp ne i32 %call, %3, !dbg !4681
  ret i1 %cmp, !dbg !4682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4683 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4688, metadata !DIExpression()), !dbg !4690
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4689, metadata !DIExpression()), !dbg !4691
  ret i1 true, !dbg !4692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4693 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4698, metadata !DIExpression()), !dbg !4701
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4699, metadata !DIExpression()), !dbg !4702
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4700, metadata !DIExpression()), !dbg !4703
  ret void, !dbg !4704
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #8 align 16 !dbg !4705 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4709, metadata !DIExpression()), !dbg !4713
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4710, metadata !DIExpression()), !dbg !4714
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4711, metadata !DIExpression()), !dbg !4715
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #17, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4712, metadata !DIExpression()), !dbg !4717
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4718
  %call = call i32 @raw_atomic_read(ptr noundef %0) #18, !dbg !4719
  store i32 %call, ptr %c, align 4, !dbg !4717
  br label %do.body, !dbg !4720

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !4721
  %2 = load i32, ptr %u.addr, align 4, !dbg !4721
  %cmp = icmp eq i32 %1, %2, !dbg !4721
  %lnot = xor i1 %cmp, true, !dbg !4721
  %lnot1 = xor i1 %lnot, true, !dbg !4721
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4721
  %conv = sext i32 %lnot.ext to i64, !dbg !4721
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4721
  %tobool = icmp ne i64 %expval, 0, !dbg !4721
  br i1 %tobool, label %if.then, label %if.end, !dbg !4724

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !4725

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !4726

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4727
  %4 = load i32, ptr %c, align 4, !dbg !4728
  %5 = load i32, ptr %a.addr, align 4, !dbg !4729
  %add = add i32 %4, %5, !dbg !4730
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %3, ptr noundef %c, i32 noundef %add) #18, !dbg !4731
  %lnot3 = xor i1 %call2, true, !dbg !4732
  br i1 %lnot3, label %do.body, label %do.end, !dbg !4726, !llvm.loop !4733

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i32, ptr %c, align 4, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #17, !dbg !4736
  ret i32 %6, !dbg !4737
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #8 align 16 !dbg !4738 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4746
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !4747
  ret i32 %call, !dbg !4748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #8 align 16 !dbg !4749 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4753, metadata !DIExpression()), !dbg !4756
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4754, metadata !DIExpression()), !dbg !4757
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4755, metadata !DIExpression()), !dbg !4758
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4759
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4760
  %2 = load i32, ptr %new.addr, align 4, !dbg !4761
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18, !dbg !4762
  ret i1 %call, !dbg !4763
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #8 align 16 !dbg !4764 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4769
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4769
  %1 = load volatile i32, ptr %counter, align 4, !dbg !4769
  ret i32 %1, !dbg !4770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #8 align 16 !dbg !4771 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4773, metadata !DIExpression()), !dbg !4782
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4774, metadata !DIExpression()), !dbg !4783
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4775, metadata !DIExpression()), !dbg !4784
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4776, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4778, metadata !DIExpression()), !dbg !4785
  %0 = load ptr, ptr %old.addr, align 8, !dbg !4785
  store ptr %0, ptr %_old, align 8, !dbg !4785
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #17, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4779, metadata !DIExpression()), !dbg !4785
  %1 = load ptr, ptr %_old, align 8, !dbg !4785
  %2 = load i32, ptr %1, align 4, !dbg !4785
  store i32 %2, ptr %__old, align 4, !dbg !4785
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #17, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4780, metadata !DIExpression()), !dbg !4785
  %3 = load i32, ptr %new.addr, align 4, !dbg !4785
  store i32 %3, ptr %__new, align 4, !dbg !4785
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4781, metadata !DIExpression()), !dbg !4785
  %4 = load ptr, ptr %v.addr, align 8, !dbg !4785
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !4785
  store ptr %counter, ptr %__ptr, align 8, !dbg !4785
  %5 = load ptr, ptr %__ptr, align 8, !dbg !4785
  %6 = load i32, ptr %__old, align 4, !dbg !4785
  %7 = load i32, ptr %__new, align 4, !dbg !4785
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #17, !dbg !4785, !srcloc !4786
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !4785
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !4785
  %9 = icmp ult i8 %asmresult, 2, !dbg !4785
  call void @llvm.assume(i1 %9), !dbg !4785
  store i8 %asmresult, ptr %success, align 1, !dbg !4785
  store i32 %asmresult1, ptr %__old, align 4, !dbg !4785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4785
  %10 = load i8, ptr %success, align 1, !dbg !4787, !range !4406, !noundef !422
  %tobool = trunc i8 %10 to i1, !dbg !4787
  %lnot = xor i1 %tobool, true, !dbg !4787
  %lnot2 = xor i1 %lnot, true, !dbg !4787
  %lnot3 = xor i1 %lnot2, true, !dbg !4787
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4787
  %conv = sext i32 %lnot.ext to i64, !dbg !4787
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4787
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4787
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4785

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !4787
  %12 = load ptr, ptr %_old, align 8, !dbg !4787
  store i32 %11, ptr %12, align 4, !dbg !4787
  br label %if.end, !dbg !4787

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !4785, !range !4406, !noundef !422
  %tobool5 = trunc i8 %13 to i1, !dbg !4785
  %lnot6 = xor i1 %tobool5, true, !dbg !4785
  %lnot8 = xor i1 %lnot6, true, !dbg !4785
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4785
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !4785
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !4785
  store i64 %expval11, ptr %tmp, align 8, !dbg !4787
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #17, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #17, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !4789
  %14 = load i64, ptr %tmp, align 8, !dbg !4785
  %tobool12 = icmp ne i64 %14, 0, !dbg !4789
  ret i1 %tobool12, !dbg !4790
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4791 dso_local void @cpufreq_remove_update_util_hook(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4792 dso_local void @synchronize_rcu() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !4794 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4796, metadata !DIExpression()), !dbg !4798
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4797, metadata !DIExpression()), !dbg !4799
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4800
  %1 = load i64, ptr %size.addr, align 8, !dbg !4801
  %conv = trunc i64 %1 to i32, !dbg !4801
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !4802
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4803
  %3 = load i64, ptr %size.addr, align 8, !dbg !4803
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !4803
  ret void, !dbg !4804
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !4805 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4807, metadata !DIExpression()), !dbg !4809
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4808, metadata !DIExpression()), !dbg !4810
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4811
  %1 = load i32, ptr %i.addr, align 4, !dbg !4812
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !4813
  ret void, !dbg !4814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !4815 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4817, metadata !DIExpression()), !dbg !4819
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4818, metadata !DIExpression()), !dbg !4820
  br label %do.body, !dbg !4821

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !4822
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4822
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !4822
  store volatile i32 %0, ptr %counter, align 4, !dbg !4822
  br label %do.end, !dbg !4822

do.end:                                           ; preds = %do.body
  ret void, !dbg !4824
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4825 dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind memory(read) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }
attributes #24 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!llvm.ident = !{!2936}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/cpufreq/cpufreq_governor.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a46ad53fa45f1efb1c80d26a32a9fdfa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sampling_rate_store263", scope: !9, file: !2, line: 83, type: !115, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpufreq/.cpufreq_governor.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpufreq/cpufreq_governor\22 -D KBUILD_BASENAME=\22cpufreq_governor\22 -D KBUILD_MODNAME=\22cpufreq_governor\22 -D __KBUILD_MODNAME=kmod_cpufreq_governor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpufreq/cpufreq_governor.ll drivers/cpufreq/cpufreq_governor.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !114, globals: !2860, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !24, !28, !34, !39, !45, !52, !59, !73, !78, !104}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !19, line: 41, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!22 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!23 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !19, line: 80, baseType: !13, size: 32, elements: !25)
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!27 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !29, line: 41, baseType: !13, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!32 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!33 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !35, line: 65, baseType: !13, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!38 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !40, line: 16, baseType: !13, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "TT_NONE", value: 0)
!43 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!44 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !46, line: 51, baseType: !13, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!49 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!50 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!51 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !53, line: 312, baseType: !13, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!56 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!57 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!58 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpu_usage_stat", file: !60, line: 20, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/kernel_stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3834cb8375a149cb1dacea31b5d9e6b8")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!62 = !DIEnumerator(name: "CPUTIME_USER", value: 0)
!63 = !DIEnumerator(name: "CPUTIME_NICE", value: 1)
!64 = !DIEnumerator(name: "CPUTIME_SYSTEM", value: 2)
!65 = !DIEnumerator(name: "CPUTIME_SOFTIRQ", value: 3)
!66 = !DIEnumerator(name: "CPUTIME_IRQ", value: 4)
!67 = !DIEnumerator(name: "CPUTIME_IDLE", value: 5)
!68 = !DIEnumerator(name: "CPUTIME_IOWAIT", value: 6)
!69 = !DIEnumerator(name: "CPUTIME_STEAL", value: 7)
!70 = !DIEnumerator(name: "CPUTIME_GUEST", value: 8)
!71 = !DIEnumerator(name: "CPUTIME_GUEST_NICE", value: 9)
!72 = !DIEnumerator(name: "NR_STATS", value: 10)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 10, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "false", value: 0)
!77 = !DIEnumerator(name: "true", value: 1)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 30, baseType: !13, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!81 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!82 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!83 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!84 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!85 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!86 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!87 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!88 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!89 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!90 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!91 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!92 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!93 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!94 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!95 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!96 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!97 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!98 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!99 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!100 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!101 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!102 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!103 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !105, line: 364, baseType: !13, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!106 = !{!107, !108, !109, !110, !111, !112, !113}
!107 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!108 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!109 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!110 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!111 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!112 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!113 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!114 = !{!115, !116, !13, !2823, !132, !2840, !167, !2847, !2774, !2785, !1012, !2848, !2850, !450, !2851, !461, !2854, !2857, !2859}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policy_dbs_info", file: !118, line: 78, size: 1344, elements: !119)
!118 = !DIFile(filename: "drivers/cpufreq/cpufreq_governor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02d45564b55413305d597257ec4da6ff")
!119 = !{!120, !2753, !2754, !2755, !2756, !2757, !2772, !2773, !2818, !2819, !2820, !2821, !2822}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !117, file: !118, line: 79, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !29, line: 55, size: 5120, elements: !123)
!123 = !{!124, !135, !136, !137, !138, !139, !143, !149, !150, !151, !152, !153, !154, !155, !1229, !1230, !1231, !1232, !1267, !1280, !1281, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1311, !2744, !2747, !2748, !2751, !2752}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !122, file: !29, line: 57, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !126, line: 913, baseType: !127)
!126 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !133)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !126, line: 19, size: 64, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !128, file: !126, line: 19, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !133)
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !122, file: !29, line: 58, baseType: !125, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !122, file: !29, line: 59, baseType: !125, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !122, file: !29, line: 61, baseType: !13, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !122, file: !29, line: 63, baseType: !13, size: 32, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !122, file: !29, line: 65, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !142, line: 17, flags: DIFlagFwdDecl)
!142 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !122, file: !29, line: 66, baseType: !144, size: 96, offset: 320)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !29, line: 47, size: 96, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !144, file: !29, line: 48, baseType: !13, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !144, file: !29, line: 49, baseType: !13, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !144, file: !29, line: 52, baseType: !13, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !122, file: !29, line: 68, baseType: !13, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !122, file: !29, line: 69, baseType: !13, size: 32, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !122, file: !29, line: 70, baseType: !13, size: 32, offset: 480)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !122, file: !29, line: 72, baseType: !13, size: 32, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !122, file: !29, line: 74, baseType: !13, size: 32, offset: 544)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !122, file: !29, line: 75, baseType: !13, size: 32, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !122, file: !29, line: 76, baseType: !156, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !29, line: 577, size: 832, elements: !158)
!158 = !{!159, !163, !168, !172, !173, !174, !175, !186, !190, !196, !1228}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !29, line: 578, baseType: !160, size: 128)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !157, file: !29, line: 579, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !121}
!167 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !157, file: !29, line: 580, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !121}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !157, file: !29, line: 581, baseType: !164, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !157, file: !29, line: 582, baseType: !169, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !157, file: !29, line: 583, baseType: !169, size: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !157, file: !29, line: 584, baseType: !176, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !121, !185}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !180, line: 66, baseType: !181)
!180 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !182, line: 73, baseType: !183)
!182 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !182, line: 15, baseType: !184)
!184 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !157, file: !29, line: 586, baseType: !187, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!167, !121, !13}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !157, file: !29, line: 588, baseType: !191, size: 128, offset: 576)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !180, line: 190, size: 128, elements: !192)
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !180, line: 191, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !180, line: 191, baseType: !194, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !157, file: !29, line: 589, baseType: !197, size: 64, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !53, line: 402, size: 9216, align: 512, elements: !199)
!199 = !{!200, !201, !202, !206, !876, !902, !903, !904, !905, !909, !912, !913, !914, !967, !968, !969, !970, !971, !972, !973, !974, !982, !986, !1006, !1024, !1025, !1026, !1027, !1036, !1060, !1061, !1064, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1078, !1079, !1186, !1194, !1195, !1196, !1198, !1202, !1203, !1207, !1208, !1209, !1210, !1212, !1213, !1214, !1221, !1222, !1223, !1227}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !198, file: !53, line: 403, baseType: !52, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !198, file: !53, line: 406, baseType: !191, size: 128, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !53, line: 409, baseType: !203, size: 448, offset: 192)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 56)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !198, file: !53, line: 417, baseType: !207, size: 768, offset: 640)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !53, line: 45, size: 768, elements: !208)
!208 = !{!209, !859, !860, !861, !864}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !207, file: !53, line: 46, baseType: !210, size: 512)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !211, line: 64, size: 512, elements: !212)
!211 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!212 = !{!213, !216, !217, !219, !305, !730, !844, !854, !855, !856, !857, !858}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !211, line: 65, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !210, file: !211, line: 66, baseType: !191, size: 128, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !211, line: 67, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !210, file: !211, line: 68, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !211, line: 168, size: 768, elements: !222)
!222 = !{!223, !224, !267, !268}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !221, file: !211, line: 169, baseType: !191, size: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !221, file: !211, line: 170, baseType: !225, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !226, line: 29, baseType: !227)
!226 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !226, line: 17, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !226, line: 18, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !226, line: 18, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !230, file: !226, line: 19, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !234, line: 14, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !233, file: !234, line: 15, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !238, line: 44, baseType: !239)
!238 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !238, line: 14, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !238, line: 15, baseType: !242, size: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !238, line: 15, size: 32, elements: !243)
!243 = !{!244, !249, !259}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !242, file: !238, line: 16, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !180, line: 174, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 172, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !246, file: !180, line: 173, baseType: !167, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !238, line: 24, baseType: !250, size: 16)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !238, line: 24, size: 16, elements: !251)
!251 = !{!252, !258}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !250, file: !238, line: 25, baseType: !253, size: 8)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !254, line: 17, baseType: !255)
!254 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !256, line: 21, baseType: !257)
!256 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!257 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !250, file: !238, line: 26, baseType: !253, size: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !238, line: 28, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !238, line: 28, size: 32, elements: !261)
!261 = !{!262, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !260, file: !238, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !254, line: 19, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !256, line: 24, baseType: !265)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !238, line: 30, baseType: !263, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !221, file: !211, line: 171, baseType: !210, size: 512, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !221, file: !211, line: 172, baseType: !269, size: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !211, line: 133, size: 192, elements: !272)
!272 = !{!273, !280, !285}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !271, file: !211, line: 134, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!167, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !211, line: 135, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!214, !278}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !271, file: !211, line: 136, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!167, !278, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !211, line: 125, size: 20736, elements: !292)
!292 = !{!293, !295, !299, !300, !304}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !291, file: !211, line: 126, baseType: !294, size: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, elements: !5)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !291, file: !211, line: 127, baseType: !296, size: 4096, offset: 192)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 4096, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !291, file: !211, line: 128, baseType: !167, size: 32, offset: 4288)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !291, file: !211, line: 129, baseType: !301, size: 16384, offset: 4320)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 2048)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !291, file: !211, line: 130, baseType: !167, size: 32, offset: 20704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !210, file: !211, line: 69, baseType: !306, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !211, line: 116, size: 384, elements: !309)
!309 = !{!310, !314, !337, !677, !708, !712}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !308, file: !211, line: 117, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !218}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !308, file: !211, line: 118, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !318, line: 254, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!319 = !{!320, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !317, file: !318, line: 255, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!179, !218, !324, !185}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !318, line: 30, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !318, line: 31, baseType: !214, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !325, file: !318, line: 32, baseType: !329, size: 16, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !180, line: 24, baseType: !265)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !317, file: !318, line: 256, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!179, !218, !324, !214, !334}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 61, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !182, line: 72, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !182, line: 16, baseType: !132)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !308, file: !211, line: 119, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !318, line: 84, size: 320, elements: !342)
!342 = !{!343, !344, !348, !673, !675}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !318, line: 85, baseType: !214, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !341, file: !318, line: 86, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!329, !218, !324, !167}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !341, file: !318, line: 88, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!329, !218, !352, !167}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !318, line: 175, size: 512, elements: !354)
!354 = !{!355, !356, !357, !358, !365, !375, !376}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !353, file: !318, line: 176, baseType: !325, size: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !353, file: !318, line: 177, baseType: !334, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !353, file: !318, line: 178, baseType: !115, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !353, file: !318, line: 179, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !364, line: 32, flags: DIFlagFwdDecl)
!364 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !353, file: !318, line: 180, baseType: !366, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!179, !369, !218, !352, !185, !372, !334}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !371, line: 537, flags: DIFlagFwdDecl)
!371 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !180, line: 52, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !182, line: 88, baseType: !374)
!374 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !353, file: !318, line: 182, baseType: !366, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !353, file: !318, line: 184, baseType: !377, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!167, !369, !218, !352, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !364, line: 625, size: 1344, elements: !382)
!382 = !{!383, !400, !621, !627, !634, !635, !640, !643, !655, !656, !659, !663, !664, !665, !666, !667, !671}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !364, line: 628, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !364, line: 628, size: 128, elements: !385)
!385 = !{!386, !391}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !364, line: 629, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !364, line: 629, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !387, file: !364, line: 631, baseType: !132, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !387, file: !364, line: 632, baseType: !132, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !384, file: !364, line: 635, baseType: !392, size: 128, align: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !180, line: 232, size: 128, align: 64, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !180, line: 233, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !392, file: !180, line: 234, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !395}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !381, file: !364, line: 639, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !364, line: 733, size: 10240, elements: !403)
!403 = !{!404, !617}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !364, line: 734, baseType: !405, size: 10240)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !364, line: 734, size: 10240, elements: !406)
!406 = !{!407, !411, !425, !429, !430, !431, !432, !433, !434, !442, !443, !444, !453, !454, !463, !464, !465, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !512, !526, !529, !584, !585, !586, !589, !593, !594, !597, !598, !599, !605, !606}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !364, line: 739, baseType: !408, size: 512, align: 512)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !364, line: 739, size: 512, align: 512, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !408, file: !364, line: 747, baseType: !245, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !405, file: !364, line: 750, baseType: !412, size: 128, offset: 512)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !413, line: 218, size: 128, elements: !414)
!413 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!414 = !{!415, !423, !424}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 219, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 219, size: 32, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !416, file: !413, line: 220, baseType: !225, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !416, file: !413, line: 221, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !413, line: 197, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 197, elements: !422)
!422 = !{}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !412, file: !413, line: 223, baseType: !13, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !412, file: !413, line: 224, baseType: !115, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !405, file: !364, line: 752, baseType: !426, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!132, !369, !132, !132, !132, !132}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !405, file: !364, line: 756, baseType: !132, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !405, file: !364, line: 757, baseType: !132, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !405, file: !364, line: 760, baseType: !132, size: 64, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !405, file: !364, line: 761, baseType: !132, size: 64, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !405, file: !364, line: 763, baseType: !132, size: 64, offset: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !405, file: !364, line: 764, baseType: !435, size: 64, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !371, line: 299, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 299, size: 64, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !437, file: !371, line: 299, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !441, line: 18, baseType: !132)
!441 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!442 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !405, file: !364, line: 773, baseType: !245, size: 32, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !405, file: !364, line: 785, baseType: !245, size: 32, offset: 1120)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !405, file: !364, line: 795, baseType: !445, size: 64, offset: 1152)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !364, line: 726, size: 128, elements: !447)
!447 = !{!448, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !446, file: !364, line: 727, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !254, line: 23, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !256, line: 31, baseType: !451)
!451 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !446, file: !364, line: 728, baseType: !167, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !405, file: !364, line: 801, baseType: !132, size: 64, offset: 1216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !405, file: !364, line: 804, baseType: !455, size: 64, offset: 1280)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !456, line: 13, baseType: !457)
!456 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !180, line: 181, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 179, size: 64, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !458, file: !180, line: 180, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !254, line: 22, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !256, line: 30, baseType: !374)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !405, file: !364, line: 806, baseType: !167, size: 32, offset: 1344)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !405, file: !364, line: 808, baseType: !225, size: 32, offset: 1376)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !405, file: !364, line: 823, baseType: !466, size: 320, offset: 1408)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !467, line: 48, size: 320, elements: !468)
!467 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!468 = !{!469, !470, !471, !476, !478}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !467, line: 49, baseType: !455, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !466, file: !467, line: 55, baseType: !455, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !466, file: !467, line: 57, baseType: !472, size: 32, offset: 128)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !473, line: 15, size: 32, elements: !474)
!473 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !472, file: !473, line: 20, baseType: !245, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !466, file: !467, line: 59, baseType: !477, size: 32, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !234, line: 23, baseType: !233)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !466, file: !467, line: 60, baseType: !191, size: 128, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !405, file: !364, line: 825, baseType: !191, size: 128, offset: 1728)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !405, file: !364, line: 845, baseType: !167, size: 32, offset: 1856)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !405, file: !364, line: 849, baseType: !132, size: 64, offset: 1920)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !405, file: !364, line: 850, baseType: !132, size: 64, offset: 1984)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !405, file: !364, line: 852, baseType: !132, size: 64, offset: 2048)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !405, file: !364, line: 853, baseType: !132, size: 64, offset: 2112)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !405, file: !364, line: 854, baseType: !457, size: 64, offset: 2176)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !405, file: !364, line: 855, baseType: !132, size: 64, offset: 2240)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !405, file: !364, line: 856, baseType: !132, size: 64, offset: 2304)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !405, file: !364, line: 857, baseType: !132, size: 64, offset: 2368)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !405, file: !364, line: 858, baseType: !132, size: 64, offset: 2432)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !405, file: !364, line: 865, baseType: !491, size: 32, offset: 2496)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !492, line: 69, baseType: !493)
!492 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !492, line: 64, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !493, file: !492, line: 65, baseType: !13, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !405, file: !364, line: 867, baseType: !225, size: 32, offset: 2528)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !405, file: !364, line: 869, baseType: !132, size: 64, offset: 2560)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !405, file: !364, line: 869, baseType: !132, size: 64, offset: 2624)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !405, file: !364, line: 869, baseType: !132, size: 64, offset: 2688)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !405, file: !364, line: 869, baseType: !132, size: 64, offset: 2752)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !405, file: !364, line: 870, baseType: !132, size: 64, offset: 2816)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !405, file: !364, line: 870, baseType: !132, size: 64, offset: 2880)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !405, file: !364, line: 870, baseType: !132, size: 64, offset: 2944)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !405, file: !364, line: 871, baseType: !132, size: 64, offset: 3008)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !405, file: !364, line: 871, baseType: !132, size: 64, offset: 3072)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !405, file: !364, line: 871, baseType: !132, size: 64, offset: 3136)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !405, file: !364, line: 871, baseType: !132, size: 64, offset: 3200)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !405, file: !364, line: 873, baseType: !509, size: 3328, offset: 3264)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 3328, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 52)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !405, file: !364, line: 875, baseType: !513, size: 1280, offset: 6592)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 1280, elements: !524)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !515, line: 22, size: 320, elements: !516)
!515 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !514, file: !515, line: 23, baseType: !477, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !514, file: !515, line: 24, baseType: !461, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !514, file: !515, line: 26, baseType: !191, size: 128, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !514, file: !515, line: 28, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !254, line: 20, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !256, line: 26, baseType: !167)
!524 = !{!525}
!525 = !DISubrange(count: 4)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !405, file: !364, line: 877, baseType: !527, size: 64, offset: 7872)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !364, line: 877, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !405, file: !364, line: 880, baseType: !530, size: 1088, offset: 7936)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !531, line: 72, baseType: !532)
!531 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 23, size: 1088, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !541, !542, !550, !551, !578, !579, !580}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !532, file: !531, line: 28, baseType: !449, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !532, file: !531, line: 38, baseType: !457, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !532, file: !531, line: 40, baseType: !132, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !532, file: !531, line: 43, baseType: !466, size: 320, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !532, file: !531, line: 44, baseType: !539, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !531, line: 44, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !531, line: 48, baseType: !132, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !532, file: !531, line: 59, baseType: !543, size: 256, offset: 640)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !544, line: 66, size: 256, elements: !545)
!544 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!545 = !{!546, !547, !548, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !543, file: !544, line: 67, baseType: !455, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !543, file: !544, line: 68, baseType: !477, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !543, file: !544, line: 70, baseType: !472, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !543, file: !544, line: 72, baseType: !191, size: 128, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !532, file: !531, line: 60, baseType: !115, size: 64, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !532, file: !531, line: 61, baseType: !552, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !555, line: 13, size: 1216, elements: !556)
!555 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!556 = !{!557, !558, !559, !560, !561, !562, !563, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !554, file: !555, line: 14, baseType: !115, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !554, file: !555, line: 15, baseType: !132, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !554, file: !555, line: 17, baseType: !132, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !554, file: !555, line: 17, baseType: !132, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !554, file: !555, line: 18, baseType: !132, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !554, file: !555, line: 18, baseType: !132, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !554, file: !555, line: 19, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !554, file: !555, line: 21, baseType: !184, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !554, file: !555, line: 23, baseType: !184, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !554, file: !555, line: 24, baseType: !184, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !554, file: !555, line: 25, baseType: !184, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !554, file: !555, line: 26, baseType: !184, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !554, file: !555, line: 27, baseType: !184, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !554, file: !555, line: 28, baseType: !184, size: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !554, file: !555, line: 29, baseType: !184, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !554, file: !555, line: 30, baseType: !184, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !554, file: !555, line: 31, baseType: !184, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !554, file: !555, line: 32, baseType: !184, size: 64, offset: 1088)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !554, file: !555, line: 33, baseType: !184, size: 64, offset: 1152)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !532, file: !531, line: 63, baseType: !245, size: 32, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !532, file: !531, line: 69, baseType: !263, size: 16, offset: 1056)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !532, file: !531, line: 70, baseType: !581, size: 16, offset: 1072)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !254, line: 18, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !256, line: 23, baseType: !583)
!583 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !364, line: 882, baseType: !132, size: 64, offset: 9024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !405, file: !364, line: 885, baseType: !225, size: 32, offset: 9088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !405, file: !364, line: 886, baseType: !587, size: 64, offset: 9152)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !364, line: 732, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !405, file: !364, line: 901, baseType: !590, size: 64, offset: 9216)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !592, line: 18, flags: DIFlagFwdDecl)
!592 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !405, file: !364, line: 904, baseType: !369, size: 64, offset: 9280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !405, file: !364, line: 906, baseType: !595, size: 64, offset: 9344)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !364, line: 906, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !405, file: !364, line: 930, baseType: !245, size: 32, offset: 9408)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !405, file: !364, line: 933, baseType: !245, size: 32, offset: 9440)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !405, file: !364, line: 935, baseType: !600, size: 64, offset: 9472)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !46, line: 103, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !600, file: !46, line: 104, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !46, line: 101, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !405, file: !364, line: 940, baseType: !455, size: 64, offset: 9536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !405, file: !364, line: 942, baseType: !607, size: 256, offset: 9600)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !79, line: 98, size: 256, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !607, file: !79, line: 99, baseType: !455, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !607, file: !79, line: 100, baseType: !191, size: 128, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !607, file: !79, line: 101, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !79, line: 21, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !402, file: !364, line: 986, baseType: !618, offset: 10240)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: -1)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !381, file: !364, line: 640, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !371, line: 297, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !371, line: 297, size: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !623, file: !371, line: 297, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !441, line: 19, baseType: !132)
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !364, line: 646, baseType: !628, size: 64, offset: 256)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !364, line: 646, size: 64, elements: !629)
!629 = !{!630, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !628, file: !364, line: 647, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !364, line: 542, baseType: !132)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !628, file: !364, line: 648, baseType: !632, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !381, file: !364, line: 666, baseType: !167, size: 32, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !381, file: !364, line: 667, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !364, line: 579, size: 320, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !637, file: !364, line: 580, baseType: !466, size: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !381, file: !364, line: 670, baseType: !641, size: 8, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !180, line: 35, baseType: !642)
!642 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !381, file: !364, line: 681, baseType: !644, size: 256, offset: 512)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !364, line: 678, size: 256, elements: !645)
!645 = !{!646, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !644, file: !364, line: 679, baseType: !647, size: 192, align: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !648, line: 5, size: 192, align: 64, elements: !649)
!648 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!649 = !{!650, !651, !653}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !647, file: !648, line: 6, baseType: !132, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !647, file: !648, line: 7, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !647, file: !648, line: 8, baseType: !652, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !644, file: !364, line: 680, baseType: !132, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !381, file: !364, line: 689, baseType: !191, size: 128, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !381, file: !364, line: 691, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !364, line: 691, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !381, file: !364, line: 694, baseType: !660, size: 64, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !364, line: 694, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !381, file: !364, line: 697, baseType: !132, size: 64, offset: 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !381, file: !364, line: 699, baseType: !369, size: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !381, file: !364, line: 700, baseType: !115, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !381, file: !364, line: 711, baseType: !455, size: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !381, file: !364, line: 717, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !670, line: 54, flags: DIFlagFwdDecl)
!670 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !381, file: !364, line: 722, baseType: !672, offset: 1344)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !364, line: 570, elements: !422)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !341, file: !318, line: 90, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !341, file: !318, line: 91, baseType: !676, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !308, file: !211, line: 120, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !278}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !684)
!684 = !{!685, !686, !690, !694, !700, !704}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !12, line: 40, baseType: !11, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !683, file: !12, line: 41, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!641}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !683, file: !12, line: 42, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!115}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !683, file: !12, line: 43, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!564, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !683, file: !12, line: 44, baseType: !701, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!564}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !683, file: !12, line: 45, baseType: !705, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !115}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !308, file: !211, line: 121, baseType: !709, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!564, !278}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !308, file: !211, line: 122, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !278, !716, !723}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !592, line: 23, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 21, size: 32, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !718, file: !592, line: 22, baseType: !721, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !180, line: 37, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !182, line: 49, baseType: !13)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !592, line: 28, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 26, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !725, file: !592, line: 27, baseType: !728, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !180, line: 38, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !182, line: 50, baseType: !13)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !210, file: !211, line: 70, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !733, line: 190, size: 1152, elements: !734)
!733 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !836, !837, !838, !839, !840, !843}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !733, line: 191, baseType: !245, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !732, file: !733, line: 192, baseType: !245, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !732, file: !733, line: 202, baseType: !731, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !732, file: !733, line: 203, baseType: !214, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !732, file: !733, line: 205, baseType: !647, size: 192, align: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !732, file: !733, line: 207, baseType: !564, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !732, file: !733, line: 208, baseType: !13, size: 32, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 209, baseType: !743, size: 256, offset: 512)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 209, size: 256, elements: !744)
!744 = !{!745, !757, !761}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !743, file: !733, line: 210, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !733, line: 153, size: 256, elements: !747)
!747 = !{!748, !749, !753, !756}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !746, file: !733, line: 154, baseType: !132, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !746, file: !733, line: 156, baseType: !750, size: 64, offset: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !648, line: 12, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !750, file: !648, line: 13, baseType: !652, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !746, file: !733, line: 162, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !733, line: 162, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !746, file: !733, line: 167, baseType: !132, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !743, file: !733, line: 211, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !733, line: 170, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !758, file: !733, line: 171, baseType: !731, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !743, file: !733, line: 212, baseType: !762, size: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !733, line: 174, size: 256, elements: !763)
!763 = !{!764, !831, !834, !835}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !762, file: !733, line: 175, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !733, line: 271, size: 768, elements: !768)
!768 = !{!769, !791, !795, !799, !804, !808, !812, !816, !817, !818, !819, !827}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !767, file: !733, line: 276, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!167, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !733, line: 251, size: 1216, elements: !775)
!775 = !{!776, !777, !778, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !774, file: !733, line: 253, baseType: !731, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !774, file: !733, line: 254, baseType: !369, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !774, file: !733, line: 255, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !670, line: 66, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !774, file: !733, line: 256, baseType: !115, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !774, file: !733, line: 259, baseType: !543, size: 256, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !774, file: !733, line: 260, baseType: !543, size: 256, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !774, file: !733, line: 261, baseType: !167, size: 32, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !774, file: !733, line: 262, baseType: !191, size: 128, offset: 832)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !774, file: !733, line: 263, baseType: !185, size: 64, offset: 960)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !774, file: !733, line: 265, baseType: !334, size: 64, offset: 1024)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !774, file: !733, line: 266, baseType: !641, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !774, file: !733, line: 267, baseType: !641, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !774, file: !733, line: 268, baseType: !660, size: 64, offset: 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !767, file: !733, line: 277, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !773}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !767, file: !733, line: 290, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!167, !779, !115}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !767, file: !733, line: 292, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!115, !779, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !767, file: !733, line: 293, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!115, !779, !115, !803}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !767, file: !733, line: 294, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !779, !115}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !767, file: !733, line: 296, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!179, !773, !185, !334, !372}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !767, file: !733, line: 306, baseType: !334, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !767, file: !733, line: 313, baseType: !641, size: 8, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !767, file: !733, line: 314, baseType: !813, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !767, file: !733, line: 317, baseType: !820, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!823, !773, !825}
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !824, line: 59, baseType: !13)
!824 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !733, line: 31, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !767, file: !733, line: 320, baseType: !828, size: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!167, !773, !380}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !762, file: !733, line: 176, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !733, line: 35, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !762, file: !733, line: 177, baseType: !372, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !762, file: !733, line: 178, baseType: !731, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !732, file: !733, line: 215, baseType: !115, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !732, file: !733, line: 221, baseType: !449, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !733, line: 223, baseType: !265, size: 16, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !732, file: !733, line: 224, baseType: !329, size: 16, offset: 912)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !732, file: !733, line: 225, baseType: !841, size: 64, offset: 960)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !733, line: 36, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !732, file: !733, line: 227, baseType: !392, size: 128, align: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !210, file: !211, line: 71, baseType: !845, size: 32, offset: 448)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !846, line: 19, size: 32, elements: !847)
!846 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !845, file: !846, line: 20, baseType: !849, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !850, line: 113, baseType: !851)
!850 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !850, line: 111, size: 32, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !851, file: !850, line: 112, baseType: !245, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !210, file: !211, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !210, file: !211, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !210, file: !211, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !210, file: !211, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !210, file: !211, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !207, file: !53, line: 47, baseType: !197, size: 64, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !207, file: !53, line: 48, baseType: !218, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !207, file: !53, line: 49, baseType: !862, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !53, line: 49, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !207, file: !53, line: 50, baseType: !865, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !867, line: 26, size: 256, elements: !868)
!867 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !866, file: !867, line: 27, baseType: !13, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !866, file: !867, line: 28, baseType: !871, size: 192, offset: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !872, line: 43, size: 192, elements: !873)
!872 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !871, file: !872, line: 44, baseType: !477, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !871, file: !872, line: 45, baseType: !191, size: 128, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !198, file: !53, line: 418, baseType: !877, size: 64, offset: 1408)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !53, line: 53, size: 448, elements: !879)
!879 = !{!880, !881, !886, !890, !894, !898}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !878, file: !53, line: 54, baseType: !325, size: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !878, file: !53, line: 55, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!179, !877, !885, !185}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !878, file: !53, line: 57, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!179, !877, !885, !214, !334}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !878, file: !53, line: 59, baseType: !891, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !197, !214}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !878, file: !53, line: 60, baseType: !895, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!167, !197}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !878, file: !53, line: 61, baseType: !899, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !197}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !198, file: !53, line: 419, baseType: !214, size: 64, offset: 1472)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !198, file: !53, line: 420, baseType: !214, size: 64, offset: 1536)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !198, file: !53, line: 421, baseType: !218, size: 64, offset: 1600)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !198, file: !53, line: 424, baseType: !906, size: 64, offset: 1664)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !53, line: 424, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !198, file: !53, line: 425, baseType: !910, size: 64, offset: 1728)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !198, file: !53, line: 426, baseType: !13, size: 32, offset: 1792)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !198, file: !53, line: 435, baseType: !543, size: 256, offset: 1856)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !198, file: !53, line: 437, baseType: !915, size: 64, offset: 2112)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !917, line: 69, size: 320, elements: !918)
!917 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!918 = !{!919, !920, !921, !938, !940, !944, !945}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !916, file: !917, line: 70, baseType: !214, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !916, file: !917, line: 71, baseType: !197, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !916, file: !917, line: 72, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !917, line: 47, size: 256, elements: !925)
!925 = !{!926, !927, !933, !937}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !917, line: 49, baseType: !13, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !924, file: !917, line: 51, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!167, !214, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !924, file: !917, line: 53, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!167, !185, !931}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !924, file: !917, line: 55, baseType: !705, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !916, file: !917, line: 73, baseType: !939, size: 16, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !916, file: !917, line: 74, baseType: !941, size: 8, offset: 208)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !254, line: 16, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !256, line: 20, baseType: !943)
!943 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !916, file: !917, line: 75, baseType: !253, size: 8, offset: 216)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !917, line: 76, baseType: !946, size: 64, offset: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !916, file: !917, line: 76, size: 64, elements: !947)
!947 = !{!948, !949, !956}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !946, file: !917, line: 77, baseType: !115, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !946, file: !917, line: 78, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !917, line: 86, size: 128, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !952, file: !917, line: 87, baseType: !13, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !952, file: !917, line: 88, baseType: !185, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !946, file: !917, line: 79, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !917, line: 92, size: 256, elements: !960)
!960 = !{!961, !962, !963, !965, !966}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !959, file: !917, line: 94, baseType: !13, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !959, file: !917, line: 95, baseType: !13, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !959, file: !917, line: 96, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !959, file: !917, line: 97, baseType: !922, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !959, file: !917, line: 98, baseType: !115, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !198, file: !53, line: 438, baseType: !13, size: 32, offset: 2176)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !198, file: !53, line: 441, baseType: !13, size: 32, offset: 2208)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !198, file: !53, line: 442, baseType: !906, size: 64, offset: 2240)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !198, file: !53, line: 443, baseType: !910, size: 64, offset: 2304)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !198, file: !53, line: 444, baseType: !641, size: 8, offset: 2368)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !198, file: !53, line: 451, baseType: !641, size: 8, offset: 2376)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !198, file: !53, line: 454, baseType: !13, size: 32, offset: 2400)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !198, file: !53, line: 455, baseType: !975, size: 64, offset: 2432)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !977, line: 23, size: 96, elements: !978)
!977 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !976, file: !977, line: 24, baseType: !167, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !976, file: !977, line: 24, baseType: !167, size: 32, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !976, file: !977, line: 24, baseType: !167, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !198, file: !53, line: 458, baseType: !983, size: 64, offset: 2496)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!167}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !198, file: !53, line: 460, baseType: !987, size: 4032, align: 512, offset: 2560)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 4032, elements: !1004)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !53, line: 362, size: 576, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !988, file: !53, line: 363, baseType: !115, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !988, file: !53, line: 364, baseType: !13, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !988, file: !53, line: 367, baseType: !993, size: 448, offset: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !53, line: 319, size: 448, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !993, file: !53, line: 320, baseType: !197, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !993, file: !53, line: 321, baseType: !997, size: 384, offset: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !998, line: 40, size: 384, elements: !999)
!998 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !997, file: !998, line: 41, baseType: !1001, size: 384, align: 64)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 384, align: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 2)
!1004 = !{!1005}
!1005 = !DISubrange(count: 7)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !198, file: !53, line: 463, baseType: !1007, size: 192, offset: 6592)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1008, line: 8, size: 192, elements: !1009)
!1008 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1009 = !{!1010, !1011, !1013}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1007, file: !1008, line: 10, baseType: !13, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1007, file: !1008, line: 11, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1007, file: !1008, line: 12, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1016, line: 59, size: 48, elements: !1017)
!1016 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1015, file: !1016, line: 60, baseType: !581, size: 16)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1015, file: !1016, line: 61, baseType: !581, size: 16, offset: 16)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1015, file: !1016, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1015, file: !1016, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1015, file: !1016, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1015, file: !1016, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !198, file: !53, line: 465, baseType: !132, size: 64, offset: 6784)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !198, file: !53, line: 469, baseType: !13, size: 32, offset: 6848)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !198, file: !53, line: 470, baseType: !191, size: 128, offset: 6912)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !198, file: !53, line: 471, baseType: !1028, size: 64, offset: 7040)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1030, line: 33, size: 96, elements: !1031)
!1030 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1031 = !{!1032, !1033, !1034, !1035}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1029, file: !1030, line: 37, baseType: !167, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1029, file: !1030, line: 43, baseType: !167, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1029, file: !1030, line: 45, baseType: !265, size: 16, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1030, line: 47, baseType: !265, size: 16, offset: 80)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !198, file: !53, line: 476, baseType: !1037, size: 64, offset: 7104)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !53, line: 378, size: 256, elements: !1039)
!1039 = !{!1040, !1057, !1058, !1059}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1038, file: !53, line: 379, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1043, line: 204, baseType: !1044)
!1043 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1043, line: 197, size: 192, elements: !1045)
!1045 = !{!1046, !1049, !1050, !1051, !1053, !1055}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1044, file: !1043, line: 198, baseType: !1047, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1043, line: 21, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !256, line: 27, baseType: !13)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1044, file: !1043, line: 199, baseType: !257, size: 8, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1044, file: !1043, line: 200, baseType: !257, size: 8, offset: 40)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1044, file: !1043, line: 201, baseType: !1052, size: 16, offset: 48)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1043, line: 17, baseType: !264)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1044, file: !1043, line: 202, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1043, line: 16, baseType: !450)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1044, file: !1043, line: 203, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1043, line: 22, baseType: !450)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1038, file: !53, line: 380, baseType: !13, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1038, file: !53, line: 381, baseType: !185, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1038, file: !53, line: 382, baseType: !185, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !198, file: !53, line: 477, baseType: !1038, size: 256, offset: 7168)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !198, file: !53, line: 480, baseType: !1062, size: 64, offset: 7424)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !53, line: 480, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !198, file: !53, line: 483, baseType: !1065, size: 64, offset: 7488)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !53, line: 483, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !198, file: !53, line: 488, baseType: !185, size: 64, offset: 7552)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !198, file: !53, line: 492, baseType: !115, size: 64, offset: 7616)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !198, file: !53, line: 493, baseType: !13, size: 32, offset: 7680)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !198, file: !53, line: 495, baseType: !115, size: 64, offset: 7744)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !198, file: !53, line: 496, baseType: !13, size: 32, offset: 7808)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !198, file: !53, line: 499, baseType: !13, size: 32, offset: 7840)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !198, file: !53, line: 500, baseType: !1074, size: 64, offset: 7872)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1076, line: 45, baseType: !1077)
!1076 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !198, file: !53, line: 503, baseType: !13, size: 32, offset: 7936)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !198, file: !53, line: 504, baseType: !1080, size: 64, offset: 8000)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1083, line: 96, size: 192, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1084 = !{!1085, !1086, !1147, !1150}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1082, file: !1083, line: 97, baseType: !13, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1082, file: !1083, line: 98, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1083, line: 24, size: 3072, elements: !1089)
!1089 = !{!1090, !1092, !1093, !1094, !1095, !1109, !1110, !1111, !1112, !1131, !1132, !1133, !1144, !1145, !1146}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1088, file: !1083, line: 26, baseType: !1091, size: 128)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 128, elements: !1002)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1088, file: !1083, line: 27, baseType: !1091, size: 128, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1088, file: !1083, line: 28, baseType: !167, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1088, file: !1083, line: 31, baseType: !225, size: 32, align: 512, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1088, file: !1083, line: 32, baseType: !1096, size: 960, offset: 576)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1097, line: 206, size: 960, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1098 = !{!1099, !1100, !1103, !1105, !1106, !1108}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1096, file: !1097, line: 207, baseType: !395, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1096, file: !1097, line: 208, baseType: !1101, size: 256, offset: 64)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 256, elements: !524)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1096, file: !1097, line: 209, baseType: !1104, size: 256, offset: 320)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !524)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1096, file: !1097, line: 213, baseType: !184, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1096, file: !1097, line: 215, baseType: !1107, size: 256, offset: 640)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !524)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !1097, line: 216, baseType: !253, size: 8, offset: 896)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1088, file: !1083, line: 33, baseType: !132, size: 64, offset: 1536)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1088, file: !1083, line: 34, baseType: !132, size: 64, offset: 1600)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1088, file: !1083, line: 35, baseType: !641, size: 8, offset: 1664)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1088, file: !1083, line: 36, baseType: !1113, size: 320, offset: 1728)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1114, line: 11, size: 320, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1115 = !{!1116, !1123, !1124, !1129}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1113, file: !1114, line: 16, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !180, line: 198, size: 128, elements: !1118)
!1118 = !{!1119, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !180, line: 199, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1117, file: !180, line: 199, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1113, file: !1114, line: 17, baseType: !132, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1113, file: !1114, line: 18, baseType: !1125, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !1114, line: 19, baseType: !1130, size: 32, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !254, line: 21, baseType: !1048)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1088, file: !1083, line: 37, baseType: !607, size: 256, offset: 2048)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1088, file: !1083, line: 38, baseType: !392, size: 128, align: 64, offset: 2304)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1088, file: !1083, line: 39, baseType: !1134, size: 64, offset: 2432)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1083, line: 49, size: 768, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1083, line: 50, baseType: !225, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1135, file: !1083, line: 51, baseType: !1104, size: 256, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1135, file: !1083, line: 53, baseType: !1104, size: 256, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1135, file: !1083, line: 54, baseType: !132, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1135, file: !1083, line: 55, baseType: !1134, size: 64, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1135, file: !1083, line: 56, baseType: !167, size: 32, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1135, file: !1083, line: 57, baseType: !167, size: 32, offset: 736)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1088, file: !1083, line: 40, baseType: !132, size: 64, offset: 2496)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1088, file: !1083, line: 42, baseType: !167, size: 32, offset: 2560)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1088, file: !1083, line: 43, baseType: !1081, size: 64, offset: 2624)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1082, file: !1083, line: 99, baseType: !1148, offset: 128)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1149, line: 211, elements: !422)
!1149 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1082, file: !1083, line: 100, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1083, line: 63, size: 3008, elements: !1153)
!1153 = !{!1154, !1155, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1185}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1152, file: !1083, line: 64, baseType: !1134, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1152, file: !1083, line: 65, baseType: !1156, size: 192, offset: 64)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 192, elements: !5)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1152, file: !1083, line: 67, baseType: !167, size: 32, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1152, file: !1083, line: 68, baseType: !543, size: 256, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1152, file: !1083, line: 69, baseType: !225, size: 32, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1152, file: !1083, line: 70, baseType: !543, size: 256, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1152, file: !1083, line: 71, baseType: !132, size: 64, offset: 896)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1152, file: !1083, line: 72, baseType: !132, size: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1152, file: !1083, line: 73, baseType: !132, size: 64, offset: 1024)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1152, file: !1083, line: 74, baseType: !132, size: 64, offset: 1088)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1152, file: !1083, line: 75, baseType: !132, size: 64, offset: 1152)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1152, file: !1083, line: 76, baseType: !132, size: 64, offset: 1216)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1152, file: !1083, line: 77, baseType: !132, size: 64, offset: 1280)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1152, file: !1083, line: 78, baseType: !132, size: 64, offset: 1344)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1152, file: !1083, line: 79, baseType: !641, size: 8, offset: 1408)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1152, file: !1083, line: 80, baseType: !132, size: 64, offset: 1472)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1152, file: !1083, line: 81, baseType: !543, size: 256, offset: 1536)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1152, file: !1083, line: 82, baseType: !866, size: 256, offset: 1792)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1152, file: !1083, line: 84, baseType: !245, size: 32, offset: 2048)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1152, file: !1083, line: 87, baseType: !132, size: 64, offset: 2112)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1152, file: !1083, line: 88, baseType: !132, size: 64, offset: 2176)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1152, file: !1083, line: 89, baseType: !1177, size: 704, offset: 2240)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !79, line: 111, size: 704, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1177, file: !79, line: 112, baseType: !607, size: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1177, file: !79, line: 113, baseType: !1113, size: 320, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1177, file: !79, line: 116, baseType: !1182, size: 64, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !79, line: 18, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1177, file: !79, line: 117, baseType: !167, size: 32, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1152, file: !1083, line: 90, baseType: !1081, size: 64, offset: 2944)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !198, file: !53, line: 515, baseType: !1187, size: 64, offset: 8064)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1189, line: 117, size: 128, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1188, file: !1189, line: 118, baseType: !522, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1188, file: !1189, line: 119, baseType: !522, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1188, file: !1189, line: 120, baseType: !184, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !198, file: !53, line: 516, baseType: !13, size: 32, offset: 8128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !198, file: !53, line: 519, baseType: !13, size: 32, offset: 8160)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !198, file: !53, line: 520, baseType: !1197, size: 64, offset: 8192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !198, file: !53, line: 523, baseType: !1199, size: 64, offset: 8256)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !53, line: 523, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !198, file: !53, line: 524, baseType: !13, size: 32, offset: 8320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !198, file: !53, line: 525, baseType: !1204, size: 64, offset: 8384)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !53, line: 525, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !198, file: !53, line: 526, baseType: !13, size: 32, offset: 8448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !198, file: !53, line: 533, baseType: !115, size: 64, offset: 8512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !198, file: !53, line: 534, baseType: !13, size: 32, offset: 8576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !198, file: !53, line: 535, baseType: !1211, size: 64, offset: 8640)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !198, file: !53, line: 536, baseType: !13, size: 32, offset: 8704)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !198, file: !53, line: 539, baseType: !167, size: 32, offset: 8736)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !198, file: !53, line: 540, baseType: !1215, size: 64, offset: 8768)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1217, line: 32, size: 64, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1216, file: !1217, line: 33, baseType: !522, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1216, file: !1217, line: 34, baseType: !522, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !198, file: !53, line: 563, baseType: !191, size: 128, offset: 8832)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !198, file: !53, line: 565, baseType: !191, size: 128, offset: 8960)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !198, file: !53, line: 568, baseType: !1224, size: 64, offset: 9088)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !198, file: !53, line: 570, baseType: !245, size: 32, offset: 9152)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !29, line: 590, baseType: !253, size: 8, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !122, file: !29, line: 77, baseType: !115, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !122, file: !29, line: 78, baseType: !160, size: 128, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !122, file: !29, line: 80, baseType: !607, size: 256, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !122, file: !29, line: 83, baseType: !1233, size: 1408, offset: 1152)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !19, line: 85, size: 1408, elements: !1234)
!1234 = !{!1235, !1264, !1265, !1266}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1233, file: !19, line: 86, baseType: !1236, size: 320)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !19, line: 52, size: 320, elements: !1237)
!1237 = !{!1238, !1243, !1244, !1245, !1246, !1247}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1236, file: !19, line: 53, baseType: !1239, size: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1240, line: 82, size: 128, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1239, file: !1240, line: 83, baseType: !191, size: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1236, file: !19, line: 54, baseType: !522, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1236, file: !19, line: 55, baseType: !522, size: 32, offset: 160)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1236, file: !19, line: 56, baseType: !522, size: 32, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1236, file: !19, line: 57, baseType: !18, size: 32, offset: 224)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1236, file: !19, line: 58, baseType: !1248, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1250, line: 65, size: 384, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1249, file: !1250, line: 66, baseType: !466, size: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1249, file: !1250, line: 67, baseType: !1254, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1250, line: 54, size: 192, elements: !1256)
!1256 = !{!1257, !1262, !1263}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1255, file: !1250, line: 55, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1250, line: 51, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!167, !1254, !132, !115}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1255, file: !1250, line: 56, baseType: !1254, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1255, file: !1250, line: 57, baseType: !167, size: 32, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1233, file: !19, line: 87, baseType: !1249, size: 384, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1233, file: !19, line: 88, baseType: !1236, size: 320, offset: 704)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1233, file: !19, line: 89, baseType: !1249, size: 384, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !122, file: !29, line: 84, baseType: !1268, size: 64, offset: 2560)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !19, line: 92, size: 448, elements: !1270)
!1270 = !{!1271, !1272, !1278}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1269, file: !19, line: 93, baseType: !24, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1269, file: !19, line: 94, baseType: !1273, size: 320, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1240, line: 86, size: 320, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1273, file: !1240, line: 87, baseType: !167, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1273, file: !1240, line: 88, baseType: !191, size: 128, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1273, file: !1240, line: 89, baseType: !191, size: 128, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1269, file: !19, line: 95, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !122, file: !29, line: 85, baseType: !1268, size: 64, offset: 2624)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !122, file: !29, line: 87, baseType: !1282, size: 64, offset: 2688)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !29, line: 690, size: 96, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1283, file: !29, line: 691, baseType: !13, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1283, file: !29, line: 692, baseType: !13, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1283, file: !29, line: 693, baseType: !13, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !122, file: !29, line: 88, baseType: !28, size: 32, offset: 2752)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !122, file: !29, line: 90, baseType: !191, size: 128, offset: 2816)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !122, file: !29, line: 91, baseType: !210, size: 512, offset: 2944)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !122, file: !29, line: 92, baseType: !866, size: 256, offset: 3456)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !122, file: !29, line: 102, baseType: !466, size: 320, offset: 3712)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !122, file: !29, line: 112, baseType: !641, size: 8, offset: 4032)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !122, file: !29, line: 113, baseType: !641, size: 8, offset: 4040)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !122, file: !29, line: 119, baseType: !641, size: 8, offset: 4048)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !122, file: !29, line: 126, baseType: !641, size: 8, offset: 4056)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !122, file: !29, line: 133, baseType: !13, size: 32, offset: 4064)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !122, file: !29, line: 142, baseType: !641, size: 8, offset: 4096)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !122, file: !29, line: 145, baseType: !641, size: 8, offset: 4104)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !122, file: !29, line: 148, baseType: !13, size: 32, offset: 4128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !122, file: !29, line: 149, baseType: !13, size: 32, offset: 4160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !122, file: !29, line: 152, baseType: !641, size: 8, offset: 4192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !122, file: !29, line: 153, baseType: !225, size: 32, offset: 4224)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !122, file: !29, line: 154, baseType: !1305, size: 192, offset: 4288)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1306, line: 41, baseType: !1307)
!1306 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1306, line: 37, size: 192, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1307, file: !1306, line: 38, baseType: !225, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1307, file: !1306, line: 39, baseType: !191, size: 128, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !122, file: !29, line: 155, baseType: !1312, size: 64, offset: 4480)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !670, line: 746, size: 58368, elements: !1314)
!1314 = !{!1315, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1400, !1411, !1503, !1507, !1510, !1541, !1542, !1543, !1544, !1548, !1550, !1551, !1552, !1553, !1554, !1555, !1566, !1567, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1667, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1703, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1738, !1744, !1926, !1927, !1928, !1929, !1930, !1933, !1940, !1945, !1948, !1951, !1954, !1957, !2099, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2137, !2138, !2139, !2148, !2156, !2157, !2158, !2159, !2160, !2165, !2166, !2167, !2170, !2171, !2174, !2177, !2180, !2183, !2186, !2187, !2273, !2274, !2275, !2276, !2277, !2283, !2284, !2285, !2286, !2289, !2290, !2293, !2296, !2297, !2300, !2301, !2302, !2305, !2306, !2307, !2308, !2309, !2310, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2342, !2345, !2411, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2423, !2495, !2497, !2498, !2499, !2500, !2501, !2502, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2519, !2520, !2521}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1313, file: !670, line: 752, baseType: !1316, size: 192)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1317, line: 56, size: 192, elements: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !1317, line: 57, baseType: !132, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1316, file: !1317, line: 58, baseType: !132, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1316, file: !1317, line: 59, baseType: !1130, size: 32, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1316, file: !1317, line: 61, baseType: !1130, size: 32, offset: 160)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1313, file: !670, line: 754, baseType: !13, size: 32, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1313, file: !670, line: 767, baseType: !115, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1313, file: !670, line: 768, baseType: !849, size: 32, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1313, file: !670, line: 770, baseType: !13, size: 32, offset: 352)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1313, file: !670, line: 771, baseType: !13, size: 32, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1313, file: !670, line: 774, baseType: !167, size: 32, offset: 416)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1313, file: !670, line: 775, baseType: !1330, size: 128, offset: 448)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1331, line: 58, size: 128, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1332 = !{!1333, !1339, !1344, !1345}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1330, file: !1331, line: 59, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1335, line: 60, size: 64, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1334, file: !1335, line: 61, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1331, line: 60, baseType: !1340, size: 32, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !1331, line: 60, size: 32, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1340, file: !1331, line: 61, baseType: !13, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1340, file: !1331, line: 62, baseType: !245, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1330, file: !1331, line: 65, baseType: !263, size: 16, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1330, file: !1331, line: 65, baseType: !263, size: 16, offset: 112)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1313, file: !670, line: 776, baseType: !13, size: 32, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1313, file: !670, line: 777, baseType: !132, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1313, file: !670, line: 778, baseType: !1312, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1313, file: !670, line: 787, baseType: !167, size: 32, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1313, file: !670, line: 788, baseType: !167, size: 32, offset: 800)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1313, file: !670, line: 790, baseType: !167, size: 32, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1313, file: !670, line: 792, baseType: !167, size: 32, offset: 864)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1313, file: !670, line: 793, baseType: !167, size: 32, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1313, file: !670, line: 794, baseType: !167, size: 32, offset: 928)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1313, file: !670, line: 795, baseType: !13, size: 32, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1313, file: !670, line: 797, baseType: !1357, size: 2048, offset: 1024)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !670, line: 551, size: 2048, elements: !1358)
!1358 = !{!1359, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1379, !1382, !1383, !1384}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1357, file: !670, line: 553, baseType: !1360, size: 128)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !670, line: 411, size: 128, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1360, file: !670, line: 412, baseType: !132, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1360, file: !670, line: 413, baseType: !1130, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1357, file: !670, line: 554, baseType: !647, size: 192, align: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1357, file: !670, line: 555, baseType: !449, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1357, file: !670, line: 556, baseType: !449, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1357, file: !670, line: 558, baseType: !191, size: 128, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1357, file: !670, line: 559, baseType: !13, size: 32, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1357, file: !670, line: 561, baseType: !449, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1357, file: !670, line: 562, baseType: !449, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1357, file: !670, line: 563, baseType: !449, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1357, file: !670, line: 564, baseType: !449, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1357, file: !670, line: 565, baseType: !461, size: 64, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1357, file: !670, line: 566, baseType: !449, size: 64, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1357, file: !670, line: 568, baseType: !449, size: 64, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1357, file: !670, line: 571, baseType: !167, size: 32, offset: 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1357, file: !670, line: 572, baseType: !1378, size: 64, offset: 1152)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1357, file: !670, line: 574, baseType: !1380, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !670, line: 49, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1357, file: !670, line: 576, baseType: !1380, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1357, file: !670, line: 578, baseType: !132, size: 64, offset: 1344)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1357, file: !670, line: 588, baseType: !1385, size: 512, align: 512, offset: 1536)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !670, line: 497, size: 512, align: 512, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1385, file: !670, line: 498, baseType: !449, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1385, file: !670, line: 499, baseType: !449, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1385, file: !670, line: 500, baseType: !449, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1385, file: !670, line: 501, baseType: !1130, size: 32, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1385, file: !670, line: 502, baseType: !1130, size: 32, offset: 224)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1385, file: !670, line: 503, baseType: !132, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1385, file: !670, line: 504, baseType: !132, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1385, file: !670, line: 505, baseType: !132, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1385, file: !670, line: 506, baseType: !1396, size: 64, align: 64, offset: 448)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !670, line: 445, size: 64, align: 64, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1396, file: !670, line: 446, baseType: !13, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1396, file: !670, line: 447, baseType: !13, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1313, file: !670, line: 798, baseType: !1401, size: 384, offset: 3072)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !670, line: 592, size: 384, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1401, file: !670, line: 593, baseType: !191, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1401, file: !670, line: 594, baseType: !132, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1401, file: !670, line: 595, baseType: !132, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1401, file: !670, line: 596, baseType: !13, size: 32, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1401, file: !670, line: 597, baseType: !265, size: 16, offset: 288)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1401, file: !670, line: 598, baseType: !265, size: 16, offset: 304)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1401, file: !670, line: 600, baseType: !1410, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1313, file: !670, line: 799, baseType: !1412, size: 1792, offset: 3456)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !670, line: 610, size: 1792, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1500, !1501}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1412, file: !670, line: 611, baseType: !647, size: 192, align: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1412, file: !670, line: 618, baseType: !449, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1412, file: !670, line: 619, baseType: !449, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1412, file: !670, line: 620, baseType: !449, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1412, file: !670, line: 621, baseType: !449, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1412, file: !670, line: 622, baseType: !449, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1412, file: !670, line: 629, baseType: !461, size: 64, offset: 512)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1412, file: !670, line: 630, baseType: !449, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !670, line: 631, baseType: !13, size: 32, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1412, file: !670, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1412, file: !670, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1412, file: !670, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1412, file: !670, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1412, file: !670, line: 662, baseType: !1428, size: 512, offset: 704)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !35, line: 118, size: 512, elements: !1429)
!1429 = !{!1430, !1438, !1439, !1444, !1496, !1497, !1498, !1499}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1428, file: !35, line: 119, baseType: !1431, size: 256)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1432, line: 9, size: 256, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1431, file: !1432, line: 10, baseType: !647, size: 192, align: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1431, file: !1432, line: 11, baseType: !1436, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1437, line: 29, baseType: !461)
!1437 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1428, file: !35, line: 120, baseType: !1436, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1428, file: !35, line: 121, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!34, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1428, file: !35, line: 122, baseType: !1445, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !35, line: 159, size: 512, align: 512, elements: !1447)
!1447 = !{!1448, !1473, !1474, !1477, !1482, !1483, !1491, !1495}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1446, file: !35, line: 160, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !35, line: 215, size: 4608, align: 512, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1450, file: !35, line: 216, baseType: !477, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1450, file: !35, line: 217, baseType: !13, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1450, file: !35, line: 218, baseType: !13, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1450, file: !35, line: 219, baseType: !13, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1450, file: !35, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1450, file: !35, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1450, file: !35, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1450, file: !35, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1450, file: !35, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1450, file: !35, line: 226, baseType: !13, size: 32, offset: 160)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1450, file: !35, line: 227, baseType: !265, size: 16, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1450, file: !35, line: 228, baseType: !265, size: 16, offset: 208)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1450, file: !35, line: 229, baseType: !13, size: 32, offset: 224)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1450, file: !35, line: 235, baseType: !1436, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1450, file: !35, line: 236, baseType: !1443, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1450, file: !35, line: 237, baseType: !1436, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1450, file: !35, line: 238, baseType: !1443, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1450, file: !35, line: 239, baseType: !1470, size: 4096, align: 512, offset: 512)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1446, size: 4096, align: 512, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 8)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1446, file: !35, line: 161, baseType: !13, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1446, file: !35, line: 162, baseType: !1475, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !180, line: 32, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !182, line: 96, baseType: !167)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1446, file: !35, line: 163, baseType: !1478, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !492, line: 274, baseType: !1479)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !492, line: 274, size: 32, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1479, file: !492, line: 274, baseType: !491, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1446, file: !35, line: 164, baseType: !1443, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1446, file: !35, line: 165, baseType: !1484, size: 128, offset: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1432, line: 14, size: 128, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1484, file: !1432, line: 15, baseType: !1487, size: 128)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !648, line: 26, size: 128, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1487, file: !648, line: 27, baseType: !750, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1487, file: !648, line: 28, baseType: !652, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1446, file: !35, line: 166, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!1436}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1446, file: !35, line: 167, baseType: !1436, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1428, file: !35, line: 123, baseType: !253, size: 8, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1428, file: !35, line: 124, baseType: !253, size: 8, offset: 456)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1428, file: !35, line: 125, baseType: !253, size: 8, offset: 464)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1428, file: !35, line: 126, baseType: !253, size: 8, offset: 472)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1412, file: !670, line: 671, baseType: !1428, size: 512, offset: 1216)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1412, file: !670, line: 679, baseType: !1502, size: 64, offset: 1728)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1313, file: !670, line: 800, baseType: !1504, size: 64, offset: 5248)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !670, line: 800, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1313, file: !670, line: 809, baseType: !1508, size: 64, offset: 5312)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !670, line: 70, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1313, file: !670, line: 825, baseType: !1511, size: 2048, align: 512, offset: 5632)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !670, line: 509, size: 2048, align: 512, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1511, file: !670, line: 511, baseType: !449, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1511, file: !670, line: 512, baseType: !449, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1511, file: !670, line: 513, baseType: !449, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1511, file: !670, line: 514, baseType: !449, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1511, file: !670, line: 515, baseType: !449, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1511, file: !670, line: 516, baseType: !449, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1511, file: !670, line: 518, baseType: !449, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1511, file: !670, line: 519, baseType: !449, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1511, file: !670, line: 520, baseType: !461, size: 64, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1511, file: !670, line: 522, baseType: !449, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1511, file: !670, line: 523, baseType: !449, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1511, file: !670, line: 524, baseType: !461, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1511, file: !670, line: 526, baseType: !461, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1511, file: !670, line: 527, baseType: !449, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1511, file: !670, line: 529, baseType: !449, size: 64, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1511, file: !670, line: 530, baseType: !449, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1511, file: !670, line: 531, baseType: !449, size: 64, offset: 1024)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1511, file: !670, line: 532, baseType: !449, size: 64, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1511, file: !670, line: 533, baseType: !449, size: 64, offset: 1152)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1511, file: !670, line: 535, baseType: !449, size: 64, offset: 1216)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1511, file: !670, line: 536, baseType: !449, size: 64, offset: 1280)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1511, file: !670, line: 537, baseType: !449, size: 64, offset: 1344)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1511, file: !670, line: 538, baseType: !449, size: 64, offset: 1408)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1511, file: !670, line: 539, baseType: !449, size: 64, offset: 1472)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1511, file: !670, line: 540, baseType: !449, size: 64, offset: 1536)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1511, file: !670, line: 541, baseType: !449, size: 64, offset: 1600)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1511, file: !670, line: 542, baseType: !449, size: 64, offset: 1664)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1511, file: !670, line: 543, baseType: !449, size: 64, offset: 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1313, file: !670, line: 833, baseType: !13, size: 32, offset: 7680)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1313, file: !670, line: 836, baseType: !13, size: 32, offset: 7712)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1313, file: !670, line: 837, baseType: !167, size: 32, offset: 7744)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1313, file: !670, line: 838, baseType: !1545, size: 64, offset: 7808)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !126, line: 19, baseType: !128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1313, file: !670, line: 839, baseType: !1549, size: 64, offset: 7872)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1313, file: !670, line: 840, baseType: !1547, size: 64, offset: 7936)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1313, file: !670, line: 841, baseType: !115, size: 64, offset: 8000)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1313, file: !670, line: 843, baseType: !265, size: 16, offset: 8064)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1313, file: !670, line: 845, baseType: !265, size: 16, offset: 8080)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1313, file: !670, line: 848, baseType: !167, size: 32, offset: 8096)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1313, file: !670, line: 849, baseType: !1556, size: 32, offset: 8128)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !670, line: 718, size: 32, elements: !1557)
!1557 = !{!1558, !1565}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1556, file: !670, line: 724, baseType: !1559, size: 32)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !670, line: 719, size: 32, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1559, file: !670, line: 720, baseType: !253, size: 8)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1559, file: !670, line: 721, baseType: !253, size: 8, offset: 8)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1559, file: !670, line: 722, baseType: !253, size: 8, offset: 16)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1559, file: !670, line: 723, baseType: !253, size: 8, offset: 24)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1556, file: !670, line: 725, baseType: !1130, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1313, file: !670, line: 850, baseType: !191, size: 128, offset: 8192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1313, file: !670, line: 851, baseType: !1568, size: 64, offset: 8320)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !670, line: 60, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1313, file: !670, line: 855, baseType: !132, size: 64, offset: 8384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1313, file: !670, line: 856, baseType: !253, size: 8, offset: 8448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1313, file: !670, line: 857, baseType: !253, size: 8, offset: 8456)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1313, file: !670, line: 858, baseType: !167, size: 32, offset: 8480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1313, file: !670, line: 859, baseType: !191, size: 128, offset: 8512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1313, file: !670, line: 860, baseType: !167, size: 32, offset: 8640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1313, file: !670, line: 861, baseType: !191, size: 128, offset: 8704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1313, file: !670, line: 873, baseType: !1578, size: 256, offset: 8832)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !670, line: 376, size: 256, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1578, file: !670, line: 381, baseType: !132, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1578, file: !670, line: 384, baseType: !451, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1578, file: !670, line: 389, baseType: !451, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1578, file: !670, line: 392, baseType: !451, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1313, file: !670, line: 875, baseType: !191, size: 128, offset: 9088)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1313, file: !670, line: 877, baseType: !1273, size: 320, offset: 9216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1313, file: !670, line: 878, baseType: !647, size: 192, align: 64, offset: 9536)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1313, file: !670, line: 881, baseType: !401, size: 64, offset: 9728)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1313, file: !670, line: 882, baseType: !401, size: 64, offset: 9792)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1313, file: !670, line: 884, baseType: !167, size: 32, offset: 9856)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1313, file: !670, line: 885, baseType: !167, size: 32, offset: 9888)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1313, file: !670, line: 886, baseType: !167, size: 32, offset: 9920)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1313, file: !670, line: 888, baseType: !167, size: 32, offset: 9952)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1313, file: !670, line: 890, baseType: !132, size: 64, offset: 9984)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1313, file: !670, line: 893, baseType: !13, size: 32, offset: 10048)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1313, file: !670, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1313, file: !670, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1313, file: !670, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1313, file: !670, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1313, file: !670, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1313, file: !670, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1313, file: !670, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1313, file: !670, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1313, file: !670, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1313, file: !670, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1313, file: !670, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1313, file: !670, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1313, file: !670, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1313, file: !670, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1313, file: !670, line: 969, baseType: !132, size: 64, offset: 10176)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1313, file: !670, line: 971, baseType: !1611, size: 448, offset: 10240)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !40, line: 25, size: 448, elements: !1612)
!1612 = !{!1613, !1614, !1619}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1611, file: !40, line: 26, baseType: !132, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1611, file: !40, line: 27, baseType: !1615, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!184, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !40, line: 28, baseType: !1620, size: 320, offset: 128)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !40, line: 28, size: 320, elements: !1621)
!1621 = !{!1622, !1632, !1657}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1620, file: !40, line: 37, baseType: !1623, size: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !40, line: 30, size: 320, elements: !1624)
!1624 = !{!1625, !1627, !1628, !1629, !1630, !1631}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1623, file: !40, line: 31, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1623, file: !40, line: 32, baseType: !1130, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1623, file: !40, line: 33, baseType: !1130, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1623, file: !40, line: 34, baseType: !1130, size: 32, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1623, file: !40, line: 35, baseType: !449, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1623, file: !40, line: 36, baseType: !1626, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1620, file: !40, line: 47, baseType: !1633, size: 192)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !40, line: 39, size: 192, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1656}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1633, file: !40, line: 40, baseType: !1475, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1633, file: !40, line: 41, baseType: !39, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !40, line: 42, baseType: !1638, size: 64, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !40, line: 42, size: 64, elements: !1639)
!1639 = !{!1640, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1638, file: !40, line: 43, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1643, line: 7, size: 128, elements: !1644)
!1643 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1644 = !{!1645, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1642, file: !1643, line: 8, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !182, line: 93, baseType: !374)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1642, file: !1643, line: 9, baseType: !374, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1638, file: !40, line: 44, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1651, line: 7, size: 64, elements: !1652)
!1651 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1652 = !{!1653, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1650, file: !1651, line: 8, baseType: !1654, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1651, line: 5, baseType: !522)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1650, file: !1651, line: 9, baseType: !522, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1633, file: !40, line: 46, baseType: !449, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1620, file: !40, line: 55, baseType: !1658, size: 256)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !40, line: 49, size: 256, elements: !1659)
!1659 = !{!1660, !1663, !1664, !1665, !1666}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1658, file: !40, line: 50, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !40, line: 14, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1658, file: !40, line: 51, baseType: !167, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1658, file: !40, line: 52, baseType: !167, size: 32, offset: 96)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1658, file: !40, line: 53, baseType: !132, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1658, file: !40, line: 54, baseType: !132, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1313, file: !670, line: 973, baseType: !1668, size: 32, offset: 10688)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !180, line: 27, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !182, line: 28, baseType: !167)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1313, file: !670, line: 974, baseType: !1668, size: 32, offset: 10720)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1313, file: !670, line: 978, baseType: !132, size: 64, offset: 10752)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1313, file: !670, line: 987, baseType: !1312, size: 64, offset: 10816)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1313, file: !670, line: 990, baseType: !1312, size: 64, offset: 10880)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1313, file: !670, line: 995, baseType: !191, size: 128, offset: 10944)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1313, file: !670, line: 996, baseType: !191, size: 128, offset: 11072)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1313, file: !670, line: 997, baseType: !1312, size: 64, offset: 11200)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1313, file: !670, line: 1005, baseType: !191, size: 128, offset: 11264)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1313, file: !670, line: 1006, baseType: !191, size: 128, offset: 11392)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1313, file: !670, line: 1009, baseType: !1680, size: 64, offset: 11520)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1682, line: 59, size: 768, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1683 = !{!1684, !1685, !1686, !1687, !1692, !1693, !1694, !1695}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1681, file: !1682, line: 61, baseType: !849, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1681, file: !1682, line: 62, baseType: !13, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !1682, line: 63, baseType: !225, size: 32, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1681, file: !1682, line: 65, baseType: !1688, size: 256, offset: 128)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1689, size: 256, elements: !524)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !180, line: 194, size: 64, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1689, file: !180, line: 195, baseType: !1120, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1681, file: !1682, line: 66, baseType: !1689, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1681, file: !1682, line: 68, baseType: !1305, size: 192, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1681, file: !1682, line: 69, baseType: !392, size: 128, align: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1681, file: !1682, line: 70, baseType: !1696, offset: 768)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1697, elements: !619)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1682, line: 54, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1697, file: !1682, line: 55, baseType: !167, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1697, file: !1682, line: 56, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1682, line: 56, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1313, file: !670, line: 1010, baseType: !1704, size: 512, offset: 11584)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 512, elements: !524)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1313, file: !670, line: 1011, baseType: !191, size: 128, offset: 12096)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1313, file: !670, line: 1012, baseType: !191, size: 128, offset: 12224)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1313, file: !670, line: 1014, baseType: !865, size: 64, offset: 12352)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1313, file: !670, line: 1017, baseType: !1012, size: 64, offset: 12416)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1313, file: !670, line: 1020, baseType: !1012, size: 64, offset: 12480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1313, file: !670, line: 1023, baseType: !115, size: 64, offset: 12544)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1313, file: !670, line: 1025, baseType: !449, size: 64, offset: 12608)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1313, file: !670, line: 1026, baseType: !449, size: 64, offset: 12672)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1313, file: !670, line: 1031, baseType: !449, size: 64, offset: 12736)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1313, file: !670, line: 1032, baseType: !1715, size: 192, offset: 12800)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !670, line: 324, size: 192, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1715, file: !670, line: 326, baseType: !449, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1715, file: !670, line: 327, baseType: !449, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1715, file: !670, line: 328, baseType: !477, size: 32, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1313, file: !670, line: 1041, baseType: !132, size: 64, offset: 12992)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1313, file: !670, line: 1042, baseType: !132, size: 64, offset: 13056)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1313, file: !670, line: 1045, baseType: !449, size: 64, offset: 13120)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1313, file: !670, line: 1048, baseType: !449, size: 64, offset: 13184)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1313, file: !670, line: 1051, baseType: !132, size: 64, offset: 13248)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1313, file: !670, line: 1052, baseType: !132, size: 64, offset: 13312)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1313, file: !670, line: 1055, baseType: !1727, size: 640, offset: 13376)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1728, line: 132, size: 640, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1729 = !{!1730, !1736, !1737}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1727, file: !1728, line: 133, baseType: !1731, size: 576)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1732, size: 576, elements: !5)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1728, line: 117, size: 192, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1732, file: !1728, line: 118, baseType: !449, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1732, file: !1728, line: 119, baseType: !1484, size: 128, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1727, file: !1728, line: 134, baseType: !13, size: 32, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1727, file: !1728, line: 135, baseType: !13, size: 32, offset: 608)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1313, file: !670, line: 1058, baseType: !1739, size: 448, offset: 14016)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1728, line: 144, size: 448, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1739, file: !1728, line: 145, baseType: !392, size: 128, align: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1739, file: !1728, line: 146, baseType: !543, size: 256, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1739, file: !1728, line: 147, baseType: !13, size: 32, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1313, file: !670, line: 1064, baseType: !1745, size: 64, offset: 14464)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1748, line: 110, size: 1472, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1766, !1767, !1768, !1769, !1770, !1771, !1881, !1882, !1883, !1884, !1885, !1908, !1909, !1913, !1921}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1747, file: !1748, line: 111, baseType: !455, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1747, file: !1748, line: 112, baseType: !717, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1747, file: !1748, line: 113, baseType: !724, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1747, file: !1748, line: 114, baseType: !717, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1747, file: !1748, line: 115, baseType: !724, size: 32, offset: 160)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1747, file: !1748, line: 116, baseType: !717, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1747, file: !1748, line: 117, baseType: !724, size: 32, offset: 224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1747, file: !1748, line: 118, baseType: !717, size: 32, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1747, file: !1748, line: 119, baseType: !724, size: 32, offset: 288)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1747, file: !1748, line: 120, baseType: !13, size: 32, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1747, file: !1748, line: 121, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1762, line: 24, baseType: !1763)
!1762 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1762, line: 24, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1763, file: !1762, line: 24, baseType: !449, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1747, file: !1748, line: 122, baseType: !1761, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1747, file: !1748, line: 123, baseType: !1761, size: 64, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1747, file: !1748, line: 124, baseType: !1761, size: 64, offset: 576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1747, file: !1748, line: 125, baseType: !1761, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1747, file: !1748, line: 127, baseType: !257, size: 8, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1747, file: !1748, line: 129, baseType: !1772, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1774, line: 195, size: 1728, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1775 = !{!1776, !1777, !1780, !1785, !1786, !1789, !1790, !1797, !1798, !1799, !1800, !1803, !1804, !1805, !1806, !1807, !1845, !1866}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1774, line: 196, baseType: !849, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1773, file: !1774, line: 197, baseType: !1778, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1774, line: 28, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !180, line: 104, baseType: !522)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 198, baseType: !1781, size: 192, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 198, size: 192, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1781, file: !1774, line: 199, baseType: !191, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1781, file: !1774, line: 200, baseType: !647, size: 192, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1773, file: !1774, line: 205, baseType: !466, size: 320, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1773, file: !1774, line: 206, baseType: !1787, size: 64, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1774, line: 206, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1773, file: !1774, line: 207, baseType: !115, size: 64, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 208, baseType: !1791, size: 64, offset: 704)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 208, size: 64, elements: !1792)
!1792 = !{!1793, !1796}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1791, file: !1774, line: 209, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1795, line: 8, baseType: !462)
!1795 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1791, file: !1774, line: 210, baseType: !1794, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1773, file: !1774, line: 212, baseType: !1794, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1773, file: !1774, line: 213, baseType: !717, size: 32, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1774, line: 214, baseType: !724, size: 32, offset: 864)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1773, file: !1774, line: 215, baseType: !1801, size: 32, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1774, line: 31, baseType: !1802)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !180, line: 110, baseType: !1130)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1773, file: !1774, line: 216, baseType: !265, size: 16, offset: 928)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1773, file: !1774, line: 217, baseType: !265, size: 16, offset: 944)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1773, file: !1774, line: 221, baseType: !583, size: 16, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 228, baseType: !132, size: 64, offset: 1024)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 245, baseType: !1808, size: 320, offset: 1088)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 245, size: 320, elements: !1809)
!1809 = !{!1810, !1837}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1808, file: !1774, line: 246, baseType: !1811, size: 320)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1774, line: 114, size: 320, elements: !1812)
!1812 = !{!1813, !1814, !1826, !1829, !1836}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1811, file: !1774, line: 116, baseType: !132, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1774, line: 117, baseType: !1815, size: 64, offset: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1774, line: 117, size: 64, elements: !1816)
!1816 = !{!1817, !1825}
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1774, line: 118, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1774, line: 118, size: 64, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1818, file: !1774, line: 120, baseType: !263, size: 16)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1818, file: !1774, line: 121, baseType: !1822, size: 48, offset: 16)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 6)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1815, file: !1774, line: 127, baseType: !132, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1811, file: !1774, line: 129, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1774, line: 102, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1811, file: !1774, line: 130, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1774, line: 108, size: 192, elements: !1832)
!1832 = !{!1833, !1834, !1835}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1831, file: !1774, line: 109, baseType: !392, size: 128, align: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1831, file: !1774, line: 110, baseType: !849, size: 32, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1831, file: !1774, line: 111, baseType: !641, size: 8, offset: 160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1811, file: !1774, line: 131, baseType: !214, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1774, line: 247, baseType: !1838, size: 320)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !1774, line: 247, size: 320, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1838, file: !1774, line: 248, baseType: !132, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1838, file: !1774, line: 249, baseType: !132, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1838, file: !1774, line: 250, baseType: !1827, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1838, file: !1774, line: 251, baseType: !1830, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1838, file: !1774, line: 252, baseType: !185, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 260, baseType: !1846, size: 256, offset: 1408)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 260, size: 256, elements: !1847)
!1847 = !{!1848, !1854}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1846, file: !1774, line: 261, baseType: !1849, size: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1774, line: 134, size: 256, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1849, file: !1774, line: 135, baseType: !115, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1849, file: !1774, line: 136, baseType: !1853, size: 256)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !524)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1774, line: 262, baseType: !1855, size: 256)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1774, line: 262, size: 256, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1855, file: !1774, line: 264, baseType: !191, size: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1855, file: !1774, line: 265, baseType: !1859, size: 128, offset: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1860, line: 22, size: 128, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1861 = !{!1862, !1865}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1859, file: !1860, line: 23, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1860, line: 23, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1859, file: !1860, line: 24, baseType: !132, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1773, file: !1774, line: 280, baseType: !1867, size: 64, offset: 1664)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1774, line: 176, size: 192, elements: !1869)
!1869 = !{!1870, !1879, !1880}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1868, file: !1774, line: 177, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1774, line: 171, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!167, !1772, !1875, !1877, !1772}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1868, file: !1774, line: 178, baseType: !1772, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1868, file: !1774, line: 179, baseType: !1827, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1747, file: !1748, line: 130, baseType: !1772, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1747, file: !1748, line: 131, baseType: !1772, size: 64, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1747, file: !1748, line: 132, baseType: !1772, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1747, file: !1748, line: 135, baseType: !115, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1747, file: !1748, line: 137, baseType: !1886, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1888, line: 14, size: 1088, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1887, file: !1888, line: 15, baseType: !849, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1887, file: !1888, line: 17, baseType: !514, size: 320, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1887, file: !1888, line: 19, baseType: !132, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1887, file: !1888, line: 20, baseType: !455, size: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1887, file: !1888, line: 23, baseType: !1117, size: 128, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1887, file: !1888, line: 24, baseType: !717, size: 32, offset: 640)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1887, file: !1888, line: 29, baseType: !455, size: 64, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1887, file: !1888, line: 36, baseType: !1898, size: 320, offset: 768)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1899, line: 15, size: 320, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1900 = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1898, file: !1899, line: 16, baseType: !477, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1898, file: !1899, line: 18, baseType: !167, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1898, file: !1899, line: 19, baseType: !167, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1898, file: !1899, line: 20, baseType: !167, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1898, file: !1899, line: 21, baseType: !167, size: 32, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1898, file: !1899, line: 22, baseType: !132, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !1899, line: 23, baseType: !132, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1747, file: !1748, line: 138, baseType: !590, size: 64, offset: 1152)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1747, file: !1748, line: 139, baseType: !1910, size: 64, offset: 1216)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1912, line: 16, flags: DIFlagFwdDecl)
!1912 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1747, file: !1748, line: 140, baseType: !1914, size: 64, offset: 1280)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1748, line: 25, size: 64, elements: !1916)
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1915, file: !1748, line: 26, baseType: !245, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1915, file: !1748, line: 27, baseType: !167, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1915, file: !1748, line: 28, baseType: !1920, offset: 64)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, elements: !619)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !1748, line: 142, baseType: !1922, size: 128, offset: 1344)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !1748, line: 142, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1922, file: !1748, line: 143, baseType: !167, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1922, file: !1748, line: 144, baseType: !392, size: 128, align: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1313, file: !670, line: 1067, baseType: !1745, size: 64, offset: 14528)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1313, file: !670, line: 1070, baseType: !1745, size: 64, offset: 14592)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1313, file: !670, line: 1074, baseType: !1772, size: 64, offset: 14656)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1313, file: !670, line: 1084, baseType: !160, size: 128, offset: 14720)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1313, file: !670, line: 1086, baseType: !1931, size: 64, offset: 14848)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !670, line: 55, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1313, file: !670, line: 1089, baseType: !1934, size: 64, offset: 14912)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1935, line: 12, size: 64, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1934, file: !1935, line: 13, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1935, line: 8, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1313, file: !670, line: 1090, baseType: !1941, size: 128, offset: 14976)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1942, line: 13, size: 128, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1943 = !{!1944}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1941, file: !1942, line: 14, baseType: !191, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1313, file: !670, line: 1097, baseType: !1946, size: 64, offset: 15104)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !670, line: 50, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1313, file: !670, line: 1100, baseType: !1949, size: 64, offset: 15168)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !670, line: 1100, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1313, file: !670, line: 1103, baseType: !1952, size: 64, offset: 15232)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !670, line: 53, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1313, file: !670, line: 1107, baseType: !1955, size: 64, offset: 15296)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !670, line: 56, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1313, file: !670, line: 1110, baseType: !1958, size: 64, offset: 15360)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1960, line: 93, size: 8768, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2009, !2018, !2019, !2021, !2022, !2023, !2026, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2068, !2069, !2076, !2086, !2089, !2090, !2093, !2094, !2095, !2096, !2097, !2098}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1959, file: !1960, line: 94, baseType: !849, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1959, file: !1960, line: 95, baseType: !245, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1959, file: !1960, line: 96, baseType: !167, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1959, file: !1960, line: 97, baseType: !167, size: 32, offset: 96)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1959, file: !1960, line: 98, baseType: !191, size: 128, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1959, file: !1960, line: 100, baseType: !1305, size: 192, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1959, file: !1960, line: 103, baseType: !1312, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1959, file: !1960, line: 106, baseType: !1970, size: 192, offset: 512)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1912, line: 32, size: 192, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1970, file: !1912, line: 33, baseType: !191, size: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1970, file: !1912, line: 34, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1975, line: 25, baseType: !1976)
!1975 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1975, line: 23, size: 64, elements: !1977)
!1977 = !{!1978}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1976, file: !1975, line: 24, baseType: !131, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1959, file: !1960, line: 109, baseType: !1689, size: 64, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1959, file: !1960, line: 112, baseType: !167, size: 32, offset: 768)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1959, file: !1960, line: 114, baseType: !167, size: 32, offset: 800)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1959, file: !1960, line: 115, baseType: !1312, size: 64, offset: 832)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1959, file: !1960, line: 118, baseType: !167, size: 32, offset: 896)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1959, file: !1960, line: 119, baseType: !13, size: 32, offset: 928)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1959, file: !1960, line: 121, baseType: !1986, size: 64, offset: 960)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1960, line: 80, size: 448, elements: !1988)
!1988 = !{!1989, !1990, !1996}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1987, file: !1960, line: 81, baseType: !245, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1987, file: !1960, line: 82, baseType: !1991, size: 128, offset: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1960, line: 75, size: 128, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1991, file: !1960, line: 76, baseType: !1312, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1991, file: !1960, line: 77, baseType: !1995, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1987, file: !1960, line: 83, baseType: !866, size: 256, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1959, file: !1960, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1959, file: !1960, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1959, file: !1960, line: 138, baseType: !13, size: 32, offset: 1056)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1959, file: !1960, line: 139, baseType: !191, size: 128, offset: 1088)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1959, file: !1960, line: 142, baseType: !1428, size: 512, offset: 1216)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1959, file: !1960, line: 143, baseType: !1436, size: 64, offset: 1728)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1959, file: !1960, line: 150, baseType: !2004, size: 256, offset: 1792)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 256, elements: !1002)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1960, line: 38, size: 128, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2005, file: !1960, line: 39, baseType: !449, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2005, file: !1960, line: 40, baseType: !449, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1959, file: !1960, line: 156, baseType: !2010, size: 192, offset: 2048)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1960, line: 66, size: 192, elements: !2011)
!2011 = !{!2012}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2010, file: !1960, line: 67, baseType: !2013, size: 192)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1960, line: 47, size: 192, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2013, file: !1960, line: 48, baseType: !457, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2013, file: !1960, line: 49, baseType: !457, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2013, file: !1960, line: 50, baseType: !457, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1959, file: !1960, line: 160, baseType: !1727, size: 640, offset: 2240)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1959, file: !1960, line: 163, baseType: !2020, size: 256, offset: 2880)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1680, size: 256, elements: !524)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1959, file: !1960, line: 169, baseType: !1680, size: 64, offset: 3136)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1959, file: !1960, line: 172, baseType: !167, size: 32, offset: 3200)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1959, file: !1960, line: 174, baseType: !2024, size: 64, offset: 3264)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1960, line: 174, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1959, file: !1960, line: 185, baseType: !2027, size: 64, offset: 3328)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !492, line: 860, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 853, size: 64, elements: !2029)
!2029 = !{!2030, !2035}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2028, file: !492, line: 858, baseType: !2031, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !492, line: 275, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !492, line: 275, size: 32, elements: !2033)
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2032, file: !492, line: 275, baseType: !491, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2028, file: !492, line: 859, baseType: !225, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1959, file: !1960, line: 186, baseType: !449, size: 64, offset: 3392)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1959, file: !1960, line: 186, baseType: !449, size: 64, offset: 3456)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1959, file: !1960, line: 186, baseType: !449, size: 64, offset: 3520)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1959, file: !1960, line: 186, baseType: !449, size: 64, offset: 3584)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1959, file: !1960, line: 187, baseType: !449, size: 64, offset: 3648)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1959, file: !1960, line: 188, baseType: !449, size: 64, offset: 3712)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1959, file: !1960, line: 189, baseType: !1715, size: 192, offset: 3776)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1959, file: !1960, line: 190, baseType: !132, size: 64, offset: 3968)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1959, file: !1960, line: 190, baseType: !132, size: 64, offset: 4032)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1959, file: !1960, line: 190, baseType: !132, size: 64, offset: 4096)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1959, file: !1960, line: 190, baseType: !132, size: 64, offset: 4160)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1959, file: !1960, line: 191, baseType: !132, size: 64, offset: 4224)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1959, file: !1960, line: 191, baseType: !132, size: 64, offset: 4288)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1959, file: !1960, line: 191, baseType: !132, size: 64, offset: 4352)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1959, file: !1960, line: 191, baseType: !132, size: 64, offset: 4416)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1959, file: !1960, line: 192, baseType: !132, size: 64, offset: 4480)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1959, file: !1960, line: 192, baseType: !132, size: 64, offset: 4544)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1959, file: !1960, line: 192, baseType: !132, size: 64, offset: 4608)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1959, file: !1960, line: 192, baseType: !132, size: 64, offset: 4672)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1959, file: !1960, line: 193, baseType: !132, size: 64, offset: 4736)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1959, file: !1960, line: 193, baseType: !132, size: 64, offset: 4800)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1959, file: !1960, line: 194, baseType: !2058, size: 448, offset: 4864)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2059, line: 12, size: 448, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2058, file: !2059, line: 15, baseType: !449, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2058, file: !2059, line: 17, baseType: !449, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2058, file: !2059, line: 19, baseType: !449, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2058, file: !2059, line: 21, baseType: !449, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2058, file: !2059, line: 29, baseType: !449, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2058, file: !2059, line: 35, baseType: !449, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2058, file: !2059, line: 44, baseType: !449, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1959, file: !1960, line: 202, baseType: !451, size: 64, offset: 5312)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1959, file: !1960, line: 213, baseType: !2070, size: 2048, offset: 5376)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 2048, elements: !161)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2072, line: 43, size: 128, elements: !2073)
!2072 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2071, file: !2072, line: 44, baseType: !336, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2071, file: !2072, line: 45, baseType: !336, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1959, file: !1960, line: 216, baseType: !2077, size: 448, offset: 7424)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1960, line: 30, size: 448, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2077, file: !1960, line: 31, baseType: !167, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2077, file: !1960, line: 32, baseType: !184, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2077, file: !1960, line: 33, baseType: !132, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2077, file: !1960, line: 34, baseType: !449, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2077, file: !1960, line: 34, baseType: !449, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2077, file: !1960, line: 35, baseType: !132, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2077, file: !1960, line: 35, baseType: !132, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1959, file: !1960, line: 219, baseType: !2087, size: 64, offset: 7872)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1960, line: 219, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1959, file: !1960, line: 222, baseType: !13, size: 32, offset: 7936)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1959, file: !1960, line: 223, baseType: !2091, size: 64, offset: 8000)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1960, line: 223, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1959, file: !1960, line: 230, baseType: !641, size: 8, offset: 8064)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1959, file: !1960, line: 231, baseType: !583, size: 16, offset: 8080)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1959, file: !1960, line: 232, baseType: !583, size: 16, offset: 8096)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1959, file: !1960, line: 234, baseType: !401, size: 64, offset: 8128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1959, file: !1960, line: 237, baseType: !543, size: 256, offset: 8192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1959, file: !1960, line: 243, baseType: !466, size: 320, offset: 8448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1313, file: !670, line: 1111, baseType: !2100, size: 64, offset: 15424)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1960, line: 20, size: 16640, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2101, file: !1960, line: 21, baseType: !225, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2101, file: !1960, line: 22, baseType: !849, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2101, file: !1960, line: 23, baseType: !1305, size: 192, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2101, file: !1960, line: 24, baseType: !2107, size: 16384, offset: 256)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2108, size: 16384, elements: !297)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1912, line: 51, size: 256, elements: !2109)
!2109 = !{!2110}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2108, file: !1912, line: 52, baseType: !2111, size: 256)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1912, line: 37, size: 256, elements: !2112)
!2112 = !{!2113, !2120, !2121, !2125}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2111, file: !1912, line: 39, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2115, line: 83, baseType: !2116)
!2115 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2115, line: 82, baseType: !2118)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !167}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2111, file: !1912, line: 40, baseType: !132, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2111, file: !1912, line: 46, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2115, line: 86, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2115, line: 85, baseType: !1225)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2111, file: !1912, line: 48, baseType: !1974, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1313, file: !670, line: 1112, baseType: !1974, size: 64, offset: 15488)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1313, file: !670, line: 1113, baseType: !1974, size: 64, offset: 15552)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1313, file: !670, line: 1115, baseType: !1974, size: 64, offset: 15616)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1313, file: !670, line: 1116, baseType: !1970, size: 192, offset: 15680)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1313, file: !670, line: 1117, baseType: !132, size: 64, offset: 15872)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1313, file: !670, line: 1118, baseType: !334, size: 64, offset: 15936)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1313, file: !670, line: 1119, baseType: !13, size: 32, offset: 16000)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1313, file: !670, line: 1121, baseType: !395, size: 64, offset: 16064)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1313, file: !670, line: 1125, baseType: !2135, size: 64, offset: 16128)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !670, line: 43, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1313, file: !670, line: 1127, baseType: !717, size: 32, offset: 16192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1313, file: !670, line: 1128, baseType: !13, size: 32, offset: 16224)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1313, file: !670, line: 1130, baseType: !2140, size: 128, offset: 16256)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2141, line: 37, size: 128, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2140, file: !2141, line: 38, baseType: !167, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2140, file: !2141, line: 39, baseType: !245, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2140, file: !2141, line: 40, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2141, line: 24, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1313, file: !670, line: 1131, baseType: !2149, size: 256, offset: 16384)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2150, line: 12, size: 256, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2151 = !{!2152, !2153, !2154, !2155}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2149, file: !2150, line: 13, baseType: !185, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2149, file: !2150, line: 14, baseType: !132, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2149, file: !2150, line: 15, baseType: !132, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2149, file: !2150, line: 16, baseType: !641, size: 8, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1313, file: !670, line: 1134, baseType: !449, size: 64, offset: 16640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1313, file: !670, line: 1135, baseType: !449, size: 64, offset: 16704)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1313, file: !670, line: 1138, baseType: !225, size: 32, offset: 16768)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1313, file: !670, line: 1141, baseType: !477, size: 32, offset: 16800)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1313, file: !670, line: 1143, baseType: !2161, size: 64, offset: 16832)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !670, line: 735, size: 64, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2161, file: !670, line: 736, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1313, file: !670, line: 1147, baseType: !1487, size: 128, offset: 16896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1313, file: !670, line: 1149, baseType: !1312, size: 64, offset: 17024)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1313, file: !670, line: 1151, baseType: !2168, size: 64, offset: 17088)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !670, line: 1151, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1313, file: !670, line: 1188, baseType: !115, size: 64, offset: 17152)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1313, file: !670, line: 1191, baseType: !2172, size: 64, offset: 17216)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !670, line: 44, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1313, file: !670, line: 1194, baseType: !2175, size: 64, offset: 17280)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !670, line: 45, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1313, file: !670, line: 1197, baseType: !2178, size: 64, offset: 17344)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !670, line: 61, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1313, file: !670, line: 1199, baseType: !2181, size: 64, offset: 17408)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !670, line: 52, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1313, file: !670, line: 1202, baseType: !2184, size: 64, offset: 17472)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !670, line: 48, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1313, file: !670, line: 1205, baseType: !132, size: 64, offset: 17536)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1313, file: !670, line: 1206, baseType: !2188, size: 64, offset: 17600)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1912, line: 14, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1912, line: 12, size: 384, elements: !2191)
!2191 = !{!2192}
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1912, line: 13, baseType: !2193, size: 384)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1912, line: 13, size: 384, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2193, file: !1912, line: 13, baseType: !167, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2193, file: !1912, line: 13, baseType: !167, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2193, file: !1912, line: 13, baseType: !167, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2193, file: !1912, line: 13, baseType: !2199, size: 256, offset: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2200, line: 37, size: 256, elements: !2201)
!2200 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2201 = !{!2202, !2207, !2220, !2226, !2235, !2262, !2267}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2199, file: !2200, line: 42, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 39, size: 64, elements: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2203, file: !2200, line: 40, baseType: !1669, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2203, file: !2200, line: 41, baseType: !722, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2199, file: !2200, line: 50, baseType: !2208, size: 192)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 45, size: 192, elements: !2209)
!2209 = !{!2210, !2212, !2213, !2219}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2208, file: !2200, line: 46, baseType: !2211, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !182, line: 95, baseType: !167)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2208, file: !2200, line: 47, baseType: !167, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2208, file: !2200, line: 48, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2200, line: 11, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2200, line: 8, size: 64, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2215, file: !2200, line: 9, baseType: !167, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2215, file: !2200, line: 10, baseType: !115, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2208, file: !2200, line: 49, baseType: !167, size: 32, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2199, file: !2200, line: 57, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 53, size: 128, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2221, file: !2200, line: 54, baseType: !1669, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2221, file: !2200, line: 55, baseType: !722, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2221, file: !2200, line: 56, baseType: !2214, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2199, file: !2200, line: 66, baseType: !2227, size: 256)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 60, size: 256, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2234}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2227, file: !2200, line: 61, baseType: !1669, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2227, file: !2200, line: 62, baseType: !722, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2227, file: !2200, line: 63, baseType: !167, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2227, file: !2200, line: 64, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !182, line: 94, baseType: !183)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2227, file: !2200, line: 65, baseType: !2233, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2199, file: !2200, line: 105, baseType: !2236, size: 256)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 69, size: 256, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2236, file: !2200, line: 70, baseType: !115, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2200, line: 79, baseType: !2240, size: 192, offset: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2200, line: 79, size: 192, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2251, !2256}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2240, file: !2200, line: 81, baseType: !167, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2240, file: !2200, line: 86, baseType: !583, size: 16)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2240, file: !2200, line: 92, baseType: !2245, size: 192)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2200, line: 88, size: 192, elements: !2246)
!2246 = !{!2247, !2249, !2250}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2245, file: !2200, line: 89, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1471)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2245, file: !2200, line: 90, baseType: !115, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2245, file: !2200, line: 91, baseType: !115, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2240, file: !2200, line: 97, baseType: !2252, size: 96)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2200, line: 94, size: 96, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2252, file: !2200, line: 95, baseType: !2248, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2252, file: !2200, line: 96, baseType: !1048, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2240, file: !2200, line: 103, baseType: !2257, size: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2200, line: 99, size: 128, elements: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2257, file: !2200, line: 100, baseType: !132, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2257, file: !2200, line: 101, baseType: !1048, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2257, file: !2200, line: 102, baseType: !1048, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2199, file: !2200, line: 111, baseType: !2263, size: 128)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 108, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2263, file: !2200, line: 109, baseType: !184, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2263, file: !2200, line: 110, baseType: !167, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2199, file: !2200, line: 118, baseType: !2268, size: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 114, size: 128, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2268, file: !2200, line: 115, baseType: !115, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2268, file: !2200, line: 116, baseType: !167, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2268, file: !2200, line: 117, baseType: !13, size: 32, offset: 96)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1313, file: !670, line: 1208, baseType: !2058, size: 448, offset: 17664)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1313, file: !670, line: 1215, baseType: !449, size: 64, offset: 18112)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1313, file: !670, line: 1217, baseType: !449, size: 64, offset: 18176)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1313, file: !670, line: 1219, baseType: !449, size: 64, offset: 18240)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1313, file: !670, line: 1223, baseType: !2278, size: 64, offset: 18304)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2279, line: 99, baseType: !2280)
!2279 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2279, line: 99, size: 64, elements: !2281)
!2281 = !{!2282}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2280, file: !2279, line: 99, baseType: !131, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1313, file: !670, line: 1225, baseType: !2031, size: 32, offset: 18368)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1313, file: !670, line: 1226, baseType: !167, size: 32, offset: 18400)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1313, file: !670, line: 1227, baseType: !167, size: 32, offset: 18432)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1313, file: !670, line: 1231, baseType: !2287, size: 64, offset: 18496)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !670, line: 1231, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1313, file: !670, line: 1233, baseType: !191, size: 128, offset: 18560)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1313, file: !670, line: 1240, baseType: !2291, size: 64, offset: 18688)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !670, line: 62, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1313, file: !670, line: 1242, baseType: !2294, size: 64, offset: 18752)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !670, line: 1242, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1313, file: !670, line: 1244, baseType: !191, size: 128, offset: 18816)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1313, file: !670, line: 1245, baseType: !2298, size: 64, offset: 18944)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !670, line: 51, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1313, file: !670, line: 1246, baseType: !543, size: 256, offset: 19008)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1313, file: !670, line: 1247, baseType: !13, size: 32, offset: 19264)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1313, file: !670, line: 1250, baseType: !2303, size: 64, offset: 19328)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !670, line: 57, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1313, file: !670, line: 1251, baseType: !543, size: 256, offset: 19392)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1313, file: !670, line: 1252, baseType: !191, size: 128, offset: 19648)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1313, file: !670, line: 1259, baseType: !668, size: 64, offset: 19776)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1313, file: !670, line: 1260, baseType: !583, size: 16, offset: 19840)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1313, file: !670, line: 1261, baseType: !583, size: 16, offset: 19856)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1313, file: !670, line: 1314, baseType: !2311, size: 64, offset: 19904)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2313, line: 62, size: 256, align: 256, elements: !2314)
!2313 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2312, file: !2313, line: 75, baseType: !1048, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2312, file: !2313, line: 90, baseType: !1048, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2312, file: !2313, line: 112, baseType: !450, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 132, baseType: !1048, size: 32, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2312, file: !2313, line: 140, baseType: !1048, size: 32, offset: 160)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2312, file: !2313, line: 149, baseType: !1048, size: 32, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2312, file: !2313, line: 154, baseType: !2322, offset: 224)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !619)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1313, file: !670, line: 1315, baseType: !1130, size: 32, offset: 19968)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1313, file: !670, line: 1316, baseType: !1130, size: 32, offset: 20000)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1313, file: !670, line: 1321, baseType: !132, size: 64, offset: 20032)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1313, file: !670, line: 1325, baseType: !167, size: 32, offset: 20096)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1313, file: !670, line: 1326, baseType: !167, size: 32, offset: 20128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1313, file: !670, line: 1327, baseType: !167, size: 32, offset: 20160)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1313, file: !670, line: 1328, baseType: !167, size: 32, offset: 20192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1313, file: !670, line: 1329, baseType: !392, size: 128, align: 64, offset: 20224)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1313, file: !670, line: 1332, baseType: !2332, size: 128, offset: 20352)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2333, line: 51, size: 128, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2334 = !{!2335, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2332, file: !2333, line: 60, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2337, line: 7, size: 64, elements: !2338)
!2337 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2336, file: !2337, line: 12, baseType: !128, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2332, file: !2333, line: 63, baseType: !641, size: 8, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2332, file: !2333, line: 70, baseType: !641, size: 8, offset: 72)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1313, file: !670, line: 1335, baseType: !2343, size: 64, offset: 20480)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !670, line: 59, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1313, file: !670, line: 1337, baseType: !2346, size: 128, offset: 20544)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2333, line: 39, size: 128, elements: !2347)
!2347 = !{!2348, !2409, !2410}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2346, file: !2333, line: 40, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !364, line: 74, size: 512, align: 128, elements: !2351)
!2351 = !{!2352, !2353, !2403, !2408}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !364, line: 75, baseType: !132, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !364, line: 83, baseType: !2354, size: 320, offset: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !364, line: 83, size: 320, elements: !2355)
!2355 = !{!2356, !2377, !2391, !2395, !2402}
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !364, line: 84, baseType: !2357, size: 320)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !364, line: 84, size: 320, elements: !2358)
!2358 = !{!2359, !2370, !2371, !2376}
!2359 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !364, line: 90, baseType: !2360, size: 128)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !364, line: 90, size: 128, elements: !2361)
!2361 = !{!2362, !2363, !2368, !2369}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2360, file: !364, line: 91, baseType: !191, size: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !364, line: 94, baseType: !2364, size: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2360, file: !364, line: 94, size: 128, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2364, file: !364, line: 96, baseType: !115, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2364, file: !364, line: 98, baseType: !13, size: 32, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2360, file: !364, line: 102, baseType: !191, size: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2360, file: !364, line: 103, baseType: !191, size: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2357, file: !364, line: 106, baseType: !362, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !364, line: 107, baseType: !2372, size: 64, offset: 192)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !364, line: 107, size: 64, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2372, file: !364, line: 108, baseType: !132, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2372, file: !364, line: 109, baseType: !132, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2357, file: !364, line: 117, baseType: !132, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !364, line: 119, baseType: !2378, size: 320)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !364, line: 119, size: 320, elements: !2379)
!2379 = !{!2380, !2381, !2384, !2385, !2386}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2378, file: !364, line: 124, baseType: !132, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2378, file: !364, line: 125, baseType: !2382, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !364, line: 125, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2378, file: !364, line: 126, baseType: !132, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2378, file: !364, line: 127, baseType: !132, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !364, line: 128, baseType: !2387, size: 64, offset: 256)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !364, line: 128, size: 64, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2387, file: !364, line: 133, baseType: !132, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2387, file: !364, line: 138, baseType: !455, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !364, line: 141, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !364, line: 141, size: 64, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2392, file: !364, line: 142, baseType: !132, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !364, line: 144, baseType: !2396, size: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !364, line: 144, size: 128, elements: !2397)
!2397 = !{!2398, !2401}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2396, file: !364, line: 146, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !364, line: 146, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2396, file: !364, line: 147, baseType: !115, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2354, file: !364, line: 161, baseType: !392, size: 128, align: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !364, line: 164, baseType: !2404, size: 32, offset: 384)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !364, line: 164, size: 32, elements: !2405)
!2405 = !{!2406, !2407}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2404, file: !364, line: 169, baseType: !245, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2404, file: !364, line: 177, baseType: !13, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2350, file: !364, line: 181, baseType: !245, size: 32, offset: 416)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2346, file: !2333, line: 42, baseType: !1048, size: 32, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2346, file: !2333, line: 43, baseType: !1048, size: 32, offset: 96)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1313, file: !670, line: 1340, baseType: !2412, size: 64, offset: 20672)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !670, line: 69, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1313, file: !670, line: 1351, baseType: !167, size: 32, offset: 20736)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1313, file: !670, line: 1352, baseType: !167, size: 32, offset: 20768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1313, file: !670, line: 1354, baseType: !132, size: 64, offset: 20800)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1313, file: !670, line: 1364, baseType: !449, size: 64, offset: 20864)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1313, file: !670, line: 1365, baseType: !449, size: 64, offset: 20928)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1313, file: !670, line: 1412, baseType: !132, size: 64, offset: 20992)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1313, file: !670, line: 1453, baseType: !2421, size: 64, offset: 21056)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !670, line: 1453, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1313, file: !670, line: 1457, baseType: !2424, size: 64, offset: 21120)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !46, line: 61, size: 576, elements: !2426)
!2426 = !{!2427, !2428, !2447, !2450, !2451, !2484, !2494}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2425, file: !46, line: 62, baseType: !45, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2425, file: !46, line: 64, baseType: !2429, size: 192, offset: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2425, file: !46, line: 64, size: 192, elements: !2430)
!2430 = !{!2431, !2442}
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2429, file: !46, line: 65, baseType: !2432, size: 192)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2429, file: !46, line: 65, size: 192, elements: !2433)
!2433 = !{!2434, !2441}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2432, file: !46, line: 66, baseType: !2435, size: 128)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2436, line: 50, size: 128, elements: !2437)
!2436 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2437 = !{!2438, !2439, !2440}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2435, file: !2436, line: 52, baseType: !132, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2435, file: !2436, line: 54, baseType: !13, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2435, file: !2436, line: 55, baseType: !13, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2432, file: !46, line: 67, baseType: !132, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !2429, file: !46, line: 70, baseType: !2443, size: 192)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2429, file: !46, line: 70, size: 192, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2443, file: !46, line: 71, baseType: !392, size: 128, align: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2443, file: !46, line: 72, baseType: !132, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2425, file: !46, line: 76, baseType: !2448, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !46, line: 76, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2425, file: !46, line: 77, baseType: !132, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2425, file: !46, line: 79, baseType: !2452, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2436, line: 25, size: 256, elements: !2454)
!2454 = !{!2455, !2461, !2465}
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2453, file: !2436, line: 26, baseType: !2456, size: 128)
!2456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2453, file: !2436, line: 26, size: 128, elements: !2457)
!2457 = !{!2458, !2460}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2456, file: !2436, line: 27, baseType: !2459, size: 128)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, elements: !161)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2456, file: !2436, line: 28, baseType: !2459, size: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2453, file: !2436, line: 31, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2464)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2436, line: 23, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, scope: !2453, file: !2436, line: 33, baseType: !2466, size: 64, offset: 192)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2453, file: !2436, line: 33, size: 64, elements: !2467)
!2467 = !{!2468, !2474, !2479}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2466, file: !2436, line: 38, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2436, line: 34, size: 64, elements: !2470)
!2470 = !{!2471, !2472, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2469, file: !2436, line: 35, baseType: !522, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2469, file: !2436, line: 36, baseType: !253, size: 8, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2469, file: !2436, line: 37, baseType: !253, size: 8, offset: 40)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2466, file: !2436, line: 42, baseType: !2475, size: 16)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2436, line: 39, size: 16, elements: !2476)
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2475, file: !2436, line: 40, baseType: !253, size: 8)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2475, file: !2436, line: 41, baseType: !253, size: 8, offset: 8)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2466, file: !2436, line: 46, baseType: !2480, size: 16)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2436, line: 43, size: 16, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2480, file: !2436, line: 44, baseType: !253, size: 8)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2480, file: !2436, line: 45, baseType: !253, size: 8, offset: 8)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2425, file: !46, line: 81, baseType: !2485, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !46, line: 85, size: 384, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2486, file: !46, line: 86, baseType: !2448, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2486, file: !46, line: 87, baseType: !132, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2486, file: !46, line: 88, baseType: !132, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2486, file: !46, line: 89, baseType: !132, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2486, file: !46, line: 90, baseType: !641, size: 8, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2486, file: !46, line: 92, baseType: !2485, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2425, file: !46, line: 82, baseType: !13, size: 32, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1313, file: !670, line: 1463, baseType: !2496, offset: 21184)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !670, line: 739, elements: !422)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1313, file: !670, line: 1470, baseType: !392, size: 128, align: 64, offset: 21184)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1313, file: !670, line: 1471, baseType: !849, size: 32, offset: 21312)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1313, file: !670, line: 1472, baseType: !167, size: 32, offset: 21344)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1313, file: !670, line: 1474, baseType: !1312, size: 64, offset: 21376)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1313, file: !670, line: 1475, baseType: !1113, size: 320, offset: 21440)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1313, file: !670, line: 1478, baseType: !2503, size: 64, offset: 21760)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !670, line: 1478, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1313, file: !670, line: 1482, baseType: !849, size: 32, offset: 21824)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1313, file: !670, line: 1489, baseType: !115, size: 64, offset: 21888)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1313, file: !670, line: 1504, baseType: !115, size: 64, offset: 21952)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1313, file: !670, line: 1505, baseType: !450, size: 64, offset: 22016)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1313, file: !670, line: 1506, baseType: !449, size: 64, offset: 22080)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1313, file: !670, line: 1507, baseType: !450, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1313, file: !670, line: 1508, baseType: !450, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1313, file: !670, line: 1509, baseType: !450, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1313, file: !670, line: 1510, baseType: !392, size: 128, align: 64, offset: 22208)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1313, file: !670, line: 1511, baseType: !167, size: 32, offset: 22336)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1313, file: !670, line: 1515, baseType: !2516, size: 64, offset: 22400)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1335, line: 56, size: 64, elements: !2517)
!2517 = !{!2518}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2516, file: !1335, line: 57, baseType: !1338, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1313, file: !670, line: 1518, baseType: !2516, size: 64, offset: 22464)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1313, file: !670, line: 1528, baseType: !392, size: 128, align: 64, offset: 22528)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1313, file: !670, line: 1552, baseType: !2522, size: 35328, offset: 23040)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2523, line: 430, size: 35328, elements: !2524)
!2523 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2524 = !{!2525, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2554, !2555, !2556, !2557, !2558, !2559, !2562, !2563, !2564, !2565}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2522, file: !2523, line: 432, baseType: !2526, size: 192)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2527, size: 192, elements: !5)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2528, line: 16, size: 64, elements: !2529)
!2528 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2527, file: !2528, line: 17, baseType: !263, size: 16)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2527, file: !2528, line: 18, baseType: !263, size: 16, offset: 16)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2527, file: !2528, line: 19, baseType: !263, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2527, file: !2528, line: 19, baseType: !263, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2527, file: !2528, line: 19, baseType: !263, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2527, file: !2528, line: 19, baseType: !263, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2527, file: !2528, line: 19, baseType: !263, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2527, file: !2528, line: 20, baseType: !263, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2527, file: !2528, line: 20, baseType: !263, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2527, file: !2528, line: 20, baseType: !263, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2527, file: !2528, line: 20, baseType: !263, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2527, file: !2528, line: 20, baseType: !263, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2527, file: !2528, line: 20, baseType: !263, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2522, file: !2523, line: 436, baseType: !132, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2522, file: !2523, line: 440, baseType: !265, size: 16, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2522, file: !2523, line: 441, baseType: !265, size: 16, offset: 272)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2522, file: !2523, line: 442, baseType: !265, size: 16, offset: 288)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2522, file: !2523, line: 443, baseType: !265, size: 16, offset: 304)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2522, file: !2523, line: 447, baseType: !132, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2522, file: !2523, line: 448, baseType: !132, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2522, file: !2523, line: 459, baseType: !2551, size: 256, offset: 448)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 256, elements: !524)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2523, line: 428, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2522, file: !2523, line: 461, baseType: !132, size: 64, offset: 704)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2522, file: !2523, line: 463, baseType: !132, size: 64, offset: 768)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2522, file: !2523, line: 465, baseType: !132, size: 64, offset: 832)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2522, file: !2523, line: 466, baseType: !132, size: 64, offset: 896)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2522, file: !2523, line: 467, baseType: !132, size: 64, offset: 960)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2522, file: !2523, line: 473, baseType: !2560, size: 64, offset: 1024)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2523, line: 10, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2522, file: !2523, line: 480, baseType: !132, size: 64, offset: 1088)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2522, file: !2523, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2522, file: !2523, line: 491, baseType: !1130, size: 32, offset: 1184)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2522, file: !2523, line: 501, baseType: !2566, size: 33792, offset: 1536)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2567, line: 448, size: 33792, elements: !2568)
!2567 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2568 = !{!2569, !2570, !2571, !2735, !2736, !2742, !2743}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2566, file: !2567, line: 461, baseType: !13, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2566, file: !2567, line: 468, baseType: !132, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2566, file: !2567, line: 476, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2567, line: 356, size: 33280, align: 512, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2573, file: !2567, line: 358, baseType: !13, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2573, file: !2567, line: 361, baseType: !13, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2573, file: !2567, line: 364, baseType: !449, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2573, file: !2567, line: 367, baseType: !449, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2573, file: !2567, line: 370, baseType: !449, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2573, file: !2567, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2573, file: !2567, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2573, file: !2567, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2573, file: !2567, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2573, file: !2567, line: 397, baseType: !2585, size: 32768, offset: 512)
!2585 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2567, line: 348, size: 32768, elements: !2586)
!2586 = !{!2587, !2602, !2641, !2718, !2731}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2585, file: !2567, line: 349, baseType: !2588, size: 896)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2567, line: 12, size: 896, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2601}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2588, file: !2567, line: 13, baseType: !1130, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2588, file: !2567, line: 14, baseType: !1130, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2588, file: !2567, line: 15, baseType: !1130, size: 32, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2588, file: !2567, line: 16, baseType: !1130, size: 32, offset: 96)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2588, file: !2567, line: 17, baseType: !1130, size: 32, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2588, file: !2567, line: 18, baseType: !1130, size: 32, offset: 160)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2588, file: !2567, line: 19, baseType: !1130, size: 32, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2588, file: !2567, line: 22, baseType: !2598, size: 640, offset: 224)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 640, elements: !2599)
!2599 = !{!2600}
!2600 = !DISubrange(count: 20)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2588, file: !2567, line: 25, baseType: !1130, size: 32, offset: 864)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2585, file: !2567, line: 350, baseType: !2603, size: 4096, align: 128)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2567, line: 34, size: 4096, align: 128, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2624, !2625, !2626, !2630, !2632, !2636}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2603, file: !2567, line: 35, baseType: !263, size: 16)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2603, file: !2567, line: 36, baseType: !263, size: 16, offset: 16)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2603, file: !2567, line: 37, baseType: !263, size: 16, offset: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2603, file: !2567, line: 38, baseType: !263, size: 16, offset: 48)
!2609 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !2567, line: 39, baseType: !2610, size: 128, offset: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2603, file: !2567, line: 39, size: 128, elements: !2611)
!2611 = !{!2612, !2617}
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !2567, line: 40, baseType: !2613, size: 128)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2567, line: 40, size: 128, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2613, file: !2567, line: 41, baseType: !449, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2613, file: !2567, line: 42, baseType: !449, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !2567, line: 44, baseType: !2618, size: 128)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2567, line: 44, size: 128, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2618, file: !2567, line: 45, baseType: !1130, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2618, file: !2567, line: 46, baseType: !1130, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2618, file: !2567, line: 47, baseType: !1130, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2618, file: !2567, line: 48, baseType: !1130, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2603, file: !2567, line: 51, baseType: !1130, size: 32, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2603, file: !2567, line: 52, baseType: !1130, size: 32, offset: 224)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2603, file: !2567, line: 55, baseType: !2627, size: 1024, offset: 256)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 1024, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2603, file: !2567, line: 58, baseType: !2631, size: 2048, offset: 1280)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 2048, elements: !297)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2603, file: !2567, line: 60, baseType: !2633, size: 384, offset: 3328)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 384, elements: !2634)
!2634 = !{!2635}
!2635 = !DISubrange(count: 12)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !2567, line: 62, baseType: !2637, size: 384, offset: 3712)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2603, file: !2567, line: 62, size: 384, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2637, file: !2567, line: 63, baseType: !2633, size: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2637, file: !2567, line: 64, baseType: !2633, size: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2585, file: !2567, line: 351, baseType: !2642, size: 1088)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2567, line: 79, size: 1088, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2717}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2642, file: !2567, line: 80, baseType: !1130, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2642, file: !2567, line: 81, baseType: !1130, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2642, file: !2567, line: 82, baseType: !1130, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2642, file: !2567, line: 83, baseType: !1130, size: 32, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2642, file: !2567, line: 84, baseType: !1130, size: 32, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2642, file: !2567, line: 85, baseType: !1130, size: 32, offset: 160)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2642, file: !2567, line: 86, baseType: !1130, size: 32, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2642, file: !2567, line: 88, baseType: !2598, size: 640, offset: 224)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2642, file: !2567, line: 89, baseType: !253, size: 8, offset: 864)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2642, file: !2567, line: 90, baseType: !253, size: 8, offset: 872)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2642, file: !2567, line: 91, baseType: !253, size: 8, offset: 880)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2642, file: !2567, line: 92, baseType: !253, size: 8, offset: 888)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2642, file: !2567, line: 93, baseType: !253, size: 8, offset: 896)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2642, file: !2567, line: 94, baseType: !253, size: 8, offset: 904)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2642, file: !2567, line: 95, baseType: !2659, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2661, line: 11, size: 128, elements: !2662)
!2661 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2660, file: !2661, line: 12, baseType: !184, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2660, file: !2661, line: 13, baseType: !2665, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2667, line: 103, size: 1344, elements: !2668)
!2667 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2697, !2698, !2699}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2666, file: !2667, line: 109, baseType: !132, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2666, file: !2667, line: 110, baseType: !132, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2666, file: !2667, line: 111, baseType: !132, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2666, file: !2667, line: 112, baseType: !132, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2666, file: !2667, line: 113, baseType: !132, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2666, file: !2667, line: 114, baseType: !132, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2666, file: !2667, line: 117, baseType: !132, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2666, file: !2667, line: 118, baseType: !132, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2666, file: !2667, line: 119, baseType: !132, size: 64, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2666, file: !2667, line: 120, baseType: !132, size: 64, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2666, file: !2667, line: 121, baseType: !132, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2666, file: !2667, line: 122, baseType: !132, size: 64, offset: 704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2666, file: !2667, line: 123, baseType: !132, size: 64, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2666, file: !2667, line: 124, baseType: !132, size: 64, offset: 832)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2666, file: !2667, line: 125, baseType: !132, size: 64, offset: 896)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2666, file: !2667, line: 139, baseType: !132, size: 64, offset: 960)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2666, file: !2667, line: 142, baseType: !132, size: 64, offset: 1024)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !2667, line: 144, baseType: !2687, size: 64, offset: 1088)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2666, file: !2667, line: 144, size: 64, elements: !2688)
!2688 = !{!2689, !2690, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2687, file: !2667, line: 146, baseType: !263, size: 16)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2687, file: !2667, line: 148, baseType: !449, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2687, file: !2667, line: 150, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2667, line: 59, size: 64, elements: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2692, file: !2667, line: 61, baseType: !449, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2692, file: !2667, line: 63, baseType: !449, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2692, file: !2667, line: 65, baseType: !449, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2666, file: !2667, line: 153, baseType: !132, size: 64, offset: 1152)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2666, file: !2667, line: 154, baseType: !132, size: 64, offset: 1216)
!2699 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !2667, line: 156, baseType: !2700, size: 64, offset: 1280)
!2700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2666, file: !2667, line: 156, size: 64, elements: !2701)
!2701 = !{!2702, !2703, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2700, file: !2667, line: 158, baseType: !263, size: 16)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2700, file: !2667, line: 160, baseType: !449, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2700, file: !2667, line: 162, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2667, line: 69, size: 64, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2705, file: !2667, line: 71, baseType: !449, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2705, file: !2667, line: 73, baseType: !449, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2705, file: !2667, line: 75, baseType: !449, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2705, file: !2667, line: 77, baseType: !449, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2705, file: !2667, line: 80, baseType: !449, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2705, file: !2667, line: 83, baseType: !449, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2705, file: !2667, line: 86, baseType: !449, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2705, file: !2667, line: 88, baseType: !449, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2705, file: !2667, line: 93, baseType: !449, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2705, file: !2667, line: 100, baseType: !449, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2642, file: !2567, line: 96, baseType: !1130, size: 32, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2585, file: !2567, line: 352, baseType: !2719, size: 4608, align: 512)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2567, line: 333, size: 4608, align: 512, elements: !2720)
!2720 = !{!2721, !2722, !2729}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2719, file: !2567, line: 334, baseType: !2603, size: 4096, align: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2719, file: !2567, line: 335, baseType: !2723, size: 512, offset: 4096)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2567, line: 312, size: 512, elements: !2724)
!2724 = !{!2725, !2726, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2723, file: !2567, line: 313, baseType: !449, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2723, file: !2567, line: 314, baseType: !449, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2723, file: !2567, line: 315, baseType: !2728, size: 384, offset: 128)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 384, elements: !1823)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2719, file: !2567, line: 336, baseType: !2730, offset: 4608)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, elements: !619)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2585, file: !2567, line: 353, baseType: !2732, size: 32768)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 32768, elements: !2733)
!2733 = !{!2734}
!2734 = !DISubrange(count: 4096)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2566, file: !2567, line: 484, baseType: !2572, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2566, file: !2567, line: 491, baseType: !2737, size: 128, offset: 256)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2567, line: 404, size: 128, elements: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2737, file: !2567, line: 424, baseType: !449, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2737, file: !2567, line: 432, baseType: !13, size: 32, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2737, file: !2567, line: 440, baseType: !13, size: 32, offset: 96)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2566, file: !2567, line: 498, baseType: !2737, size: 128, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2566, file: !2567, line: 508, baseType: !2573, size: 33280, align: 512, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !122, file: !29, line: 158, baseType: !2745, size: 64, offset: 4544)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !29, line: 158, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !122, file: !29, line: 161, baseType: !115, size: 64, offset: 4608)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !122, file: !29, line: 164, baseType: !2749, size: 64, offset: 4672)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !29, line: 164, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !122, file: !29, line: 166, baseType: !1255, size: 192, offset: 4736)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !122, file: !29, line: 167, baseType: !1255, size: 192, offset: 4928)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "update_mutex", scope: !117, file: !118, line: 84, baseType: !543, size: 256, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "last_sample_time", scope: !117, file: !118, line: 86, baseType: !449, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sample_delay_ns", scope: !117, file: !118, line: 87, baseType: !461, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "work_count", scope: !117, file: !118, line: 88, baseType: !245, size: 32, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "irq_work", scope: !117, file: !118, line: 89, baseType: !2758, size: 256, offset: 512)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !2759, line: 17, size: 256, elements: !2760)
!2759 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!2760 = !{!2761, !2762, !2767}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2758, file: !2759, line: 18, baseType: !1330, size: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2758, file: !2759, line: 19, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !2758, file: !2759, line: 20, baseType: !2768, size: 64, offset: 192)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2769, line: 16, size: 64, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2768, file: !2769, line: 17, baseType: !1312, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !117, file: !118, line: 90, baseType: !607, size: 256, offset: 768)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dbs_data", scope: !117, file: !118, line: 92, baseType: !2774, size: 64, offset: 1024)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dbs_data", file: !118, line: 38, size: 1280, elements: !2776)
!2776 = !{!2777, !2784, !2812, !2813, !2814, !2815, !2816, !2817}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "attr_set", scope: !2775, file: !118, line: 39, baseType: !2778, size: 960)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gov_attr_set", file: !29, line: 652, size: 960, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2778, file: !29, line: 653, baseType: !210, size: 512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !2778, file: !29, line: 654, baseType: !191, size: 128, offset: 512)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !2778, file: !29, line: 655, baseType: !543, size: 256, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2778, file: !29, line: 656, baseType: !167, size: 32, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !2775, file: !118, line: 40, baseType: !2785, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dbs_governor", file: !118, line: 125, size: 1664, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2795, !2799, !2803, !2807, !2811}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !2786, file: !118, line: 126, baseType: !157, size: 832)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_type", scope: !2786, file: !118, line: 127, baseType: !308, size: 384, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "gdbs_data", scope: !2786, file: !118, line: 133, baseType: !2774, size: 64, offset: 1216)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "gov_dbs_update", scope: !2786, file: !118, line: 135, baseType: !2792, size: 64, offset: 1280)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!13, !121}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2786, file: !118, line: 136, baseType: !2796, size: 64, offset: 1344)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!116}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2786, file: !118, line: 137, baseType: !2800, size: 64, offset: 1408)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !116}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2786, file: !118, line: 138, baseType: !2804, size: 64, offset: 1472)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!167, !2774}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2786, file: !118, line: 139, baseType: !2808, size: 64, offset: 1536)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2774}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2786, file: !118, line: 140, baseType: !169, size: 64, offset: 1600)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "tuners", scope: !2775, file: !118, line: 41, baseType: !115, size: 64, offset: 1024)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_nice_load", scope: !2775, file: !118, line: 42, baseType: !13, size: 32, offset: 1088)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_rate", scope: !2775, file: !118, line: 43, baseType: !13, size: 32, offset: 1120)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_down_factor", scope: !2775, file: !118, line: 44, baseType: !13, size: 32, offset: 1152)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "up_threshold", scope: !2775, file: !118, line: 45, baseType: !13, size: 32, offset: 1184)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "io_is_busy", scope: !2775, file: !118, line: 46, baseType: !13, size: 32, offset: 1216)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !117, file: !118, line: 93, baseType: !191, size: 128, offset: 1088)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "rate_mult", scope: !117, file: !118, line: 95, baseType: !13, size: 32, offset: 1216)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "idle_periods", scope: !117, file: !118, line: 96, baseType: !13, size: 32, offset: 1248)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "is_shared", scope: !117, file: !118, line: 98, baseType: !641, size: 8, offset: 1280)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "work_in_progress", scope: !117, file: !118, line: 99, baseType: !641, size: 8, offset: 1288)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_dbs_info", file: !118, line: 109, size: 384, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2839}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cpu_idle", scope: !2824, file: !118, line: 110, baseType: !449, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "prev_update_time", scope: !2824, file: !118, line: 111, baseType: !449, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cpu_nice", scope: !2824, file: !118, line: 112, baseType: !449, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "prev_load", scope: !2824, file: !118, line: 119, baseType: !13, size: 32, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "update_util", scope: !2824, file: !118, line: 120, baseType: !2831, size: 64, offset: 256)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "update_util_data", file: !2832, line: 16, size: 64, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/sched/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a2a7cb325ac1de840f64ad3bf663ee1")
!2833 = !{!2834}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2831, file: !2832, line: 17, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2838, !449, !13}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "policy_dbs", scope: !2824, file: !118, line: 121, baseType: !116, size: 64, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cpustat", file: !60, line: 37, size: 640, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cpustat", scope: !2841, file: !60, line: 38, baseType: !2844, size: 640)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 640, elements: !2845)
!2845 = !{!2846}
!2846 = !DISubrange(count: 10)
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !180, line: 154, baseType: !13)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2853)
!2853 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !451)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !167)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1130)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2860 = !{!0, !7, !2861, !2863, !2865, !2870, !2872, !2877, !2879, !2881, !2883, !2885, !2887, !2889, !2909, !2914, !2916, !2921, !2923}
!2861 = !DIGlobalVariableExpression(var: !2862, expr: !DIExpression())
!2862 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gov_update_cpu_data264", scope: !9, file: !2, line: 112, type: !115, isLocal: true, isDefinition: true)
!2863 = !DIGlobalVariableExpression(var: !2864, expr: !DIExpression())
!2864 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dbs_update265", scope: !9, file: !2, line: 230, type: !115, isLocal: true, isDefinition: true)
!2865 = !DIGlobalVariableExpression(var: !2866, expr: !DIExpression())
!2866 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !2867, isLocal: true, isDefinition: true)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !2868)
!2868 = !{!2869}
!2869 = !DISubrange(count: 35)
!2870 = !DIGlobalVariableExpression(var: !2871, expr: !DIExpression())
!2871 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !3, isLocal: true, isDefinition: true)
!2872 = !DIGlobalVariableExpression(var: !2873, expr: !DIExpression())
!2873 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !2874, isLocal: true, isDefinition: true)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !2875)
!2875 = !{!2876}
!2876 = !DISubrange(count: 76)
!2877 = !DIGlobalVariableExpression(var: !2878, expr: !DIExpression())
!2878 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_dbs_governor_init270", scope: !9, file: !2, line: 488, type: !115, isLocal: true, isDefinition: true)
!2879 = !DIGlobalVariableExpression(var: !2880, expr: !DIExpression())
!2880 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_dbs_governor_exit271", scope: !9, file: !2, line: 511, type: !115, isLocal: true, isDefinition: true)
!2881 = !DIGlobalVariableExpression(var: !2882, expr: !DIExpression())
!2882 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_dbs_governor_start272", scope: !9, file: !2, line: 549, type: !115, isLocal: true, isDefinition: true)
!2883 = !DIGlobalVariableExpression(var: !2884, expr: !DIExpression())
!2884 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_dbs_governor_stop273", scope: !9, file: !2, line: 561, type: !115, isLocal: true, isDefinition: true)
!2885 = !DIGlobalVariableExpression(var: !2886, expr: !DIExpression())
!2886 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_dbs_governor_limits274", scope: !9, file: !2, line: 581, type: !115, isLocal: true, isDefinition: true)
!2887 = !DIGlobalVariableExpression(var: !2888, expr: !DIExpression())
!2888 = distinct !DIGlobalVariable(name: "cpu_dbs", scope: !9, file: !2, line: 24, type: !2824, isLocal: true, isDefinition: true)
!2889 = !DIGlobalVariableExpression(var: !2890, expr: !DIExpression())
!2890 = distinct !DIGlobalVariable(name: "__key", scope: !2891, file: !2, line: 361, type: !2908, isLocal: true, isDefinition: true)
!2891 = distinct !DISubprogram(name: "alloc_policy_dbs_info", scope: !2, file: !2, line: 349, type: !2892, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!116, !121, !2785}
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2903, !2906}
!2895 = !DILocalVariable(name: "policy", arg: 1, scope: !2891, file: !2, line: 349, type: !121)
!2896 = !DILocalVariable(name: "gov", arg: 2, scope: !2891, file: !2, line: 350, type: !2785)
!2897 = !DILocalVariable(name: "policy_dbs", scope: !2891, file: !2, line: 352, type: !116)
!2898 = !DILocalVariable(name: "j", scope: !2891, file: !2, line: 353, type: !167)
!2899 = !DILocalVariable(name: "j_cdbs", scope: !2900, file: !2, line: 368, type: !2823)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 367, column: 40)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 367, column: 2)
!2902 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 367, column: 2)
!2903 = !DILocalVariable(name: "__vpp_verify", scope: !2904, file: !2, line: 368, type: !564)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 368, column: 34)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 368, column: 34)
!2906 = !DILocalVariable(name: "__ptr", scope: !2907, file: !2, line: 368, type: !132)
!2907 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 368, column: 34)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1149, line: 206, elements: !422)
!2909 = !DIGlobalVariableExpression(var: !2910, expr: !DIExpression())
!2910 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !2911, isLocal: true, isDefinition: true)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !2912)
!2912 = !{!2913}
!2913 = !DISubrange(count: 26)
!2914 = !DIGlobalVariableExpression(var: !2915, expr: !DIExpression())
!2915 = distinct !DIGlobalVariable(name: "__key", scope: !2891, file: !2, line: 364, type: !2908, isLocal: true, isDefinition: true)
!2916 = !DIGlobalVariableExpression(var: !2917, expr: !DIExpression())
!2917 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !2918, isLocal: true, isDefinition: true)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !2919)
!2919 = !{!2920}
!2920 = !DISubrange(count: 5)
!2921 = !DIGlobalVariableExpression(var: !2922, expr: !DIExpression())
!2922 = distinct !DIGlobalVariable(name: "gov_dbs_data_mutex", scope: !9, file: !2, line: 26, type: !543, isLocal: true, isDefinition: true)
!2923 = !DIGlobalVariableExpression(var: !2924, expr: !DIExpression())
!2924 = distinct !DIGlobalVariable(scope: null, file: !105, line: 480, type: !2925, isLocal: true, isDefinition: true)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !2926)
!2926 = !{!2927}
!2927 = !DISubrange(count: 21)
!2928 = !{i32 7, !"Dwarf Version", i32 5}
!2929 = !{i32 2, !"Debug Info Version", i32 3}
!2930 = !{i32 1, !"wchar_size", i32 2}
!2931 = !{i32 8, !"cf-protection-branch", i32 1}
!2932 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2933 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2934 = !{i32 1, !"Code Model", i32 2}
!2935 = !{i32 1, !"override-stack-alignment", i32 8}
!2936 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2937 = distinct !DISubprogram(name: "sampling_rate_store", scope: !2, file: !2, line: 44, type: !2938, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!179, !2850, !214, !334}
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2951}
!2941 = !DILocalVariable(name: "attr_set", arg: 1, scope: !2937, file: !2, line: 44, type: !2850)
!2942 = !DILocalVariable(name: "buf", arg: 2, scope: !2937, file: !2, line: 44, type: !214)
!2943 = !DILocalVariable(name: "count", arg: 3, scope: !2937, file: !2, line: 45, type: !334)
!2944 = !DILocalVariable(name: "dbs_data", scope: !2937, file: !2, line: 47, type: !2774)
!2945 = !DILocalVariable(name: "policy_dbs", scope: !2937, file: !2, line: 48, type: !116)
!2946 = !DILocalVariable(name: "sampling_interval", scope: !2937, file: !2, line: 49, type: !13)
!2947 = !DILocalVariable(name: "ret", scope: !2937, file: !2, line: 50, type: !167)
!2948 = !DILocalVariable(name: "__mptr", scope: !2949, file: !2, line: 62, type: !115)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 62, column: 2)
!2950 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 62, column: 2)
!2951 = !DILocalVariable(name: "__mptr", scope: !2952, file: !2, line: 62, type: !115)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 62, column: 2)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 62, column: 2)
!2954 = !DILocation(line: 44, column: 50, scope: !2937)
!2955 = !DILocation(line: 44, column: 72, scope: !2937)
!2956 = !DILocation(line: 45, column: 15, scope: !2937)
!2957 = !DILocation(line: 47, column: 2, scope: !2937)
!2958 = !DILocation(line: 47, column: 19, scope: !2937)
!2959 = !DILocation(line: 47, column: 42, scope: !2937)
!2960 = !DILocation(line: 47, column: 30, scope: !2937)
!2961 = !DILocation(line: 48, column: 2, scope: !2937)
!2962 = !DILocation(line: 48, column: 26, scope: !2937)
!2963 = !DILocation(line: 49, column: 2, scope: !2937)
!2964 = !DILocation(line: 49, column: 15, scope: !2937)
!2965 = !DILocation(line: 50, column: 2, scope: !2937)
!2966 = !DILocation(line: 50, column: 6, scope: !2937)
!2967 = !DILocation(line: 52, column: 15, scope: !2937)
!2968 = !DILocation(line: 52, column: 8, scope: !2937)
!2969 = !DILocation(line: 52, column: 6, scope: !2937)
!2970 = !DILocation(line: 53, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 53, column: 6)
!2972 = !DILocation(line: 53, column: 10, scope: !2971)
!2973 = !DILocation(line: 53, column: 15, scope: !2971)
!2974 = !DILocation(line: 53, column: 18, scope: !2971)
!2975 = !DILocation(line: 53, column: 36, scope: !2971)
!2976 = !DILocation(line: 53, column: 6, scope: !2937)
!2977 = !DILocation(line: 54, column: 3, scope: !2971)
!2978 = !DILocation(line: 56, column: 28, scope: !2937)
!2979 = !DILocation(line: 56, column: 2, scope: !2937)
!2980 = !DILocation(line: 56, column: 12, scope: !2937)
!2981 = !DILocation(line: 56, column: 26, scope: !2937)
!2982 = !DILocation(line: 62, column: 2, scope: !2949)
!2983 = !DILocation(line: 62, column: 2, scope: !2950)
!2984 = !DILocation(line: 62, column: 2, scope: !2953)
!2985 = !DILocation(line: 63, column: 15, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 62, column: 64)
!2987 = !DILocation(line: 63, column: 27, scope: !2986)
!2988 = !DILocation(line: 63, column: 3, scope: !2986)
!2989 = !DILocation(line: 77, column: 27, scope: !2986)
!2990 = !DILocation(line: 77, column: 3, scope: !2986)
!2991 = !DILocation(line: 78, column: 17, scope: !2986)
!2992 = !DILocation(line: 78, column: 29, scope: !2986)
!2993 = !DILocation(line: 78, column: 3, scope: !2986)
!2994 = !DILocation(line: 79, column: 2, scope: !2986)
!2995 = !DILocation(line: 62, column: 2, scope: !2952)
!2996 = distinct !{!2996, !2983, !2997, !2998, !2999}
!2997 = !DILocation(line: 79, column: 2, scope: !2950)
!2998 = !{!"llvm.loop.mustprogress"}
!2999 = !{!"llvm.loop.unroll.disable"}
!3000 = !DILocation(line: 81, column: 9, scope: !2937)
!3001 = !DILocation(line: 81, column: 2, scope: !2937)
!3002 = !DILocation(line: 82, column: 1, scope: !2937)
!3003 = distinct !DISubprogram(name: "to_dbs_data", scope: !118, file: !118, line: 49, type: !3004, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!2774, !2850}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "attr_set", arg: 1, scope: !3003, file: !118, line: 49, type: !2850)
!3008 = !DILocalVariable(name: "__mptr", scope: !3009, file: !118, line: 51, type: !115)
!3009 = distinct !DILexicalBlock(scope: !3003, file: !118, line: 51, column: 9)
!3010 = !DILocation(line: 49, column: 65, scope: !3003)
!3011 = !DILocation(line: 51, column: 9, scope: !3009)
!3012 = !DILocation(line: 51, column: 9, scope: !3003)
!3013 = !DILocation(line: 51, column: 2, scope: !3003)
!3014 = !DISubprogram(name: "sscanf", scope: !3015, file: !3015, line: 20, type: !3016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3015 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!167, !214, !214, null}
!3018 = !DISubprogram(name: "mutex_lock", scope: !544, file: !544, line: 227, type: !3019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!3022 = distinct !DISubprogram(name: "gov_update_sample_delay", scope: !118, file: !118, line: 102, type: !3023, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !116, !13}
!3025 = !{!3026, !3027}
!3026 = !DILocalVariable(name: "policy_dbs", arg: 1, scope: !3022, file: !118, line: 102, type: !116)
!3027 = !DILocalVariable(name: "delay_us", arg: 2, scope: !3022, file: !118, line: 103, type: !13)
!3028 = !DILocation(line: 102, column: 68, scope: !3022)
!3029 = !DILocation(line: 103, column: 22, scope: !3022)
!3030 = !DILocation(line: 105, column: 32, scope: !3022)
!3031 = !DILocation(line: 105, column: 41, scope: !3022)
!3032 = !DILocation(line: 105, column: 2, scope: !3022)
!3033 = !DILocation(line: 105, column: 14, scope: !3022)
!3034 = !DILocation(line: 105, column: 30, scope: !3022)
!3035 = !DILocation(line: 106, column: 1, scope: !3022)
!3036 = !DISubprogram(name: "mutex_unlock", scope: !544, file: !544, line: 246, type: !3019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3037 = distinct !DISubprogram(name: "gov_update_cpu_data", scope: !2, file: !2, line: 95, type: !2809, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3038)
!3038 = !{!3039, !3040, !3041, !3044, !3047, !3051, !3054, !3056, !3060, !3062}
!3039 = !DILocalVariable(name: "dbs_data", arg: 1, scope: !3037, file: !2, line: 95, type: !2774)
!3040 = !DILocalVariable(name: "policy_dbs", scope: !3037, file: !2, line: 97, type: !116)
!3041 = !DILocalVariable(name: "__mptr", scope: !3042, file: !2, line: 99, type: !115)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !2, line: 99, column: 2)
!3043 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 99, column: 2)
!3044 = !DILocalVariable(name: "j", scope: !3045, file: !2, line: 100, type: !13)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 99, column: 73)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !2, line: 99, column: 2)
!3047 = !DILocalVariable(name: "j_cdbs", scope: !3048, file: !2, line: 103, type: !2823)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !2, line: 102, column: 45)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !2, line: 102, column: 3)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !2, line: 102, column: 3)
!3051 = !DILocalVariable(name: "__vpp_verify", scope: !3052, file: !2, line: 103, type: !564)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 103, column: 35)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 103, column: 35)
!3054 = !DILocalVariable(name: "__ptr", scope: !3055, file: !2, line: 103, type: !132)
!3055 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 103, column: 35)
!3056 = !DILocalVariable(name: "__vpp_verify", scope: !3057, file: !2, line: 108, type: !564)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !2, line: 108, column: 45)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 108, column: 45)
!3059 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 107, column: 8)
!3060 = !DILocalVariable(name: "__ptr", scope: !3061, file: !2, line: 108, type: !132)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !2, line: 108, column: 45)
!3062 = !DILocalVariable(name: "__mptr", scope: !3063, file: !2, line: 99, type: !115)
!3063 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 99, column: 2)
!3064 = !DILocation(line: 95, column: 43, scope: !3037)
!3065 = !DILocation(line: 97, column: 2, scope: !3037)
!3066 = !DILocation(line: 97, column: 26, scope: !3037)
!3067 = !DILocation(line: 99, column: 2, scope: !3042)
!3068 = !DILocation(line: 99, column: 2, scope: !3043)
!3069 = !DILocation(line: 99, column: 2, scope: !3046)
!3070 = !DILocation(line: 100, column: 3, scope: !3045)
!3071 = !DILocation(line: 100, column: 16, scope: !3045)
!3072 = !DILocation(line: 102, column: 3, scope: !3050)
!3073 = !DILocation(line: 102, column: 3, scope: !3049)
!3074 = !DILocation(line: 103, column: 4, scope: !3048)
!3075 = !DILocation(line: 103, column: 25, scope: !3048)
!3076 = !DILocation(line: 103, column: 35, scope: !3053)
!3077 = !DILocation(line: 103, column: 35, scope: !3052)
!3078 = !DILocation(line: 103, column: 35, scope: !3055)
!3079 = !DILocation(line: 105, column: 46, scope: !3048)
!3080 = !DILocation(line: 105, column: 50, scope: !3048)
!3081 = !DILocation(line: 105, column: 58, scope: !3048)
!3082 = !DILocation(line: 106, column: 11, scope: !3048)
!3083 = !DILocation(line: 106, column: 21, scope: !3048)
!3084 = !DILocation(line: 105, column: 28, scope: !3048)
!3085 = !DILocation(line: 105, column: 4, scope: !3048)
!3086 = !DILocation(line: 105, column: 12, scope: !3048)
!3087 = !DILocation(line: 105, column: 26, scope: !3048)
!3088 = !DILocation(line: 107, column: 8, scope: !3059)
!3089 = !DILocation(line: 107, column: 18, scope: !3059)
!3090 = !DILocation(line: 107, column: 8, scope: !3048)
!3091 = !DILocation(line: 108, column: 45, scope: !3058)
!3092 = !DILocation(line: 108, column: 45, scope: !3057)
!3093 = !DILocation(line: 108, column: 45, scope: !3061)
!3094 = !DILocation(line: 108, column: 76, scope: !3059)
!3095 = !DILocation(line: 108, column: 29, scope: !3059)
!3096 = !DILocation(line: 108, column: 5, scope: !3059)
!3097 = !DILocation(line: 108, column: 13, scope: !3059)
!3098 = !DILocation(line: 108, column: 27, scope: !3059)
!3099 = !DILocation(line: 109, column: 3, scope: !3049)
!3100 = !DILocation(line: 109, column: 3, scope: !3048)
!3101 = distinct !{!3101, !3072, !3102, !2998, !2999}
!3102 = !DILocation(line: 109, column: 3, scope: !3050)
!3103 = !DILocation(line: 110, column: 2, scope: !3046)
!3104 = !DILocation(line: 110, column: 2, scope: !3045)
!3105 = !DILocation(line: 99, column: 2, scope: !3063)
!3106 = distinct !{!3106, !3068, !3107, !2998, !2999}
!3107 = !DILocation(line: 110, column: 2, scope: !3043)
!3108 = !DILocation(line: 111, column: 1, scope: !3037)
!3109 = distinct !DISubprogram(name: "find_next_bit", scope: !3110, file: !3110, line: 54, type: !3111, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3115)
!3110 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!132, !3113, !132, !132}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DILocalVariable(name: "addr", arg: 1, scope: !3109, file: !3110, line: 54, type: !3113)
!3117 = !DILocalVariable(name: "size", arg: 2, scope: !3109, file: !3110, line: 54, type: !132)
!3118 = !DILocalVariable(name: "offset", arg: 3, scope: !3109, file: !3110, line: 55, type: !132)
!3119 = !DILocalVariable(name: "val", scope: !3120, file: !3110, line: 58, type: !132)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !3110, line: 57, column: 31)
!3121 = distinct !DILexicalBlock(scope: !3109, file: !3110, line: 57, column: 6)
!3122 = !DILocation(line: 54, column: 50, scope: !3109)
!3123 = !DILocation(line: 54, column: 70, scope: !3109)
!3124 = !DILocation(line: 55, column: 22, scope: !3109)
!3125 = !DILocation(line: 57, column: 6, scope: !3121)
!3126 = !DILocation(line: 57, column: 6, scope: !3109)
!3127 = !DILocation(line: 58, column: 3, scope: !3120)
!3128 = !DILocation(line: 58, column: 17, scope: !3120)
!3129 = !DILocation(line: 60, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3120, file: !3110, line: 60, column: 7)
!3131 = !DILocation(line: 60, column: 7, scope: !3120)
!3132 = !DILocation(line: 61, column: 11, scope: !3130)
!3133 = !DILocation(line: 61, column: 4, scope: !3130)
!3134 = !DILocation(line: 63, column: 10, scope: !3120)
!3135 = !DILocation(line: 63, column: 9, scope: !3120)
!3136 = !DILocation(line: 63, column: 17, scope: !3120)
!3137 = !DILocation(line: 63, column: 15, scope: !3120)
!3138 = !DILocation(line: 63, column: 7, scope: !3120)
!3139 = !DILocation(line: 64, column: 10, scope: !3120)
!3140 = !DILocation(line: 64, column: 16, scope: !3120)
!3141 = !DILocation(line: 64, column: 29, scope: !3120)
!3142 = !DILocation(line: 64, column: 3, scope: !3120)
!3143 = !DILocation(line: 65, column: 2, scope: !3121)
!3144 = !DILocation(line: 67, column: 24, scope: !3109)
!3145 = !DILocation(line: 67, column: 30, scope: !3109)
!3146 = !DILocation(line: 67, column: 36, scope: !3109)
!3147 = !DILocation(line: 67, column: 9, scope: !3109)
!3148 = !DILocation(line: 67, column: 2, scope: !3109)
!3149 = !DILocation(line: 68, column: 1, scope: !3109)
!3150 = !DISubprogram(name: "get_cpu_idle_time", scope: !29, file: !29, line: 230, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!449, !13, !3153, !167}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!3154 = distinct !DISubprogram(name: "kcpustat_field", scope: !60, file: !60, line: 100, type: !3155, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!449, !2840, !59, !167}
!3157 = !{!3158, !3159, !3160}
!3158 = !DILocalVariable(name: "kcpustat", arg: 1, scope: !3154, file: !60, line: 100, type: !2840)
!3159 = !DILocalVariable(name: "usage", arg: 2, scope: !3154, file: !60, line: 101, type: !59)
!3160 = !DILocalVariable(name: "cpu", arg: 3, scope: !3154, file: !60, line: 101, type: !167)
!3161 = !DILocation(line: 100, column: 57, scope: !3154)
!3162 = !DILocation(line: 101, column: 26, scope: !3154)
!3163 = !DILocation(line: 101, column: 37, scope: !3154)
!3164 = !DILocation(line: 103, column: 9, scope: !3154)
!3165 = !DILocation(line: 103, column: 19, scope: !3154)
!3166 = !DILocation(line: 103, column: 27, scope: !3154)
!3167 = !DILocation(line: 103, column: 2, scope: !3154)
!3168 = distinct !DISubprogram(name: "dbs_update", scope: !2, file: !2, line: 114, type: !2793, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3183, !3186, !3188, !3189, !3190, !3191, !3192, !3193, !3196, !3199, !3201}
!3170 = !DILocalVariable(name: "policy", arg: 1, scope: !3168, file: !2, line: 114, type: !121)
!3171 = !DILocalVariable(name: "policy_dbs", scope: !3168, file: !2, line: 116, type: !116)
!3172 = !DILocalVariable(name: "dbs_data", scope: !3168, file: !2, line: 117, type: !2774)
!3173 = !DILocalVariable(name: "ignore_nice", scope: !3168, file: !2, line: 118, type: !13)
!3174 = !DILocalVariable(name: "max_load", scope: !3168, file: !2, line: 119, type: !13)
!3175 = !DILocalVariable(name: "idle_periods", scope: !3168, file: !2, line: 119, type: !13)
!3176 = !DILocalVariable(name: "sampling_rate", scope: !3168, file: !2, line: 120, type: !13)
!3177 = !DILocalVariable(name: "io_busy", scope: !3168, file: !2, line: 120, type: !13)
!3178 = !DILocalVariable(name: "j", scope: !3168, file: !2, line: 120, type: !13)
!3179 = !DILocalVariable(name: "j_cdbs", scope: !3180, file: !2, line: 138, type: !2823)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !2, line: 137, column: 32)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 137, column: 2)
!3182 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 137, column: 2)
!3183 = !DILocalVariable(name: "__vpp_verify", scope: !3184, file: !2, line: 138, type: !564)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !2, line: 138, column: 34)
!3185 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 138, column: 34)
!3186 = !DILocalVariable(name: "__ptr", scope: !3187, file: !2, line: 138, type: !132)
!3187 = distinct !DILexicalBlock(scope: !3185, file: !2, line: 138, column: 34)
!3188 = !DILocalVariable(name: "update_time", scope: !3180, file: !2, line: 139, type: !449)
!3189 = !DILocalVariable(name: "cur_idle_time", scope: !3180, file: !2, line: 139, type: !449)
!3190 = !DILocalVariable(name: "idle_time", scope: !3180, file: !2, line: 140, type: !13)
!3191 = !DILocalVariable(name: "time_elapsed", scope: !3180, file: !2, line: 140, type: !13)
!3192 = !DILocalVariable(name: "load", scope: !3180, file: !2, line: 141, type: !13)
!3193 = !DILocalVariable(name: "cur_nice", scope: !3194, file: !2, line: 152, type: !449)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 151, column: 20)
!3195 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 151, column: 7)
!3196 = !DILocalVariable(name: "__vpp_verify", scope: !3197, file: !2, line: 152, type: !564)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 152, column: 35)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !2, line: 152, column: 35)
!3199 = !DILocalVariable(name: "__ptr", scope: !3200, file: !2, line: 152, type: !132)
!3200 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 152, column: 35)
!3201 = !DILocalVariable(name: "periods", scope: !3202, file: !2, line: 216, type: !13)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !2, line: 215, column: 53)
!3203 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 215, column: 7)
!3204 = !DILocation(line: 114, column: 48, scope: !3168)
!3205 = !DILocation(line: 116, column: 2, scope: !3168)
!3206 = !DILocation(line: 116, column: 26, scope: !3168)
!3207 = !DILocation(line: 116, column: 39, scope: !3168)
!3208 = !DILocation(line: 116, column: 47, scope: !3168)
!3209 = !DILocation(line: 117, column: 2, scope: !3168)
!3210 = !DILocation(line: 117, column: 19, scope: !3168)
!3211 = !DILocation(line: 117, column: 30, scope: !3168)
!3212 = !DILocation(line: 117, column: 42, scope: !3168)
!3213 = !DILocation(line: 118, column: 2, scope: !3168)
!3214 = !DILocation(line: 118, column: 15, scope: !3168)
!3215 = !DILocation(line: 118, column: 29, scope: !3168)
!3216 = !DILocation(line: 118, column: 39, scope: !3168)
!3217 = !DILocation(line: 119, column: 2, scope: !3168)
!3218 = !DILocation(line: 119, column: 15, scope: !3168)
!3219 = !DILocation(line: 119, column: 29, scope: !3168)
!3220 = !DILocation(line: 120, column: 2, scope: !3168)
!3221 = !DILocation(line: 120, column: 15, scope: !3168)
!3222 = !DILocation(line: 120, column: 30, scope: !3168)
!3223 = !DILocation(line: 120, column: 39, scope: !3168)
!3224 = !DILocation(line: 128, column: 18, scope: !3168)
!3225 = !DILocation(line: 128, column: 28, scope: !3168)
!3226 = !DILocation(line: 128, column: 44, scope: !3168)
!3227 = !DILocation(line: 128, column: 56, scope: !3168)
!3228 = !DILocation(line: 128, column: 42, scope: !3168)
!3229 = !DILocation(line: 128, column: 16, scope: !3168)
!3230 = !DILocation(line: 134, column: 12, scope: !3168)
!3231 = !DILocation(line: 134, column: 22, scope: !3168)
!3232 = !DILocation(line: 134, column: 10, scope: !3168)
!3233 = !DILocation(line: 137, column: 2, scope: !3182)
!3234 = !DILocation(line: 137, column: 2, scope: !3181)
!3235 = !DILocation(line: 138, column: 3, scope: !3180)
!3236 = !DILocation(line: 138, column: 24, scope: !3180)
!3237 = !DILocation(line: 138, column: 34, scope: !3185)
!3238 = !DILocation(line: 138, column: 34, scope: !3184)
!3239 = !DILocation(line: 138, column: 34, scope: !3187)
!3240 = !DILocation(line: 139, column: 3, scope: !3180)
!3241 = !DILocation(line: 139, column: 7, scope: !3180)
!3242 = !DILocation(line: 139, column: 20, scope: !3180)
!3243 = !DILocation(line: 140, column: 3, scope: !3180)
!3244 = !DILocation(line: 140, column: 16, scope: !3180)
!3245 = !DILocation(line: 140, column: 27, scope: !3180)
!3246 = !DILocation(line: 141, column: 3, scope: !3180)
!3247 = !DILocation(line: 141, column: 16, scope: !3180)
!3248 = !DILocation(line: 143, column: 37, scope: !3180)
!3249 = !DILocation(line: 143, column: 54, scope: !3180)
!3250 = !DILocation(line: 143, column: 19, scope: !3180)
!3251 = !DILocation(line: 143, column: 17, scope: !3180)
!3252 = !DILocation(line: 145, column: 18, scope: !3180)
!3253 = !DILocation(line: 145, column: 32, scope: !3180)
!3254 = !DILocation(line: 145, column: 40, scope: !3180)
!3255 = !DILocation(line: 145, column: 30, scope: !3180)
!3256 = !DILocation(line: 145, column: 16, scope: !3180)
!3257 = !DILocation(line: 146, column: 30, scope: !3180)
!3258 = !DILocation(line: 146, column: 3, scope: !3180)
!3259 = !DILocation(line: 146, column: 11, scope: !3180)
!3260 = !DILocation(line: 146, column: 28, scope: !3180)
!3261 = !DILocation(line: 148, column: 15, scope: !3180)
!3262 = !DILocation(line: 148, column: 31, scope: !3180)
!3263 = !DILocation(line: 148, column: 39, scope: !3180)
!3264 = !DILocation(line: 148, column: 29, scope: !3180)
!3265 = !DILocation(line: 148, column: 13, scope: !3180)
!3266 = !DILocation(line: 149, column: 27, scope: !3180)
!3267 = !DILocation(line: 149, column: 3, scope: !3180)
!3268 = !DILocation(line: 149, column: 11, scope: !3180)
!3269 = !DILocation(line: 149, column: 25, scope: !3180)
!3270 = !DILocation(line: 151, column: 7, scope: !3195)
!3271 = !DILocation(line: 151, column: 7, scope: !3180)
!3272 = !DILocation(line: 152, column: 4, scope: !3194)
!3273 = !DILocation(line: 152, column: 8, scope: !3194)
!3274 = !DILocation(line: 152, column: 35, scope: !3198)
!3275 = !DILocation(line: 152, column: 35, scope: !3197)
!3276 = !DILocation(line: 152, column: 35, scope: !3200)
!3277 = !DILocation(line: 152, column: 66, scope: !3194)
!3278 = !DILocation(line: 152, column: 19, scope: !3194)
!3279 = !DILocation(line: 154, column: 25, scope: !3194)
!3280 = !DILocation(line: 154, column: 36, scope: !3194)
!3281 = !DILocation(line: 154, column: 44, scope: !3194)
!3282 = !DILocation(line: 154, column: 34, scope: !3194)
!3283 = !DILocation(line: 154, column: 17, scope: !3194)
!3284 = !DILocation(line: 154, column: 14, scope: !3194)
!3285 = !DILocation(line: 155, column: 28, scope: !3194)
!3286 = !DILocation(line: 155, column: 4, scope: !3194)
!3287 = !DILocation(line: 155, column: 12, scope: !3194)
!3288 = !DILocation(line: 155, column: 26, scope: !3194)
!3289 = !DILocation(line: 156, column: 3, scope: !3195)
!3290 = !DILocation(line: 156, column: 3, scope: !3194)
!3291 = !DILocation(line: 158, column: 7, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 158, column: 7)
!3293 = !DILocation(line: 158, column: 7, scope: !3180)
!3294 = !DILocation(line: 164, column: 11, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !2, line: 158, column: 32)
!3296 = !DILocation(line: 164, column: 19, scope: !3295)
!3297 = !DILocation(line: 164, column: 9, scope: !3295)
!3298 = !DILocation(line: 165, column: 3, scope: !3295)
!3299 = !DILocation(line: 165, column: 14, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3292, file: !2, line: 165, column: 14)
!3301 = !DILocation(line: 0, scope: !3300)
!3302 = !DILocation(line: 165, column: 14, scope: !3292)
!3303 = !DILocation(line: 189, column: 11, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3300, file: !2, line: 166, column: 29)
!3305 = !DILocation(line: 189, column: 19, scope: !3304)
!3306 = !DILocation(line: 189, column: 9, scope: !3304)
!3307 = !DILocation(line: 190, column: 4, scope: !3304)
!3308 = !DILocation(line: 190, column: 12, scope: !3304)
!3309 = !DILocation(line: 190, column: 22, scope: !3304)
!3310 = !DILocation(line: 191, column: 3, scope: !3304)
!3311 = !DILocation(line: 192, column: 8, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !2, line: 192, column: 8)
!3313 = distinct !DILexicalBlock(scope: !3300, file: !2, line: 191, column: 10)
!3314 = !DILocation(line: 192, column: 24, scope: !3312)
!3315 = !DILocation(line: 192, column: 21, scope: !3312)
!3316 = !DILocation(line: 192, column: 8, scope: !3313)
!3317 = !DILocation(line: 193, column: 19, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3312, file: !2, line: 192, column: 35)
!3319 = !DILocation(line: 193, column: 34, scope: !3318)
!3320 = !DILocation(line: 193, column: 32, scope: !3318)
!3321 = !DILocation(line: 193, column: 16, scope: !3318)
!3322 = !DILocation(line: 193, column: 47, scope: !3318)
!3323 = !DILocation(line: 193, column: 45, scope: !3318)
!3324 = !DILocation(line: 193, column: 10, scope: !3318)
!3325 = !DILocation(line: 194, column: 4, scope: !3318)
!3326 = !DILocation(line: 210, column: 17, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3312, file: !2, line: 194, column: 11)
!3328 = !DILocation(line: 210, column: 27, scope: !3327)
!3329 = !DILocation(line: 210, column: 12, scope: !3327)
!3330 = !DILocation(line: 210, column: 10, scope: !3327)
!3331 = !DILocation(line: 212, column: 24, scope: !3313)
!3332 = !DILocation(line: 212, column: 4, scope: !3313)
!3333 = !DILocation(line: 212, column: 12, scope: !3313)
!3334 = !DILocation(line: 212, column: 22, scope: !3313)
!3335 = !DILocation(line: 215, column: 7, scope: !3203)
!3336 = !DILocation(line: 215, column: 7, scope: !3180)
!3337 = !DILocation(line: 216, column: 4, scope: !3202)
!3338 = !DILocation(line: 216, column: 17, scope: !3202)
!3339 = !DILocation(line: 216, column: 27, scope: !3202)
!3340 = !DILocation(line: 216, column: 39, scope: !3202)
!3341 = !DILocation(line: 216, column: 37, scope: !3202)
!3342 = !DILocation(line: 218, column: 8, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3202, file: !2, line: 218, column: 8)
!3344 = !DILocation(line: 218, column: 18, scope: !3343)
!3345 = !DILocation(line: 218, column: 16, scope: !3343)
!3346 = !DILocation(line: 218, column: 8, scope: !3202)
!3347 = !DILocation(line: 219, column: 20, scope: !3343)
!3348 = !DILocation(line: 219, column: 18, scope: !3343)
!3349 = !DILocation(line: 219, column: 5, scope: !3343)
!3350 = !DILocation(line: 220, column: 3, scope: !3203)
!3351 = !DILocation(line: 220, column: 3, scope: !3202)
!3352 = !DILocation(line: 222, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 222, column: 7)
!3354 = !DILocation(line: 222, column: 14, scope: !3353)
!3355 = !DILocation(line: 222, column: 12, scope: !3353)
!3356 = !DILocation(line: 222, column: 7, scope: !3180)
!3357 = !DILocation(line: 223, column: 15, scope: !3353)
!3358 = !DILocation(line: 223, column: 13, scope: !3353)
!3359 = !DILocation(line: 223, column: 4, scope: !3353)
!3360 = !DILocation(line: 224, column: 2, scope: !3181)
!3361 = !DILocation(line: 224, column: 2, scope: !3180)
!3362 = distinct !{!3362, !3233, !3363, !2998, !2999}
!3363 = !DILocation(line: 224, column: 2, scope: !3182)
!3364 = !DILocation(line: 226, column: 29, scope: !3168)
!3365 = !DILocation(line: 226, column: 2, scope: !3168)
!3366 = !DILocation(line: 226, column: 14, scope: !3168)
!3367 = !DILocation(line: 226, column: 27, scope: !3168)
!3368 = !DILocation(line: 228, column: 9, scope: !3168)
!3369 = !DILocation(line: 229, column: 1, scope: !3168)
!3370 = !DILocation(line: 228, column: 2, scope: !3168)
!3371 = distinct !DISubprogram(name: "div_u64", scope: !3372, file: !3372, line: 127, type: !3373, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3375)
!3372 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!449, !449, !1130}
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "dividend", arg: 1, scope: !3371, file: !3372, line: 127, type: !449)
!3377 = !DILocalVariable(name: "divisor", arg: 2, scope: !3371, file: !3372, line: 127, type: !1130)
!3378 = !DILocalVariable(name: "remainder", scope: !3371, file: !3372, line: 129, type: !1130)
!3379 = !DILocation(line: 127, column: 31, scope: !3371)
!3380 = !DILocation(line: 127, column: 45, scope: !3371)
!3381 = !DILocation(line: 129, column: 2, scope: !3371)
!3382 = !DILocation(line: 129, column: 6, scope: !3371)
!3383 = !DILocation(line: 130, column: 21, scope: !3371)
!3384 = !DILocation(line: 130, column: 31, scope: !3371)
!3385 = !DILocation(line: 130, column: 9, scope: !3371)
!3386 = !DILocation(line: 131, column: 1, scope: !3371)
!3387 = !DILocation(line: 130, column: 2, scope: !3371)
!3388 = distinct !DISubprogram(name: "cpufreq_dbs_governor_init", scope: !2, file: !2, line: 400, type: !165, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3400, !3403, !3405, !3406, !3407, !3408}
!3390 = !DILocalVariable(name: "policy", arg: 1, scope: !3388, file: !2, line: 400, type: !121)
!3391 = !DILocalVariable(name: "gov", scope: !3388, file: !2, line: 402, type: !2785)
!3392 = !DILocalVariable(name: "dbs_data", scope: !3388, file: !2, line: 403, type: !2774)
!3393 = !DILocalVariable(name: "policy_dbs", scope: !3388, file: !2, line: 404, type: !116)
!3394 = !DILocalVariable(name: "ret", scope: !3388, file: !2, line: 405, type: !167)
!3395 = !DILocalVariable(name: "__ret_warn_on", scope: !3396, file: !2, line: 420, type: !167)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !2, line: 420, column: 7)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 420, column: 7)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !2, line: 419, column: 16)
!3399 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 419, column: 6)
!3400 = !DILocalVariable(name: "__flags", scope: !3401, file: !2, line: 420, type: !167)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !2, line: 420, column: 7)
!3402 = distinct !DILexicalBlock(scope: !3396, file: !2, line: 420, column: 7)
!3403 = !DILocalVariable(name: "__UNIQUE_ID___x268", scope: !3404, file: !2, line: 449, type: !13)
!3404 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 449, column: 28)
!3405 = !DILocalVariable(name: "__UNIQUE_ID___y269", scope: !3404, file: !2, line: 449, type: !13)
!3406 = !DILabel(scope: !3388, name: "free_dbs_data", file: !2, line: 478)
!3407 = !DILabel(scope: !3388, name: "free_policy_dbs_info", file: !2, line: 481)
!3408 = !DILabel(scope: !3388, name: "out", file: !2, line: 484)
!3409 = !DILocation(line: 400, column: 54, scope: !3388)
!3410 = !DILocation(line: 402, column: 2, scope: !3388)
!3411 = !DILocation(line: 402, column: 23, scope: !3388)
!3412 = !DILocation(line: 402, column: 45, scope: !3388)
!3413 = !DILocation(line: 402, column: 29, scope: !3388)
!3414 = !DILocation(line: 403, column: 2, scope: !3388)
!3415 = !DILocation(line: 403, column: 19, scope: !3388)
!3416 = !DILocation(line: 404, column: 2, scope: !3388)
!3417 = !DILocation(line: 404, column: 26, scope: !3388)
!3418 = !DILocation(line: 405, column: 2, scope: !3388)
!3419 = !DILocation(line: 405, column: 6, scope: !3388)
!3420 = !DILocation(line: 408, column: 6, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 408, column: 6)
!3422 = !DILocation(line: 408, column: 14, scope: !3421)
!3423 = !DILocation(line: 408, column: 6, scope: !3388)
!3424 = !DILocation(line: 409, column: 3, scope: !3421)
!3425 = !DILocation(line: 411, column: 37, scope: !3388)
!3426 = !DILocation(line: 411, column: 45, scope: !3388)
!3427 = !DILocation(line: 411, column: 15, scope: !3388)
!3428 = !DILocation(line: 411, column: 13, scope: !3388)
!3429 = !DILocation(line: 412, column: 7, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 412, column: 6)
!3431 = !DILocation(line: 412, column: 6, scope: !3388)
!3432 = !DILocation(line: 413, column: 3, scope: !3430)
!3433 = !DILocation(line: 416, column: 2, scope: !3388)
!3434 = !DILocation(line: 418, column: 13, scope: !3388)
!3435 = !DILocation(line: 418, column: 18, scope: !3388)
!3436 = !DILocation(line: 418, column: 11, scope: !3388)
!3437 = !DILocation(line: 419, column: 6, scope: !3399)
!3438 = !DILocation(line: 419, column: 6, scope: !3388)
!3439 = !DILocation(line: 420, column: 7, scope: !3396)
!3440 = !DILocation(line: 420, column: 7, scope: !3402)
!3441 = !DILocation(line: 420, column: 7, scope: !3401)
!3442 = !DILocation(line: 420, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 420, column: 7)
!3444 = !DILocation(line: 420, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 420, column: 7)
!3446 = !{i64 2154042718, i64 2154042747, i64 2154042793, i64 2154042851, i64 2154042905, i64 2154042959, i64 2154043014, i64 2154043045, i64 2154043353, i64 2154043359, i64 2154043406, i64 2154043429, i64 2154043455}
!3447 = !DILocation(line: 420, column: 7, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 420, column: 7)
!3449 = !DILocation(line: 420, column: 7, scope: !3397)
!3450 = !DILocation(line: 420, column: 7, scope: !3398)
!3451 = !DILocation(line: 421, column: 8, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3397, file: !2, line: 420, column: 44)
!3453 = !DILocation(line: 422, column: 4, scope: !3452)
!3454 = !DILocation(line: 424, column: 26, scope: !3398)
!3455 = !DILocation(line: 424, column: 3, scope: !3398)
!3456 = !DILocation(line: 424, column: 15, scope: !3398)
!3457 = !DILocation(line: 424, column: 24, scope: !3398)
!3458 = !DILocation(line: 425, column: 27, scope: !3398)
!3459 = !DILocation(line: 425, column: 3, scope: !3398)
!3460 = !DILocation(line: 425, column: 11, scope: !3398)
!3461 = !DILocation(line: 425, column: 25, scope: !3398)
!3462 = !DILocation(line: 427, column: 21, scope: !3398)
!3463 = !DILocation(line: 427, column: 31, scope: !3398)
!3464 = !DILocation(line: 427, column: 42, scope: !3398)
!3465 = !DILocation(line: 427, column: 54, scope: !3398)
!3466 = !DILocation(line: 427, column: 3, scope: !3398)
!3467 = !DILocation(line: 428, column: 3, scope: !3398)
!3468 = !DILocation(line: 431, column: 13, scope: !3388)
!3469 = !DILocation(line: 431, column: 11, scope: !3388)
!3470 = !DILocation(line: 432, column: 7, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 432, column: 6)
!3472 = !DILocation(line: 432, column: 6, scope: !3388)
!3473 = !DILocation(line: 433, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3471, file: !2, line: 432, column: 17)
!3475 = !DILocation(line: 434, column: 3, scope: !3474)
!3476 = !DILocation(line: 437, column: 18, scope: !3388)
!3477 = !DILocation(line: 437, column: 2, scope: !3388)
!3478 = !DILocation(line: 437, column: 12, scope: !3388)
!3479 = !DILocation(line: 437, column: 16, scope: !3388)
!3480 = !DILocation(line: 438, column: 21, scope: !3388)
!3481 = !DILocation(line: 438, column: 31, scope: !3388)
!3482 = !DILocation(line: 438, column: 42, scope: !3388)
!3483 = !DILocation(line: 438, column: 54, scope: !3388)
!3484 = !DILocation(line: 438, column: 2, scope: !3388)
!3485 = !DILocation(line: 440, column: 8, scope: !3388)
!3486 = !DILocation(line: 440, column: 13, scope: !3388)
!3487 = !DILocation(line: 440, column: 18, scope: !3388)
!3488 = !DILocation(line: 440, column: 6, scope: !3388)
!3489 = !DILocation(line: 441, column: 6, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 441, column: 6)
!3491 = !DILocation(line: 441, column: 6, scope: !3388)
!3492 = !DILocation(line: 442, column: 3, scope: !3490)
!3493 = !DILocation(line: 449, column: 28, scope: !3404)
!3494 = !DILocation(line: 449, column: 28, scope: !3388)
!3495 = !DILocation(line: 449, column: 2, scope: !3388)
!3496 = !DILocation(line: 449, column: 12, scope: !3388)
!3497 = !DILocation(line: 449, column: 26, scope: !3388)
!3498 = !DILocation(line: 453, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 453, column: 6)
!3500 = !DILocation(line: 453, column: 6, scope: !3388)
!3501 = !DILocation(line: 454, column: 20, scope: !3499)
!3502 = !DILocation(line: 454, column: 3, scope: !3499)
!3503 = !DILocation(line: 454, column: 8, scope: !3499)
!3504 = !DILocation(line: 454, column: 18, scope: !3499)
!3505 = !DILocation(line: 456, column: 25, scope: !3388)
!3506 = !DILocation(line: 456, column: 2, scope: !3388)
!3507 = !DILocation(line: 456, column: 14, scope: !3388)
!3508 = !DILocation(line: 456, column: 23, scope: !3388)
!3509 = !DILocation(line: 457, column: 26, scope: !3388)
!3510 = !DILocation(line: 457, column: 2, scope: !3388)
!3511 = !DILocation(line: 457, column: 10, scope: !3388)
!3512 = !DILocation(line: 457, column: 24, scope: !3388)
!3513 = !DILocation(line: 459, column: 2, scope: !3388)
!3514 = !DILocation(line: 459, column: 7, scope: !3388)
!3515 = !DILocation(line: 459, column: 17, scope: !3388)
!3516 = !DILocation(line: 459, column: 27, scope: !3388)
!3517 = !DILocation(line: 460, column: 2, scope: !3388)
!3518 = !DILocation(line: 460, column: 7, scope: !3388)
!3519 = !DILocation(line: 460, column: 17, scope: !3388)
!3520 = !DILocation(line: 460, column: 25, scope: !3388)
!3521 = !DILocation(line: 461, column: 30, scope: !3388)
!3522 = !DILocation(line: 461, column: 40, scope: !3388)
!3523 = !DILocation(line: 461, column: 49, scope: !3388)
!3524 = !DILocation(line: 461, column: 56, scope: !3388)
!3525 = !DILocation(line: 461, column: 61, scope: !3388)
!3526 = !DILocation(line: 462, column: 33, scope: !3388)
!3527 = !DILocation(line: 462, column: 8, scope: !3388)
!3528 = !DILocation(line: 463, column: 14, scope: !3388)
!3529 = !DILocation(line: 463, column: 19, scope: !3388)
!3530 = !DILocation(line: 463, column: 23, scope: !3388)
!3531 = !DILocation(line: 461, column: 8, scope: !3388)
!3532 = !DILocation(line: 461, column: 6, scope: !3388)
!3533 = !DILocation(line: 464, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 464, column: 6)
!3535 = !DILocation(line: 464, column: 6, scope: !3388)
!3536 = !DILocation(line: 465, column: 3, scope: !3534)
!3537 = !DILocation(line: 468, column: 2, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 468, column: 2)
!3539 = !DILocation(line: 468, column: 2, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3538, file: !2, line: 468, column: 2)
!3541 = !DILocation(line: 470, column: 15, scope: !3388)
!3542 = !DILocation(line: 470, column: 25, scope: !3388)
!3543 = !DILocation(line: 470, column: 34, scope: !3388)
!3544 = !DILocation(line: 470, column: 2, scope: !3388)
!3545 = !DILocation(line: 472, column: 2, scope: !3388)
!3546 = !DILocation(line: 472, column: 10, scope: !3388)
!3547 = !DILocation(line: 472, column: 24, scope: !3388)
!3548 = !DILocation(line: 474, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 474, column: 6)
!3550 = !DILocation(line: 474, column: 6, scope: !3388)
!3551 = !DILocation(line: 475, column: 3, scope: !3549)
!3552 = !DILocation(line: 475, column: 8, scope: !3549)
!3553 = !DILocation(line: 475, column: 18, scope: !3549)
!3554 = !DILocation(line: 476, column: 2, scope: !3388)
!3555 = !DILocation(line: 476, column: 7, scope: !3388)
!3556 = !DILocation(line: 476, column: 12, scope: !3388)
!3557 = !DILocation(line: 478, column: 1, scope: !3388)
!3558 = !DILocation(line: 479, column: 8, scope: !3388)
!3559 = !DILocation(line: 479, column: 2, scope: !3388)
!3560 = !DILocation(line: 481, column: 1, scope: !3388)
!3561 = !DILocation(line: 482, column: 23, scope: !3388)
!3562 = !DILocation(line: 482, column: 35, scope: !3388)
!3563 = !DILocation(line: 482, column: 2, scope: !3388)
!3564 = !DILocation(line: 484, column: 1, scope: !3388)
!3565 = !DILocation(line: 485, column: 2, scope: !3388)
!3566 = !DILocation(line: 486, column: 9, scope: !3388)
!3567 = !DILocation(line: 486, column: 2, scope: !3388)
!3568 = !DILocation(line: 487, column: 1, scope: !3388)
!3569 = distinct !DISubprogram(name: "dbs_governor_of", scope: !118, file: !118, line: 143, type: !3570, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!2785, !121}
!3572 = !{!3573, !3574}
!3573 = !DILocalVariable(name: "policy", arg: 1, scope: !3569, file: !118, line: 143, type: !121)
!3574 = !DILocalVariable(name: "__mptr", scope: !3575, file: !118, line: 145, type: !115)
!3575 = distinct !DILexicalBlock(scope: !3569, file: !118, line: 145, column: 9)
!3576 = !DILocation(line: 143, column: 75, scope: !3569)
!3577 = !DILocation(line: 145, column: 9, scope: !3575)
!3578 = !DILocation(line: 145, column: 9, scope: !3569)
!3579 = !DILocation(line: 145, column: 2, scope: !3569)
!3580 = !DILocation(line: 349, column: 77, scope: !2891)
!3581 = !DILocation(line: 350, column: 33, scope: !2891)
!3582 = !DILocation(line: 352, column: 2, scope: !2891)
!3583 = !DILocation(line: 352, column: 26, scope: !2891)
!3584 = !DILocation(line: 353, column: 2, scope: !2891)
!3585 = !DILocation(line: 353, column: 6, scope: !2891)
!3586 = !DILocation(line: 356, column: 15, scope: !2891)
!3587 = !DILocation(line: 356, column: 20, scope: !2891)
!3588 = !DILocation(line: 356, column: 13, scope: !2891)
!3589 = !DILocation(line: 357, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 357, column: 6)
!3591 = !DILocation(line: 357, column: 6, scope: !2891)
!3592 = !DILocation(line: 358, column: 3, scope: !3590)
!3593 = !DILocation(line: 360, column: 23, scope: !2891)
!3594 = !DILocation(line: 360, column: 2, scope: !2891)
!3595 = !DILocation(line: 360, column: 14, scope: !2891)
!3596 = !DILocation(line: 360, column: 21, scope: !2891)
!3597 = !DILocation(line: 361, column: 2, scope: !2891)
!3598 = !DILocation(line: 361, column: 2, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 361, column: 2)
!3600 = !DILocation(line: 362, column: 14, scope: !2891)
!3601 = !DILocation(line: 362, column: 26, scope: !2891)
!3602 = !DILocation(line: 362, column: 2, scope: !2891)
!3603 = !DILocation(line: 363, column: 17, scope: !2891)
!3604 = !DILocation(line: 363, column: 29, scope: !2891)
!3605 = !DILocation(line: 363, column: 2, scope: !2891)
!3606 = !DILocation(line: 364, column: 2, scope: !2891)
!3607 = !DILocation(line: 364, column: 2, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 364, column: 2)
!3609 = !DILocation(line: 364, column: 2, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3608, file: !2, line: 364, column: 2)
!3611 = !DILocation(line: 367, column: 2, scope: !2902)
!3612 = !DILocation(line: 367, column: 2, scope: !2901)
!3613 = !DILocation(line: 368, column: 3, scope: !2900)
!3614 = !DILocation(line: 368, column: 24, scope: !2900)
!3615 = !DILocation(line: 368, column: 34, scope: !2905)
!3616 = !DILocation(line: 368, column: 34, scope: !2904)
!3617 = !DILocation(line: 368, column: 34, scope: !2907)
!3618 = !DILocation(line: 370, column: 24, scope: !2900)
!3619 = !DILocation(line: 370, column: 3, scope: !2900)
!3620 = !DILocation(line: 370, column: 11, scope: !2900)
!3621 = !DILocation(line: 370, column: 22, scope: !2900)
!3622 = !DILocation(line: 371, column: 2, scope: !2901)
!3623 = !DILocation(line: 371, column: 2, scope: !2900)
!3624 = distinct !{!3624, !3611, !3625, !2998, !2999}
!3625 = !DILocation(line: 371, column: 2, scope: !2902)
!3626 = !DILocation(line: 372, column: 9, scope: !2891)
!3627 = !DILocation(line: 372, column: 2, scope: !2891)
!3628 = !DILocation(line: 373, column: 1, scope: !2891)
!3629 = !DISubprogram(name: "have_governor_per_policy", scope: !29, file: !29, line: 238, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3630 = !DISubprogram(name: "gov_attr_set_get", scope: !29, file: !29, line: 668, type: !3631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !2850, !194}
!3633 = distinct !DISubprogram(name: "kzalloc", scope: !105, file: !105, line: 719, type: !3634, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!115, !334, !2847}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "size", arg: 1, scope: !3633, file: !105, line: 719, type: !334)
!3638 = !DILocalVariable(name: "flags", arg: 2, scope: !3633, file: !105, line: 719, type: !2847)
!3639 = !DILocation(line: 719, column: 52, scope: !3633)
!3640 = !DILocation(line: 719, column: 64, scope: !3633)
!3641 = !DILocation(line: 721, column: 17, scope: !3633)
!3642 = !DILocation(line: 721, column: 23, scope: !3633)
!3643 = !DILocation(line: 721, column: 29, scope: !3633)
!3644 = !DILocation(line: 721, column: 9, scope: !3633)
!3645 = !DILocation(line: 721, column: 2, scope: !3633)
!3646 = !DISubprogram(name: "gov_attr_set_init", scope: !29, file: !29, line: 667, type: !3631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3647 = !DISubprogram(name: "cpufreq_policy_transition_delay_us", scope: !29, file: !29, line: 618, type: !2793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3648 = distinct !DISubprogram(name: "cpufreq_dbs_data_release", scope: !2, file: !2, line: 391, type: !312, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DILocalVariable(name: "kobj", arg: 1, scope: !3648, file: !2, line: 391, type: !218)
!3651 = !DILocalVariable(name: "dbs_data", scope: !3648, file: !2, line: 393, type: !2774)
!3652 = !DILocalVariable(name: "gov", scope: !3648, file: !2, line: 394, type: !2785)
!3653 = !DILocation(line: 391, column: 54, scope: !3648)
!3654 = !DILocation(line: 393, column: 2, scope: !3648)
!3655 = !DILocation(line: 393, column: 19, scope: !3648)
!3656 = !DILocation(line: 393, column: 58, scope: !3648)
!3657 = !DILocation(line: 393, column: 42, scope: !3648)
!3658 = !DILocation(line: 393, column: 30, scope: !3648)
!3659 = !DILocation(line: 394, column: 2, scope: !3648)
!3660 = !DILocation(line: 394, column: 23, scope: !3648)
!3661 = !DILocation(line: 394, column: 29, scope: !3648)
!3662 = !DILocation(line: 394, column: 39, scope: !3648)
!3663 = !DILocation(line: 396, column: 2, scope: !3648)
!3664 = !DILocation(line: 396, column: 7, scope: !3648)
!3665 = !DILocation(line: 396, column: 12, scope: !3648)
!3666 = !DILocation(line: 397, column: 8, scope: !3648)
!3667 = !DILocation(line: 397, column: 2, scope: !3648)
!3668 = !DILocation(line: 398, column: 1, scope: !3648)
!3669 = !DISubprogram(name: "kobject_init_and_add", scope: !211, file: !211, line: 96, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!167, !218, !306, !218, !214, null}
!3672 = !DISubprogram(name: "get_governor_parent_kobj", scope: !29, file: !29, line: 240, type: !3673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!218, !121}
!3675 = !DISubprogram(name: "_printk", scope: !3676, file: !3676, line: 153, type: !3677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3676 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!167, !214, null}
!3679 = !DISubprogram(name: "kobject_put", scope: !211, file: !211, line: 110, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3680 = !DISubprogram(name: "kfree", scope: !105, file: !105, line: 227, type: !3681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !564}
!3683 = distinct !DISubprogram(name: "free_policy_dbs_info", scope: !2, file: !2, line: 375, type: !3684, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !116, !2785}
!3686 = !{!3687, !3688, !3689, !3690, !3694, !3697}
!3687 = !DILocalVariable(name: "policy_dbs", arg: 1, scope: !3683, file: !2, line: 375, type: !116)
!3688 = !DILocalVariable(name: "gov", arg: 2, scope: !3683, file: !2, line: 376, type: !2785)
!3689 = !DILocalVariable(name: "j", scope: !3683, file: !2, line: 378, type: !167)
!3690 = !DILocalVariable(name: "j_cdbs", scope: !3691, file: !2, line: 383, type: !2823)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !2, line: 382, column: 52)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !2, line: 382, column: 2)
!3693 = distinct !DILexicalBlock(scope: !3683, file: !2, line: 382, column: 2)
!3694 = !DILocalVariable(name: "__vpp_verify", scope: !3695, file: !2, line: 383, type: !564)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 383, column: 34)
!3696 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 383, column: 34)
!3697 = !DILocalVariable(name: "__ptr", scope: !3698, file: !2, line: 383, type: !132)
!3698 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 383, column: 34)
!3699 = !DILocation(line: 375, column: 58, scope: !3683)
!3700 = !DILocation(line: 376, column: 27, scope: !3683)
!3701 = !DILocation(line: 378, column: 2, scope: !3683)
!3702 = !DILocation(line: 378, column: 6, scope: !3683)
!3703 = !DILocation(line: 380, column: 17, scope: !3683)
!3704 = !DILocation(line: 380, column: 29, scope: !3683)
!3705 = !DILocation(line: 380, column: 2, scope: !3683)
!3706 = !DILocation(line: 382, column: 2, scope: !3693)
!3707 = !DILocation(line: 382, column: 2, scope: !3692)
!3708 = !DILocation(line: 383, column: 3, scope: !3691)
!3709 = !DILocation(line: 383, column: 24, scope: !3691)
!3710 = !DILocation(line: 383, column: 34, scope: !3696)
!3711 = !DILocation(line: 383, column: 34, scope: !3695)
!3712 = !DILocation(line: 383, column: 34, scope: !3698)
!3713 = !DILocation(line: 385, column: 3, scope: !3691)
!3714 = !DILocation(line: 385, column: 11, scope: !3691)
!3715 = !DILocation(line: 385, column: 22, scope: !3691)
!3716 = !DILocation(line: 386, column: 3, scope: !3691)
!3717 = !DILocation(line: 386, column: 11, scope: !3691)
!3718 = !DILocation(line: 386, column: 23, scope: !3691)
!3719 = !DILocation(line: 386, column: 28, scope: !3691)
!3720 = !DILocation(line: 387, column: 2, scope: !3692)
!3721 = !DILocation(line: 387, column: 2, scope: !3691)
!3722 = distinct !{!3722, !3706, !3723, !2998, !2999}
!3723 = !DILocation(line: 387, column: 2, scope: !3693)
!3724 = !DILocation(line: 388, column: 2, scope: !3683)
!3725 = !DILocation(line: 388, column: 7, scope: !3683)
!3726 = !DILocation(line: 388, column: 12, scope: !3683)
!3727 = !DILocation(line: 389, column: 1, scope: !3683)
!3728 = distinct !DISubprogram(name: "cpufreq_dbs_governor_exit", scope: !2, file: !2, line: 490, type: !170, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734}
!3730 = !DILocalVariable(name: "policy", arg: 1, scope: !3728, file: !2, line: 490, type: !121)
!3731 = !DILocalVariable(name: "gov", scope: !3728, file: !2, line: 492, type: !2785)
!3732 = !DILocalVariable(name: "policy_dbs", scope: !3728, file: !2, line: 493, type: !116)
!3733 = !DILocalVariable(name: "dbs_data", scope: !3728, file: !2, line: 494, type: !2774)
!3734 = !DILocalVariable(name: "count", scope: !3728, file: !2, line: 495, type: !13)
!3735 = !DILocation(line: 490, column: 55, scope: !3728)
!3736 = !DILocation(line: 492, column: 2, scope: !3728)
!3737 = !DILocation(line: 492, column: 23, scope: !3728)
!3738 = !DILocation(line: 492, column: 45, scope: !3728)
!3739 = !DILocation(line: 492, column: 29, scope: !3728)
!3740 = !DILocation(line: 493, column: 2, scope: !3728)
!3741 = !DILocation(line: 493, column: 26, scope: !3728)
!3742 = !DILocation(line: 493, column: 39, scope: !3728)
!3743 = !DILocation(line: 493, column: 47, scope: !3728)
!3744 = !DILocation(line: 494, column: 2, scope: !3728)
!3745 = !DILocation(line: 494, column: 19, scope: !3728)
!3746 = !DILocation(line: 494, column: 30, scope: !3728)
!3747 = !DILocation(line: 494, column: 42, scope: !3728)
!3748 = !DILocation(line: 495, column: 2, scope: !3728)
!3749 = !DILocation(line: 495, column: 15, scope: !3728)
!3750 = !DILocation(line: 498, column: 2, scope: !3728)
!3751 = !DILocation(line: 500, column: 28, scope: !3728)
!3752 = !DILocation(line: 500, column: 38, scope: !3728)
!3753 = !DILocation(line: 500, column: 49, scope: !3728)
!3754 = !DILocation(line: 500, column: 61, scope: !3728)
!3755 = !DILocation(line: 500, column: 10, scope: !3728)
!3756 = !DILocation(line: 500, column: 8, scope: !3728)
!3757 = !DILocation(line: 502, column: 2, scope: !3728)
!3758 = !DILocation(line: 502, column: 10, scope: !3728)
!3759 = !DILocation(line: 502, column: 24, scope: !3728)
!3760 = !DILocation(line: 504, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3728, file: !2, line: 504, column: 6)
!3762 = !DILocation(line: 504, column: 13, scope: !3761)
!3763 = !DILocation(line: 504, column: 17, scope: !3761)
!3764 = !DILocation(line: 504, column: 6, scope: !3728)
!3765 = !DILocation(line: 505, column: 3, scope: !3761)
!3766 = !DILocation(line: 505, column: 8, scope: !3761)
!3767 = !DILocation(line: 505, column: 18, scope: !3761)
!3768 = !DILocation(line: 507, column: 23, scope: !3728)
!3769 = !DILocation(line: 507, column: 35, scope: !3728)
!3770 = !DILocation(line: 507, column: 2, scope: !3728)
!3771 = !DILocation(line: 509, column: 2, scope: !3728)
!3772 = !DILocation(line: 510, column: 1, scope: !3728)
!3773 = !DISubprogram(name: "gov_attr_set_put", scope: !29, file: !29, line: 669, type: !3774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!13, !2850, !194}
!3776 = distinct !DISubprogram(name: "cpufreq_dbs_governor_start", scope: !2, file: !2, line: 513, type: !165, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3790, !3793, !3795, !3799}
!3778 = !DILocalVariable(name: "policy", arg: 1, scope: !3776, file: !2, line: 513, type: !121)
!3779 = !DILocalVariable(name: "gov", scope: !3776, file: !2, line: 515, type: !2785)
!3780 = !DILocalVariable(name: "policy_dbs", scope: !3776, file: !2, line: 516, type: !116)
!3781 = !DILocalVariable(name: "dbs_data", scope: !3776, file: !2, line: 517, type: !2774)
!3782 = !DILocalVariable(name: "sampling_rate", scope: !3776, file: !2, line: 518, type: !13)
!3783 = !DILocalVariable(name: "ignore_nice", scope: !3776, file: !2, line: 518, type: !13)
!3784 = !DILocalVariable(name: "j", scope: !3776, file: !2, line: 518, type: !13)
!3785 = !DILocalVariable(name: "io_busy", scope: !3776, file: !2, line: 519, type: !13)
!3786 = !DILocalVariable(name: "j_cdbs", scope: !3787, file: !2, line: 532, type: !2823)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !2, line: 531, column: 32)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !2, line: 531, column: 2)
!3789 = distinct !DILexicalBlock(scope: !3776, file: !2, line: 531, column: 2)
!3790 = !DILocalVariable(name: "__vpp_verify", scope: !3791, file: !2, line: 532, type: !564)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 532, column: 34)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !2, line: 532, column: 34)
!3793 = !DILocalVariable(name: "__ptr", scope: !3794, file: !2, line: 532, type: !132)
!3794 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 532, column: 34)
!3795 = !DILocalVariable(name: "__vpp_verify", scope: !3796, file: !2, line: 541, type: !564)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !2, line: 541, column: 44)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !2, line: 541, column: 44)
!3798 = distinct !DILexicalBlock(scope: !3787, file: !2, line: 540, column: 7)
!3799 = !DILocalVariable(name: "__ptr", scope: !3800, file: !2, line: 541, type: !132)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !2, line: 541, column: 44)
!3801 = !DILocation(line: 513, column: 55, scope: !3776)
!3802 = !DILocation(line: 515, column: 2, scope: !3776)
!3803 = !DILocation(line: 515, column: 23, scope: !3776)
!3804 = !DILocation(line: 515, column: 45, scope: !3776)
!3805 = !DILocation(line: 515, column: 29, scope: !3776)
!3806 = !DILocation(line: 516, column: 2, scope: !3776)
!3807 = !DILocation(line: 516, column: 26, scope: !3776)
!3808 = !DILocation(line: 516, column: 39, scope: !3776)
!3809 = !DILocation(line: 516, column: 47, scope: !3776)
!3810 = !DILocation(line: 517, column: 2, scope: !3776)
!3811 = !DILocation(line: 517, column: 19, scope: !3776)
!3812 = !DILocation(line: 517, column: 30, scope: !3776)
!3813 = !DILocation(line: 517, column: 42, scope: !3776)
!3814 = !DILocation(line: 518, column: 2, scope: !3776)
!3815 = !DILocation(line: 518, column: 15, scope: !3776)
!3816 = !DILocation(line: 518, column: 30, scope: !3776)
!3817 = !DILocation(line: 518, column: 43, scope: !3776)
!3818 = !DILocation(line: 519, column: 2, scope: !3776)
!3819 = !DILocation(line: 519, column: 15, scope: !3776)
!3820 = !DILocation(line: 521, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3776, file: !2, line: 521, column: 6)
!3822 = !DILocation(line: 521, column: 15, scope: !3821)
!3823 = !DILocation(line: 521, column: 6, scope: !3776)
!3824 = !DILocation(line: 522, column: 3, scope: !3821)
!3825 = !DILocation(line: 524, column: 43, scope: !3776)
!3826 = !DILocation(line: 524, column: 26, scope: !3776)
!3827 = !DILocation(line: 524, column: 2, scope: !3776)
!3828 = !DILocation(line: 524, column: 14, scope: !3776)
!3829 = !DILocation(line: 524, column: 24, scope: !3776)
!3830 = !DILocation(line: 525, column: 2, scope: !3776)
!3831 = !DILocation(line: 525, column: 14, scope: !3776)
!3832 = !DILocation(line: 525, column: 24, scope: !3776)
!3833 = !DILocation(line: 527, column: 18, scope: !3776)
!3834 = !DILocation(line: 527, column: 28, scope: !3776)
!3835 = !DILocation(line: 527, column: 16, scope: !3776)
!3836 = !DILocation(line: 528, column: 16, scope: !3776)
!3837 = !DILocation(line: 528, column: 26, scope: !3776)
!3838 = !DILocation(line: 528, column: 14, scope: !3776)
!3839 = !DILocation(line: 529, column: 12, scope: !3776)
!3840 = !DILocation(line: 529, column: 22, scope: !3776)
!3841 = !DILocation(line: 529, column: 10, scope: !3776)
!3842 = !DILocation(line: 531, column: 2, scope: !3789)
!3843 = !DILocation(line: 531, column: 2, scope: !3788)
!3844 = !DILocation(line: 532, column: 3, scope: !3787)
!3845 = !DILocation(line: 532, column: 24, scope: !3787)
!3846 = !DILocation(line: 532, column: 34, scope: !3792)
!3847 = !DILocation(line: 532, column: 34, scope: !3791)
!3848 = !DILocation(line: 532, column: 34, scope: !3794)
!3849 = !DILocation(line: 534, column: 45, scope: !3787)
!3850 = !DILocation(line: 534, column: 49, scope: !3787)
!3851 = !DILocation(line: 534, column: 57, scope: !3787)
!3852 = !DILocation(line: 534, column: 75, scope: !3787)
!3853 = !DILocation(line: 534, column: 27, scope: !3787)
!3854 = !DILocation(line: 534, column: 3, scope: !3787)
!3855 = !DILocation(line: 534, column: 11, scope: !3787)
!3856 = !DILocation(line: 534, column: 25, scope: !3787)
!3857 = !DILocation(line: 538, column: 3, scope: !3787)
!3858 = !DILocation(line: 538, column: 11, scope: !3787)
!3859 = !DILocation(line: 538, column: 21, scope: !3787)
!3860 = !DILocation(line: 540, column: 7, scope: !3798)
!3861 = !DILocation(line: 540, column: 7, scope: !3787)
!3862 = !DILocation(line: 541, column: 44, scope: !3797)
!3863 = !DILocation(line: 541, column: 44, scope: !3796)
!3864 = !DILocation(line: 541, column: 44, scope: !3800)
!3865 = !DILocation(line: 541, column: 75, scope: !3798)
!3866 = !DILocation(line: 541, column: 28, scope: !3798)
!3867 = !DILocation(line: 541, column: 4, scope: !3798)
!3868 = !DILocation(line: 541, column: 12, scope: !3798)
!3869 = !DILocation(line: 541, column: 26, scope: !3798)
!3870 = !DILocation(line: 542, column: 2, scope: !3788)
!3871 = !DILocation(line: 542, column: 2, scope: !3787)
!3872 = distinct !{!3872, !3842, !3873, !2998, !2999}
!3873 = !DILocation(line: 542, column: 2, scope: !3789)
!3874 = !DILocation(line: 544, column: 2, scope: !3776)
!3875 = !DILocation(line: 544, column: 7, scope: !3776)
!3876 = !DILocation(line: 544, column: 13, scope: !3776)
!3877 = !DILocation(line: 546, column: 22, scope: !3776)
!3878 = !DILocation(line: 546, column: 34, scope: !3776)
!3879 = !DILocation(line: 546, column: 2, scope: !3776)
!3880 = !DILocation(line: 547, column: 2, scope: !3776)
!3881 = !DILocation(line: 548, column: 1, scope: !3776)
!3882 = distinct !DISubprogram(name: "policy_is_shared", scope: !29, file: !29, line: 218, type: !3883, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!641, !121}
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "policy", arg: 1, scope: !3882, file: !29, line: 218, type: !121)
!3887 = !DILocation(line: 218, column: 60, scope: !3882)
!3888 = !DILocation(line: 220, column: 24, scope: !3882)
!3889 = !DILocation(line: 220, column: 32, scope: !3882)
!3890 = !DILocation(line: 220, column: 9, scope: !3882)
!3891 = !DILocation(line: 220, column: 38, scope: !3882)
!3892 = !DILocation(line: 220, column: 2, scope: !3882)
!3893 = distinct !DISubprogram(name: "gov_set_update_util", scope: !2, file: !2, line: 322, type: !3023, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3903, !3906}
!3895 = !DILocalVariable(name: "policy_dbs", arg: 1, scope: !3893, file: !2, line: 322, type: !116)
!3896 = !DILocalVariable(name: "delay_us", arg: 2, scope: !3893, file: !2, line: 323, type: !13)
!3897 = !DILocalVariable(name: "policy", scope: !3893, file: !2, line: 325, type: !121)
!3898 = !DILocalVariable(name: "cpu", scope: !3893, file: !2, line: 326, type: !167)
!3899 = !DILocalVariable(name: "cdbs", scope: !3900, file: !2, line: 332, type: !2823)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !2, line: 331, column: 34)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !2, line: 331, column: 2)
!3902 = distinct !DILexicalBlock(scope: !3893, file: !2, line: 331, column: 2)
!3903 = !DILocalVariable(name: "__vpp_verify", scope: !3904, file: !2, line: 332, type: !564)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !2, line: 332, column: 32)
!3905 = distinct !DILexicalBlock(scope: !3900, file: !2, line: 332, column: 32)
!3906 = !DILocalVariable(name: "__ptr", scope: !3907, file: !2, line: 332, type: !132)
!3907 = distinct !DILexicalBlock(scope: !3905, file: !2, line: 332, column: 32)
!3908 = !DILocation(line: 322, column: 57, scope: !3893)
!3909 = !DILocation(line: 323, column: 18, scope: !3893)
!3910 = !DILocation(line: 325, column: 2, scope: !3893)
!3911 = !DILocation(line: 325, column: 25, scope: !3893)
!3912 = !DILocation(line: 325, column: 34, scope: !3893)
!3913 = !DILocation(line: 325, column: 46, scope: !3893)
!3914 = !DILocation(line: 326, column: 2, scope: !3893)
!3915 = !DILocation(line: 326, column: 6, scope: !3893)
!3916 = !DILocation(line: 328, column: 26, scope: !3893)
!3917 = !DILocation(line: 328, column: 38, scope: !3893)
!3918 = !DILocation(line: 328, column: 2, scope: !3893)
!3919 = !DILocation(line: 329, column: 2, scope: !3893)
!3920 = !DILocation(line: 329, column: 14, scope: !3893)
!3921 = !DILocation(line: 329, column: 31, scope: !3893)
!3922 = !DILocation(line: 331, column: 2, scope: !3902)
!3923 = !DILocation(line: 331, column: 2, scope: !3901)
!3924 = !DILocation(line: 332, column: 3, scope: !3900)
!3925 = !DILocation(line: 332, column: 24, scope: !3900)
!3926 = !DILocation(line: 332, column: 32, scope: !3905)
!3927 = !DILocation(line: 332, column: 32, scope: !3904)
!3928 = !DILocation(line: 332, column: 32, scope: !3907)
!3929 = !DILocation(line: 334, column: 32, scope: !3900)
!3930 = !DILocation(line: 334, column: 38, scope: !3900)
!3931 = !DILocation(line: 334, column: 44, scope: !3900)
!3932 = !DILocation(line: 334, column: 3, scope: !3900)
!3933 = !DILocation(line: 336, column: 2, scope: !3901)
!3934 = !DILocation(line: 336, column: 2, scope: !3900)
!3935 = distinct !{!3935, !3922, !3936, !2998, !2999}
!3936 = !DILocation(line: 336, column: 2, scope: !3902)
!3937 = !DILocation(line: 337, column: 1, scope: !3893)
!3938 = distinct !DISubprogram(name: "cpufreq_dbs_governor_stop", scope: !2, file: !2, line: 551, type: !170, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3939)
!3939 = !{!3940, !3941}
!3940 = !DILocalVariable(name: "policy", arg: 1, scope: !3938, file: !2, line: 551, type: !121)
!3941 = !DILocalVariable(name: "policy_dbs", scope: !3938, file: !2, line: 553, type: !116)
!3942 = !DILocation(line: 551, column: 55, scope: !3938)
!3943 = !DILocation(line: 553, column: 2, scope: !3938)
!3944 = !DILocation(line: 553, column: 26, scope: !3938)
!3945 = !DILocation(line: 553, column: 39, scope: !3938)
!3946 = !DILocation(line: 553, column: 47, scope: !3938)
!3947 = !DILocation(line: 555, column: 24, scope: !3938)
!3948 = !DILocation(line: 555, column: 36, scope: !3938)
!3949 = !DILocation(line: 555, column: 2, scope: !3938)
!3950 = !DILocation(line: 556, column: 17, scope: !3938)
!3951 = !DILocation(line: 556, column: 29, scope: !3938)
!3952 = !DILocation(line: 556, column: 2, scope: !3938)
!3953 = !DILocation(line: 557, column: 20, scope: !3938)
!3954 = !DILocation(line: 557, column: 32, scope: !3938)
!3955 = !DILocation(line: 557, column: 2, scope: !3938)
!3956 = !DILocation(line: 558, column: 14, scope: !3938)
!3957 = !DILocation(line: 558, column: 26, scope: !3938)
!3958 = !DILocation(line: 558, column: 2, scope: !3938)
!3959 = !DILocation(line: 559, column: 2, scope: !3938)
!3960 = !DILocation(line: 559, column: 14, scope: !3938)
!3961 = !DILocation(line: 559, column: 31, scope: !3938)
!3962 = !DILocation(line: 560, column: 1, scope: !3938)
!3963 = distinct !DISubprogram(name: "gov_clear_update_util", scope: !2, file: !2, line: 339, type: !170, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3964)
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "policy", arg: 1, scope: !3963, file: !2, line: 339, type: !121)
!3966 = !DILocalVariable(name: "i", scope: !3963, file: !2, line: 341, type: !167)
!3967 = !DILocation(line: 339, column: 65, scope: !3963)
!3968 = !DILocation(line: 341, column: 2, scope: !3963)
!3969 = !DILocation(line: 341, column: 6, scope: !3963)
!3970 = !DILocation(line: 343, column: 2, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3963, file: !2, line: 343, column: 2)
!3972 = !DILocation(line: 343, column: 2, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3971, file: !2, line: 343, column: 2)
!3974 = !DILocation(line: 344, column: 35, scope: !3973)
!3975 = !DILocation(line: 344, column: 3, scope: !3973)
!3976 = distinct !{!3976, !3970, !3977, !2998, !2999}
!3977 = !DILocation(line: 344, column: 36, scope: !3971)
!3978 = !DILocation(line: 346, column: 2, scope: !3963)
!3979 = !DILocation(line: 347, column: 1, scope: !3963)
!3980 = !DISubprogram(name: "irq_work_sync", scope: !2759, file: !2759, line: 61, type: !2764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3981 = !DISubprogram(name: "cancel_work_sync", scope: !79, file: !79, line: 515, type: !3982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!641, !616}
!3984 = distinct !DISubprogram(name: "atomic_set", scope: !3985, file: !3985, line: 65, type: !3986, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3989)
!3985 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !3988, !167}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "v", arg: 1, scope: !3984, file: !3985, line: 65, type: !3988)
!3991 = !DILocalVariable(name: "i", arg: 2, scope: !3984, file: !3985, line: 65, type: !167)
!3992 = !DILocation(line: 65, column: 22, scope: !3984)
!3993 = !DILocation(line: 65, column: 29, scope: !3984)
!3994 = !DILocation(line: 67, column: 26, scope: !3984)
!3995 = !DILocation(line: 67, column: 2, scope: !3984)
!3996 = !DILocation(line: 68, column: 17, scope: !3984)
!3997 = !DILocation(line: 68, column: 20, scope: !3984)
!3998 = !DILocation(line: 68, column: 2, scope: !3984)
!3999 = !DILocation(line: 69, column: 1, scope: !3984)
!4000 = distinct !DISubprogram(name: "cpufreq_dbs_governor_limits", scope: !2, file: !2, line: 563, type: !170, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4001)
!4001 = !{!4002, !4003, !4004}
!4002 = !DILocalVariable(name: "policy", arg: 1, scope: !4000, file: !2, line: 563, type: !121)
!4003 = !DILocalVariable(name: "policy_dbs", scope: !4000, file: !2, line: 565, type: !116)
!4004 = !DILabel(scope: !4000, name: "out", file: !2, line: 578)
!4005 = !DILocation(line: 563, column: 57, scope: !4000)
!4006 = !DILocation(line: 565, column: 2, scope: !4000)
!4007 = !DILocation(line: 565, column: 26, scope: !4000)
!4008 = !DILocation(line: 568, column: 2, scope: !4000)
!4009 = !DILocation(line: 569, column: 15, scope: !4000)
!4010 = !DILocation(line: 569, column: 23, scope: !4000)
!4011 = !DILocation(line: 569, column: 13, scope: !4000)
!4012 = !DILocation(line: 570, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4000, file: !2, line: 570, column: 6)
!4014 = !DILocation(line: 570, column: 6, scope: !4000)
!4015 = !DILocation(line: 571, column: 3, scope: !4013)
!4016 = !DILocation(line: 573, column: 14, scope: !4000)
!4017 = !DILocation(line: 573, column: 26, scope: !4000)
!4018 = !DILocation(line: 573, column: 2, scope: !4000)
!4019 = !DILocation(line: 574, column: 30, scope: !4000)
!4020 = !DILocation(line: 574, column: 2, scope: !4000)
!4021 = !DILocation(line: 575, column: 26, scope: !4000)
!4022 = !DILocation(line: 575, column: 2, scope: !4000)
!4023 = !DILocation(line: 576, column: 16, scope: !4000)
!4024 = !DILocation(line: 576, column: 28, scope: !4000)
!4025 = !DILocation(line: 576, column: 2, scope: !4000)
!4026 = !DILocation(line: 578, column: 1, scope: !4000)
!4027 = !DILocation(line: 579, column: 2, scope: !4000)
!4028 = !DILocation(line: 580, column: 1, scope: !4000)
!4029 = distinct !DISubprogram(name: "cpufreq_policy_apply_limits", scope: !29, file: !29, line: 641, type: !170, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4030)
!4030 = !{!4031}
!4031 = !DILocalVariable(name: "policy", arg: 1, scope: !4029, file: !29, line: 641, type: !121)
!4032 = !DILocation(line: 641, column: 71, scope: !4029)
!4033 = !DILocation(line: 643, column: 6, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4029, file: !29, line: 643, column: 6)
!4035 = !DILocation(line: 643, column: 14, scope: !4034)
!4036 = !DILocation(line: 643, column: 20, scope: !4034)
!4037 = !DILocation(line: 643, column: 28, scope: !4034)
!4038 = !DILocation(line: 643, column: 18, scope: !4034)
!4039 = !DILocation(line: 643, column: 6, scope: !4029)
!4040 = !DILocation(line: 644, column: 27, scope: !4034)
!4041 = !DILocation(line: 644, column: 35, scope: !4034)
!4042 = !DILocation(line: 644, column: 43, scope: !4034)
!4043 = !DILocation(line: 644, column: 3, scope: !4034)
!4044 = !DILocation(line: 646, column: 11, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4034, file: !29, line: 646, column: 11)
!4046 = !DILocation(line: 646, column: 19, scope: !4045)
!4047 = !DILocation(line: 646, column: 25, scope: !4045)
!4048 = !DILocation(line: 646, column: 33, scope: !4045)
!4049 = !DILocation(line: 646, column: 23, scope: !4045)
!4050 = !DILocation(line: 646, column: 11, scope: !4034)
!4051 = !DILocation(line: 647, column: 27, scope: !4045)
!4052 = !DILocation(line: 647, column: 35, scope: !4045)
!4053 = !DILocation(line: 647, column: 43, scope: !4045)
!4054 = !DILocation(line: 647, column: 3, scope: !4045)
!4055 = !DILocation(line: 649, column: 1, scope: !4029)
!4056 = distinct !DISubprogram(name: "variable__ffs", scope: !4057, file: !4057, line: 250, type: !4058, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4060)
!4057 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!132, !132}
!4060 = !{!4061}
!4061 = !DILocalVariable(name: "word", arg: 1, scope: !4056, file: !4057, line: 250, type: !132)
!4062 = !DILocation(line: 250, column: 66, scope: !4056)
!4063 = !DILocation(line: 254, column: 11, scope: !4056)
!4064 = !DILocation(line: 252, column: 2, scope: !4056)
!4065 = !{i64 464735}
!4066 = !DILocation(line: 255, column: 9, scope: !4056)
!4067 = !DILocation(line: 255, column: 2, scope: !4056)
!4068 = !DISubprogram(name: "_find_next_bit", scope: !3110, file: !3110, line: 11, type: !3111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4069 = distinct !DISubprogram(name: "div_u64_rem", scope: !3372, file: !3372, line: 26, type: !4070, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!449, !449, !1130, !1626}
!4072 = !{!4073, !4074, !4075}
!4073 = !DILocalVariable(name: "dividend", arg: 1, scope: !4069, file: !3372, line: 26, type: !449)
!4074 = !DILocalVariable(name: "divisor", arg: 2, scope: !4069, file: !3372, line: 26, type: !1130)
!4075 = !DILocalVariable(name: "remainder", arg: 3, scope: !4069, file: !3372, line: 26, type: !1626)
!4076 = !DILocation(line: 26, column: 35, scope: !4069)
!4077 = !DILocation(line: 26, column: 49, scope: !4069)
!4078 = !DILocation(line: 26, column: 63, scope: !4069)
!4079 = !DILocation(line: 28, column: 15, scope: !4069)
!4080 = !DILocation(line: 28, column: 26, scope: !4069)
!4081 = !DILocation(line: 28, column: 24, scope: !4069)
!4082 = !DILocation(line: 28, column: 3, scope: !4069)
!4083 = !DILocation(line: 28, column: 13, scope: !4069)
!4084 = !DILocation(line: 29, column: 9, scope: !4069)
!4085 = !DILocation(line: 29, column: 20, scope: !4069)
!4086 = !DILocation(line: 29, column: 18, scope: !4069)
!4087 = !DILocation(line: 29, column: 2, scope: !4069)
!4088 = !DISubprogram(name: "__mutex_init", scope: !544, file: !544, line: 121, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !3021, !214, !4091}
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!4092 = distinct !DISubprogram(name: "init_irq_work", scope: !2759, file: !2759, line: 37, type: !4093, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !2766, !2763}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "work", arg: 1, scope: !4092, file: !2759, line: 37, type: !2766)
!4097 = !DILocalVariable(name: "func", arg: 2, scope: !4092, file: !2759, line: 37, type: !2763)
!4098 = !DILocation(line: 37, column: 37, scope: !4092)
!4099 = !DILocation(line: 37, column: 50, scope: !4092)
!4100 = !DILocation(line: 39, column: 3, scope: !4092)
!4101 = !DILocation(line: 39, column: 10, scope: !4092)
!4102 = !DILocation(line: 40, column: 1, scope: !4092)
!4103 = distinct !DISubprogram(name: "dbs_irq_work", scope: !2, file: !2, line: 261, type: !2764, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4104)
!4104 = !{!4105, !4106, !4107, !4109, !4112, !4114}
!4105 = !DILocalVariable(name: "irq_work", arg: 1, scope: !4103, file: !2, line: 261, type: !2766)
!4106 = !DILocalVariable(name: "policy_dbs", scope: !4103, file: !2, line: 263, type: !116)
!4107 = !DILocalVariable(name: "__mptr", scope: !4108, file: !2, line: 265, type: !115)
!4108 = distinct !DILexicalBlock(scope: !4103, file: !2, line: 265, column: 15)
!4109 = !DILocalVariable(name: "pscr_ret__", scope: !4110, file: !2, line: 266, type: !167)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !2, line: 266, column: 19)
!4111 = distinct !DILexicalBlock(scope: !4103, file: !2, line: 266, column: 19)
!4112 = !DILocalVariable(name: "__vpp_verify", scope: !4113, file: !2, line: 266, type: !564)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !2, line: 266, column: 19)
!4114 = !DILocalVariable(name: "pfo_val__", scope: !4115, file: !2, line: 266, type: !1130)
!4115 = distinct !DILexicalBlock(scope: !4110, file: !2, line: 266, column: 19)
!4116 = !DILocation(line: 261, column: 43, scope: !4103)
!4117 = !DILocation(line: 263, column: 2, scope: !4103)
!4118 = !DILocation(line: 263, column: 26, scope: !4103)
!4119 = !DILocation(line: 265, column: 15, scope: !4108)
!4120 = !DILocation(line: 265, column: 15, scope: !4103)
!4121 = !DILocation(line: 265, column: 13, scope: !4103)
!4122 = !DILocation(line: 266, column: 19, scope: !4111)
!4123 = !DILocation(line: 266, column: 19, scope: !4110)
!4124 = !DILocation(line: 266, column: 19, scope: !4113)
!4125 = !DILocation(line: 266, column: 19, scope: !4115)
!4126 = !{i64 2154023375}
!4127 = !DILocation(line: 266, column: 40, scope: !4103)
!4128 = !DILocation(line: 266, column: 52, scope: !4103)
!4129 = !DILocation(line: 266, column: 2, scope: !4103)
!4130 = !DILocation(line: 267, column: 1, scope: !4103)
!4131 = distinct !DISubprogram(name: "__init_work", scope: !79, file: !79, line: 263, type: !4132, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !616, !167}
!4134 = !{!4135, !4136}
!4135 = !DILocalVariable(name: "work", arg: 1, scope: !4131, file: !79, line: 263, type: !616)
!4136 = !DILocalVariable(name: "onstack", arg: 2, scope: !4131, file: !79, line: 263, type: !167)
!4137 = !DILocation(line: 263, column: 52, scope: !4131)
!4138 = !DILocation(line: 263, column: 62, scope: !4131)
!4139 = !DILocation(line: 263, column: 73, scope: !4131)
!4140 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4141, file: !4141, line: 35, type: !4142, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4144)
!4141 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !194}
!4144 = !{!4145}
!4145 = !DILocalVariable(name: "list", arg: 1, scope: !4140, file: !4141, line: 35, type: !194)
!4146 = !DILocation(line: 35, column: 53, scope: !4140)
!4147 = !DILocation(line: 37, column: 2, scope: !4140)
!4148 = !DILocation(line: 37, column: 2, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 37, column: 2)
!4150 = !DILocation(line: 37, column: 2, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4149, file: !4141, line: 37, column: 2)
!4152 = !DILocation(line: 37, column: 2, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4149, file: !4141, line: 37, column: 2)
!4154 = !DILocation(line: 38, column: 2, scope: !4140)
!4155 = !DILocation(line: 38, column: 2, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 38, column: 2)
!4157 = !DILocation(line: 38, column: 2, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4156, file: !4141, line: 38, column: 2)
!4159 = !DILocation(line: 38, column: 2, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4156, file: !4141, line: 38, column: 2)
!4161 = !DILocation(line: 39, column: 1, scope: !4140)
!4162 = distinct !DISubprogram(name: "dbs_work_handler", scope: !2, file: !2, line: 232, type: !614, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168}
!4164 = !DILocalVariable(name: "work", arg: 1, scope: !4162, file: !2, line: 232, type: !616)
!4165 = !DILocalVariable(name: "policy_dbs", scope: !4162, file: !2, line: 234, type: !116)
!4166 = !DILocalVariable(name: "policy", scope: !4162, file: !2, line: 235, type: !121)
!4167 = !DILocalVariable(name: "gov", scope: !4162, file: !2, line: 236, type: !2785)
!4168 = !DILocalVariable(name: "__mptr", scope: !4169, file: !2, line: 238, type: !115)
!4169 = distinct !DILexicalBlock(scope: !4162, file: !2, line: 238, column: 15)
!4170 = !DILocation(line: 232, column: 50, scope: !4162)
!4171 = !DILocation(line: 234, column: 2, scope: !4162)
!4172 = !DILocation(line: 234, column: 26, scope: !4162)
!4173 = !DILocation(line: 235, column: 2, scope: !4162)
!4174 = !DILocation(line: 235, column: 25, scope: !4162)
!4175 = !DILocation(line: 236, column: 2, scope: !4162)
!4176 = !DILocation(line: 236, column: 23, scope: !4162)
!4177 = !DILocation(line: 238, column: 15, scope: !4169)
!4178 = !DILocation(line: 238, column: 15, scope: !4162)
!4179 = !DILocation(line: 238, column: 13, scope: !4162)
!4180 = !DILocation(line: 239, column: 11, scope: !4162)
!4181 = !DILocation(line: 239, column: 23, scope: !4162)
!4182 = !DILocation(line: 239, column: 9, scope: !4162)
!4183 = !DILocation(line: 240, column: 24, scope: !4162)
!4184 = !DILocation(line: 240, column: 8, scope: !4162)
!4185 = !DILocation(line: 240, column: 6, scope: !4162)
!4186 = !DILocation(line: 246, column: 14, scope: !4162)
!4187 = !DILocation(line: 246, column: 26, scope: !4162)
!4188 = !DILocation(line: 246, column: 2, scope: !4162)
!4189 = !DILocation(line: 247, column: 26, scope: !4162)
!4190 = !DILocation(line: 247, column: 38, scope: !4162)
!4191 = !DILocation(line: 247, column: 43, scope: !4162)
!4192 = !DILocation(line: 247, column: 58, scope: !4162)
!4193 = !DILocation(line: 247, column: 2, scope: !4162)
!4194 = !DILocation(line: 248, column: 16, scope: !4162)
!4195 = !DILocation(line: 248, column: 28, scope: !4162)
!4196 = !DILocation(line: 248, column: 2, scope: !4162)
!4197 = !DILocation(line: 251, column: 14, scope: !4162)
!4198 = !DILocation(line: 251, column: 26, scope: !4162)
!4199 = !DILocation(line: 251, column: 2, scope: !4162)
!4200 = !DILocation(line: 257, column: 2, scope: !4162)
!4201 = !DILocation(line: 257, column: 2, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4162, file: !2, line: 257, column: 2)
!4203 = !DILocation(line: 257, column: 2, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4202, file: !2, line: 257, column: 2)
!4205 = !{i64 2154019496}
!4206 = !DILocation(line: 258, column: 2, scope: !4162)
!4207 = !DILocation(line: 258, column: 14, scope: !4162)
!4208 = !DILocation(line: 258, column: 31, scope: !4162)
!4209 = !DILocation(line: 259, column: 1, scope: !4162)
!4210 = distinct !DISubprogram(name: "schedule_work_on", scope: !79, file: !79, line: 602, type: !4211, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!641, !167, !616}
!4213 = !{!4214, !4215}
!4214 = !DILocalVariable(name: "cpu", arg: 1, scope: !4210, file: !79, line: 602, type: !167)
!4215 = !DILocalVariable(name: "work", arg: 2, scope: !4210, file: !79, line: 602, type: !616)
!4216 = !DILocation(line: 602, column: 41, scope: !4210)
!4217 = !DILocation(line: 602, column: 66, scope: !4210)
!4218 = !DILocation(line: 604, column: 23, scope: !4210)
!4219 = !DILocation(line: 604, column: 28, scope: !4210)
!4220 = !DILocation(line: 604, column: 39, scope: !4210)
!4221 = !DILocation(line: 604, column: 9, scope: !4210)
!4222 = !DILocation(line: 604, column: 2, scope: !4210)
!4223 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !4224, file: !4224, line: 313, type: !4225, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4227)
!4224 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !214}
!4227 = !{!4228}
!4228 = !DILocalVariable(name: "op", arg: 1, scope: !4223, file: !4224, line: 313, type: !214)
!4229 = !DILocation(line: 313, column: 66, scope: !4223)
!4230 = !DILocation(line: 313, column: 72, scope: !4223)
!4231 = !DISubprogram(name: "queue_work_on", scope: !79, file: !79, line: 496, type: !4232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!641, !167, !1182, !616}
!4234 = distinct !DISubprogram(name: "kmalloc", scope: !105, file: !105, line: 591, type: !3634, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4235)
!4235 = !{!4236, !4237, !4238}
!4236 = !DILocalVariable(name: "size", arg: 1, scope: !4234, file: !105, line: 591, type: !334)
!4237 = !DILocalVariable(name: "flags", arg: 2, scope: !4234, file: !105, line: 591, type: !2847)
!4238 = !DILocalVariable(name: "index", scope: !4239, file: !105, line: 594, type: !13)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !105, line: 593, column: 42)
!4240 = distinct !DILexicalBlock(scope: !4234, file: !105, line: 593, column: 6)
!4241 = !DILocation(line: 591, column: 61, scope: !4234)
!4242 = !DILocation(line: 591, column: 73, scope: !4234)
!4243 = !DILocation(line: 593, column: 27, scope: !4240)
!4244 = !DILocation(line: 593, column: 6, scope: !4240)
!4245 = !DILocation(line: 593, column: 33, scope: !4240)
!4246 = !DILocation(line: 593, column: 36, scope: !4240)
!4247 = !DILocation(line: 593, column: 6, scope: !4234)
!4248 = !DILocation(line: 594, column: 3, scope: !4239)
!4249 = !DILocation(line: 594, column: 16, scope: !4239)
!4250 = !DILocation(line: 596, column: 7, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4239, file: !105, line: 596, column: 7)
!4252 = !DILocation(line: 596, column: 12, scope: !4251)
!4253 = !DILocation(line: 596, column: 7, scope: !4239)
!4254 = !DILocation(line: 597, column: 25, scope: !4251)
!4255 = !DILocation(line: 597, column: 31, scope: !4251)
!4256 = !DILocation(line: 597, column: 11, scope: !4251)
!4257 = !DILocation(line: 597, column: 4, scope: !4251)
!4258 = !DILocation(line: 599, column: 11, scope: !4239)
!4259 = !DILocation(line: 599, column: 9, scope: !4239)
!4260 = !DILocation(line: 601, column: 33, scope: !4239)
!4261 = !DILocation(line: 601, column: 40, scope: !4239)
!4262 = !DILocation(line: 601, column: 20, scope: !4239)
!4263 = !DILocation(line: 601, column: 5, scope: !4239)
!4264 = !DILocation(line: 601, column: 51, scope: !4239)
!4265 = !DILocation(line: 602, column: 5, scope: !4239)
!4266 = !DILocation(line: 602, column: 12, scope: !4239)
!4267 = !DILocation(line: 600, column: 10, scope: !4239)
!4268 = !DILocation(line: 600, column: 3, scope: !4239)
!4269 = !DILocation(line: 603, column: 2, scope: !4240)
!4270 = !DILocation(line: 604, column: 19, scope: !4234)
!4271 = !DILocation(line: 604, column: 25, scope: !4234)
!4272 = !DILocation(line: 604, column: 9, scope: !4234)
!4273 = !DILocation(line: 604, column: 2, scope: !4234)
!4274 = !DILocation(line: 605, column: 1, scope: !4234)
!4275 = !DISubprogram(name: "kmalloc_large", scope: !105, file: !105, line: 531, type: !3634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4276 = distinct !DISubprogram(name: "__kmalloc_index", scope: !105, file: !105, line: 444, type: !4277, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!13, !334, !641}
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "size", arg: 1, scope: !4276, file: !105, line: 444, type: !334)
!4281 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4276, file: !105, line: 445, type: !641)
!4282 = !DILocation(line: 444, column: 60, scope: !4276)
!4283 = !DILocation(line: 445, column: 16, scope: !4276)
!4284 = !DILocation(line: 447, column: 7, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 447, column: 6)
!4286 = !DILocation(line: 447, column: 6, scope: !4276)
!4287 = !DILocation(line: 448, column: 3, scope: !4285)
!4288 = !DILocation(line: 450, column: 6, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 450, column: 6)
!4290 = !DILocation(line: 450, column: 11, scope: !4289)
!4291 = !DILocation(line: 450, column: 6, scope: !4276)
!4292 = !DILocation(line: 451, column: 3, scope: !4289)
!4293 = !DILocation(line: 453, column: 32, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 453, column: 6)
!4295 = !DILocation(line: 453, column: 37, scope: !4294)
!4296 = !DILocation(line: 453, column: 42, scope: !4294)
!4297 = !DILocation(line: 453, column: 45, scope: !4294)
!4298 = !DILocation(line: 453, column: 50, scope: !4294)
!4299 = !DILocation(line: 453, column: 6, scope: !4276)
!4300 = !DILocation(line: 454, column: 3, scope: !4294)
!4301 = !DILocation(line: 455, column: 32, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 455, column: 6)
!4303 = !DILocation(line: 455, column: 37, scope: !4302)
!4304 = !DILocation(line: 455, column: 43, scope: !4302)
!4305 = !DILocation(line: 455, column: 46, scope: !4302)
!4306 = !DILocation(line: 455, column: 51, scope: !4302)
!4307 = !DILocation(line: 455, column: 6, scope: !4276)
!4308 = !DILocation(line: 456, column: 3, scope: !4302)
!4309 = !DILocation(line: 457, column: 6, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 457, column: 6)
!4311 = !DILocation(line: 457, column: 11, scope: !4310)
!4312 = !DILocation(line: 457, column: 6, scope: !4276)
!4313 = !DILocation(line: 457, column: 26, scope: !4310)
!4314 = !DILocation(line: 458, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 458, column: 6)
!4316 = !DILocation(line: 458, column: 11, scope: !4315)
!4317 = !DILocation(line: 458, column: 6, scope: !4276)
!4318 = !DILocation(line: 458, column: 26, scope: !4315)
!4319 = !DILocation(line: 459, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 459, column: 6)
!4321 = !DILocation(line: 459, column: 11, scope: !4320)
!4322 = !DILocation(line: 459, column: 6, scope: !4276)
!4323 = !DILocation(line: 459, column: 26, scope: !4320)
!4324 = !DILocation(line: 460, column: 6, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 460, column: 6)
!4326 = !DILocation(line: 460, column: 11, scope: !4325)
!4327 = !DILocation(line: 460, column: 6, scope: !4276)
!4328 = !DILocation(line: 460, column: 26, scope: !4325)
!4329 = !DILocation(line: 461, column: 6, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 461, column: 6)
!4331 = !DILocation(line: 461, column: 11, scope: !4330)
!4332 = !DILocation(line: 461, column: 6, scope: !4276)
!4333 = !DILocation(line: 461, column: 26, scope: !4330)
!4334 = !DILocation(line: 462, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 462, column: 6)
!4336 = !DILocation(line: 462, column: 11, scope: !4335)
!4337 = !DILocation(line: 462, column: 6, scope: !4276)
!4338 = !DILocation(line: 462, column: 26, scope: !4335)
!4339 = !DILocation(line: 463, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 463, column: 6)
!4341 = !DILocation(line: 463, column: 11, scope: !4340)
!4342 = !DILocation(line: 463, column: 6, scope: !4276)
!4343 = !DILocation(line: 463, column: 26, scope: !4340)
!4344 = !DILocation(line: 464, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 464, column: 6)
!4346 = !DILocation(line: 464, column: 11, scope: !4345)
!4347 = !DILocation(line: 464, column: 6, scope: !4276)
!4348 = !DILocation(line: 464, column: 26, scope: !4345)
!4349 = !DILocation(line: 465, column: 6, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 465, column: 6)
!4351 = !DILocation(line: 465, column: 11, scope: !4350)
!4352 = !DILocation(line: 465, column: 6, scope: !4276)
!4353 = !DILocation(line: 465, column: 26, scope: !4350)
!4354 = !DILocation(line: 466, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 466, column: 6)
!4356 = !DILocation(line: 466, column: 11, scope: !4355)
!4357 = !DILocation(line: 466, column: 6, scope: !4276)
!4358 = !DILocation(line: 466, column: 26, scope: !4355)
!4359 = !DILocation(line: 467, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 467, column: 6)
!4361 = !DILocation(line: 467, column: 11, scope: !4360)
!4362 = !DILocation(line: 467, column: 6, scope: !4276)
!4363 = !DILocation(line: 467, column: 26, scope: !4360)
!4364 = !DILocation(line: 468, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 468, column: 6)
!4366 = !DILocation(line: 468, column: 11, scope: !4365)
!4367 = !DILocation(line: 468, column: 6, scope: !4276)
!4368 = !DILocation(line: 468, column: 26, scope: !4365)
!4369 = !DILocation(line: 469, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 469, column: 6)
!4371 = !DILocation(line: 469, column: 11, scope: !4370)
!4372 = !DILocation(line: 469, column: 6, scope: !4276)
!4373 = !DILocation(line: 469, column: 26, scope: !4370)
!4374 = !DILocation(line: 470, column: 6, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 470, column: 6)
!4376 = !DILocation(line: 470, column: 11, scope: !4375)
!4377 = !DILocation(line: 470, column: 6, scope: !4276)
!4378 = !DILocation(line: 470, column: 26, scope: !4375)
!4379 = !DILocation(line: 471, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 471, column: 6)
!4381 = !DILocation(line: 471, column: 11, scope: !4380)
!4382 = !DILocation(line: 471, column: 6, scope: !4276)
!4383 = !DILocation(line: 471, column: 26, scope: !4380)
!4384 = !DILocation(line: 472, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 472, column: 6)
!4386 = !DILocation(line: 472, column: 11, scope: !4385)
!4387 = !DILocation(line: 472, column: 6, scope: !4276)
!4388 = !DILocation(line: 472, column: 26, scope: !4385)
!4389 = !DILocation(line: 473, column: 6, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 473, column: 6)
!4391 = !DILocation(line: 473, column: 11, scope: !4390)
!4392 = !DILocation(line: 473, column: 6, scope: !4276)
!4393 = !DILocation(line: 473, column: 26, scope: !4390)
!4394 = !DILocation(line: 474, column: 6, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 474, column: 6)
!4396 = !DILocation(line: 474, column: 11, scope: !4395)
!4397 = !DILocation(line: 474, column: 6, scope: !4276)
!4398 = !DILocation(line: 474, column: 27, scope: !4395)
!4399 = !DILocation(line: 475, column: 6, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 475, column: 6)
!4401 = !DILocation(line: 475, column: 11, scope: !4400)
!4402 = !DILocation(line: 475, column: 6, scope: !4276)
!4403 = !DILocation(line: 475, column: 32, scope: !4400)
!4404 = !DILocation(line: 477, column: 50, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4276, file: !105, line: 477, column: 6)
!4406 = !{i8 0, i8 2}
!4407 = !DILocation(line: 477, column: 6, scope: !4276)
!4408 = !DILocation(line: 478, column: 3, scope: !4405)
!4409 = !DILocation(line: 478, column: 3, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !105, line: 478, column: 3)
!4411 = distinct !DILexicalBlock(scope: !4405, file: !105, line: 478, column: 3)
!4412 = !{i32 -2142956034}
!4413 = !DILocation(line: 478, column: 3, scope: !4411)
!4414 = !DILocation(line: 480, column: 3, scope: !4405)
!4415 = !DILocation(line: 480, column: 3, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4405, file: !105, line: 480, column: 3)
!4417 = !DILocation(line: 480, column: 3, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4416, file: !105, line: 480, column: 3)
!4419 = !DILocation(line: 480, column: 3, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !105, line: 480, column: 3)
!4421 = !{i64 2152011465, i64 2152011494, i64 2152011540, i64 2152011598, i64 2152011652, i64 2152011706, i64 2152011761, i64 2152011792}
!4422 = !DILocation(line: 483, column: 2, scope: !4276)
!4423 = !DILocation(line: 484, column: 1, scope: !4276)
!4424 = !DISubprogram(name: "kmalloc_trace", scope: !105, file: !105, line: 525, type: !4425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!115, !4427, !2847, !334}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4429, line: 11, flags: DIFlagFwdDecl)
!4429 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4430 = distinct !DISubprogram(name: "kmalloc_type", scope: !105, file: !105, line: 401, type: !4431, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!104, !2847, !132}
!4433 = !{!4434, !4435}
!4434 = !DILocalVariable(name: "flags", arg: 1, scope: !4430, file: !105, line: 401, type: !2847)
!4435 = !DILocalVariable(name: "caller", arg: 2, scope: !4430, file: !105, line: 401, type: !132)
!4436 = !DILocation(line: 401, column: 67, scope: !4430)
!4437 = !DILocation(line: 401, column: 88, scope: !4430)
!4438 = !DILocation(line: 407, column: 6, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4430, file: !105, line: 407, column: 6)
!4440 = !DILocation(line: 407, column: 6, scope: !4430)
!4441 = !DILocation(line: 413, column: 3, scope: !4439)
!4442 = !DILocation(line: 423, column: 38, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4430, file: !105, line: 423, column: 6)
!4444 = !DILocation(line: 423, column: 44, scope: !4443)
!4445 = !DILocation(line: 423, column: 6, scope: !4430)
!4446 = !DILocation(line: 424, column: 3, scope: !4443)
!4447 = !DILocation(line: 426, column: 3, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4430, file: !105, line: 425, column: 6)
!4449 = !DILocation(line: 429, column: 1, scope: !4430)
!4450 = !DISubprogram(name: "__kmalloc", scope: !105, file: !105, line: 488, type: !3634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4451 = !DISubprogram(name: "__compiletime_assert_173", scope: !105, file: !105, line: 478, type: !1225, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4452 = distinct !DISubprogram(name: "to_gov_attr_set", scope: !29, file: !29, line: 662, type: !4453, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!2850, !218}
!4455 = !{!4456, !4457}
!4456 = !DILocalVariable(name: "kobj", arg: 1, scope: !4452, file: !29, line: 662, type: !218)
!4457 = !DILocalVariable(name: "__mptr", scope: !4458, file: !29, line: 664, type: !115)
!4458 = distinct !DILexicalBlock(scope: !4452, file: !29, line: 664, column: 9)
!4459 = !DILocation(line: 662, column: 68, scope: !4452)
!4460 = !DILocation(line: 664, column: 9, scope: !4458)
!4461 = !DILocation(line: 664, column: 9, scope: !4452)
!4462 = !DILocation(line: 664, column: 2, scope: !4452)
!4463 = distinct !DISubprogram(name: "mutex_destroy", scope: !544, file: !544, line: 92, type: !3019, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4464)
!4464 = !{!4465}
!4465 = !DILocalVariable(name: "lock", arg: 1, scope: !4463, file: !544, line: 92, type: !3021)
!4466 = !DILocation(line: 92, column: 48, scope: !4463)
!4467 = !DILocation(line: 92, column: 55, scope: !4463)
!4468 = distinct !DISubprogram(name: "cpumask_weight", scope: !126, file: !126, line: 690, type: !4469, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4473)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!13, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!4473 = !{!4474}
!4474 = !DILocalVariable(name: "srcp", arg: 1, scope: !4468, file: !126, line: 690, type: !4471)
!4475 = !DILocation(line: 690, column: 65, scope: !4468)
!4476 = !DILocation(line: 692, column: 23, scope: !4468)
!4477 = !DILocation(line: 692, column: 9, scope: !4468)
!4478 = !DILocation(line: 692, column: 2, scope: !4468)
!4479 = distinct !DISubprogram(name: "bitmap_weight", scope: !4480, file: !4480, line: 453, type: !4481, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4483)
!4480 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!13, !3113, !13}
!4483 = !{!4484, !4485}
!4484 = !DILocalVariable(name: "src", arg: 1, scope: !4479, file: !4480, line: 453, type: !3113)
!4485 = !DILocalVariable(name: "nbits", arg: 2, scope: !4479, file: !4480, line: 453, type: !13)
!4486 = !DILocation(line: 453, column: 49, scope: !4479)
!4487 = !DILocation(line: 453, column: 67, scope: !4479)
!4488 = !DILocation(line: 455, column: 6, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4479, file: !4480, line: 455, column: 6)
!4490 = !DILocation(line: 455, column: 6, scope: !4479)
!4491 = !DILocation(line: 456, column: 24, scope: !4489)
!4492 = !DILocation(line: 456, column: 23, scope: !4489)
!4493 = !DILocation(line: 456, column: 30, scope: !4489)
!4494 = !DILocation(line: 456, column: 28, scope: !4489)
!4495 = !DILocation(line: 456, column: 10, scope: !4489)
!4496 = !DILocation(line: 456, column: 3, scope: !4489)
!4497 = !DILocation(line: 457, column: 25, scope: !4479)
!4498 = !DILocation(line: 457, column: 30, scope: !4479)
!4499 = !DILocation(line: 457, column: 9, scope: !4479)
!4500 = !DILocation(line: 457, column: 2, scope: !4479)
!4501 = !DILocation(line: 458, column: 1, scope: !4479)
!4502 = distinct !DISubprogram(name: "hweight_long", scope: !4503, file: !4503, line: 95, type: !4058, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4504)
!4503 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!4504 = !{!4505}
!4505 = !DILocalVariable(name: "w", arg: 1, scope: !4502, file: !4503, line: 95, type: !132)
!4506 = !DILocation(line: 95, column: 65, scope: !4502)
!4507 = !DILocation(line: 97, column: 41, scope: !4502)
!4508 = !DILocation(line: 97, column: 2, scope: !4502)
!4509 = !DISubprogram(name: "__bitmap_weight", scope: !4480, file: !4480, line: 171, type: !4481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4510 = distinct !DISubprogram(name: "__arch_hweight64", scope: !4511, file: !4511, line: 43, type: !4512, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4514)
!4511 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!132, !450}
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "w", arg: 1, scope: !4510, file: !4511, line: 43, type: !450)
!4516 = !DILocalVariable(name: "res", scope: !4510, file: !4511, line: 45, type: !132)
!4517 = !DILocation(line: 43, column: 61, scope: !4510)
!4518 = !DILocation(line: 45, column: 2, scope: !4510)
!4519 = !DILocation(line: 45, column: 16, scope: !4510)
!4520 = !DILocation(line: 49, column: 15, scope: !4510)
!4521 = !DILocation(line: 47, column: 2, scope: !4510)
!4522 = !{i64 2148017452, i64 2148017480, i64 2148017486, i64 2148017502, i64 2148017518, i64 2148017545, i64 2148017878, i64 2148017178, i64 2148017884, i64 2148017932, i64 2148017996, i64 2148018060, i64 2148018117, i64 2148017259, i64 2148017284, i64 2148018324, i64 2148018454, i64 2148018385, i64 2148018468, i64 2148017376}
!4523 = !DILocation(line: 51, column: 9, scope: !4510)
!4524 = !DILocation(line: 52, column: 1, scope: !4510)
!4525 = !DILocation(line: 51, column: 2, scope: !4510)
!4526 = !DISubprogram(name: "cpufreq_add_update_util_hook", scope: !2832, file: !2832, line: 20, type: !4527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !167, !2838, !2835}
!4529 = distinct !DISubprogram(name: "dbs_update_util_handler", scope: !2, file: !2, line: 269, type: !2836, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4530)
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4537, !4538, !4539}
!4531 = !DILocalVariable(name: "data", arg: 1, scope: !4529, file: !2, line: 269, type: !2838)
!4532 = !DILocalVariable(name: "time", arg: 2, scope: !4529, file: !2, line: 269, type: !449)
!4533 = !DILocalVariable(name: "flags", arg: 3, scope: !4529, file: !2, line: 270, type: !13)
!4534 = !DILocalVariable(name: "cdbs", scope: !4529, file: !2, line: 272, type: !2823)
!4535 = !DILocalVariable(name: "__mptr", scope: !4536, file: !2, line: 272, type: !115)
!4536 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 272, column: 30)
!4537 = !DILocalVariable(name: "policy_dbs", scope: !4529, file: !2, line: 273, type: !116)
!4538 = !DILocalVariable(name: "delta_ns", scope: !4529, file: !2, line: 274, type: !449)
!4539 = !DILocalVariable(name: "lst", scope: !4529, file: !2, line: 274, type: !449)
!4540 = !DILocation(line: 269, column: 62, scope: !4529)
!4541 = !DILocation(line: 269, column: 72, scope: !4529)
!4542 = !DILocation(line: 270, column: 22, scope: !4529)
!4543 = !DILocation(line: 272, column: 2, scope: !4529)
!4544 = !DILocation(line: 272, column: 23, scope: !4529)
!4545 = !DILocation(line: 272, column: 30, scope: !4536)
!4546 = !DILocation(line: 272, column: 30, scope: !4529)
!4547 = !DILocation(line: 273, column: 2, scope: !4529)
!4548 = !DILocation(line: 273, column: 26, scope: !4529)
!4549 = !DILocation(line: 273, column: 39, scope: !4529)
!4550 = !DILocation(line: 273, column: 45, scope: !4529)
!4551 = !DILocation(line: 274, column: 2, scope: !4529)
!4552 = !DILocation(line: 274, column: 6, scope: !4529)
!4553 = !DILocation(line: 274, column: 16, scope: !4529)
!4554 = !DILocation(line: 276, column: 35, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 276, column: 6)
!4556 = !DILocation(line: 276, column: 47, scope: !4555)
!4557 = !DILocation(line: 276, column: 7, scope: !4555)
!4558 = !DILocation(line: 276, column: 6, scope: !4529)
!4559 = !DILocation(line: 277, column: 3, scope: !4555)
!4560 = !DILocation(line: 285, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 285, column: 6)
!4562 = !DILocation(line: 285, column: 18, scope: !4561)
!4563 = !DILocation(line: 285, column: 6, scope: !4529)
!4564 = !DILocation(line: 286, column: 3, scope: !4561)
!4565 = !DILocation(line: 292, column: 2, scope: !4529)
!4566 = !DILocation(line: 292, column: 2, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 292, column: 2)
!4568 = !DILocation(line: 292, column: 2, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !2, line: 292, column: 2)
!4570 = !DILocation(line: 292, column: 2, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4567, file: !2, line: 292, column: 2)
!4572 = !DILocation(line: 292, column: 2, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4571, file: !2, line: 292, column: 2)
!4574 = !{i64 2154025480}
!4575 = !DILocation(line: 293, column: 8, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 293, column: 8)
!4577 = !DILocation(line: 293, column: 8, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4576, file: !2, line: 293, column: 8)
!4579 = !DILocation(line: 293, column: 6, scope: !4529)
!4580 = !DILocation(line: 294, column: 13, scope: !4529)
!4581 = !DILocation(line: 294, column: 20, scope: !4529)
!4582 = !DILocation(line: 294, column: 18, scope: !4529)
!4583 = !DILocation(line: 294, column: 11, scope: !4529)
!4584 = !DILocation(line: 295, column: 11, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 295, column: 6)
!4586 = !DILocation(line: 295, column: 22, scope: !4585)
!4587 = !DILocation(line: 295, column: 34, scope: !4585)
!4588 = !DILocation(line: 295, column: 20, scope: !4585)
!4589 = !DILocation(line: 295, column: 6, scope: !4529)
!4590 = !DILocation(line: 296, column: 3, scope: !4585)
!4591 = !DILocation(line: 303, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4529, file: !2, line: 303, column: 6)
!4593 = !DILocation(line: 303, column: 18, scope: !4592)
!4594 = !DILocation(line: 303, column: 6, scope: !4529)
!4595 = !DILocation(line: 304, column: 27, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !2, line: 304, column: 7)
!4597 = distinct !DILexicalBlock(scope: !4592, file: !2, line: 303, column: 29)
!4598 = !DILocation(line: 304, column: 39, scope: !4596)
!4599 = !DILocation(line: 304, column: 8, scope: !4596)
!4600 = !DILocation(line: 304, column: 7, scope: !4597)
!4601 = !DILocation(line: 305, column: 4, scope: !4596)
!4602 = !DILocation(line: 311, column: 7, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4597, file: !2, line: 311, column: 7)
!4604 = !DILocation(line: 311, column: 7, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4603, file: !2, line: 311, column: 7)
!4606 = !DILocation(line: 311, column: 7, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4605, file: !2, line: 311, column: 7)
!4608 = !DILocation(line: 311, column: 7, scope: !4597)
!4609 = !DILocation(line: 312, column: 16, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4603, file: !2, line: 311, column: 65)
!4611 = !DILocation(line: 312, column: 28, scope: !4610)
!4612 = !DILocation(line: 312, column: 4, scope: !4610)
!4613 = !DILocation(line: 313, column: 4, scope: !4610)
!4614 = !DILocation(line: 315, column: 2, scope: !4597)
!4615 = !DILocation(line: 317, column: 33, scope: !4529)
!4616 = !DILocation(line: 317, column: 2, scope: !4529)
!4617 = !DILocation(line: 317, column: 14, scope: !4529)
!4618 = !DILocation(line: 317, column: 31, scope: !4529)
!4619 = !DILocation(line: 318, column: 2, scope: !4529)
!4620 = !DILocation(line: 318, column: 14, scope: !4529)
!4621 = !DILocation(line: 318, column: 31, scope: !4529)
!4622 = !DILocation(line: 319, column: 18, scope: !4529)
!4623 = !DILocation(line: 319, column: 30, scope: !4529)
!4624 = !DILocation(line: 319, column: 2, scope: !4529)
!4625 = !DILocation(line: 320, column: 1, scope: !4529)
!4626 = !DISubprogram(name: "cpufreq_this_cpu_can_update", scope: !2832, file: !2832, line: 24, type: !3883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4627 = distinct !DISubprogram(name: "atomic_add_unless", scope: !3985, file: !3985, line: 1504, type: !4628, scopeLine: 1505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4630)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!641, !3988, !167, !167}
!4630 = !{!4631, !4632, !4633}
!4631 = !DILocalVariable(name: "v", arg: 1, scope: !4627, file: !3985, line: 1504, type: !3988)
!4632 = !DILocalVariable(name: "a", arg: 2, scope: !4627, file: !3985, line: 1504, type: !167)
!4633 = !DILocalVariable(name: "u", arg: 3, scope: !4627, file: !3985, line: 1504, type: !167)
!4634 = !DILocation(line: 1504, column: 29, scope: !4627)
!4635 = !DILocation(line: 1504, column: 36, scope: !4627)
!4636 = !DILocation(line: 1504, column: 43, scope: !4627)
!4637 = !DILocation(line: 1506, column: 2, scope: !4627)
!4638 = !DILocation(line: 1506, column: 2, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4627, file: !3985, line: 1506, column: 2)
!4640 = !DILocation(line: 1507, column: 31, scope: !4627)
!4641 = !DILocation(line: 1507, column: 2, scope: !4627)
!4642 = !DILocation(line: 1508, column: 31, scope: !4627)
!4643 = !DILocation(line: 1508, column: 34, scope: !4627)
!4644 = !DILocation(line: 1508, column: 37, scope: !4627)
!4645 = !DILocation(line: 1508, column: 9, scope: !4627)
!4646 = !DILocation(line: 1508, column: 2, scope: !4627)
!4647 = !DISubprogram(name: "irq_work_queue", scope: !2759, file: !2759, line: 57, type: !4648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!641, !2766}
!4650 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4651, file: !4651, line: 94, type: !4652, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4657)
!4651 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !4654, !334}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4656)
!4656 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4657 = !{!4658, !4659}
!4658 = !DILocalVariable(name: "v", arg: 1, scope: !4650, file: !4651, line: 94, type: !4654)
!4659 = !DILocalVariable(name: "size", arg: 2, scope: !4650, file: !4651, line: 94, type: !334)
!4660 = !DILocation(line: 94, column: 79, scope: !4650)
!4661 = !DILocation(line: 94, column: 89, scope: !4650)
!4662 = !DILocation(line: 96, column: 20, scope: !4650)
!4663 = !DILocation(line: 96, column: 23, scope: !4650)
!4664 = !DILocation(line: 96, column: 2, scope: !4650)
!4665 = !DILocation(line: 97, column: 2, scope: !4650)
!4666 = !DILocation(line: 98, column: 1, scope: !4650)
!4667 = distinct !DISubprogram(name: "raw_atomic_add_unless", scope: !4668, file: !4668, line: 2428, type: !4628, scopeLine: 2429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4669)
!4668 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4669 = !{!4670, !4671, !4672}
!4670 = !DILocalVariable(name: "v", arg: 1, scope: !4667, file: !4668, line: 2428, type: !3988)
!4671 = !DILocalVariable(name: "a", arg: 2, scope: !4667, file: !4668, line: 2428, type: !167)
!4672 = !DILocalVariable(name: "u", arg: 3, scope: !4667, file: !4668, line: 2428, type: !167)
!4673 = !DILocation(line: 2428, column: 33, scope: !4667)
!4674 = !DILocation(line: 2428, column: 40, scope: !4667)
!4675 = !DILocation(line: 2428, column: 47, scope: !4667)
!4676 = !DILocation(line: 2433, column: 37, scope: !4667)
!4677 = !DILocation(line: 2433, column: 40, scope: !4667)
!4678 = !DILocation(line: 2433, column: 43, scope: !4667)
!4679 = !DILocation(line: 2433, column: 9, scope: !4667)
!4680 = !DILocation(line: 2433, column: 49, scope: !4667)
!4681 = !DILocation(line: 2433, column: 46, scope: !4667)
!4682 = !DILocation(line: 2433, column: 2, scope: !4667)
!4683 = distinct !DISubprogram(name: "kasan_check_write", scope: !4684, file: !4684, line: 44, type: !4685, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4687)
!4684 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!641, !4654, !13}
!4687 = !{!4688, !4689}
!4688 = !DILocalVariable(name: "p", arg: 1, scope: !4683, file: !4684, line: 44, type: !4654)
!4689 = !DILocalVariable(name: "size", arg: 2, scope: !4683, file: !4684, line: 44, type: !13)
!4690 = !DILocation(line: 44, column: 59, scope: !4683)
!4691 = !DILocation(line: 44, column: 75, scope: !4683)
!4692 = !DILocation(line: 46, column: 2, scope: !4683)
!4693 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4694, file: !4694, line: 229, type: !4695, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4697)
!4694 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !4654, !334, !167}
!4697 = !{!4698, !4699, !4700}
!4698 = !DILocalVariable(name: "ptr", arg: 1, scope: !4693, file: !4694, line: 229, type: !4654)
!4699 = !DILocalVariable(name: "size", arg: 2, scope: !4693, file: !4694, line: 229, type: !334)
!4700 = !DILocalVariable(name: "type", arg: 3, scope: !4693, file: !4694, line: 230, type: !167)
!4701 = !DILocation(line: 229, column: 60, scope: !4693)
!4702 = !DILocation(line: 229, column: 72, scope: !4693)
!4703 = !DILocation(line: 230, column: 15, scope: !4693)
!4704 = !DILocation(line: 230, column: 23, scope: !4693)
!4705 = distinct !DISubprogram(name: "raw_atomic_fetch_add_unless", scope: !4668, file: !4668, line: 2399, type: !4706, scopeLine: 2400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4708)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!167, !3988, !167, !167}
!4708 = !{!4709, !4710, !4711, !4712}
!4709 = !DILocalVariable(name: "v", arg: 1, scope: !4705, file: !4668, line: 2399, type: !3988)
!4710 = !DILocalVariable(name: "a", arg: 2, scope: !4705, file: !4668, line: 2399, type: !167)
!4711 = !DILocalVariable(name: "u", arg: 3, scope: !4705, file: !4668, line: 2399, type: !167)
!4712 = !DILocalVariable(name: "c", scope: !4705, file: !4668, line: 2404, type: !167)
!4713 = !DILocation(line: 2399, column: 39, scope: !4705)
!4714 = !DILocation(line: 2399, column: 46, scope: !4705)
!4715 = !DILocation(line: 2399, column: 53, scope: !4705)
!4716 = !DILocation(line: 2404, column: 2, scope: !4705)
!4717 = !DILocation(line: 2404, column: 6, scope: !4705)
!4718 = !DILocation(line: 2404, column: 26, scope: !4705)
!4719 = !DILocation(line: 2404, column: 10, scope: !4705)
!4720 = !DILocation(line: 2406, column: 2, scope: !4705)
!4721 = !DILocation(line: 2407, column: 7, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !4668, line: 2407, column: 7)
!4723 = distinct !DILexicalBlock(scope: !4705, file: !4668, line: 2406, column: 5)
!4724 = !DILocation(line: 2407, column: 7, scope: !4723)
!4725 = !DILocation(line: 2408, column: 4, scope: !4722)
!4726 = !DILocation(line: 2409, column: 2, scope: !4723)
!4727 = !DILocation(line: 2409, column: 35, scope: !4705)
!4728 = !DILocation(line: 2409, column: 42, scope: !4705)
!4729 = !DILocation(line: 2409, column: 46, scope: !4705)
!4730 = !DILocation(line: 2409, column: 44, scope: !4705)
!4731 = !DILocation(line: 2409, column: 12, scope: !4705)
!4732 = !DILocation(line: 2409, column: 11, scope: !4705)
!4733 = distinct !{!4733, !4720, !4734, !2998, !2999}
!4734 = !DILocation(line: 2409, column: 48, scope: !4705)
!4735 = !DILocation(line: 2411, column: 9, scope: !4705)
!4736 = !DILocation(line: 2413, column: 1, scope: !4705)
!4737 = !DILocation(line: 2411, column: 2, scope: !4705)
!4738 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4668, file: !4668, line: 442, type: !4739, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4743)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!167, !4741}
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!4743 = !{!4744}
!4744 = !DILocalVariable(name: "v", arg: 1, scope: !4738, file: !4668, line: 442, type: !4741)
!4745 = !DILocation(line: 442, column: 33, scope: !4738)
!4746 = !DILocation(line: 444, column: 26, scope: !4738)
!4747 = !DILocation(line: 444, column: 9, scope: !4738)
!4748 = !DILocation(line: 444, column: 2, scope: !4738)
!4749 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !4668, file: !4668, line: 2109, type: !4750, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4752)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!641, !3988, !1012, !167}
!4752 = !{!4753, !4754, !4755}
!4753 = !DILocalVariable(name: "v", arg: 1, scope: !4749, file: !4668, line: 2109, type: !3988)
!4754 = !DILocalVariable(name: "old", arg: 2, scope: !4749, file: !4668, line: 2109, type: !1012)
!4755 = !DILocalVariable(name: "new", arg: 3, scope: !4749, file: !4668, line: 2109, type: !167)
!4756 = !DILocation(line: 2109, column: 34, scope: !4749)
!4757 = !DILocation(line: 2109, column: 42, scope: !4749)
!4758 = !DILocation(line: 2109, column: 51, scope: !4749)
!4759 = !DILocation(line: 2112, column: 33, scope: !4749)
!4760 = !DILocation(line: 2112, column: 36, scope: !4749)
!4761 = !DILocation(line: 2112, column: 41, scope: !4749)
!4762 = !DILocation(line: 2112, column: 9, scope: !4749)
!4763 = !DILocation(line: 2112, column: 2, scope: !4749)
!4764 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4765, file: !4765, line: 17, type: !4739, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4766)
!4765 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4766 = !{!4767}
!4767 = !DILocalVariable(name: "v", arg: 1, scope: !4764, file: !4765, line: 17, type: !4741)
!4768 = !DILocation(line: 17, column: 61, scope: !4764)
!4769 = !DILocation(line: 23, column: 9, scope: !4764)
!4770 = !DILocation(line: 23, column: 2, scope: !4764)
!4771 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !4765, file: !4765, line: 113, type: !4750, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4772)
!4772 = !{!4773, !4774, !4775, !4776, !4778, !4779, !4780, !4781}
!4773 = !DILocalVariable(name: "v", arg: 1, scope: !4771, file: !4765, line: 113, type: !3988)
!4774 = !DILocalVariable(name: "old", arg: 2, scope: !4771, file: !4765, line: 113, type: !1012)
!4775 = !DILocalVariable(name: "new", arg: 3, scope: !4771, file: !4765, line: 113, type: !167)
!4776 = !DILocalVariable(name: "success", scope: !4777, file: !4765, line: 115, type: !641)
!4777 = distinct !DILexicalBlock(scope: !4771, file: !4765, line: 115, column: 9)
!4778 = !DILocalVariable(name: "_old", scope: !4777, file: !4765, line: 115, type: !1012)
!4779 = !DILocalVariable(name: "__old", scope: !4777, file: !4765, line: 115, type: !167)
!4780 = !DILocalVariable(name: "__new", scope: !4777, file: !4765, line: 115, type: !167)
!4781 = !DILocalVariable(name: "__ptr", scope: !4777, file: !4765, line: 115, type: !2857)
!4782 = !DILocation(line: 113, column: 63, scope: !4771)
!4783 = !DILocation(line: 113, column: 71, scope: !4771)
!4784 = !DILocation(line: 113, column: 80, scope: !4771)
!4785 = !DILocation(line: 115, column: 9, scope: !4777)
!4786 = !{i64 2148395315, i64 2148395354, i64 2148395375, i64 2148395412, i64 2148395435, i64 2148395444, i64 2148395742}
!4787 = !DILocation(line: 115, column: 9, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4777, file: !4765, line: 115, column: 9)
!4789 = !DILocation(line: 115, column: 9, scope: !4771)
!4790 = !DILocation(line: 115, column: 2, scope: !4771)
!4791 = !DISubprogram(name: "cpufreq_remove_update_util_hook", scope: !2832, file: !2832, line: 23, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4792 = !DISubprogram(name: "synchronize_rcu", scope: !4793, file: !4793, line: 45, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4793 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4794 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4651, file: !4651, line: 80, type: !4652, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4795)
!4795 = !{!4796, !4797}
!4796 = !DILocalVariable(name: "v", arg: 1, scope: !4794, file: !4651, line: 80, type: !4654)
!4797 = !DILocalVariable(name: "size", arg: 2, scope: !4794, file: !4651, line: 80, type: !334)
!4798 = !DILocation(line: 80, column: 74, scope: !4794)
!4799 = !DILocation(line: 80, column: 84, scope: !4794)
!4800 = !DILocation(line: 82, column: 20, scope: !4794)
!4801 = !DILocation(line: 82, column: 23, scope: !4794)
!4802 = !DILocation(line: 82, column: 2, scope: !4794)
!4803 = !DILocation(line: 83, column: 2, scope: !4794)
!4804 = !DILocation(line: 84, column: 1, scope: !4794)
!4805 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4668, file: !4668, line: 488, type: !3986, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4806)
!4806 = !{!4807, !4808}
!4807 = !DILocalVariable(name: "v", arg: 1, scope: !4805, file: !4668, line: 488, type: !3988)
!4808 = !DILocalVariable(name: "i", arg: 2, scope: !4805, file: !4668, line: 488, type: !167)
!4809 = !DILocation(line: 488, column: 26, scope: !4805)
!4810 = !DILocation(line: 488, column: 33, scope: !4805)
!4811 = !DILocation(line: 490, column: 18, scope: !4805)
!4812 = !DILocation(line: 490, column: 21, scope: !4805)
!4813 = !DILocation(line: 490, column: 2, scope: !4805)
!4814 = !DILocation(line: 491, column: 1, scope: !4805)
!4815 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4765, file: !4765, line: 26, type: !3986, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4816)
!4816 = !{!4817, !4818}
!4817 = !DILocalVariable(name: "v", arg: 1, scope: !4815, file: !4765, line: 26, type: !3988)
!4818 = !DILocalVariable(name: "i", arg: 2, scope: !4815, file: !4765, line: 26, type: !167)
!4819 = !DILocation(line: 26, column: 55, scope: !4815)
!4820 = !DILocation(line: 26, column: 62, scope: !4815)
!4821 = !DILocation(line: 28, column: 2, scope: !4815)
!4822 = !DILocation(line: 28, column: 2, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4815, file: !4765, line: 28, column: 2)
!4824 = !DILocation(line: 29, column: 1, scope: !4815)
!4825 = !DISubprogram(name: "__cpufreq_driver_target", scope: !29, file: !29, line: 613, type: !4826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!167, !121, !13, !13}
