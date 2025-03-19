; ModuleID = 'drivers/cpufreq/cpufreq_ondemand.c'
source_filename = "drivers/cpufreq/cpufreq_ondemand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_od_register_powersave_bias_handler: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad od_register_powersave_bias_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_od_unregister_powersave_bias_handler: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad od_unregister_powersave_bias_handler ; .previous"
module asm ".section\09\22.initcall1.init..kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1:\09\09\09"
module asm ".long\09__initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.od_ops = type { ptr }
%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.16, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.18, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { i64, [88 x i8] }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
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
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dbs_data = type { %struct.gov_attr_set, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.od_dbs_tuners = type { i32 }
%struct.od_policy_dbs_info = type { %struct.policy_dbs_info, i32, i32, i32, i8 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.anon.17 = type { i8, i8, i8, i8 }

@od_ops = internal global %struct.od_ops { ptr @generic_powersave_bias_target }, align 8, !dbg !0
@__UNIQUE_ID___addressable_od_register_powersave_bias_handler267 = internal global ptr @od_register_powersave_bias_handler, section ".discard.addressable", align 8, !dbg !2811
@__UNIQUE_ID___addressable_od_unregister_powersave_bias_handler268 = internal global ptr @od_unregister_powersave_bias_handler, section ".discard.addressable", align 8, !dbg !2813
@__UNIQUE_ID_author269 = internal constant [76 x i8] c"cpufreq_ondemand.author=Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>\00", section ".modinfo", align 1, !dbg !2815
@__UNIQUE_ID_author270 = internal constant [78 x i8] c"cpufreq_ondemand.author=Alexey Starikovskiy <alexey.y.starikovskiy@intel.com>\00", section ".modinfo", align 1, !dbg !2820
@__UNIQUE_ID_description271 = internal constant [133 x i8] c"cpufreq_ondemand.description='cpufreq_ondemand' - A dynamic cpufreq governor for Low Latency Frequency Transition capable processors\00", section ".modinfo", align 1, !dbg !2825
@__UNIQUE_ID_file272 = internal constant [55 x i8] c"cpufreq_ondemand.file=drivers/cpufreq/cpufreq_ondemand\00", section ".modinfo", align 1, !dbg !2830
@__UNIQUE_ID_license273 = internal constant [29 x i8] c"cpufreq_ondemand.license=GPL\00", section ".modinfo", align 1, !dbg !2835
@__UNIQUE_ID___addressable___initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1275 = internal global ptr @__initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1, section ".discard.addressable", align 8, !dbg !2840
@od_dbs_gov = internal global %struct.dbs_governor { %struct.cpufreq_governor { [16 x i8] c"ondemand\00\00\00\00\00\00\00\00", ptr @cpufreq_dbs_governor_init, ptr @cpufreq_dbs_governor_exit, ptr @cpufreq_dbs_governor_start, ptr @cpufreq_dbs_governor_stop, ptr @cpufreq_dbs_governor_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 1 }, %struct.kobj_type { ptr null, ptr null, ptr @od_groups, ptr null, ptr null, ptr null }, ptr null, ptr @od_dbs_update, ptr @od_alloc, ptr @od_free, ptr @od_init, ptr @od_exit, ptr @od_start }, align 8, !dbg !2853
@__exitcall_CPU_FREQ_GOV_ONDEMAND_exit = internal global ptr @CPU_FREQ_GOV_ONDEMAND_exit, section ".exitcall.exit", align 8, !dbg !2842
@default_powersave_bias = internal global i32 0, align 4, !dbg !2846
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [24 x i8] c"include/linux/cpufreq.h\00", align 1, !dbg !2848
@od_groups = internal global [2 x ptr] [ptr @od_group, ptr null], align 16, !dbg !2855
@od_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @od_attrs, ptr null }, align 8, !dbg !2858
@od_attrs = internal global [7 x ptr] [ptr @sampling_rate, ptr @up_threshold, ptr @sampling_down_factor, ptr @ignore_nice_load, ptr @powersave_bias, ptr @io_is_busy, ptr null], align 16, !dbg !2860
@sampling_rate = internal global %struct.governor_attr { %struct.attribute { ptr @.str.1, i16 420 }, ptr @sampling_rate_show, ptr @sampling_rate_store }, align 8, !dbg !2868
@up_threshold = internal global %struct.governor_attr { %struct.attribute { ptr @.str.3, i16 420 }, ptr @up_threshold_show, ptr @up_threshold_store }, align 8, !dbg !2890
@sampling_down_factor = internal global %struct.governor_attr { %struct.attribute { ptr @.str.5, i16 420 }, ptr @sampling_down_factor_show, ptr @sampling_down_factor_store }, align 8, !dbg !2900
@ignore_nice_load = internal global %struct.governor_attr { %struct.attribute { ptr @.str.6, i16 420 }, ptr @ignore_nice_load_show, ptr @ignore_nice_load_store }, align 8, !dbg !2907
@powersave_bias = internal global %struct.governor_attr { %struct.attribute { ptr @.str.7, i16 420 }, ptr @powersave_bias_show, ptr @powersave_bias_store }, align 8, !dbg !2914
@io_is_busy = internal global %struct.governor_attr { %struct.attribute { ptr @.str.8, i16 420 }, ptr @io_is_busy_show, ptr @io_is_busy_store }, align 8, !dbg !2921
@.str.1 = private unnamed_addr constant [14 x i8] c"sampling_rate\00", align 1, !dbg !2863
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !2882
@.str.3 = private unnamed_addr constant [13 x i8] c"up_threshold\00", align 1, !dbg !2885
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !2892
@.str.5 = private unnamed_addr constant [21 x i8] c"sampling_down_factor\00", align 1, !dbg !2895
@.str.6 = private unnamed_addr constant [17 x i8] c"ignore_nice_load\00", align 1, !dbg !2902
@.str.7 = private unnamed_addr constant [15 x i8] c"powersave_bias\00", align 1, !dbg !2909
@.str.8 = private unnamed_addr constant [11 x i8] c"io_is_busy\00", align 1, !dbg !2916
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2923
@.str.10 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !2925
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@od_init.__UNIQUE_ID___addressable___SCK__preempt_schedule266 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2930
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_od_register_powersave_bias_handler267, ptr @__UNIQUE_ID___addressable_od_unregister_powersave_bias_handler268, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__UNIQUE_ID___addressable___initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1275, ptr @CPU_FREQ_GOV_ONDEMAND_exit, ptr @__exitcall_CPU_FREQ_GOV_ONDEMAND_exit, ptr @od_init.__UNIQUE_ID___addressable___SCK__preempt_schedule266], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @od_register_powersave_bias_handler(ptr noundef %f, i32 noundef %powersave_bias) #0 align 16 !dbg !2966 {
entry:
  %f.addr = alloca ptr, align 8
  %powersave_bias.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2970, metadata !DIExpression()), !dbg !2972
  store i32 %powersave_bias, ptr %powersave_bias.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %powersave_bias.addr, metadata !2971, metadata !DIExpression()), !dbg !2973
  %0 = load ptr, ptr %f.addr, align 8, !dbg !2974
  store ptr %0, ptr @od_ops, align 8, !dbg !2975
  %1 = load i32, ptr %powersave_bias.addr, align 4, !dbg !2976
  call void @od_set_powersave_bias(i32 noundef %1) #18, !dbg !2977
  ret void, !dbg !2978
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @od_set_powersave_bias(i32 noundef %powersave_bias) #0 align 16 !dbg !2979 {
entry:
  %powersave_bias.addr = alloca i32, align 4
  %cpu = alloca i32, align 4
  %done = alloca [1 x %struct.cpumask], align 8
  %cleanup.dest.slot = alloca i32, align 4
  %policy = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %od_tuners = alloca ptr, align 8
  store i32 %powersave_bias, ptr %powersave_bias.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %powersave_bias.addr, metadata !2983, metadata !DIExpression()), !dbg !2993
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #19, !dbg !2994
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2984, metadata !DIExpression()), !dbg !2995
  call void @llvm.lifetime.start.p0(i64 8, ptr %done) #19, !dbg !2996
  call void @llvm.dbg.declare(metadata ptr %done, metadata !2985, metadata !DIExpression()), !dbg !2997
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %done, i32 noundef 3264) #18, !dbg !2998
  br i1 %call, label %if.end, label %if.then, !dbg !3000

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !3001

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %powersave_bias.addr, align 4, !dbg !3002
  store i32 %0, ptr @default_powersave_bias, align 4, !dbg !3003
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %done, i64 0, i64 0, !dbg !3004
  call void @cpumask_clear(ptr noundef %arraydecay) #18, !dbg !3005
  call void @cpus_read_lock() #18, !dbg !3006
  store i32 0, ptr %cpu, align 4, !dbg !3007
  br label %for.cond, !dbg !3007

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %cpu, align 4, !dbg !3008
  %conv = zext i32 %1 to i64, !dbg !3008
  %call1 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #18, !dbg !3008
  %conv2 = trunc i64 %call1 to i32, !dbg !3008
  store i32 %conv2, ptr %cpu, align 4, !dbg !3008
  %2 = load i32, ptr %cpu, align 4, !dbg !3008
  %cmp = icmp ult i32 %2, 64, !dbg !3008
  br i1 %cmp, label %for.body, label %for.end, !dbg !3007

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #19, !dbg !3009
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !2986, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !2990, metadata !DIExpression()), !dbg !3012
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !3013
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !2991, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.start.p0(i64 8, ptr %od_tuners) #19, !dbg !3015
  call void @llvm.dbg.declare(metadata ptr %od_tuners, metadata !2992, metadata !DIExpression()), !dbg !3016
  %3 = load i32, ptr %cpu, align 4, !dbg !3017
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %done, i64 0, i64 0, !dbg !3019
  %call5 = call zeroext i1 @cpumask_test_cpu(i32 noundef %3, ptr noundef %arraydecay4) #18, !dbg !3020
  br i1 %call5, label %if.then6, label %if.end7, !dbg !3021

if.then6:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3022

if.end7:                                          ; preds = %for.body
  %4 = load i32, ptr %cpu, align 4, !dbg !3023
  %call8 = call ptr @cpufreq_cpu_get_raw(i32 noundef %4) #18, !dbg !3024
  store ptr %call8, ptr %policy, align 8, !dbg !3025
  %5 = load ptr, ptr %policy, align 8, !dbg !3026
  %tobool = icmp ne ptr %5, null, !dbg !3026
  br i1 %tobool, label %lor.lhs.false, label %if.then11, !dbg !3028

lor.lhs.false:                                    ; preds = %if.end7
  %6 = load ptr, ptr %policy, align 8, !dbg !3029
  %governor = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13, !dbg !3030
  %7 = load ptr, ptr %governor, align 8, !dbg !3030
  %cmp9 = icmp ne ptr %7, @od_dbs_gov, !dbg !3031
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !3032

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3033

if.end12:                                         ; preds = %lor.lhs.false
  %8 = load ptr, ptr %policy, align 8, !dbg !3034
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %8, i32 0, i32 14, !dbg !3035
  %9 = load ptr, ptr %governor_data, align 8, !dbg !3035
  store ptr %9, ptr %policy_dbs, align 8, !dbg !3036
  %10 = load ptr, ptr %policy_dbs, align 8, !dbg !3037
  %tobool13 = icmp ne ptr %10, null, !dbg !3037
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !3039

if.then14:                                        ; preds = %if.end12
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3040

if.end15:                                         ; preds = %if.end12
  %arraydecay16 = getelementptr inbounds [1 x %struct.cpumask], ptr %done, i64 0, i64 0, !dbg !3041
  %arraydecay17 = getelementptr inbounds [1 x %struct.cpumask], ptr %done, i64 0, i64 0, !dbg !3042
  %11 = load ptr, ptr %policy, align 8, !dbg !3043
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %11, i32 0, i32 0, !dbg !3044
  %arraydecay18 = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3043
  call void @cpumask_or(ptr noundef %arraydecay16, ptr noundef %arraydecay17, ptr noundef %arraydecay18) #18, !dbg !3045
  %12 = load ptr, ptr %policy_dbs, align 8, !dbg !3046
  %dbs_data19 = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 7, !dbg !3047
  %13 = load ptr, ptr %dbs_data19, align 8, !dbg !3047
  store ptr %13, ptr %dbs_data, align 8, !dbg !3048
  %14 = load ptr, ptr %dbs_data, align 8, !dbg !3049
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %14, i32 0, i32 2, !dbg !3050
  %15 = load ptr, ptr %tuners, align 8, !dbg !3050
  store ptr %15, ptr %od_tuners, align 8, !dbg !3051
  %16 = load i32, ptr @default_powersave_bias, align 4, !dbg !3052
  %17 = load ptr, ptr %od_tuners, align 8, !dbg !3053
  %powersave_bias20 = getelementptr inbounds %struct.od_dbs_tuners, ptr %17, i32 0, i32 0, !dbg !3054
  store i32 %16, ptr %powersave_bias20, align 4, !dbg !3055
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3056
  br label %cleanup, !dbg !3056

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then11, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %od_tuners) #19, !dbg !3056
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !3056
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !3056
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #19, !dbg !3056
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3057

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %18 = load i32, ptr %cpu, align 4, !dbg !3008
  %inc = add i32 %18, 1, !dbg !3008
  store i32 %inc, ptr %cpu, align 4, !dbg !3008
  br label %for.cond, !dbg !3008, !llvm.loop !3058

for.end:                                          ; preds = %for.cond
  call void @cpus_read_unlock() #18, !dbg !3062
  %arraydecay24 = getelementptr inbounds [1 x %struct.cpumask], ptr %done, i64 0, i64 0, !dbg !3063
  call void @free_cpumask_var(ptr noundef %arraydecay24) #18, !dbg !3064
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3065
  br label %cleanup25, !dbg !3065

cleanup25:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %done) #19, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #19, !dbg !3065
  %cleanup.dest27 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest27, label %unreachable [
    i32 0, label %cleanup.cont28
    i32 1, label %cleanup.cont28
  ]

cleanup.cont28:                                   ; preds = %cleanup25, %cleanup25
  ret void, !dbg !3065

unreachable:                                      ; preds = %cleanup25, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @od_unregister_powersave_bias_handler() #0 align 16 !dbg !3066 {
entry:
  store ptr @generic_powersave_bias_target, ptr @od_ops, align 8, !dbg !3067
  call void @od_set_powersave_bias(i32 noundef 0) #18, !dbg !3068
  ret void, !dbg !3069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @generic_powersave_bias_target(ptr noundef %policy, i32 noundef %freq_next, i32 noundef %relation) #0 align 16 !dbg !3070 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %freq_next.addr = alloca i32, align 4
  %relation.addr = alloca i32, align 4
  %freq_req = alloca i32, align 4
  %freq_reduc = alloca i32, align 4
  %freq_avg = alloca i32, align 4
  %freq_hi = alloca i32, align 4
  %freq_lo = alloca i32, align 4
  %index = alloca i32, align 4
  %delay_hi_us = alloca i32, align 4
  %policy_dbs = alloca ptr, align 8
  %dbs_info = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %od_tuners = alloca ptr, align 8
  %freq_table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3072, metadata !DIExpression()), !dbg !3087
  store i32 %freq_next, ptr %freq_next.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq_next.addr, metadata !3073, metadata !DIExpression()), !dbg !3088
  store i32 %relation, ptr %relation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relation.addr, metadata !3074, metadata !DIExpression()), !dbg !3089
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq_req) #19, !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %freq_req, metadata !3075, metadata !DIExpression()), !dbg !3091
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq_reduc) #19, !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %freq_reduc, metadata !3076, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq_avg) #19, !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %freq_avg, metadata !3077, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq_hi) #19, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %freq_hi, metadata !3078, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq_lo) #19, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %freq_lo, metadata !3079, metadata !DIExpression()), !dbg !3096
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !3097
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3080, metadata !DIExpression()), !dbg !3098
  call void @llvm.lifetime.start.p0(i64 4, ptr %delay_hi_us) #19, !dbg !3099
  call void @llvm.dbg.declare(metadata ptr %delay_hi_us, metadata !3081, metadata !DIExpression()), !dbg !3100
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !3101
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !3082, metadata !DIExpression()), !dbg !3102
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3103
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !3104
  %1 = load ptr, ptr %governor_data, align 8, !dbg !3104
  store ptr %1, ptr %policy_dbs, align 8, !dbg !3102
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_info) #19, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %dbs_info, metadata !3083, metadata !DIExpression()), !dbg !3106
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !3107
  %call = call ptr @to_dbs_info(ptr noundef %2) #18, !dbg !3108
  store ptr %call, ptr %dbs_info, align 8, !dbg !3106
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !3109
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !3084, metadata !DIExpression()), !dbg !3110
  %3 = load ptr, ptr %policy_dbs, align 8, !dbg !3111
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 7, !dbg !3112
  %4 = load ptr, ptr %dbs_data1, align 8, !dbg !3112
  store ptr %4, ptr %dbs_data, align 8, !dbg !3110
  call void @llvm.lifetime.start.p0(i64 8, ptr %od_tuners) #19, !dbg !3113
  call void @llvm.dbg.declare(metadata ptr %od_tuners, metadata !3085, metadata !DIExpression()), !dbg !3114
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !3115
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 2, !dbg !3116
  %6 = load ptr, ptr %tuners, align 8, !dbg !3116
  store ptr %6, ptr %od_tuners, align 8, !dbg !3114
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq_table) #19, !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %freq_table, metadata !3086, metadata !DIExpression()), !dbg !3118
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !3119
  %freq_table2 = getelementptr inbounds %struct.cpufreq_policy, ptr %7, i32 0, i32 20, !dbg !3120
  %8 = load ptr, ptr %freq_table2, align 8, !dbg !3120
  store ptr %8, ptr %freq_table, align 8, !dbg !3118
  %9 = load ptr, ptr %freq_table, align 8, !dbg !3121
  %tobool = icmp ne ptr %9, null, !dbg !3121
  br i1 %tobool, label %if.end, label %if.then, !dbg !3123

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %dbs_info, align 8, !dbg !3124
  %freq_lo3 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %10, i32 0, i32 1, !dbg !3126
  store i32 0, ptr %freq_lo3, align 8, !dbg !3127
  %11 = load ptr, ptr %dbs_info, align 8, !dbg !3128
  %freq_lo_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %11, i32 0, i32 2, !dbg !3129
  store i32 0, ptr %freq_lo_delay_us, align 4, !dbg !3130
  %12 = load i32, ptr %freq_next.addr, align 4, !dbg !3131
  store i32 %12, ptr %retval, align 4, !dbg !3132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3132

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %policy.addr, align 8, !dbg !3133
  %14 = load i32, ptr %freq_next.addr, align 4, !dbg !3134
  %15 = load i32, ptr %relation.addr, align 4, !dbg !3135
  %call4 = call i32 @cpufreq_frequency_table_target(ptr noundef %13, i32 noundef %14, i32 noundef %15) #18, !dbg !3136
  store i32 %call4, ptr %index, align 4, !dbg !3137
  %16 = load ptr, ptr %freq_table, align 8, !dbg !3138
  %17 = load i32, ptr %index, align 4, !dbg !3139
  %idxprom = zext i32 %17 to i64, !dbg !3138
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %16, i64 %idxprom, !dbg !3138
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 2, !dbg !3140
  %18 = load i32, ptr %frequency, align 4, !dbg !3140
  store i32 %18, ptr %freq_req, align 4, !dbg !3141
  %19 = load i32, ptr %freq_req, align 4, !dbg !3142
  %20 = load ptr, ptr %od_tuners, align 8, !dbg !3143
  %powersave_bias = getelementptr inbounds %struct.od_dbs_tuners, ptr %20, i32 0, i32 0, !dbg !3144
  %21 = load i32, ptr %powersave_bias, align 4, !dbg !3144
  %mul = mul i32 %19, %21, !dbg !3145
  %div = udiv i32 %mul, 1000, !dbg !3146
  store i32 %div, ptr %freq_reduc, align 4, !dbg !3147
  %22 = load i32, ptr %freq_req, align 4, !dbg !3148
  %23 = load i32, ptr %freq_reduc, align 4, !dbg !3149
  %sub = sub i32 %22, %23, !dbg !3150
  store i32 %sub, ptr %freq_avg, align 4, !dbg !3151
  %24 = load ptr, ptr %policy.addr, align 8, !dbg !3152
  %25 = load i32, ptr %freq_avg, align 4, !dbg !3153
  %26 = load i32, ptr %relation.addr, align 4, !dbg !3154
  %conv = zext i32 %26 to i64, !dbg !3154
  %and = and i64 %conv, 4, !dbg !3155
  %tobool5 = icmp ne i64 %and, 0, !dbg !3154
  %call6 = call i32 @cpufreq_table_find_index_h(ptr noundef %24, i32 noundef %25, i1 noundef zeroext %tobool5) #18, !dbg !3156
  store i32 %call6, ptr %index, align 4, !dbg !3157
  %27 = load ptr, ptr %freq_table, align 8, !dbg !3158
  %28 = load i32, ptr %index, align 4, !dbg !3159
  %idxprom7 = zext i32 %28 to i64, !dbg !3158
  %arrayidx8 = getelementptr %struct.cpufreq_frequency_table, ptr %27, i64 %idxprom7, !dbg !3158
  %frequency9 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx8, i32 0, i32 2, !dbg !3160
  %29 = load i32, ptr %frequency9, align 4, !dbg !3160
  store i32 %29, ptr %freq_lo, align 4, !dbg !3161
  %30 = load ptr, ptr %policy.addr, align 8, !dbg !3162
  %31 = load i32, ptr %freq_avg, align 4, !dbg !3163
  %32 = load i32, ptr %relation.addr, align 4, !dbg !3164
  %conv10 = zext i32 %32 to i64, !dbg !3164
  %and11 = and i64 %conv10, 4, !dbg !3165
  %tobool12 = icmp ne i64 %and11, 0, !dbg !3164
  %call13 = call i32 @cpufreq_table_find_index_l(ptr noundef %30, i32 noundef %31, i1 noundef zeroext %tobool12) #18, !dbg !3166
  store i32 %call13, ptr %index, align 4, !dbg !3167
  %33 = load ptr, ptr %freq_table, align 8, !dbg !3168
  %34 = load i32, ptr %index, align 4, !dbg !3169
  %idxprom14 = zext i32 %34 to i64, !dbg !3168
  %arrayidx15 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i64 %idxprom14, !dbg !3168
  %frequency16 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx15, i32 0, i32 2, !dbg !3170
  %35 = load i32, ptr %frequency16, align 4, !dbg !3170
  store i32 %35, ptr %freq_hi, align 4, !dbg !3171
  %36 = load i32, ptr %freq_hi, align 4, !dbg !3172
  %37 = load i32, ptr %freq_lo, align 4, !dbg !3174
  %cmp = icmp eq i32 %36, %37, !dbg !3175
  br i1 %cmp, label %if.then18, label %if.end21, !dbg !3176

if.then18:                                        ; preds = %if.end
  %38 = load ptr, ptr %dbs_info, align 8, !dbg !3177
  %freq_lo19 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %38, i32 0, i32 1, !dbg !3179
  store i32 0, ptr %freq_lo19, align 8, !dbg !3180
  %39 = load ptr, ptr %dbs_info, align 8, !dbg !3181
  %freq_lo_delay_us20 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %39, i32 0, i32 2, !dbg !3182
  store i32 0, ptr %freq_lo_delay_us20, align 4, !dbg !3183
  %40 = load i32, ptr %freq_lo, align 4, !dbg !3184
  store i32 %40, ptr %retval, align 4, !dbg !3185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3185

if.end21:                                         ; preds = %if.end
  %41 = load i32, ptr %freq_avg, align 4, !dbg !3186
  %42 = load i32, ptr %freq_lo, align 4, !dbg !3187
  %sub22 = sub i32 %41, %42, !dbg !3188
  %43 = load ptr, ptr %dbs_data, align 8, !dbg !3189
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %43, i32 0, i32 4, !dbg !3190
  %44 = load i32, ptr %sampling_rate, align 4, !dbg !3190
  %mul23 = mul i32 %sub22, %44, !dbg !3191
  store i32 %mul23, ptr %delay_hi_us, align 4, !dbg !3192
  %45 = load i32, ptr %freq_hi, align 4, !dbg !3193
  %46 = load i32, ptr %freq_lo, align 4, !dbg !3194
  %sub24 = sub i32 %45, %46, !dbg !3195
  %div25 = udiv i32 %sub24, 2, !dbg !3196
  %47 = load i32, ptr %delay_hi_us, align 4, !dbg !3197
  %add = add i32 %47, %div25, !dbg !3197
  store i32 %add, ptr %delay_hi_us, align 4, !dbg !3197
  %48 = load i32, ptr %freq_hi, align 4, !dbg !3198
  %49 = load i32, ptr %freq_lo, align 4, !dbg !3199
  %sub26 = sub i32 %48, %49, !dbg !3200
  %50 = load i32, ptr %delay_hi_us, align 4, !dbg !3201
  %div27 = udiv i32 %50, %sub26, !dbg !3201
  store i32 %div27, ptr %delay_hi_us, align 4, !dbg !3201
  %51 = load i32, ptr %delay_hi_us, align 4, !dbg !3202
  %52 = load ptr, ptr %dbs_info, align 8, !dbg !3203
  %freq_hi_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %52, i32 0, i32 3, !dbg !3204
  store i32 %51, ptr %freq_hi_delay_us, align 8, !dbg !3205
  %53 = load i32, ptr %freq_lo, align 4, !dbg !3206
  %54 = load ptr, ptr %dbs_info, align 8, !dbg !3207
  %freq_lo28 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %54, i32 0, i32 1, !dbg !3208
  store i32 %53, ptr %freq_lo28, align 8, !dbg !3209
  %55 = load ptr, ptr %dbs_data, align 8, !dbg !3210
  %sampling_rate29 = getelementptr inbounds %struct.dbs_data, ptr %55, i32 0, i32 4, !dbg !3211
  %56 = load i32, ptr %sampling_rate29, align 4, !dbg !3211
  %57 = load i32, ptr %delay_hi_us, align 4, !dbg !3212
  %sub30 = sub i32 %56, %57, !dbg !3213
  %58 = load ptr, ptr %dbs_info, align 8, !dbg !3214
  %freq_lo_delay_us31 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %58, i32 0, i32 2, !dbg !3215
  store i32 %sub30, ptr %freq_lo_delay_us31, align 4, !dbg !3216
  %59 = load i32, ptr %freq_hi, align 4, !dbg !3217
  store i32 %59, ptr %retval, align 4, !dbg !3218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3218

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq_table) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %od_tuners) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_info) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %delay_hi_us) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq_lo) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq_hi) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq_avg) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq_reduc) #19, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq_req) #19, !dbg !3219
  %60 = load i32, ptr %retval, align 4, !dbg !3219
  ret i32 %60, !dbg !3219
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1() #2 section ".init.text" align 16 !dbg !3220 {
entry:
  %call = call i32 @CPU_FREQ_GOV_ONDEMAND_init() #20, !dbg !3221
  ret i32 %call, !dbg !3221
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @CPU_FREQ_GOV_ONDEMAND_init() #2 section ".init.text" align 16 !dbg !3222 {
entry:
  %call = call i32 @cpufreq_register_governor(ptr noundef @od_dbs_gov) #18, !dbg !3223
  ret i32 %call, !dbg !3223
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @CPU_FREQ_GOV_ONDEMAND_exit() #2 section ".exit.text" align 16 !dbg !3224 {
entry:
  call void @cpufreq_unregister_governor(ptr noundef @od_dbs_gov) #18, !dbg !3225
  ret void, !dbg !3225
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3226 dso_local void @cpufreq_unregister_governor(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #5 align 16 !dbg !3229 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3234, metadata !DIExpression()), !dbg !3236
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3235, metadata !DIExpression()), !dbg !3237
  ret i1 true, !dbg !3238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #5 align 16 !dbg !3239 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3244, metadata !DIExpression()), !dbg !3245
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !3246
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3246
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3246
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #18, !dbg !3247
  ret void, !dbg !3248
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3249 dso_local void @cpus_read_lock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !3251 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3258, metadata !DIExpression()), !dbg !3264
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3259, metadata !DIExpression()), !dbg !3265
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3260, metadata !DIExpression()), !dbg !3266
  %0 = load i64, ptr %size.addr, align 8, !dbg !3267
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3267
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3267

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3267
  %cmp = icmp ule i64 %2, 64, !dbg !3267
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3267

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3267
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3267
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3268

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !3269
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3261, metadata !DIExpression()), !dbg !3270
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3271
  %5 = load i64, ptr %size.addr, align 8, !dbg !3271
  %cmp3 = icmp uge i64 %4, %5, !dbg !3271
  %lnot = xor i1 %cmp3, true, !dbg !3271
  %lnot4 = xor i1 %lnot, true, !dbg !3271
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3271
  %conv = sext i32 %lnot.ext to i64, !dbg !3271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3271
  %tobool = icmp ne i64 %expval, 0, !dbg !3271
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3273

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3274
  store i64 %6, ptr %retval, align 8, !dbg !3275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3275

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3276
  %8 = load i64, ptr %7, align 8, !dbg !3277
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3278
  %shl = shl i64 1, %9, !dbg !3278
  %sub = sub i64 -1, %shl, !dbg !3278
  %add = add i64 %sub, 1, !dbg !3278
  %10 = load i64, ptr %size.addr, align 8, !dbg !3278
  %sub6 = sub i64 %10, 1, !dbg !3278
  %sub7 = sub i64 63, %sub6, !dbg !3278
  %shr = lshr i64 -1, %sub7, !dbg !3278
  %and = and i64 %add, %shr, !dbg !3278
  %add8 = add i64 0, %and, !dbg !3278
  %and9 = and i64 %8, %add8, !dbg !3279
  store i64 %and9, ptr %val, align 8, !dbg !3280
  %11 = load i64, ptr %val, align 8, !dbg !3281
  %tobool10 = icmp ne i64 %11, 0, !dbg !3281
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3281

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3282
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3282
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3282

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3282
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3282
  %cast = trunc i64 %15 to i32, !dbg !3282
  %conv12 = sext i32 %cast to i64, !dbg !3282
  br label %cond.end, !dbg !3282

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3282
  %call = call i64 @variable__ffs(i64 noundef %16) #18, !dbg !3282
  br label %cond.end, !dbg !3282

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3282
  br label %cond.end14, !dbg !3281

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3283
  br label %cond.end14, !dbg !3281

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3281
  store i64 %cond15, ptr %retval, align 8, !dbg !3284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3284

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !3285
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3286
  %19 = load i64, ptr %size.addr, align 8, !dbg !3287
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3288
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #18, !dbg !3289
  store i64 %call17, ptr %retval, align 8, !dbg !3290
  br label %return, !dbg !3290

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3291
  ret i64 %21, !dbg !3291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !3292 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3296, metadata !DIExpression()), !dbg !3298
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !3297, metadata !DIExpression()), !dbg !3299
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3300
  %call = call i32 @cpumask_check(i32 noundef %0) #18, !dbg !3300
  %conv = zext i32 %call to i64, !dbg !3300
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !3300
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3300
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3300
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #18, !dbg !3300
  ret i1 %call1, !dbg !3301
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3302 dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_or(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #5 align 16 !dbg !3305 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3309, metadata !DIExpression()), !dbg !3312
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !3310, metadata !DIExpression()), !dbg !3313
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !3311, metadata !DIExpression()), !dbg !3314
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !3315
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3315
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3315
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !3316
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3316
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !3316
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !3317
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !3317
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !3317
  call void @bitmap_or(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #18, !dbg !3318
  ret void, !dbg !3319
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3320 dso_local void @cpus_read_unlock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #5 align 16 !dbg !3321 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3323, metadata !DIExpression()), !dbg !3324
  ret void, !dbg !3325
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #5 align 16 !dbg !3326 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3331, metadata !DIExpression()), !dbg !3334
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #19, !dbg !3336
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3333, metadata !DIExpression()), !dbg !3337
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3338
  %add = add i32 %0, 63, !dbg !3338
  %and = and i32 %add, -64, !dbg !3338
  %div = udiv i32 %and, 8, !dbg !3338
  store i32 %div, ptr %len, align 4, !dbg !3337
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !3339
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !3339
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !3339

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3339
  %cmp = icmp ule i32 %3, 64, !dbg !3339
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3339

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !3339
  %cmp2 = icmp ugt i32 %4, 0, !dbg !3339
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3341

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !3342
  store i64 0, ptr %5, align 8, !dbg !3343
  br label %if.end, !dbg !3344

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !3345
  %7 = load i32, ptr %len, align 4, !dbg !3346
  %conv = zext i32 %7 to i64, !dbg !3346
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !3347
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #19, !dbg !3348
  ret void, !dbg !3348
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !3349 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  %0 = load i64, ptr %word.addr, align 8, !dbg !3356
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !3357, !srcloc !3358
  store i64 %1, ptr %word.addr, align 8, !dbg !3357
  %2 = load i64, ptr %word.addr, align 8, !dbg !3359
  ret i64 %2, !dbg !3360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3361 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3362 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3370, metadata !DIExpression()), !dbg !3372
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3371, metadata !DIExpression()), !dbg !3373
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3374
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3375
  %div = udiv i64 %1, 64, !dbg !3375
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3376
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !3377
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3378
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3379
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !3380
  ret i1 %call, !dbg !3381
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !3382 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3386, metadata !DIExpression()), !dbg !3387
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3388
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #18, !dbg !3389
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3390
  ret i32 %1, !dbg !3391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3392 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3400, metadata !DIExpression()), !dbg !3402
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3401, metadata !DIExpression()), !dbg !3403
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3404
  %1 = load i64, ptr %size.addr, align 8, !dbg !3405
  %conv = trunc i64 %1 to i32, !dbg !3405
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !3406
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3407
  %3 = load i64, ptr %size.addr, align 8, !dbg !3407
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !3407
  ret void, !dbg !3408
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3409 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3411, metadata !DIExpression()), !dbg !3413
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3412, metadata !DIExpression()), !dbg !3414
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3415
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3416
  br i1 %1, label %cond.true, label %cond.false, !dbg !3416

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3417
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3418
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !3419
  %conv = zext i1 %call to i32, !dbg !3419
  br label %cond.end, !dbg !3416

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3420
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3421
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !3422
  %conv2 = zext i1 %call1 to i32, !dbg !3422
  br label %cond.end, !dbg !3416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3416
  %tobool = icmp ne i32 %cond, 0, !dbg !3416
  ret i1 %tobool, !dbg !3423
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3424 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3429, metadata !DIExpression()), !dbg !3431
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3430, metadata !DIExpression()), !dbg !3432
  ret i1 true, !dbg !3433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !3434 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3439, metadata !DIExpression()), !dbg !3442
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3440, metadata !DIExpression()), !dbg !3443
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3441, metadata !DIExpression()), !dbg !3444
  ret void, !dbg !3445
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3446 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3450, metadata !DIExpression()), !dbg !3452
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3451, metadata !DIExpression()), !dbg !3453
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3454
  %and = and i64 %0, 63, !dbg !3455
  %shl = shl i64 1, %and, !dbg !3456
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3457
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3458
  %shr = ashr i64 %2, 6, !dbg !3459
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3457
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3457
  %and1 = and i64 %shl, %3, !dbg !3460
  %cmp = icmp ne i64 %and1, 0, !dbg !3461
  ret i1 %cmp, !dbg !3462
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3463 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3465, metadata !DIExpression()), !dbg !3468
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3466, metadata !DIExpression()), !dbg !3469
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !3470
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3467, metadata !DIExpression()), !dbg !3471
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3472
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3473
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !3474, !srcloc !3475
  %3 = icmp ult i8 %2, 2, !dbg !3474
  call void @llvm.assume(i1 %3), !dbg !3474
  store i8 %2, ptr %oldbit, align 1, !dbg !3474
  %4 = load i8, ptr %oldbit, align 1, !dbg !3476, !range !3477, !noundef !391
  %tobool = trunc i8 %4 to i1, !dbg !3476
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !3478
  ret i1 %tobool, !dbg !3479
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !3480 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3484, metadata !DIExpression()), !dbg !3486
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3485, metadata !DIExpression()), !dbg !3487
  ret void, !dbg !3488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_or(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #5 align 16 !dbg !3489 {
entry:
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3493, metadata !DIExpression()), !dbg !3497
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !3494, metadata !DIExpression()), !dbg !3498
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !3495, metadata !DIExpression()), !dbg !3499
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3496, metadata !DIExpression()), !dbg !3500
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3501
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3501
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !3501

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3501
  %cmp = icmp ule i32 %2, 64, !dbg !3501
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3501

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3501
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3501
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3503

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !3504
  %5 = load i64, ptr %4, align 8, !dbg !3505
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !3506
  %7 = load i64, ptr %6, align 8, !dbg !3507
  %or = or i64 %5, %7, !dbg !3508
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !3509
  store i64 %or, ptr %8, align 8, !dbg !3510
  br label %if.end, !dbg !3511

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !3512
  %10 = load ptr, ptr %src1.addr, align 8, !dbg !3513
  %11 = load ptr, ptr %src2.addr, align 8, !dbg !3514
  %12 = load i32, ptr %nbits.addr, align 4, !dbg !3515
  call void @__bitmap_or(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12) #18, !dbg !3516
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3518 dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_dbs_info(ptr noundef %policy_dbs) #5 align 16 !dbg !3519 {
entry:
  %policy_dbs.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %policy_dbs, ptr %policy_dbs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy_dbs.addr, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !3527
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3524, metadata !DIExpression()), !dbg !3527
  %0 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !3527
  store ptr %0, ptr %__mptr, align 8, !dbg !3527
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3527
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3527
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !3528
  %2 = load ptr, ptr %tmp, align 8, !dbg !3527
  ret ptr %2, !dbg !3529
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_frequency_table_target(ptr noundef %policy, i32 noundef %target_freq, i32 noundef %relation) #5 align 16 !dbg !3530 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %relation.addr = alloca i32, align 4
  %efficiencies = alloca i8, align 1
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3534, metadata !DIExpression()), !dbg !3546
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3535, metadata !DIExpression()), !dbg !3547
  store i32 %relation, ptr %relation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relation.addr, metadata !3536, metadata !DIExpression()), !dbg !3548
  call void @llvm.lifetime.start.p0(i64 1, ptr %efficiencies) #19, !dbg !3549
  call void @llvm.dbg.declare(metadata ptr %efficiencies, metadata !3537, metadata !DIExpression()), !dbg !3550
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3551
  %efficiencies_available = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 29, !dbg !3552
  %1 = load i8, ptr %efficiencies_available, align 1, !dbg !3552, !range !3477, !noundef !391
  %tobool = trunc i8 %1 to i1, !dbg !3552
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3553

land.rhs:                                         ; preds = %entry
  %2 = load i32, ptr %relation.addr, align 4, !dbg !3554
  %conv = zext i32 %2 to i64, !dbg !3554
  %and = and i64 %conv, 4, !dbg !3555
  %tobool1 = icmp ne i64 %and, 0, !dbg !3553
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !3556
  %frombool = zext i1 %3 to i8, !dbg !3550
  store i8 %frombool, ptr %efficiencies, align 1, !dbg !3550
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !3557
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3538, metadata !DIExpression()), !dbg !3558
  %4 = load i32, ptr %relation.addr, align 4, !dbg !3559
  %conv2 = zext i32 %4 to i64, !dbg !3559
  %and3 = and i64 %conv2, -5, !dbg !3559
  %conv4 = trunc i64 %and3 to i32, !dbg !3559
  store i32 %conv4, ptr %relation.addr, align 4, !dbg !3559
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !3560
  %freq_table_sorted = getelementptr inbounds %struct.cpufreq_policy, ptr %5, i32 0, i32 21, !dbg !3560
  %6 = load i32, ptr %freq_table_sorted, align 8, !dbg !3560
  %cmp = icmp eq i32 %6, 0, !dbg !3560
  %lnot = xor i1 %cmp, true, !dbg !3560
  %lnot6 = xor i1 %lnot, true, !dbg !3560
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3560
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3560
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3560
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3560
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3562

if.then:                                          ; preds = %land.end
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !3563
  %8 = load i32, ptr %target_freq.addr, align 4, !dbg !3564
  %9 = load i32, ptr %relation.addr, align 4, !dbg !3565
  %call = call i32 @cpufreq_table_index_unsorted(ptr noundef %7, i32 noundef %8, i32 noundef %9) #18, !dbg !3566
  store i32 %call, ptr %retval, align 4, !dbg !3567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3567

if.end:                                           ; preds = %land.end
  br label %retry, !dbg !3560

retry:                                            ; preds = %if.then46, %if.end
  call void @llvm.dbg.label(metadata !3539), !dbg !3568
  %10 = load i32, ptr %relation.addr, align 4, !dbg !3569
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
  ], !dbg !3570

sw.bb:                                            ; preds = %retry
  %11 = load ptr, ptr %policy.addr, align 8, !dbg !3571
  %12 = load i32, ptr %target_freq.addr, align 4, !dbg !3572
  %13 = load i8, ptr %efficiencies, align 1, !dbg !3573, !range !3477, !noundef !391
  %tobool9 = trunc i8 %13 to i1, !dbg !3573
  %call10 = call i32 @cpufreq_table_find_index_l(ptr noundef %11, i32 noundef %12, i1 noundef zeroext %tobool9) #18, !dbg !3574
  store i32 %call10, ptr %idx, align 4, !dbg !3575
  br label %sw.epilog, !dbg !3576

sw.bb11:                                          ; preds = %retry
  %14 = load ptr, ptr %policy.addr, align 8, !dbg !3577
  %15 = load i32, ptr %target_freq.addr, align 4, !dbg !3578
  %16 = load i8, ptr %efficiencies, align 1, !dbg !3579, !range !3477, !noundef !391
  %tobool12 = trunc i8 %16 to i1, !dbg !3579
  %call13 = call i32 @cpufreq_table_find_index_h(ptr noundef %14, i32 noundef %15, i1 noundef zeroext %tobool12) #18, !dbg !3580
  store i32 %call13, ptr %idx, align 4, !dbg !3581
  br label %sw.epilog, !dbg !3582

sw.bb14:                                          ; preds = %retry
  %17 = load ptr, ptr %policy.addr, align 8, !dbg !3583
  %18 = load i32, ptr %target_freq.addr, align 4, !dbg !3584
  %19 = load i8, ptr %efficiencies, align 1, !dbg !3585, !range !3477, !noundef !391
  %tobool15 = trunc i8 %19 to i1, !dbg !3585
  %call16 = call i32 @cpufreq_table_find_index_c(ptr noundef %17, i32 noundef %18, i1 noundef zeroext %tobool15) #18, !dbg !3586
  store i32 %call16, ptr %idx, align 4, !dbg !3587
  br label %sw.epilog, !dbg !3588

sw.default:                                       ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3589
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3540, metadata !DIExpression()), !dbg !3589
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3589
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !3590
  %tobool17 = icmp ne i32 %20, 0, !dbg !3590
  %lnot18 = xor i1 %tobool17, true, !dbg !3590
  %lnot20 = xor i1 %lnot18, true, !dbg !3590
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3590
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3590
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3590
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !3590
  br i1 %tobool24, label %if.then25, label %if.end35, !dbg !3589

if.then25:                                        ; preds = %sw.default
  br label %do.body, !dbg !3590

do.body:                                          ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3591
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3543, metadata !DIExpression()), !dbg !3591
  store i32 2307, ptr %__flags, align 4, !dbg !3591
  br label %do.body26, !dbg !3591

do.body26:                                        ; preds = %do.body
  br label %do.cond, !dbg !3592

do.cond:                                          ; preds = %do.body26
  br label %do.end, !dbg !3592

do.end:                                           ; preds = %do.cond
  br label %do.body27, !dbg !3591

do.body27:                                        ; preds = %do.end
  %21 = load i32, ptr %__flags, align 4, !dbg !3594
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1065, i32 %21, i64 12) #19, !dbg !3594, !srcloc !3596
  br label %do.cond28, !dbg !3594

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !3594

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !3591

do.body30:                                        ; preds = %do.end29
  br label %do.cond31, !dbg !3597

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !3597

do.end32:                                         ; preds = %do.cond31
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3590
  br label %do.cond33, !dbg !3591

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !3591

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !3591

if.end35:                                         ; preds = %do.end34, %sw.default
  %22 = load i32, ptr %__ret_warn_on, align 4, !dbg !3589
  %tobool36 = icmp ne i32 %22, 0, !dbg !3589
  %lnot37 = xor i1 %tobool36, true, !dbg !3589
  %lnot39 = xor i1 %lnot37, true, !dbg !3589
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3589
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3589
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !3589
  store i64 %expval42, ptr %tmp, align 8, !dbg !3590
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3599
  %23 = load i64, ptr %tmp, align 8, !dbg !3589
  store i32 0, ptr %retval, align 4, !dbg !3600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3600

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %sw.bb
  %24 = load ptr, ptr %policy.addr, align 8, !dbg !3601
  %25 = load i32, ptr %idx, align 4, !dbg !3603
  %call43 = call zeroext i1 @cpufreq_is_in_limits(ptr noundef %24, i32 noundef %25) #18, !dbg !3604
  br i1 %call43, label %if.end47, label %land.lhs.true, !dbg !3605

land.lhs.true:                                    ; preds = %sw.epilog
  %26 = load i8, ptr %efficiencies, align 1, !dbg !3606, !range !3477, !noundef !391
  %tobool44 = trunc i8 %26 to i1, !dbg !3606
  br i1 %tobool44, label %if.then46, label %if.end47, !dbg !3607

if.then46:                                        ; preds = %land.lhs.true
  store i8 0, ptr %efficiencies, align 1, !dbg !3608
  br label %retry, !dbg !3610

if.end47:                                         ; preds = %land.lhs.true, %sw.epilog
  %27 = load i32, ptr %idx, align 4, !dbg !3611
  store i32 %27, ptr %retval, align 4, !dbg !3612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3612

cleanup:                                          ; preds = %if.end47, %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !3613
  call void @llvm.lifetime.end.p0(i64 1, ptr %efficiencies) #19, !dbg !3613
  %28 = load i32, ptr %retval, align 4, !dbg !3613
  ret i32 %28, !dbg !3613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_h(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3614 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val257 = alloca i32, align 4
  %__UNIQUE_ID___lo258 = alloca i32, align 4
  %__UNIQUE_ID___hi259 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3618, metadata !DIExpression()), !dbg !3626
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3619, metadata !DIExpression()), !dbg !3627
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3620, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val257) #19, !dbg !3629
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val257, metadata !3621, metadata !DIExpression()), !dbg !3629
  %0 = load i32, ptr %target_freq.addr, align 4, !dbg !3629
  store i32 %0, ptr %__UNIQUE_ID___val257, align 4, !dbg !3629
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo258) #19, !dbg !3629
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo258, metadata !3624, metadata !DIExpression()), !dbg !3629
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3629
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 7, !dbg !3629
  %2 = load i32, ptr %min, align 4, !dbg !3629
  store i32 %2, ptr %__UNIQUE_ID___lo258, align 4, !dbg !3629
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi259) #19, !dbg !3629
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi259, metadata !3625, metadata !DIExpression()), !dbg !3629
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !3629
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 8, !dbg !3629
  %4 = load i32, ptr %max, align 8, !dbg !3629
  store i32 %4, ptr %__UNIQUE_ID___hi259, align 4, !dbg !3629
  %5 = load i32, ptr %__UNIQUE_ID___val257, align 4, !dbg !3629
  %6 = load i32, ptr %__UNIQUE_ID___hi259, align 4, !dbg !3629
  %cmp = icmp uge i32 %5, %6, !dbg !3629
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3629

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___hi259, align 4, !dbg !3629
  br label %cond.end5, !dbg !3629

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %__UNIQUE_ID___val257, align 4, !dbg !3629
  %9 = load i32, ptr %__UNIQUE_ID___lo258, align 4, !dbg !3629
  %cmp2 = icmp ule i32 %8, %9, !dbg !3629
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !3629

cond.true3:                                       ; preds = %cond.false
  %10 = load i32, ptr %__UNIQUE_ID___lo258, align 4, !dbg !3629
  br label %cond.end, !dbg !3629

cond.false4:                                      ; preds = %cond.false
  %11 = load i32, ptr %__UNIQUE_ID___val257, align 4, !dbg !3629
  br label %cond.end, !dbg !3629

cond.end:                                         ; preds = %cond.false4, %cond.true3
  %cond = phi i32 [ %10, %cond.true3 ], [ %11, %cond.false4 ], !dbg !3629
  br label %cond.end5, !dbg !3629

cond.end5:                                        ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %7, %cond.true ], [ %cond, %cond.end ], !dbg !3629
  store i32 %cond6, ptr %tmp1, align 4, !dbg !3629
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi259) #19, !dbg !3630
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo258) #19, !dbg !3630
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val257) #19, !dbg !3630
  %12 = load i32, ptr %tmp1, align 4, !dbg !3629
  store i32 %12, ptr %tmp, align 4, !dbg !3631
  %13 = load i32, ptr %tmp, align 4, !dbg !3630
  store i32 %13, ptr %target_freq.addr, align 4, !dbg !3632
  %14 = load ptr, ptr %policy.addr, align 8, !dbg !3633
  %freq_table_sorted = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 21, !dbg !3635
  %15 = load i32, ptr %freq_table_sorted, align 8, !dbg !3635
  %cmp7 = icmp eq i32 %15, 1, !dbg !3636
  br i1 %cmp7, label %if.then, label %if.else, !dbg !3637

if.then:                                          ; preds = %cond.end5
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !3638
  %17 = load i32, ptr %target_freq.addr, align 4, !dbg !3639
  %18 = load i8, ptr %efficiencies.addr, align 1, !dbg !3640, !range !3477, !noundef !391
  %tobool = trunc i8 %18 to i1, !dbg !3640
  %call = call i32 @cpufreq_table_find_index_ah(ptr noundef %16, i32 noundef %17, i1 noundef zeroext %tobool) #18, !dbg !3641
  store i32 %call, ptr %retval, align 4, !dbg !3642
  br label %return, !dbg !3642

if.else:                                          ; preds = %cond.end5
  %19 = load ptr, ptr %policy.addr, align 8, !dbg !3643
  %20 = load i32, ptr %target_freq.addr, align 4, !dbg !3644
  %21 = load i8, ptr %efficiencies.addr, align 1, !dbg !3645, !range !3477, !noundef !391
  %tobool8 = trunc i8 %21 to i1, !dbg !3645
  %call9 = call i32 @cpufreq_table_find_index_dh(ptr noundef %19, i32 noundef %20, i1 noundef zeroext %tobool8) #18, !dbg !3646
  store i32 %call9, ptr %retval, align 4, !dbg !3647
  br label %return, !dbg !3647

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %retval, align 4, !dbg !3648
  ret i32 %22, !dbg !3648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_l(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3649 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val254 = alloca i32, align 4
  %__UNIQUE_ID___lo255 = alloca i32, align 4
  %__UNIQUE_ID___hi256 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3651, metadata !DIExpression()), !dbg !3659
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3652, metadata !DIExpression()), !dbg !3660
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3653, metadata !DIExpression()), !dbg !3661
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val254) #19, !dbg !3662
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val254, metadata !3654, metadata !DIExpression()), !dbg !3662
  %0 = load i32, ptr %target_freq.addr, align 4, !dbg !3662
  store i32 %0, ptr %__UNIQUE_ID___val254, align 4, !dbg !3662
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo255) #19, !dbg !3662
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo255, metadata !3657, metadata !DIExpression()), !dbg !3662
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3662
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 7, !dbg !3662
  %2 = load i32, ptr %min, align 4, !dbg !3662
  store i32 %2, ptr %__UNIQUE_ID___lo255, align 4, !dbg !3662
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi256) #19, !dbg !3662
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi256, metadata !3658, metadata !DIExpression()), !dbg !3662
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !3662
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 8, !dbg !3662
  %4 = load i32, ptr %max, align 8, !dbg !3662
  store i32 %4, ptr %__UNIQUE_ID___hi256, align 4, !dbg !3662
  %5 = load i32, ptr %__UNIQUE_ID___val254, align 4, !dbg !3662
  %6 = load i32, ptr %__UNIQUE_ID___hi256, align 4, !dbg !3662
  %cmp = icmp uge i32 %5, %6, !dbg !3662
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3662

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___hi256, align 4, !dbg !3662
  br label %cond.end5, !dbg !3662

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %__UNIQUE_ID___val254, align 4, !dbg !3662
  %9 = load i32, ptr %__UNIQUE_ID___lo255, align 4, !dbg !3662
  %cmp2 = icmp ule i32 %8, %9, !dbg !3662
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !3662

cond.true3:                                       ; preds = %cond.false
  %10 = load i32, ptr %__UNIQUE_ID___lo255, align 4, !dbg !3662
  br label %cond.end, !dbg !3662

cond.false4:                                      ; preds = %cond.false
  %11 = load i32, ptr %__UNIQUE_ID___val254, align 4, !dbg !3662
  br label %cond.end, !dbg !3662

cond.end:                                         ; preds = %cond.false4, %cond.true3
  %cond = phi i32 [ %10, %cond.true3 ], [ %11, %cond.false4 ], !dbg !3662
  br label %cond.end5, !dbg !3662

cond.end5:                                        ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %7, %cond.true ], [ %cond, %cond.end ], !dbg !3662
  store i32 %cond6, ptr %tmp1, align 4, !dbg !3662
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi256) #19, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo255) #19, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val254) #19, !dbg !3663
  %12 = load i32, ptr %tmp1, align 4, !dbg !3662
  store i32 %12, ptr %tmp, align 4, !dbg !3664
  %13 = load i32, ptr %tmp, align 4, !dbg !3663
  store i32 %13, ptr %target_freq.addr, align 4, !dbg !3665
  %14 = load ptr, ptr %policy.addr, align 8, !dbg !3666
  %freq_table_sorted = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 21, !dbg !3668
  %15 = load i32, ptr %freq_table_sorted, align 8, !dbg !3668
  %cmp7 = icmp eq i32 %15, 1, !dbg !3669
  br i1 %cmp7, label %if.then, label %if.else, !dbg !3670

if.then:                                          ; preds = %cond.end5
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !3671
  %17 = load i32, ptr %target_freq.addr, align 4, !dbg !3672
  %18 = load i8, ptr %efficiencies.addr, align 1, !dbg !3673, !range !3477, !noundef !391
  %tobool = trunc i8 %18 to i1, !dbg !3673
  %call = call i32 @cpufreq_table_find_index_al(ptr noundef %16, i32 noundef %17, i1 noundef zeroext %tobool) #18, !dbg !3674
  store i32 %call, ptr %retval, align 4, !dbg !3675
  br label %return, !dbg !3675

if.else:                                          ; preds = %cond.end5
  %19 = load ptr, ptr %policy.addr, align 8, !dbg !3676
  %20 = load i32, ptr %target_freq.addr, align 4, !dbg !3677
  %21 = load i8, ptr %efficiencies.addr, align 1, !dbg !3678, !range !3477, !noundef !391
  %tobool8 = trunc i8 %21 to i1, !dbg !3678
  %call9 = call i32 @cpufreq_table_find_index_dl(ptr noundef %19, i32 noundef %20, i1 noundef zeroext %tobool8) #18, !dbg !3679
  store i32 %call9, ptr %retval, align 4, !dbg !3680
  br label %return, !dbg !3680

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %retval, align 4, !dbg !3681
  ret i32 %22, !dbg !3681
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3682 dso_local i32 @cpufreq_table_index_unsorted(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_c(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3683 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val260 = alloca i32, align 4
  %__UNIQUE_ID___lo261 = alloca i32, align 4
  %__UNIQUE_ID___hi262 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3685, metadata !DIExpression()), !dbg !3693
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3686, metadata !DIExpression()), !dbg !3694
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3687, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val260) #19, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val260, metadata !3688, metadata !DIExpression()), !dbg !3696
  %0 = load i32, ptr %target_freq.addr, align 4, !dbg !3696
  store i32 %0, ptr %__UNIQUE_ID___val260, align 4, !dbg !3696
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo261) #19, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo261, metadata !3691, metadata !DIExpression()), !dbg !3696
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3696
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 7, !dbg !3696
  %2 = load i32, ptr %min, align 4, !dbg !3696
  store i32 %2, ptr %__UNIQUE_ID___lo261, align 4, !dbg !3696
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi262) #19, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi262, metadata !3692, metadata !DIExpression()), !dbg !3696
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !3696
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 8, !dbg !3696
  %4 = load i32, ptr %max, align 8, !dbg !3696
  store i32 %4, ptr %__UNIQUE_ID___hi262, align 4, !dbg !3696
  %5 = load i32, ptr %__UNIQUE_ID___val260, align 4, !dbg !3696
  %6 = load i32, ptr %__UNIQUE_ID___hi262, align 4, !dbg !3696
  %cmp = icmp uge i32 %5, %6, !dbg !3696
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3696

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___hi262, align 4, !dbg !3696
  br label %cond.end5, !dbg !3696

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %__UNIQUE_ID___val260, align 4, !dbg !3696
  %9 = load i32, ptr %__UNIQUE_ID___lo261, align 4, !dbg !3696
  %cmp2 = icmp ule i32 %8, %9, !dbg !3696
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !3696

cond.true3:                                       ; preds = %cond.false
  %10 = load i32, ptr %__UNIQUE_ID___lo261, align 4, !dbg !3696
  br label %cond.end, !dbg !3696

cond.false4:                                      ; preds = %cond.false
  %11 = load i32, ptr %__UNIQUE_ID___val260, align 4, !dbg !3696
  br label %cond.end, !dbg !3696

cond.end:                                         ; preds = %cond.false4, %cond.true3
  %cond = phi i32 [ %10, %cond.true3 ], [ %11, %cond.false4 ], !dbg !3696
  br label %cond.end5, !dbg !3696

cond.end5:                                        ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %7, %cond.true ], [ %cond, %cond.end ], !dbg !3696
  store i32 %cond6, ptr %tmp1, align 4, !dbg !3696
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi262) #19, !dbg !3697
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo261) #19, !dbg !3697
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val260) #19, !dbg !3697
  %12 = load i32, ptr %tmp1, align 4, !dbg !3696
  store i32 %12, ptr %tmp, align 4, !dbg !3698
  %13 = load i32, ptr %tmp, align 4, !dbg !3697
  store i32 %13, ptr %target_freq.addr, align 4, !dbg !3699
  %14 = load ptr, ptr %policy.addr, align 8, !dbg !3700
  %freq_table_sorted = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 21, !dbg !3702
  %15 = load i32, ptr %freq_table_sorted, align 8, !dbg !3702
  %cmp7 = icmp eq i32 %15, 1, !dbg !3703
  br i1 %cmp7, label %if.then, label %if.else, !dbg !3704

if.then:                                          ; preds = %cond.end5
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !3705
  %17 = load i32, ptr %target_freq.addr, align 4, !dbg !3706
  %18 = load i8, ptr %efficiencies.addr, align 1, !dbg !3707, !range !3477, !noundef !391
  %tobool = trunc i8 %18 to i1, !dbg !3707
  %call = call i32 @cpufreq_table_find_index_ac(ptr noundef %16, i32 noundef %17, i1 noundef zeroext %tobool) #18, !dbg !3708
  store i32 %call, ptr %retval, align 4, !dbg !3709
  br label %return, !dbg !3709

if.else:                                          ; preds = %cond.end5
  %19 = load ptr, ptr %policy.addr, align 8, !dbg !3710
  %20 = load i32, ptr %target_freq.addr, align 4, !dbg !3711
  %21 = load i8, ptr %efficiencies.addr, align 1, !dbg !3712, !range !3477, !noundef !391
  %tobool8 = trunc i8 %21 to i1, !dbg !3712
  %call9 = call i32 @cpufreq_table_find_index_dc(ptr noundef %19, i32 noundef %20, i1 noundef zeroext %tobool8) #18, !dbg !3713
  store i32 %call9, ptr %retval, align 4, !dbg !3714
  br label %return, !dbg !3714

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %retval, align 4, !dbg !3715
  ret i32 %22, !dbg !3715
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpufreq_is_in_limits(ptr noundef %policy, i32 noundef %idx) #5 align 16 !dbg !3716 {
entry:
  %retval = alloca i1, align 1
  %policy.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %freq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val263 = alloca i32, align 4
  %__UNIQUE_ID___lo264 = alloca i32, align 4
  %__UNIQUE_ID___hi265 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3720, metadata !DIExpression()), !dbg !3728
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !3721, metadata !DIExpression()), !dbg !3729
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !3730
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3722, metadata !DIExpression()), !dbg !3731
  %0 = load i32, ptr %idx.addr, align 4, !dbg !3732
  %cmp = icmp slt i32 %0, 0, !dbg !3734
  br i1 %cmp, label %if.then, label %if.end, !dbg !3735

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3736

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !3737
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 20, !dbg !3738
  %2 = load ptr, ptr %freq_table, align 8, !dbg !3738
  %3 = load i32, ptr %idx.addr, align 4, !dbg !3739
  %idxprom = sext i32 %3 to i64, !dbg !3737
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %2, i64 %idxprom, !dbg !3737
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 2, !dbg !3740
  %4 = load i32, ptr %frequency, align 4, !dbg !3740
  store i32 %4, ptr %freq, align 4, !dbg !3741
  %5 = load i32, ptr %freq, align 4, !dbg !3742
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val263) #19, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val263, metadata !3723, metadata !DIExpression()), !dbg !3743
  %6 = load i32, ptr %freq, align 4, !dbg !3743
  store i32 %6, ptr %__UNIQUE_ID___val263, align 4, !dbg !3743
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo264) #19, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo264, metadata !3726, metadata !DIExpression()), !dbg !3743
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !3743
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %7, i32 0, i32 7, !dbg !3743
  %8 = load i32, ptr %min, align 4, !dbg !3743
  store i32 %8, ptr %__UNIQUE_ID___lo264, align 4, !dbg !3743
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi265) #19, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi265, metadata !3727, metadata !DIExpression()), !dbg !3743
  %9 = load ptr, ptr %policy.addr, align 8, !dbg !3743
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %9, i32 0, i32 8, !dbg !3743
  %10 = load i32, ptr %max, align 8, !dbg !3743
  store i32 %10, ptr %__UNIQUE_ID___hi265, align 4, !dbg !3743
  %11 = load i32, ptr %__UNIQUE_ID___val263, align 4, !dbg !3743
  %12 = load i32, ptr %__UNIQUE_ID___hi265, align 4, !dbg !3743
  %cmp2 = icmp uge i32 %11, %12, !dbg !3743
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !3743

cond.true:                                        ; preds = %if.end
  %13 = load i32, ptr %__UNIQUE_ID___hi265, align 4, !dbg !3743
  br label %cond.end6, !dbg !3743

cond.false:                                       ; preds = %if.end
  %14 = load i32, ptr %__UNIQUE_ID___val263, align 4, !dbg !3743
  %15 = load i32, ptr %__UNIQUE_ID___lo264, align 4, !dbg !3743
  %cmp3 = icmp ule i32 %14, %15, !dbg !3743
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !3743

cond.true4:                                       ; preds = %cond.false
  %16 = load i32, ptr %__UNIQUE_ID___lo264, align 4, !dbg !3743
  br label %cond.end, !dbg !3743

cond.false5:                                      ; preds = %cond.false
  %17 = load i32, ptr %__UNIQUE_ID___val263, align 4, !dbg !3743
  br label %cond.end, !dbg !3743

cond.end:                                         ; preds = %cond.false5, %cond.true4
  %cond = phi i32 [ %16, %cond.true4 ], [ %17, %cond.false5 ], !dbg !3743
  br label %cond.end6, !dbg !3743

cond.end6:                                        ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %13, %cond.true ], [ %cond, %cond.end ], !dbg !3743
  store i32 %cond7, ptr %tmp1, align 4, !dbg !3743
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi265) #19, !dbg !3744
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo264) #19, !dbg !3744
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val263) #19, !dbg !3744
  %18 = load i32, ptr %tmp1, align 4, !dbg !3743
  store i32 %18, ptr %tmp, align 4, !dbg !3745
  %19 = load i32, ptr %tmp, align 4, !dbg !3744
  %cmp8 = icmp eq i32 %5, %19, !dbg !3746
  store i1 %cmp8, ptr %retval, align 1, !dbg !3747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3747

cleanup:                                          ; preds = %cond.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !3748
  %20 = load i1, ptr %retval, align 1, !dbg !3748
  ret i1 %20, !dbg !3748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_ac(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3749 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3751, metadata !DIExpression()), !dbg !3759
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3752, metadata !DIExpression()), !dbg !3760
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3753, metadata !DIExpression()), !dbg !3761
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !3762
  call void @llvm.dbg.declare(metadata ptr %table, metadata !3754, metadata !DIExpression()), !dbg !3763
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3764
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3765
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3765
  store ptr %1, ptr %table, align 8, !dbg !3763
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #19, !dbg !3766
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3755, metadata !DIExpression()), !dbg !3767
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !3768
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3756, metadata !DIExpression()), !dbg !3769
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !3770
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3757, metadata !DIExpression()), !dbg !3771
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #19, !dbg !3770
  call void @llvm.dbg.declare(metadata ptr %best, metadata !3758, metadata !DIExpression()), !dbg !3772
  store i32 -1, ptr %best, align 4, !dbg !3772
  %2 = load ptr, ptr %table, align 8, !dbg !3773
  store ptr %2, ptr %pos, align 8, !dbg !3773
  store i32 0, ptr %idx, align 4, !dbg !3773
  br label %for.cond, !dbg !3773

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !3775
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !3775
  %4 = load i32, ptr %frequency, align 4, !dbg !3775
  %cmp = icmp ne i32 %4, -2, !dbg !3775
  br i1 %cmp, label %for.body, label %for.end, !dbg !3773

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !3777
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !3777
  %6 = load i32, ptr %frequency1, align 4, !dbg !3777
  %cmp2 = icmp eq i32 %6, -1, !dbg !3777
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3775

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3777

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !3779, !range !3477, !noundef !391
  %tobool = trunc i8 %7 to i1, !dbg !3779
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !3779

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !3779
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !3779
  %9 = load i32, ptr %flags, align 4, !dbg !3779
  %and = and i32 %9, 2, !dbg !3779
  %tobool3 = icmp ne i32 %and, 0, !dbg !3779
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !3777

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !3779

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !3781
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !3783
  %11 = load i32, ptr %frequency6, align 4, !dbg !3783
  store i32 %11, ptr %freq, align 4, !dbg !3784
  %12 = load i32, ptr %freq, align 4, !dbg !3785
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !3787
  %cmp7 = icmp eq i32 %12, %13, !dbg !3788
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !3789

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !3790
  store i32 %14, ptr %retval, align 4, !dbg !3791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3791

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %freq, align 4, !dbg !3792
  %16 = load i32, ptr %target_freq.addr, align 4, !dbg !3794
  %cmp9 = icmp ult i32 %15, %16, !dbg !3795
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3796

if.then10:                                        ; preds = %if.end
  %17 = load i32, ptr %idx, align 4, !dbg !3797
  store i32 %17, ptr %best, align 4, !dbg !3799
  br label %for.inc, !dbg !3800

if.end11:                                         ; preds = %if.end
  %18 = load i32, ptr %best, align 4, !dbg !3801
  %cmp12 = icmp eq i32 %18, -1, !dbg !3803
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3804

if.then13:                                        ; preds = %if.end11
  %19 = load i32, ptr %idx, align 4, !dbg !3805
  store i32 %19, ptr %retval, align 4, !dbg !3806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3806

if.end14:                                         ; preds = %if.end11
  %20 = load i32, ptr %target_freq.addr, align 4, !dbg !3807
  %21 = load ptr, ptr %table, align 8, !dbg !3809
  %22 = load i32, ptr %best, align 4, !dbg !3810
  %idxprom = sext i32 %22 to i64, !dbg !3809
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %21, i64 %idxprom, !dbg !3809
  %frequency15 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 2, !dbg !3811
  %23 = load i32, ptr %frequency15, align 4, !dbg !3811
  %sub = sub i32 %20, %23, !dbg !3812
  %24 = load i32, ptr %freq, align 4, !dbg !3813
  %25 = load i32, ptr %target_freq.addr, align 4, !dbg !3814
  %sub16 = sub i32 %24, %25, !dbg !3815
  %cmp17 = icmp ugt i32 %sub, %sub16, !dbg !3816
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3817

if.then18:                                        ; preds = %if.end14
  %26 = load i32, ptr %idx, align 4, !dbg !3818
  store i32 %26, ptr %retval, align 4, !dbg !3819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3819

if.end19:                                         ; preds = %if.end14
  %27 = load i32, ptr %best, align 4, !dbg !3820
  store i32 %27, ptr %retval, align 4, !dbg !3821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3821

for.inc:                                          ; preds = %if.then10, %if.then4, %if.then
  %28 = load ptr, ptr %pos, align 8, !dbg !3775
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %28, i32 1, !dbg !3775
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !3775
  %29 = load i32, ptr %idx, align 4, !dbg !3775
  %inc = add i32 %29, 1, !dbg !3775
  store i32 %inc, ptr %idx, align 4, !dbg !3775
  br label %for.cond, !dbg !3775, !llvm.loop !3822

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %best, align 4, !dbg !3824
  store i32 %30, ptr %retval, align 4, !dbg !3825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3825

cleanup:                                          ; preds = %for.end, %if.end19, %if.then18, %if.then13, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #19, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #19, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !3826
  %31 = load i32, ptr %retval, align 4, !dbg !3826
  ret i32 %31, !dbg !3826
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_dc(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3827 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3829, metadata !DIExpression()), !dbg !3837
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3830, metadata !DIExpression()), !dbg !3838
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3831, metadata !DIExpression()), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %table, metadata !3832, metadata !DIExpression()), !dbg !3841
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3842
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3843
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3843
  store ptr %1, ptr %table, align 8, !dbg !3841
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #19, !dbg !3844
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3833, metadata !DIExpression()), !dbg !3845
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !3846
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3834, metadata !DIExpression()), !dbg !3847
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3835, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #19, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %best, metadata !3836, metadata !DIExpression()), !dbg !3850
  store i32 -1, ptr %best, align 4, !dbg !3850
  %2 = load ptr, ptr %table, align 8, !dbg !3851
  store ptr %2, ptr %pos, align 8, !dbg !3851
  store i32 0, ptr %idx, align 4, !dbg !3851
  br label %for.cond, !dbg !3851

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !3853
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !3853
  %4 = load i32, ptr %frequency, align 4, !dbg !3853
  %cmp = icmp ne i32 %4, -2, !dbg !3853
  br i1 %cmp, label %for.body, label %for.end, !dbg !3851

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !3855
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !3855
  %6 = load i32, ptr %frequency1, align 4, !dbg !3855
  %cmp2 = icmp eq i32 %6, -1, !dbg !3855
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3853

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3855

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !3857, !range !3477, !noundef !391
  %tobool = trunc i8 %7 to i1, !dbg !3857
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !3857

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !3857
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !3857
  %9 = load i32, ptr %flags, align 4, !dbg !3857
  %and = and i32 %9, 2, !dbg !3857
  %tobool3 = icmp ne i32 %and, 0, !dbg !3857
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !3855

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !3857

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !3859
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !3861
  %11 = load i32, ptr %frequency6, align 4, !dbg !3861
  store i32 %11, ptr %freq, align 4, !dbg !3862
  %12 = load i32, ptr %freq, align 4, !dbg !3863
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !3865
  %cmp7 = icmp eq i32 %12, %13, !dbg !3866
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !3867

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !3868
  store i32 %14, ptr %retval, align 4, !dbg !3869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3869

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %freq, align 4, !dbg !3870
  %16 = load i32, ptr %target_freq.addr, align 4, !dbg !3872
  %cmp9 = icmp ugt i32 %15, %16, !dbg !3873
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3874

if.then10:                                        ; preds = %if.end
  %17 = load i32, ptr %idx, align 4, !dbg !3875
  store i32 %17, ptr %best, align 4, !dbg !3877
  br label %for.inc, !dbg !3878

if.end11:                                         ; preds = %if.end
  %18 = load i32, ptr %best, align 4, !dbg !3879
  %cmp12 = icmp eq i32 %18, -1, !dbg !3881
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3882

if.then13:                                        ; preds = %if.end11
  %19 = load i32, ptr %idx, align 4, !dbg !3883
  store i32 %19, ptr %retval, align 4, !dbg !3884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3884

if.end14:                                         ; preds = %if.end11
  %20 = load ptr, ptr %table, align 8, !dbg !3885
  %21 = load i32, ptr %best, align 4, !dbg !3887
  %idxprom = sext i32 %21 to i64, !dbg !3885
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %20, i64 %idxprom, !dbg !3885
  %frequency15 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 2, !dbg !3888
  %22 = load i32, ptr %frequency15, align 4, !dbg !3888
  %23 = load i32, ptr %target_freq.addr, align 4, !dbg !3889
  %sub = sub i32 %22, %23, !dbg !3890
  %24 = load i32, ptr %target_freq.addr, align 4, !dbg !3891
  %25 = load i32, ptr %freq, align 4, !dbg !3892
  %sub16 = sub i32 %24, %25, !dbg !3893
  %cmp17 = icmp ugt i32 %sub, %sub16, !dbg !3894
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3895

if.then18:                                        ; preds = %if.end14
  %26 = load i32, ptr %idx, align 4, !dbg !3896
  store i32 %26, ptr %retval, align 4, !dbg !3897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3897

if.end19:                                         ; preds = %if.end14
  %27 = load i32, ptr %best, align 4, !dbg !3898
  store i32 %27, ptr %retval, align 4, !dbg !3899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3899

for.inc:                                          ; preds = %if.then10, %if.then4, %if.then
  %28 = load ptr, ptr %pos, align 8, !dbg !3853
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %28, i32 1, !dbg !3853
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !3853
  %29 = load i32, ptr %idx, align 4, !dbg !3853
  %inc = add i32 %29, 1, !dbg !3853
  store i32 %inc, ptr %idx, align 4, !dbg !3853
  br label %for.cond, !dbg !3853, !llvm.loop !3900

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %best, align 4, !dbg !3902
  store i32 %30, ptr %retval, align 4, !dbg !3903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3903

cleanup:                                          ; preds = %for.end, %if.end19, %if.then18, %if.then13, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #19, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #19, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !3904
  %31 = load i32, ptr %retval, align 4, !dbg !3904
  ret i32 %31, !dbg !3904
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_ah(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3905 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3907, metadata !DIExpression()), !dbg !3915
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3908, metadata !DIExpression()), !dbg !3916
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3909, metadata !DIExpression()), !dbg !3917
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !3918
  call void @llvm.dbg.declare(metadata ptr %table, metadata !3910, metadata !DIExpression()), !dbg !3919
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3920
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3921
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3921
  store ptr %1, ptr %table, align 8, !dbg !3919
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #19, !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3911, metadata !DIExpression()), !dbg !3923
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3912, metadata !DIExpression()), !dbg !3925
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !3926
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3913, metadata !DIExpression()), !dbg !3927
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #19, !dbg !3926
  call void @llvm.dbg.declare(metadata ptr %best, metadata !3914, metadata !DIExpression()), !dbg !3928
  store i32 -1, ptr %best, align 4, !dbg !3928
  %2 = load ptr, ptr %table, align 8, !dbg !3929
  store ptr %2, ptr %pos, align 8, !dbg !3929
  store i32 0, ptr %idx, align 4, !dbg !3929
  br label %for.cond, !dbg !3929

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !3931
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !3931
  %4 = load i32, ptr %frequency, align 4, !dbg !3931
  %cmp = icmp ne i32 %4, -2, !dbg !3931
  br i1 %cmp, label %for.body, label %for.end, !dbg !3929

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !3933
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !3933
  %6 = load i32, ptr %frequency1, align 4, !dbg !3933
  %cmp2 = icmp eq i32 %6, -1, !dbg !3933
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3931

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3933

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !3935, !range !3477, !noundef !391
  %tobool = trunc i8 %7 to i1, !dbg !3935
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !3935

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !3935
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !3935
  %9 = load i32, ptr %flags, align 4, !dbg !3935
  %and = and i32 %9, 2, !dbg !3935
  %tobool3 = icmp ne i32 %and, 0, !dbg !3935
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !3933

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !3935

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !3937
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !3939
  %11 = load i32, ptr %frequency6, align 4, !dbg !3939
  store i32 %11, ptr %freq, align 4, !dbg !3940
  %12 = load i32, ptr %freq, align 4, !dbg !3941
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !3943
  %cmp7 = icmp eq i32 %12, %13, !dbg !3944
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !3945

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !3946
  store i32 %14, ptr %retval, align 4, !dbg !3947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3947

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %freq, align 4, !dbg !3948
  %16 = load i32, ptr %target_freq.addr, align 4, !dbg !3950
  %cmp9 = icmp ult i32 %15, %16, !dbg !3951
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3952

if.then10:                                        ; preds = %if.end
  %17 = load i32, ptr %idx, align 4, !dbg !3953
  store i32 %17, ptr %best, align 4, !dbg !3955
  br label %for.inc, !dbg !3956

if.end11:                                         ; preds = %if.end
  %18 = load i32, ptr %best, align 4, !dbg !3957
  %cmp12 = icmp eq i32 %18, -1, !dbg !3959
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3960

if.then13:                                        ; preds = %if.end11
  %19 = load i32, ptr %idx, align 4, !dbg !3961
  store i32 %19, ptr %retval, align 4, !dbg !3962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3962

if.end14:                                         ; preds = %if.end11
  %20 = load i32, ptr %best, align 4, !dbg !3963
  store i32 %20, ptr %retval, align 4, !dbg !3964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3964

for.inc:                                          ; preds = %if.then10, %if.then4, %if.then
  %21 = load ptr, ptr %pos, align 8, !dbg !3931
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %21, i32 1, !dbg !3931
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !3931
  %22 = load i32, ptr %idx, align 4, !dbg !3931
  %inc = add i32 %22, 1, !dbg !3931
  store i32 %inc, ptr %idx, align 4, !dbg !3931
  br label %for.cond, !dbg !3931, !llvm.loop !3965

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %best, align 4, !dbg !3967
  store i32 %23, ptr %retval, align 4, !dbg !3968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3968

cleanup:                                          ; preds = %for.end, %if.end14, %if.then13, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #19, !dbg !3969
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !3969
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !3969
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #19, !dbg !3969
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !3969
  %24 = load i32, ptr %retval, align 4, !dbg !3969
  ret i32 %24, !dbg !3969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_dh(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !3970 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3972, metadata !DIExpression()), !dbg !3980
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !3973, metadata !DIExpression()), !dbg !3981
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !3974, metadata !DIExpression()), !dbg !3982
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !3983
  call void @llvm.dbg.declare(metadata ptr %table, metadata !3975, metadata !DIExpression()), !dbg !3984
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3985
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3986
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3986
  store ptr %1, ptr %table, align 8, !dbg !3984
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #19, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3976, metadata !DIExpression()), !dbg !3988
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !3989
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3977, metadata !DIExpression()), !dbg !3990
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !3991
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3978, metadata !DIExpression()), !dbg !3992
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #19, !dbg !3991
  call void @llvm.dbg.declare(metadata ptr %best, metadata !3979, metadata !DIExpression()), !dbg !3993
  store i32 -1, ptr %best, align 4, !dbg !3993
  %2 = load ptr, ptr %table, align 8, !dbg !3994
  store ptr %2, ptr %pos, align 8, !dbg !3994
  store i32 0, ptr %idx, align 4, !dbg !3994
  br label %for.cond, !dbg !3994

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !3996
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !3996
  %4 = load i32, ptr %frequency, align 4, !dbg !3996
  %cmp = icmp ne i32 %4, -2, !dbg !3996
  br i1 %cmp, label %for.body, label %for.end, !dbg !3994

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !3998
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !3998
  %6 = load i32, ptr %frequency1, align 4, !dbg !3998
  %cmp2 = icmp eq i32 %6, -1, !dbg !3998
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3996

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3998

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !4000, !range !3477, !noundef !391
  %tobool = trunc i8 %7 to i1, !dbg !4000
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !4000

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !4000
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !4000
  %9 = load i32, ptr %flags, align 4, !dbg !4000
  %and = and i32 %9, 2, !dbg !4000
  %tobool3 = icmp ne i32 %and, 0, !dbg !4000
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !3998

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !4000

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !4002
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !4004
  %11 = load i32, ptr %frequency6, align 4, !dbg !4004
  store i32 %11, ptr %freq, align 4, !dbg !4005
  %12 = load i32, ptr %freq, align 4, !dbg !4006
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !4008
  %cmp7 = icmp ule i32 %12, %13, !dbg !4009
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !4010

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !4011
  store i32 %14, ptr %retval, align 4, !dbg !4012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4012

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %idx, align 4, !dbg !4013
  store i32 %15, ptr %best, align 4, !dbg !4014
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %for.inc, !dbg !3998

for.inc:                                          ; preds = %if.end10, %if.then4, %if.then
  %16 = load ptr, ptr %pos, align 8, !dbg !3996
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %16, i32 1, !dbg !3996
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !3996
  %17 = load i32, ptr %idx, align 4, !dbg !3996
  %inc = add i32 %17, 1, !dbg !3996
  store i32 %inc, ptr %idx, align 4, !dbg !3996
  br label %for.cond, !dbg !3996, !llvm.loop !4015

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %best, align 4, !dbg !4017
  store i32 %18, ptr %retval, align 4, !dbg !4018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4018

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #19, !dbg !4019
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !4019
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !4019
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #19, !dbg !4019
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !4019
  %19 = load i32, ptr %retval, align 4, !dbg !4019
  ret i32 %19, !dbg !4019
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_al(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !4020 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4022, metadata !DIExpression()), !dbg !4030
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !4023, metadata !DIExpression()), !dbg !4031
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !4024, metadata !DIExpression()), !dbg !4032
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !4033
  call void @llvm.dbg.declare(metadata ptr %table, metadata !4025, metadata !DIExpression()), !dbg !4034
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4035
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !4036
  %1 = load ptr, ptr %freq_table, align 8, !dbg !4036
  store ptr %1, ptr %table, align 8, !dbg !4034
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #19, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4026, metadata !DIExpression()), !dbg !4038
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !4039
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !4027, metadata !DIExpression()), !dbg !4040
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !4041
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !4028, metadata !DIExpression()), !dbg !4042
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #19, !dbg !4041
  call void @llvm.dbg.declare(metadata ptr %best, metadata !4029, metadata !DIExpression()), !dbg !4043
  store i32 -1, ptr %best, align 4, !dbg !4043
  %2 = load ptr, ptr %table, align 8, !dbg !4044
  store ptr %2, ptr %pos, align 8, !dbg !4044
  store i32 0, ptr %idx, align 4, !dbg !4044
  br label %for.cond, !dbg !4044

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !4046
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !4046
  %4 = load i32, ptr %frequency, align 4, !dbg !4046
  %cmp = icmp ne i32 %4, -2, !dbg !4046
  br i1 %cmp, label %for.body, label %for.end, !dbg !4044

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !4048
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !4048
  %6 = load i32, ptr %frequency1, align 4, !dbg !4048
  %cmp2 = icmp eq i32 %6, -1, !dbg !4048
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4046

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4048

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !4050, !range !3477, !noundef !391
  %tobool = trunc i8 %7 to i1, !dbg !4050
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !4050

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !4050
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !4050
  %9 = load i32, ptr %flags, align 4, !dbg !4050
  %and = and i32 %9, 2, !dbg !4050
  %tobool3 = icmp ne i32 %and, 0, !dbg !4050
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !4048

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !4050

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !4052
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !4054
  %11 = load i32, ptr %frequency6, align 4, !dbg !4054
  store i32 %11, ptr %freq, align 4, !dbg !4055
  %12 = load i32, ptr %freq, align 4, !dbg !4056
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !4058
  %cmp7 = icmp uge i32 %12, %13, !dbg !4059
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !4060

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !4061
  store i32 %14, ptr %retval, align 4, !dbg !4062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4062

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %idx, align 4, !dbg !4063
  store i32 %15, ptr %best, align 4, !dbg !4064
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %for.inc, !dbg !4048

for.inc:                                          ; preds = %if.end10, %if.then4, %if.then
  %16 = load ptr, ptr %pos, align 8, !dbg !4046
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %16, i32 1, !dbg !4046
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !4046
  %17 = load i32, ptr %idx, align 4, !dbg !4046
  %inc = add i32 %17, 1, !dbg !4046
  store i32 %inc, ptr %idx, align 4, !dbg !4046
  br label %for.cond, !dbg !4046, !llvm.loop !4065

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %best, align 4, !dbg !4067
  store i32 %18, ptr %retval, align 4, !dbg !4068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4068

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #19, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #19, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !4069
  %19 = load i32, ptr %retval, align 4, !dbg !4069
  ret i32 %19, !dbg !4069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_dl(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #5 align 16 !dbg !4070 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4072, metadata !DIExpression()), !dbg !4080
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !4073, metadata !DIExpression()), !dbg !4081
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !4074, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %table, metadata !4075, metadata !DIExpression()), !dbg !4084
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4085
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !4086
  %1 = load ptr, ptr %freq_table, align 8, !dbg !4086
  store ptr %1, ptr %table, align 8, !dbg !4084
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #19, !dbg !4087
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4076, metadata !DIExpression()), !dbg !4088
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #19, !dbg !4089
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !4077, metadata !DIExpression()), !dbg !4090
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !4078, metadata !DIExpression()), !dbg !4092
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #19, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %best, metadata !4079, metadata !DIExpression()), !dbg !4093
  store i32 -1, ptr %best, align 4, !dbg !4093
  %2 = load ptr, ptr %table, align 8, !dbg !4094
  store ptr %2, ptr %pos, align 8, !dbg !4094
  store i32 0, ptr %idx, align 4, !dbg !4094
  br label %for.cond, !dbg !4094

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !4096
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !4096
  %4 = load i32, ptr %frequency, align 4, !dbg !4096
  %cmp = icmp ne i32 %4, -2, !dbg !4096
  br i1 %cmp, label %for.body, label %for.end, !dbg !4094

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !4098
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !4098
  %6 = load i32, ptr %frequency1, align 4, !dbg !4098
  %cmp2 = icmp eq i32 %6, -1, !dbg !4098
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4096

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4098

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !4100, !range !3477, !noundef !391
  %tobool = trunc i8 %7 to i1, !dbg !4100
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !4100

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !4100
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !4100
  %9 = load i32, ptr %flags, align 4, !dbg !4100
  %and = and i32 %9, 2, !dbg !4100
  %tobool3 = icmp ne i32 %and, 0, !dbg !4100
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !4098

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !4100

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !4102
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !4104
  %11 = load i32, ptr %frequency6, align 4, !dbg !4104
  store i32 %11, ptr %freq, align 4, !dbg !4105
  %12 = load i32, ptr %freq, align 4, !dbg !4106
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !4108
  %cmp7 = icmp eq i32 %12, %13, !dbg !4109
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !4110

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !4111
  store i32 %14, ptr %retval, align 4, !dbg !4112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4112

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %freq, align 4, !dbg !4113
  %16 = load i32, ptr %target_freq.addr, align 4, !dbg !4115
  %cmp9 = icmp ugt i32 %15, %16, !dbg !4116
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4117

if.then10:                                        ; preds = %if.end
  %17 = load i32, ptr %idx, align 4, !dbg !4118
  store i32 %17, ptr %best, align 4, !dbg !4120
  br label %for.inc, !dbg !4121

if.end11:                                         ; preds = %if.end
  %18 = load i32, ptr %best, align 4, !dbg !4122
  %cmp12 = icmp eq i32 %18, -1, !dbg !4124
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4125

if.then13:                                        ; preds = %if.end11
  %19 = load i32, ptr %idx, align 4, !dbg !4126
  store i32 %19, ptr %retval, align 4, !dbg !4127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4127

if.end14:                                         ; preds = %if.end11
  %20 = load i32, ptr %best, align 4, !dbg !4128
  store i32 %20, ptr %retval, align 4, !dbg !4129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4129

for.inc:                                          ; preds = %if.then10, %if.then4, %if.then
  %21 = load ptr, ptr %pos, align 8, !dbg !4096
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %21, i32 1, !dbg !4096
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !4096
  %22 = load i32, ptr %idx, align 4, !dbg !4096
  %inc = add i32 %22, 1, !dbg !4096
  store i32 %inc, ptr %idx, align 4, !dbg !4096
  br label %for.cond, !dbg !4096, !llvm.loop !4130

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %best, align 4, !dbg !4132
  store i32 %23, ptr %retval, align 4, !dbg !4133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4133

cleanup:                                          ; preds = %for.end, %if.end14, %if.then13, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #19, !dbg !4134
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !4134
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #19, !dbg !4134
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #19, !dbg !4134
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !4134
  %24 = load i32, ptr %retval, align 4, !dbg !4134
  ret i32 %24, !dbg !4134
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4135 dso_local i32 @cpufreq_register_governor(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_exit(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_start(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_stop(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_limits(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @od_dbs_update(ptr noundef %policy) #0 align 16 !dbg !4138 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %dbs_info = alloca ptr, align 8
  %sample_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4140, metadata !DIExpression()), !dbg !4145
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !4146
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4141, metadata !DIExpression()), !dbg !4147
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4148
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !4149
  %1 = load ptr, ptr %governor_data, align 8, !dbg !4149
  store ptr %1, ptr %policy_dbs, align 8, !dbg !4147
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4150
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4142, metadata !DIExpression()), !dbg !4151
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !4152
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %2, i32 0, i32 7, !dbg !4153
  %3 = load ptr, ptr %dbs_data1, align 8, !dbg !4153
  store ptr %3, ptr %dbs_data, align 8, !dbg !4151
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_info) #19, !dbg !4154
  call void @llvm.dbg.declare(metadata ptr %dbs_info, metadata !4143, metadata !DIExpression()), !dbg !4155
  %4 = load ptr, ptr %policy_dbs, align 8, !dbg !4156
  %call = call ptr @to_dbs_info(ptr noundef %4) #18, !dbg !4157
  store ptr %call, ptr %dbs_info, align 8, !dbg !4155
  call void @llvm.lifetime.start.p0(i64 4, ptr %sample_type) #19, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %sample_type, metadata !4144, metadata !DIExpression()), !dbg !4159
  %5 = load ptr, ptr %dbs_info, align 8, !dbg !4160
  %sample_type2 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %5, i32 0, i32 4, !dbg !4161
  %bf.load = load i8, ptr %sample_type2, align 4, !dbg !4161
  %bf.clear = and i8 %bf.load, 1, !dbg !4161
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4161
  store i32 %bf.cast, ptr %sample_type, align 4, !dbg !4159
  %6 = load ptr, ptr %dbs_info, align 8, !dbg !4162
  %sample_type3 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %6, i32 0, i32 4, !dbg !4163
  %bf.load4 = load i8, ptr %sample_type3, align 4, !dbg !4164
  %bf.clear5 = and i8 %bf.load4, -2, !dbg !4164
  %bf.set = or i8 %bf.clear5, 0, !dbg !4164
  store i8 %bf.set, ptr %sample_type3, align 4, !dbg !4164
  %7 = load i32, ptr %sample_type, align 4, !dbg !4165
  %cmp = icmp eq i32 %7, 1, !dbg !4167
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4168

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %policy_dbs, align 8, !dbg !4169
  %sample_delay_ns = getelementptr inbounds %struct.policy_dbs_info, ptr %8, i32 0, i32 3, !dbg !4170
  %9 = load i64, ptr %sample_delay_ns, align 8, !dbg !4170
  %cmp6 = icmp sgt i64 %9, 0, !dbg !4171
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4172

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %policy.addr, align 8, !dbg !4173
  %11 = load ptr, ptr %dbs_info, align 8, !dbg !4175
  %freq_lo = getelementptr inbounds %struct.od_policy_dbs_info, ptr %11, i32 0, i32 1, !dbg !4176
  %12 = load i32, ptr %freq_lo, align 8, !dbg !4176
  %call7 = call i32 @__cpufreq_driver_target(ptr noundef %10, i32 noundef %12, i32 noundef 5) #18, !dbg !4177
  %13 = load ptr, ptr %dbs_info, align 8, !dbg !4178
  %freq_lo_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %13, i32 0, i32 2, !dbg !4179
  %14 = load i32, ptr %freq_lo_delay_us, align 4, !dbg !4179
  store i32 %14, ptr %retval, align 4, !dbg !4180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4180

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load ptr, ptr %policy.addr, align 8, !dbg !4181
  call void @od_update(ptr noundef %15) #18, !dbg !4182
  %16 = load ptr, ptr %dbs_info, align 8, !dbg !4183
  %freq_lo8 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %16, i32 0, i32 1, !dbg !4185
  %17 = load i32, ptr %freq_lo8, align 8, !dbg !4185
  %tobool = icmp ne i32 %17, 0, !dbg !4183
  br i1 %tobool, label %if.then9, label %if.end14, !dbg !4186

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %dbs_info, align 8, !dbg !4187
  %sample_type10 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %18, i32 0, i32 4, !dbg !4189
  %bf.load11 = load i8, ptr %sample_type10, align 4, !dbg !4190
  %bf.clear12 = and i8 %bf.load11, -2, !dbg !4190
  %bf.set13 = or i8 %bf.clear12, 1, !dbg !4190
  store i8 %bf.set13, ptr %sample_type10, align 4, !dbg !4190
  %19 = load ptr, ptr %dbs_info, align 8, !dbg !4191
  %freq_hi_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %19, i32 0, i32 3, !dbg !4192
  %20 = load i32, ptr %freq_hi_delay_us, align 8, !dbg !4192
  store i32 %20, ptr %retval, align 4, !dbg !4193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4193

if.end14:                                         ; preds = %if.end
  %21 = load ptr, ptr %dbs_data, align 8, !dbg !4194
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %21, i32 0, i32 4, !dbg !4195
  %22 = load i32, ptr %sampling_rate, align 4, !dbg !4195
  %23 = load ptr, ptr %policy_dbs, align 8, !dbg !4196
  %rate_mult = getelementptr inbounds %struct.policy_dbs_info, ptr %23, i32 0, i32 9, !dbg !4197
  %24 = load i32, ptr %rate_mult, align 8, !dbg !4197
  %mul = mul i32 %22, %24, !dbg !4198
  store i32 %mul, ptr %retval, align 4, !dbg !4199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4199

cleanup:                                          ; preds = %if.end14, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sample_type) #19, !dbg !4200
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_info) #19, !dbg !4200
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4200
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !4200
  %25 = load i32, ptr %retval, align 4, !dbg !4200
  ret i32 %25, !dbg !4200
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @od_alloc() #0 align 16 !dbg !4201 {
entry:
  %dbs_info = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_info) #19, !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %dbs_info, metadata !4203, metadata !DIExpression()), !dbg !4205
  %call = call noalias ptr @kzalloc(i64 noundef 184, i32 noundef 3264) #22, !dbg !4206
  store ptr %call, ptr %dbs_info, align 8, !dbg !4207
  %0 = load ptr, ptr %dbs_info, align 8, !dbg !4208
  %tobool = icmp ne ptr %0, null, !dbg !4208
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4208

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %dbs_info, align 8, !dbg !4209
  %policy_dbs = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 0, !dbg !4210
  br label %cond.end, !dbg !4208

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4208

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %policy_dbs, %cond.true ], [ null, %cond.false ], !dbg !4208
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_info) #19, !dbg !4211
  ret ptr %cond, !dbg !4212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @od_free(ptr noundef %policy_dbs) #0 align 16 !dbg !4213 {
entry:
  %policy_dbs.addr = alloca ptr, align 8
  store ptr %policy_dbs, ptr %policy_dbs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy_dbs.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  %0 = load ptr, ptr %policy_dbs.addr, align 8, !dbg !4217
  %call = call ptr @to_dbs_info(ptr noundef %0) #18, !dbg !4218
  call void @kfree(ptr noundef %call) #18, !dbg !4219
  ret void, !dbg !4220
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @od_init(ptr noundef %dbs_data) #0 align 16 !dbg !2932 {
entry:
  %retval = alloca i32, align 4
  %dbs_data.addr = alloca ptr, align 8
  %tuners = alloca ptr, align 8
  %idle_time = alloca i64, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store ptr %dbs_data, ptr %dbs_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbs_data.addr, metadata !2934, metadata !DIExpression()), !dbg !4221
  call void @llvm.lifetime.start.p0(i64 8, ptr %tuners) #19, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %tuners, metadata !2935, metadata !DIExpression()), !dbg !4223
  call void @llvm.lifetime.start.p0(i64 8, ptr %idle_time) #19, !dbg !4224
  call void @llvm.dbg.declare(metadata ptr %idle_time, metadata !2940, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #19, !dbg !4226
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2941, metadata !DIExpression()), !dbg !4227
  %call = call noalias ptr @kzalloc(i64 noundef 4, i32 noundef 3264) #22, !dbg !4228
  store ptr %call, ptr %tuners, align 8, !dbg !4229
  %0 = load ptr, ptr %tuners, align 8, !dbg !4230
  %tobool = icmp ne ptr %0, null, !dbg !4230
  br i1 %tobool, label %if.end, label %if.then, !dbg !4232

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4233

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4234

do.body:                                          ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !4235
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !4235, !srcloc !4237
  br label %do.cond, !dbg !4235

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4235

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str.10) #18, !dbg !4238
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #19, !dbg !4239
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2942, metadata !DIExpression()), !dbg !4239
  br label %do.body2, !dbg !4239

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !4240
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2946, metadata !DIExpression()), !dbg !4240
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4240
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !4239
  br label %do.cond3, !dbg !4240

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4240

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #19, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2948, metadata !DIExpression()), !dbg !4241
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !4241, !srcloc !4242
  store i32 %2, ptr %pfo_val__, align 4, !dbg !4241
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !4241
  %conv = zext i32 %3 to i64, !dbg !4241
  %conv6 = trunc i64 %conv to i32, !dbg !4241
  store i32 %conv6, ptr %tmp5, align 4, !dbg !4241
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #19, !dbg !4239
  %4 = load i32, ptr %tmp5, align 4, !dbg !4241
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !4239
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !4239
  store i32 %5, ptr %tmp7, align 4, !dbg !4239
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #19, !dbg !4238
  %6 = load i32, ptr %tmp7, align 4, !dbg !4239
  store i32 %6, ptr %tmp1, align 4, !dbg !4238
  %7 = load i32, ptr %tmp1, align 4, !dbg !4238
  store i32 %7, ptr %tmp, align 4, !dbg !4235
  %8 = load i32, ptr %tmp, align 4, !dbg !4234
  store i32 %8, ptr %cpu, align 4, !dbg !4243
  %9 = load i32, ptr %cpu, align 4, !dbg !4244
  %call8 = call i64 @get_cpu_idle_time_us(i32 noundef %9, ptr noundef null) #18, !dbg !4245
  store i64 %call8, ptr %idle_time, align 8, !dbg !4246
  br label %do.body9, !dbg !4247

do.body9:                                         ; preds = %do.end4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !4248, !srcloc !4250
  %call10 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !4251
  %lnot = xor i1 %call10, true, !dbg !4251
  %lnot11 = xor i1 %lnot, true, !dbg !4251
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !4251
  %conv12 = sext i32 %lnot.ext to i64, !dbg !4251
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !4251
  %tobool13 = icmp ne i64 %expval, 0, !dbg !4251
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !4248

if.then14:                                        ; preds = %do.body9
  br label %do.body15, !dbg !4251

do.body15:                                        ; preds = %if.then14
  %10 = call i64 @llvm.read_register.i64(metadata !2956), !dbg !4253
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #19, !dbg !4253, !srcloc !4255
  call void @llvm.write_register.i64(metadata !2956, i64 %11), !dbg !4253
  br label %do.cond16, !dbg !4253

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4253

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !4253

if.end18:                                         ; preds = %do.end17, %do.body9
  br label %do.cond19, !dbg !4248

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !4248

do.end20:                                         ; preds = %do.cond19
  %12 = load i64, ptr %idle_time, align 8, !dbg !4256
  %cmp = icmp ne i64 %12, -1, !dbg !4258
  br i1 %cmp, label %if.then22, label %if.else, !dbg !4259

if.then22:                                        ; preds = %do.end20
  %13 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4260
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %13, i32 0, i32 6, !dbg !4262
  store i32 95, ptr %up_threshold, align 4, !dbg !4263
  br label %if.end24, !dbg !4264

if.else:                                          ; preds = %do.end20
  %14 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4265
  %up_threshold23 = getelementptr inbounds %struct.dbs_data, ptr %14, i32 0, i32 6, !dbg !4267
  store i32 80, ptr %up_threshold23, align 4, !dbg !4268
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %15 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4269
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %15, i32 0, i32 5, !dbg !4270
  store i32 1, ptr %sampling_down_factor, align 8, !dbg !4271
  %16 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4272
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %16, i32 0, i32 3, !dbg !4273
  store i32 0, ptr %ignore_nice_load, align 8, !dbg !4274
  %17 = load i32, ptr @default_powersave_bias, align 4, !dbg !4275
  %18 = load ptr, ptr %tuners, align 8, !dbg !4276
  %powersave_bias = getelementptr inbounds %struct.od_dbs_tuners, ptr %18, i32 0, i32 0, !dbg !4277
  store i32 %17, ptr %powersave_bias, align 4, !dbg !4278
  %call25 = call i32 @should_io_be_busy() #18, !dbg !4279
  %19 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4280
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %19, i32 0, i32 7, !dbg !4281
  store i32 %call25, ptr %io_is_busy, align 8, !dbg !4282
  %20 = load ptr, ptr %tuners, align 8, !dbg !4283
  %21 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4284
  %tuners26 = getelementptr inbounds %struct.dbs_data, ptr %21, i32 0, i32 2, !dbg !4285
  store ptr %20, ptr %tuners26, align 8, !dbg !4286
  store i32 0, ptr %retval, align 4, !dbg !4287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4287

cleanup:                                          ; preds = %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #19, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 8, ptr %idle_time) #19, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 8, ptr %tuners) #19, !dbg !4288
  %22 = load i32, ptr %retval, align 4, !dbg !4288
  ret i32 %22, !dbg !4288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @od_exit(ptr noundef %dbs_data) #0 align 16 !dbg !4289 {
entry:
  %dbs_data.addr = alloca ptr, align 8
  store ptr %dbs_data, ptr %dbs_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dbs_data.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  %0 = load ptr, ptr %dbs_data.addr, align 8, !dbg !4293
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2, !dbg !4294
  %1 = load ptr, ptr %tuners, align 8, !dbg !4294
  call void @kfree(ptr noundef %1) #18, !dbg !4295
  ret void, !dbg !4296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @od_start(ptr noundef %policy) #0 align 16 !dbg !4297 {
entry:
  %policy.addr = alloca ptr, align 8
  %dbs_info = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4299, metadata !DIExpression()), !dbg !4301
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_info) #19, !dbg !4302
  call void @llvm.dbg.declare(metadata ptr %dbs_info, metadata !4300, metadata !DIExpression()), !dbg !4303
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4304
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !4305
  %1 = load ptr, ptr %governor_data, align 8, !dbg !4305
  %call = call ptr @to_dbs_info(ptr noundef %1) #18, !dbg !4306
  store ptr %call, ptr %dbs_info, align 8, !dbg !4303
  %2 = load ptr, ptr %dbs_info, align 8, !dbg !4307
  %sample_type = getelementptr inbounds %struct.od_policy_dbs_info, ptr %2, i32 0, i32 4, !dbg !4308
  %bf.load = load i8, ptr %sample_type, align 4, !dbg !4309
  %bf.clear = and i8 %bf.load, -2, !dbg !4309
  %bf.set = or i8 %bf.clear, 0, !dbg !4309
  store i8 %bf.set, ptr %sample_type, align 4, !dbg !4309
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !4310
  call void @ondemand_powersave_bias_init(ptr noundef %3) #18, !dbg !4311
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_info) #19, !dbg !4312
  ret void, !dbg !4312
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sampling_rate_show(ptr noundef %attr_set, ptr noundef %buf) #0 align 16 !dbg !4313 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4315, metadata !DIExpression()), !dbg !4318
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4318
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4318
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4318
  store ptr %call, ptr %dbs_data, align 8, !dbg !4318
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4318
  %2 = load ptr, ptr %dbs_data, align 8, !dbg !4318
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %2, i32 0, i32 4, !dbg !4318
  %3 = load i32, ptr %sampling_rate, align 4, !dbg !4318
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %3) #18, !dbg !4318
  %conv = sext i32 %call1 to i64, !dbg !4318
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4318
  ret i64 %conv, !dbg !4318
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sampling_rate_store(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_dbs_data(ptr noundef %attr_set) #5 align 16 !dbg !4319 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4323, metadata !DIExpression()), !dbg !4326
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !4327
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4324, metadata !DIExpression()), !dbg !4327
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4327
  store ptr %0, ptr %__mptr, align 8, !dbg !4327
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4327
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4327
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !4328
  %2 = load ptr, ptr %tmp, align 8, !dbg !4327
  ret ptr %2, !dbg !4329
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4330 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @up_threshold_show(ptr noundef %attr_set, ptr noundef %buf) #0 align 16 !dbg !4334 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4336, metadata !DIExpression()), !dbg !4339
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4337, metadata !DIExpression()), !dbg !4339
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4339
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4338, metadata !DIExpression()), !dbg !4339
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4339
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4339
  store ptr %call, ptr %dbs_data, align 8, !dbg !4339
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4339
  %2 = load ptr, ptr %dbs_data, align 8, !dbg !4339
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %2, i32 0, i32 6, !dbg !4339
  %3 = load i32, ptr %up_threshold, align 4, !dbg !4339
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %3) #18, !dbg !4339
  %conv = sext i32 %call1 to i64, !dbg !4339
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4339
  ret i64 %conv, !dbg !4339
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @up_threshold_store(ptr noundef %attr_set, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4340 {
entry:
  %retval = alloca i64, align 8
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dbs_data = alloca ptr, align 8
  %input = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4342, metadata !DIExpression()), !dbg !4348
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4343, metadata !DIExpression()), !dbg !4349
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4344, metadata !DIExpression()), !dbg !4350
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4351
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4345, metadata !DIExpression()), !dbg !4352
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4353
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4354
  store ptr %call, ptr %dbs_data, align 8, !dbg !4352
  call void @llvm.lifetime.start.p0(i64 4, ptr %input) #19, !dbg !4355
  call void @llvm.dbg.declare(metadata ptr %input, metadata !4346, metadata !DIExpression()), !dbg !4356
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4357
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4347, metadata !DIExpression()), !dbg !4358
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4359
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %input) #18, !dbg !4360
  store i32 %call1, ptr %ret, align 4, !dbg !4361
  %2 = load i32, ptr %ret, align 4, !dbg !4362
  %cmp = icmp ne i32 %2, 1, !dbg !4364
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4365

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %input, align 4, !dbg !4366
  %cmp2 = icmp ugt i32 %3, 100, !dbg !4367
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !4368

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %input, align 4, !dbg !4369
  %cmp4 = icmp ult i32 %4, 1, !dbg !4370
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4371

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !4372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4372

if.end:                                           ; preds = %lor.lhs.false3
  %5 = load i32, ptr %input, align 4, !dbg !4374
  %6 = load ptr, ptr %dbs_data, align 8, !dbg !4375
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %6, i32 0, i32 6, !dbg !4376
  store i32 %5, ptr %up_threshold, align 4, !dbg !4377
  %7 = load i64, ptr %count.addr, align 8, !dbg !4378
  store i64 %7, ptr %retval, align 8, !dbg !4379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4379

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 4, ptr %input) #19, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4380
  %8 = load i64, ptr %retval, align 8, !dbg !4380
  ret i64 %8, !dbg !4380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4381 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sampling_down_factor_show(ptr noundef %attr_set, ptr noundef %buf) #0 align 16 !dbg !4384 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4386, metadata !DIExpression()), !dbg !4389
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4387, metadata !DIExpression()), !dbg !4389
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4389
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4388, metadata !DIExpression()), !dbg !4389
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4389
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4389
  store ptr %call, ptr %dbs_data, align 8, !dbg !4389
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4389
  %2 = load ptr, ptr %dbs_data, align 8, !dbg !4389
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %2, i32 0, i32 5, !dbg !4389
  %3 = load i32, ptr %sampling_down_factor, align 8, !dbg !4389
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %3) #18, !dbg !4389
  %conv = sext i32 %call1 to i64, !dbg !4389
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4389
  ret i64 %conv, !dbg !4389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sampling_down_factor_store(ptr noundef %attr_set, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4390 {
entry:
  %retval = alloca i64, align 8
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dbs_data = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %input = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4392, metadata !DIExpression()), !dbg !4405
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4393, metadata !DIExpression()), !dbg !4406
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4394, metadata !DIExpression()), !dbg !4407
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4408
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4395, metadata !DIExpression()), !dbg !4409
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4410
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4411
  store ptr %call, ptr %dbs_data, align 8, !dbg !4409
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4396, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 4, ptr %input) #19, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %input, metadata !4397, metadata !DIExpression()), !dbg !4415
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4416
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4398, metadata !DIExpression()), !dbg !4417
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4418
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %input) #18, !dbg !4419
  store i32 %call1, ptr %ret, align 4, !dbg !4420
  %2 = load i32, ptr %ret, align 4, !dbg !4421
  %cmp = icmp ne i32 %2, 1, !dbg !4423
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4424

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %input, align 4, !dbg !4425
  %cmp2 = icmp ugt i32 %3, 100000, !dbg !4426
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !4427

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %input, align 4, !dbg !4428
  %cmp4 = icmp ult i32 %4, 1, !dbg !4429
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4430

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !4431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4431

if.end:                                           ; preds = %lor.lhs.false3
  %5 = load i32, ptr %input, align 4, !dbg !4432
  %6 = load ptr, ptr %dbs_data, align 8, !dbg !4433
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %6, i32 0, i32 5, !dbg !4434
  store i32 %5, ptr %sampling_down_factor, align 8, !dbg !4435
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !4436
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4399, metadata !DIExpression()), !dbg !4436
  %7 = load ptr, ptr %attr_set.addr, align 8, !dbg !4436
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %7, i32 0, i32 1, !dbg !4436
  %next = getelementptr inbounds %struct.list_head, ptr %policy_list, i32 0, i32 0, !dbg !4436
  %8 = load ptr, ptr %next, align 8, !dbg !4436
  store ptr %8, ptr %__mptr, align 8, !dbg !4436
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4436
  %add.ptr = getelementptr i8, ptr %9, i64 -136, !dbg !4436
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !4437
  %10 = load ptr, ptr %tmp, align 8, !dbg !4436
  store ptr %10, ptr %policy_dbs, align 8, !dbg !4437
  br label %for.cond, !dbg !4437

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load ptr, ptr %policy_dbs, align 8, !dbg !4438
  %list = getelementptr inbounds %struct.policy_dbs_info, ptr %11, i32 0, i32 8, !dbg !4438
  %12 = load ptr, ptr %attr_set.addr, align 8, !dbg !4438
  %policy_list5 = getelementptr inbounds %struct.gov_attr_set, ptr %12, i32 0, i32 1, !dbg !4438
  %cmp6 = icmp eq ptr %list, %policy_list5, !dbg !4438
  %lnot = xor i1 %cmp6, true, !dbg !4438
  br i1 %lnot, label %for.body, label %for.end, !dbg !4437

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %policy_dbs, align 8, !dbg !4439
  %update_mutex = getelementptr inbounds %struct.policy_dbs_info, ptr %13, i32 0, i32 1, !dbg !4441
  call void @mutex_lock(ptr noundef %update_mutex) #18, !dbg !4442
  %14 = load ptr, ptr %policy_dbs, align 8, !dbg !4443
  %rate_mult = getelementptr inbounds %struct.policy_dbs_info, ptr %14, i32 0, i32 9, !dbg !4444
  store i32 1, ptr %rate_mult, align 8, !dbg !4445
  %15 = load ptr, ptr %policy_dbs, align 8, !dbg !4446
  %update_mutex7 = getelementptr inbounds %struct.policy_dbs_info, ptr %15, i32 0, i32 1, !dbg !4447
  call void @mutex_unlock(ptr noundef %update_mutex7) #18, !dbg !4448
  br label %for.inc, !dbg !4449

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #19, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !4402, metadata !DIExpression()), !dbg !4450
  %16 = load ptr, ptr %policy_dbs, align 8, !dbg !4450
  %list9 = getelementptr inbounds %struct.policy_dbs_info, ptr %16, i32 0, i32 8, !dbg !4450
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !4450
  %17 = load ptr, ptr %next10, align 8, !dbg !4450
  store ptr %17, ptr %__mptr8, align 8, !dbg !4450
  %18 = load ptr, ptr %__mptr8, align 8, !dbg !4450
  %add.ptr12 = getelementptr i8, ptr %18, i64 -136, !dbg !4450
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !4450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #19, !dbg !4438
  %19 = load ptr, ptr %tmp11, align 8, !dbg !4450
  store ptr %19, ptr %policy_dbs, align 8, !dbg !4438
  br label %for.cond, !dbg !4438, !llvm.loop !4451

for.end:                                          ; preds = %for.cond
  %20 = load i64, ptr %count.addr, align 8, !dbg !4453
  store i64 %20, ptr %retval, align 8, !dbg !4454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4454

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4455
  call void @llvm.lifetime.end.p0(i64 4, ptr %input) #19, !dbg !4455
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !4455
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4455
  %21 = load i64, ptr %retval, align 8, !dbg !4455
  ret i64 %21, !dbg !4455
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4456 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4460 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ignore_nice_load_show(ptr noundef %attr_set, ptr noundef %buf) #0 align 16 !dbg !4461 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4463, metadata !DIExpression()), !dbg !4466
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4464, metadata !DIExpression()), !dbg !4466
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4465, metadata !DIExpression()), !dbg !4466
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4466
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4466
  store ptr %call, ptr %dbs_data, align 8, !dbg !4466
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4466
  %2 = load ptr, ptr %dbs_data, align 8, !dbg !4466
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %2, i32 0, i32 3, !dbg !4466
  %3 = load i32, ptr %ignore_nice_load, align 8, !dbg !4466
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %3) #18, !dbg !4466
  %conv = sext i32 %call1 to i64, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4466
  ret i64 %conv, !dbg !4466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ignore_nice_load_store(ptr noundef %attr_set, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4467 {
entry:
  %retval = alloca i64, align 8
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dbs_data = alloca ptr, align 8
  %input = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4469, metadata !DIExpression()), !dbg !4475
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4470, metadata !DIExpression()), !dbg !4476
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4471, metadata !DIExpression()), !dbg !4477
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4478
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4472, metadata !DIExpression()), !dbg !4479
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4480
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4481
  store ptr %call, ptr %dbs_data, align 8, !dbg !4479
  call void @llvm.lifetime.start.p0(i64 4, ptr %input) #19, !dbg !4482
  call void @llvm.dbg.declare(metadata ptr %input, metadata !4473, metadata !DIExpression()), !dbg !4483
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4484
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4474, metadata !DIExpression()), !dbg !4485
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4486
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %input) #18, !dbg !4487
  store i32 %call1, ptr %ret, align 4, !dbg !4488
  %2 = load i32, ptr %ret, align 4, !dbg !4489
  %cmp = icmp ne i32 %2, 1, !dbg !4491
  br i1 %cmp, label %if.then, label %if.end, !dbg !4492

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4493

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %input, align 4, !dbg !4494
  %cmp2 = icmp ugt i32 %3, 1, !dbg !4496
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4497

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %input, align 4, !dbg !4498
  br label %if.end4, !dbg !4499

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %input, align 4, !dbg !4500
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !4502
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 3, !dbg !4503
  %6 = load i32, ptr %ignore_nice_load, align 8, !dbg !4503
  %cmp5 = icmp eq i32 %4, %6, !dbg !4504
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4505

if.then6:                                         ; preds = %if.end4
  %7 = load i64, ptr %count.addr, align 8, !dbg !4506
  store i64 %7, ptr %retval, align 8, !dbg !4508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4508

if.end7:                                          ; preds = %if.end4
  %8 = load i32, ptr %input, align 4, !dbg !4509
  %9 = load ptr, ptr %dbs_data, align 8, !dbg !4510
  %ignore_nice_load8 = getelementptr inbounds %struct.dbs_data, ptr %9, i32 0, i32 3, !dbg !4511
  store i32 %8, ptr %ignore_nice_load8, align 8, !dbg !4512
  %10 = load ptr, ptr %dbs_data, align 8, !dbg !4513
  call void @gov_update_cpu_data(ptr noundef %10) #18, !dbg !4514
  %11 = load i64, ptr %count.addr, align 8, !dbg !4515
  store i64 %11, ptr %retval, align 8, !dbg !4516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4516

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 4, ptr %input) #19, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4517
  %12 = load i64, ptr %retval, align 8, !dbg !4517
  ret i64 %12, !dbg !4517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4518 dso_local void @gov_update_cpu_data(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @powersave_bias_show(ptr noundef %attr_set, ptr noundef %buf) #0 align 16 !dbg !4519 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %tuners = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4521, metadata !DIExpression()), !dbg !4525
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4522, metadata !DIExpression()), !dbg !4525
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4523, metadata !DIExpression()), !dbg !4525
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4525
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4525
  store ptr %call, ptr %dbs_data, align 8, !dbg !4525
  call void @llvm.lifetime.start.p0(i64 8, ptr %tuners) #19, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %tuners, metadata !4524, metadata !DIExpression()), !dbg !4525
  %1 = load ptr, ptr %dbs_data, align 8, !dbg !4525
  %tuners1 = getelementptr inbounds %struct.dbs_data, ptr %1, i32 0, i32 2, !dbg !4525
  %2 = load ptr, ptr %tuners1, align 8, !dbg !4525
  store ptr %2, ptr %tuners, align 8, !dbg !4525
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4525
  %4 = load ptr, ptr %tuners, align 8, !dbg !4525
  %powersave_bias = getelementptr inbounds %struct.od_dbs_tuners, ptr %4, i32 0, i32 0, !dbg !4525
  %5 = load i32, ptr %powersave_bias, align 4, !dbg !4525
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.2, i32 noundef %5) #18, !dbg !4525
  %conv = sext i32 %call2 to i64, !dbg !4525
  call void @llvm.lifetime.end.p0(i64 8, ptr %tuners) #19, !dbg !4525
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4525
  ret i64 %conv, !dbg !4525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @powersave_bias_store(ptr noundef %attr_set, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4526 {
entry:
  %retval = alloca i64, align 8
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dbs_data = alloca ptr, align 8
  %od_tuners = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %input = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4528, metadata !DIExpression()), !dbg !4542
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4529, metadata !DIExpression()), !dbg !4543
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4530, metadata !DIExpression()), !dbg !4544
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4545
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4531, metadata !DIExpression()), !dbg !4546
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4547
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4548
  store ptr %call, ptr %dbs_data, align 8, !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %od_tuners) #19, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %od_tuners, metadata !4532, metadata !DIExpression()), !dbg !4550
  %1 = load ptr, ptr %dbs_data, align 8, !dbg !4551
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %1, i32 0, i32 2, !dbg !4552
  %2 = load ptr, ptr %tuners, align 8, !dbg !4552
  store ptr %2, ptr %od_tuners, align 8, !dbg !4550
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !4553
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4533, metadata !DIExpression()), !dbg !4554
  call void @llvm.lifetime.start.p0(i64 4, ptr %input) #19, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %input, metadata !4534, metadata !DIExpression()), !dbg !4556
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4557
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4535, metadata !DIExpression()), !dbg !4558
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4559
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.4, ptr noundef %input) #18, !dbg !4560
  store i32 %call1, ptr %ret, align 4, !dbg !4561
  %4 = load i32, ptr %ret, align 4, !dbg !4562
  %cmp = icmp ne i32 %4, 1, !dbg !4564
  br i1 %cmp, label %if.then, label %if.end, !dbg !4565

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4566

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %input, align 4, !dbg !4567
  %cmp2 = icmp ugt i32 %5, 1000, !dbg !4569
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4570

if.then3:                                         ; preds = %if.end
  store i32 1000, ptr %input, align 4, !dbg !4571
  br label %if.end4, !dbg !4572

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %input, align 4, !dbg !4573
  %7 = load ptr, ptr %od_tuners, align 8, !dbg !4574
  %powersave_bias = getelementptr inbounds %struct.od_dbs_tuners, ptr %7, i32 0, i32 0, !dbg !4575
  store i32 %6, ptr %powersave_bias, align 4, !dbg !4576
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !4577
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4536, metadata !DIExpression()), !dbg !4577
  %8 = load ptr, ptr %attr_set.addr, align 8, !dbg !4577
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %8, i32 0, i32 1, !dbg !4577
  %next = getelementptr inbounds %struct.list_head, ptr %policy_list, i32 0, i32 0, !dbg !4577
  %9 = load ptr, ptr %next, align 8, !dbg !4577
  store ptr %9, ptr %__mptr, align 8, !dbg !4577
  %10 = load ptr, ptr %__mptr, align 8, !dbg !4577
  %add.ptr = getelementptr i8, ptr %10, i64 -136, !dbg !4577
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4577
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !4578
  %11 = load ptr, ptr %tmp, align 8, !dbg !4577
  store ptr %11, ptr %policy_dbs, align 8, !dbg !4578
  br label %for.cond, !dbg !4578

for.cond:                                         ; preds = %for.inc, %if.end4
  %12 = load ptr, ptr %policy_dbs, align 8, !dbg !4579
  %list = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 8, !dbg !4579
  %13 = load ptr, ptr %attr_set.addr, align 8, !dbg !4579
  %policy_list5 = getelementptr inbounds %struct.gov_attr_set, ptr %13, i32 0, i32 1, !dbg !4579
  %cmp6 = icmp eq ptr %list, %policy_list5, !dbg !4579
  %lnot = xor i1 %cmp6, true, !dbg !4579
  br i1 %lnot, label %for.body, label %for.end, !dbg !4578

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %policy_dbs, align 8, !dbg !4580
  %policy = getelementptr inbounds %struct.policy_dbs_info, ptr %14, i32 0, i32 0, !dbg !4581
  %15 = load ptr, ptr %policy, align 8, !dbg !4581
  call void @ondemand_powersave_bias_init(ptr noundef %15) #18, !dbg !4582
  br label %for.inc, !dbg !4582

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #19, !dbg !4583
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !4539, metadata !DIExpression()), !dbg !4583
  %16 = load ptr, ptr %policy_dbs, align 8, !dbg !4583
  %list8 = getelementptr inbounds %struct.policy_dbs_info, ptr %16, i32 0, i32 8, !dbg !4583
  %next9 = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !4583
  %17 = load ptr, ptr %next9, align 8, !dbg !4583
  store ptr %17, ptr %__mptr7, align 8, !dbg !4583
  %18 = load ptr, ptr %__mptr7, align 8, !dbg !4583
  %add.ptr11 = getelementptr i8, ptr %18, i64 -136, !dbg !4583
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !4583
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #19, !dbg !4579
  %19 = load ptr, ptr %tmp10, align 8, !dbg !4583
  store ptr %19, ptr %policy_dbs, align 8, !dbg !4579
  br label %for.cond, !dbg !4579, !llvm.loop !4584

for.end:                                          ; preds = %for.cond
  %20 = load i64, ptr %count.addr, align 8, !dbg !4586
  store i64 %20, ptr %retval, align 8, !dbg !4587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4587

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4588
  call void @llvm.lifetime.end.p0(i64 4, ptr %input) #19, !dbg !4588
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !4588
  call void @llvm.lifetime.end.p0(i64 8, ptr %od_tuners) #19, !dbg !4588
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4588
  %21 = load i64, ptr %retval, align 8, !dbg !4588
  ret i64 %21, !dbg !4588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ondemand_powersave_bias_init(ptr noundef %policy) #0 align 16 !dbg !4589 {
entry:
  %policy.addr = alloca ptr, align 8
  %dbs_info = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4591, metadata !DIExpression()), !dbg !4593
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_info) #19, !dbg !4594
  call void @llvm.dbg.declare(metadata ptr %dbs_info, metadata !4592, metadata !DIExpression()), !dbg !4595
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4596
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !4597
  %1 = load ptr, ptr %governor_data, align 8, !dbg !4597
  %call = call ptr @to_dbs_info(ptr noundef %1) #18, !dbg !4598
  store ptr %call, ptr %dbs_info, align 8, !dbg !4595
  %2 = load ptr, ptr %dbs_info, align 8, !dbg !4599
  %freq_lo = getelementptr inbounds %struct.od_policy_dbs_info, ptr %2, i32 0, i32 1, !dbg !4600
  store i32 0, ptr %freq_lo, align 8, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_info) #19, !dbg !4602
  ret void, !dbg !4602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @io_is_busy_show(ptr noundef %attr_set, ptr noundef %buf) #0 align 16 !dbg !4603 {
entry:
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4605, metadata !DIExpression()), !dbg !4608
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4606, metadata !DIExpression()), !dbg !4608
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4608
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4607, metadata !DIExpression()), !dbg !4608
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4608
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4608
  store ptr %call, ptr %dbs_data, align 8, !dbg !4608
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4608
  %2 = load ptr, ptr %dbs_data, align 8, !dbg !4608
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %2, i32 0, i32 7, !dbg !4608
  %3 = load i32, ptr %io_is_busy, align 8, !dbg !4608
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %3) #18, !dbg !4608
  %conv = sext i32 %call1 to i64, !dbg !4608
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4608
  ret i64 %conv, !dbg !4608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @io_is_busy_store(ptr noundef %attr_set, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4609 {
entry:
  %retval = alloca i64, align 8
  %attr_set.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dbs_data = alloca ptr, align 8
  %input = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %attr_set, ptr %attr_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_set.addr, metadata !4611, metadata !DIExpression()), !dbg !4617
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4612, metadata !DIExpression()), !dbg !4618
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4613, metadata !DIExpression()), !dbg !4619
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4620
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4614, metadata !DIExpression()), !dbg !4621
  %0 = load ptr, ptr %attr_set.addr, align 8, !dbg !4622
  %call = call ptr @to_dbs_data(ptr noundef %0) #18, !dbg !4623
  store ptr %call, ptr %dbs_data, align 8, !dbg !4621
  call void @llvm.lifetime.start.p0(i64 4, ptr %input) #19, !dbg !4624
  call void @llvm.dbg.declare(metadata ptr %input, metadata !4615, metadata !DIExpression()), !dbg !4625
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4626
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4616, metadata !DIExpression()), !dbg !4627
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4628
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %input) #18, !dbg !4629
  store i32 %call1, ptr %ret, align 4, !dbg !4630
  %2 = load i32, ptr %ret, align 4, !dbg !4631
  %cmp = icmp ne i32 %2, 1, !dbg !4633
  br i1 %cmp, label %if.then, label %if.end, !dbg !4634

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4635

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %input, align 4, !dbg !4636
  %tobool = icmp ne i32 %3, 0, !dbg !4637
  %lnot = xor i1 %tobool, true, !dbg !4637
  %lnot2 = xor i1 %lnot, true, !dbg !4638
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4638
  %4 = load ptr, ptr %dbs_data, align 8, !dbg !4639
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %4, i32 0, i32 7, !dbg !4640
  store i32 %lnot.ext, ptr %io_is_busy, align 8, !dbg !4641
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !4642
  call void @gov_update_cpu_data(ptr noundef %5) #18, !dbg !4643
  %6 = load i64, ptr %count.addr, align 8, !dbg !4644
  store i64 %6, ptr %retval, align 8, !dbg !4645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4645

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4646
  call void @llvm.lifetime.end.p0(i64 4, ptr %input) #19, !dbg !4646
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4646
  %7 = load i64, ptr %retval, align 8, !dbg !4646
  ret i64 %7, !dbg !4646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4647 dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @od_update(ptr noundef %policy) #0 align 16 !dbg !4648 {
entry:
  %policy.addr = alloca ptr, align 8
  %policy_dbs = alloca ptr, align 8
  %dbs_info = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %od_tuners = alloca ptr, align 8
  %load = alloca i32, align 4
  %freq_next = alloca i32, align 4
  %min_f = alloca i32, align 4
  %max_f = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4650, metadata !DIExpression()), !dbg !4661
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !4662
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4651, metadata !DIExpression()), !dbg !4663
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4664
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !4665
  %1 = load ptr, ptr %governor_data, align 8, !dbg !4665
  store ptr %1, ptr %policy_dbs, align 8, !dbg !4663
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_info) #19, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %dbs_info, metadata !4652, metadata !DIExpression()), !dbg !4667
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !4668
  %call = call ptr @to_dbs_info(ptr noundef %2) #18, !dbg !4669
  store ptr %call, ptr %dbs_info, align 8, !dbg !4667
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4653, metadata !DIExpression()), !dbg !4671
  %3 = load ptr, ptr %policy_dbs, align 8, !dbg !4672
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 7, !dbg !4673
  %4 = load ptr, ptr %dbs_data1, align 8, !dbg !4673
  store ptr %4, ptr %dbs_data, align 8, !dbg !4671
  call void @llvm.lifetime.start.p0(i64 8, ptr %od_tuners) #19, !dbg !4674
  call void @llvm.dbg.declare(metadata ptr %od_tuners, metadata !4654, metadata !DIExpression()), !dbg !4675
  %5 = load ptr, ptr %dbs_data, align 8, !dbg !4676
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 2, !dbg !4677
  %6 = load ptr, ptr %tuners, align 8, !dbg !4677
  store ptr %6, ptr %od_tuners, align 8, !dbg !4675
  call void @llvm.lifetime.start.p0(i64 4, ptr %load) #19, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %load, metadata !4655, metadata !DIExpression()), !dbg !4679
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !4680
  %call2 = call i32 @dbs_update(ptr noundef %7) #18, !dbg !4681
  store i32 %call2, ptr %load, align 4, !dbg !4679
  %8 = load ptr, ptr %dbs_info, align 8, !dbg !4682
  %freq_lo = getelementptr inbounds %struct.od_policy_dbs_info, ptr %8, i32 0, i32 1, !dbg !4683
  store i32 0, ptr %freq_lo, align 8, !dbg !4684
  %9 = load i32, ptr %load, align 4, !dbg !4685
  %10 = load ptr, ptr %dbs_data, align 8, !dbg !4686
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %10, i32 0, i32 6, !dbg !4687
  %11 = load i32, ptr %up_threshold, align 4, !dbg !4687
  %cmp = icmp ugt i32 %9, %11, !dbg !4688
  br i1 %cmp, label %if.then, label %if.else, !dbg !4689

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %policy.addr, align 8, !dbg !4690
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %12, i32 0, i32 9, !dbg !4693
  %13 = load i32, ptr %cur, align 4, !dbg !4693
  %14 = load ptr, ptr %policy.addr, align 8, !dbg !4694
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 8, !dbg !4695
  %15 = load i32, ptr %max, align 8, !dbg !4695
  %cmp3 = icmp ult i32 %13, %15, !dbg !4696
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4697

if.then4:                                         ; preds = %if.then
  %16 = load ptr, ptr %dbs_data, align 8, !dbg !4698
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %16, i32 0, i32 5, !dbg !4699
  %17 = load i32, ptr %sampling_down_factor, align 8, !dbg !4699
  %18 = load ptr, ptr %policy_dbs, align 8, !dbg !4700
  %rate_mult = getelementptr inbounds %struct.policy_dbs_info, ptr %18, i32 0, i32 9, !dbg !4701
  store i32 %17, ptr %rate_mult, align 8, !dbg !4702
  br label %if.end, !dbg !4700

if.end:                                           ; preds = %if.then4, %if.then
  %19 = load ptr, ptr %policy.addr, align 8, !dbg !4703
  %20 = load ptr, ptr %policy.addr, align 8, !dbg !4704
  %max5 = getelementptr inbounds %struct.cpufreq_policy, ptr %20, i32 0, i32 8, !dbg !4705
  %21 = load i32, ptr %max5, align 8, !dbg !4705
  call void @dbs_freq_increase(ptr noundef %19, i32 noundef %21) #18, !dbg !4706
  br label %if.end12, !dbg !4707

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq_next) #19, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %freq_next, metadata !4656, metadata !DIExpression()), !dbg !4709
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_f) #19, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %min_f, metadata !4659, metadata !DIExpression()), !dbg !4710
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_f) #19, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %max_f, metadata !4660, metadata !DIExpression()), !dbg !4711
  %22 = load ptr, ptr %policy.addr, align 8, !dbg !4712
  %cpuinfo = getelementptr inbounds %struct.cpufreq_policy, ptr %22, i32 0, i32 6, !dbg !4713
  %min_freq = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo, i32 0, i32 1, !dbg !4714
  %23 = load i32, ptr %min_freq, align 4, !dbg !4714
  store i32 %23, ptr %min_f, align 4, !dbg !4715
  %24 = load ptr, ptr %policy.addr, align 8, !dbg !4716
  %cpuinfo6 = getelementptr inbounds %struct.cpufreq_policy, ptr %24, i32 0, i32 6, !dbg !4717
  %max_freq = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo6, i32 0, i32 0, !dbg !4718
  %25 = load i32, ptr %max_freq, align 8, !dbg !4718
  store i32 %25, ptr %max_f, align 4, !dbg !4719
  %26 = load i32, ptr %min_f, align 4, !dbg !4720
  %27 = load i32, ptr %load, align 4, !dbg !4721
  %28 = load i32, ptr %max_f, align 4, !dbg !4722
  %29 = load i32, ptr %min_f, align 4, !dbg !4723
  %sub = sub i32 %28, %29, !dbg !4724
  %mul = mul i32 %27, %sub, !dbg !4725
  %div = udiv i32 %mul, 100, !dbg !4726
  %add = add i32 %26, %div, !dbg !4727
  store i32 %add, ptr %freq_next, align 4, !dbg !4728
  %30 = load ptr, ptr %policy_dbs, align 8, !dbg !4729
  %rate_mult7 = getelementptr inbounds %struct.policy_dbs_info, ptr %30, i32 0, i32 9, !dbg !4730
  store i32 1, ptr %rate_mult7, align 8, !dbg !4731
  %31 = load ptr, ptr %od_tuners, align 8, !dbg !4732
  %powersave_bias = getelementptr inbounds %struct.od_dbs_tuners, ptr %31, i32 0, i32 0, !dbg !4734
  %32 = load i32, ptr %powersave_bias, align 4, !dbg !4734
  %tobool = icmp ne i32 %32, 0, !dbg !4732
  br i1 %tobool, label %if.then8, label %if.end10, !dbg !4735

if.then8:                                         ; preds = %if.else
  %33 = load ptr, ptr @od_ops, align 8, !dbg !4736
  %34 = load ptr, ptr %policy.addr, align 8, !dbg !4737
  %35 = load i32, ptr %freq_next, align 4, !dbg !4738
  %call9 = call i32 %33(ptr noundef %34, i32 noundef %35, i32 noundef 4) #18, !dbg !4739
  store i32 %call9, ptr %freq_next, align 4, !dbg !4740
  br label %if.end10, !dbg !4741

if.end10:                                         ; preds = %if.then8, %if.else
  %36 = load ptr, ptr %policy.addr, align 8, !dbg !4742
  %37 = load i32, ptr %freq_next, align 4, !dbg !4743
  %call11 = call i32 @__cpufreq_driver_target(ptr noundef %36, i32 noundef %37, i32 noundef 6) #18, !dbg !4744
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_f) #19, !dbg !4745
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_f) #19, !dbg !4745
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq_next) #19, !dbg !4745
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %load) #19, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %od_tuners) #19, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_info) #19, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !4746
  ret void, !dbg !4746
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4747 dso_local i32 @dbs_update(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbs_freq_increase(ptr noundef %policy, i32 noundef %freq) #0 align 16 !dbg !4748 {
entry:
  %policy.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %policy_dbs = alloca ptr, align 8
  %dbs_data = alloca ptr, align 8
  %od_tuners = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4752, metadata !DIExpression()), !dbg !4757
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !4753, metadata !DIExpression()), !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy_dbs) #19, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %policy_dbs, metadata !4754, metadata !DIExpression()), !dbg !4760
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4761
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14, !dbg !4762
  %1 = load ptr, ptr %governor_data, align 8, !dbg !4762
  store ptr %1, ptr %policy_dbs, align 8, !dbg !4760
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbs_data) #19, !dbg !4763
  call void @llvm.dbg.declare(metadata ptr %dbs_data, metadata !4755, metadata !DIExpression()), !dbg !4764
  %2 = load ptr, ptr %policy_dbs, align 8, !dbg !4765
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %2, i32 0, i32 7, !dbg !4766
  %3 = load ptr, ptr %dbs_data1, align 8, !dbg !4766
  store ptr %3, ptr %dbs_data, align 8, !dbg !4764
  call void @llvm.lifetime.start.p0(i64 8, ptr %od_tuners) #19, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %od_tuners, metadata !4756, metadata !DIExpression()), !dbg !4768
  %4 = load ptr, ptr %dbs_data, align 8, !dbg !4769
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %4, i32 0, i32 2, !dbg !4770
  %5 = load ptr, ptr %tuners, align 8, !dbg !4770
  store ptr %5, ptr %od_tuners, align 8, !dbg !4768
  %6 = load ptr, ptr %od_tuners, align 8, !dbg !4771
  %powersave_bias = getelementptr inbounds %struct.od_dbs_tuners, ptr %6, i32 0, i32 0, !dbg !4773
  %7 = load i32, ptr %powersave_bias, align 4, !dbg !4773
  %tobool = icmp ne i32 %7, 0, !dbg !4771
  br i1 %tobool, label %if.then, label %if.else, !dbg !4774

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr @od_ops, align 8, !dbg !4775
  %9 = load ptr, ptr %policy.addr, align 8, !dbg !4776
  %10 = load i32, ptr %freq.addr, align 4, !dbg !4777
  %call = call i32 %8(ptr noundef %9, i32 noundef %10, i32 noundef 5) #18, !dbg !4778
  store i32 %call, ptr %freq.addr, align 4, !dbg !4779
  br label %if.end3, !dbg !4780

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %policy.addr, align 8, !dbg !4781
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %11, i32 0, i32 9, !dbg !4783
  %12 = load i32, ptr %cur, align 4, !dbg !4783
  %13 = load ptr, ptr %policy.addr, align 8, !dbg !4784
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %13, i32 0, i32 8, !dbg !4785
  %14 = load i32, ptr %max, align 8, !dbg !4785
  %cmp = icmp eq i32 %12, %14, !dbg !4786
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4787

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4788

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %15 = load ptr, ptr %policy.addr, align 8, !dbg !4789
  %16 = load i32, ptr %freq.addr, align 4, !dbg !4790
  %17 = load ptr, ptr %od_tuners, align 8, !dbg !4791
  %powersave_bias4 = getelementptr inbounds %struct.od_dbs_tuners, ptr %17, i32 0, i32 0, !dbg !4792
  %18 = load i32, ptr %powersave_bias4, align 4, !dbg !4792
  %tobool5 = icmp ne i32 %18, 0, !dbg !4791
  %19 = zext i1 %tobool5 to i64, !dbg !4791
  %cond = select i1 %tobool5, i64 4, i64 5, !dbg !4791
  %conv = trunc i64 %cond to i32, !dbg !4791
  %call6 = call i32 @__cpufreq_driver_target(ptr noundef %15, i32 noundef %16, i32 noundef %conv) #18, !dbg !4793
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4794
  br label %cleanup, !dbg !4794

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %od_tuners) #19, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbs_data) #19, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy_dbs) #19, !dbg !4794
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4794

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !4795 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4799, metadata !DIExpression()), !dbg !4801
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4800, metadata !DIExpression()), !dbg !4802
  %0 = load i64, ptr %size.addr, align 8, !dbg !4803
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4804
  %or = or i32 %1, 256, !dbg !4805
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !4806
  ret ptr %call, !dbg !4807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !4808 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4810, metadata !DIExpression()), !dbg !4815
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4811, metadata !DIExpression()), !dbg !4816
  %0 = load i64, ptr %size.addr, align 8, !dbg !4817
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4818
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4819

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4820
  %tobool = icmp ne i64 %2, 0, !dbg !4820
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4821

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4812, metadata !DIExpression()), !dbg !4823
  %3 = load i64, ptr %size.addr, align 8, !dbg !4824
  %cmp = icmp ugt i64 %3, 8192, !dbg !4826
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4827

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4828
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4829
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !4830
  store ptr %call, ptr %retval, align 8, !dbg !4831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4831

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4832
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !4832
  store i32 %call2, ptr %index, align 4, !dbg !4833
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4834
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4835
  %9 = ptrtoint ptr %8 to i64, !dbg !4835
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !4836
  %idxprom = zext i32 %call3 to i64, !dbg !4837
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4837
  %10 = load i32, ptr %index, align 4, !dbg !4838
  %idxprom4 = zext i32 %10 to i64, !dbg !4837
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4837
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4837
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4839
  %13 = load i64, ptr %size.addr, align 8, !dbg !4840
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !4841
  store ptr %call6, ptr %retval, align 8, !dbg !4842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4842

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !4843
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4844
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4845
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !4846
  store ptr %call8, ptr %retval, align 8, !dbg !4847
  br label %return, !dbg !4847

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4848
  ret ptr %16, !dbg !4848
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4849 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !4850 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4854, metadata !DIExpression()), !dbg !4856
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  %0 = load i64, ptr %size.addr, align 8, !dbg !4858
  %tobool = icmp ne i64 %0, 0, !dbg !4858
  br i1 %tobool, label %if.end, label %if.then, !dbg !4860

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4861
  br label %return, !dbg !4861

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4862
  %cmp = icmp ule i64 %1, 8, !dbg !4864
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4865

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4866
  br label %return, !dbg !4866

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4867
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4869
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4870

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4871
  %cmp4 = icmp ule i64 %3, 96, !dbg !4872
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4873

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4875
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4877
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4878

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4879
  %cmp9 = icmp ule i64 %5, 192, !dbg !4880
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4881

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4882
  br label %return, !dbg !4882

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4883
  %cmp12 = icmp ule i64 %6, 8, !dbg !4885
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4886

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4887
  br label %return, !dbg !4887

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4888
  %cmp15 = icmp ule i64 %7, 16, !dbg !4890
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4891

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4892
  br label %return, !dbg !4892

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4893
  %cmp18 = icmp ule i64 %8, 32, !dbg !4895
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4896

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4897
  br label %return, !dbg !4897

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4898
  %cmp21 = icmp ule i64 %9, 64, !dbg !4900
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4901

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4902
  br label %return, !dbg !4902

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4903
  %cmp24 = icmp ule i64 %10, 128, !dbg !4905
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4906

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4907
  br label %return, !dbg !4907

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4908
  %cmp27 = icmp ule i64 %11, 256, !dbg !4910
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4911

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4912
  br label %return, !dbg !4912

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4913
  %cmp30 = icmp ule i64 %12, 512, !dbg !4915
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4916

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4917
  br label %return, !dbg !4917

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4918
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4920
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4921

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4922
  br label %return, !dbg !4922

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4923
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4925
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4926

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4928
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4930
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4931

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4932
  br label %return, !dbg !4932

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4933
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4935
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4936

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4937
  br label %return, !dbg !4937

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4938
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4940
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4941

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4942
  br label %return, !dbg !4942

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4943
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4945
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4946

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4947
  br label %return, !dbg !4947

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4948
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4950
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4951

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4953
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4955
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4956

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4957
  br label %return, !dbg !4957

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4958
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4960
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4961

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4963
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4965
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4966

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4968
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4970
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4971

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4973
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4975
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4976

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4978, !range !3477, !noundef !391
  %tobool69 = trunc i8 %25 to i1, !dbg !4978
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4980

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4981

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #24, !dbg !4982, !srcloc !4985
  unreachable, !dbg !4982

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4986

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4987

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4988

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4990

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4988

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #19, !dbg !4992, !srcloc !4994
  br label %do.end75, !dbg !4992

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4988

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4996
  ret i32 %26, !dbg !4996
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4997 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5003 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5007, metadata !DIExpression()), !dbg !5009
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5008, metadata !DIExpression()), !dbg !5010
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5011
  %and = and i32 %0, 17, !dbg !5011
  %cmp = icmp eq i32 %and, 0, !dbg !5011
  %lnot = xor i1 %cmp, true, !dbg !5011
  %lnot1 = xor i1 %lnot, true, !dbg !5011
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5011
  %conv = sext i32 %lnot.ext to i64, !dbg !5011
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5011
  %tobool = icmp ne i64 %expval, 0, !dbg !5011
  br i1 %tobool, label %if.then, label %if.end, !dbg !5013

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5014
  br label %return, !dbg !5014

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5015
  %and2 = and i32 %1, 1, !dbg !5017
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5017
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5018

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5020
  br label %return, !dbg !5020

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5022
  ret i32 %2, !dbg !5022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5023 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5024 dso_local void @__compiletime_assert_204() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5025 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !5028 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5031, metadata !DIExpression()), !dbg !5038
  br label %do.body, !dbg !5039

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #19, !dbg !5040
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5032, metadata !DIExpression()), !dbg !5040
  %0 = load i32, ptr %val.addr, align 4, !dbg !5040
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5040
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5040

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5040
  %cmp = icmp eq i32 %2, 1, !dbg !5040
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5040

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5040
  %cmp1 = icmp eq i32 %3, -1, !dbg !5040
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5040

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5040
  br label %cond.end, !dbg !5040

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5040

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5040
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5040
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5041
  %cmp2 = icmp eq i32 %5, 1, !dbg !5041
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5040

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !5042, !srcloc !5044
  br label %if.end8, !dbg !5041

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5045
  %cmp3 = icmp eq i32 %6, -1, !dbg !5045
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5041

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !5046, !srcloc !5048
  br label %if.end, !dbg !5045

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5045

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #19, !dbg !5049
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5034, metadata !DIExpression()), !dbg !5049
  %7 = load i32, ptr %val.addr, align 4, !dbg !5049
  %conv = sext i32 %7 to i64, !dbg !5049
  %and = and i64 %conv, 4294967295, !dbg !5049
  %conv7 = trunc i64 %and to i32, !dbg !5049
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5049
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5049
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !5049, !srcloc !5050
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #19, !dbg !5045
  br label %do.cond, !dbg !5049

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5049

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #19, !dbg !5039
  br label %do.end10, !dbg !5040

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5051
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !5052 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  ret void, !dbg !5059
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5060 dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !5065 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !5069
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5067, metadata !DIExpression()), !dbg !5069
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !5069, !srcloc !5070
  %1 = icmp ult i8 %0, 2, !dbg !5069
  call void @llvm.assume(i1 %1), !dbg !5069
  store i8 %0, ptr %c, align 1, !dbg !5069
  %2 = load i8, ptr %c, align 1, !dbg !5069, !range !3477, !noundef !391
  %tobool = trunc i8 %2 to i1, !dbg !5069
  %frombool = zext i1 %tobool to i8, !dbg !5069
  store i8 %frombool, ptr %tmp, align 1, !dbg !5069
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !5071
  %3 = load i8, ptr %tmp, align 1, !dbg !5069, !range !3477, !noundef !391
  %tobool1 = trunc i8 %3 to i1, !dbg !5069
  ret i1 %tobool1, !dbg !5072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #17

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @should_io_be_busy() #0 align 16 !dbg !5073 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.17, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5074
  %conv = zext i8 %0 to i32, !dbg !5076
  %cmp = icmp eq i32 %conv, 0, !dbg !5077
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5078

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.17, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5079
  %conv2 = zext i8 %1 to i32, !dbg !5080
  %cmp3 = icmp eq i32 %conv2, 6, !dbg !5081
  br i1 %cmp3, label %land.lhs.true5, label %if.end, !dbg !5082

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load i8, ptr @boot_cpu_data, align 8, !dbg !5083
  %conv6 = zext i8 %2 to i32, !dbg !5084
  %cmp7 = icmp sge i32 %conv6, 15, !dbg !5085
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5086

if.then:                                          ; preds = %land.lhs.true5
  store i32 1, ptr %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5088
  br label %return, !dbg !5088

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5089
  ret i32 %3, !dbg !5089
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nounwind }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind memory(read) }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2956}
!llvm.module.flags = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964}
!llvm.ident = !{!2965}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "od_ops", scope: !2, file: !3, line: 399, type: !2950, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpufreq/.cpufreq_ondemand.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpufreq/cpufreq_ondemand\22 -D KBUILD_BASENAME=\22cpufreq_ondemand\22 -D KBUILD_MODNAME=\22cpufreq_ondemand\22 -D __KBUILD_MODNAME=kmod_cpufreq_ondemand -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpufreq/cpufreq_ondemand.ll drivers/cpufreq/cpufreq_ondemand.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !2810, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpufreq/cpufreq_ondemand.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a473b482aecddae4e1cd4af8381fcfb")
!4 = !{!5, !13, !19, !25, !29, !35, !40, !46, !53, !58, !63}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !20, line: 41, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!23 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!24 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !20, line: 80, baseType: !7, size: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!28 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !30, line: 41, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!33 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!34 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !41, line: 16, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "TT_NONE", value: 0)
!44 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!45 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !47, line: 51, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!50 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!51 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!52 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 10, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!55 = !{!56, !57}
!56 = !DIEnumerator(name: "false", value: 0)
!57 = !DIEnumerator(name: "true", value: 1)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 26, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "drivers/cpufreq/cpufreq_governor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02d45564b55413305d597257ec4da6ff")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "OD_NORMAL_SAMPLE", value: 0)
!62 = !DIEnumerator(name: "OD_SUB_SAMPLE", value: 1)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !64, line: 364, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!67 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!68 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!69 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!70 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!71 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!72 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!73 = !{!74, !75, !77, !7, !87, !84, !88, !89, !164, !2756, !2781, !982, !1100}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !76, line: 154, baseType: !7)
!76 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !80, line: 19, size: 64, elements: !81)
!80 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !79, file: !80, line: 19, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, elements: !85)
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "od_policy_dbs_info", file: !91, line: 11, size: 1472, elements: !92)
!91 = !DIFile(filename: "drivers/cpufreq/cpufreq_ondemand.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c08d5ad98667c6f638f743714ed28dbf")
!92 = !{!93, !2806, !2807, !2808, !2809}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "policy_dbs", scope: !90, file: !91, line: 12, baseType: !94, size: 1344)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policy_dbs_info", file: !59, line: 78, size: 1344, elements: !95)
!95 = !{!96, !2735, !2736, !2737, !2738, !2739, !2754, !2755, !2801, !2802, !2803, !2804, !2805}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !94, file: !59, line: 79, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !30, line: 55, size: 5120, elements: !99)
!99 = !{!100, !103, !104, !105, !106, !107, !111, !117, !118, !119, !120, !121, !122, !123, !1198, !1199, !1200, !1201, !1236, !1249, !1250, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1280, !2726, !2729, !2730, !2733, !2734}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !98, file: !30, line: 57, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !80, line: 913, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !85)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !98, file: !30, line: 58, baseType: !101, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !98, file: !30, line: 59, baseType: !101, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !98, file: !30, line: 61, baseType: !7, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !98, file: !30, line: 63, baseType: !7, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !98, file: !30, line: 65, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !110, line: 17, flags: DIFlagFwdDecl)
!110 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !98, file: !30, line: 66, baseType: !112, size: 96, offset: 320)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !30, line: 47, size: 96, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !112, file: !30, line: 48, baseType: !7, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !112, file: !30, line: 49, baseType: !7, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !112, file: !30, line: 52, baseType: !7, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !98, file: !30, line: 68, baseType: !7, size: 32, offset: 416)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !98, file: !30, line: 69, baseType: !7, size: 32, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !98, file: !30, line: 70, baseType: !7, size: 32, offset: 480)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !98, file: !30, line: 72, baseType: !7, size: 32, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !98, file: !30, line: 74, baseType: !7, size: 32, offset: 544)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !98, file: !30, line: 75, baseType: !7, size: 32, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !98, file: !30, line: 76, baseType: !124, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !30, line: 577, size: 832, elements: !126)
!126 = !{!127, !132, !136, !140, !141, !142, !143, !153, !157, !163, !1197}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !30, line: 578, baseType: !128, size: 128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !130)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !125, file: !30, line: 579, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!87, !97}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !125, file: !30, line: 580, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !97}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !125, file: !30, line: 581, baseType: !133, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !125, file: !30, line: 582, baseType: !137, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !125, file: !30, line: 583, baseType: !137, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !125, file: !30, line: 584, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !97, !152}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !76, line: 66, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !149, line: 73, baseType: !150)
!149 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !149, line: 15, baseType: !151)
!151 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !125, file: !30, line: 586, baseType: !154, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!87, !97, !7}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !125, file: !30, line: 588, baseType: !158, size: 128, offset: 576)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !76, line: 190, size: 128, elements: !159)
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !76, line: 191, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !76, line: 191, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !125, file: !30, line: 589, baseType: !164, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !166)
!166 = !{!167, !168, !169, !173, !846, !872, !873, !874, !875, !879, !882, !883, !884, !937, !938, !939, !940, !941, !942, !943, !944, !952, !956, !976, !994, !995, !996, !997, !1006, !1030, !1031, !1034, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1048, !1049, !1156, !1164, !1165, !1166, !1168, !1172, !1173, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1190, !1191, !1192, !1196}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !165, file: !6, line: 403, baseType: !5, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !6, line: 406, baseType: !158, size: 128, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !6, line: 409, baseType: !170, size: 448, offset: 192)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 448, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 56)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !165, file: !6, line: 417, baseType: !174, size: 768, offset: 640)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !175)
!175 = !{!176, !829, !830, !831, !834}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !6, line: 46, baseType: !177, size: 512)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !178, line: 64, size: 512, elements: !179)
!178 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!179 = !{!180, !183, !184, !186, !274, !700, !814, !824, !825, !826, !827, !828}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !178, line: 65, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !177, file: !178, line: 66, baseType: !158, size: 128, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !178, line: 67, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !177, file: !178, line: 68, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !178, line: 168, size: 768, elements: !189)
!189 = !{!190, !191, !234, !235}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !178, line: 169, baseType: !158, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !188, file: !178, line: 170, baseType: !192, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !193, line: 29, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !193, line: 17, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 18, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 18, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !197, file: !193, line: 19, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 14, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !201, line: 15, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !205, line: 44, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !205, line: 14, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 15, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 15, size: 32, elements: !210)
!210 = !{!211, !216, !226}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !205, line: 16, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !76, line: 174, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 172, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !213, file: !76, line: 173, baseType: !87, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 24, baseType: !217, size: 16)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 24, size: 16, elements: !218)
!218 = !{!219, !225}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !217, file: !205, line: 25, baseType: !220, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !221, line: 17, baseType: !222)
!221 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !223, line: 21, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!224 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !217, file: !205, line: 26, baseType: !220, size: 8, offset: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 28, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 28, size: 32, elements: !228)
!228 = !{!229, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !227, file: !205, line: 29, baseType: !230, size: 16)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !221, line: 19, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !223, line: 24, baseType: !232)
!232 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !227, file: !205, line: 30, baseType: !230, size: 16, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !178, line: 171, baseType: !177, size: 512, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !188, file: !178, line: 172, baseType: !236, size: 64, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !178, line: 133, size: 192, elements: !239)
!239 = !{!240, !247, !252}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !238, file: !178, line: 134, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!87, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !178, line: 135, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!181, !245}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !238, file: !178, line: 136, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!87, !245, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !178, line: 125, size: 20736, elements: !259)
!259 = !{!260, !264, !268, !269, !273}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !258, file: !178, line: 126, baseType: !261, size: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 3)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !258, file: !178, line: 127, baseType: !265, size: 4096, offset: 192)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 4096, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !258, file: !178, line: 128, baseType: !87, size: 32, offset: 4288)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !258, file: !178, line: 129, baseType: !270, size: 16384, offset: 4320)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16384, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 2048)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !258, file: !178, line: 130, baseType: !87, size: 32, offset: 20704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !177, file: !178, line: 69, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !178, line: 116, size: 384, elements: !278)
!278 = !{!279, !283, !306, !647, !678, !682}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !277, file: !178, line: 117, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !185}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !277, file: !178, line: 118, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !287, line: 254, size: 128, elements: !288)
!287 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!288 = !{!289, !299}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !286, file: !287, line: 255, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!147, !185, !293, !152}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !287, line: 30, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !287, line: 31, baseType: !181, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !294, file: !287, line: 32, baseType: !298, size: 16, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !76, line: 24, baseType: !232)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !286, file: !287, line: 256, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!147, !185, !293, !181, !303}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 61, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !149, line: 72, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !149, line: 16, baseType: !84)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !277, file: !178, line: 119, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !287, line: 84, size: 320, elements: !311)
!311 = !{!312, !313, !317, !643, !645}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !287, line: 85, baseType: !181, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !310, file: !287, line: 86, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!298, !185, !293, !87}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !310, file: !287, line: 88, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!298, !185, !321, !87}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !287, line: 175, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !334, !344, !345}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !322, file: !287, line: 176, baseType: !294, size: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !287, line: 177, baseType: !303, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !322, file: !287, line: 178, baseType: !74, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !322, file: !287, line: 179, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !333, line: 32, flags: DIFlagFwdDecl)
!333 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !322, file: !287, line: 180, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!147, !338, !185, !321, !152, !341, !303}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !340, line: 537, flags: DIFlagFwdDecl)
!340 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !76, line: 52, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !149, line: 88, baseType: !343)
!343 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !322, file: !287, line: 182, baseType: !335, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !322, file: !287, line: 184, baseType: !346, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!87, !338, !185, !321, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !333, line: 625, size: 1344, elements: !351)
!351 = !{!352, !369, !591, !597, !604, !605, !610, !613, !625, !626, !629, !633, !634, !635, !636, !637, !641}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !333, line: 628, baseType: !353, size: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !333, line: 628, size: 128, elements: !354)
!354 = !{!355, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !333, line: 629, baseType: !356, size: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !333, line: 629, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !356, file: !333, line: 631, baseType: !84, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !356, file: !333, line: 632, baseType: !84, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !353, file: !333, line: 635, baseType: !361, size: 128, align: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !76, line: 232, size: 128, align: 64, elements: !362)
!362 = !{!363, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !76, line: 233, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !361, file: !76, line: 234, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !364}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !350, file: !333, line: 639, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !333, line: 733, size: 10240, elements: !372)
!372 = !{!373, !587}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !333, line: 734, baseType: !374, size: 10240)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !333, line: 734, size: 10240, elements: !375)
!375 = !{!376, !380, !394, !398, !399, !400, !401, !402, !403, !411, !412, !413, !422, !423, !432, !433, !434, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !481, !495, !498, !553, !554, !555, !558, !562, !563, !566, !567, !568, !574, !575}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !333, line: 739, baseType: !377, size: 512, align: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !333, line: 739, size: 512, align: 512, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !377, file: !333, line: 747, baseType: !212, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !374, file: !333, line: 750, baseType: !381, size: 128, offset: 512)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !382, line: 218, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!383 = !{!384, !392, !393}
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 219, baseType: !385, size: 32)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 219, size: 32, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !385, file: !382, line: 220, baseType: !192, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !385, file: !382, line: 221, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !382, line: 197, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 197, elements: !391)
!391 = !{}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !381, file: !382, line: 223, baseType: !7, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !381, file: !382, line: 224, baseType: !74, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !374, file: !333, line: 752, baseType: !395, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!84, !338, !84, !84, !84, !84}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !374, file: !333, line: 756, baseType: !84, size: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !374, file: !333, line: 757, baseType: !84, size: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !374, file: !333, line: 760, baseType: !84, size: 64, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !374, file: !333, line: 761, baseType: !84, size: 64, offset: 896)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !374, file: !333, line: 763, baseType: !84, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !374, file: !333, line: 764, baseType: !404, size: 64, offset: 1024)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !340, line: 299, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 299, size: 64, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !406, file: !340, line: 299, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !410, line: 18, baseType: !84)
!410 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !374, file: !333, line: 773, baseType: !212, size: 32, offset: 1088)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !374, file: !333, line: 785, baseType: !212, size: 32, offset: 1120)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !374, file: !333, line: 795, baseType: !414, size: 64, offset: 1152)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !333, line: 726, size: 128, elements: !416)
!416 = !{!417, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !415, file: !333, line: 727, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !221, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !223, line: 31, baseType: !420)
!420 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !415, file: !333, line: 728, baseType: !87, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !374, file: !333, line: 801, baseType: !84, size: 64, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !374, file: !333, line: 804, baseType: !424, size: 64, offset: 1280)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !425, line: 13, baseType: !426)
!425 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !76, line: 181, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 179, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !427, file: !76, line: 180, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !221, line: 22, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !223, line: 30, baseType: !343)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !374, file: !333, line: 806, baseType: !87, size: 32, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !374, file: !333, line: 808, baseType: !192, size: 32, offset: 1376)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !374, file: !333, line: 823, baseType: !435, size: 320, offset: 1408)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !436, line: 48, size: 320, elements: !437)
!436 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!437 = !{!438, !439, !440, !445, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !435, file: !436, line: 49, baseType: !424, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !435, file: !436, line: 55, baseType: !424, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !435, file: !436, line: 57, baseType: !441, size: 32, offset: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !442, line: 15, size: 32, elements: !443)
!442 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !441, file: !442, line: 20, baseType: !212, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !435, file: !436, line: 59, baseType: !446, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !201, line: 23, baseType: !200)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !435, file: !436, line: 60, baseType: !158, size: 128, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !374, file: !333, line: 825, baseType: !158, size: 128, offset: 1728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !374, file: !333, line: 845, baseType: !87, size: 32, offset: 1856)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !374, file: !333, line: 849, baseType: !84, size: 64, offset: 1920)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !374, file: !333, line: 850, baseType: !84, size: 64, offset: 1984)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !374, file: !333, line: 852, baseType: !84, size: 64, offset: 2048)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !374, file: !333, line: 853, baseType: !84, size: 64, offset: 2112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !374, file: !333, line: 854, baseType: !426, size: 64, offset: 2176)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !374, file: !333, line: 855, baseType: !84, size: 64, offset: 2240)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !374, file: !333, line: 856, baseType: !84, size: 64, offset: 2304)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !374, file: !333, line: 857, baseType: !84, size: 64, offset: 2368)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !374, file: !333, line: 858, baseType: !84, size: 64, offset: 2432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !374, file: !333, line: 865, baseType: !460, size: 32, offset: 2496)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !461, line: 69, baseType: !462)
!461 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !461, line: 64, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !462, file: !461, line: 65, baseType: !7, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !374, file: !333, line: 867, baseType: !192, size: 32, offset: 2528)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !374, file: !333, line: 869, baseType: !84, size: 64, offset: 2560)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !374, file: !333, line: 869, baseType: !84, size: 64, offset: 2624)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !374, file: !333, line: 869, baseType: !84, size: 64, offset: 2688)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !374, file: !333, line: 869, baseType: !84, size: 64, offset: 2752)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !374, file: !333, line: 870, baseType: !84, size: 64, offset: 2816)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !374, file: !333, line: 870, baseType: !84, size: 64, offset: 2880)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !374, file: !333, line: 870, baseType: !84, size: 64, offset: 2944)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !374, file: !333, line: 871, baseType: !84, size: 64, offset: 3008)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !374, file: !333, line: 871, baseType: !84, size: 64, offset: 3072)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !374, file: !333, line: 871, baseType: !84, size: 64, offset: 3136)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !374, file: !333, line: 871, baseType: !84, size: 64, offset: 3200)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !374, file: !333, line: 873, baseType: !478, size: 3328, offset: 3264)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3328, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 52)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !374, file: !333, line: 875, baseType: !482, size: 1280, offset: 6592)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 1280, elements: !493)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !484, line: 22, size: 320, elements: !485)
!484 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !483, file: !484, line: 23, baseType: !446, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !484, line: 24, baseType: !430, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !484, line: 26, baseType: !158, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !483, file: !484, line: 28, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !221, line: 20, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !223, line: 26, baseType: !87)
!493 = !{!494}
!494 = !DISubrange(count: 4)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !374, file: !333, line: 877, baseType: !496, size: 64, offset: 7872)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !333, line: 877, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !374, file: !333, line: 880, baseType: !499, size: 1088, offset: 7936)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !500, line: 72, baseType: !501)
!500 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 23, size: 1088, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !510, !511, !519, !520, !547, !548, !549}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !501, file: !500, line: 28, baseType: !418, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !501, file: !500, line: 38, baseType: !426, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !501, file: !500, line: 40, baseType: !84, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !501, file: !500, line: 43, baseType: !435, size: 320, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !501, file: !500, line: 44, baseType: !508, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !500, line: 44, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !500, line: 48, baseType: !84, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !501, file: !500, line: 59, baseType: !512, size: 256, offset: 640)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 66, size: 256, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 67, baseType: !424, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 68, baseType: !446, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !512, file: !513, line: 70, baseType: !441, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 72, baseType: !158, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !501, file: !500, line: 60, baseType: !74, size: 64, offset: 896)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !501, file: !500, line: 61, baseType: !521, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !524, line: 13, size: 1216, elements: !525)
!524 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!525 = !{!526, !527, !528, !529, !530, !531, !532, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !523, file: !524, line: 14, baseType: !74, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !523, file: !524, line: 15, baseType: !84, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !523, file: !524, line: 17, baseType: !84, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !523, file: !524, line: 17, baseType: !84, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !523, file: !524, line: 18, baseType: !84, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !523, file: !524, line: 18, baseType: !84, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !523, file: !524, line: 19, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !523, file: !524, line: 21, baseType: !151, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !523, file: !524, line: 23, baseType: !151, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !523, file: !524, line: 24, baseType: !151, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !523, file: !524, line: 25, baseType: !151, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !523, file: !524, line: 26, baseType: !151, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !523, file: !524, line: 27, baseType: !151, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !523, file: !524, line: 28, baseType: !151, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !523, file: !524, line: 29, baseType: !151, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !523, file: !524, line: 30, baseType: !151, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !523, file: !524, line: 31, baseType: !151, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !523, file: !524, line: 32, baseType: !151, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !523, file: !524, line: 33, baseType: !151, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !501, file: !500, line: 63, baseType: !212, size: 32, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !501, file: !500, line: 69, baseType: !230, size: 16, offset: 1056)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !501, file: !500, line: 70, baseType: !550, size: 16, offset: 1072)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !221, line: 18, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !223, line: 23, baseType: !552)
!552 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !333, line: 882, baseType: !84, size: 64, offset: 9024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !374, file: !333, line: 885, baseType: !192, size: 32, offset: 9088)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !374, file: !333, line: 886, baseType: !556, size: 64, offset: 9152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !333, line: 732, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !374, file: !333, line: 901, baseType: !559, size: 64, offset: 9216)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !561, line: 18, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !374, file: !333, line: 904, baseType: !338, size: 64, offset: 9280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !374, file: !333, line: 906, baseType: !564, size: 64, offset: 9344)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !333, line: 906, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !374, file: !333, line: 930, baseType: !212, size: 32, offset: 9408)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !374, file: !333, line: 933, baseType: !212, size: 32, offset: 9440)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !374, file: !333, line: 935, baseType: !569, size: 64, offset: 9472)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !47, line: 103, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !569, file: !47, line: 104, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !47, line: 101, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !374, file: !333, line: 940, baseType: !424, size: 64, offset: 9536)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !374, file: !333, line: 942, baseType: !576, size: 256, offset: 9600)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !577, line: 98, size: 256, elements: !578)
!577 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !576, file: !577, line: 99, baseType: !424, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !576, file: !577, line: 100, baseType: !158, size: 128, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !576, file: !577, line: 101, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !577, line: 21, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !371, file: !333, line: 986, baseType: !588, offset: 10240)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: -1)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !350, file: !333, line: 640, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !340, line: 297, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !340, line: 297, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !593, file: !340, line: 297, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !410, line: 19, baseType: !84)
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !333, line: 646, baseType: !598, size: 64, offset: 256)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !333, line: 646, size: 64, elements: !599)
!599 = !{!600, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !598, file: !333, line: 647, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !333, line: 542, baseType: !84)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !598, file: !333, line: 648, baseType: !602, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !350, file: !333, line: 666, baseType: !87, size: 32, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !350, file: !333, line: 667, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !333, line: 579, size: 320, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !333, line: 580, baseType: !435, size: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !350, file: !333, line: 670, baseType: !611, size: 8, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !76, line: 35, baseType: !612)
!612 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !350, file: !333, line: 681, baseType: !614, size: 256, offset: 512)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !333, line: 678, size: 256, elements: !615)
!615 = !{!616, !624}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !614, file: !333, line: 679, baseType: !617, size: 192, align: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !618, line: 5, size: 192, align: 64, elements: !619)
!618 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!619 = !{!620, !621, !623}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !617, file: !618, line: 6, baseType: !84, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !617, file: !618, line: 7, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !617, file: !618, line: 8, baseType: !622, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !614, file: !333, line: 680, baseType: !84, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !350, file: !333, line: 689, baseType: !158, size: 128, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !350, file: !333, line: 691, baseType: !627, size: 64, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !333, line: 691, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !350, file: !333, line: 694, baseType: !630, size: 64, offset: 960)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !333, line: 694, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !350, file: !333, line: 697, baseType: !84, size: 64, offset: 1024)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !350, file: !333, line: 699, baseType: !338, size: 64, offset: 1088)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !350, file: !333, line: 700, baseType: !74, size: 64, offset: 1152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !350, file: !333, line: 711, baseType: !424, size: 64, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !350, file: !333, line: 717, baseType: !638, size: 64, offset: 1280)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !640, line: 54, flags: DIFlagFwdDecl)
!640 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !350, file: !333, line: 722, baseType: !642, offset: 1344)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !333, line: 570, elements: !391)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !310, file: !287, line: 90, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !310, file: !287, line: 91, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !277, file: !178, line: 120, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !245}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !654)
!654 = !{!655, !656, !660, !664, !670, !674}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !14, line: 40, baseType: !13, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !653, file: !14, line: 41, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!611}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !653, file: !14, line: 42, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!74}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !653, file: !14, line: 43, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!533, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !653, file: !14, line: 44, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!533}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !653, file: !14, line: 45, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !74}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !277, file: !178, line: 121, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!533, !245}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !277, file: !178, line: 122, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !245, !686, !693}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !561, line: 23, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 21, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !688, file: !561, line: 22, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !76, line: 37, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !149, line: 49, baseType: !7)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !561, line: 28, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 26, size: 32, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !695, file: !561, line: 27, baseType: !698, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !76, line: 38, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !149, line: 50, baseType: !7)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !177, file: !178, line: 70, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !703, line: 190, size: 1152, elements: !704)
!703 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !806, !807, !808, !809, !810, !813}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !702, file: !703, line: 191, baseType: !212, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !702, file: !703, line: 192, baseType: !212, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !702, file: !703, line: 202, baseType: !701, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !702, file: !703, line: 203, baseType: !181, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !702, file: !703, line: 205, baseType: !617, size: 192, align: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !702, file: !703, line: 207, baseType: !533, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !702, file: !703, line: 208, baseType: !7, size: 32, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !703, line: 209, baseType: !713, size: 256, offset: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !703, line: 209, size: 256, elements: !714)
!714 = !{!715, !727, !731}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !713, file: !703, line: 210, baseType: !716, size: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !703, line: 153, size: 256, elements: !717)
!717 = !{!718, !719, !723, !726}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !716, file: !703, line: 154, baseType: !84, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !716, file: !703, line: 156, baseType: !720, size: 64, offset: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !618, line: 12, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !720, file: !618, line: 13, baseType: !622, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !716, file: !703, line: 162, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !703, line: 162, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !716, file: !703, line: 167, baseType: !84, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !713, file: !703, line: 211, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !703, line: 170, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !728, file: !703, line: 171, baseType: !701, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !713, file: !703, line: 212, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !703, line: 174, size: 256, elements: !733)
!733 = !{!734, !801, !804, !805}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !732, file: !703, line: 175, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !703, line: 271, size: 768, elements: !738)
!738 = !{!739, !761, !765, !769, !774, !778, !782, !786, !787, !788, !789, !797}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !737, file: !703, line: 276, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!87, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !703, line: 251, size: 1216, elements: !745)
!745 = !{!746, !747, !748, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !744, file: !703, line: 253, baseType: !701, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !744, file: !703, line: 254, baseType: !338, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !744, file: !703, line: 255, baseType: !749, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !640, line: 66, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !744, file: !703, line: 256, baseType: !74, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !744, file: !703, line: 259, baseType: !512, size: 256, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !744, file: !703, line: 260, baseType: !512, size: 256, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !744, file: !703, line: 261, baseType: !87, size: 32, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !744, file: !703, line: 262, baseType: !158, size: 128, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !744, file: !703, line: 263, baseType: !152, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !744, file: !703, line: 265, baseType: !303, size: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !744, file: !703, line: 266, baseType: !611, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !744, file: !703, line: 267, baseType: !611, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !744, file: !703, line: 268, baseType: !630, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !737, file: !703, line: 277, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !743}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !737, file: !703, line: 290, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!87, !749, !74}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !737, file: !703, line: 292, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!74, !749, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !737, file: !703, line: 293, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!74, !749, !74, !773}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !737, file: !703, line: 294, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !749, !74}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !737, file: !703, line: 296, baseType: !783, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!147, !743, !152, !303, !341}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !737, file: !703, line: 306, baseType: !303, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !737, file: !703, line: 313, baseType: !611, size: 8, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !737, file: !703, line: 314, baseType: !783, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !737, file: !703, line: 317, baseType: !790, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!793, !743, !795}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !794, line: 59, baseType: !7)
!794 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !703, line: 31, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !737, file: !703, line: 320, baseType: !798, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!87, !743, !349}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !732, file: !703, line: 176, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !703, line: 35, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !732, file: !703, line: 177, baseType: !341, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !732, file: !703, line: 178, baseType: !701, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !702, file: !703, line: 215, baseType: !74, size: 64, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !702, file: !703, line: 221, baseType: !418, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !703, line: 223, baseType: !232, size: 16, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !702, file: !703, line: 224, baseType: !298, size: 16, offset: 912)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !702, file: !703, line: 225, baseType: !811, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !703, line: 36, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !702, file: !703, line: 227, baseType: !361, size: 128, align: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !177, file: !178, line: 71, baseType: !815, size: 32, offset: 448)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !816, line: 19, size: 32, elements: !817)
!816 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !815, file: !816, line: 20, baseType: !819, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !820, line: 113, baseType: !821)
!820 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !820, line: 111, size: 32, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !821, file: !820, line: 112, baseType: !212, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !177, file: !178, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !177, file: !178, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !177, file: !178, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !177, file: !178, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !177, file: !178, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !174, file: !6, line: 47, baseType: !164, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !174, file: !6, line: 48, baseType: !185, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !174, file: !6, line: 49, baseType: !832, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !174, file: !6, line: 50, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !837, line: 26, size: 256, elements: !838)
!837 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !836, file: !837, line: 27, baseType: !7, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !836, file: !837, line: 28, baseType: !841, size: 192, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !842, line: 43, size: 192, elements: !843)
!842 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !841, file: !842, line: 44, baseType: !446, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !841, file: !842, line: 45, baseType: !158, size: 128, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !165, file: !6, line: 418, baseType: !847, size: 64, offset: 1408)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !849)
!849 = !{!850, !851, !856, !860, !864, !868}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !848, file: !6, line: 54, baseType: !294, size: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !848, file: !6, line: 55, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!147, !847, !855, !152}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !848, file: !6, line: 57, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!147, !847, !855, !181, !303}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !848, file: !6, line: 59, baseType: !861, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !164, !181}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !848, file: !6, line: 60, baseType: !865, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!87, !164}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !848, file: !6, line: 61, baseType: !869, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !164}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !165, file: !6, line: 419, baseType: !181, size: 64, offset: 1472)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !165, file: !6, line: 420, baseType: !181, size: 64, offset: 1536)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !165, file: !6, line: 421, baseType: !185, size: 64, offset: 1600)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !165, file: !6, line: 424, baseType: !876, size: 64, offset: 1664)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !165, file: !6, line: 425, baseType: !880, size: 64, offset: 1728)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !165, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !165, file: !6, line: 435, baseType: !512, size: 256, offset: 1856)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !165, file: !6, line: 437, baseType: !885, size: 64, offset: 2112)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !887, line: 69, size: 320, elements: !888)
!887 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!888 = !{!889, !890, !891, !908, !910, !914, !915}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !886, file: !887, line: 70, baseType: !181, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !886, file: !887, line: 71, baseType: !164, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !886, file: !887, line: 72, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !887, line: 47, size: 256, elements: !895)
!895 = !{!896, !897, !903, !907}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !887, line: 49, baseType: !7, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !894, file: !887, line: 51, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!87, !181, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !894, file: !887, line: 53, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!87, !152, !901}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !894, file: !887, line: 55, baseType: !675, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !886, file: !887, line: 73, baseType: !909, size: 16, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !886, file: !887, line: 74, baseType: !911, size: 8, offset: 208)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !221, line: 16, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !223, line: 20, baseType: !913)
!913 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !886, file: !887, line: 75, baseType: !220, size: 8, offset: 216)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !887, line: 76, baseType: !916, size: 64, offset: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !887, line: 76, size: 64, elements: !917)
!917 = !{!918, !919, !926}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !916, file: !887, line: 77, baseType: !74, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !916, file: !887, line: 78, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !887, line: 86, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !922, file: !887, line: 87, baseType: !7, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !922, file: !887, line: 88, baseType: !152, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !916, file: !887, line: 79, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !887, line: 92, size: 256, elements: !930)
!930 = !{!931, !932, !933, !935, !936}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !929, file: !887, line: 94, baseType: !7, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !929, file: !887, line: 95, baseType: !7, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !929, file: !887, line: 96, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !929, file: !887, line: 97, baseType: !892, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !929, file: !887, line: 98, baseType: !74, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !165, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !165, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !165, file: !6, line: 442, baseType: !876, size: 64, offset: 2240)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !165, file: !6, line: 443, baseType: !880, size: 64, offset: 2304)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !165, file: !6, line: 444, baseType: !611, size: 8, offset: 2368)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !165, file: !6, line: 451, baseType: !611, size: 8, offset: 2376)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !165, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !165, file: !6, line: 455, baseType: !945, size: 64, offset: 2432)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !947, line: 23, size: 96, elements: !948)
!947 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !946, file: !947, line: 24, baseType: !87, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !946, file: !947, line: 24, baseType: !87, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !946, file: !947, line: 24, baseType: !87, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !165, file: !6, line: 458, baseType: !953, size: 64, offset: 2496)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!87}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !165, file: !6, line: 460, baseType: !957, size: 4032, align: 512, offset: 2560)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 4032, elements: !974)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !958, file: !6, line: 363, baseType: !74, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !958, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !958, file: !6, line: 367, baseType: !963, size: 448, offset: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !963, file: !6, line: 320, baseType: !164, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !963, file: !6, line: 321, baseType: !967, size: 384, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !968, line: 40, size: 384, elements: !969)
!968 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !967, file: !968, line: 41, baseType: !971, size: 384, align: 64)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 384, align: 64, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 2)
!974 = !{!975}
!975 = !DISubrange(count: 7)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !165, file: !6, line: 463, baseType: !977, size: 192, offset: 6592)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !978, line: 8, size: 192, elements: !979)
!978 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!979 = !{!980, !981, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !977, file: !978, line: 10, baseType: !7, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !977, file: !978, line: 11, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !977, file: !978, line: 12, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !986, line: 59, size: 48, elements: !987)
!986 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!987 = !{!988, !989, !990, !991, !992, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !985, file: !986, line: 60, baseType: !550, size: 16)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !985, file: !986, line: 61, baseType: !550, size: 16, offset: 16)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !985, file: !986, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !985, file: !986, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !985, file: !986, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !985, file: !986, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !165, file: !6, line: 465, baseType: !84, size: 64, offset: 6784)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !165, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !165, file: !6, line: 470, baseType: !158, size: 128, offset: 6912)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !165, file: !6, line: 471, baseType: !998, size: 64, offset: 7040)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1000, line: 33, size: 96, elements: !1001)
!1000 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1001 = !{!1002, !1003, !1004, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !999, file: !1000, line: 37, baseType: !87, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !999, file: !1000, line: 43, baseType: !87, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !999, file: !1000, line: 45, baseType: !232, size: 16, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 47, baseType: !232, size: 16, offset: 80)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !165, file: !6, line: 476, baseType: !1007, size: 64, offset: 7104)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1009)
!1009 = !{!1010, !1027, !1028, !1029}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1008, file: !6, line: 379, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1013, line: 204, baseType: !1014)
!1013 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1013, line: 197, size: 192, elements: !1015)
!1015 = !{!1016, !1019, !1020, !1021, !1023, !1025}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1014, file: !1013, line: 198, baseType: !1017, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1013, line: 21, baseType: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !223, line: 27, baseType: !7)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1014, file: !1013, line: 199, baseType: !224, size: 8, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1014, file: !1013, line: 200, baseType: !224, size: 8, offset: 40)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1014, file: !1013, line: 201, baseType: !1022, size: 16, offset: 48)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1013, line: 17, baseType: !231)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1014, file: !1013, line: 202, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1013, line: 16, baseType: !419)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1014, file: !1013, line: 203, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1013, line: 22, baseType: !419)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1008, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1008, file: !6, line: 381, baseType: !152, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1008, file: !6, line: 382, baseType: !152, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !165, file: !6, line: 477, baseType: !1008, size: 256, offset: 7168)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !165, file: !6, line: 480, baseType: !1032, size: 64, offset: 7424)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !165, file: !6, line: 483, baseType: !1035, size: 64, offset: 7488)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !165, file: !6, line: 488, baseType: !152, size: 64, offset: 7552)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !165, file: !6, line: 492, baseType: !74, size: 64, offset: 7616)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !165, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !165, file: !6, line: 495, baseType: !74, size: 64, offset: 7744)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !165, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !165, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !165, file: !6, line: 500, baseType: !1044, size: 64, offset: 7872)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1046, line: 45, baseType: !1047)
!1046 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !165, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !165, file: !6, line: 504, baseType: !1050, size: 64, offset: 8000)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1053, line: 96, size: 192, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1054 = !{!1055, !1056, !1117, !1120}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1052, file: !1053, line: 97, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1052, file: !1053, line: 98, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1053, line: 24, size: 3072, elements: !1059)
!1059 = !{!1060, !1062, !1063, !1064, !1065, !1079, !1080, !1081, !1082, !1101, !1102, !1103, !1114, !1115, !1116}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1058, file: !1053, line: 26, baseType: !1061, size: 128)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !972)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1058, file: !1053, line: 27, baseType: !1061, size: 128, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1058, file: !1053, line: 28, baseType: !87, size: 32, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1058, file: !1053, line: 31, baseType: !192, size: 32, align: 512, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1058, file: !1053, line: 32, baseType: !1066, size: 960, offset: 576)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1067, line: 206, size: 960, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1068 = !{!1069, !1070, !1073, !1075, !1076, !1078}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1066, file: !1067, line: 207, baseType: !364, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1066, file: !1067, line: 208, baseType: !1071, size: 256, offset: 64)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 256, elements: !493)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1066, file: !1067, line: 209, baseType: !1074, size: 256, offset: 320)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !493)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1066, file: !1067, line: 213, baseType: !151, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1066, file: !1067, line: 215, baseType: !1077, size: 256, offset: 640)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !493)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !1067, line: 216, baseType: !220, size: 8, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1058, file: !1053, line: 33, baseType: !84, size: 64, offset: 1536)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1058, file: !1053, line: 34, baseType: !84, size: 64, offset: 1600)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1058, file: !1053, line: 35, baseType: !611, size: 8, offset: 1664)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1058, file: !1053, line: 36, baseType: !1083, size: 320, offset: 1728)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1084, line: 11, size: 320, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1085 = !{!1086, !1093, !1094, !1099}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1083, file: !1084, line: 16, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !76, line: 198, size: 128, elements: !1088)
!1088 = !{!1089, !1091}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1087, file: !76, line: 199, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1087, file: !76, line: 199, baseType: !1092, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1083, file: !1084, line: 17, baseType: !84, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1083, file: !1084, line: 18, baseType: !1095, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !1084, line: 19, baseType: !1100, size: 32, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !221, line: 21, baseType: !1018)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1058, file: !1053, line: 37, baseType: !576, size: 256, offset: 2048)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1058, file: !1053, line: 38, baseType: !361, size: 128, align: 64, offset: 2304)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1058, file: !1053, line: 39, baseType: !1104, size: 64, offset: 2432)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1053, line: 49, size: 768, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1105, file: !1053, line: 50, baseType: !192, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1105, file: !1053, line: 51, baseType: !1074, size: 256, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1105, file: !1053, line: 53, baseType: !1074, size: 256, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1105, file: !1053, line: 54, baseType: !84, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1105, file: !1053, line: 55, baseType: !1104, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1105, file: !1053, line: 56, baseType: !87, size: 32, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1105, file: !1053, line: 57, baseType: !87, size: 32, offset: 736)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1058, file: !1053, line: 40, baseType: !84, size: 64, offset: 2496)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1058, file: !1053, line: 42, baseType: !87, size: 32, offset: 2560)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1058, file: !1053, line: 43, baseType: !1051, size: 64, offset: 2624)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1052, file: !1053, line: 99, baseType: !1118, offset: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1119, line: 211, elements: !391)
!1119 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1052, file: !1053, line: 100, baseType: !1121, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1053, line: 63, size: 3008, elements: !1123)
!1123 = !{!1124, !1125, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1155}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1122, file: !1053, line: 64, baseType: !1104, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1122, file: !1053, line: 65, baseType: !1126, size: 192, offset: 64)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 192, elements: !262)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1122, file: !1053, line: 67, baseType: !87, size: 32, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1122, file: !1053, line: 68, baseType: !512, size: 256, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1122, file: !1053, line: 69, baseType: !192, size: 32, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1122, file: !1053, line: 70, baseType: !512, size: 256, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1122, file: !1053, line: 71, baseType: !84, size: 64, offset: 896)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1122, file: !1053, line: 72, baseType: !84, size: 64, offset: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1122, file: !1053, line: 73, baseType: !84, size: 64, offset: 1024)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1122, file: !1053, line: 74, baseType: !84, size: 64, offset: 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1122, file: !1053, line: 75, baseType: !84, size: 64, offset: 1152)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1122, file: !1053, line: 76, baseType: !84, size: 64, offset: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1122, file: !1053, line: 77, baseType: !84, size: 64, offset: 1280)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1122, file: !1053, line: 78, baseType: !84, size: 64, offset: 1344)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1122, file: !1053, line: 79, baseType: !611, size: 8, offset: 1408)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1122, file: !1053, line: 80, baseType: !84, size: 64, offset: 1472)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1122, file: !1053, line: 81, baseType: !512, size: 256, offset: 1536)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1122, file: !1053, line: 82, baseType: !836, size: 256, offset: 1792)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1122, file: !1053, line: 84, baseType: !212, size: 32, offset: 2048)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1122, file: !1053, line: 87, baseType: !84, size: 64, offset: 2112)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1122, file: !1053, line: 88, baseType: !84, size: 64, offset: 2176)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1122, file: !1053, line: 89, baseType: !1147, size: 704, offset: 2240)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !577, line: 111, size: 704, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1154}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1147, file: !577, line: 112, baseType: !576, size: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1147, file: !577, line: 113, baseType: !1083, size: 320, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1147, file: !577, line: 116, baseType: !1152, size: 64, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !577, line: 18, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1147, file: !577, line: 117, baseType: !87, size: 32, offset: 640)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1122, file: !1053, line: 90, baseType: !1051, size: 64, offset: 2944)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !165, file: !6, line: 515, baseType: !1157, size: 64, offset: 8064)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1159, line: 117, size: 128, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1158, file: !1159, line: 118, baseType: !491, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1158, file: !1159, line: 119, baseType: !491, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1158, file: !1159, line: 120, baseType: !151, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !165, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !165, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !165, file: !6, line: 520, baseType: !1167, size: 64, offset: 8192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !165, file: !6, line: 523, baseType: !1169, size: 64, offset: 8256)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !165, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !165, file: !6, line: 525, baseType: !1174, size: 64, offset: 8384)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !165, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !165, file: !6, line: 533, baseType: !74, size: 64, offset: 8512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !165, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !165, file: !6, line: 535, baseType: !88, size: 64, offset: 8640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !165, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !165, file: !6, line: 539, baseType: !87, size: 32, offset: 8736)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !165, file: !6, line: 540, baseType: !1184, size: 64, offset: 8768)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1186, line: 32, size: 64, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1185, file: !1186, line: 33, baseType: !491, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1185, file: !1186, line: 34, baseType: !491, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !165, file: !6, line: 563, baseType: !158, size: 128, offset: 8832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !165, file: !6, line: 565, baseType: !158, size: 128, offset: 8960)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !165, file: !6, line: 568, baseType: !1193, size: 64, offset: 9088)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !165, file: !6, line: 570, baseType: !212, size: 32, offset: 9152)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !30, line: 590, baseType: !220, size: 8, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !98, file: !30, line: 77, baseType: !74, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !98, file: !30, line: 78, baseType: !128, size: 128, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !98, file: !30, line: 80, baseType: !576, size: 256, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !98, file: !30, line: 83, baseType: !1202, size: 1408, offset: 1152)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !20, line: 85, size: 1408, elements: !1203)
!1203 = !{!1204, !1233, !1234, !1235}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1202, file: !20, line: 86, baseType: !1205, size: 320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !20, line: 52, size: 320, elements: !1206)
!1206 = !{!1207, !1212, !1213, !1214, !1215, !1216}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1205, file: !20, line: 53, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1209, line: 82, size: 128, elements: !1210)
!1209 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1208, file: !1209, line: 83, baseType: !158, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1205, file: !20, line: 54, baseType: !491, size: 32, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1205, file: !20, line: 55, baseType: !491, size: 32, offset: 160)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1205, file: !20, line: 56, baseType: !491, size: 32, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1205, file: !20, line: 57, baseType: !19, size: 32, offset: 224)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1205, file: !20, line: 58, baseType: !1217, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1219, line: 65, size: 384, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1218, file: !1219, line: 66, baseType: !435, size: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1218, file: !1219, line: 67, baseType: !1223, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1219, line: 54, size: 192, elements: !1225)
!1225 = !{!1226, !1231, !1232}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1224, file: !1219, line: 55, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1219, line: 51, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!87, !1223, !84, !74}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1224, file: !1219, line: 56, baseType: !1223, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1224, file: !1219, line: 57, baseType: !87, size: 32, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1202, file: !20, line: 87, baseType: !1218, size: 384, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1202, file: !20, line: 88, baseType: !1205, size: 320, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1202, file: !20, line: 89, baseType: !1218, size: 384, offset: 1024)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !98, file: !30, line: 84, baseType: !1237, size: 64, offset: 2560)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !20, line: 92, size: 448, elements: !1239)
!1239 = !{!1240, !1241, !1247}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !20, line: 93, baseType: !25, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1238, file: !20, line: 94, baseType: !1242, size: 320, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1209, line: 86, size: 320, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1242, file: !1209, line: 87, baseType: !87, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1242, file: !1209, line: 88, baseType: !158, size: 128, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1242, file: !1209, line: 89, baseType: !158, size: 128, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1238, file: !20, line: 95, baseType: !1248, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !98, file: !30, line: 85, baseType: !1237, size: 64, offset: 2624)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !98, file: !30, line: 87, baseType: !1251, size: 64, offset: 2688)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !30, line: 690, size: 96, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !30, line: 691, baseType: !7, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1252, file: !30, line: 692, baseType: !7, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1252, file: !30, line: 693, baseType: !7, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !98, file: !30, line: 88, baseType: !29, size: 32, offset: 2752)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !98, file: !30, line: 90, baseType: !158, size: 128, offset: 2816)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !98, file: !30, line: 91, baseType: !177, size: 512, offset: 2944)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !98, file: !30, line: 92, baseType: !836, size: 256, offset: 3456)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !98, file: !30, line: 102, baseType: !435, size: 320, offset: 3712)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !98, file: !30, line: 112, baseType: !611, size: 8, offset: 4032)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !98, file: !30, line: 113, baseType: !611, size: 8, offset: 4040)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !98, file: !30, line: 119, baseType: !611, size: 8, offset: 4048)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !98, file: !30, line: 126, baseType: !611, size: 8, offset: 4056)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !98, file: !30, line: 133, baseType: !7, size: 32, offset: 4064)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !98, file: !30, line: 142, baseType: !611, size: 8, offset: 4096)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !98, file: !30, line: 145, baseType: !611, size: 8, offset: 4104)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !98, file: !30, line: 148, baseType: !7, size: 32, offset: 4128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !98, file: !30, line: 149, baseType: !7, size: 32, offset: 4160)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !98, file: !30, line: 152, baseType: !611, size: 8, offset: 4192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !98, file: !30, line: 153, baseType: !192, size: 32, offset: 4224)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !98, file: !30, line: 154, baseType: !1274, size: 192, offset: 4288)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1275, line: 41, baseType: !1276)
!1275 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1275, line: 37, size: 192, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !1275, line: 38, baseType: !192, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1276, file: !1275, line: 39, baseType: !158, size: 128, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !98, file: !30, line: 155, baseType: !1281, size: 64, offset: 4480)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !640, line: 746, size: 58368, elements: !1283)
!1283 = !{!1284, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1369, !1380, !1472, !1476, !1479, !1510, !1511, !1512, !1513, !1517, !1519, !1520, !1521, !1522, !1523, !1524, !1535, !1536, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1636, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1672, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1707, !1713, !1895, !1896, !1897, !1898, !1899, !1902, !1909, !1914, !1917, !1920, !1923, !1926, !2068, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2106, !2107, !2108, !2117, !2125, !2126, !2127, !2128, !2129, !2134, !2135, !2136, !2139, !2140, !2143, !2146, !2149, !2152, !2155, !2156, !2242, !2243, !2244, !2245, !2246, !2252, !2253, !2254, !2255, !2258, !2259, !2262, !2265, !2266, !2269, !2270, !2271, !2274, !2275, !2276, !2277, !2278, !2279, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2311, !2314, !2380, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2392, !2464, !2466, !2467, !2468, !2469, !2470, !2471, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2501, !2502, !2503}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1282, file: !640, line: 752, baseType: !1285, size: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1286, line: 56, size: 192, elements: !1287)
!1286 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1287 = !{!1288, !1289, !1290, !1291}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !1286, line: 57, baseType: !84, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1285, file: !1286, line: 58, baseType: !84, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1285, file: !1286, line: 59, baseType: !1100, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1285, file: !1286, line: 61, baseType: !1100, size: 32, offset: 160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1282, file: !640, line: 754, baseType: !7, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1282, file: !640, line: 767, baseType: !74, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1282, file: !640, line: 768, baseType: !819, size: 32, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !640, line: 770, baseType: !7, size: 32, offset: 352)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1282, file: !640, line: 771, baseType: !7, size: 32, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1282, file: !640, line: 774, baseType: !87, size: 32, offset: 416)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1282, file: !640, line: 775, baseType: !1299, size: 128, offset: 448)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1300, line: 58, size: 128, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1301 = !{!1302, !1308, !1313, !1314}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1299, file: !1300, line: 59, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1304, line: 60, size: 64, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1303, file: !1304, line: 61, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 60, baseType: !1309, size: 32, offset: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 60, size: 32, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1309, file: !1300, line: 61, baseType: !7, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1309, file: !1300, line: 62, baseType: !212, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1299, file: !1300, line: 65, baseType: !230, size: 16, offset: 96)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1299, file: !1300, line: 65, baseType: !230, size: 16, offset: 112)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1282, file: !640, line: 776, baseType: !7, size: 32, offset: 576)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1282, file: !640, line: 777, baseType: !84, size: 64, offset: 640)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1282, file: !640, line: 778, baseType: !1281, size: 64, offset: 704)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1282, file: !640, line: 787, baseType: !87, size: 32, offset: 768)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1282, file: !640, line: 788, baseType: !87, size: 32, offset: 800)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1282, file: !640, line: 790, baseType: !87, size: 32, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1282, file: !640, line: 792, baseType: !87, size: 32, offset: 864)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1282, file: !640, line: 793, baseType: !87, size: 32, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1282, file: !640, line: 794, baseType: !87, size: 32, offset: 928)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1282, file: !640, line: 795, baseType: !7, size: 32, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1282, file: !640, line: 797, baseType: !1326, size: 2048, offset: 1024)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !640, line: 551, size: 2048, elements: !1327)
!1327 = !{!1328, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1348, !1351, !1352, !1353}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1326, file: !640, line: 553, baseType: !1329, size: 128)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !640, line: 411, size: 128, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1329, file: !640, line: 412, baseType: !84, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1329, file: !640, line: 413, baseType: !1100, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1326, file: !640, line: 554, baseType: !617, size: 192, align: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1326, file: !640, line: 555, baseType: !418, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1326, file: !640, line: 556, baseType: !418, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1326, file: !640, line: 558, baseType: !158, size: 128, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1326, file: !640, line: 559, baseType: !7, size: 32, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1326, file: !640, line: 561, baseType: !418, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1326, file: !640, line: 562, baseType: !418, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1326, file: !640, line: 563, baseType: !418, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1326, file: !640, line: 564, baseType: !418, size: 64, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1326, file: !640, line: 565, baseType: !430, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1326, file: !640, line: 566, baseType: !418, size: 64, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1326, file: !640, line: 568, baseType: !418, size: 64, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1326, file: !640, line: 571, baseType: !87, size: 32, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1326, file: !640, line: 572, baseType: !1347, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1326, file: !640, line: 574, baseType: !1349, size: 64, offset: 1216)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !640, line: 49, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1326, file: !640, line: 576, baseType: !1349, size: 64, offset: 1280)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1326, file: !640, line: 578, baseType: !84, size: 64, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1326, file: !640, line: 588, baseType: !1354, size: 512, align: 512, offset: 1536)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !640, line: 497, size: 512, align: 512, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1354, file: !640, line: 498, baseType: !418, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1354, file: !640, line: 499, baseType: !418, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1354, file: !640, line: 500, baseType: !418, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1354, file: !640, line: 501, baseType: !1100, size: 32, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1354, file: !640, line: 502, baseType: !1100, size: 32, offset: 224)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1354, file: !640, line: 503, baseType: !84, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1354, file: !640, line: 504, baseType: !84, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1354, file: !640, line: 505, baseType: !84, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1354, file: !640, line: 506, baseType: !1365, size: 64, align: 64, offset: 448)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !640, line: 445, size: 64, align: 64, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1365, file: !640, line: 446, baseType: !7, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1365, file: !640, line: 447, baseType: !7, size: 32, offset: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1282, file: !640, line: 798, baseType: !1370, size: 384, offset: 3072)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !640, line: 592, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1370, file: !640, line: 593, baseType: !158, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1370, file: !640, line: 594, baseType: !84, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1370, file: !640, line: 595, baseType: !84, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1370, file: !640, line: 596, baseType: !7, size: 32, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1370, file: !640, line: 597, baseType: !232, size: 16, offset: 288)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1370, file: !640, line: 598, baseType: !232, size: 16, offset: 304)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1370, file: !640, line: 600, baseType: !1379, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1282, file: !640, line: 799, baseType: !1381, size: 1792, offset: 3456)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !640, line: 610, size: 1792, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1469, !1470}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1381, file: !640, line: 611, baseType: !617, size: 192, align: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1381, file: !640, line: 618, baseType: !418, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1381, file: !640, line: 619, baseType: !418, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1381, file: !640, line: 620, baseType: !418, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1381, file: !640, line: 621, baseType: !418, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1381, file: !640, line: 622, baseType: !418, size: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1381, file: !640, line: 629, baseType: !430, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1381, file: !640, line: 630, baseType: !418, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !640, line: 631, baseType: !7, size: 32, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1381, file: !640, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1381, file: !640, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1381, file: !640, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1381, file: !640, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1381, file: !640, line: 662, baseType: !1397, size: 512, offset: 704)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !1398)
!1398 = !{!1399, !1407, !1408, !1413, !1465, !1466, !1467, !1468}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1397, file: !36, line: 119, baseType: !1400, size: 256)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1401, line: 9, size: 256, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1400, file: !1401, line: 10, baseType: !617, size: 192, align: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1400, file: !1401, line: 11, baseType: !1405, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1406, line: 29, baseType: !430)
!1406 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1397, file: !36, line: 120, baseType: !1405, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1397, file: !36, line: 121, baseType: !1409, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!35, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1397, file: !36, line: 122, baseType: !1414, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !1416)
!1416 = !{!1417, !1442, !1443, !1446, !1451, !1452, !1460, !1464}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1415, file: !36, line: 160, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 215, size: 4608, align: 512, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1419, file: !36, line: 216, baseType: !446, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1419, file: !36, line: 217, baseType: !7, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1419, file: !36, line: 218, baseType: !7, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1419, file: !36, line: 219, baseType: !7, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1419, file: !36, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1419, file: !36, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1419, file: !36, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1419, file: !36, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1419, file: !36, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1419, file: !36, line: 226, baseType: !7, size: 32, offset: 160)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1419, file: !36, line: 227, baseType: !232, size: 16, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1419, file: !36, line: 228, baseType: !232, size: 16, offset: 208)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1419, file: !36, line: 229, baseType: !7, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1419, file: !36, line: 235, baseType: !1405, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1419, file: !36, line: 236, baseType: !1412, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1419, file: !36, line: 237, baseType: !1405, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1419, file: !36, line: 238, baseType: !1412, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1419, file: !36, line: 239, baseType: !1439, size: 4096, align: 512, offset: 512)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 4096, align: 512, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 8)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1415, file: !36, line: 161, baseType: !7, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1415, file: !36, line: 162, baseType: !1444, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !76, line: 32, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !149, line: 96, baseType: !87)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1415, file: !36, line: 163, baseType: !1447, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !461, line: 274, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !461, line: 274, size: 32, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1448, file: !461, line: 274, baseType: !460, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1415, file: !36, line: 164, baseType: !1412, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1415, file: !36, line: 165, baseType: !1453, size: 128, offset: 256)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1401, line: 14, size: 128, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1453, file: !1401, line: 15, baseType: !1456, size: 128)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !618, line: 26, size: 128, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1456, file: !618, line: 27, baseType: !720, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1456, file: !618, line: 28, baseType: !622, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1415, file: !36, line: 166, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1405}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1415, file: !36, line: 167, baseType: !1405, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1397, file: !36, line: 123, baseType: !220, size: 8, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1397, file: !36, line: 124, baseType: !220, size: 8, offset: 456)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1397, file: !36, line: 125, baseType: !220, size: 8, offset: 464)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1397, file: !36, line: 126, baseType: !220, size: 8, offset: 472)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1381, file: !640, line: 671, baseType: !1397, size: 512, offset: 1216)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1381, file: !640, line: 679, baseType: !1471, size: 64, offset: 1728)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1282, file: !640, line: 800, baseType: !1473, size: 64, offset: 5248)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !640, line: 800, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1282, file: !640, line: 809, baseType: !1477, size: 64, offset: 5312)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !640, line: 70, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1282, file: !640, line: 825, baseType: !1480, size: 2048, align: 512, offset: 5632)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !640, line: 509, size: 2048, align: 512, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1480, file: !640, line: 511, baseType: !418, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1480, file: !640, line: 512, baseType: !418, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1480, file: !640, line: 513, baseType: !418, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1480, file: !640, line: 514, baseType: !418, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1480, file: !640, line: 515, baseType: !418, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1480, file: !640, line: 516, baseType: !418, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1480, file: !640, line: 518, baseType: !418, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1480, file: !640, line: 519, baseType: !418, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1480, file: !640, line: 520, baseType: !430, size: 64, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1480, file: !640, line: 522, baseType: !418, size: 64, offset: 576)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1480, file: !640, line: 523, baseType: !418, size: 64, offset: 640)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1480, file: !640, line: 524, baseType: !430, size: 64, offset: 704)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1480, file: !640, line: 526, baseType: !430, size: 64, offset: 768)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1480, file: !640, line: 527, baseType: !418, size: 64, offset: 832)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1480, file: !640, line: 529, baseType: !418, size: 64, offset: 896)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1480, file: !640, line: 530, baseType: !418, size: 64, offset: 960)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1480, file: !640, line: 531, baseType: !418, size: 64, offset: 1024)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1480, file: !640, line: 532, baseType: !418, size: 64, offset: 1088)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1480, file: !640, line: 533, baseType: !418, size: 64, offset: 1152)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1480, file: !640, line: 535, baseType: !418, size: 64, offset: 1216)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1480, file: !640, line: 536, baseType: !418, size: 64, offset: 1280)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1480, file: !640, line: 537, baseType: !418, size: 64, offset: 1344)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1480, file: !640, line: 538, baseType: !418, size: 64, offset: 1408)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1480, file: !640, line: 539, baseType: !418, size: 64, offset: 1472)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1480, file: !640, line: 540, baseType: !418, size: 64, offset: 1536)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1480, file: !640, line: 541, baseType: !418, size: 64, offset: 1600)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1480, file: !640, line: 542, baseType: !418, size: 64, offset: 1664)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1480, file: !640, line: 543, baseType: !418, size: 64, offset: 1728)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1282, file: !640, line: 833, baseType: !7, size: 32, offset: 7680)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1282, file: !640, line: 836, baseType: !7, size: 32, offset: 7712)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1282, file: !640, line: 837, baseType: !87, size: 32, offset: 7744)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1282, file: !640, line: 838, baseType: !1514, size: 64, offset: 7808)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !80, line: 19, baseType: !79)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1282, file: !640, line: 839, baseType: !1518, size: 64, offset: 7872)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1282, file: !640, line: 840, baseType: !1516, size: 64, offset: 7936)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1282, file: !640, line: 841, baseType: !74, size: 64, offset: 8000)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1282, file: !640, line: 843, baseType: !232, size: 16, offset: 8064)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1282, file: !640, line: 845, baseType: !232, size: 16, offset: 8080)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1282, file: !640, line: 848, baseType: !87, size: 32, offset: 8096)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1282, file: !640, line: 849, baseType: !1525, size: 32, offset: 8128)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !640, line: 718, size: 32, elements: !1526)
!1526 = !{!1527, !1534}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1525, file: !640, line: 724, baseType: !1528, size: 32)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !640, line: 719, size: 32, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1528, file: !640, line: 720, baseType: !220, size: 8)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1528, file: !640, line: 721, baseType: !220, size: 8, offset: 8)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1528, file: !640, line: 722, baseType: !220, size: 8, offset: 16)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1528, file: !640, line: 723, baseType: !220, size: 8, offset: 24)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1525, file: !640, line: 725, baseType: !1100, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1282, file: !640, line: 850, baseType: !158, size: 128, offset: 8192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1282, file: !640, line: 851, baseType: !1537, size: 64, offset: 8320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !640, line: 60, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1282, file: !640, line: 855, baseType: !84, size: 64, offset: 8384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1282, file: !640, line: 856, baseType: !220, size: 8, offset: 8448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1282, file: !640, line: 857, baseType: !220, size: 8, offset: 8456)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1282, file: !640, line: 858, baseType: !87, size: 32, offset: 8480)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1282, file: !640, line: 859, baseType: !158, size: 128, offset: 8512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1282, file: !640, line: 860, baseType: !87, size: 32, offset: 8640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1282, file: !640, line: 861, baseType: !158, size: 128, offset: 8704)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1282, file: !640, line: 873, baseType: !1547, size: 256, offset: 8832)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !640, line: 376, size: 256, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1547, file: !640, line: 381, baseType: !84, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1547, file: !640, line: 384, baseType: !420, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1547, file: !640, line: 389, baseType: !420, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1547, file: !640, line: 392, baseType: !420, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1282, file: !640, line: 875, baseType: !158, size: 128, offset: 9088)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1282, file: !640, line: 877, baseType: !1242, size: 320, offset: 9216)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1282, file: !640, line: 878, baseType: !617, size: 192, align: 64, offset: 9536)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1282, file: !640, line: 881, baseType: !370, size: 64, offset: 9728)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1282, file: !640, line: 882, baseType: !370, size: 64, offset: 9792)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1282, file: !640, line: 884, baseType: !87, size: 32, offset: 9856)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1282, file: !640, line: 885, baseType: !87, size: 32, offset: 9888)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1282, file: !640, line: 886, baseType: !87, size: 32, offset: 9920)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1282, file: !640, line: 888, baseType: !87, size: 32, offset: 9952)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1282, file: !640, line: 890, baseType: !84, size: 64, offset: 9984)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1282, file: !640, line: 893, baseType: !7, size: 32, offset: 10048)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1282, file: !640, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1282, file: !640, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1282, file: !640, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1282, file: !640, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1282, file: !640, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1282, file: !640, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1282, file: !640, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1282, file: !640, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1282, file: !640, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1282, file: !640, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1282, file: !640, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1282, file: !640, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1282, file: !640, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1282, file: !640, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1282, file: !640, line: 969, baseType: !84, size: 64, offset: 10176)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1282, file: !640, line: 971, baseType: !1580, size: 448, offset: 10240)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !41, line: 25, size: 448, elements: !1581)
!1581 = !{!1582, !1583, !1588}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1580, file: !41, line: 26, baseType: !84, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1580, file: !41, line: 27, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!151, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !41, line: 28, baseType: !1589, size: 320, offset: 128)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1580, file: !41, line: 28, size: 320, elements: !1590)
!1590 = !{!1591, !1601, !1626}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1589, file: !41, line: 37, baseType: !1592, size: 320)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !41, line: 30, size: 320, elements: !1593)
!1593 = !{!1594, !1596, !1597, !1598, !1599, !1600}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1592, file: !41, line: 31, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1592, file: !41, line: 32, baseType: !1100, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1592, file: !41, line: 33, baseType: !1100, size: 32, offset: 96)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1592, file: !41, line: 34, baseType: !1100, size: 32, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1592, file: !41, line: 35, baseType: !418, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1592, file: !41, line: 36, baseType: !1595, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1589, file: !41, line: 47, baseType: !1602, size: 192)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !41, line: 39, size: 192, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1625}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1602, file: !41, line: 40, baseType: !1444, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1602, file: !41, line: 41, baseType: !40, size: 32, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !41, line: 42, baseType: !1607, size: 64, offset: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !41, line: 42, size: 64, elements: !1608)
!1608 = !{!1609, !1617}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1607, file: !41, line: 43, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1612, line: 7, size: 128, elements: !1613)
!1612 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1613 = !{!1614, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1611, file: !1612, line: 8, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !149, line: 93, baseType: !343)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1611, file: !1612, line: 9, baseType: !343, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1607, file: !41, line: 44, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1620, line: 7, size: 64, elements: !1621)
!1620 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1621 = !{!1622, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1619, file: !1620, line: 8, baseType: !1623, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1620, line: 5, baseType: !491)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1619, file: !1620, line: 9, baseType: !491, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1602, file: !41, line: 46, baseType: !418, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1589, file: !41, line: 55, baseType: !1627, size: 256)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !41, line: 49, size: 256, elements: !1628)
!1628 = !{!1629, !1632, !1633, !1634, !1635}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1627, file: !41, line: 50, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !41, line: 14, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1627, file: !41, line: 51, baseType: !87, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1627, file: !41, line: 52, baseType: !87, size: 32, offset: 96)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1627, file: !41, line: 53, baseType: !84, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1627, file: !41, line: 54, baseType: !84, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1282, file: !640, line: 973, baseType: !1637, size: 32, offset: 10688)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !76, line: 27, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !149, line: 28, baseType: !87)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1282, file: !640, line: 974, baseType: !1637, size: 32, offset: 10720)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1282, file: !640, line: 978, baseType: !84, size: 64, offset: 10752)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1282, file: !640, line: 987, baseType: !1281, size: 64, offset: 10816)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1282, file: !640, line: 990, baseType: !1281, size: 64, offset: 10880)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1282, file: !640, line: 995, baseType: !158, size: 128, offset: 10944)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1282, file: !640, line: 996, baseType: !158, size: 128, offset: 11072)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1282, file: !640, line: 997, baseType: !1281, size: 64, offset: 11200)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1282, file: !640, line: 1005, baseType: !158, size: 128, offset: 11264)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1282, file: !640, line: 1006, baseType: !158, size: 128, offset: 11392)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1282, file: !640, line: 1009, baseType: !1649, size: 64, offset: 11520)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1651, line: 59, size: 768, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1652 = !{!1653, !1654, !1655, !1656, !1661, !1662, !1663, !1664}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1650, file: !1651, line: 61, baseType: !819, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1650, file: !1651, line: 62, baseType: !7, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1650, file: !1651, line: 63, baseType: !192, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1650, file: !1651, line: 65, baseType: !1657, size: 256, offset: 128)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1658, size: 256, elements: !493)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !76, line: 194, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1658, file: !76, line: 195, baseType: !1090, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1650, file: !1651, line: 66, baseType: !1658, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1650, file: !1651, line: 68, baseType: !1274, size: 192, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1650, file: !1651, line: 69, baseType: !361, size: 128, align: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1650, file: !1651, line: 70, baseType: !1665, offset: 768)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1666, elements: !589)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1651, line: 54, size: 128, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1666, file: !1651, line: 55, baseType: !87, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1666, file: !1651, line: 56, baseType: !1670, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1651, line: 56, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1282, file: !640, line: 1010, baseType: !1673, size: 512, offset: 11584)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 512, elements: !493)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1282, file: !640, line: 1011, baseType: !158, size: 128, offset: 12096)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1282, file: !640, line: 1012, baseType: !158, size: 128, offset: 12224)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1282, file: !640, line: 1014, baseType: !835, size: 64, offset: 12352)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1282, file: !640, line: 1017, baseType: !982, size: 64, offset: 12416)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1282, file: !640, line: 1020, baseType: !982, size: 64, offset: 12480)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1282, file: !640, line: 1023, baseType: !74, size: 64, offset: 12544)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1282, file: !640, line: 1025, baseType: !418, size: 64, offset: 12608)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1282, file: !640, line: 1026, baseType: !418, size: 64, offset: 12672)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1282, file: !640, line: 1031, baseType: !418, size: 64, offset: 12736)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1282, file: !640, line: 1032, baseType: !1684, size: 192, offset: 12800)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !640, line: 324, size: 192, elements: !1685)
!1685 = !{!1686, !1687, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1684, file: !640, line: 326, baseType: !418, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1684, file: !640, line: 327, baseType: !418, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !640, line: 328, baseType: !446, size: 32, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1282, file: !640, line: 1041, baseType: !84, size: 64, offset: 12992)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1282, file: !640, line: 1042, baseType: !84, size: 64, offset: 13056)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1282, file: !640, line: 1045, baseType: !418, size: 64, offset: 13120)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1282, file: !640, line: 1048, baseType: !418, size: 64, offset: 13184)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1282, file: !640, line: 1051, baseType: !84, size: 64, offset: 13248)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1282, file: !640, line: 1052, baseType: !84, size: 64, offset: 13312)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1282, file: !640, line: 1055, baseType: !1696, size: 640, offset: 13376)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1697, line: 132, size: 640, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1698 = !{!1699, !1705, !1706}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1696, file: !1697, line: 133, baseType: !1700, size: 576)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 576, elements: !262)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1697, line: 117, size: 192, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1701, file: !1697, line: 118, baseType: !418, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1701, file: !1697, line: 119, baseType: !1453, size: 128, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1696, file: !1697, line: 134, baseType: !7, size: 32, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1696, file: !1697, line: 135, baseType: !7, size: 32, offset: 608)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1282, file: !640, line: 1058, baseType: !1708, size: 448, offset: 14016)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1697, line: 144, size: 448, elements: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1708, file: !1697, line: 145, baseType: !361, size: 128, align: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1708, file: !1697, line: 146, baseType: !512, size: 256, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1708, file: !1697, line: 147, baseType: !7, size: 32, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1282, file: !640, line: 1064, baseType: !1714, size: 64, offset: 14464)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1717, line: 110, size: 1472, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1735, !1736, !1737, !1738, !1739, !1740, !1850, !1851, !1852, !1853, !1854, !1877, !1878, !1882, !1890}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1716, file: !1717, line: 111, baseType: !424, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1716, file: !1717, line: 112, baseType: !687, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1716, file: !1717, line: 113, baseType: !694, size: 32, offset: 96)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1716, file: !1717, line: 114, baseType: !687, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1716, file: !1717, line: 115, baseType: !694, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1716, file: !1717, line: 116, baseType: !687, size: 32, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1716, file: !1717, line: 117, baseType: !694, size: 32, offset: 224)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1716, file: !1717, line: 118, baseType: !687, size: 32, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1716, file: !1717, line: 119, baseType: !694, size: 32, offset: 288)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1716, file: !1717, line: 120, baseType: !7, size: 32, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1716, file: !1717, line: 121, baseType: !1730, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1731, line: 24, baseType: !1732)
!1731 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1731, line: 24, size: 64, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1732, file: !1731, line: 24, baseType: !418, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1716, file: !1717, line: 122, baseType: !1730, size: 64, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1716, file: !1717, line: 123, baseType: !1730, size: 64, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1716, file: !1717, line: 124, baseType: !1730, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1716, file: !1717, line: 125, baseType: !1730, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1716, file: !1717, line: 127, baseType: !224, size: 8, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1716, file: !1717, line: 129, baseType: !1741, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1743, line: 195, size: 1728, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1744 = !{!1745, !1746, !1749, !1754, !1755, !1758, !1759, !1766, !1767, !1768, !1769, !1772, !1773, !1774, !1775, !1776, !1814, !1835}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1742, file: !1743, line: 196, baseType: !819, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1742, file: !1743, line: 197, baseType: !1747, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1743, line: 28, baseType: !1748)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !76, line: 104, baseType: !491)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1743, line: 198, baseType: !1750, size: 192, offset: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !1743, line: 198, size: 192, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1750, file: !1743, line: 199, baseType: !158, size: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1750, file: !1743, line: 200, baseType: !617, size: 192, align: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1742, file: !1743, line: 205, baseType: !435, size: 320, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1742, file: !1743, line: 206, baseType: !1756, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1743, line: 206, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1742, file: !1743, line: 207, baseType: !74, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1743, line: 208, baseType: !1760, size: 64, offset: 704)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !1743, line: 208, size: 64, elements: !1761)
!1761 = !{!1762, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1760, file: !1743, line: 209, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1764, line: 8, baseType: !431)
!1764 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1760, file: !1743, line: 210, baseType: !1763, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1742, file: !1743, line: 212, baseType: !1763, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1742, file: !1743, line: 213, baseType: !687, size: 32, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1742, file: !1743, line: 214, baseType: !694, size: 32, offset: 864)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1742, file: !1743, line: 215, baseType: !1770, size: 32, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1743, line: 31, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 110, baseType: !1100)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1742, file: !1743, line: 216, baseType: !232, size: 16, offset: 928)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1742, file: !1743, line: 217, baseType: !232, size: 16, offset: 944)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1742, file: !1743, line: 221, baseType: !552, size: 16, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1743, line: 228, baseType: !84, size: 64, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1743, line: 245, baseType: !1777, size: 320, offset: 1088)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !1743, line: 245, size: 320, elements: !1778)
!1778 = !{!1779, !1806}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1777, file: !1743, line: 246, baseType: !1780, size: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1743, line: 114, size: 320, elements: !1781)
!1781 = !{!1782, !1783, !1795, !1798, !1805}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1780, file: !1743, line: 116, baseType: !84, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1743, line: 117, baseType: !1784, size: 64, offset: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1743, line: 117, size: 64, elements: !1785)
!1785 = !{!1786, !1794}
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !1743, line: 118, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !1743, line: 118, size: 64, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1787, file: !1743, line: 120, baseType: !230, size: 16)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1787, file: !1743, line: 121, baseType: !1791, size: 48, offset: 16)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 48, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 6)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1784, file: !1743, line: 127, baseType: !84, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1780, file: !1743, line: 129, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1743, line: 102, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1780, file: !1743, line: 130, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1743, line: 108, size: 192, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1800, file: !1743, line: 109, baseType: !361, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1800, file: !1743, line: 110, baseType: !819, size: 32, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1800, file: !1743, line: 111, baseType: !611, size: 8, offset: 160)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1780, file: !1743, line: 131, baseType: !181, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !1743, line: 247, baseType: !1807, size: 320)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !1743, line: 247, size: 320, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1807, file: !1743, line: 248, baseType: !84, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1807, file: !1743, line: 249, baseType: !84, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1807, file: !1743, line: 250, baseType: !1796, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1807, file: !1743, line: 251, baseType: !1799, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1807, file: !1743, line: 252, baseType: !152, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1743, line: 260, baseType: !1815, size: 256, offset: 1408)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !1743, line: 260, size: 256, elements: !1816)
!1816 = !{!1817, !1823}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1815, file: !1743, line: 261, baseType: !1818, size: 256)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1743, line: 134, size: 256, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1818, file: !1743, line: 135, baseType: !74, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1818, file: !1743, line: 136, baseType: !1822, size: 256)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !493)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1743, line: 262, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1743, line: 262, size: 256, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1824, file: !1743, line: 264, baseType: !158, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1824, file: !1743, line: 265, baseType: !1828, size: 128, offset: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1829, line: 22, size: 128, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1830 = !{!1831, !1834}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1828, file: !1829, line: 23, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1829, line: 23, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1828, file: !1829, line: 24, baseType: !84, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1742, file: !1743, line: 280, baseType: !1836, size: 64, offset: 1664)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1743, line: 176, size: 192, elements: !1838)
!1838 = !{!1839, !1848, !1849}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1837, file: !1743, line: 177, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1743, line: 171, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!87, !1741, !1844, !1846, !1741}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1837, file: !1743, line: 178, baseType: !1741, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1837, file: !1743, line: 179, baseType: !1796, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1716, file: !1717, line: 130, baseType: !1741, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1716, file: !1717, line: 131, baseType: !1741, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1716, file: !1717, line: 132, baseType: !1741, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1716, file: !1717, line: 135, baseType: !74, size: 64, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1716, file: !1717, line: 137, baseType: !1855, size: 64, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1857, line: 14, size: 1088, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1856, file: !1857, line: 15, baseType: !819, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1856, file: !1857, line: 17, baseType: !483, size: 320, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1856, file: !1857, line: 19, baseType: !84, size: 64, offset: 384)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1856, file: !1857, line: 20, baseType: !424, size: 64, offset: 448)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1856, file: !1857, line: 23, baseType: !1087, size: 128, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1856, file: !1857, line: 24, baseType: !687, size: 32, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1856, file: !1857, line: 29, baseType: !424, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1856, file: !1857, line: 36, baseType: !1867, size: 320, offset: 768)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1868, line: 15, size: 320, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1867, file: !1868, line: 16, baseType: !446, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1867, file: !1868, line: 18, baseType: !87, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1867, file: !1868, line: 19, baseType: !87, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1867, file: !1868, line: 20, baseType: !87, size: 32, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1867, file: !1868, line: 21, baseType: !87, size: 32, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1867, file: !1868, line: 22, baseType: !84, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !1868, line: 23, baseType: !84, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1716, file: !1717, line: 138, baseType: !559, size: 64, offset: 1152)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1716, file: !1717, line: 139, baseType: !1879, size: 64, offset: 1216)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1881, line: 16, flags: DIFlagFwdDecl)
!1881 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1716, file: !1717, line: 140, baseType: !1883, size: 64, offset: 1280)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1717, line: 25, size: 64, elements: !1885)
!1885 = !{!1886, !1887, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1884, file: !1717, line: 26, baseType: !212, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1884, file: !1717, line: 27, baseType: !87, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1884, file: !1717, line: 28, baseType: !1889, offset: 64)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, elements: !589)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !1717, line: 142, baseType: !1891, size: 128, offset: 1344)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !1717, line: 142, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1891, file: !1717, line: 143, baseType: !87, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1891, file: !1717, line: 144, baseType: !361, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1282, file: !640, line: 1067, baseType: !1714, size: 64, offset: 14528)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1282, file: !640, line: 1070, baseType: !1714, size: 64, offset: 14592)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1282, file: !640, line: 1074, baseType: !1741, size: 64, offset: 14656)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1282, file: !640, line: 1084, baseType: !128, size: 128, offset: 14720)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1282, file: !640, line: 1086, baseType: !1900, size: 64, offset: 14848)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !640, line: 55, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1282, file: !640, line: 1089, baseType: !1903, size: 64, offset: 14912)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1904, line: 12, size: 64, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1903, file: !1904, line: 13, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1904, line: 8, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1282, file: !640, line: 1090, baseType: !1910, size: 128, offset: 14976)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1911, line: 13, size: 128, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1910, file: !1911, line: 14, baseType: !158, size: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1282, file: !640, line: 1097, baseType: !1915, size: 64, offset: 15104)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !640, line: 50, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1282, file: !640, line: 1100, baseType: !1918, size: 64, offset: 15168)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !640, line: 1100, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1282, file: !640, line: 1103, baseType: !1921, size: 64, offset: 15232)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !640, line: 53, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1282, file: !640, line: 1107, baseType: !1924, size: 64, offset: 15296)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !640, line: 56, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1282, file: !640, line: 1110, baseType: !1927, size: 64, offset: 15360)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1929, line: 93, size: 8768, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1978, !1987, !1988, !1990, !1991, !1992, !1995, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2037, !2038, !2045, !2055, !2058, !2059, !2062, !2063, !2064, !2065, !2066, !2067}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1928, file: !1929, line: 94, baseType: !819, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1928, file: !1929, line: 95, baseType: !212, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1928, file: !1929, line: 96, baseType: !87, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1928, file: !1929, line: 97, baseType: !87, size: 32, offset: 96)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1928, file: !1929, line: 98, baseType: !158, size: 128, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1928, file: !1929, line: 100, baseType: !1274, size: 192, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1928, file: !1929, line: 103, baseType: !1281, size: 64, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1928, file: !1929, line: 106, baseType: !1939, size: 192, offset: 512)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1881, line: 32, size: 192, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1939, file: !1881, line: 33, baseType: !158, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1939, file: !1881, line: 34, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1944, line: 25, baseType: !1945)
!1944 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1944, line: 23, size: 64, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1945, file: !1944, line: 24, baseType: !83, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1928, file: !1929, line: 109, baseType: !1658, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1928, file: !1929, line: 112, baseType: !87, size: 32, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1928, file: !1929, line: 114, baseType: !87, size: 32, offset: 800)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1928, file: !1929, line: 115, baseType: !1281, size: 64, offset: 832)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1928, file: !1929, line: 118, baseType: !87, size: 32, offset: 896)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1928, file: !1929, line: 119, baseType: !7, size: 32, offset: 928)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1928, file: !1929, line: 121, baseType: !1955, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1929, line: 80, size: 448, elements: !1957)
!1957 = !{!1958, !1959, !1965}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1956, file: !1929, line: 81, baseType: !212, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1956, file: !1929, line: 82, baseType: !1960, size: 128, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1929, line: 75, size: 128, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1960, file: !1929, line: 76, baseType: !1281, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1960, file: !1929, line: 77, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1956, file: !1929, line: 83, baseType: !836, size: 256, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1928, file: !1929, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1928, file: !1929, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1928, file: !1929, line: 138, baseType: !7, size: 32, offset: 1056)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1928, file: !1929, line: 139, baseType: !158, size: 128, offset: 1088)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1928, file: !1929, line: 142, baseType: !1397, size: 512, offset: 1216)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1928, file: !1929, line: 143, baseType: !1405, size: 64, offset: 1728)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1928, file: !1929, line: 150, baseType: !1973, size: 256, offset: 1792)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1974, size: 256, elements: !972)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1929, line: 38, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1974, file: !1929, line: 39, baseType: !418, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1974, file: !1929, line: 40, baseType: !418, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1928, file: !1929, line: 156, baseType: !1979, size: 192, offset: 2048)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1929, line: 66, size: 192, elements: !1980)
!1980 = !{!1981}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1979, file: !1929, line: 67, baseType: !1982, size: 192)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1929, line: 47, size: 192, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1982, file: !1929, line: 48, baseType: !426, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1982, file: !1929, line: 49, baseType: !426, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1982, file: !1929, line: 50, baseType: !426, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1928, file: !1929, line: 160, baseType: !1696, size: 640, offset: 2240)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1928, file: !1929, line: 163, baseType: !1989, size: 256, offset: 2880)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, size: 256, elements: !493)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1928, file: !1929, line: 169, baseType: !1649, size: 64, offset: 3136)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1928, file: !1929, line: 172, baseType: !87, size: 32, offset: 3200)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1928, file: !1929, line: 174, baseType: !1993, size: 64, offset: 3264)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1929, line: 174, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1928, file: !1929, line: 185, baseType: !1996, size: 64, offset: 3328)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !461, line: 860, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 853, size: 64, elements: !1998)
!1998 = !{!1999, !2004}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1997, file: !461, line: 858, baseType: !2000, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !461, line: 275, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !461, line: 275, size: 32, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2001, file: !461, line: 275, baseType: !460, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1997, file: !461, line: 859, baseType: !192, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1928, file: !1929, line: 186, baseType: !418, size: 64, offset: 3392)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1928, file: !1929, line: 186, baseType: !418, size: 64, offset: 3456)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1928, file: !1929, line: 186, baseType: !418, size: 64, offset: 3520)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1928, file: !1929, line: 186, baseType: !418, size: 64, offset: 3584)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1928, file: !1929, line: 187, baseType: !418, size: 64, offset: 3648)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1928, file: !1929, line: 188, baseType: !418, size: 64, offset: 3712)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1928, file: !1929, line: 189, baseType: !1684, size: 192, offset: 3776)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1928, file: !1929, line: 190, baseType: !84, size: 64, offset: 3968)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1928, file: !1929, line: 190, baseType: !84, size: 64, offset: 4032)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1928, file: !1929, line: 190, baseType: !84, size: 64, offset: 4096)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1928, file: !1929, line: 190, baseType: !84, size: 64, offset: 4160)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1928, file: !1929, line: 191, baseType: !84, size: 64, offset: 4224)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1928, file: !1929, line: 191, baseType: !84, size: 64, offset: 4288)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1928, file: !1929, line: 191, baseType: !84, size: 64, offset: 4352)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1928, file: !1929, line: 191, baseType: !84, size: 64, offset: 4416)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1928, file: !1929, line: 192, baseType: !84, size: 64, offset: 4480)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1928, file: !1929, line: 192, baseType: !84, size: 64, offset: 4544)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1928, file: !1929, line: 192, baseType: !84, size: 64, offset: 4608)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1928, file: !1929, line: 192, baseType: !84, size: 64, offset: 4672)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1928, file: !1929, line: 193, baseType: !84, size: 64, offset: 4736)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1928, file: !1929, line: 193, baseType: !84, size: 64, offset: 4800)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1928, file: !1929, line: 194, baseType: !2027, size: 448, offset: 4864)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2028, line: 12, size: 448, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2027, file: !2028, line: 15, baseType: !418, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2027, file: !2028, line: 17, baseType: !418, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2027, file: !2028, line: 19, baseType: !418, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2027, file: !2028, line: 21, baseType: !418, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2027, file: !2028, line: 29, baseType: !418, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2027, file: !2028, line: 35, baseType: !418, size: 64, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2027, file: !2028, line: 44, baseType: !418, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1928, file: !1929, line: 202, baseType: !420, size: 64, offset: 5312)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1928, file: !1929, line: 213, baseType: !2039, size: 2048, offset: 5376)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2040, size: 2048, elements: !130)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2041, line: 43, size: 128, elements: !2042)
!2041 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2040, file: !2041, line: 44, baseType: !305, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2040, file: !2041, line: 45, baseType: !305, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1928, file: !1929, line: 216, baseType: !2046, size: 448, offset: 7424)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1929, line: 30, size: 448, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2046, file: !1929, line: 31, baseType: !87, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2046, file: !1929, line: 32, baseType: !151, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2046, file: !1929, line: 33, baseType: !84, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2046, file: !1929, line: 34, baseType: !418, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2046, file: !1929, line: 34, baseType: !418, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2046, file: !1929, line: 35, baseType: !84, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2046, file: !1929, line: 35, baseType: !84, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1928, file: !1929, line: 219, baseType: !2056, size: 64, offset: 7872)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1929, line: 219, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1928, file: !1929, line: 222, baseType: !7, size: 32, offset: 7936)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1928, file: !1929, line: 223, baseType: !2060, size: 64, offset: 8000)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1929, line: 223, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1928, file: !1929, line: 230, baseType: !611, size: 8, offset: 8064)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1928, file: !1929, line: 231, baseType: !552, size: 16, offset: 8080)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1928, file: !1929, line: 232, baseType: !552, size: 16, offset: 8096)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1928, file: !1929, line: 234, baseType: !370, size: 64, offset: 8128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1928, file: !1929, line: 237, baseType: !512, size: 256, offset: 8192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1928, file: !1929, line: 243, baseType: !435, size: 320, offset: 8448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1282, file: !640, line: 1111, baseType: !2069, size: 64, offset: 15424)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1929, line: 20, size: 16640, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2070, file: !1929, line: 21, baseType: !192, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2070, file: !1929, line: 22, baseType: !819, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2070, file: !1929, line: 23, baseType: !1274, size: 192, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2070, file: !1929, line: 24, baseType: !2076, size: 16384, offset: 256)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2077, size: 16384, elements: !266)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1881, line: 51, size: 256, elements: !2078)
!2078 = !{!2079}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2077, file: !1881, line: 52, baseType: !2080, size: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1881, line: 37, size: 256, elements: !2081)
!2081 = !{!2082, !2089, !2090, !2094}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2080, file: !1881, line: 39, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2084, line: 83, baseType: !2085)
!2084 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2084, line: 82, baseType: !2087)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !87}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2080, file: !1881, line: 40, baseType: !84, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2080, file: !1881, line: 46, baseType: !2091, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2084, line: 86, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2084, line: 85, baseType: !1194)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2080, file: !1881, line: 48, baseType: !1943, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1282, file: !640, line: 1112, baseType: !1943, size: 64, offset: 15488)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1282, file: !640, line: 1113, baseType: !1943, size: 64, offset: 15552)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1282, file: !640, line: 1115, baseType: !1943, size: 64, offset: 15616)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1282, file: !640, line: 1116, baseType: !1939, size: 192, offset: 15680)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1282, file: !640, line: 1117, baseType: !84, size: 64, offset: 15872)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1282, file: !640, line: 1118, baseType: !303, size: 64, offset: 15936)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1282, file: !640, line: 1119, baseType: !7, size: 32, offset: 16000)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1282, file: !640, line: 1121, baseType: !364, size: 64, offset: 16064)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1282, file: !640, line: 1125, baseType: !2104, size: 64, offset: 16128)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !640, line: 43, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1282, file: !640, line: 1127, baseType: !687, size: 32, offset: 16192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1282, file: !640, line: 1128, baseType: !7, size: 32, offset: 16224)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1282, file: !640, line: 1130, baseType: !2109, size: 128, offset: 16256)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2110, line: 37, size: 128, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2111 = !{!2112, !2113, !2114}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2109, file: !2110, line: 38, baseType: !87, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2109, file: !2110, line: 39, baseType: !212, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2109, file: !2110, line: 40, baseType: !2115, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2110, line: 24, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1282, file: !640, line: 1131, baseType: !2118, size: 256, offset: 16384)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2119, line: 12, size: 256, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2118, file: !2119, line: 13, baseType: !152, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2118, file: !2119, line: 14, baseType: !84, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2118, file: !2119, line: 15, baseType: !84, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2118, file: !2119, line: 16, baseType: !611, size: 8, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1282, file: !640, line: 1134, baseType: !418, size: 64, offset: 16640)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1282, file: !640, line: 1135, baseType: !418, size: 64, offset: 16704)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1282, file: !640, line: 1138, baseType: !192, size: 32, offset: 16768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1282, file: !640, line: 1141, baseType: !446, size: 32, offset: 16800)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1282, file: !640, line: 1143, baseType: !2130, size: 64, offset: 16832)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !640, line: 735, size: 64, elements: !2131)
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2130, file: !640, line: 736, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1282, file: !640, line: 1147, baseType: !1456, size: 128, offset: 16896)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1282, file: !640, line: 1149, baseType: !1281, size: 64, offset: 17024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1282, file: !640, line: 1151, baseType: !2137, size: 64, offset: 17088)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !640, line: 1151, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1282, file: !640, line: 1188, baseType: !74, size: 64, offset: 17152)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1282, file: !640, line: 1191, baseType: !2141, size: 64, offset: 17216)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !640, line: 44, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1282, file: !640, line: 1194, baseType: !2144, size: 64, offset: 17280)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !640, line: 45, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1282, file: !640, line: 1197, baseType: !2147, size: 64, offset: 17344)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !640, line: 61, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1282, file: !640, line: 1199, baseType: !2150, size: 64, offset: 17408)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !640, line: 52, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1282, file: !640, line: 1202, baseType: !2153, size: 64, offset: 17472)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !640, line: 48, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1282, file: !640, line: 1205, baseType: !84, size: 64, offset: 17536)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1282, file: !640, line: 1206, baseType: !2157, size: 64, offset: 17600)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1881, line: 14, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1881, line: 12, size: 384, elements: !2160)
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !1881, line: 13, baseType: !2162, size: 384)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !1881, line: 13, size: 384, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2162, file: !1881, line: 13, baseType: !87, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2162, file: !1881, line: 13, baseType: !87, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2162, file: !1881, line: 13, baseType: !87, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2162, file: !1881, line: 13, baseType: !2168, size: 256, offset: 128)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2169, line: 37, size: 256, elements: !2170)
!2169 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2170 = !{!2171, !2176, !2189, !2195, !2204, !2231, !2236}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2168, file: !2169, line: 42, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 39, size: 64, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2172, file: !2169, line: 40, baseType: !1638, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2172, file: !2169, line: 41, baseType: !692, size: 32, offset: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2168, file: !2169, line: 50, baseType: !2177, size: 192)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 45, size: 192, elements: !2178)
!2178 = !{!2179, !2181, !2182, !2188}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2177, file: !2169, line: 46, baseType: !2180, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !149, line: 95, baseType: !87)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2177, file: !2169, line: 47, baseType: !87, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2177, file: !2169, line: 48, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2169, line: 11, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2169, line: 8, size: 64, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2184, file: !2169, line: 9, baseType: !87, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2184, file: !2169, line: 10, baseType: !74, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2177, file: !2169, line: 49, baseType: !87, size: 32, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2168, file: !2169, line: 57, baseType: !2190, size: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 53, size: 128, elements: !2191)
!2191 = !{!2192, !2193, !2194}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2190, file: !2169, line: 54, baseType: !1638, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2190, file: !2169, line: 55, baseType: !692, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2190, file: !2169, line: 56, baseType: !2183, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2168, file: !2169, line: 66, baseType: !2196, size: 256)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 60, size: 256, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201, !2203}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2196, file: !2169, line: 61, baseType: !1638, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2196, file: !2169, line: 62, baseType: !692, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2196, file: !2169, line: 63, baseType: !87, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2196, file: !2169, line: 64, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !149, line: 94, baseType: !150)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2196, file: !2169, line: 65, baseType: !2202, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2168, file: !2169, line: 105, baseType: !2205, size: 256)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 69, size: 256, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2205, file: !2169, line: 70, baseType: !74, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2169, line: 79, baseType: !2209, size: 192, offset: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !2169, line: 79, size: 192, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2220, !2225}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2209, file: !2169, line: 81, baseType: !87, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2209, file: !2169, line: 86, baseType: !552, size: 16)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2209, file: !2169, line: 92, baseType: !2214, size: 192)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2169, line: 88, size: 192, elements: !2215)
!2215 = !{!2216, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2214, file: !2169, line: 89, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !1440)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2214, file: !2169, line: 90, baseType: !74, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2214, file: !2169, line: 91, baseType: !74, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2209, file: !2169, line: 97, baseType: !2221, size: 96)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2169, line: 94, size: 96, elements: !2222)
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2221, file: !2169, line: 95, baseType: !2217, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2221, file: !2169, line: 96, baseType: !1018, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2209, file: !2169, line: 103, baseType: !2226, size: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2169, line: 99, size: 128, elements: !2227)
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2226, file: !2169, line: 100, baseType: !84, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2226, file: !2169, line: 101, baseType: !1018, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2226, file: !2169, line: 102, baseType: !1018, size: 32, offset: 96)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2168, file: !2169, line: 111, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 108, size: 128, elements: !2233)
!2233 = !{!2234, !2235}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2232, file: !2169, line: 109, baseType: !151, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2232, file: !2169, line: 110, baseType: !87, size: 32, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2168, file: !2169, line: 118, baseType: !2237, size: 128)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !2169, line: 114, size: 128, elements: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2237, file: !2169, line: 115, baseType: !74, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2237, file: !2169, line: 116, baseType: !87, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2237, file: !2169, line: 117, baseType: !7, size: 32, offset: 96)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1282, file: !640, line: 1208, baseType: !2027, size: 448, offset: 17664)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1282, file: !640, line: 1215, baseType: !418, size: 64, offset: 18112)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1282, file: !640, line: 1217, baseType: !418, size: 64, offset: 18176)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1282, file: !640, line: 1219, baseType: !418, size: 64, offset: 18240)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1282, file: !640, line: 1223, baseType: !2247, size: 64, offset: 18304)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2248, line: 99, baseType: !2249)
!2248 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2248, line: 99, size: 64, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2249, file: !2248, line: 99, baseType: !83, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1282, file: !640, line: 1225, baseType: !2000, size: 32, offset: 18368)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1282, file: !640, line: 1226, baseType: !87, size: 32, offset: 18400)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1282, file: !640, line: 1227, baseType: !87, size: 32, offset: 18432)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1282, file: !640, line: 1231, baseType: !2256, size: 64, offset: 18496)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !640, line: 1231, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1282, file: !640, line: 1233, baseType: !158, size: 128, offset: 18560)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1282, file: !640, line: 1240, baseType: !2260, size: 64, offset: 18688)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !640, line: 62, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1282, file: !640, line: 1242, baseType: !2263, size: 64, offset: 18752)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !640, line: 1242, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1282, file: !640, line: 1244, baseType: !158, size: 128, offset: 18816)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1282, file: !640, line: 1245, baseType: !2267, size: 64, offset: 18944)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !640, line: 51, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1282, file: !640, line: 1246, baseType: !512, size: 256, offset: 19008)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1282, file: !640, line: 1247, baseType: !7, size: 32, offset: 19264)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1282, file: !640, line: 1250, baseType: !2272, size: 64, offset: 19328)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !640, line: 57, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1282, file: !640, line: 1251, baseType: !512, size: 256, offset: 19392)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1282, file: !640, line: 1252, baseType: !158, size: 128, offset: 19648)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1282, file: !640, line: 1259, baseType: !638, size: 64, offset: 19776)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1282, file: !640, line: 1260, baseType: !552, size: 16, offset: 19840)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1282, file: !640, line: 1261, baseType: !552, size: 16, offset: 19856)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1282, file: !640, line: 1314, baseType: !2280, size: 64, offset: 19904)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2282, line: 62, size: 256, align: 256, elements: !2283)
!2282 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2281, file: !2282, line: 75, baseType: !1018, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2281, file: !2282, line: 90, baseType: !1018, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2281, file: !2282, line: 112, baseType: !419, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !2282, line: 132, baseType: !1018, size: 32, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2281, file: !2282, line: 140, baseType: !1018, size: 32, offset: 160)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2281, file: !2282, line: 149, baseType: !1018, size: 32, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2281, file: !2282, line: 154, baseType: !2291, offset: 224)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !589)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1282, file: !640, line: 1315, baseType: !1100, size: 32, offset: 19968)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1282, file: !640, line: 1316, baseType: !1100, size: 32, offset: 20000)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1282, file: !640, line: 1321, baseType: !84, size: 64, offset: 20032)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1282, file: !640, line: 1325, baseType: !87, size: 32, offset: 20096)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1282, file: !640, line: 1326, baseType: !87, size: 32, offset: 20128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1282, file: !640, line: 1327, baseType: !87, size: 32, offset: 20160)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1282, file: !640, line: 1328, baseType: !87, size: 32, offset: 20192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1282, file: !640, line: 1329, baseType: !361, size: 128, align: 64, offset: 20224)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1282, file: !640, line: 1332, baseType: !2301, size: 128, offset: 20352)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2302, line: 51, size: 128, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2303 = !{!2304, !2309, !2310}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2301, file: !2302, line: 60, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2306, line: 7, size: 64, elements: !2307)
!2306 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2307 = !{!2308}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2305, file: !2306, line: 12, baseType: !79, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2301, file: !2302, line: 63, baseType: !611, size: 8, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2301, file: !2302, line: 70, baseType: !611, size: 8, offset: 72)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1282, file: !640, line: 1335, baseType: !2312, size: 64, offset: 20480)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !640, line: 59, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1282, file: !640, line: 1337, baseType: !2315, size: 128, offset: 20544)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2302, line: 39, size: 128, elements: !2316)
!2316 = !{!2317, !2378, !2379}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2315, file: !2302, line: 40, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !333, line: 74, size: 512, align: 128, elements: !2320)
!2320 = !{!2321, !2322, !2372, !2377}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2319, file: !333, line: 75, baseType: !84, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !333, line: 83, baseType: !2323, size: 320, offset: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2319, file: !333, line: 83, size: 320, elements: !2324)
!2324 = !{!2325, !2346, !2360, !2364, !2371}
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !333, line: 84, baseType: !2326, size: 320)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2323, file: !333, line: 84, size: 320, elements: !2327)
!2327 = !{!2328, !2339, !2340, !2345}
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !333, line: 90, baseType: !2329, size: 128)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2326, file: !333, line: 90, size: 128, elements: !2330)
!2330 = !{!2331, !2332, !2337, !2338}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2329, file: !333, line: 91, baseType: !158, size: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2329, file: !333, line: 94, baseType: !2333, size: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2329, file: !333, line: 94, size: 128, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2333, file: !333, line: 96, baseType: !74, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2333, file: !333, line: 98, baseType: !7, size: 32, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2329, file: !333, line: 102, baseType: !158, size: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2329, file: !333, line: 103, baseType: !158, size: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2326, file: !333, line: 106, baseType: !331, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !333, line: 107, baseType: !2341, size: 64, offset: 192)
!2341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2326, file: !333, line: 107, size: 64, elements: !2342)
!2342 = !{!2343, !2344}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2341, file: !333, line: 108, baseType: !84, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2341, file: !333, line: 109, baseType: !84, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2326, file: !333, line: 117, baseType: !84, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !333, line: 119, baseType: !2347, size: 320)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2323, file: !333, line: 119, size: 320, elements: !2348)
!2348 = !{!2349, !2350, !2353, !2354, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2347, file: !333, line: 124, baseType: !84, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2347, file: !333, line: 125, baseType: !2351, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !333, line: 125, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2347, file: !333, line: 126, baseType: !84, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2347, file: !333, line: 127, baseType: !84, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !333, line: 128, baseType: !2356, size: 64, offset: 256)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2347, file: !333, line: 128, size: 64, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2356, file: !333, line: 133, baseType: !84, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2356, file: !333, line: 138, baseType: !424, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !333, line: 141, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2323, file: !333, line: 141, size: 64, elements: !2362)
!2362 = !{!2363}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2361, file: !333, line: 142, baseType: !84, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !333, line: 144, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2323, file: !333, line: 144, size: 128, elements: !2366)
!2366 = !{!2367, !2370}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2365, file: !333, line: 146, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !333, line: 146, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2365, file: !333, line: 147, baseType: !74, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2323, file: !333, line: 161, baseType: !361, size: 128, align: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !333, line: 164, baseType: !2373, size: 32, offset: 384)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2319, file: !333, line: 164, size: 32, elements: !2374)
!2374 = !{!2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2373, file: !333, line: 169, baseType: !212, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2373, file: !333, line: 177, baseType: !7, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2319, file: !333, line: 181, baseType: !212, size: 32, offset: 416)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2315, file: !2302, line: 42, baseType: !1018, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2315, file: !2302, line: 43, baseType: !1018, size: 32, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1282, file: !640, line: 1340, baseType: !2381, size: 64, offset: 20672)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !640, line: 69, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1282, file: !640, line: 1351, baseType: !87, size: 32, offset: 20736)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1282, file: !640, line: 1352, baseType: !87, size: 32, offset: 20768)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1282, file: !640, line: 1354, baseType: !84, size: 64, offset: 20800)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1282, file: !640, line: 1364, baseType: !418, size: 64, offset: 20864)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1282, file: !640, line: 1365, baseType: !418, size: 64, offset: 20928)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1282, file: !640, line: 1412, baseType: !84, size: 64, offset: 20992)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1282, file: !640, line: 1453, baseType: !2390, size: 64, offset: 21056)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !640, line: 1453, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1282, file: !640, line: 1457, baseType: !2393, size: 64, offset: 21120)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !47, line: 61, size: 576, elements: !2395)
!2395 = !{!2396, !2397, !2416, !2419, !2420, !2453, !2463}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2394, file: !47, line: 62, baseType: !46, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !2394, file: !47, line: 64, baseType: !2398, size: 192, offset: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2394, file: !47, line: 64, size: 192, elements: !2399)
!2399 = !{!2400, !2411}
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !47, line: 65, baseType: !2401, size: 192)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2398, file: !47, line: 65, size: 192, elements: !2402)
!2402 = !{!2403, !2410}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2401, file: !47, line: 66, baseType: !2404, size: 128)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2405, line: 50, size: 128, elements: !2406)
!2405 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2404, file: !2405, line: 52, baseType: !84, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2404, file: !2405, line: 54, baseType: !7, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2404, file: !2405, line: 55, baseType: !7, size: 32, offset: 96)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2401, file: !47, line: 67, baseType: !84, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !47, line: 70, baseType: !2412, size: 192)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2398, file: !47, line: 70, size: 192, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2412, file: !47, line: 71, baseType: !361, size: 128, align: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2412, file: !47, line: 72, baseType: !84, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2394, file: !47, line: 76, baseType: !2417, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !47, line: 76, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2394, file: !47, line: 77, baseType: !84, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2394, file: !47, line: 79, baseType: !2421, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2405, line: 25, size: 256, elements: !2423)
!2423 = !{!2424, !2430, !2434}
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !2422, file: !2405, line: 26, baseType: !2425, size: 128)
!2425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2422, file: !2405, line: 26, size: 128, elements: !2426)
!2426 = !{!2427, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2425, file: !2405, line: 27, baseType: !2428, size: 128)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !130)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2425, file: !2405, line: 28, baseType: !2428, size: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2422, file: !2405, line: 31, baseType: !2431, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2405, line: 23, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2422, file: !2405, line: 33, baseType: !2435, size: 64, offset: 192)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2422, file: !2405, line: 33, size: 64, elements: !2436)
!2436 = !{!2437, !2443, !2448}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2435, file: !2405, line: 38, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2405, line: 34, size: 64, elements: !2439)
!2439 = !{!2440, !2441, !2442}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2438, file: !2405, line: 35, baseType: !491, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2438, file: !2405, line: 36, baseType: !220, size: 8, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2438, file: !2405, line: 37, baseType: !220, size: 8, offset: 40)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2435, file: !2405, line: 42, baseType: !2444, size: 16)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2405, line: 39, size: 16, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2444, file: !2405, line: 40, baseType: !220, size: 8)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2444, file: !2405, line: 41, baseType: !220, size: 8, offset: 8)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2435, file: !2405, line: 46, baseType: !2449, size: 16)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2405, line: 43, size: 16, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2449, file: !2405, line: 44, baseType: !220, size: 8)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2449, file: !2405, line: 45, baseType: !220, size: 8, offset: 8)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2394, file: !47, line: 81, baseType: !2454, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !47, line: 85, size: 384, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2455, file: !47, line: 86, baseType: !2417, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2455, file: !47, line: 87, baseType: !84, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2455, file: !47, line: 88, baseType: !84, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2455, file: !47, line: 89, baseType: !84, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2455, file: !47, line: 90, baseType: !611, size: 8, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2455, file: !47, line: 92, baseType: !2454, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2394, file: !47, line: 82, baseType: !7, size: 32, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1282, file: !640, line: 1463, baseType: !2465, offset: 21184)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !640, line: 739, elements: !391)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1282, file: !640, line: 1470, baseType: !361, size: 128, align: 64, offset: 21184)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1282, file: !640, line: 1471, baseType: !819, size: 32, offset: 21312)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1282, file: !640, line: 1472, baseType: !87, size: 32, offset: 21344)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1282, file: !640, line: 1474, baseType: !1281, size: 64, offset: 21376)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1282, file: !640, line: 1475, baseType: !1083, size: 320, offset: 21440)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1282, file: !640, line: 1478, baseType: !2472, size: 64, offset: 21760)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2474, line: 49, size: 512, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2482, !2483, !2484, !2486}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2473, file: !2474, line: 50, baseType: !2472, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2473, file: !2474, line: 51, baseType: !74, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2473, file: !2474, line: 52, baseType: !84, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !2474, line: 53, baseType: !84, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2473, file: !2474, line: 54, baseType: !2481, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2473, file: !2474, line: 56, baseType: !7, size: 32, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2473, file: !2474, line: 58, baseType: !7, size: 32, offset: 352)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2473, file: !2474, line: 59, baseType: !2485, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !76, line: 159, baseType: !418)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2473, file: !2474, line: 60, baseType: !533, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1282, file: !640, line: 1482, baseType: !819, size: 32, offset: 21824)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1282, file: !640, line: 1489, baseType: !74, size: 64, offset: 21888)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1282, file: !640, line: 1504, baseType: !74, size: 64, offset: 21952)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1282, file: !640, line: 1505, baseType: !419, size: 64, offset: 22016)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1282, file: !640, line: 1506, baseType: !418, size: 64, offset: 22080)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1282, file: !640, line: 1507, baseType: !419, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1282, file: !640, line: 1508, baseType: !419, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1282, file: !640, line: 1509, baseType: !419, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1282, file: !640, line: 1510, baseType: !361, size: 128, align: 64, offset: 22208)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1282, file: !640, line: 1511, baseType: !87, size: 32, offset: 22336)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1282, file: !640, line: 1515, baseType: !2498, size: 64, offset: 22400)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1304, line: 56, size: 64, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2498, file: !1304, line: 57, baseType: !1307, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1282, file: !640, line: 1518, baseType: !2498, size: 64, offset: 22464)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1282, file: !640, line: 1528, baseType: !361, size: 128, align: 64, offset: 22528)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1282, file: !640, line: 1552, baseType: !2504, size: 35328, offset: 23040)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2505, line: 430, size: 35328, elements: !2506)
!2505 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2506 = !{!2507, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2536, !2537, !2538, !2539, !2540, !2541, !2544, !2545, !2546, !2547}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2504, file: !2505, line: 432, baseType: !2508, size: 192)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 192, elements: !262)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2510, line: 16, size: 64, elements: !2511)
!2510 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2509, file: !2510, line: 17, baseType: !230, size: 16)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2509, file: !2510, line: 18, baseType: !230, size: 16, offset: 16)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2509, file: !2510, line: 19, baseType: !230, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2509, file: !2510, line: 19, baseType: !230, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2509, file: !2510, line: 19, baseType: !230, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2509, file: !2510, line: 19, baseType: !230, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2509, file: !2510, line: 19, baseType: !230, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2509, file: !2510, line: 20, baseType: !230, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2509, file: !2510, line: 20, baseType: !230, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2509, file: !2510, line: 20, baseType: !230, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2509, file: !2510, line: 20, baseType: !230, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2509, file: !2510, line: 20, baseType: !230, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2509, file: !2510, line: 20, baseType: !230, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2504, file: !2505, line: 436, baseType: !84, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2504, file: !2505, line: 440, baseType: !232, size: 16, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2504, file: !2505, line: 441, baseType: !232, size: 16, offset: 272)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2504, file: !2505, line: 442, baseType: !232, size: 16, offset: 288)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2504, file: !2505, line: 443, baseType: !232, size: 16, offset: 304)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2504, file: !2505, line: 447, baseType: !84, size: 64, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2504, file: !2505, line: 448, baseType: !84, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2504, file: !2505, line: 459, baseType: !2533, size: 256, offset: 448)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 256, elements: !493)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2505, line: 428, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2504, file: !2505, line: 461, baseType: !84, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2504, file: !2505, line: 463, baseType: !84, size: 64, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2504, file: !2505, line: 465, baseType: !84, size: 64, offset: 832)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2504, file: !2505, line: 466, baseType: !84, size: 64, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2504, file: !2505, line: 467, baseType: !84, size: 64, offset: 960)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2504, file: !2505, line: 473, baseType: !2542, size: 64, offset: 1024)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2505, line: 10, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2504, file: !2505, line: 480, baseType: !84, size: 64, offset: 1088)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2504, file: !2505, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2504, file: !2505, line: 491, baseType: !1100, size: 32, offset: 1184)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2504, file: !2505, line: 501, baseType: !2548, size: 33792, offset: 1536)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2549, line: 448, size: 33792, elements: !2550)
!2549 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2550 = !{!2551, !2552, !2553, !2717, !2718, !2724, !2725}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2548, file: !2549, line: 461, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2548, file: !2549, line: 468, baseType: !84, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2548, file: !2549, line: 476, baseType: !2554, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2549, line: 356, size: 33280, align: 512, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2555, file: !2549, line: 358, baseType: !7, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2555, file: !2549, line: 361, baseType: !7, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2555, file: !2549, line: 364, baseType: !418, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2555, file: !2549, line: 367, baseType: !418, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2555, file: !2549, line: 370, baseType: !418, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2555, file: !2549, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2555, file: !2549, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2555, file: !2549, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2555, file: !2549, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2555, file: !2549, line: 397, baseType: !2567, size: 32768, offset: 512)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2549, line: 348, size: 32768, elements: !2568)
!2568 = !{!2569, !2584, !2623, !2700, !2713}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2567, file: !2549, line: 349, baseType: !2570, size: 896)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2549, line: 12, size: 896, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2583}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2570, file: !2549, line: 13, baseType: !1100, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2570, file: !2549, line: 14, baseType: !1100, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2570, file: !2549, line: 15, baseType: !1100, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2570, file: !2549, line: 16, baseType: !1100, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2570, file: !2549, line: 17, baseType: !1100, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2570, file: !2549, line: 18, baseType: !1100, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2570, file: !2549, line: 19, baseType: !1100, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2570, file: !2549, line: 22, baseType: !2580, size: 640, offset: 224)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 640, elements: !2581)
!2581 = !{!2582}
!2582 = !DISubrange(count: 20)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2570, file: !2549, line: 25, baseType: !1100, size: 32, offset: 864)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2567, file: !2549, line: 350, baseType: !2585, size: 4096, align: 128)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2549, line: 34, size: 4096, align: 128, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2606, !2607, !2608, !2612, !2614, !2618}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2585, file: !2549, line: 35, baseType: !230, size: 16)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2585, file: !2549, line: 36, baseType: !230, size: 16, offset: 16)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2585, file: !2549, line: 37, baseType: !230, size: 16, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2585, file: !2549, line: 38, baseType: !230, size: 16, offset: 48)
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2549, line: 39, baseType: !2592, size: 128, offset: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2549, line: 39, size: 128, elements: !2593)
!2593 = !{!2594, !2599}
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2549, line: 40, baseType: !2595, size: 128)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !2549, line: 40, size: 128, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2595, file: !2549, line: 41, baseType: !418, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2595, file: !2549, line: 42, baseType: !418, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2549, line: 44, baseType: !2600, size: 128)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !2549, line: 44, size: 128, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2600, file: !2549, line: 45, baseType: !1100, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2600, file: !2549, line: 46, baseType: !1100, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2600, file: !2549, line: 47, baseType: !1100, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2600, file: !2549, line: 48, baseType: !1100, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2585, file: !2549, line: 51, baseType: !1100, size: 32, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2585, file: !2549, line: 52, baseType: !1100, size: 32, offset: 224)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2585, file: !2549, line: 55, baseType: !2609, size: 1024, offset: 256)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 1024, elements: !2610)
!2610 = !{!2611}
!2611 = !DISubrange(count: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2585, file: !2549, line: 58, baseType: !2613, size: 2048, offset: 1280)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 2048, elements: !266)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2585, file: !2549, line: 60, baseType: !2615, size: 384, offset: 3328)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 384, elements: !2616)
!2616 = !{!2617}
!2617 = !DISubrange(count: 12)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2549, line: 62, baseType: !2619, size: 384, offset: 3712)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2549, line: 62, size: 384, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2619, file: !2549, line: 63, baseType: !2615, size: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2619, file: !2549, line: 64, baseType: !2615, size: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2567, file: !2549, line: 351, baseType: !2624, size: 1088)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2549, line: 79, size: 1088, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2699}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2624, file: !2549, line: 80, baseType: !1100, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2624, file: !2549, line: 81, baseType: !1100, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2624, file: !2549, line: 82, baseType: !1100, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2624, file: !2549, line: 83, baseType: !1100, size: 32, offset: 96)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2624, file: !2549, line: 84, baseType: !1100, size: 32, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2624, file: !2549, line: 85, baseType: !1100, size: 32, offset: 160)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2624, file: !2549, line: 86, baseType: !1100, size: 32, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2624, file: !2549, line: 88, baseType: !2580, size: 640, offset: 224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2624, file: !2549, line: 89, baseType: !220, size: 8, offset: 864)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2624, file: !2549, line: 90, baseType: !220, size: 8, offset: 872)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2624, file: !2549, line: 91, baseType: !220, size: 8, offset: 880)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2624, file: !2549, line: 92, baseType: !220, size: 8, offset: 888)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2624, file: !2549, line: 93, baseType: !220, size: 8, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2624, file: !2549, line: 94, baseType: !220, size: 8, offset: 904)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2624, file: !2549, line: 95, baseType: !2641, size: 64, offset: 960)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2643, line: 11, size: 128, elements: !2644)
!2643 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2642, file: !2643, line: 12, baseType: !151, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2642, file: !2643, line: 13, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2649, line: 103, size: 1344, elements: !2650)
!2649 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2679, !2680, !2681}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2648, file: !2649, line: 109, baseType: !84, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2648, file: !2649, line: 110, baseType: !84, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2648, file: !2649, line: 111, baseType: !84, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2648, file: !2649, line: 112, baseType: !84, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2648, file: !2649, line: 113, baseType: !84, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2648, file: !2649, line: 114, baseType: !84, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2648, file: !2649, line: 117, baseType: !84, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2648, file: !2649, line: 118, baseType: !84, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2648, file: !2649, line: 119, baseType: !84, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2648, file: !2649, line: 120, baseType: !84, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2648, file: !2649, line: 121, baseType: !84, size: 64, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2648, file: !2649, line: 122, baseType: !84, size: 64, offset: 704)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2648, file: !2649, line: 123, baseType: !84, size: 64, offset: 768)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2648, file: !2649, line: 124, baseType: !84, size: 64, offset: 832)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2648, file: !2649, line: 125, baseType: !84, size: 64, offset: 896)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2648, file: !2649, line: 139, baseType: !84, size: 64, offset: 960)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2648, file: !2649, line: 142, baseType: !84, size: 64, offset: 1024)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2649, line: 144, baseType: !2669, size: 64, offset: 1088)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2649, line: 144, size: 64, elements: !2670)
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2669, file: !2649, line: 146, baseType: !230, size: 16)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2669, file: !2649, line: 148, baseType: !418, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2669, file: !2649, line: 150, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2649, line: 59, size: 64, elements: !2675)
!2675 = !{!2676, !2677, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2674, file: !2649, line: 61, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2674, file: !2649, line: 63, baseType: !418, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2674, file: !2649, line: 65, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2648, file: !2649, line: 153, baseType: !84, size: 64, offset: 1152)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2648, file: !2649, line: 154, baseType: !84, size: 64, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2649, line: 156, baseType: !2682, size: 64, offset: 1280)
!2682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2649, line: 156, size: 64, elements: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2682, file: !2649, line: 158, baseType: !230, size: 16)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2682, file: !2649, line: 160, baseType: !418, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2682, file: !2649, line: 162, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2649, line: 69, size: 64, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2687, file: !2649, line: 71, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2687, file: !2649, line: 73, baseType: !418, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2687, file: !2649, line: 75, baseType: !418, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2687, file: !2649, line: 77, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2687, file: !2649, line: 80, baseType: !418, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2687, file: !2649, line: 83, baseType: !418, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2687, file: !2649, line: 86, baseType: !418, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2687, file: !2649, line: 88, baseType: !418, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2687, file: !2649, line: 93, baseType: !418, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2687, file: !2649, line: 100, baseType: !418, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2624, file: !2549, line: 96, baseType: !1100, size: 32, offset: 1024)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2567, file: !2549, line: 352, baseType: !2701, size: 4608, align: 512)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2549, line: 333, size: 4608, align: 512, elements: !2702)
!2702 = !{!2703, !2704, !2711}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2701, file: !2549, line: 334, baseType: !2585, size: 4096, align: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2701, file: !2549, line: 335, baseType: !2705, size: 512, offset: 4096)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2549, line: 312, size: 512, elements: !2706)
!2706 = !{!2707, !2708, !2709}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2705, file: !2549, line: 313, baseType: !418, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2705, file: !2549, line: 314, baseType: !418, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2705, file: !2549, line: 315, baseType: !2710, size: 384, offset: 128)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !1792)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2701, file: !2549, line: 336, baseType: !2712, offset: 4608)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !589)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2567, file: !2549, line: 353, baseType: !2714, size: 32768)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 32768, elements: !2715)
!2715 = !{!2716}
!2716 = !DISubrange(count: 4096)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2548, file: !2549, line: 484, baseType: !2554, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2548, file: !2549, line: 491, baseType: !2719, size: 128, offset: 256)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2549, line: 404, size: 128, elements: !2720)
!2720 = !{!2721, !2722, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2719, file: !2549, line: 424, baseType: !418, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2719, file: !2549, line: 432, baseType: !7, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2719, file: !2549, line: 440, baseType: !7, size: 32, offset: 96)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2548, file: !2549, line: 498, baseType: !2719, size: 128, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2548, file: !2549, line: 508, baseType: !2555, size: 33280, align: 512, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !98, file: !30, line: 158, baseType: !2727, size: 64, offset: 4544)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !30, line: 158, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !98, file: !30, line: 161, baseType: !74, size: 64, offset: 4608)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !98, file: !30, line: 164, baseType: !2731, size: 64, offset: 4672)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !30, line: 164, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !98, file: !30, line: 166, baseType: !1224, size: 192, offset: 4736)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !98, file: !30, line: 167, baseType: !1224, size: 192, offset: 4928)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "update_mutex", scope: !94, file: !59, line: 84, baseType: !512, size: 256, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "last_sample_time", scope: !94, file: !59, line: 86, baseType: !418, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sample_delay_ns", scope: !94, file: !59, line: 87, baseType: !430, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "work_count", scope: !94, file: !59, line: 88, baseType: !212, size: 32, offset: 448)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "irq_work", scope: !94, file: !59, line: 89, baseType: !2740, size: 256, offset: 512)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !2741, line: 17, size: 256, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!2742 = !{!2743, !2744, !2749}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2740, file: !2741, line: 18, baseType: !1299, size: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2740, file: !2741, line: 19, baseType: !2745, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !2748}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !2740, file: !2741, line: 20, baseType: !2750, size: 64, offset: 192)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2751, line: 16, size: 64, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2750, file: !2751, line: 17, baseType: !1281, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !94, file: !59, line: 90, baseType: !576, size: 256, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dbs_data", scope: !94, file: !59, line: 92, baseType: !2756, size: 64, offset: 1024)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dbs_data", file: !59, line: 38, size: 1280, elements: !2758)
!2758 = !{!2759, !2766, !2795, !2796, !2797, !2798, !2799, !2800}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "attr_set", scope: !2757, file: !59, line: 39, baseType: !2760, size: 960)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gov_attr_set", file: !30, line: 652, size: 960, elements: !2761)
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2760, file: !30, line: 653, baseType: !177, size: 512)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !2760, file: !30, line: 654, baseType: !158, size: 128, offset: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !2760, file: !30, line: 655, baseType: !512, size: 256, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2760, file: !30, line: 656, baseType: !87, size: 32, offset: 896)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !2757, file: !59, line: 40, baseType: !2767, size: 64, offset: 960)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dbs_governor", file: !59, line: 125, size: 1664, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2773, !2777, !2782, !2786, !2790, !2794}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !2768, file: !59, line: 126, baseType: !125, size: 832)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_type", scope: !2768, file: !59, line: 127, baseType: !277, size: 384, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gdbs_data", scope: !2768, file: !59, line: 133, baseType: !2756, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "gov_dbs_update", scope: !2768, file: !59, line: 135, baseType: !2774, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!7, !97}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2768, file: !59, line: 136, baseType: !2778, size: 64, offset: 1344)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2768, file: !59, line: 137, baseType: !2783, size: 64, offset: 1408)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2781}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2768, file: !59, line: 138, baseType: !2787, size: 64, offset: 1472)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!87, !2756}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2768, file: !59, line: 139, baseType: !2791, size: 64, offset: 1536)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2756}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2768, file: !59, line: 140, baseType: !137, size: 64, offset: 1600)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "tuners", scope: !2757, file: !59, line: 41, baseType: !74, size: 64, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_nice_load", scope: !2757, file: !59, line: 42, baseType: !7, size: 32, offset: 1088)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_rate", scope: !2757, file: !59, line: 43, baseType: !7, size: 32, offset: 1120)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_down_factor", scope: !2757, file: !59, line: 44, baseType: !7, size: 32, offset: 1152)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "up_threshold", scope: !2757, file: !59, line: 45, baseType: !7, size: 32, offset: 1184)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "io_is_busy", scope: !2757, file: !59, line: 46, baseType: !7, size: 32, offset: 1216)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !94, file: !59, line: 93, baseType: !158, size: 128, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rate_mult", scope: !94, file: !59, line: 95, baseType: !7, size: 32, offset: 1216)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "idle_periods", scope: !94, file: !59, line: 96, baseType: !7, size: 32, offset: 1248)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "is_shared", scope: !94, file: !59, line: 98, baseType: !611, size: 8, offset: 1280)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "work_in_progress", scope: !94, file: !59, line: 99, baseType: !611, size: 8, offset: 1288)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "freq_lo", scope: !90, file: !91, line: 13, baseType: !7, size: 32, offset: 1344)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "freq_lo_delay_us", scope: !90, file: !91, line: 14, baseType: !7, size: 32, offset: 1376)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "freq_hi_delay_us", scope: !90, file: !91, line: 15, baseType: !7, size: 32, offset: 1408)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !90, file: !91, line: 16, baseType: !7, size: 1, offset: 1440, flags: DIFlagBitField, extraData: i64 1440)
!2810 = !{!2811, !2813, !2815, !2820, !2825, !2830, !2835, !2840, !2842, !0, !2846, !2848, !2853, !2855, !2858, !2860, !2863, !2868, !2882, !2885, !2890, !2892, !2895, !2900, !2902, !2907, !2909, !2914, !2916, !2921, !2923, !2925, !2930}
!2811 = !DIGlobalVariableExpression(var: !2812, expr: !DIExpression())
!2812 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_od_register_powersave_bias_handler267", scope: !2, file: !3, line: 463, type: !74, isLocal: true, isDefinition: true)
!2813 = !DIGlobalVariableExpression(var: !2814, expr: !DIExpression())
!2814 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_od_unregister_powersave_bias_handler268", scope: !2, file: !3, line: 470, type: !74, isLocal: true, isDefinition: true)
!2815 = !DIGlobalVariableExpression(var: !2816, expr: !DIExpression())
!2816 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author269", scope: !2, file: !3, line: 472, type: !2817, isLocal: true, isDefinition: true, align: 8)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 608, elements: !2818)
!2818 = !{!2819}
!2819 = !DISubrange(count: 76)
!2820 = !DIGlobalVariableExpression(var: !2821, expr: !DIExpression())
!2821 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author270", scope: !2, file: !3, line: 473, type: !2822, isLocal: true, isDefinition: true, align: 8)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 624, elements: !2823)
!2823 = !{!2824}
!2824 = !DISubrange(count: 78)
!2825 = !DIGlobalVariableExpression(var: !2826, expr: !DIExpression())
!2826 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description271", scope: !2, file: !3, line: 474, type: !2827, isLocal: true, isDefinition: true, align: 8)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1064, elements: !2828)
!2828 = !{!2829}
!2829 = !DISubrange(count: 133)
!2830 = !DIGlobalVariableExpression(var: !2831, expr: !DIExpression())
!2831 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file272", scope: !2, file: !3, line: 476, type: !2832, isLocal: true, isDefinition: true, align: 8)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 440, elements: !2833)
!2833 = !{!2834}
!2834 = !DISubrange(count: 55)
!2835 = !DIGlobalVariableExpression(var: !2836, expr: !DIExpression())
!2836 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license273", scope: !2, file: !3, line: 476, type: !2837, isLocal: true, isDefinition: true, align: 8)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 232, elements: !2838)
!2838 = !{!2839}
!2839 = !DISubrange(count: 29)
!2840 = !DIGlobalVariableExpression(var: !2841, expr: !DIExpression())
!2841 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1275", scope: !2, file: !3, line: 485, type: !74, isLocal: true, isDefinition: true)
!2842 = !DIGlobalVariableExpression(var: !2843, expr: !DIExpression())
!2843 = distinct !DIGlobalVariable(name: "__exitcall_CPU_FREQ_GOV_ONDEMAND_exit", scope: !2, file: !3, line: 486, type: !2844, isLocal: true, isDefinition: true)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2845, line: 120, baseType: !1193)
!2845 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2846 = !DIGlobalVariableExpression(var: !2847, expr: !DIExpression())
!2847 = distinct !DIGlobalVariable(name: "default_powersave_bias", scope: !2, file: !3, line: 31, type: !7, isLocal: true, isDefinition: true)
!2848 = !DIGlobalVariableExpression(var: !2849, expr: !DIExpression())
!2849 = distinct !DIGlobalVariable(scope: null, file: !30, line: 1065, type: !2850, isLocal: true, isDefinition: true)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 192, elements: !2851)
!2851 = !{!2852}
!2852 = !DISubrange(count: 24)
!2853 = !DIGlobalVariableExpression(var: !2854, expr: !DIExpression())
!2854 = distinct !DIGlobalVariable(name: "od_dbs_gov", scope: !2, file: !3, line: 403, type: !2768, isLocal: true, isDefinition: true)
!2855 = !DIGlobalVariableExpression(var: !2856, expr: !DIExpression())
!2856 = distinct !DIGlobalVariable(name: "od_groups", scope: !2, file: !3, line: 340, type: !2857, isLocal: true, isDefinition: true)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 128, elements: !972)
!2858 = !DIGlobalVariableExpression(var: !2859, expr: !DIExpression())
!2859 = distinct !DIGlobalVariable(name: "od_group", scope: !2, file: !3, line: 340, type: !309, isLocal: true, isDefinition: true)
!2860 = !DIGlobalVariableExpression(var: !2861, expr: !DIExpression())
!2861 = distinct !DIGlobalVariable(name: "od_attrs", scope: !2, file: !3, line: 331, type: !2862, isLocal: true, isDefinition: true)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 448, elements: !974)
!2863 = !DIGlobalVariableExpression(var: !2864, expr: !DIExpression())
!2864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !2865, isLocal: true, isDefinition: true)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 112, elements: !2866)
!2866 = !{!2867}
!2867 = !DISubrange(count: 14)
!2868 = !DIGlobalVariableExpression(var: !2869, expr: !DIExpression())
!2869 = distinct !DIGlobalVariable(name: "sampling_rate", scope: !2, file: !3, line: 324, type: !2870, isLocal: true, isDefinition: true)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "governor_attr", file: !30, line: 672, size: 256, elements: !2871)
!2871 = !{!2872, !2873, !2878}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2870, file: !30, line: 673, baseType: !294, size: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2870, file: !30, line: 674, baseType: !2874, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!147, !2877, !152}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2870, file: !30, line: 675, baseType: !2879, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!147, !2877, !181, !303}
!2882 = !DIGlobalVariableExpression(var: !2883, expr: !DIExpression())
!2883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !2884, isLocal: true, isDefinition: true)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32, elements: !493)
!2885 = !DIGlobalVariableExpression(var: !2886, expr: !DIExpression())
!2886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !2887, isLocal: true, isDefinition: true)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 104, elements: !2888)
!2888 = !{!2889}
!2889 = !DISubrange(count: 13)
!2890 = !DIGlobalVariableExpression(var: !2891, expr: !DIExpression())
!2891 = distinct !DIGlobalVariable(name: "up_threshold", scope: !2, file: !3, line: 326, type: !2870, isLocal: true, isDefinition: true)
!2892 = !DIGlobalVariableExpression(var: !2893, expr: !DIExpression())
!2893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !2894, isLocal: true, isDefinition: true)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 24, elements: !262)
!2895 = !DIGlobalVariableExpression(var: !2896, expr: !DIExpression())
!2896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !2897, isLocal: true, isDefinition: true)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 168, elements: !2898)
!2898 = !{!2899}
!2899 = !DISubrange(count: 21)
!2900 = !DIGlobalVariableExpression(var: !2901, expr: !DIExpression())
!2901 = distinct !DIGlobalVariable(name: "sampling_down_factor", scope: !2, file: !3, line: 327, type: !2870, isLocal: true, isDefinition: true)
!2902 = !DIGlobalVariableExpression(var: !2903, expr: !DIExpression())
!2903 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !2904, isLocal: true, isDefinition: true)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 136, elements: !2905)
!2905 = !{!2906}
!2906 = !DISubrange(count: 17)
!2907 = !DIGlobalVariableExpression(var: !2908, expr: !DIExpression())
!2908 = distinct !DIGlobalVariable(name: "ignore_nice_load", scope: !2, file: !3, line: 328, type: !2870, isLocal: true, isDefinition: true)
!2909 = !DIGlobalVariableExpression(var: !2910, expr: !DIExpression())
!2910 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !2911, isLocal: true, isDefinition: true)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 120, elements: !2912)
!2912 = !{!2913}
!2913 = !DISubrange(count: 15)
!2914 = !DIGlobalVariableExpression(var: !2915, expr: !DIExpression())
!2915 = distinct !DIGlobalVariable(name: "powersave_bias", scope: !2, file: !3, line: 329, type: !2870, isLocal: true, isDefinition: true)
!2916 = !DIGlobalVariableExpression(var: !2917, expr: !DIExpression())
!2917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !2918, isLocal: true, isDefinition: true)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 88, elements: !2919)
!2919 = !{!2920}
!2920 = !DISubrange(count: 11)
!2921 = !DIGlobalVariableExpression(var: !2922, expr: !DIExpression())
!2922 = distinct !DIGlobalVariable(name: "io_is_busy", scope: !2, file: !3, line: 325, type: !2870, isLocal: true, isDefinition: true)
!2923 = !DIGlobalVariableExpression(var: !2924, expr: !DIExpression())
!2924 = distinct !DIGlobalVariable(scope: null, file: !64, line: 480, type: !2897, isLocal: true, isDefinition: true)
!2925 = !DIGlobalVariableExpression(var: !2926, expr: !DIExpression())
!2926 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !2927, isLocal: true, isDefinition: true)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 40, elements: !2928)
!2928 = !{!2929}
!2929 = !DISubrange(count: 5)
!2930 = !DIGlobalVariableExpression(var: !2931, expr: !DIExpression())
!2931 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule266", scope: !2932, file: !3, line: 369, type: !74, isLocal: true, isDefinition: true)
!2932 = distinct !DISubprogram(name: "od_init", scope: !3, file: !3, line: 357, type: !2788, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2933 = !{!2934, !2935, !2940, !2941, !2942, !2946, !2948}
!2934 = !DILocalVariable(name: "dbs_data", arg: 1, scope: !2932, file: !3, line: 357, type: !2756)
!2935 = !DILocalVariable(name: "tuners", scope: !2932, file: !3, line: 359, type: !2936)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "od_dbs_tuners", file: !91, line: 24, size: 32, elements: !2938)
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "powersave_bias", scope: !2937, file: !91, line: 25, baseType: !7, size: 32)
!2940 = !DILocalVariable(name: "idle_time", scope: !2932, file: !3, line: 360, type: !418)
!2941 = !DILocalVariable(name: "cpu", scope: !2932, file: !3, line: 361, type: !87)
!2942 = !DILocalVariable(name: "pscr_ret__", scope: !2943, file: !3, line: 367, type: !87)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 367, column: 8)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 367, column: 8)
!2945 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 367, column: 8)
!2946 = !DILocalVariable(name: "__vpp_verify", scope: !2947, file: !3, line: 367, type: !533)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 367, column: 8)
!2948 = !DILocalVariable(name: "pfo_val__", scope: !2949, file: !3, line: 367, type: !1100)
!2949 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 367, column: 8)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "od_ops", file: !59, line: 168, size: 64, elements: !2951)
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "powersave_bias_target", scope: !2950, file: !59, line: 169, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!7, !97, !7, !7}
!2956 = !{!"rsp"}
!2957 = !{i32 7, !"Dwarf Version", i32 5}
!2958 = !{i32 2, !"Debug Info Version", i32 3}
!2959 = !{i32 1, !"wchar_size", i32 2}
!2960 = !{i32 8, !"cf-protection-branch", i32 1}
!2961 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2962 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2963 = !{i32 1, !"Code Model", i32 2}
!2964 = !{i32 1, !"override-stack-alignment", i32 8}
!2965 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2966 = distinct !DISubprogram(name: "od_register_powersave_bias_handler", scope: !3, file: !3, line: 456, type: !2967, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2953, !7}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "f", arg: 1, scope: !2966, file: !3, line: 456, type: !2953)
!2971 = !DILocalVariable(name: "powersave_bias", arg: 2, scope: !2966, file: !3, line: 458, type: !7)
!2972 = !DILocation(line: 456, column: 56, scope: !2966)
!2973 = !DILocation(line: 458, column: 16, scope: !2966)
!2974 = !DILocation(line: 460, column: 33, scope: !2966)
!2975 = !DILocation(line: 460, column: 31, scope: !2966)
!2976 = !DILocation(line: 461, column: 24, scope: !2966)
!2977 = !DILocation(line: 461, column: 2, scope: !2966)
!2978 = !DILocation(line: 462, column: 1, scope: !2966)
!2979 = distinct !DISubprogram(name: "od_set_powersave_bias", scope: !3, file: !3, line: 416, type: !2980, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !7}
!2982 = !{!2983, !2984, !2985, !2986, !2990, !2991, !2992}
!2983 = !DILocalVariable(name: "powersave_bias", arg: 1, scope: !2979, file: !3, line: 416, type: !7)
!2984 = !DILocalVariable(name: "cpu", scope: !2979, file: !3, line: 418, type: !7)
!2985 = !DILocalVariable(name: "done", scope: !2979, file: !3, line: 419, type: !101)
!2986 = !DILocalVariable(name: "policy", scope: !2987, file: !3, line: 429, type: !97)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 428, column: 27)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 428, column: 2)
!2989 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 428, column: 2)
!2990 = !DILocalVariable(name: "policy_dbs", scope: !2987, file: !3, line: 430, type: !2781)
!2991 = !DILocalVariable(name: "dbs_data", scope: !2987, file: !3, line: 431, type: !2756)
!2992 = !DILocalVariable(name: "od_tuners", scope: !2987, file: !3, line: 432, type: !2936)
!2993 = !DILocation(line: 416, column: 48, scope: !2979)
!2994 = !DILocation(line: 418, column: 2, scope: !2979)
!2995 = !DILocation(line: 418, column: 15, scope: !2979)
!2996 = !DILocation(line: 419, column: 2, scope: !2979)
!2997 = !DILocation(line: 419, column: 16, scope: !2979)
!2998 = !DILocation(line: 421, column: 7, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 421, column: 6)
!3000 = !DILocation(line: 421, column: 6, scope: !2979)
!3001 = !DILocation(line: 422, column: 3, scope: !2999)
!3002 = !DILocation(line: 424, column: 27, scope: !2979)
!3003 = !DILocation(line: 424, column: 25, scope: !2979)
!3004 = !DILocation(line: 425, column: 16, scope: !2979)
!3005 = !DILocation(line: 425, column: 2, scope: !2979)
!3006 = !DILocation(line: 427, column: 2, scope: !2979)
!3007 = !DILocation(line: 428, column: 2, scope: !2989)
!3008 = !DILocation(line: 428, column: 2, scope: !2988)
!3009 = !DILocation(line: 429, column: 3, scope: !2987)
!3010 = !DILocation(line: 429, column: 26, scope: !2987)
!3011 = !DILocation(line: 430, column: 3, scope: !2987)
!3012 = !DILocation(line: 430, column: 27, scope: !2987)
!3013 = !DILocation(line: 431, column: 3, scope: !2987)
!3014 = !DILocation(line: 431, column: 20, scope: !2987)
!3015 = !DILocation(line: 432, column: 3, scope: !2987)
!3016 = !DILocation(line: 432, column: 25, scope: !2987)
!3017 = !DILocation(line: 434, column: 24, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 434, column: 7)
!3019 = !DILocation(line: 434, column: 29, scope: !3018)
!3020 = !DILocation(line: 434, column: 7, scope: !3018)
!3021 = !DILocation(line: 434, column: 7, scope: !2987)
!3022 = !DILocation(line: 435, column: 4, scope: !3018)
!3023 = !DILocation(line: 437, column: 32, scope: !2987)
!3024 = !DILocation(line: 437, column: 12, scope: !2987)
!3025 = !DILocation(line: 437, column: 10, scope: !2987)
!3026 = !DILocation(line: 438, column: 8, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 438, column: 7)
!3028 = !DILocation(line: 438, column: 15, scope: !3027)
!3029 = !DILocation(line: 438, column: 18, scope: !3027)
!3030 = !DILocation(line: 438, column: 26, scope: !3027)
!3031 = !DILocation(line: 438, column: 35, scope: !3027)
!3032 = !DILocation(line: 438, column: 7, scope: !2987)
!3033 = !DILocation(line: 439, column: 4, scope: !3027)
!3034 = !DILocation(line: 441, column: 16, scope: !2987)
!3035 = !DILocation(line: 441, column: 24, scope: !2987)
!3036 = !DILocation(line: 441, column: 14, scope: !2987)
!3037 = !DILocation(line: 442, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 442, column: 7)
!3039 = !DILocation(line: 442, column: 7, scope: !2987)
!3040 = !DILocation(line: 443, column: 4, scope: !3038)
!3041 = !DILocation(line: 445, column: 14, scope: !2987)
!3042 = !DILocation(line: 445, column: 20, scope: !2987)
!3043 = !DILocation(line: 445, column: 26, scope: !2987)
!3044 = !DILocation(line: 445, column: 34, scope: !2987)
!3045 = !DILocation(line: 445, column: 3, scope: !2987)
!3046 = !DILocation(line: 447, column: 14, scope: !2987)
!3047 = !DILocation(line: 447, column: 26, scope: !2987)
!3048 = !DILocation(line: 447, column: 12, scope: !2987)
!3049 = !DILocation(line: 448, column: 15, scope: !2987)
!3050 = !DILocation(line: 448, column: 25, scope: !2987)
!3051 = !DILocation(line: 448, column: 13, scope: !2987)
!3052 = !DILocation(line: 449, column: 31, scope: !2987)
!3053 = !DILocation(line: 449, column: 3, scope: !2987)
!3054 = !DILocation(line: 449, column: 14, scope: !2987)
!3055 = !DILocation(line: 449, column: 29, scope: !2987)
!3056 = !DILocation(line: 450, column: 2, scope: !2988)
!3057 = !DILocation(line: 450, column: 2, scope: !2987)
!3058 = distinct !{!3058, !3007, !3059, !3060, !3061}
!3059 = !DILocation(line: 450, column: 2, scope: !2989)
!3060 = !{!"llvm.loop.mustprogress"}
!3061 = !{!"llvm.loop.unroll.disable"}
!3062 = !DILocation(line: 451, column: 2, scope: !2979)
!3063 = !DILocation(line: 453, column: 19, scope: !2979)
!3064 = !DILocation(line: 453, column: 2, scope: !2979)
!3065 = !DILocation(line: 454, column: 1, scope: !2979)
!3066 = distinct !DISubprogram(name: "od_unregister_powersave_bias_handler", scope: !3, file: !3, line: 465, type: !1194, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3067 = !DILocation(line: 467, column: 31, scope: !3066)
!3068 = !DILocation(line: 468, column: 2, scope: !3066)
!3069 = !DILocation(line: 469, column: 1, scope: !3066)
!3070 = distinct !DISubprogram(name: "generic_powersave_bias_target", scope: !3, file: !3, line: 61, type: !2954, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086}
!3072 = !DILocalVariable(name: "policy", arg: 1, scope: !3070, file: !3, line: 61, type: !97)
!3073 = !DILocalVariable(name: "freq_next", arg: 2, scope: !3070, file: !3, line: 62, type: !7)
!3074 = !DILocalVariable(name: "relation", arg: 3, scope: !3070, file: !3, line: 62, type: !7)
!3075 = !DILocalVariable(name: "freq_req", scope: !3070, file: !3, line: 64, type: !7)
!3076 = !DILocalVariable(name: "freq_reduc", scope: !3070, file: !3, line: 64, type: !7)
!3077 = !DILocalVariable(name: "freq_avg", scope: !3070, file: !3, line: 64, type: !7)
!3078 = !DILocalVariable(name: "freq_hi", scope: !3070, file: !3, line: 65, type: !7)
!3079 = !DILocalVariable(name: "freq_lo", scope: !3070, file: !3, line: 65, type: !7)
!3080 = !DILocalVariable(name: "index", scope: !3070, file: !3, line: 66, type: !7)
!3081 = !DILocalVariable(name: "delay_hi_us", scope: !3070, file: !3, line: 67, type: !7)
!3082 = !DILocalVariable(name: "policy_dbs", scope: !3070, file: !3, line: 68, type: !2781)
!3083 = !DILocalVariable(name: "dbs_info", scope: !3070, file: !3, line: 69, type: !89)
!3084 = !DILocalVariable(name: "dbs_data", scope: !3070, file: !3, line: 70, type: !2756)
!3085 = !DILocalVariable(name: "od_tuners", scope: !3070, file: !3, line: 71, type: !2936)
!3086 = !DILocalVariable(name: "freq_table", scope: !3070, file: !3, line: 72, type: !1251)
!3087 = !DILocation(line: 61, column: 74, scope: !3070)
!3088 = !DILocation(line: 62, column: 16, scope: !3070)
!3089 = !DILocation(line: 62, column: 40, scope: !3070)
!3090 = !DILocation(line: 64, column: 2, scope: !3070)
!3091 = !DILocation(line: 64, column: 15, scope: !3070)
!3092 = !DILocation(line: 64, column: 25, scope: !3070)
!3093 = !DILocation(line: 64, column: 37, scope: !3070)
!3094 = !DILocation(line: 65, column: 2, scope: !3070)
!3095 = !DILocation(line: 65, column: 15, scope: !3070)
!3096 = !DILocation(line: 65, column: 24, scope: !3070)
!3097 = !DILocation(line: 66, column: 2, scope: !3070)
!3098 = !DILocation(line: 66, column: 15, scope: !3070)
!3099 = !DILocation(line: 67, column: 2, scope: !3070)
!3100 = !DILocation(line: 67, column: 15, scope: !3070)
!3101 = !DILocation(line: 68, column: 2, scope: !3070)
!3102 = !DILocation(line: 68, column: 26, scope: !3070)
!3103 = !DILocation(line: 68, column: 39, scope: !3070)
!3104 = !DILocation(line: 68, column: 47, scope: !3070)
!3105 = !DILocation(line: 69, column: 2, scope: !3070)
!3106 = !DILocation(line: 69, column: 29, scope: !3070)
!3107 = !DILocation(line: 69, column: 52, scope: !3070)
!3108 = !DILocation(line: 69, column: 40, scope: !3070)
!3109 = !DILocation(line: 70, column: 2, scope: !3070)
!3110 = !DILocation(line: 70, column: 19, scope: !3070)
!3111 = !DILocation(line: 70, column: 30, scope: !3070)
!3112 = !DILocation(line: 70, column: 42, scope: !3070)
!3113 = !DILocation(line: 71, column: 2, scope: !3070)
!3114 = !DILocation(line: 71, column: 24, scope: !3070)
!3115 = !DILocation(line: 71, column: 36, scope: !3070)
!3116 = !DILocation(line: 71, column: 46, scope: !3070)
!3117 = !DILocation(line: 72, column: 2, scope: !3070)
!3118 = !DILocation(line: 72, column: 34, scope: !3070)
!3119 = !DILocation(line: 72, column: 47, scope: !3070)
!3120 = !DILocation(line: 72, column: 55, scope: !3070)
!3121 = !DILocation(line: 74, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 74, column: 6)
!3123 = !DILocation(line: 74, column: 6, scope: !3070)
!3124 = !DILocation(line: 75, column: 3, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 74, column: 19)
!3126 = !DILocation(line: 75, column: 13, scope: !3125)
!3127 = !DILocation(line: 75, column: 21, scope: !3125)
!3128 = !DILocation(line: 76, column: 3, scope: !3125)
!3129 = !DILocation(line: 76, column: 13, scope: !3125)
!3130 = !DILocation(line: 76, column: 30, scope: !3125)
!3131 = !DILocation(line: 77, column: 10, scope: !3125)
!3132 = !DILocation(line: 77, column: 3, scope: !3125)
!3133 = !DILocation(line: 80, column: 41, scope: !3070)
!3134 = !DILocation(line: 80, column: 49, scope: !3070)
!3135 = !DILocation(line: 80, column: 60, scope: !3070)
!3136 = !DILocation(line: 80, column: 10, scope: !3070)
!3137 = !DILocation(line: 80, column: 8, scope: !3070)
!3138 = !DILocation(line: 81, column: 13, scope: !3070)
!3139 = !DILocation(line: 81, column: 24, scope: !3070)
!3140 = !DILocation(line: 81, column: 31, scope: !3070)
!3141 = !DILocation(line: 81, column: 11, scope: !3070)
!3142 = !DILocation(line: 82, column: 15, scope: !3070)
!3143 = !DILocation(line: 82, column: 26, scope: !3070)
!3144 = !DILocation(line: 82, column: 37, scope: !3070)
!3145 = !DILocation(line: 82, column: 24, scope: !3070)
!3146 = !DILocation(line: 82, column: 52, scope: !3070)
!3147 = !DILocation(line: 82, column: 13, scope: !3070)
!3148 = !DILocation(line: 83, column: 13, scope: !3070)
!3149 = !DILocation(line: 83, column: 24, scope: !3070)
!3150 = !DILocation(line: 83, column: 22, scope: !3070)
!3151 = !DILocation(line: 83, column: 11, scope: !3070)
!3152 = !DILocation(line: 86, column: 37, scope: !3070)
!3153 = !DILocation(line: 86, column: 45, scope: !3070)
!3154 = !DILocation(line: 87, column: 9, scope: !3070)
!3155 = !DILocation(line: 87, column: 18, scope: !3070)
!3156 = !DILocation(line: 86, column: 10, scope: !3070)
!3157 = !DILocation(line: 86, column: 8, scope: !3070)
!3158 = !DILocation(line: 88, column: 12, scope: !3070)
!3159 = !DILocation(line: 88, column: 23, scope: !3070)
!3160 = !DILocation(line: 88, column: 30, scope: !3070)
!3161 = !DILocation(line: 88, column: 10, scope: !3070)
!3162 = !DILocation(line: 89, column: 37, scope: !3070)
!3163 = !DILocation(line: 89, column: 45, scope: !3070)
!3164 = !DILocation(line: 90, column: 9, scope: !3070)
!3165 = !DILocation(line: 90, column: 18, scope: !3070)
!3166 = !DILocation(line: 89, column: 10, scope: !3070)
!3167 = !DILocation(line: 89, column: 8, scope: !3070)
!3168 = !DILocation(line: 91, column: 12, scope: !3070)
!3169 = !DILocation(line: 91, column: 23, scope: !3070)
!3170 = !DILocation(line: 91, column: 30, scope: !3070)
!3171 = !DILocation(line: 91, column: 10, scope: !3070)
!3172 = !DILocation(line: 94, column: 6, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 94, column: 6)
!3174 = !DILocation(line: 94, column: 17, scope: !3173)
!3175 = !DILocation(line: 94, column: 14, scope: !3173)
!3176 = !DILocation(line: 94, column: 6, scope: !3070)
!3177 = !DILocation(line: 95, column: 3, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 94, column: 26)
!3179 = !DILocation(line: 95, column: 13, scope: !3178)
!3180 = !DILocation(line: 95, column: 21, scope: !3178)
!3181 = !DILocation(line: 96, column: 3, scope: !3178)
!3182 = !DILocation(line: 96, column: 13, scope: !3178)
!3183 = !DILocation(line: 96, column: 30, scope: !3178)
!3184 = !DILocation(line: 97, column: 10, scope: !3178)
!3185 = !DILocation(line: 97, column: 3, scope: !3178)
!3186 = !DILocation(line: 99, column: 17, scope: !3070)
!3187 = !DILocation(line: 99, column: 28, scope: !3070)
!3188 = !DILocation(line: 99, column: 26, scope: !3070)
!3189 = !DILocation(line: 99, column: 39, scope: !3070)
!3190 = !DILocation(line: 99, column: 49, scope: !3070)
!3191 = !DILocation(line: 99, column: 37, scope: !3070)
!3192 = !DILocation(line: 99, column: 14, scope: !3070)
!3193 = !DILocation(line: 100, column: 18, scope: !3070)
!3194 = !DILocation(line: 100, column: 28, scope: !3070)
!3195 = !DILocation(line: 100, column: 26, scope: !3070)
!3196 = !DILocation(line: 100, column: 37, scope: !3070)
!3197 = !DILocation(line: 100, column: 14, scope: !3070)
!3198 = !DILocation(line: 101, column: 17, scope: !3070)
!3199 = !DILocation(line: 101, column: 27, scope: !3070)
!3200 = !DILocation(line: 101, column: 25, scope: !3070)
!3201 = !DILocation(line: 101, column: 14, scope: !3070)
!3202 = !DILocation(line: 102, column: 31, scope: !3070)
!3203 = !DILocation(line: 102, column: 2, scope: !3070)
!3204 = !DILocation(line: 102, column: 12, scope: !3070)
!3205 = !DILocation(line: 102, column: 29, scope: !3070)
!3206 = !DILocation(line: 103, column: 22, scope: !3070)
!3207 = !DILocation(line: 103, column: 2, scope: !3070)
!3208 = !DILocation(line: 103, column: 12, scope: !3070)
!3209 = !DILocation(line: 103, column: 20, scope: !3070)
!3210 = !DILocation(line: 104, column: 31, scope: !3070)
!3211 = !DILocation(line: 104, column: 41, scope: !3070)
!3212 = !DILocation(line: 104, column: 57, scope: !3070)
!3213 = !DILocation(line: 104, column: 55, scope: !3070)
!3214 = !DILocation(line: 104, column: 2, scope: !3070)
!3215 = !DILocation(line: 104, column: 12, scope: !3070)
!3216 = !DILocation(line: 104, column: 29, scope: !3070)
!3217 = !DILocation(line: 105, column: 9, scope: !3070)
!3218 = !DILocation(line: 105, column: 2, scope: !3070)
!3219 = !DILocation(line: 106, column: 1, scope: !3070)
!3220 = distinct !DISubprogram(name: "__initstub__kmod_cpufreq_ondemand__274_485_CPU_FREQ_GOV_ONDEMAND_init1", scope: !3, file: !3, line: 485, type: !954, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3221 = !DILocation(line: 485, column: 1, scope: !3220)
!3222 = distinct !DISubprogram(name: "CPU_FREQ_GOV_ONDEMAND_init", scope: !3, file: !3, line: 485, type: !954, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3223 = !DILocation(line: 485, column: 1, scope: !3222)
!3224 = distinct !DISubprogram(name: "CPU_FREQ_GOV_ONDEMAND_exit", scope: !3, file: !3, line: 486, type: !1194, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3225 = !DILocation(line: 486, column: 1, scope: !3224)
!3226 = !DISubprogram(name: "cpufreq_unregister_governor", scope: !30, file: !30, line: 620, type: !3227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !124}
!3229 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !80, file: !80, line: 918, type: !3230, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3233)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!611, !3232, !75}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "mask", arg: 1, scope: !3229, file: !80, line: 918, type: !3232)
!3235 = !DILocalVariable(name: "flags", arg: 2, scope: !3229, file: !80, line: 918, type: !75)
!3236 = !DILocation(line: 918, column: 53, scope: !3229)
!3237 = !DILocation(line: 918, column: 65, scope: !3229)
!3238 = !DILocation(line: 920, column: 2, scope: !3229)
!3239 = distinct !DISubprogram(name: "cpumask_clear", scope: !80, file: !80, line: 552, type: !3240, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3243)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "dstp", arg: 1, scope: !3239, file: !80, line: 552, type: !3242)
!3245 = !DILocation(line: 552, column: 50, scope: !3239)
!3246 = !DILocation(line: 554, column: 14, scope: !3239)
!3247 = !DILocation(line: 554, column: 2, scope: !3239)
!3248 = !DILocation(line: 555, column: 1, scope: !3239)
!3249 = !DISubprogram(name: "cpus_read_lock", scope: !3250, file: !3250, line: 135, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3250 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!3251 = distinct !DISubprogram(name: "find_next_bit", scope: !3252, file: !3252, line: 54, type: !3253, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3257)
!3252 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!84, !3255, !84, !84}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3257 = !{!3258, !3259, !3260, !3261}
!3258 = !DILocalVariable(name: "addr", arg: 1, scope: !3251, file: !3252, line: 54, type: !3255)
!3259 = !DILocalVariable(name: "size", arg: 2, scope: !3251, file: !3252, line: 54, type: !84)
!3260 = !DILocalVariable(name: "offset", arg: 3, scope: !3251, file: !3252, line: 55, type: !84)
!3261 = !DILocalVariable(name: "val", scope: !3262, file: !3252, line: 58, type: !84)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3252, line: 57, column: 31)
!3263 = distinct !DILexicalBlock(scope: !3251, file: !3252, line: 57, column: 6)
!3264 = !DILocation(line: 54, column: 50, scope: !3251)
!3265 = !DILocation(line: 54, column: 70, scope: !3251)
!3266 = !DILocation(line: 55, column: 22, scope: !3251)
!3267 = !DILocation(line: 57, column: 6, scope: !3263)
!3268 = !DILocation(line: 57, column: 6, scope: !3251)
!3269 = !DILocation(line: 58, column: 3, scope: !3262)
!3270 = !DILocation(line: 58, column: 17, scope: !3262)
!3271 = !DILocation(line: 60, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3262, file: !3252, line: 60, column: 7)
!3273 = !DILocation(line: 60, column: 7, scope: !3262)
!3274 = !DILocation(line: 61, column: 11, scope: !3272)
!3275 = !DILocation(line: 61, column: 4, scope: !3272)
!3276 = !DILocation(line: 63, column: 10, scope: !3262)
!3277 = !DILocation(line: 63, column: 9, scope: !3262)
!3278 = !DILocation(line: 63, column: 17, scope: !3262)
!3279 = !DILocation(line: 63, column: 15, scope: !3262)
!3280 = !DILocation(line: 63, column: 7, scope: !3262)
!3281 = !DILocation(line: 64, column: 10, scope: !3262)
!3282 = !DILocation(line: 64, column: 16, scope: !3262)
!3283 = !DILocation(line: 64, column: 29, scope: !3262)
!3284 = !DILocation(line: 64, column: 3, scope: !3262)
!3285 = !DILocation(line: 65, column: 2, scope: !3263)
!3286 = !DILocation(line: 67, column: 24, scope: !3251)
!3287 = !DILocation(line: 67, column: 30, scope: !3251)
!3288 = !DILocation(line: 67, column: 36, scope: !3251)
!3289 = !DILocation(line: 67, column: 9, scope: !3251)
!3290 = !DILocation(line: 67, column: 2, scope: !3251)
!3291 = !DILocation(line: 68, column: 1, scope: !3251)
!3292 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !80, file: !80, line: 502, type: !3293, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!611, !87, !77}
!3295 = !{!3296, !3297}
!3296 = !DILocalVariable(name: "cpu", arg: 1, scope: !3292, file: !80, line: 502, type: !87)
!3297 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3292, file: !80, line: 502, type: !77)
!3298 = !DILocation(line: 502, column: 50, scope: !3292)
!3299 = !DILocation(line: 502, column: 77, scope: !3292)
!3300 = !DILocation(line: 504, column: 9, scope: !3292)
!3301 = !DILocation(line: 504, column: 2, scope: !3292)
!3302 = !DISubprogram(name: "cpufreq_cpu_get_raw", scope: !30, file: !30, line: 198, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!97, !7}
!3305 = distinct !DISubprogram(name: "cpumask_or", scope: !80, file: !80, line: 579, type: !3306, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !3242, !77, !77}
!3308 = !{!3309, !3310, !3311}
!3309 = !DILocalVariable(name: "dstp", arg: 1, scope: !3305, file: !80, line: 579, type: !3242)
!3310 = !DILocalVariable(name: "src1p", arg: 2, scope: !3305, file: !80, line: 579, type: !77)
!3311 = !DILocalVariable(name: "src2p", arg: 3, scope: !3305, file: !80, line: 580, type: !77)
!3312 = !DILocation(line: 579, column: 47, scope: !3305)
!3313 = !DILocation(line: 579, column: 75, scope: !3305)
!3314 = !DILocation(line: 580, column: 32, scope: !3305)
!3315 = !DILocation(line: 582, column: 12, scope: !3305)
!3316 = !DILocation(line: 582, column: 32, scope: !3305)
!3317 = !DILocation(line: 583, column: 11, scope: !3305)
!3318 = !DILocation(line: 582, column: 2, scope: !3305)
!3319 = !DILocation(line: 584, column: 1, scope: !3305)
!3320 = !DISubprogram(name: "cpus_read_unlock", scope: !3250, file: !3250, line: 136, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3321 = distinct !DISubprogram(name: "free_cpumask_var", scope: !80, file: !80, line: 946, type: !3240, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "mask", arg: 1, scope: !3321, file: !80, line: 946, type: !3242)
!3324 = !DILocation(line: 946, column: 51, scope: !3321)
!3325 = !DILocation(line: 948, column: 1, scope: !3321)
!3326 = distinct !DISubprogram(name: "bitmap_zero", scope: !3327, file: !3327, line: 246, type: !3328, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3330)
!3327 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !88, !7}
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "dst", arg: 1, scope: !3326, file: !3327, line: 246, type: !88)
!3332 = !DILocalVariable(name: "nbits", arg: 2, scope: !3326, file: !3327, line: 246, type: !7)
!3333 = !DILocalVariable(name: "len", scope: !3326, file: !3327, line: 248, type: !7)
!3334 = !DILocation(line: 246, column: 47, scope: !3326)
!3335 = !DILocation(line: 246, column: 65, scope: !3326)
!3336 = !DILocation(line: 248, column: 2, scope: !3326)
!3337 = !DILocation(line: 248, column: 15, scope: !3326)
!3338 = !DILocation(line: 248, column: 21, scope: !3326)
!3339 = !DILocation(line: 250, column: 6, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3326, file: !3327, line: 250, column: 6)
!3341 = !DILocation(line: 250, column: 6, scope: !3326)
!3342 = !DILocation(line: 251, column: 4, scope: !3340)
!3343 = !DILocation(line: 251, column: 8, scope: !3340)
!3344 = !DILocation(line: 251, column: 3, scope: !3340)
!3345 = !DILocation(line: 253, column: 10, scope: !3340)
!3346 = !DILocation(line: 253, column: 18, scope: !3340)
!3347 = !DILocation(line: 253, column: 3, scope: !3340)
!3348 = !DILocation(line: 254, column: 1, scope: !3326)
!3349 = distinct !DISubprogram(name: "variable__ffs", scope: !3350, file: !3350, line: 250, type: !3351, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3350 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!84, !84}
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "word", arg: 1, scope: !3349, file: !3350, line: 250, type: !84)
!3355 = !DILocation(line: 250, column: 66, scope: !3349)
!3356 = !DILocation(line: 254, column: 11, scope: !3349)
!3357 = !DILocation(line: 252, column: 2, scope: !3349)
!3358 = !{i64 514262}
!3359 = !DILocation(line: 255, column: 9, scope: !3349)
!3360 = !DILocation(line: 255, column: 2, scope: !3349)
!3361 = !DISubprogram(name: "_find_next_bit", scope: !3252, file: !3252, line: 11, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3362 = distinct !DISubprogram(name: "_test_bit", scope: !3363, file: !3363, line: 139, type: !3364, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3369)
!3363 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!611, !84, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3368)
!3368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "nr", arg: 1, scope: !3362, file: !3363, line: 139, type: !84)
!3371 = !DILocalVariable(name: "addr", arg: 2, scope: !3362, file: !3363, line: 139, type: !3366)
!3372 = !DILocation(line: 139, column: 25, scope: !3362)
!3373 = !DILocation(line: 139, column: 59, scope: !3362)
!3374 = !DILocation(line: 141, column: 25, scope: !3362)
!3375 = !DILocation(line: 141, column: 32, scope: !3362)
!3376 = !DILocation(line: 141, column: 30, scope: !3362)
!3377 = !DILocation(line: 141, column: 2, scope: !3362)
!3378 = !DILocation(line: 142, column: 23, scope: !3362)
!3379 = !DILocation(line: 142, column: 27, scope: !3362)
!3380 = !DILocation(line: 142, column: 9, scope: !3362)
!3381 = !DILocation(line: 142, column: 2, scope: !3362)
!3382 = distinct !DISubprogram(name: "cpumask_check", scope: !80, file: !80, line: 148, type: !3383, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!7, !7}
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "cpu", arg: 1, scope: !3382, file: !80, line: 148, type: !7)
!3387 = !DILocation(line: 148, column: 64, scope: !3382)
!3388 = !DILocation(line: 150, column: 20, scope: !3382)
!3389 = !DILocation(line: 150, column: 2, scope: !3382)
!3390 = !DILocation(line: 151, column: 9, scope: !3382)
!3391 = !DILocation(line: 151, column: 2, scope: !3382)
!3392 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3393, file: !3393, line: 66, type: !3394, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3393 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3396, !303}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "v", arg: 1, scope: !3392, file: !3393, line: 66, type: !3396)
!3401 = !DILocalVariable(name: "size", arg: 2, scope: !3392, file: !3393, line: 66, type: !303)
!3402 = !DILocation(line: 66, column: 73, scope: !3392)
!3403 = !DILocation(line: 66, column: 83, scope: !3392)
!3404 = !DILocation(line: 68, column: 19, scope: !3392)
!3405 = !DILocation(line: 68, column: 22, scope: !3392)
!3406 = !DILocation(line: 68, column: 2, scope: !3392)
!3407 = !DILocation(line: 69, column: 2, scope: !3392)
!3408 = !DILocation(line: 70, column: 1, scope: !3392)
!3409 = distinct !DISubprogram(name: "arch_test_bit", scope: !3350, file: !3350, line: 237, type: !3364, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3410)
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "nr", arg: 1, scope: !3409, file: !3350, line: 237, type: !84)
!3412 = !DILocalVariable(name: "addr", arg: 2, scope: !3409, file: !3350, line: 237, type: !3366)
!3413 = !DILocation(line: 237, column: 29, scope: !3409)
!3414 = !DILocation(line: 237, column: 63, scope: !3409)
!3415 = !DILocation(line: 239, column: 30, scope: !3409)
!3416 = !DILocation(line: 239, column: 9, scope: !3409)
!3417 = !DILocation(line: 239, column: 54, scope: !3409)
!3418 = !DILocation(line: 239, column: 58, scope: !3409)
!3419 = !DILocation(line: 239, column: 36, scope: !3409)
!3420 = !DILocation(line: 240, column: 26, scope: !3409)
!3421 = !DILocation(line: 240, column: 30, scope: !3409)
!3422 = !DILocation(line: 240, column: 8, scope: !3409)
!3423 = !DILocation(line: 239, column: 2, scope: !3409)
!3424 = distinct !DISubprogram(name: "kasan_check_read", scope: !3425, file: !3425, line: 40, type: !3426, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3425 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!611, !3396, !7}
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "p", arg: 1, scope: !3424, file: !3425, line: 40, type: !3396)
!3430 = !DILocalVariable(name: "size", arg: 2, scope: !3424, file: !3425, line: 40, type: !7)
!3431 = !DILocation(line: 40, column: 58, scope: !3424)
!3432 = !DILocation(line: 40, column: 74, scope: !3424)
!3433 = !DILocation(line: 42, column: 2, scope: !3424)
!3434 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3435, file: !3435, line: 229, type: !3436, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3435 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !3396, !303, !87}
!3438 = !{!3439, !3440, !3441}
!3439 = !DILocalVariable(name: "ptr", arg: 1, scope: !3434, file: !3435, line: 229, type: !3396)
!3440 = !DILocalVariable(name: "size", arg: 2, scope: !3434, file: !3435, line: 229, type: !303)
!3441 = !DILocalVariable(name: "type", arg: 3, scope: !3434, file: !3435, line: 230, type: !87)
!3442 = !DILocation(line: 229, column: 60, scope: !3434)
!3443 = !DILocation(line: 229, column: 72, scope: !3434)
!3444 = !DILocation(line: 230, column: 15, scope: !3434)
!3445 = !DILocation(line: 230, column: 23, scope: !3434)
!3446 = distinct !DISubprogram(name: "constant_test_bit", scope: !3350, file: !3350, line: 204, type: !3447, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!611, !151, !3366}
!3449 = !{!3450, !3451}
!3450 = !DILocalVariable(name: "nr", arg: 1, scope: !3446, file: !3350, line: 204, type: !151)
!3451 = !DILocalVariable(name: "addr", arg: 2, scope: !3446, file: !3350, line: 204, type: !3366)
!3452 = !DILocation(line: 204, column: 52, scope: !3446)
!3453 = !DILocation(line: 204, column: 86, scope: !3446)
!3454 = !DILocation(line: 206, column: 19, scope: !3446)
!3455 = !DILocation(line: 206, column: 22, scope: !3446)
!3456 = !DILocation(line: 206, column: 15, scope: !3446)
!3457 = !DILocation(line: 207, column: 4, scope: !3446)
!3458 = !DILocation(line: 207, column: 9, scope: !3446)
!3459 = !DILocation(line: 207, column: 12, scope: !3446)
!3460 = !DILocation(line: 206, column: 44, scope: !3446)
!3461 = !DILocation(line: 207, column: 37, scope: !3446)
!3462 = !DILocation(line: 206, column: 2, scope: !3446)
!3463 = distinct !DISubprogram(name: "variable_test_bit", scope: !3350, file: !3350, line: 224, type: !3447, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3464)
!3464 = !{!3465, !3466, !3467}
!3465 = !DILocalVariable(name: "nr", arg: 1, scope: !3463, file: !3350, line: 224, type: !151)
!3466 = !DILocalVariable(name: "addr", arg: 2, scope: !3463, file: !3350, line: 224, type: !3366)
!3467 = !DILocalVariable(name: "oldbit", scope: !3463, file: !3350, line: 226, type: !611)
!3468 = !DILocation(line: 224, column: 52, scope: !3463)
!3469 = !DILocation(line: 224, column: 86, scope: !3463)
!3470 = !DILocation(line: 226, column: 2, scope: !3463)
!3471 = !DILocation(line: 226, column: 7, scope: !3463)
!3472 = !DILocation(line: 231, column: 33, scope: !3463)
!3473 = !DILocation(line: 231, column: 46, scope: !3463)
!3474 = !DILocation(line: 228, column: 2, scope: !3463)
!3475 = !{i64 2148019187, i64 2148019261}
!3476 = !DILocation(line: 233, column: 9, scope: !3463)
!3477 = !{i8 0, i8 2}
!3478 = !DILocation(line: 234, column: 1, scope: !3463)
!3479 = !DILocation(line: 233, column: 2, scope: !3463)
!3480 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !80, file: !80, line: 140, type: !3481, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !7, !7}
!3483 = !{!3484, !3485}
!3484 = !DILocalVariable(name: "cpu", arg: 1, scope: !3480, file: !80, line: 140, type: !7)
!3485 = !DILocalVariable(name: "bits", arg: 2, scope: !3480, file: !80, line: 140, type: !7)
!3486 = !DILocation(line: 140, column: 60, scope: !3480)
!3487 = !DILocation(line: 140, column: 78, scope: !3480)
!3488 = !DILocation(line: 145, column: 1, scope: !3480)
!3489 = distinct !DISubprogram(name: "bitmap_or", scope: !3327, file: !3327, line: 344, type: !3490, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !88, !3255, !3255, !7}
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DILocalVariable(name: "dst", arg: 1, scope: !3489, file: !3327, line: 344, type: !88)
!3494 = !DILocalVariable(name: "src1", arg: 2, scope: !3489, file: !3327, line: 344, type: !3255)
!3495 = !DILocalVariable(name: "src2", arg: 3, scope: !3489, file: !3327, line: 345, type: !3255)
!3496 = !DILocalVariable(name: "nbits", arg: 4, scope: !3489, file: !3327, line: 345, type: !7)
!3497 = !DILocation(line: 344, column: 45, scope: !3489)
!3498 = !DILocation(line: 344, column: 71, scope: !3489)
!3499 = !DILocation(line: 345, column: 25, scope: !3489)
!3500 = !DILocation(line: 345, column: 44, scope: !3489)
!3501 = !DILocation(line: 347, column: 6, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3489, file: !3327, line: 347, column: 6)
!3503 = !DILocation(line: 347, column: 6, scope: !3489)
!3504 = !DILocation(line: 348, column: 11, scope: !3502)
!3505 = !DILocation(line: 348, column: 10, scope: !3502)
!3506 = !DILocation(line: 348, column: 19, scope: !3502)
!3507 = !DILocation(line: 348, column: 18, scope: !3502)
!3508 = !DILocation(line: 348, column: 16, scope: !3502)
!3509 = !DILocation(line: 348, column: 4, scope: !3502)
!3510 = !DILocation(line: 348, column: 8, scope: !3502)
!3511 = !DILocation(line: 348, column: 3, scope: !3502)
!3512 = !DILocation(line: 350, column: 15, scope: !3502)
!3513 = !DILocation(line: 350, column: 20, scope: !3502)
!3514 = !DILocation(line: 350, column: 26, scope: !3502)
!3515 = !DILocation(line: 350, column: 32, scope: !3502)
!3516 = !DILocation(line: 350, column: 3, scope: !3502)
!3517 = !DILocation(line: 351, column: 1, scope: !3489)
!3518 = !DISubprogram(name: "__bitmap_or", scope: !3327, file: !3327, line: 158, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3519 = distinct !DISubprogram(name: "to_dbs_info", scope: !91, file: !91, line: 19, type: !3520, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!89, !2781}
!3522 = !{!3523, !3524}
!3523 = !DILocalVariable(name: "policy_dbs", arg: 1, scope: !3519, file: !91, line: 19, type: !2781)
!3524 = !DILocalVariable(name: "__mptr", scope: !3525, file: !91, line: 21, type: !74)
!3525 = distinct !DILexicalBlock(scope: !3519, file: !91, line: 21, column: 9)
!3526 = !DILocation(line: 19, column: 78, scope: !3519)
!3527 = !DILocation(line: 21, column: 9, scope: !3525)
!3528 = !DILocation(line: 21, column: 9, scope: !3519)
!3529 = !DILocation(line: 21, column: 2, scope: !3519)
!3530 = distinct !DISubprogram(name: "cpufreq_frequency_table_target", scope: !30, file: !30, line: 1036, type: !3531, scopeLine: 1039, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!87, !97, !7, !7}
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3543}
!3534 = !DILocalVariable(name: "policy", arg: 1, scope: !3530, file: !30, line: 1036, type: !97)
!3535 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3530, file: !30, line: 1037, type: !7)
!3536 = !DILocalVariable(name: "relation", arg: 3, scope: !3530, file: !30, line: 1038, type: !7)
!3537 = !DILocalVariable(name: "efficiencies", scope: !3530, file: !30, line: 1040, type: !611)
!3538 = !DILocalVariable(name: "idx", scope: !3530, file: !30, line: 1042, type: !87)
!3539 = !DILabel(scope: !3530, name: "retry", file: !30, line: 1050)
!3540 = !DILocalVariable(name: "__ret_warn_on", scope: !3541, file: !30, line: 1065, type: !87)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !30, line: 1065, column: 3)
!3542 = distinct !DILexicalBlock(scope: !3530, file: !30, line: 1051, column: 20)
!3543 = !DILocalVariable(name: "__flags", scope: !3544, file: !30, line: 1065, type: !87)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !30, line: 1065, column: 3)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !30, line: 1065, column: 3)
!3546 = !DILocation(line: 1036, column: 73, scope: !3530)
!3547 = !DILocation(line: 1037, column: 21, scope: !3530)
!3548 = !DILocation(line: 1038, column: 21, scope: !3530)
!3549 = !DILocation(line: 1040, column: 2, scope: !3530)
!3550 = !DILocation(line: 1040, column: 7, scope: !3530)
!3551 = !DILocation(line: 1040, column: 22, scope: !3530)
!3552 = !DILocation(line: 1040, column: 30, scope: !3530)
!3553 = !DILocation(line: 1040, column: 53, scope: !3530)
!3554 = !DILocation(line: 1041, column: 9, scope: !3530)
!3555 = !DILocation(line: 1041, column: 18, scope: !3530)
!3556 = !DILocation(line: 0, scope: !3530)
!3557 = !DILocation(line: 1042, column: 2, scope: !3530)
!3558 = !DILocation(line: 1042, column: 6, scope: !3530)
!3559 = !DILocation(line: 1045, column: 11, scope: !3530)
!3560 = !DILocation(line: 1047, column: 6, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3530, file: !30, line: 1047, column: 6)
!3562 = !DILocation(line: 1047, column: 6, scope: !3530)
!3563 = !DILocation(line: 1048, column: 39, scope: !3561)
!3564 = !DILocation(line: 1048, column: 47, scope: !3561)
!3565 = !DILocation(line: 1049, column: 11, scope: !3561)
!3566 = !DILocation(line: 1048, column: 10, scope: !3561)
!3567 = !DILocation(line: 1048, column: 3, scope: !3561)
!3568 = !DILocation(line: 1050, column: 1, scope: !3530)
!3569 = !DILocation(line: 1051, column: 10, scope: !3530)
!3570 = !DILocation(line: 1051, column: 2, scope: !3530)
!3571 = !DILocation(line: 1053, column: 36, scope: !3542)
!3572 = !DILocation(line: 1053, column: 44, scope: !3542)
!3573 = !DILocation(line: 1054, column: 8, scope: !3542)
!3574 = !DILocation(line: 1053, column: 9, scope: !3542)
!3575 = !DILocation(line: 1053, column: 7, scope: !3542)
!3576 = !DILocation(line: 1055, column: 3, scope: !3542)
!3577 = !DILocation(line: 1057, column: 36, scope: !3542)
!3578 = !DILocation(line: 1057, column: 44, scope: !3542)
!3579 = !DILocation(line: 1058, column: 8, scope: !3542)
!3580 = !DILocation(line: 1057, column: 9, scope: !3542)
!3581 = !DILocation(line: 1057, column: 7, scope: !3542)
!3582 = !DILocation(line: 1059, column: 3, scope: !3542)
!3583 = !DILocation(line: 1061, column: 36, scope: !3542)
!3584 = !DILocation(line: 1061, column: 44, scope: !3542)
!3585 = !DILocation(line: 1062, column: 8, scope: !3542)
!3586 = !DILocation(line: 1061, column: 9, scope: !3542)
!3587 = !DILocation(line: 1061, column: 7, scope: !3542)
!3588 = !DILocation(line: 1063, column: 3, scope: !3542)
!3589 = !DILocation(line: 1065, column: 3, scope: !3541)
!3590 = !DILocation(line: 1065, column: 3, scope: !3545)
!3591 = !DILocation(line: 1065, column: 3, scope: !3544)
!3592 = !DILocation(line: 1065, column: 3, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3544, file: !30, line: 1065, column: 3)
!3594 = !DILocation(line: 1065, column: 3, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3544, file: !30, line: 1065, column: 3)
!3596 = !{i64 2154058841, i64 2154058870, i64 2154058916, i64 2154058974, i64 2154059028, i64 2154059082, i64 2154059137, i64 2154059168, i64 2154059476, i64 2154059482, i64 2154059529, i64 2154059552, i64 2154059578}
!3597 = !DILocation(line: 1065, column: 3, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3544, file: !30, line: 1065, column: 3)
!3599 = !DILocation(line: 1065, column: 3, scope: !3542)
!3600 = !DILocation(line: 1066, column: 3, scope: !3542)
!3601 = !DILocation(line: 1070, column: 28, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3530, file: !30, line: 1070, column: 6)
!3603 = !DILocation(line: 1070, column: 36, scope: !3602)
!3604 = !DILocation(line: 1070, column: 7, scope: !3602)
!3605 = !DILocation(line: 1070, column: 41, scope: !3602)
!3606 = !DILocation(line: 1070, column: 44, scope: !3602)
!3607 = !DILocation(line: 1070, column: 6, scope: !3530)
!3608 = !DILocation(line: 1071, column: 16, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3602, file: !30, line: 1070, column: 58)
!3610 = !DILocation(line: 1072, column: 3, scope: !3609)
!3611 = !DILocation(line: 1075, column: 9, scope: !3530)
!3612 = !DILocation(line: 1075, column: 2, scope: !3530)
!3613 = !DILocation(line: 1076, column: 1, scope: !3530)
!3614 = distinct !DISubprogram(name: "cpufreq_table_find_index_h", scope: !30, file: !30, line: 925, type: !3615, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!87, !97, !7, !611}
!3617 = !{!3618, !3619, !3620, !3621, !3624, !3625}
!3618 = !DILocalVariable(name: "policy", arg: 1, scope: !3614, file: !30, line: 925, type: !97)
!3619 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3614, file: !30, line: 926, type: !7)
!3620 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3614, file: !30, line: 927, type: !611)
!3621 = !DILocalVariable(name: "__UNIQUE_ID___val257", scope: !3622, file: !30, line: 929, type: !7)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !30, line: 929, column: 16)
!3623 = distinct !DILexicalBlock(scope: !3614, file: !30, line: 929, column: 16)
!3624 = !DILocalVariable(name: "__UNIQUE_ID___lo258", scope: !3622, file: !30, line: 929, type: !7)
!3625 = !DILocalVariable(name: "__UNIQUE_ID___hi259", scope: !3622, file: !30, line: 929, type: !7)
!3626 = !DILocation(line: 925, column: 69, scope: !3614)
!3627 = !DILocation(line: 926, column: 24, scope: !3614)
!3628 = !DILocation(line: 927, column: 16, scope: !3614)
!3629 = !DILocation(line: 929, column: 16, scope: !3622)
!3630 = !DILocation(line: 929, column: 16, scope: !3623)
!3631 = !DILocation(line: 929, column: 16, scope: !3614)
!3632 = !DILocation(line: 929, column: 14, scope: !3614)
!3633 = !DILocation(line: 931, column: 6, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3614, file: !30, line: 931, column: 6)
!3635 = !DILocation(line: 931, column: 14, scope: !3634)
!3636 = !DILocation(line: 931, column: 32, scope: !3634)
!3637 = !DILocation(line: 931, column: 6, scope: !3614)
!3638 = !DILocation(line: 932, column: 38, scope: !3634)
!3639 = !DILocation(line: 932, column: 46, scope: !3634)
!3640 = !DILocation(line: 933, column: 10, scope: !3634)
!3641 = !DILocation(line: 932, column: 10, scope: !3634)
!3642 = !DILocation(line: 932, column: 3, scope: !3634)
!3643 = !DILocation(line: 935, column: 38, scope: !3634)
!3644 = !DILocation(line: 935, column: 46, scope: !3634)
!3645 = !DILocation(line: 936, column: 10, scope: !3634)
!3646 = !DILocation(line: 935, column: 10, scope: !3634)
!3647 = !DILocation(line: 935, column: 3, scope: !3634)
!3648 = !DILocation(line: 937, column: 1, scope: !3614)
!3649 = distinct !DISubprogram(name: "cpufreq_table_find_index_l", scope: !30, file: !30, line: 857, type: !3615, scopeLine: 860, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3657, !3658}
!3651 = !DILocalVariable(name: "policy", arg: 1, scope: !3649, file: !30, line: 857, type: !97)
!3652 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3649, file: !30, line: 858, type: !7)
!3653 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3649, file: !30, line: 859, type: !611)
!3654 = !DILocalVariable(name: "__UNIQUE_ID___val254", scope: !3655, file: !30, line: 861, type: !7)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !30, line: 861, column: 16)
!3656 = distinct !DILexicalBlock(scope: !3649, file: !30, line: 861, column: 16)
!3657 = !DILocalVariable(name: "__UNIQUE_ID___lo255", scope: !3655, file: !30, line: 861, type: !7)
!3658 = !DILocalVariable(name: "__UNIQUE_ID___hi256", scope: !3655, file: !30, line: 861, type: !7)
!3659 = !DILocation(line: 857, column: 69, scope: !3649)
!3660 = !DILocation(line: 858, column: 24, scope: !3649)
!3661 = !DILocation(line: 859, column: 16, scope: !3649)
!3662 = !DILocation(line: 861, column: 16, scope: !3655)
!3663 = !DILocation(line: 861, column: 16, scope: !3656)
!3664 = !DILocation(line: 861, column: 16, scope: !3649)
!3665 = !DILocation(line: 861, column: 14, scope: !3649)
!3666 = !DILocation(line: 863, column: 6, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3649, file: !30, line: 863, column: 6)
!3668 = !DILocation(line: 863, column: 14, scope: !3667)
!3669 = !DILocation(line: 863, column: 32, scope: !3667)
!3670 = !DILocation(line: 863, column: 6, scope: !3649)
!3671 = !DILocation(line: 864, column: 38, scope: !3667)
!3672 = !DILocation(line: 864, column: 46, scope: !3667)
!3673 = !DILocation(line: 865, column: 10, scope: !3667)
!3674 = !DILocation(line: 864, column: 10, scope: !3667)
!3675 = !DILocation(line: 864, column: 3, scope: !3667)
!3676 = !DILocation(line: 867, column: 38, scope: !3667)
!3677 = !DILocation(line: 867, column: 46, scope: !3667)
!3678 = !DILocation(line: 868, column: 10, scope: !3667)
!3679 = !DILocation(line: 867, column: 10, scope: !3667)
!3680 = !DILocation(line: 867, column: 3, scope: !3667)
!3681 = !DILocation(line: 869, column: 1, scope: !3649)
!3682 = !DISubprogram(name: "cpufreq_table_index_unsorted", scope: !30, file: !30, line: 789, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3683 = distinct !DISubprogram(name: "cpufreq_table_find_index_c", scope: !30, file: !30, line: 1010, type: !3615, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3691, !3692}
!3685 = !DILocalVariable(name: "policy", arg: 1, scope: !3683, file: !30, line: 1010, type: !97)
!3686 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3683, file: !30, line: 1011, type: !7)
!3687 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3683, file: !30, line: 1012, type: !611)
!3688 = !DILocalVariable(name: "__UNIQUE_ID___val260", scope: !3689, file: !30, line: 1014, type: !7)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !30, line: 1014, column: 16)
!3690 = distinct !DILexicalBlock(scope: !3683, file: !30, line: 1014, column: 16)
!3691 = !DILocalVariable(name: "__UNIQUE_ID___lo261", scope: !3689, file: !30, line: 1014, type: !7)
!3692 = !DILocalVariable(name: "__UNIQUE_ID___hi262", scope: !3689, file: !30, line: 1014, type: !7)
!3693 = !DILocation(line: 1010, column: 69, scope: !3683)
!3694 = !DILocation(line: 1011, column: 24, scope: !3683)
!3695 = !DILocation(line: 1012, column: 16, scope: !3683)
!3696 = !DILocation(line: 1014, column: 16, scope: !3689)
!3697 = !DILocation(line: 1014, column: 16, scope: !3690)
!3698 = !DILocation(line: 1014, column: 16, scope: !3683)
!3699 = !DILocation(line: 1014, column: 14, scope: !3683)
!3700 = !DILocation(line: 1016, column: 6, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3683, file: !30, line: 1016, column: 6)
!3702 = !DILocation(line: 1016, column: 14, scope: !3701)
!3703 = !DILocation(line: 1016, column: 32, scope: !3701)
!3704 = !DILocation(line: 1016, column: 6, scope: !3683)
!3705 = !DILocation(line: 1017, column: 38, scope: !3701)
!3706 = !DILocation(line: 1017, column: 46, scope: !3701)
!3707 = !DILocation(line: 1018, column: 10, scope: !3701)
!3708 = !DILocation(line: 1017, column: 10, scope: !3701)
!3709 = !DILocation(line: 1017, column: 3, scope: !3701)
!3710 = !DILocation(line: 1020, column: 38, scope: !3701)
!3711 = !DILocation(line: 1020, column: 46, scope: !3701)
!3712 = !DILocation(line: 1021, column: 10, scope: !3701)
!3713 = !DILocation(line: 1020, column: 10, scope: !3701)
!3714 = !DILocation(line: 1020, column: 3, scope: !3701)
!3715 = !DILocation(line: 1022, column: 1, scope: !3683)
!3716 = distinct !DISubprogram(name: "cpufreq_is_in_limits", scope: !30, file: !30, line: 1024, type: !3717, scopeLine: 1025, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!611, !97, !87}
!3719 = !{!3720, !3721, !3722, !3723, !3726, !3727}
!3720 = !DILocalVariable(name: "policy", arg: 1, scope: !3716, file: !30, line: 1024, type: !97)
!3721 = !DILocalVariable(name: "idx", arg: 2, scope: !3716, file: !30, line: 1024, type: !87)
!3722 = !DILocalVariable(name: "freq", scope: !3716, file: !30, line: 1026, type: !7)
!3723 = !DILocalVariable(name: "__UNIQUE_ID___val263", scope: !3724, file: !30, line: 1033, type: !7)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !30, line: 1033, column: 17)
!3725 = distinct !DILexicalBlock(scope: !3716, file: !30, line: 1033, column: 17)
!3726 = !DILocalVariable(name: "__UNIQUE_ID___lo264", scope: !3724, file: !30, line: 1033, type: !7)
!3727 = !DILocalVariable(name: "__UNIQUE_ID___hi265", scope: !3724, file: !30, line: 1033, type: !7)
!3728 = !DILocation(line: 1024, column: 64, scope: !3716)
!3729 = !DILocation(line: 1024, column: 76, scope: !3716)
!3730 = !DILocation(line: 1026, column: 2, scope: !3716)
!3731 = !DILocation(line: 1026, column: 15, scope: !3716)
!3732 = !DILocation(line: 1028, column: 6, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3716, file: !30, line: 1028, column: 6)
!3734 = !DILocation(line: 1028, column: 10, scope: !3733)
!3735 = !DILocation(line: 1028, column: 6, scope: !3716)
!3736 = !DILocation(line: 1029, column: 3, scope: !3733)
!3737 = !DILocation(line: 1031, column: 9, scope: !3716)
!3738 = !DILocation(line: 1031, column: 17, scope: !3716)
!3739 = !DILocation(line: 1031, column: 28, scope: !3716)
!3740 = !DILocation(line: 1031, column: 33, scope: !3716)
!3741 = !DILocation(line: 1031, column: 7, scope: !3716)
!3742 = !DILocation(line: 1033, column: 9, scope: !3716)
!3743 = !DILocation(line: 1033, column: 17, scope: !3724)
!3744 = !DILocation(line: 1033, column: 17, scope: !3725)
!3745 = !DILocation(line: 1033, column: 17, scope: !3716)
!3746 = !DILocation(line: 1033, column: 14, scope: !3716)
!3747 = !DILocation(line: 1033, column: 2, scope: !3716)
!3748 = !DILocation(line: 1034, column: 1, scope: !3716)
!3749 = distinct !DISubprogram(name: "cpufreq_table_find_index_ac", scope: !30, file: !30, line: 940, type: !3615, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3751 = !DILocalVariable(name: "policy", arg: 1, scope: !3749, file: !30, line: 940, type: !97)
!3752 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3749, file: !30, line: 941, type: !7)
!3753 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3749, file: !30, line: 942, type: !611)
!3754 = !DILocalVariable(name: "table", scope: !3749, file: !30, line: 944, type: !1251)
!3755 = !DILocalVariable(name: "pos", scope: !3749, file: !30, line: 945, type: !1251)
!3756 = !DILocalVariable(name: "freq", scope: !3749, file: !30, line: 946, type: !7)
!3757 = !DILocalVariable(name: "idx", scope: !3749, file: !30, line: 947, type: !87)
!3758 = !DILocalVariable(name: "best", scope: !3749, file: !30, line: 947, type: !87)
!3759 = !DILocation(line: 940, column: 70, scope: !3749)
!3760 = !DILocation(line: 941, column: 25, scope: !3749)
!3761 = !DILocation(line: 942, column: 17, scope: !3749)
!3762 = !DILocation(line: 944, column: 2, scope: !3749)
!3763 = !DILocation(line: 944, column: 34, scope: !3749)
!3764 = !DILocation(line: 944, column: 42, scope: !3749)
!3765 = !DILocation(line: 944, column: 50, scope: !3749)
!3766 = !DILocation(line: 945, column: 2, scope: !3749)
!3767 = !DILocation(line: 945, column: 34, scope: !3749)
!3768 = !DILocation(line: 946, column: 2, scope: !3749)
!3769 = !DILocation(line: 946, column: 15, scope: !3749)
!3770 = !DILocation(line: 947, column: 2, scope: !3749)
!3771 = !DILocation(line: 947, column: 6, scope: !3749)
!3772 = !DILocation(line: 947, column: 11, scope: !3749)
!3773 = !DILocation(line: 949, column: 2, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3749, file: !30, line: 949, column: 2)
!3775 = !DILocation(line: 949, column: 2, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3774, file: !30, line: 949, column: 2)
!3777 = !DILocation(line: 949, column: 2, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3776, file: !30, line: 949, column: 2)
!3779 = !DILocation(line: 949, column: 2, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3778, file: !30, line: 949, column: 2)
!3781 = !DILocation(line: 950, column: 10, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3780, file: !30, line: 949, column: 70)
!3783 = !DILocation(line: 950, column: 15, scope: !3782)
!3784 = !DILocation(line: 950, column: 8, scope: !3782)
!3785 = !DILocation(line: 952, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !30, line: 952, column: 7)
!3787 = !DILocation(line: 952, column: 15, scope: !3786)
!3788 = !DILocation(line: 952, column: 12, scope: !3786)
!3789 = !DILocation(line: 952, column: 7, scope: !3782)
!3790 = !DILocation(line: 953, column: 11, scope: !3786)
!3791 = !DILocation(line: 953, column: 4, scope: !3786)
!3792 = !DILocation(line: 955, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3782, file: !30, line: 955, column: 7)
!3794 = !DILocation(line: 955, column: 14, scope: !3793)
!3795 = !DILocation(line: 955, column: 12, scope: !3793)
!3796 = !DILocation(line: 955, column: 7, scope: !3782)
!3797 = !DILocation(line: 956, column: 11, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3793, file: !30, line: 955, column: 27)
!3799 = !DILocation(line: 956, column: 9, scope: !3798)
!3800 = !DILocation(line: 957, column: 4, scope: !3798)
!3801 = !DILocation(line: 961, column: 7, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3782, file: !30, line: 961, column: 7)
!3803 = !DILocation(line: 961, column: 12, scope: !3802)
!3804 = !DILocation(line: 961, column: 7, scope: !3782)
!3805 = !DILocation(line: 962, column: 11, scope: !3802)
!3806 = !DILocation(line: 962, column: 4, scope: !3802)
!3807 = !DILocation(line: 965, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3782, file: !30, line: 965, column: 7)
!3809 = !DILocation(line: 965, column: 21, scope: !3808)
!3810 = !DILocation(line: 965, column: 27, scope: !3808)
!3811 = !DILocation(line: 965, column: 33, scope: !3808)
!3812 = !DILocation(line: 965, column: 19, scope: !3808)
!3813 = !DILocation(line: 965, column: 45, scope: !3808)
!3814 = !DILocation(line: 965, column: 52, scope: !3808)
!3815 = !DILocation(line: 965, column: 50, scope: !3808)
!3816 = !DILocation(line: 965, column: 43, scope: !3808)
!3817 = !DILocation(line: 965, column: 7, scope: !3782)
!3818 = !DILocation(line: 966, column: 11, scope: !3808)
!3819 = !DILocation(line: 966, column: 4, scope: !3808)
!3820 = !DILocation(line: 968, column: 10, scope: !3782)
!3821 = !DILocation(line: 968, column: 3, scope: !3782)
!3822 = distinct !{!3822, !3773, !3823, !3060, !3061}
!3823 = !DILocation(line: 969, column: 2, scope: !3774)
!3824 = !DILocation(line: 971, column: 9, scope: !3749)
!3825 = !DILocation(line: 971, column: 2, scope: !3749)
!3826 = !DILocation(line: 972, column: 1, scope: !3749)
!3827 = distinct !DISubprogram(name: "cpufreq_table_find_index_dc", scope: !30, file: !30, line: 975, type: !3615, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836}
!3829 = !DILocalVariable(name: "policy", arg: 1, scope: !3827, file: !30, line: 975, type: !97)
!3830 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3827, file: !30, line: 976, type: !7)
!3831 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3827, file: !30, line: 977, type: !611)
!3832 = !DILocalVariable(name: "table", scope: !3827, file: !30, line: 979, type: !1251)
!3833 = !DILocalVariable(name: "pos", scope: !3827, file: !30, line: 980, type: !1251)
!3834 = !DILocalVariable(name: "freq", scope: !3827, file: !30, line: 981, type: !7)
!3835 = !DILocalVariable(name: "idx", scope: !3827, file: !30, line: 982, type: !87)
!3836 = !DILocalVariable(name: "best", scope: !3827, file: !30, line: 982, type: !87)
!3837 = !DILocation(line: 975, column: 70, scope: !3827)
!3838 = !DILocation(line: 976, column: 25, scope: !3827)
!3839 = !DILocation(line: 977, column: 17, scope: !3827)
!3840 = !DILocation(line: 979, column: 2, scope: !3827)
!3841 = !DILocation(line: 979, column: 34, scope: !3827)
!3842 = !DILocation(line: 979, column: 42, scope: !3827)
!3843 = !DILocation(line: 979, column: 50, scope: !3827)
!3844 = !DILocation(line: 980, column: 2, scope: !3827)
!3845 = !DILocation(line: 980, column: 34, scope: !3827)
!3846 = !DILocation(line: 981, column: 2, scope: !3827)
!3847 = !DILocation(line: 981, column: 15, scope: !3827)
!3848 = !DILocation(line: 982, column: 2, scope: !3827)
!3849 = !DILocation(line: 982, column: 6, scope: !3827)
!3850 = !DILocation(line: 982, column: 11, scope: !3827)
!3851 = !DILocation(line: 984, column: 2, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3827, file: !30, line: 984, column: 2)
!3853 = !DILocation(line: 984, column: 2, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3852, file: !30, line: 984, column: 2)
!3855 = !DILocation(line: 984, column: 2, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3854, file: !30, line: 984, column: 2)
!3857 = !DILocation(line: 984, column: 2, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3856, file: !30, line: 984, column: 2)
!3859 = !DILocation(line: 985, column: 10, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3858, file: !30, line: 984, column: 70)
!3861 = !DILocation(line: 985, column: 15, scope: !3860)
!3862 = !DILocation(line: 985, column: 8, scope: !3860)
!3863 = !DILocation(line: 987, column: 7, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3860, file: !30, line: 987, column: 7)
!3865 = !DILocation(line: 987, column: 15, scope: !3864)
!3866 = !DILocation(line: 987, column: 12, scope: !3864)
!3867 = !DILocation(line: 987, column: 7, scope: !3860)
!3868 = !DILocation(line: 988, column: 11, scope: !3864)
!3869 = !DILocation(line: 988, column: 4, scope: !3864)
!3870 = !DILocation(line: 990, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3860, file: !30, line: 990, column: 7)
!3872 = !DILocation(line: 990, column: 14, scope: !3871)
!3873 = !DILocation(line: 990, column: 12, scope: !3871)
!3874 = !DILocation(line: 990, column: 7, scope: !3860)
!3875 = !DILocation(line: 991, column: 11, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3871, file: !30, line: 990, column: 27)
!3877 = !DILocation(line: 991, column: 9, scope: !3876)
!3878 = !DILocation(line: 992, column: 4, scope: !3876)
!3879 = !DILocation(line: 996, column: 7, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3860, file: !30, line: 996, column: 7)
!3881 = !DILocation(line: 996, column: 12, scope: !3880)
!3882 = !DILocation(line: 996, column: 7, scope: !3860)
!3883 = !DILocation(line: 997, column: 11, scope: !3880)
!3884 = !DILocation(line: 997, column: 4, scope: !3880)
!3885 = !DILocation(line: 1000, column: 7, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3860, file: !30, line: 1000, column: 7)
!3887 = !DILocation(line: 1000, column: 13, scope: !3886)
!3888 = !DILocation(line: 1000, column: 19, scope: !3886)
!3889 = !DILocation(line: 1000, column: 31, scope: !3886)
!3890 = !DILocation(line: 1000, column: 29, scope: !3886)
!3891 = !DILocation(line: 1000, column: 45, scope: !3886)
!3892 = !DILocation(line: 1000, column: 59, scope: !3886)
!3893 = !DILocation(line: 1000, column: 57, scope: !3886)
!3894 = !DILocation(line: 1000, column: 43, scope: !3886)
!3895 = !DILocation(line: 1000, column: 7, scope: !3860)
!3896 = !DILocation(line: 1001, column: 11, scope: !3886)
!3897 = !DILocation(line: 1001, column: 4, scope: !3886)
!3898 = !DILocation(line: 1003, column: 10, scope: !3860)
!3899 = !DILocation(line: 1003, column: 3, scope: !3860)
!3900 = distinct !{!3900, !3851, !3901, !3060, !3061}
!3901 = !DILocation(line: 1004, column: 2, scope: !3852)
!3902 = !DILocation(line: 1006, column: 9, scope: !3827)
!3903 = !DILocation(line: 1006, column: 2, scope: !3827)
!3904 = !DILocation(line: 1007, column: 1, scope: !3827)
!3905 = distinct !DISubprogram(name: "cpufreq_table_find_index_ah", scope: !30, file: !30, line: 872, type: !3615, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3907 = !DILocalVariable(name: "policy", arg: 1, scope: !3905, file: !30, line: 872, type: !97)
!3908 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3905, file: !30, line: 873, type: !7)
!3909 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3905, file: !30, line: 874, type: !611)
!3910 = !DILocalVariable(name: "table", scope: !3905, file: !30, line: 876, type: !1251)
!3911 = !DILocalVariable(name: "pos", scope: !3905, file: !30, line: 877, type: !1251)
!3912 = !DILocalVariable(name: "freq", scope: !3905, file: !30, line: 878, type: !7)
!3913 = !DILocalVariable(name: "idx", scope: !3905, file: !30, line: 879, type: !87)
!3914 = !DILocalVariable(name: "best", scope: !3905, file: !30, line: 879, type: !87)
!3915 = !DILocation(line: 872, column: 70, scope: !3905)
!3916 = !DILocation(line: 873, column: 25, scope: !3905)
!3917 = !DILocation(line: 874, column: 17, scope: !3905)
!3918 = !DILocation(line: 876, column: 2, scope: !3905)
!3919 = !DILocation(line: 876, column: 34, scope: !3905)
!3920 = !DILocation(line: 876, column: 42, scope: !3905)
!3921 = !DILocation(line: 876, column: 50, scope: !3905)
!3922 = !DILocation(line: 877, column: 2, scope: !3905)
!3923 = !DILocation(line: 877, column: 34, scope: !3905)
!3924 = !DILocation(line: 878, column: 2, scope: !3905)
!3925 = !DILocation(line: 878, column: 15, scope: !3905)
!3926 = !DILocation(line: 879, column: 2, scope: !3905)
!3927 = !DILocation(line: 879, column: 6, scope: !3905)
!3928 = !DILocation(line: 879, column: 11, scope: !3905)
!3929 = !DILocation(line: 881, column: 2, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3905, file: !30, line: 881, column: 2)
!3931 = !DILocation(line: 881, column: 2, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3930, file: !30, line: 881, column: 2)
!3933 = !DILocation(line: 881, column: 2, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3932, file: !30, line: 881, column: 2)
!3935 = !DILocation(line: 881, column: 2, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3934, file: !30, line: 881, column: 2)
!3937 = !DILocation(line: 882, column: 10, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !30, line: 881, column: 70)
!3939 = !DILocation(line: 882, column: 15, scope: !3938)
!3940 = !DILocation(line: 882, column: 8, scope: !3938)
!3941 = !DILocation(line: 884, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !30, line: 884, column: 7)
!3943 = !DILocation(line: 884, column: 15, scope: !3942)
!3944 = !DILocation(line: 884, column: 12, scope: !3942)
!3945 = !DILocation(line: 884, column: 7, scope: !3938)
!3946 = !DILocation(line: 885, column: 11, scope: !3942)
!3947 = !DILocation(line: 885, column: 4, scope: !3942)
!3948 = !DILocation(line: 887, column: 7, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3938, file: !30, line: 887, column: 7)
!3950 = !DILocation(line: 887, column: 14, scope: !3949)
!3951 = !DILocation(line: 887, column: 12, scope: !3949)
!3952 = !DILocation(line: 887, column: 7, scope: !3938)
!3953 = !DILocation(line: 888, column: 11, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3949, file: !30, line: 887, column: 27)
!3955 = !DILocation(line: 888, column: 9, scope: !3954)
!3956 = !DILocation(line: 889, column: 4, scope: !3954)
!3957 = !DILocation(line: 893, column: 7, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3938, file: !30, line: 893, column: 7)
!3959 = !DILocation(line: 893, column: 12, scope: !3958)
!3960 = !DILocation(line: 893, column: 7, scope: !3938)
!3961 = !DILocation(line: 894, column: 11, scope: !3958)
!3962 = !DILocation(line: 894, column: 4, scope: !3958)
!3963 = !DILocation(line: 896, column: 10, scope: !3938)
!3964 = !DILocation(line: 896, column: 3, scope: !3938)
!3965 = distinct !{!3965, !3929, !3966, !3060, !3061}
!3966 = !DILocation(line: 897, column: 2, scope: !3930)
!3967 = !DILocation(line: 899, column: 9, scope: !3905)
!3968 = !DILocation(line: 899, column: 2, scope: !3905)
!3969 = !DILocation(line: 900, column: 1, scope: !3905)
!3970 = distinct !DISubprogram(name: "cpufreq_table_find_index_dh", scope: !30, file: !30, line: 903, type: !3615, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3972 = !DILocalVariable(name: "policy", arg: 1, scope: !3970, file: !30, line: 903, type: !97)
!3973 = !DILocalVariable(name: "target_freq", arg: 2, scope: !3970, file: !30, line: 904, type: !7)
!3974 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !3970, file: !30, line: 905, type: !611)
!3975 = !DILocalVariable(name: "table", scope: !3970, file: !30, line: 907, type: !1251)
!3976 = !DILocalVariable(name: "pos", scope: !3970, file: !30, line: 908, type: !1251)
!3977 = !DILocalVariable(name: "freq", scope: !3970, file: !30, line: 909, type: !7)
!3978 = !DILocalVariable(name: "idx", scope: !3970, file: !30, line: 910, type: !87)
!3979 = !DILocalVariable(name: "best", scope: !3970, file: !30, line: 910, type: !87)
!3980 = !DILocation(line: 903, column: 70, scope: !3970)
!3981 = !DILocation(line: 904, column: 25, scope: !3970)
!3982 = !DILocation(line: 905, column: 17, scope: !3970)
!3983 = !DILocation(line: 907, column: 2, scope: !3970)
!3984 = !DILocation(line: 907, column: 34, scope: !3970)
!3985 = !DILocation(line: 907, column: 42, scope: !3970)
!3986 = !DILocation(line: 907, column: 50, scope: !3970)
!3987 = !DILocation(line: 908, column: 2, scope: !3970)
!3988 = !DILocation(line: 908, column: 34, scope: !3970)
!3989 = !DILocation(line: 909, column: 2, scope: !3970)
!3990 = !DILocation(line: 909, column: 15, scope: !3970)
!3991 = !DILocation(line: 910, column: 2, scope: !3970)
!3992 = !DILocation(line: 910, column: 6, scope: !3970)
!3993 = !DILocation(line: 910, column: 11, scope: !3970)
!3994 = !DILocation(line: 912, column: 2, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3970, file: !30, line: 912, column: 2)
!3996 = !DILocation(line: 912, column: 2, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3995, file: !30, line: 912, column: 2)
!3998 = !DILocation(line: 912, column: 2, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3997, file: !30, line: 912, column: 2)
!4000 = !DILocation(line: 912, column: 2, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3999, file: !30, line: 912, column: 2)
!4002 = !DILocation(line: 913, column: 10, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4001, file: !30, line: 912, column: 70)
!4004 = !DILocation(line: 913, column: 15, scope: !4003)
!4005 = !DILocation(line: 913, column: 8, scope: !4003)
!4006 = !DILocation(line: 915, column: 7, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4003, file: !30, line: 915, column: 7)
!4008 = !DILocation(line: 915, column: 15, scope: !4007)
!4009 = !DILocation(line: 915, column: 12, scope: !4007)
!4010 = !DILocation(line: 915, column: 7, scope: !4003)
!4011 = !DILocation(line: 916, column: 11, scope: !4007)
!4012 = !DILocation(line: 916, column: 4, scope: !4007)
!4013 = !DILocation(line: 918, column: 10, scope: !4003)
!4014 = !DILocation(line: 918, column: 8, scope: !4003)
!4015 = distinct !{!4015, !3994, !4016, !3060, !3061}
!4016 = !DILocation(line: 919, column: 2, scope: !3995)
!4017 = !DILocation(line: 921, column: 9, scope: !3970)
!4018 = !DILocation(line: 921, column: 2, scope: !3970)
!4019 = !DILocation(line: 922, column: 1, scope: !3970)
!4020 = distinct !DISubprogram(name: "cpufreq_table_find_index_al", scope: !30, file: !30, line: 804, type: !3615, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029}
!4022 = !DILocalVariable(name: "policy", arg: 1, scope: !4020, file: !30, line: 804, type: !97)
!4023 = !DILocalVariable(name: "target_freq", arg: 2, scope: !4020, file: !30, line: 805, type: !7)
!4024 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !4020, file: !30, line: 806, type: !611)
!4025 = !DILocalVariable(name: "table", scope: !4020, file: !30, line: 808, type: !1251)
!4026 = !DILocalVariable(name: "pos", scope: !4020, file: !30, line: 809, type: !1251)
!4027 = !DILocalVariable(name: "freq", scope: !4020, file: !30, line: 810, type: !7)
!4028 = !DILocalVariable(name: "idx", scope: !4020, file: !30, line: 811, type: !87)
!4029 = !DILocalVariable(name: "best", scope: !4020, file: !30, line: 811, type: !87)
!4030 = !DILocation(line: 804, column: 70, scope: !4020)
!4031 = !DILocation(line: 805, column: 25, scope: !4020)
!4032 = !DILocation(line: 806, column: 17, scope: !4020)
!4033 = !DILocation(line: 808, column: 2, scope: !4020)
!4034 = !DILocation(line: 808, column: 34, scope: !4020)
!4035 = !DILocation(line: 808, column: 42, scope: !4020)
!4036 = !DILocation(line: 808, column: 50, scope: !4020)
!4037 = !DILocation(line: 809, column: 2, scope: !4020)
!4038 = !DILocation(line: 809, column: 34, scope: !4020)
!4039 = !DILocation(line: 810, column: 2, scope: !4020)
!4040 = !DILocation(line: 810, column: 15, scope: !4020)
!4041 = !DILocation(line: 811, column: 2, scope: !4020)
!4042 = !DILocation(line: 811, column: 6, scope: !4020)
!4043 = !DILocation(line: 811, column: 11, scope: !4020)
!4044 = !DILocation(line: 813, column: 2, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4020, file: !30, line: 813, column: 2)
!4046 = !DILocation(line: 813, column: 2, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4045, file: !30, line: 813, column: 2)
!4048 = !DILocation(line: 813, column: 2, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4047, file: !30, line: 813, column: 2)
!4050 = !DILocation(line: 813, column: 2, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4049, file: !30, line: 813, column: 2)
!4052 = !DILocation(line: 814, column: 10, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4051, file: !30, line: 813, column: 70)
!4054 = !DILocation(line: 814, column: 15, scope: !4053)
!4055 = !DILocation(line: 814, column: 8, scope: !4053)
!4056 = !DILocation(line: 816, column: 7, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4053, file: !30, line: 816, column: 7)
!4058 = !DILocation(line: 816, column: 15, scope: !4057)
!4059 = !DILocation(line: 816, column: 12, scope: !4057)
!4060 = !DILocation(line: 816, column: 7, scope: !4053)
!4061 = !DILocation(line: 817, column: 11, scope: !4057)
!4062 = !DILocation(line: 817, column: 4, scope: !4057)
!4063 = !DILocation(line: 819, column: 10, scope: !4053)
!4064 = !DILocation(line: 819, column: 8, scope: !4053)
!4065 = distinct !{!4065, !4044, !4066, !3060, !3061}
!4066 = !DILocation(line: 820, column: 2, scope: !4045)
!4067 = !DILocation(line: 822, column: 9, scope: !4020)
!4068 = !DILocation(line: 822, column: 2, scope: !4020)
!4069 = !DILocation(line: 823, column: 1, scope: !4020)
!4070 = distinct !DISubprogram(name: "cpufreq_table_find_index_dl", scope: !30, file: !30, line: 826, type: !3615, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4072 = !DILocalVariable(name: "policy", arg: 1, scope: !4070, file: !30, line: 826, type: !97)
!4073 = !DILocalVariable(name: "target_freq", arg: 2, scope: !4070, file: !30, line: 827, type: !7)
!4074 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !4070, file: !30, line: 828, type: !611)
!4075 = !DILocalVariable(name: "table", scope: !4070, file: !30, line: 830, type: !1251)
!4076 = !DILocalVariable(name: "pos", scope: !4070, file: !30, line: 831, type: !1251)
!4077 = !DILocalVariable(name: "freq", scope: !4070, file: !30, line: 832, type: !7)
!4078 = !DILocalVariable(name: "idx", scope: !4070, file: !30, line: 833, type: !87)
!4079 = !DILocalVariable(name: "best", scope: !4070, file: !30, line: 833, type: !87)
!4080 = !DILocation(line: 826, column: 70, scope: !4070)
!4081 = !DILocation(line: 827, column: 25, scope: !4070)
!4082 = !DILocation(line: 828, column: 17, scope: !4070)
!4083 = !DILocation(line: 830, column: 2, scope: !4070)
!4084 = !DILocation(line: 830, column: 34, scope: !4070)
!4085 = !DILocation(line: 830, column: 42, scope: !4070)
!4086 = !DILocation(line: 830, column: 50, scope: !4070)
!4087 = !DILocation(line: 831, column: 2, scope: !4070)
!4088 = !DILocation(line: 831, column: 34, scope: !4070)
!4089 = !DILocation(line: 832, column: 2, scope: !4070)
!4090 = !DILocation(line: 832, column: 15, scope: !4070)
!4091 = !DILocation(line: 833, column: 2, scope: !4070)
!4092 = !DILocation(line: 833, column: 6, scope: !4070)
!4093 = !DILocation(line: 833, column: 11, scope: !4070)
!4094 = !DILocation(line: 835, column: 2, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4070, file: !30, line: 835, column: 2)
!4096 = !DILocation(line: 835, column: 2, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4095, file: !30, line: 835, column: 2)
!4098 = !DILocation(line: 835, column: 2, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !30, line: 835, column: 2)
!4100 = !DILocation(line: 835, column: 2, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4099, file: !30, line: 835, column: 2)
!4102 = !DILocation(line: 836, column: 10, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4101, file: !30, line: 835, column: 70)
!4104 = !DILocation(line: 836, column: 15, scope: !4103)
!4105 = !DILocation(line: 836, column: 8, scope: !4103)
!4106 = !DILocation(line: 838, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !30, line: 838, column: 7)
!4108 = !DILocation(line: 838, column: 15, scope: !4107)
!4109 = !DILocation(line: 838, column: 12, scope: !4107)
!4110 = !DILocation(line: 838, column: 7, scope: !4103)
!4111 = !DILocation(line: 839, column: 11, scope: !4107)
!4112 = !DILocation(line: 839, column: 4, scope: !4107)
!4113 = !DILocation(line: 841, column: 7, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4103, file: !30, line: 841, column: 7)
!4115 = !DILocation(line: 841, column: 14, scope: !4114)
!4116 = !DILocation(line: 841, column: 12, scope: !4114)
!4117 = !DILocation(line: 841, column: 7, scope: !4103)
!4118 = !DILocation(line: 842, column: 11, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4114, file: !30, line: 841, column: 27)
!4120 = !DILocation(line: 842, column: 9, scope: !4119)
!4121 = !DILocation(line: 843, column: 4, scope: !4119)
!4122 = !DILocation(line: 847, column: 7, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4103, file: !30, line: 847, column: 7)
!4124 = !DILocation(line: 847, column: 12, scope: !4123)
!4125 = !DILocation(line: 847, column: 7, scope: !4103)
!4126 = !DILocation(line: 848, column: 11, scope: !4123)
!4127 = !DILocation(line: 848, column: 4, scope: !4123)
!4128 = !DILocation(line: 850, column: 10, scope: !4103)
!4129 = !DILocation(line: 850, column: 3, scope: !4103)
!4130 = distinct !{!4130, !4094, !4131, !3060, !3061}
!4131 = !DILocation(line: 851, column: 2, scope: !4095)
!4132 = !DILocation(line: 853, column: 9, scope: !4070)
!4133 = !DILocation(line: 853, column: 2, scope: !4070)
!4134 = !DILocation(line: 854, column: 1, scope: !4070)
!4135 = !DISubprogram(name: "cpufreq_register_governor", scope: !30, file: !30, line: 619, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!87, !124}
!4138 = distinct !DISubprogram(name: "od_dbs_update", scope: !3, file: !3, line: 172, type: !2775, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4139)
!4139 = !{!4140, !4141, !4142, !4143, !4144}
!4140 = !DILocalVariable(name: "policy", arg: 1, scope: !4138, file: !3, line: 172, type: !97)
!4141 = !DILocalVariable(name: "policy_dbs", scope: !4138, file: !3, line: 174, type: !2781)
!4142 = !DILocalVariable(name: "dbs_data", scope: !4138, file: !3, line: 175, type: !2756)
!4143 = !DILocalVariable(name: "dbs_info", scope: !4138, file: !3, line: 176, type: !89)
!4144 = !DILocalVariable(name: "sample_type", scope: !4138, file: !3, line: 177, type: !87)
!4145 = !DILocation(line: 172, column: 58, scope: !4138)
!4146 = !DILocation(line: 174, column: 2, scope: !4138)
!4147 = !DILocation(line: 174, column: 26, scope: !4138)
!4148 = !DILocation(line: 174, column: 39, scope: !4138)
!4149 = !DILocation(line: 174, column: 47, scope: !4138)
!4150 = !DILocation(line: 175, column: 2, scope: !4138)
!4151 = !DILocation(line: 175, column: 19, scope: !4138)
!4152 = !DILocation(line: 175, column: 30, scope: !4138)
!4153 = !DILocation(line: 175, column: 42, scope: !4138)
!4154 = !DILocation(line: 176, column: 2, scope: !4138)
!4155 = !DILocation(line: 176, column: 29, scope: !4138)
!4156 = !DILocation(line: 176, column: 52, scope: !4138)
!4157 = !DILocation(line: 176, column: 40, scope: !4138)
!4158 = !DILocation(line: 177, column: 2, scope: !4138)
!4159 = !DILocation(line: 177, column: 6, scope: !4138)
!4160 = !DILocation(line: 177, column: 20, scope: !4138)
!4161 = !DILocation(line: 177, column: 30, scope: !4138)
!4162 = !DILocation(line: 180, column: 2, scope: !4138)
!4163 = !DILocation(line: 180, column: 12, scope: !4138)
!4164 = !DILocation(line: 180, column: 24, scope: !4138)
!4165 = !DILocation(line: 185, column: 6, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 185, column: 6)
!4167 = !DILocation(line: 185, column: 18, scope: !4166)
!4168 = !DILocation(line: 185, column: 35, scope: !4166)
!4169 = !DILocation(line: 185, column: 38, scope: !4166)
!4170 = !DILocation(line: 185, column: 50, scope: !4166)
!4171 = !DILocation(line: 185, column: 66, scope: !4166)
!4172 = !DILocation(line: 185, column: 6, scope: !4138)
!4173 = !DILocation(line: 186, column: 27, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 185, column: 71)
!4175 = !DILocation(line: 186, column: 35, scope: !4174)
!4176 = !DILocation(line: 186, column: 45, scope: !4174)
!4177 = !DILocation(line: 186, column: 3, scope: !4174)
!4178 = !DILocation(line: 188, column: 10, scope: !4174)
!4179 = !DILocation(line: 188, column: 20, scope: !4174)
!4180 = !DILocation(line: 188, column: 3, scope: !4174)
!4181 = !DILocation(line: 191, column: 12, scope: !4138)
!4182 = !DILocation(line: 191, column: 2, scope: !4138)
!4183 = !DILocation(line: 193, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 193, column: 6)
!4185 = !DILocation(line: 193, column: 16, scope: !4184)
!4186 = !DILocation(line: 193, column: 6, scope: !4138)
!4187 = !DILocation(line: 195, column: 3, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 193, column: 25)
!4189 = !DILocation(line: 195, column: 13, scope: !4188)
!4190 = !DILocation(line: 195, column: 25, scope: !4188)
!4191 = !DILocation(line: 196, column: 10, scope: !4188)
!4192 = !DILocation(line: 196, column: 20, scope: !4188)
!4193 = !DILocation(line: 196, column: 3, scope: !4188)
!4194 = !DILocation(line: 199, column: 9, scope: !4138)
!4195 = !DILocation(line: 199, column: 19, scope: !4138)
!4196 = !DILocation(line: 199, column: 35, scope: !4138)
!4197 = !DILocation(line: 199, column: 47, scope: !4138)
!4198 = !DILocation(line: 199, column: 33, scope: !4138)
!4199 = !DILocation(line: 199, column: 2, scope: !4138)
!4200 = !DILocation(line: 200, column: 1, scope: !4138)
!4201 = distinct !DISubprogram(name: "od_alloc", scope: !3, file: !3, line: 344, type: !2779, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4202)
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "dbs_info", scope: !4201, file: !3, line: 346, type: !89)
!4204 = !DILocation(line: 346, column: 2, scope: !4201)
!4205 = !DILocation(line: 346, column: 29, scope: !4201)
!4206 = !DILocation(line: 348, column: 13, scope: !4201)
!4207 = !DILocation(line: 348, column: 11, scope: !4201)
!4208 = !DILocation(line: 349, column: 9, scope: !4201)
!4209 = !DILocation(line: 349, column: 21, scope: !4201)
!4210 = !DILocation(line: 349, column: 31, scope: !4201)
!4211 = !DILocation(line: 350, column: 1, scope: !4201)
!4212 = !DILocation(line: 349, column: 2, scope: !4201)
!4213 = distinct !DISubprogram(name: "od_free", scope: !3, file: !3, line: 352, type: !2784, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4214)
!4214 = !{!4215}
!4215 = !DILocalVariable(name: "policy_dbs", arg: 1, scope: !4213, file: !3, line: 352, type: !2781)
!4216 = !DILocation(line: 352, column: 45, scope: !4213)
!4217 = !DILocation(line: 354, column: 20, scope: !4213)
!4218 = !DILocation(line: 354, column: 8, scope: !4213)
!4219 = !DILocation(line: 354, column: 2, scope: !4213)
!4220 = !DILocation(line: 355, column: 1, scope: !4213)
!4221 = !DILocation(line: 357, column: 37, scope: !2932)
!4222 = !DILocation(line: 359, column: 2, scope: !2932)
!4223 = !DILocation(line: 359, column: 24, scope: !2932)
!4224 = !DILocation(line: 360, column: 2, scope: !2932)
!4225 = !DILocation(line: 360, column: 6, scope: !2932)
!4226 = !DILocation(line: 361, column: 2, scope: !2932)
!4227 = !DILocation(line: 361, column: 6, scope: !2932)
!4228 = !DILocation(line: 363, column: 11, scope: !2932)
!4229 = !DILocation(line: 363, column: 9, scope: !2932)
!4230 = !DILocation(line: 364, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 364, column: 6)
!4232 = !DILocation(line: 364, column: 6, scope: !2932)
!4233 = !DILocation(line: 365, column: 3, scope: !4231)
!4234 = !DILocation(line: 367, column: 8, scope: !2945)
!4235 = !DILocation(line: 367, column: 8, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 367, column: 8)
!4237 = !{i64 2154176245}
!4238 = !DILocation(line: 367, column: 8, scope: !2944)
!4239 = !DILocation(line: 367, column: 8, scope: !2943)
!4240 = !DILocation(line: 367, column: 8, scope: !2947)
!4241 = !DILocation(line: 367, column: 8, scope: !2949)
!4242 = !{i64 2154178883}
!4243 = !DILocation(line: 367, column: 6, scope: !2932)
!4244 = !DILocation(line: 368, column: 35, scope: !2932)
!4245 = !DILocation(line: 368, column: 14, scope: !2932)
!4246 = !DILocation(line: 368, column: 12, scope: !2932)
!4247 = !DILocation(line: 369, column: 2, scope: !2932)
!4248 = !DILocation(line: 369, column: 2, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 369, column: 2)
!4250 = !{i64 2154179812}
!4251 = !DILocation(line: 369, column: 2, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 369, column: 2)
!4253 = !DILocation(line: 369, column: 2, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 369, column: 2)
!4255 = !{i64 2154179994}
!4256 = !DILocation(line: 370, column: 6, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 370, column: 6)
!4258 = !DILocation(line: 370, column: 16, scope: !4257)
!4259 = !DILocation(line: 370, column: 6, scope: !2932)
!4260 = !DILocation(line: 372, column: 3, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 370, column: 26)
!4262 = !DILocation(line: 372, column: 13, scope: !4261)
!4263 = !DILocation(line: 372, column: 26, scope: !4261)
!4264 = !DILocation(line: 373, column: 2, scope: !4261)
!4265 = !DILocation(line: 374, column: 3, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 373, column: 9)
!4267 = !DILocation(line: 374, column: 13, scope: !4266)
!4268 = !DILocation(line: 374, column: 26, scope: !4266)
!4269 = !DILocation(line: 377, column: 2, scope: !2932)
!4270 = !DILocation(line: 377, column: 12, scope: !2932)
!4271 = !DILocation(line: 377, column: 33, scope: !2932)
!4272 = !DILocation(line: 378, column: 2, scope: !2932)
!4273 = !DILocation(line: 378, column: 12, scope: !2932)
!4274 = !DILocation(line: 378, column: 29, scope: !2932)
!4275 = !DILocation(line: 379, column: 27, scope: !2932)
!4276 = !DILocation(line: 379, column: 2, scope: !2932)
!4277 = !DILocation(line: 379, column: 10, scope: !2932)
!4278 = !DILocation(line: 379, column: 25, scope: !2932)
!4279 = !DILocation(line: 380, column: 25, scope: !2932)
!4280 = !DILocation(line: 380, column: 2, scope: !2932)
!4281 = !DILocation(line: 380, column: 12, scope: !2932)
!4282 = !DILocation(line: 380, column: 23, scope: !2932)
!4283 = !DILocation(line: 382, column: 21, scope: !2932)
!4284 = !DILocation(line: 382, column: 2, scope: !2932)
!4285 = !DILocation(line: 382, column: 12, scope: !2932)
!4286 = !DILocation(line: 382, column: 19, scope: !2932)
!4287 = !DILocation(line: 383, column: 2, scope: !2932)
!4288 = !DILocation(line: 384, column: 1, scope: !2932)
!4289 = distinct !DISubprogram(name: "od_exit", scope: !3, file: !3, line: 386, type: !2792, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4290)
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "dbs_data", arg: 1, scope: !4289, file: !3, line: 386, type: !2756)
!4292 = !DILocation(line: 386, column: 38, scope: !4289)
!4293 = !DILocation(line: 388, column: 8, scope: !4289)
!4294 = !DILocation(line: 388, column: 18, scope: !4289)
!4295 = !DILocation(line: 388, column: 2, scope: !4289)
!4296 = !DILocation(line: 389, column: 1, scope: !4289)
!4297 = distinct !DISubprogram(name: "od_start", scope: !3, file: !3, line: 391, type: !138, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4298)
!4298 = !{!4299, !4300}
!4299 = !DILocalVariable(name: "policy", arg: 1, scope: !4297, file: !3, line: 391, type: !97)
!4300 = !DILocalVariable(name: "dbs_info", scope: !4297, file: !3, line: 393, type: !89)
!4301 = !DILocation(line: 391, column: 45, scope: !4297)
!4302 = !DILocation(line: 393, column: 2, scope: !4297)
!4303 = !DILocation(line: 393, column: 29, scope: !4297)
!4304 = !DILocation(line: 393, column: 52, scope: !4297)
!4305 = !DILocation(line: 393, column: 60, scope: !4297)
!4306 = !DILocation(line: 393, column: 40, scope: !4297)
!4307 = !DILocation(line: 395, column: 2, scope: !4297)
!4308 = !DILocation(line: 395, column: 12, scope: !4297)
!4309 = !DILocation(line: 395, column: 24, scope: !4297)
!4310 = !DILocation(line: 396, column: 31, scope: !4297)
!4311 = !DILocation(line: 396, column: 2, scope: !4297)
!4312 = !DILocation(line: 397, column: 1, scope: !4297)
!4313 = distinct !DISubprogram(name: "sampling_rate_show", scope: !3, file: !3, line: 317, type: !2875, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4314)
!4314 = !{!4315, !4316, !4317}
!4315 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4313, file: !3, line: 317, type: !2877)
!4316 = !DILocalVariable(name: "buf", arg: 2, scope: !4313, file: !3, line: 317, type: !152)
!4317 = !DILocalVariable(name: "dbs_data", scope: !4313, file: !3, line: 317, type: !2756)
!4318 = !DILocation(line: 317, column: 1, scope: !4313)
!4319 = distinct !DISubprogram(name: "to_dbs_data", scope: !59, file: !59, line: 49, type: !4320, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!2756, !2877}
!4322 = !{!4323, !4324}
!4323 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4319, file: !59, line: 49, type: !2877)
!4324 = !DILocalVariable(name: "__mptr", scope: !4325, file: !59, line: 51, type: !74)
!4325 = distinct !DILexicalBlock(scope: !4319, file: !59, line: 51, column: 9)
!4326 = !DILocation(line: 49, column: 65, scope: !4319)
!4327 = !DILocation(line: 51, column: 9, scope: !4325)
!4328 = !DILocation(line: 51, column: 9, scope: !4319)
!4329 = !DILocation(line: 51, column: 2, scope: !4319)
!4330 = !DISubprogram(name: "sprintf", scope: !4331, file: !4331, line: 10, type: !4332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4331 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!87, !152, !181, null}
!4334 = distinct !DISubprogram(name: "up_threshold_show", scope: !3, file: !3, line: 318, type: !2875, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4335)
!4335 = !{!4336, !4337, !4338}
!4336 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4334, file: !3, line: 318, type: !2877)
!4337 = !DILocalVariable(name: "buf", arg: 2, scope: !4334, file: !3, line: 318, type: !152)
!4338 = !DILocalVariable(name: "dbs_data", scope: !4334, file: !3, line: 318, type: !2756)
!4339 = !DILocation(line: 318, column: 1, scope: !4334)
!4340 = distinct !DISubprogram(name: "up_threshold_store", scope: !3, file: !3, line: 223, type: !2880, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4341)
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347}
!4342 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4340, file: !3, line: 223, type: !2877)
!4343 = !DILocalVariable(name: "buf", arg: 2, scope: !4340, file: !3, line: 224, type: !181)
!4344 = !DILocalVariable(name: "count", arg: 3, scope: !4340, file: !3, line: 224, type: !303)
!4345 = !DILocalVariable(name: "dbs_data", scope: !4340, file: !3, line: 226, type: !2756)
!4346 = !DILocalVariable(name: "input", scope: !4340, file: !3, line: 227, type: !7)
!4347 = !DILocalVariable(name: "ret", scope: !4340, file: !3, line: 228, type: !87)
!4348 = !DILocation(line: 223, column: 56, scope: !4340)
!4349 = !DILocation(line: 224, column: 19, scope: !4340)
!4350 = !DILocation(line: 224, column: 31, scope: !4340)
!4351 = !DILocation(line: 226, column: 2, scope: !4340)
!4352 = !DILocation(line: 226, column: 19, scope: !4340)
!4353 = !DILocation(line: 226, column: 42, scope: !4340)
!4354 = !DILocation(line: 226, column: 30, scope: !4340)
!4355 = !DILocation(line: 227, column: 2, scope: !4340)
!4356 = !DILocation(line: 227, column: 15, scope: !4340)
!4357 = !DILocation(line: 228, column: 2, scope: !4340)
!4358 = !DILocation(line: 228, column: 6, scope: !4340)
!4359 = !DILocation(line: 229, column: 15, scope: !4340)
!4360 = !DILocation(line: 229, column: 8, scope: !4340)
!4361 = !DILocation(line: 229, column: 6, scope: !4340)
!4362 = !DILocation(line: 231, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 231, column: 6)
!4364 = !DILocation(line: 231, column: 10, scope: !4363)
!4365 = !DILocation(line: 231, column: 15, scope: !4363)
!4366 = !DILocation(line: 231, column: 18, scope: !4363)
!4367 = !DILocation(line: 231, column: 24, scope: !4363)
!4368 = !DILocation(line: 231, column: 53, scope: !4363)
!4369 = !DILocation(line: 232, column: 4, scope: !4363)
!4370 = !DILocation(line: 232, column: 10, scope: !4363)
!4371 = !DILocation(line: 231, column: 6, scope: !4340)
!4372 = !DILocation(line: 233, column: 3, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 232, column: 40)
!4374 = !DILocation(line: 236, column: 27, scope: !4340)
!4375 = !DILocation(line: 236, column: 2, scope: !4340)
!4376 = !DILocation(line: 236, column: 12, scope: !4340)
!4377 = !DILocation(line: 236, column: 25, scope: !4340)
!4378 = !DILocation(line: 237, column: 9, scope: !4340)
!4379 = !DILocation(line: 237, column: 2, scope: !4340)
!4380 = !DILocation(line: 238, column: 1, scope: !4340)
!4381 = !DISubprogram(name: "sscanf", scope: !4331, file: !4331, line: 20, type: !4382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!87, !181, !181, null}
!4384 = distinct !DISubprogram(name: "sampling_down_factor_show", scope: !3, file: !3, line: 319, type: !2875, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4384, file: !3, line: 319, type: !2877)
!4387 = !DILocalVariable(name: "buf", arg: 2, scope: !4384, file: !3, line: 319, type: !152)
!4388 = !DILocalVariable(name: "dbs_data", scope: !4384, file: !3, line: 319, type: !2756)
!4389 = !DILocation(line: 319, column: 1, scope: !4384)
!4390 = distinct !DISubprogram(name: "sampling_down_factor_store", scope: !3, file: !3, line: 240, type: !2880, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4402}
!4392 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4390, file: !3, line: 240, type: !2877)
!4393 = !DILocalVariable(name: "buf", arg: 2, scope: !4390, file: !3, line: 241, type: !181)
!4394 = !DILocalVariable(name: "count", arg: 3, scope: !4390, file: !3, line: 241, type: !303)
!4395 = !DILocalVariable(name: "dbs_data", scope: !4390, file: !3, line: 243, type: !2756)
!4396 = !DILocalVariable(name: "policy_dbs", scope: !4390, file: !3, line: 244, type: !2781)
!4397 = !DILocalVariable(name: "input", scope: !4390, file: !3, line: 245, type: !7)
!4398 = !DILocalVariable(name: "ret", scope: !4390, file: !3, line: 246, type: !87)
!4399 = !DILocalVariable(name: "__mptr", scope: !4400, file: !3, line: 255, type: !74)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 255, column: 2)
!4401 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 255, column: 2)
!4402 = !DILocalVariable(name: "__mptr", scope: !4403, file: !3, line: 255, type: !74)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 255, column: 2)
!4404 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 255, column: 2)
!4405 = !DILocation(line: 240, column: 64, scope: !4390)
!4406 = !DILocation(line: 241, column: 20, scope: !4390)
!4407 = !DILocation(line: 241, column: 32, scope: !4390)
!4408 = !DILocation(line: 243, column: 2, scope: !4390)
!4409 = !DILocation(line: 243, column: 19, scope: !4390)
!4410 = !DILocation(line: 243, column: 42, scope: !4390)
!4411 = !DILocation(line: 243, column: 30, scope: !4390)
!4412 = !DILocation(line: 244, column: 2, scope: !4390)
!4413 = !DILocation(line: 244, column: 26, scope: !4390)
!4414 = !DILocation(line: 245, column: 2, scope: !4390)
!4415 = !DILocation(line: 245, column: 15, scope: !4390)
!4416 = !DILocation(line: 246, column: 2, scope: !4390)
!4417 = !DILocation(line: 246, column: 6, scope: !4390)
!4418 = !DILocation(line: 247, column: 15, scope: !4390)
!4419 = !DILocation(line: 247, column: 8, scope: !4390)
!4420 = !DILocation(line: 247, column: 6, scope: !4390)
!4421 = !DILocation(line: 249, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 249, column: 6)
!4423 = !DILocation(line: 249, column: 10, scope: !4422)
!4424 = !DILocation(line: 249, column: 15, scope: !4422)
!4425 = !DILocation(line: 249, column: 18, scope: !4422)
!4426 = !DILocation(line: 249, column: 24, scope: !4422)
!4427 = !DILocation(line: 249, column: 51, scope: !4422)
!4428 = !DILocation(line: 249, column: 54, scope: !4422)
!4429 = !DILocation(line: 249, column: 60, scope: !4422)
!4430 = !DILocation(line: 249, column: 6, scope: !4390)
!4431 = !DILocation(line: 250, column: 3, scope: !4422)
!4432 = !DILocation(line: 252, column: 35, scope: !4390)
!4433 = !DILocation(line: 252, column: 2, scope: !4390)
!4434 = !DILocation(line: 252, column: 12, scope: !4390)
!4435 = !DILocation(line: 252, column: 33, scope: !4390)
!4436 = !DILocation(line: 255, column: 2, scope: !4400)
!4437 = !DILocation(line: 255, column: 2, scope: !4401)
!4438 = !DILocation(line: 255, column: 2, scope: !4404)
!4439 = !DILocation(line: 260, column: 15, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 255, column: 64)
!4441 = !DILocation(line: 260, column: 27, scope: !4440)
!4442 = !DILocation(line: 260, column: 3, scope: !4440)
!4443 = !DILocation(line: 261, column: 3, scope: !4440)
!4444 = !DILocation(line: 261, column: 15, scope: !4440)
!4445 = !DILocation(line: 261, column: 25, scope: !4440)
!4446 = !DILocation(line: 262, column: 17, scope: !4440)
!4447 = !DILocation(line: 262, column: 29, scope: !4440)
!4448 = !DILocation(line: 262, column: 3, scope: !4440)
!4449 = !DILocation(line: 263, column: 2, scope: !4440)
!4450 = !DILocation(line: 255, column: 2, scope: !4403)
!4451 = distinct !{!4451, !4437, !4452, !3060, !3061}
!4452 = !DILocation(line: 263, column: 2, scope: !4401)
!4453 = !DILocation(line: 265, column: 9, scope: !4390)
!4454 = !DILocation(line: 265, column: 2, scope: !4390)
!4455 = !DILocation(line: 266, column: 1, scope: !4390)
!4456 = !DISubprogram(name: "mutex_lock", scope: !513, file: !513, line: 227, type: !4457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !4459}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!4460 = !DISubprogram(name: "mutex_unlock", scope: !513, file: !513, line: 246, type: !4457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4461 = distinct !DISubprogram(name: "ignore_nice_load_show", scope: !3, file: !3, line: 320, type: !2875, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4461, file: !3, line: 320, type: !2877)
!4464 = !DILocalVariable(name: "buf", arg: 2, scope: !4461, file: !3, line: 320, type: !152)
!4465 = !DILocalVariable(name: "dbs_data", scope: !4461, file: !3, line: 320, type: !2756)
!4466 = !DILocation(line: 320, column: 1, scope: !4461)
!4467 = distinct !DISubprogram(name: "ignore_nice_load_store", scope: !3, file: !3, line: 268, type: !2880, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474}
!4469 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4467, file: !3, line: 268, type: !2877)
!4470 = !DILocalVariable(name: "buf", arg: 2, scope: !4467, file: !3, line: 269, type: !181)
!4471 = !DILocalVariable(name: "count", arg: 3, scope: !4467, file: !3, line: 269, type: !303)
!4472 = !DILocalVariable(name: "dbs_data", scope: !4467, file: !3, line: 271, type: !2756)
!4473 = !DILocalVariable(name: "input", scope: !4467, file: !3, line: 272, type: !7)
!4474 = !DILocalVariable(name: "ret", scope: !4467, file: !3, line: 273, type: !87)
!4475 = !DILocation(line: 268, column: 60, scope: !4467)
!4476 = !DILocation(line: 269, column: 23, scope: !4467)
!4477 = !DILocation(line: 269, column: 35, scope: !4467)
!4478 = !DILocation(line: 271, column: 2, scope: !4467)
!4479 = !DILocation(line: 271, column: 19, scope: !4467)
!4480 = !DILocation(line: 271, column: 42, scope: !4467)
!4481 = !DILocation(line: 271, column: 30, scope: !4467)
!4482 = !DILocation(line: 272, column: 2, scope: !4467)
!4483 = !DILocation(line: 272, column: 15, scope: !4467)
!4484 = !DILocation(line: 273, column: 2, scope: !4467)
!4485 = !DILocation(line: 273, column: 6, scope: !4467)
!4486 = !DILocation(line: 275, column: 15, scope: !4467)
!4487 = !DILocation(line: 275, column: 8, scope: !4467)
!4488 = !DILocation(line: 275, column: 6, scope: !4467)
!4489 = !DILocation(line: 276, column: 6, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 276, column: 6)
!4491 = !DILocation(line: 276, column: 10, scope: !4490)
!4492 = !DILocation(line: 276, column: 6, scope: !4467)
!4493 = !DILocation(line: 277, column: 3, scope: !4490)
!4494 = !DILocation(line: 279, column: 6, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 279, column: 6)
!4496 = !DILocation(line: 279, column: 12, scope: !4495)
!4497 = !DILocation(line: 279, column: 6, scope: !4467)
!4498 = !DILocation(line: 280, column: 9, scope: !4495)
!4499 = !DILocation(line: 280, column: 3, scope: !4495)
!4500 = !DILocation(line: 282, column: 6, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 282, column: 6)
!4502 = !DILocation(line: 282, column: 15, scope: !4501)
!4503 = !DILocation(line: 282, column: 25, scope: !4501)
!4504 = !DILocation(line: 282, column: 12, scope: !4501)
!4505 = !DILocation(line: 282, column: 6, scope: !4467)
!4506 = !DILocation(line: 283, column: 10, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 282, column: 43)
!4508 = !DILocation(line: 283, column: 3, scope: !4507)
!4509 = !DILocation(line: 285, column: 31, scope: !4467)
!4510 = !DILocation(line: 285, column: 2, scope: !4467)
!4511 = !DILocation(line: 285, column: 12, scope: !4467)
!4512 = !DILocation(line: 285, column: 29, scope: !4467)
!4513 = !DILocation(line: 288, column: 22, scope: !4467)
!4514 = !DILocation(line: 288, column: 2, scope: !4467)
!4515 = !DILocation(line: 290, column: 9, scope: !4467)
!4516 = !DILocation(line: 290, column: 2, scope: !4467)
!4517 = !DILocation(line: 291, column: 1, scope: !4467)
!4518 = !DISubprogram(name: "gov_update_cpu_data", scope: !59, file: !59, line: 180, type: !2792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = distinct !DISubprogram(name: "powersave_bias_show", scope: !3, file: !3, line: 322, type: !2875, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4520)
!4520 = !{!4521, !4522, !4523, !4524}
!4521 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4519, file: !3, line: 322, type: !2877)
!4522 = !DILocalVariable(name: "buf", arg: 2, scope: !4519, file: !3, line: 322, type: !152)
!4523 = !DILocalVariable(name: "dbs_data", scope: !4519, file: !3, line: 322, type: !2756)
!4524 = !DILocalVariable(name: "tuners", scope: !4519, file: !3, line: 322, type: !2936)
!4525 = !DILocation(line: 322, column: 1, scope: !4519)
!4526 = distinct !DISubprogram(name: "powersave_bias_store", scope: !3, file: !3, line: 293, type: !2880, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4539}
!4528 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4526, file: !3, line: 293, type: !2877)
!4529 = !DILocalVariable(name: "buf", arg: 2, scope: !4526, file: !3, line: 294, type: !181)
!4530 = !DILocalVariable(name: "count", arg: 3, scope: !4526, file: !3, line: 294, type: !303)
!4531 = !DILocalVariable(name: "dbs_data", scope: !4526, file: !3, line: 296, type: !2756)
!4532 = !DILocalVariable(name: "od_tuners", scope: !4526, file: !3, line: 297, type: !2936)
!4533 = !DILocalVariable(name: "policy_dbs", scope: !4526, file: !3, line: 298, type: !2781)
!4534 = !DILocalVariable(name: "input", scope: !4526, file: !3, line: 299, type: !7)
!4535 = !DILocalVariable(name: "ret", scope: !4526, file: !3, line: 300, type: !87)
!4536 = !DILocalVariable(name: "__mptr", scope: !4537, file: !3, line: 311, type: !74)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 311, column: 2)
!4538 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 311, column: 2)
!4539 = !DILocalVariable(name: "__mptr", scope: !4540, file: !3, line: 311, type: !74)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 311, column: 2)
!4541 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 311, column: 2)
!4542 = !DILocation(line: 293, column: 58, scope: !4526)
!4543 = !DILocation(line: 294, column: 21, scope: !4526)
!4544 = !DILocation(line: 294, column: 33, scope: !4526)
!4545 = !DILocation(line: 296, column: 2, scope: !4526)
!4546 = !DILocation(line: 296, column: 19, scope: !4526)
!4547 = !DILocation(line: 296, column: 42, scope: !4526)
!4548 = !DILocation(line: 296, column: 30, scope: !4526)
!4549 = !DILocation(line: 297, column: 2, scope: !4526)
!4550 = !DILocation(line: 297, column: 24, scope: !4526)
!4551 = !DILocation(line: 297, column: 36, scope: !4526)
!4552 = !DILocation(line: 297, column: 46, scope: !4526)
!4553 = !DILocation(line: 298, column: 2, scope: !4526)
!4554 = !DILocation(line: 298, column: 26, scope: !4526)
!4555 = !DILocation(line: 299, column: 2, scope: !4526)
!4556 = !DILocation(line: 299, column: 15, scope: !4526)
!4557 = !DILocation(line: 300, column: 2, scope: !4526)
!4558 = !DILocation(line: 300, column: 6, scope: !4526)
!4559 = !DILocation(line: 301, column: 15, scope: !4526)
!4560 = !DILocation(line: 301, column: 8, scope: !4526)
!4561 = !DILocation(line: 301, column: 6, scope: !4526)
!4562 = !DILocation(line: 303, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 303, column: 6)
!4564 = !DILocation(line: 303, column: 10, scope: !4563)
!4565 = !DILocation(line: 303, column: 6, scope: !4526)
!4566 = !DILocation(line: 304, column: 3, scope: !4563)
!4567 = !DILocation(line: 306, column: 6, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 306, column: 6)
!4569 = !DILocation(line: 306, column: 12, scope: !4568)
!4570 = !DILocation(line: 306, column: 6, scope: !4526)
!4571 = !DILocation(line: 307, column: 9, scope: !4568)
!4572 = !DILocation(line: 307, column: 3, scope: !4568)
!4573 = !DILocation(line: 309, column: 30, scope: !4526)
!4574 = !DILocation(line: 309, column: 2, scope: !4526)
!4575 = !DILocation(line: 309, column: 13, scope: !4526)
!4576 = !DILocation(line: 309, column: 28, scope: !4526)
!4577 = !DILocation(line: 311, column: 2, scope: !4537)
!4578 = !DILocation(line: 311, column: 2, scope: !4538)
!4579 = !DILocation(line: 311, column: 2, scope: !4541)
!4580 = !DILocation(line: 312, column: 32, scope: !4541)
!4581 = !DILocation(line: 312, column: 44, scope: !4541)
!4582 = !DILocation(line: 312, column: 3, scope: !4541)
!4583 = !DILocation(line: 311, column: 2, scope: !4540)
!4584 = distinct !{!4584, !4578, !4585, !3060, !3061}
!4585 = !DILocation(line: 312, column: 50, scope: !4538)
!4586 = !DILocation(line: 314, column: 9, scope: !4526)
!4587 = !DILocation(line: 314, column: 2, scope: !4526)
!4588 = !DILocation(line: 315, column: 1, scope: !4526)
!4589 = distinct !DISubprogram(name: "ondemand_powersave_bias_init", scope: !3, file: !3, line: 108, type: !138, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4590)
!4590 = !{!4591, !4592}
!4591 = !DILocalVariable(name: "policy", arg: 1, scope: !4589, file: !3, line: 108, type: !97)
!4592 = !DILocalVariable(name: "dbs_info", scope: !4589, file: !3, line: 110, type: !89)
!4593 = !DILocation(line: 108, column: 65, scope: !4589)
!4594 = !DILocation(line: 110, column: 2, scope: !4589)
!4595 = !DILocation(line: 110, column: 29, scope: !4589)
!4596 = !DILocation(line: 110, column: 52, scope: !4589)
!4597 = !DILocation(line: 110, column: 60, scope: !4589)
!4598 = !DILocation(line: 110, column: 40, scope: !4589)
!4599 = !DILocation(line: 112, column: 2, scope: !4589)
!4600 = !DILocation(line: 112, column: 12, scope: !4589)
!4601 = !DILocation(line: 112, column: 20, scope: !4589)
!4602 = !DILocation(line: 113, column: 1, scope: !4589)
!4603 = distinct !DISubprogram(name: "io_is_busy_show", scope: !3, file: !3, line: 321, type: !2875, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4604)
!4604 = !{!4605, !4606, !4607}
!4605 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4603, file: !3, line: 321, type: !2877)
!4606 = !DILocalVariable(name: "buf", arg: 2, scope: !4603, file: !3, line: 321, type: !152)
!4607 = !DILocalVariable(name: "dbs_data", scope: !4603, file: !3, line: 321, type: !2756)
!4608 = !DILocation(line: 321, column: 1, scope: !4603)
!4609 = distinct !DISubprogram(name: "io_is_busy_store", scope: !3, file: !3, line: 205, type: !2880, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615, !4616}
!4611 = !DILocalVariable(name: "attr_set", arg: 1, scope: !4609, file: !3, line: 205, type: !2877)
!4612 = !DILocalVariable(name: "buf", arg: 2, scope: !4609, file: !3, line: 205, type: !181)
!4613 = !DILocalVariable(name: "count", arg: 3, scope: !4609, file: !3, line: 206, type: !303)
!4614 = !DILocalVariable(name: "dbs_data", scope: !4609, file: !3, line: 208, type: !2756)
!4615 = !DILocalVariable(name: "input", scope: !4609, file: !3, line: 209, type: !7)
!4616 = !DILocalVariable(name: "ret", scope: !4609, file: !3, line: 210, type: !87)
!4617 = !DILocation(line: 205, column: 54, scope: !4609)
!4618 = !DILocation(line: 205, column: 76, scope: !4609)
!4619 = !DILocation(line: 206, column: 12, scope: !4609)
!4620 = !DILocation(line: 208, column: 2, scope: !4609)
!4621 = !DILocation(line: 208, column: 19, scope: !4609)
!4622 = !DILocation(line: 208, column: 42, scope: !4609)
!4623 = !DILocation(line: 208, column: 30, scope: !4609)
!4624 = !DILocation(line: 209, column: 2, scope: !4609)
!4625 = !DILocation(line: 209, column: 15, scope: !4609)
!4626 = !DILocation(line: 210, column: 2, scope: !4609)
!4627 = !DILocation(line: 210, column: 6, scope: !4609)
!4628 = !DILocation(line: 212, column: 15, scope: !4609)
!4629 = !DILocation(line: 212, column: 8, scope: !4609)
!4630 = !DILocation(line: 212, column: 6, scope: !4609)
!4631 = !DILocation(line: 213, column: 6, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 213, column: 6)
!4633 = !DILocation(line: 213, column: 10, scope: !4632)
!4634 = !DILocation(line: 213, column: 6, scope: !4609)
!4635 = !DILocation(line: 214, column: 3, scope: !4632)
!4636 = !DILocation(line: 215, column: 27, scope: !4609)
!4637 = !DILocation(line: 215, column: 26, scope: !4609)
!4638 = !DILocation(line: 215, column: 25, scope: !4609)
!4639 = !DILocation(line: 215, column: 2, scope: !4609)
!4640 = !DILocation(line: 215, column: 12, scope: !4609)
!4641 = !DILocation(line: 215, column: 23, scope: !4609)
!4642 = !DILocation(line: 218, column: 22, scope: !4609)
!4643 = !DILocation(line: 218, column: 2, scope: !4609)
!4644 = !DILocation(line: 220, column: 9, scope: !4609)
!4645 = !DILocation(line: 220, column: 2, scope: !4609)
!4646 = !DILocation(line: 221, column: 1, scope: !4609)
!4647 = !DISubprogram(name: "__cpufreq_driver_target", scope: !30, file: !30, line: 613, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4648 = distinct !DISubprogram(name: "od_update", scope: !3, file: !3, line: 136, type: !138, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4659, !4660}
!4650 = !DILocalVariable(name: "policy", arg: 1, scope: !4648, file: !3, line: 136, type: !97)
!4651 = !DILocalVariable(name: "policy_dbs", scope: !4648, file: !3, line: 138, type: !2781)
!4652 = !DILocalVariable(name: "dbs_info", scope: !4648, file: !3, line: 139, type: !89)
!4653 = !DILocalVariable(name: "dbs_data", scope: !4648, file: !3, line: 140, type: !2756)
!4654 = !DILocalVariable(name: "od_tuners", scope: !4648, file: !3, line: 141, type: !2936)
!4655 = !DILocalVariable(name: "load", scope: !4648, file: !3, line: 142, type: !7)
!4656 = !DILocalVariable(name: "freq_next", scope: !4657, file: !3, line: 154, type: !7)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 152, column: 9)
!4658 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 147, column: 6)
!4659 = !DILocalVariable(name: "min_f", scope: !4657, file: !3, line: 154, type: !7)
!4660 = !DILocalVariable(name: "max_f", scope: !4657, file: !3, line: 154, type: !7)
!4661 = !DILocation(line: 136, column: 46, scope: !4648)
!4662 = !DILocation(line: 138, column: 2, scope: !4648)
!4663 = !DILocation(line: 138, column: 26, scope: !4648)
!4664 = !DILocation(line: 138, column: 39, scope: !4648)
!4665 = !DILocation(line: 138, column: 47, scope: !4648)
!4666 = !DILocation(line: 139, column: 2, scope: !4648)
!4667 = !DILocation(line: 139, column: 29, scope: !4648)
!4668 = !DILocation(line: 139, column: 52, scope: !4648)
!4669 = !DILocation(line: 139, column: 40, scope: !4648)
!4670 = !DILocation(line: 140, column: 2, scope: !4648)
!4671 = !DILocation(line: 140, column: 19, scope: !4648)
!4672 = !DILocation(line: 140, column: 30, scope: !4648)
!4673 = !DILocation(line: 140, column: 42, scope: !4648)
!4674 = !DILocation(line: 141, column: 2, scope: !4648)
!4675 = !DILocation(line: 141, column: 24, scope: !4648)
!4676 = !DILocation(line: 141, column: 36, scope: !4648)
!4677 = !DILocation(line: 141, column: 46, scope: !4648)
!4678 = !DILocation(line: 142, column: 2, scope: !4648)
!4679 = !DILocation(line: 142, column: 15, scope: !4648)
!4680 = !DILocation(line: 142, column: 33, scope: !4648)
!4681 = !DILocation(line: 142, column: 22, scope: !4648)
!4682 = !DILocation(line: 144, column: 2, scope: !4648)
!4683 = !DILocation(line: 144, column: 12, scope: !4648)
!4684 = !DILocation(line: 144, column: 20, scope: !4648)
!4685 = !DILocation(line: 147, column: 6, scope: !4658)
!4686 = !DILocation(line: 147, column: 13, scope: !4658)
!4687 = !DILocation(line: 147, column: 23, scope: !4658)
!4688 = !DILocation(line: 147, column: 11, scope: !4658)
!4689 = !DILocation(line: 147, column: 6, scope: !4648)
!4690 = !DILocation(line: 149, column: 7, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 149, column: 7)
!4692 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 147, column: 37)
!4693 = !DILocation(line: 149, column: 15, scope: !4691)
!4694 = !DILocation(line: 149, column: 21, scope: !4691)
!4695 = !DILocation(line: 149, column: 29, scope: !4691)
!4696 = !DILocation(line: 149, column: 19, scope: !4691)
!4697 = !DILocation(line: 149, column: 7, scope: !4692)
!4698 = !DILocation(line: 150, column: 28, scope: !4691)
!4699 = !DILocation(line: 150, column: 38, scope: !4691)
!4700 = !DILocation(line: 150, column: 4, scope: !4691)
!4701 = !DILocation(line: 150, column: 16, scope: !4691)
!4702 = !DILocation(line: 150, column: 26, scope: !4691)
!4703 = !DILocation(line: 151, column: 21, scope: !4692)
!4704 = !DILocation(line: 151, column: 29, scope: !4692)
!4705 = !DILocation(line: 151, column: 37, scope: !4692)
!4706 = !DILocation(line: 151, column: 3, scope: !4692)
!4707 = !DILocation(line: 152, column: 2, scope: !4692)
!4708 = !DILocation(line: 154, column: 3, scope: !4657)
!4709 = !DILocation(line: 154, column: 16, scope: !4657)
!4710 = !DILocation(line: 154, column: 27, scope: !4657)
!4711 = !DILocation(line: 154, column: 34, scope: !4657)
!4712 = !DILocation(line: 156, column: 11, scope: !4657)
!4713 = !DILocation(line: 156, column: 19, scope: !4657)
!4714 = !DILocation(line: 156, column: 27, scope: !4657)
!4715 = !DILocation(line: 156, column: 9, scope: !4657)
!4716 = !DILocation(line: 157, column: 11, scope: !4657)
!4717 = !DILocation(line: 157, column: 19, scope: !4657)
!4718 = !DILocation(line: 157, column: 27, scope: !4657)
!4719 = !DILocation(line: 157, column: 9, scope: !4657)
!4720 = !DILocation(line: 158, column: 15, scope: !4657)
!4721 = !DILocation(line: 158, column: 23, scope: !4657)
!4722 = !DILocation(line: 158, column: 31, scope: !4657)
!4723 = !DILocation(line: 158, column: 39, scope: !4657)
!4724 = !DILocation(line: 158, column: 37, scope: !4657)
!4725 = !DILocation(line: 158, column: 28, scope: !4657)
!4726 = !DILocation(line: 158, column: 46, scope: !4657)
!4727 = !DILocation(line: 158, column: 21, scope: !4657)
!4728 = !DILocation(line: 158, column: 13, scope: !4657)
!4729 = !DILocation(line: 161, column: 3, scope: !4657)
!4730 = !DILocation(line: 161, column: 15, scope: !4657)
!4731 = !DILocation(line: 161, column: 25, scope: !4657)
!4732 = !DILocation(line: 163, column: 7, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 163, column: 7)
!4734 = !DILocation(line: 163, column: 18, scope: !4733)
!4735 = !DILocation(line: 163, column: 7, scope: !4657)
!4736 = !DILocation(line: 164, column: 23, scope: !4733)
!4737 = !DILocation(line: 164, column: 45, scope: !4733)
!4738 = !DILocation(line: 165, column: 10, scope: !4733)
!4739 = !DILocation(line: 164, column: 16, scope: !4733)
!4740 = !DILocation(line: 164, column: 14, scope: !4733)
!4741 = !DILocation(line: 164, column: 4, scope: !4733)
!4742 = !DILocation(line: 168, column: 27, scope: !4657)
!4743 = !DILocation(line: 168, column: 35, scope: !4657)
!4744 = !DILocation(line: 168, column: 3, scope: !4657)
!4745 = !DILocation(line: 169, column: 2, scope: !4658)
!4746 = !DILocation(line: 170, column: 1, scope: !4648)
!4747 = !DISubprogram(name: "dbs_update", scope: !59, file: !59, line: 173, type: !2775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4748 = distinct !DISubprogram(name: "dbs_freq_increase", scope: !3, file: !3, line: 115, type: !4749, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4751)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !97, !7}
!4751 = !{!4752, !4753, !4754, !4755, !4756}
!4752 = !DILocalVariable(name: "policy", arg: 1, scope: !4748, file: !3, line: 115, type: !97)
!4753 = !DILocalVariable(name: "freq", arg: 2, scope: !4748, file: !3, line: 115, type: !7)
!4754 = !DILocalVariable(name: "policy_dbs", scope: !4748, file: !3, line: 117, type: !2781)
!4755 = !DILocalVariable(name: "dbs_data", scope: !4748, file: !3, line: 118, type: !2756)
!4756 = !DILocalVariable(name: "od_tuners", scope: !4748, file: !3, line: 119, type: !2936)
!4757 = !DILocation(line: 115, column: 54, scope: !4748)
!4758 = !DILocation(line: 115, column: 75, scope: !4748)
!4759 = !DILocation(line: 117, column: 2, scope: !4748)
!4760 = !DILocation(line: 117, column: 26, scope: !4748)
!4761 = !DILocation(line: 117, column: 39, scope: !4748)
!4762 = !DILocation(line: 117, column: 47, scope: !4748)
!4763 = !DILocation(line: 118, column: 2, scope: !4748)
!4764 = !DILocation(line: 118, column: 19, scope: !4748)
!4765 = !DILocation(line: 118, column: 30, scope: !4748)
!4766 = !DILocation(line: 118, column: 42, scope: !4748)
!4767 = !DILocation(line: 119, column: 2, scope: !4748)
!4768 = !DILocation(line: 119, column: 24, scope: !4748)
!4769 = !DILocation(line: 119, column: 36, scope: !4748)
!4770 = !DILocation(line: 119, column: 46, scope: !4748)
!4771 = !DILocation(line: 121, column: 6, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 121, column: 6)
!4773 = !DILocation(line: 121, column: 17, scope: !4772)
!4774 = !DILocation(line: 121, column: 6, scope: !4748)
!4775 = !DILocation(line: 122, column: 17, scope: !4772)
!4776 = !DILocation(line: 122, column: 39, scope: !4772)
!4777 = !DILocation(line: 122, column: 47, scope: !4772)
!4778 = !DILocation(line: 122, column: 10, scope: !4772)
!4779 = !DILocation(line: 122, column: 8, scope: !4772)
!4780 = !DILocation(line: 122, column: 3, scope: !4772)
!4781 = !DILocation(line: 124, column: 11, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 124, column: 11)
!4783 = !DILocation(line: 124, column: 19, scope: !4782)
!4784 = !DILocation(line: 124, column: 26, scope: !4782)
!4785 = !DILocation(line: 124, column: 34, scope: !4782)
!4786 = !DILocation(line: 124, column: 23, scope: !4782)
!4787 = !DILocation(line: 124, column: 11, scope: !4772)
!4788 = !DILocation(line: 125, column: 3, scope: !4782)
!4789 = !DILocation(line: 127, column: 26, scope: !4748)
!4790 = !DILocation(line: 127, column: 34, scope: !4748)
!4791 = !DILocation(line: 127, column: 40, scope: !4748)
!4792 = !DILocation(line: 127, column: 51, scope: !4748)
!4793 = !DILocation(line: 127, column: 2, scope: !4748)
!4794 = !DILocation(line: 129, column: 1, scope: !4748)
!4795 = distinct !DISubprogram(name: "kzalloc", scope: !64, file: !64, line: 719, type: !4796, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!74, !303, !75}
!4798 = !{!4799, !4800}
!4799 = !DILocalVariable(name: "size", arg: 1, scope: !4795, file: !64, line: 719, type: !303)
!4800 = !DILocalVariable(name: "flags", arg: 2, scope: !4795, file: !64, line: 719, type: !75)
!4801 = !DILocation(line: 719, column: 52, scope: !4795)
!4802 = !DILocation(line: 719, column: 64, scope: !4795)
!4803 = !DILocation(line: 721, column: 17, scope: !4795)
!4804 = !DILocation(line: 721, column: 23, scope: !4795)
!4805 = !DILocation(line: 721, column: 29, scope: !4795)
!4806 = !DILocation(line: 721, column: 9, scope: !4795)
!4807 = !DILocation(line: 721, column: 2, scope: !4795)
!4808 = distinct !DISubprogram(name: "kmalloc", scope: !64, file: !64, line: 591, type: !4796, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4809 = !{!4810, !4811, !4812}
!4810 = !DILocalVariable(name: "size", arg: 1, scope: !4808, file: !64, line: 591, type: !303)
!4811 = !DILocalVariable(name: "flags", arg: 2, scope: !4808, file: !64, line: 591, type: !75)
!4812 = !DILocalVariable(name: "index", scope: !4813, file: !64, line: 594, type: !7)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !64, line: 593, column: 42)
!4814 = distinct !DILexicalBlock(scope: !4808, file: !64, line: 593, column: 6)
!4815 = !DILocation(line: 591, column: 61, scope: !4808)
!4816 = !DILocation(line: 591, column: 73, scope: !4808)
!4817 = !DILocation(line: 593, column: 27, scope: !4814)
!4818 = !DILocation(line: 593, column: 6, scope: !4814)
!4819 = !DILocation(line: 593, column: 33, scope: !4814)
!4820 = !DILocation(line: 593, column: 36, scope: !4814)
!4821 = !DILocation(line: 593, column: 6, scope: !4808)
!4822 = !DILocation(line: 594, column: 3, scope: !4813)
!4823 = !DILocation(line: 594, column: 16, scope: !4813)
!4824 = !DILocation(line: 596, column: 7, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4813, file: !64, line: 596, column: 7)
!4826 = !DILocation(line: 596, column: 12, scope: !4825)
!4827 = !DILocation(line: 596, column: 7, scope: !4813)
!4828 = !DILocation(line: 597, column: 25, scope: !4825)
!4829 = !DILocation(line: 597, column: 31, scope: !4825)
!4830 = !DILocation(line: 597, column: 11, scope: !4825)
!4831 = !DILocation(line: 597, column: 4, scope: !4825)
!4832 = !DILocation(line: 599, column: 11, scope: !4813)
!4833 = !DILocation(line: 599, column: 9, scope: !4813)
!4834 = !DILocation(line: 601, column: 33, scope: !4813)
!4835 = !DILocation(line: 601, column: 40, scope: !4813)
!4836 = !DILocation(line: 601, column: 20, scope: !4813)
!4837 = !DILocation(line: 601, column: 5, scope: !4813)
!4838 = !DILocation(line: 601, column: 51, scope: !4813)
!4839 = !DILocation(line: 602, column: 5, scope: !4813)
!4840 = !DILocation(line: 602, column: 12, scope: !4813)
!4841 = !DILocation(line: 600, column: 10, scope: !4813)
!4842 = !DILocation(line: 600, column: 3, scope: !4813)
!4843 = !DILocation(line: 603, column: 2, scope: !4814)
!4844 = !DILocation(line: 604, column: 19, scope: !4808)
!4845 = !DILocation(line: 604, column: 25, scope: !4808)
!4846 = !DILocation(line: 604, column: 9, scope: !4808)
!4847 = !DILocation(line: 604, column: 2, scope: !4808)
!4848 = !DILocation(line: 605, column: 1, scope: !4808)
!4849 = !DISubprogram(name: "kmalloc_large", scope: !64, file: !64, line: 531, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4850 = distinct !DISubprogram(name: "__kmalloc_index", scope: !64, file: !64, line: 444, type: !4851, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4853)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!7, !303, !611}
!4853 = !{!4854, !4855}
!4854 = !DILocalVariable(name: "size", arg: 1, scope: !4850, file: !64, line: 444, type: !303)
!4855 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4850, file: !64, line: 445, type: !611)
!4856 = !DILocation(line: 444, column: 60, scope: !4850)
!4857 = !DILocation(line: 445, column: 16, scope: !4850)
!4858 = !DILocation(line: 447, column: 7, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 447, column: 6)
!4860 = !DILocation(line: 447, column: 6, scope: !4850)
!4861 = !DILocation(line: 448, column: 3, scope: !4859)
!4862 = !DILocation(line: 450, column: 6, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 450, column: 6)
!4864 = !DILocation(line: 450, column: 11, scope: !4863)
!4865 = !DILocation(line: 450, column: 6, scope: !4850)
!4866 = !DILocation(line: 451, column: 3, scope: !4863)
!4867 = !DILocation(line: 453, column: 32, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 453, column: 6)
!4869 = !DILocation(line: 453, column: 37, scope: !4868)
!4870 = !DILocation(line: 453, column: 42, scope: !4868)
!4871 = !DILocation(line: 453, column: 45, scope: !4868)
!4872 = !DILocation(line: 453, column: 50, scope: !4868)
!4873 = !DILocation(line: 453, column: 6, scope: !4850)
!4874 = !DILocation(line: 454, column: 3, scope: !4868)
!4875 = !DILocation(line: 455, column: 32, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 455, column: 6)
!4877 = !DILocation(line: 455, column: 37, scope: !4876)
!4878 = !DILocation(line: 455, column: 43, scope: !4876)
!4879 = !DILocation(line: 455, column: 46, scope: !4876)
!4880 = !DILocation(line: 455, column: 51, scope: !4876)
!4881 = !DILocation(line: 455, column: 6, scope: !4850)
!4882 = !DILocation(line: 456, column: 3, scope: !4876)
!4883 = !DILocation(line: 457, column: 6, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 457, column: 6)
!4885 = !DILocation(line: 457, column: 11, scope: !4884)
!4886 = !DILocation(line: 457, column: 6, scope: !4850)
!4887 = !DILocation(line: 457, column: 26, scope: !4884)
!4888 = !DILocation(line: 458, column: 6, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 458, column: 6)
!4890 = !DILocation(line: 458, column: 11, scope: !4889)
!4891 = !DILocation(line: 458, column: 6, scope: !4850)
!4892 = !DILocation(line: 458, column: 26, scope: !4889)
!4893 = !DILocation(line: 459, column: 6, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 459, column: 6)
!4895 = !DILocation(line: 459, column: 11, scope: !4894)
!4896 = !DILocation(line: 459, column: 6, scope: !4850)
!4897 = !DILocation(line: 459, column: 26, scope: !4894)
!4898 = !DILocation(line: 460, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 460, column: 6)
!4900 = !DILocation(line: 460, column: 11, scope: !4899)
!4901 = !DILocation(line: 460, column: 6, scope: !4850)
!4902 = !DILocation(line: 460, column: 26, scope: !4899)
!4903 = !DILocation(line: 461, column: 6, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 461, column: 6)
!4905 = !DILocation(line: 461, column: 11, scope: !4904)
!4906 = !DILocation(line: 461, column: 6, scope: !4850)
!4907 = !DILocation(line: 461, column: 26, scope: !4904)
!4908 = !DILocation(line: 462, column: 6, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 462, column: 6)
!4910 = !DILocation(line: 462, column: 11, scope: !4909)
!4911 = !DILocation(line: 462, column: 6, scope: !4850)
!4912 = !DILocation(line: 462, column: 26, scope: !4909)
!4913 = !DILocation(line: 463, column: 6, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 463, column: 6)
!4915 = !DILocation(line: 463, column: 11, scope: !4914)
!4916 = !DILocation(line: 463, column: 6, scope: !4850)
!4917 = !DILocation(line: 463, column: 26, scope: !4914)
!4918 = !DILocation(line: 464, column: 6, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 464, column: 6)
!4920 = !DILocation(line: 464, column: 11, scope: !4919)
!4921 = !DILocation(line: 464, column: 6, scope: !4850)
!4922 = !DILocation(line: 464, column: 26, scope: !4919)
!4923 = !DILocation(line: 465, column: 6, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 465, column: 6)
!4925 = !DILocation(line: 465, column: 11, scope: !4924)
!4926 = !DILocation(line: 465, column: 6, scope: !4850)
!4927 = !DILocation(line: 465, column: 26, scope: !4924)
!4928 = !DILocation(line: 466, column: 6, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 466, column: 6)
!4930 = !DILocation(line: 466, column: 11, scope: !4929)
!4931 = !DILocation(line: 466, column: 6, scope: !4850)
!4932 = !DILocation(line: 466, column: 26, scope: !4929)
!4933 = !DILocation(line: 467, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 467, column: 6)
!4935 = !DILocation(line: 467, column: 11, scope: !4934)
!4936 = !DILocation(line: 467, column: 6, scope: !4850)
!4937 = !DILocation(line: 467, column: 26, scope: !4934)
!4938 = !DILocation(line: 468, column: 6, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 468, column: 6)
!4940 = !DILocation(line: 468, column: 11, scope: !4939)
!4941 = !DILocation(line: 468, column: 6, scope: !4850)
!4942 = !DILocation(line: 468, column: 26, scope: !4939)
!4943 = !DILocation(line: 469, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 469, column: 6)
!4945 = !DILocation(line: 469, column: 11, scope: !4944)
!4946 = !DILocation(line: 469, column: 6, scope: !4850)
!4947 = !DILocation(line: 469, column: 26, scope: !4944)
!4948 = !DILocation(line: 470, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 470, column: 6)
!4950 = !DILocation(line: 470, column: 11, scope: !4949)
!4951 = !DILocation(line: 470, column: 6, scope: !4850)
!4952 = !DILocation(line: 470, column: 26, scope: !4949)
!4953 = !DILocation(line: 471, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 471, column: 6)
!4955 = !DILocation(line: 471, column: 11, scope: !4954)
!4956 = !DILocation(line: 471, column: 6, scope: !4850)
!4957 = !DILocation(line: 471, column: 26, scope: !4954)
!4958 = !DILocation(line: 472, column: 6, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 472, column: 6)
!4960 = !DILocation(line: 472, column: 11, scope: !4959)
!4961 = !DILocation(line: 472, column: 6, scope: !4850)
!4962 = !DILocation(line: 472, column: 26, scope: !4959)
!4963 = !DILocation(line: 473, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 473, column: 6)
!4965 = !DILocation(line: 473, column: 11, scope: !4964)
!4966 = !DILocation(line: 473, column: 6, scope: !4850)
!4967 = !DILocation(line: 473, column: 26, scope: !4964)
!4968 = !DILocation(line: 474, column: 6, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 474, column: 6)
!4970 = !DILocation(line: 474, column: 11, scope: !4969)
!4971 = !DILocation(line: 474, column: 6, scope: !4850)
!4972 = !DILocation(line: 474, column: 27, scope: !4969)
!4973 = !DILocation(line: 475, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 475, column: 6)
!4975 = !DILocation(line: 475, column: 11, scope: !4974)
!4976 = !DILocation(line: 475, column: 6, scope: !4850)
!4977 = !DILocation(line: 475, column: 32, scope: !4974)
!4978 = !DILocation(line: 477, column: 50, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4850, file: !64, line: 477, column: 6)
!4980 = !DILocation(line: 477, column: 6, scope: !4850)
!4981 = !DILocation(line: 478, column: 3, scope: !4979)
!4982 = !DILocation(line: 478, column: 3, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !64, line: 478, column: 3)
!4984 = distinct !DILexicalBlock(scope: !4979, file: !64, line: 478, column: 3)
!4985 = !{i32 -2142277315}
!4986 = !DILocation(line: 478, column: 3, scope: !4984)
!4987 = !DILocation(line: 480, column: 3, scope: !4979)
!4988 = !DILocation(line: 480, column: 3, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4979, file: !64, line: 480, column: 3)
!4990 = !DILocation(line: 480, column: 3, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4989, file: !64, line: 480, column: 3)
!4992 = !DILocation(line: 480, column: 3, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !64, line: 480, column: 3)
!4994 = !{i64 2152690184, i64 2152690213, i64 2152690259, i64 2152690317, i64 2152690371, i64 2152690425, i64 2152690480, i64 2152690511}
!4995 = !DILocation(line: 483, column: 2, scope: !4850)
!4996 = !DILocation(line: 484, column: 1, scope: !4850)
!4997 = !DISubprogram(name: "kmalloc_trace", scope: !64, file: !64, line: 525, type: !4998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!74, !5000, !75, !303}
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5002, line: 11, flags: DIFlagFwdDecl)
!5002 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5003 = distinct !DISubprogram(name: "kmalloc_type", scope: !64, file: !64, line: 401, type: !5004, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5006)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!63, !75, !84}
!5006 = !{!5007, !5008}
!5007 = !DILocalVariable(name: "flags", arg: 1, scope: !5003, file: !64, line: 401, type: !75)
!5008 = !DILocalVariable(name: "caller", arg: 2, scope: !5003, file: !64, line: 401, type: !84)
!5009 = !DILocation(line: 401, column: 67, scope: !5003)
!5010 = !DILocation(line: 401, column: 88, scope: !5003)
!5011 = !DILocation(line: 407, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5003, file: !64, line: 407, column: 6)
!5013 = !DILocation(line: 407, column: 6, scope: !5003)
!5014 = !DILocation(line: 413, column: 3, scope: !5012)
!5015 = !DILocation(line: 423, column: 38, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5003, file: !64, line: 423, column: 6)
!5017 = !DILocation(line: 423, column: 44, scope: !5016)
!5018 = !DILocation(line: 423, column: 6, scope: !5003)
!5019 = !DILocation(line: 424, column: 3, scope: !5016)
!5020 = !DILocation(line: 426, column: 3, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5003, file: !64, line: 425, column: 6)
!5022 = !DILocation(line: 429, column: 1, scope: !5003)
!5023 = !DISubprogram(name: "__kmalloc", scope: !64, file: !64, line: 488, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubprogram(name: "__compiletime_assert_204", scope: !64, file: !64, line: 478, type: !1194, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5025 = !DISubprogram(name: "kfree", scope: !64, file: !64, line: 227, type: !5026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !533}
!5028 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5029, file: !5029, line: 78, type: !2087, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5030)
!5029 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5030 = !{!5031, !5032, !5034}
!5031 = !DILocalVariable(name: "val", arg: 1, scope: !5028, file: !5029, line: 78, type: !87)
!5032 = !DILocalVariable(name: "pao_ID__", scope: !5033, file: !5029, line: 80, type: !1047)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !5029, line: 80, column: 2)
!5034 = !DILocalVariable(name: "pto_val__", scope: !5035, file: !5029, line: 80, type: !1100)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !5029, line: 80, column: 2)
!5036 = distinct !DILexicalBlock(scope: !5037, file: !5029, line: 80, column: 2)
!5037 = distinct !DILexicalBlock(scope: !5033, file: !5029, line: 80, column: 2)
!5038 = !DILocation(line: 78, column: 53, scope: !5028)
!5039 = !DILocation(line: 80, column: 2, scope: !5028)
!5040 = !DILocation(line: 80, column: 2, scope: !5033)
!5041 = !DILocation(line: 80, column: 2, scope: !5037)
!5042 = !DILocation(line: 80, column: 2, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5037, file: !5029, line: 80, column: 2)
!5044 = !{i64 2149665119}
!5045 = !DILocation(line: 80, column: 2, scope: !5036)
!5046 = !DILocation(line: 80, column: 2, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5036, file: !5029, line: 80, column: 2)
!5048 = !{i64 2149665414}
!5049 = !DILocation(line: 80, column: 2, scope: !5035)
!5050 = !{i64 2149666119}
!5051 = !DILocation(line: 81, column: 1, scope: !5028)
!5052 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5053, file: !5053, line: 313, type: !5054, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5056)
!5053 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !181}
!5056 = !{!5057}
!5057 = !DILocalVariable(name: "op", arg: 1, scope: !5052, file: !5053, line: 313, type: !181)
!5058 = !DILocation(line: 313, column: 66, scope: !5052)
!5059 = !DILocation(line: 313, column: 72, scope: !5052)
!5060 = !DISubprogram(name: "get_cpu_idle_time_us", scope: !5061, file: !5061, line: 141, type: !5062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5061 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!418, !87, !5064}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!5065 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5029, file: !5029, line: 93, type: !658, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5066 = !{!5067}
!5067 = !DILocalVariable(name: "c", scope: !5068, file: !5029, line: 95, type: !611)
!5068 = distinct !DILexicalBlock(scope: !5065, file: !5029, line: 95, column: 9)
!5069 = !DILocation(line: 95, column: 9, scope: !5068)
!5070 = !{i64 2149669475, i64 2149669568}
!5071 = !DILocation(line: 95, column: 9, scope: !5065)
!5072 = !DILocation(line: 95, column: 2, scope: !5065)
!5073 = distinct !DISubprogram(name: "should_io_be_busy", scope: !3, file: !3, line: 42, type: !954, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5074 = !DILocation(line: 48, column: 20, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 48, column: 6)
!5076 = !DILocation(line: 48, column: 6, scope: !5075)
!5077 = !DILocation(line: 48, column: 31, scope: !5075)
!5078 = !DILocation(line: 48, column: 51, scope: !5075)
!5079 = !DILocation(line: 49, column: 18, scope: !5075)
!5080 = !DILocation(line: 49, column: 4, scope: !5075)
!5081 = !DILocation(line: 49, column: 22, scope: !5075)
!5082 = !DILocation(line: 49, column: 27, scope: !5075)
!5083 = !DILocation(line: 50, column: 18, scope: !5075)
!5084 = !DILocation(line: 50, column: 4, scope: !5075)
!5085 = !DILocation(line: 50, column: 28, scope: !5075)
!5086 = !DILocation(line: 48, column: 6, scope: !5073)
!5087 = !DILocation(line: 51, column: 3, scope: !5075)
!5088 = !DILocation(line: 53, column: 2, scope: !5073)
!5089 = !DILocation(line: 54, column: 1, scope: !5073)
