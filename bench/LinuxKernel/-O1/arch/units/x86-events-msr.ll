; ModuleID = 'arch/x86/events/msr.c'
source_filename = "arch/x86/events/msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_msr__314_316_msr_init\22, \22a\22\09\09"
module asm "__initcall__kmod_msr__314_316_msr_init6:\09\09\09"
module asm ".long\09__initstub__kmod_msr__314_316_msr_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.perf_msr = type { i64, ptr, ptr, i8, i64 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.perf_pmu_events_attr = type { %struct.device_attribute, i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.31 }
%union.anon.31 = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i64, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i64, %struct.irq_work, %struct.callback_head, i32, %struct.rcuwait, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i64, ptr, ptr, %struct.callback_head, ptr, i64, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.16, i64, i64, i64, %union.anon.17, i32, %union.anon.18, %union.anon.19, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64, i64 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i32 }
%union.anon.18 = type { i64 }
%union.anon.19 = type { i64 }
%struct.hw_perf_event = type { %union.anon.21, ptr, ptr, i64, i32, %struct.local64_t, i64, %union.anon.28, i64, i64, i64, i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i64, %struct.local64_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }

@__UNIQUE_ID___addressable___initstub__kmod_msr__314_316_msr_init6315 = internal global ptr @__initstub__kmod_msr__314_316_msr_init6, section ".discard.addressable", align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [22 x i8] c"\01cno MSR PMU driver.\0A\00", align 1, !dbg !279
@msr = internal global [8 x %struct.perf_msr] [%struct.perf_msr { i64 0, ptr null, ptr null, i8 1, i64 0 }, %struct.perf_msr { i64 232, ptr @group_aperf, ptr @test_aperfmperf, i8 0, i64 0 }, %struct.perf_msr { i64 231, ptr @group_mperf, ptr @test_aperfmperf, i8 0, i64 0 }, %struct.perf_msr { i64 1614, ptr @group_pperf, ptr @test_intel, i8 0, i64 0 }, %struct.perf_msr { i64 52, ptr @group_smi, ptr @test_intel, i8 0, i64 0 }, %struct.perf_msr { i64 3221291648, ptr @group_ptsc, ptr @test_ptsc, i8 0, i64 0 }, %struct.perf_msr { i64 3221225705, ptr @group_irperf, ptr @test_irperf, i8 0, i64 0 }, %struct.perf_msr { i64 412, ptr @group_therm, ptr @test_therm_status, i8 0, i64 0 }], align 16, !dbg !289
@msr_mask = internal global i64 0, align 8, !dbg !5722
@pmu_msr = internal global %struct.pmu { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @attr_groups, ptr @attr_update, ptr null, i32 0, i32 65, ptr null, ptr null, %struct.atomic_t zeroinitializer, i32 1, i32 0, i32 0, ptr null, ptr null, ptr @msr_event_init, ptr null, ptr null, ptr @msr_event_add, ptr @msr_event_del, ptr @msr_event_start, ptr @msr_event_stop, ptr @msr_event_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5724
@.str.1 = private unnamed_addr constant [4 x i8] c"msr\00", align 1, !dbg !284
@group_aperf = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_aperf, ptr null }, align 8, !dbg !5607
@group_mperf = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_mperf, ptr null }, align 8, !dbg !5638
@group_pperf = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_pperf, ptr null }, align 8, !dbg !5648
@group_smi = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_smi, ptr null }, align 8, !dbg !5658
@group_ptsc = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_ptsc, ptr null }, align 8, !dbg !5668
@group_irperf = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_irperf, ptr null }, align 8, !dbg !5679
@group_therm = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @attrs_therm, ptr null }, align 8, !dbg !5689
@.str.2 = private unnamed_addr constant [7 x i8] c"events\00", align 1, !dbg !5604
@attrs_aperf = internal global [2 x ptr] [ptr @attr_aperf, ptr null], align 16, !dbg !5609
@attr_aperf = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.4 }, align 8, !dbg !5619
@.str.3 = private unnamed_addr constant [6 x i8] c"aperf\00", align 1, !dbg !5612
@.str.4 = private unnamed_addr constant [11 x i8] c"event=0x01\00", align 1, !dbg !5614
@attrs_mperf = internal global [2 x ptr] [ptr @attr_mperf, ptr null], align 16, !dbg !5640
@attr_mperf = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.6 }, align 8, !dbg !5646
@.str.5 = private unnamed_addr constant [6 x i8] c"mperf\00", align 1, !dbg !5642
@.str.6 = private unnamed_addr constant [11 x i8] c"event=0x02\00", align 1, !dbg !5644
@attrs_pperf = internal global [2 x ptr] [ptr @attr_pperf, ptr null], align 16, !dbg !5650
@attr_pperf = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.8 }, align 8, !dbg !5656
@.str.7 = private unnamed_addr constant [6 x i8] c"pperf\00", align 1, !dbg !5652
@.str.8 = private unnamed_addr constant [11 x i8] c"event=0x03\00", align 1, !dbg !5654
@attrs_smi = internal global [2 x ptr] [ptr @attr_smi, ptr null], align 16, !dbg !5660
@attr_smi = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.10 }, align 8, !dbg !5666
@.str.9 = private unnamed_addr constant [4 x i8] c"smi\00", align 1, !dbg !5662
@.str.10 = private unnamed_addr constant [11 x i8] c"event=0x04\00", align 1, !dbg !5664
@attrs_ptsc = internal global [2 x ptr] [ptr @attr_ptsc, ptr null], align 16, !dbg !5670
@attr_ptsc = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.12 }, align 8, !dbg !5677
@.str.11 = private unnamed_addr constant [5 x i8] c"ptsc\00", align 1, !dbg !5672
@.str.12 = private unnamed_addr constant [11 x i8] c"event=0x05\00", align 1, !dbg !5675
@attrs_irperf = internal global [2 x ptr] [ptr @attr_irperf, ptr null], align 16, !dbg !5681
@attr_irperf = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.14 }, align 8, !dbg !5687
@.str.13 = private unnamed_addr constant [7 x i8] c"irperf\00", align 1, !dbg !5683
@.str.14 = private unnamed_addr constant [11 x i8] c"event=0x06\00", align 1, !dbg !5685
@attrs_therm = internal global [4 x ptr] [ptr @attr_therm, ptr @attr_therm_snap, ptr @attr_therm_unit, ptr null], align 16, !dbg !5691
@attr_therm = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.16 }, align 8, !dbg !5701
@attr_therm_snap = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.18 }, align 8, !dbg !5711
@attr_therm_unit = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.20 }, align 8, !dbg !5720
@.str.15 = private unnamed_addr constant [19 x i8] c"cpu_thermal_margin\00", align 1, !dbg !5694
@.str.16 = private unnamed_addr constant [11 x i8] c"event=0x07\00", align 1, !dbg !5699
@.str.17 = private unnamed_addr constant [28 x i8] c"cpu_thermal_margin.snapshot\00", align 1, !dbg !5703
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !5708
@.str.19 = private unnamed_addr constant [24 x i8] c"cpu_thermal_margin.unit\00", align 1, !dbg !5713
@.str.20 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !5718
@attr_groups = internal global [3 x ptr] [ptr @events_attr_group, ptr @format_attr_group, ptr null], align 16, !dbg !5726
@attr_update = internal global [8 x ptr] [ptr @group_aperf, ptr @group_mperf, ptr @group_pperf, ptr @group_smi, ptr @group_ptsc, ptr @group_irperf, ptr @group_therm, ptr null], align 16, !dbg !5754
@events_attr_group = internal global %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @events_attrs, ptr null }, align 8, !dbg !5729
@format_attr_group = internal global %struct.attribute_group { ptr @.str.23, ptr null, ptr null, ptr @format_attrs, ptr null }, align 8, !dbg !5741
@events_attrs = internal global [2 x ptr] [ptr @attr_tsc, ptr null], align 16, !dbg !5731
@attr_tsc = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.22 }, align 8, !dbg !5737
@.str.21 = private unnamed_addr constant [4 x i8] c"tsc\00", align 1, !dbg !5733
@.str.22 = private unnamed_addr constant [11 x i8] c"event=0x00\00", align 1, !dbg !5735
@.str.23 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !5739
@format_attrs = internal global [2 x ptr] [ptr @format_attr_event, ptr null], align 16, !dbg !5743
@format_attr_event = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @event_show, ptr null }, align 8, !dbg !5747
@.str.24 = private unnamed_addr constant [6 x i8] c"event\00", align 1, !dbg !5745
@.str.25 = private unnamed_addr constant [13 x i8] c"config:0-63\0A\00", align 1, !dbg !5749
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_msr__314_316_msr_init6315], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_msr__314_316_msr_init6() #0 section ".init.text" align 16 !dbg !5766 {
entry:
  %call = call i32 @msr_init() #11, !dbg !5767
  ret i32 %call, !dbg !5767
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @msr_init() #0 section ".init.text" align 16 !dbg !5768 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !5769

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !5770

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !5770
  br i1 %call, label %if.end, label %if.then, !dbg !5769

if.then:                                          ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !5772

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5775

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !5772
  store i32 %call1, ptr %tmp, align 4, !dbg !5775
  %0 = load i32, ptr %tmp, align 4, !dbg !5772
  store i32 0, ptr %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end:                                           ; preds = %cond.false, %cond.true
  %call2 = call i64 @perf_msr_probe(ptr noundef @msr, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #12, !dbg !5778
  store i64 %call2, ptr @msr_mask, align 8, !dbg !5779
  %call3 = call i32 @perf_pmu_register(ptr noundef @pmu_msr, ptr noundef @.str.1, i32 noundef -1) #12, !dbg !5780
  store i32 0, ptr %retval, align 4, !dbg !5781
  br label %return, !dbg !5781

return:                                           ; preds = %if.end, %do.end
  %1 = load i32, ptr %retval, align 4, !dbg !5782
  ret i32 %1, !dbg !5782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5783 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5791, metadata !DIExpression()), !dbg !5793
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5792, metadata !DIExpression()), !dbg !5794
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5795
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5796
  br i1 %1, label %cond.true, label %cond.false, !dbg !5796

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5797
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5798
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5799
  %conv = zext i1 %call to i32, !dbg !5799
  br label %cond.end, !dbg !5796

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5800
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5801
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !5802
  %conv2 = zext i1 %call1 to i32, !dbg !5802
  br label %cond.end, !dbg !5796

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5796
  %tobool = icmp ne i32 %cond, 0, !dbg !5796
  ret i1 %tobool, !dbg !5803
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5804 dso_local i32 @_printk(ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5808 dso_local i64 @perf_msr_probe(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5812 dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5815 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5819, metadata !DIExpression()), !dbg !5821
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5820, metadata !DIExpression()), !dbg !5822
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5823
  %and = and i64 %0, 63, !dbg !5824
  %shl = shl i64 1, %and, !dbg !5825
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5826
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5827
  %shr = ashr i64 %2, 6, !dbg !5828
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5826
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5826
  %and1 = and i64 %shl, %3, !dbg !5829
  %cmp = icmp ne i64 %and1, 0, !dbg !5830
  ret i1 %cmp, !dbg !5831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5832 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5834, metadata !DIExpression()), !dbg !5837
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5835, metadata !DIExpression()), !dbg !5838
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !5839
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5836, metadata !DIExpression()), !dbg !5840
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5841
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5842
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !5843, !srcloc !5844
  %3 = icmp ult i8 %2, 2, !dbg !5843
  call void @llvm.assume(i1 %3), !dbg !5843
  store i8 %2, ptr %oldbit, align 1, !dbg !5843
  %4 = load i8, ptr %oldbit, align 1, !dbg !5845, !range !5846, !noundef !944
  %tobool = trunc i8 %4 to i1, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !5847
  ret i1 %tobool, !dbg !5848
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_aperfmperf(i32 noundef %idx, ptr noundef %data) #8 align 16 !dbg !5849 {
entry:
  %idx.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5851, metadata !DIExpression()), !dbg !5853
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5852, metadata !DIExpression()), !dbg !5854
  %call = call zeroext i1 @arch_test_bit(i64 noundef 124, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !5855
  ret i1 %call, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_intel(i32 noundef %idx, ptr noundef %data) #8 align 16 !dbg !5857 {
entry:
  %retval = alloca i1, align 1
  %idx.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5859, metadata !DIExpression()), !dbg !5861
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5863
  %conv = zext i8 %0 to i32, !dbg !5865
  %cmp = icmp ne i32 %conv, 0, !dbg !5866
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5867

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5868
  %conv2 = zext i8 %1 to i32, !dbg !5869
  %cmp3 = icmp ne i32 %conv2, 6, !dbg !5870
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5871

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5872
  br label %return, !dbg !5872

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, ptr @boot_cpu_data, align 8, !dbg !5873
  %conv5 = zext i8 %2 to i32, !dbg !5874
  switch i32 %conv5, label %sw.epilog [
    i32 30, label %sw.bb
    i32 31, label %sw.bb
    i32 26, label %sw.bb
    i32 46, label %sw.bb
    i32 37, label %sw.bb
    i32 44, label %sw.bb
    i32 47, label %sw.bb
    i32 42, label %sw.bb
    i32 45, label %sw.bb
    i32 58, label %sw.bb
    i32 62, label %sw.bb
    i32 60, label %sw.bb
    i32 63, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 61, label %sw.bb
    i32 86, label %sw.bb
    i32 71, label %sw.bb
    i32 79, label %sw.bb
    i32 143, label %sw.bb
    i32 207, label %sw.bb
    i32 173, label %sw.bb
    i32 174, label %sw.bb
    i32 55, label %sw.bb
    i32 77, label %sw.bb
    i32 76, label %sw.bb
    i32 92, label %sw.bb
    i32 95, label %sw.bb
    i32 122, label %sw.bb
    i32 134, label %sw.bb
    i32 150, label %sw.bb
    i32 156, label %sw.bb
    i32 87, label %sw.bb
    i32 133, label %sw.bb
    i32 78, label %sw.bb10
    i32 94, label %sw.bb10
    i32 85, label %sw.bb10
    i32 142, label %sw.bb10
    i32 158, label %sw.bb10
    i32 166, label %sw.bb10
    i32 165, label %sw.bb10
    i32 126, label %sw.bb10
    i32 125, label %sw.bb10
    i32 106, label %sw.bb10
    i32 108, label %sw.bb10
    i32 140, label %sw.bb10
    i32 141, label %sw.bb10
    i32 167, label %sw.bb10
    i32 151, label %sw.bb10
    i32 154, label %sw.bb10
    i32 190, label %sw.bb10
    i32 183, label %sw.bb10
    i32 186, label %sw.bb10
    i32 191, label %sw.bb10
    i32 172, label %sw.bb10
    i32 170, label %sw.bb10
  ], !dbg !5875

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %3 = load i32, ptr %idx.addr, align 4, !dbg !5876
  %cmp6 = icmp eq i32 %3, 4, !dbg !5879
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5880

if.then8:                                         ; preds = %sw.bb
  store i1 true, ptr %retval, align 1, !dbg !5881
  br label %return, !dbg !5881

if.end9:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !5882

sw.bb10:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %4 = load i32, ptr %idx.addr, align 4, !dbg !5883
  %cmp11 = icmp eq i32 %4, 4, !dbg !5885
  br i1 %cmp11, label %if.then16, label %lor.lhs.false13, !dbg !5886

lor.lhs.false13:                                  ; preds = %sw.bb10
  %5 = load i32, ptr %idx.addr, align 4, !dbg !5887
  %cmp14 = icmp eq i32 %5, 3, !dbg !5888
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5889

if.then16:                                        ; preds = %lor.lhs.false13, %sw.bb10
  store i1 true, ptr %retval, align 1, !dbg !5890
  br label %return, !dbg !5890

if.end17:                                         ; preds = %lor.lhs.false13
  br label %sw.epilog, !dbg !5891

sw.epilog:                                        ; preds = %if.end, %if.end17, %if.end9
  store i1 false, ptr %retval, align 1, !dbg !5892
  br label %return, !dbg !5892

return:                                           ; preds = %sw.epilog, %if.then16, %if.then8, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !5893
  ret i1 %6, !dbg !5893
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_ptsc(i32 noundef %idx, ptr noundef %data) #8 align 16 !dbg !5894 {
entry:
  %idx.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5896, metadata !DIExpression()), !dbg !5898
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5897, metadata !DIExpression()), !dbg !5899
  %call = call zeroext i1 @arch_test_bit(i64 noundef 219, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !5900
  ret i1 %call, !dbg !5901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_irperf(i32 noundef %idx, ptr noundef %data) #8 align 16 !dbg !5902 {
entry:
  %idx.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5904, metadata !DIExpression()), !dbg !5906
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5905, metadata !DIExpression()), !dbg !5907
  %call = call zeroext i1 @arch_test_bit(i64 noundef 417, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !5908
  ret i1 %call, !dbg !5909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_therm_status(i32 noundef %idx, ptr noundef %data) #8 align 16 !dbg !5910 {
entry:
  %idx.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5912, metadata !DIExpression()), !dbg !5914
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5913, metadata !DIExpression()), !dbg !5915
  %call = call zeroext i1 @arch_test_bit(i64 noundef 448, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !5916
  ret i1 %call, !dbg !5917
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @perf_event_sysfs_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_event_init(ptr noundef %event) #8 align 16 !dbg !5918 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %cfg = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i64, align 8
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !5920, metadata !DIExpression()), !dbg !5926
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #13, !dbg !5927
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5921, metadata !DIExpression()), !dbg !5928
  %0 = load ptr, ptr %event.addr, align 8, !dbg !5929
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !5930
  %config = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 2, !dbg !5931
  %1 = load i64, ptr %config, align 8, !dbg !5931
  store i64 %1, ptr %cfg, align 8, !dbg !5928
  %2 = load ptr, ptr %event.addr, align 8, !dbg !5932
  %attr1 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 22, !dbg !5934
  %type = getelementptr inbounds %struct.perf_event_attr, ptr %attr1, i32 0, i32 0, !dbg !5935
  %3 = load i32, ptr %type, align 8, !dbg !5935
  %4 = load ptr, ptr %event.addr, align 8, !dbg !5936
  %pmu = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 13, !dbg !5937
  %5 = load ptr, ptr %pmu, align 8, !dbg !5937
  %type2 = getelementptr inbounds %struct.pmu, ptr %5, i32 0, i32 7, !dbg !5938
  %6 = load i32, ptr %type2, align 8, !dbg !5938
  %cmp = icmp ne i32 %3, %6, !dbg !5939
  br i1 %cmp, label %if.then, label %if.end, !dbg !5940

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !5941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5941

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %event.addr, align 8, !dbg !5942
  %attr3 = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 22, !dbg !5944
  %8 = getelementptr inbounds %struct.perf_event_attr, ptr %attr3, i32 0, i32 3, !dbg !5945
  %9 = load i64, ptr %8, align 8, !dbg !5945
  %tobool = icmp ne i64 %9, 0, !dbg !5942
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5946

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5947

if.end5:                                          ; preds = %if.end
  %10 = load i64, ptr %cfg, align 8, !dbg !5948
  %cmp6 = icmp uge i64 %10, 8, !dbg !5950
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5951

if.then7:                                         ; preds = %if.end5
  store i32 -22, ptr %retval, align 4, !dbg !5952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5952

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #13, !dbg !5953
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !5922, metadata !DIExpression()), !dbg !5953
  %11 = load i64, ptr %cfg, align 8, !dbg !5953
  store i64 %11, ptr %_i, align 8, !dbg !5953
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #13, !dbg !5953
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !5924, metadata !DIExpression()), !dbg !5953
  store i32 8, ptr %_s, align 4, !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #13, !dbg !5953
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !5925, metadata !DIExpression()), !dbg !5953
  %12 = load i64, ptr %_i, align 8, !dbg !5953
  %13 = load i32, ptr %_s, align 4, !dbg !5953
  %conv = sext i32 %13 to i64, !dbg !5953
  %call = call i64 @array_index_mask_nospec(i64 noundef %12, i64 noundef %conv) #12, !dbg !5953
  store i64 %call, ptr %_mask, align 8, !dbg !5953
  br label %do.body, !dbg !5953

do.body:                                          ; preds = %if.end8
  br label %do.cond, !dbg !5954

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5954

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5953

do.body9:                                         ; preds = %do.end
  br label %do.cond10, !dbg !5956

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5956

do.end11:                                         ; preds = %do.cond10
  %14 = load i64, ptr %_i, align 8, !dbg !5953
  %15 = load i64, ptr %_mask, align 8, !dbg !5953
  %and = and i64 %14, %15, !dbg !5953
  store i64 %and, ptr %tmp, align 8, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #13, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #13, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #13, !dbg !5958
  %16 = load i64, ptr %tmp, align 8, !dbg !5953
  store i64 %16, ptr %cfg, align 8, !dbg !5959
  %17 = load i64, ptr @msr_mask, align 8, !dbg !5960
  %18 = load i64, ptr %cfg, align 8, !dbg !5962
  %sh_prom = trunc i64 %18 to i32, !dbg !5963
  %shl = shl i32 1, %sh_prom, !dbg !5963
  %conv12 = sext i32 %shl to i64, !dbg !5964
  %and13 = and i64 %17, %conv12, !dbg !5965
  %tobool14 = icmp ne i64 %and13, 0, !dbg !5965
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5966

if.then15:                                        ; preds = %do.end11
  store i32 -22, ptr %retval, align 4, !dbg !5967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end16:                                         ; preds = %do.end11
  %19 = load ptr, ptr %event.addr, align 8, !dbg !5968
  %hw = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 26, !dbg !5969
  %20 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !5970
  %idx = getelementptr inbounds %struct.anon.22, ptr %20, i32 0, i32 5, !dbg !5970
  store i32 -1, ptr %idx, align 4, !dbg !5971
  %21 = load i64, ptr %cfg, align 8, !dbg !5972
  %arrayidx = getelementptr [8 x %struct.perf_msr], ptr @msr, i64 0, i64 %21, !dbg !5973
  %msr = getelementptr inbounds %struct.perf_msr, ptr %arrayidx, i32 0, i32 0, !dbg !5974
  %22 = load i64, ptr %msr, align 8, !dbg !5974
  %23 = load ptr, ptr %event.addr, align 8, !dbg !5975
  %hw17 = getelementptr inbounds %struct.perf_event, ptr %23, i32 0, i32 26, !dbg !5976
  %24 = getelementptr inbounds %struct.hw_perf_event, ptr %hw17, i32 0, i32 0, !dbg !5977
  %event_base = getelementptr inbounds %struct.anon.22, ptr %24, i32 0, i32 3, !dbg !5977
  store i64 %22, ptr %event_base, align 8, !dbg !5978
  %25 = load i64, ptr %cfg, align 8, !dbg !5979
  %26 = load ptr, ptr %event.addr, align 8, !dbg !5980
  %hw18 = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 26, !dbg !5981
  %27 = getelementptr inbounds %struct.hw_perf_event, ptr %hw18, i32 0, i32 0, !dbg !5982
  %config19 = getelementptr inbounds %struct.anon.22, ptr %27, i32 0, i32 0, !dbg !5982
  store i64 %25, ptr %config19, align 8, !dbg !5983
  store i32 0, ptr %retval, align 4, !dbg !5984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5984

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #13, !dbg !5985
  %28 = load i32, ptr %retval, align 4, !dbg !5985
  ret i32 %28, !dbg !5985
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_event_add(ptr noundef %event, i32 noundef %flags) #8 align 16 !dbg !5986 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !5988, metadata !DIExpression()), !dbg !5990
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5989, metadata !DIExpression()), !dbg !5991
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5992
  %and = and i32 %0, 1, !dbg !5994
  %tobool = icmp ne i32 %and, 0, !dbg !5994
  br i1 %tobool, label %if.then, label %if.end, !dbg !5995

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %event.addr, align 8, !dbg !5996
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5997
  call void @msr_event_start(ptr noundef %1, i32 noundef %2) #12, !dbg !5998
  br label %if.end, !dbg !5998

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msr_event_del(ptr noundef %event, i32 noundef %flags) #8 align 16 !dbg !6000 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6002, metadata !DIExpression()), !dbg !6004
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6003, metadata !DIExpression()), !dbg !6005
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6006
  call void @msr_event_stop(ptr noundef %0, i32 noundef 4) #12, !dbg !6007
  ret void, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msr_event_start(ptr noundef %event, i32 noundef %flags) #8 align 16 !dbg !6009 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %now = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6011, metadata !DIExpression()), !dbg !6014
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6012, metadata !DIExpression()), !dbg !6015
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #13, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %now, metadata !6013, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6018
  %call = call i64 @msr_read_counter(ptr noundef %0) #12, !dbg !6019
  store i64 %call, ptr %now, align 8, !dbg !6017
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6020
  %hw = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 26, !dbg !6020
  %prev_count = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 5, !dbg !6020
  %a = getelementptr inbounds %struct.local64_t, ptr %prev_count, i32 0, i32 0, !dbg !6020
  %a1 = getelementptr inbounds %struct.local_t, ptr %a, i32 0, i32 0, !dbg !6020
  %2 = load i64, ptr %now, align 8, !dbg !6020
  call void @atomic_long_set(ptr noundef %a1, i64 noundef %2) #12, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #13, !dbg !6021
  ret void, !dbg !6021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msr_event_stop(ptr noundef %event, i32 noundef %flags) #8 align 16 !dbg !6022 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6025, metadata !DIExpression()), !dbg !6027
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6028
  call void @msr_event_update(ptr noundef %0) #12, !dbg !6029
  ret void, !dbg !6030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msr_event_update(ptr noundef %event) #8 align 16 !dbg !6031 {
entry:
  %event.addr = alloca ptr, align 8
  %prev = alloca i64, align 8
  %now = alloca i64, align 8
  %delta = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6033, metadata !DIExpression()), !dbg !6037
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #13, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !6034, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #13, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %now, metadata !6035, metadata !DIExpression()), !dbg !6040
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #13, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !6036, metadata !DIExpression()), !dbg !6042
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6043
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6043
  %prev_count = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 5, !dbg !6043
  %a = getelementptr inbounds %struct.local64_t, ptr %prev_count, i32 0, i32 0, !dbg !6043
  %a1 = getelementptr inbounds %struct.local_t, ptr %a, i32 0, i32 0, !dbg !6043
  %call = call i64 @atomic_long_read(ptr noundef %a1) #12, !dbg !6043
  store i64 %call, ptr %prev, align 8, !dbg !6044
  br label %do.body, !dbg !6045

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6046
  %call2 = call i64 @msr_read_counter(ptr noundef %1) #12, !dbg !6048
  store i64 %call2, ptr %now, align 8, !dbg !6049
  br label %do.cond, !dbg !6050

do.cond:                                          ; preds = %do.body
  %2 = load ptr, ptr %event.addr, align 8, !dbg !6051
  %hw3 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 26, !dbg !6052
  %prev_count4 = getelementptr inbounds %struct.hw_perf_event, ptr %hw3, i32 0, i32 5, !dbg !6053
  %3 = load i64, ptr %now, align 8, !dbg !6054
  %call5 = call zeroext i1 @local64_try_cmpxchg(ptr noundef %prev_count4, ptr noundef %prev, i64 noundef %3) #12, !dbg !6055
  %lnot = xor i1 %call5, true, !dbg !6056
  br i1 %lnot, label %do.body, label %do.end, !dbg !6050, !llvm.loop !6057

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %now, align 8, !dbg !6061
  %5 = load i64, ptr %prev, align 8, !dbg !6062
  %sub = sub i64 %4, %5, !dbg !6063
  store i64 %sub, ptr %delta, align 8, !dbg !6064
  %6 = load ptr, ptr %event.addr, align 8, !dbg !6065
  %hw6 = getelementptr inbounds %struct.perf_event, ptr %6, i32 0, i32 26, !dbg !6065
  %7 = getelementptr inbounds %struct.hw_perf_event, ptr %hw6, i32 0, i32 0, !dbg !6065
  %event_base = getelementptr inbounds %struct.anon.22, ptr %7, i32 0, i32 3, !dbg !6065
  %8 = load i64, ptr %event_base, align 8, !dbg !6065
  %cmp = icmp eq i64 %8, 52, !dbg !6065
  %lnot7 = xor i1 %cmp, true, !dbg !6065
  %lnot8 = xor i1 %lnot7, true, !dbg !6065
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6065
  %conv = sext i32 %lnot.ext to i64, !dbg !6065
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6065
  %tobool = icmp ne i64 %expval, 0, !dbg !6065
  br i1 %tobool, label %if.then, label %if.else, !dbg !6067

if.then:                                          ; preds = %do.end
  %9 = load i64, ptr %delta, align 8, !dbg !6068
  %call9 = call i64 @sign_extend64(i64 noundef %9, i32 noundef 31) #12, !dbg !6070
  store i64 %call9, ptr %delta, align 8, !dbg !6071
  %10 = load i64, ptr %delta, align 8, !dbg !6072
  %11 = load ptr, ptr %event.addr, align 8, !dbg !6072
  %count = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 17, !dbg !6072
  %a10 = getelementptr inbounds %struct.local64_t, ptr %count, i32 0, i32 0, !dbg !6072
  call void @local_add(i64 noundef %10, ptr noundef %a10) #12, !dbg !6072
  br label %if.end31, !dbg !6073

if.else:                                          ; preds = %do.end
  %12 = load ptr, ptr %event.addr, align 8, !dbg !6074
  %hw11 = getelementptr inbounds %struct.perf_event, ptr %12, i32 0, i32 26, !dbg !6074
  %13 = getelementptr inbounds %struct.hw_perf_event, ptr %hw11, i32 0, i32 0, !dbg !6074
  %event_base12 = getelementptr inbounds %struct.anon.22, ptr %13, i32 0, i32 3, !dbg !6074
  %14 = load i64, ptr %event_base12, align 8, !dbg !6074
  %cmp13 = icmp eq i64 %14, 412, !dbg !6074
  %lnot15 = xor i1 %cmp13, true, !dbg !6074
  %lnot17 = xor i1 %lnot15, true, !dbg !6074
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6074
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !6074
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !6074
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !6074
  br i1 %tobool21, label %if.then22, label %if.else28, !dbg !6076

if.then22:                                        ; preds = %if.else
  %15 = load i64, ptr %now, align 8, !dbg !6077
  %and = and i64 %15, 2147483648, !dbg !6079
  %tobool23 = icmp ne i64 %and, 0, !dbg !6079
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !6077

cond.true:                                        ; preds = %if.then22
  %16 = load i64, ptr %now, align 8, !dbg !6080
  %shr = lshr i64 %16, 16, !dbg !6081
  %and24 = and i64 %shr, 63, !dbg !6082
  br label %cond.end, !dbg !6077

cond.false:                                       ; preds = %if.then22
  br label %cond.end, !dbg !6077

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %and24, %cond.true ], [ -1, %cond.false ], !dbg !6077
  store i64 %cond, ptr %now, align 8, !dbg !6083
  %17 = load ptr, ptr %event.addr, align 8, !dbg !6084
  %count25 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 17, !dbg !6084
  %a26 = getelementptr inbounds %struct.local64_t, ptr %count25, i32 0, i32 0, !dbg !6084
  %a27 = getelementptr inbounds %struct.local_t, ptr %a26, i32 0, i32 0, !dbg !6084
  %18 = load i64, ptr %now, align 8, !dbg !6084
  call void @atomic_long_set(ptr noundef %a27, i64 noundef %18) #12, !dbg !6084
  br label %if.end, !dbg !6085

if.else28:                                        ; preds = %if.else
  %19 = load i64, ptr %delta, align 8, !dbg !6086
  %20 = load ptr, ptr %event.addr, align 8, !dbg !6086
  %count29 = getelementptr inbounds %struct.perf_event, ptr %20, i32 0, i32 17, !dbg !6086
  %a30 = getelementptr inbounds %struct.local64_t, ptr %count29, i32 0, i32 0, !dbg !6086
  call void @local_add(i64 noundef %19, ptr noundef %a30) #12, !dbg !6086
  br label %if.end

if.end:                                           ; preds = %if.else28, %cond.end
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #13, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #13, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #13, !dbg !6088
  ret void, !dbg !6088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @event_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #8 align 16 !dbg !6089 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6091, metadata !DIExpression()), !dbg !6094
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6092, metadata !DIExpression()), !dbg !6094
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  br label %do.body, !dbg !6094

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6095

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6094
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.25) #12, !dbg !6094
  %conv = sext i32 %call to i64, !dbg !6094
  ret i64 %conv, !dbg !6094
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6097 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #9 align 16 !dbg !6101 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6106, metadata !DIExpression()), !dbg !6109
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6107, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6108, metadata !DIExpression()), !dbg !6112
  %0 = load i64, ptr %size.addr, align 8, !dbg !6113
  %1 = load i64, ptr %index.addr, align 8, !dbg !6114
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #13, !dbg !6115, !srcloc !6116
  store i64 %2, ptr %mask, align 8, !dbg !6115
  %3 = load i64, ptr %mask, align 8, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !6118
  ret i64 %3, !dbg !6119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msr_read_counter(ptr noundef %event) #9 align 16 !dbg !6120 {
entry:
  %event.addr = alloca ptr, align 8
  %now = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6124, metadata !DIExpression()), !dbg !6126
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #13, !dbg !6127
  call void @llvm.dbg.declare(metadata ptr %now, metadata !6125, metadata !DIExpression()), !dbg !6128
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6129
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6131
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6132
  %event_base = getelementptr inbounds %struct.anon.22, ptr %1, i32 0, i32 3, !dbg !6132
  %2 = load i64, ptr %event_base, align 8, !dbg !6132
  %tobool = icmp ne i64 %2, 0, !dbg !6129
  br i1 %tobool, label %if.then, label %if.else, !dbg !6133

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %event.addr, align 8, !dbg !6134
  %hw1 = getelementptr inbounds %struct.perf_event, ptr %3, i32 0, i32 26, !dbg !6134
  %4 = getelementptr inbounds %struct.hw_perf_event, ptr %hw1, i32 0, i32 0, !dbg !6134
  %event_base2 = getelementptr inbounds %struct.anon.22, ptr %4, i32 0, i32 3, !dbg !6134
  %5 = load i64, ptr %event_base2, align 8, !dbg !6134
  %conv = trunc i64 %5 to i32, !dbg !6134
  %call = call i64 @native_read_msr(i32 noundef %conv) #12, !dbg !6134
  store i64 %call, ptr %now, align 8, !dbg !6134
  br label %if.end, !dbg !6134

if.else:                                          ; preds = %entry
  %call3 = call i64 @rdtsc_ordered() #12, !dbg !6135
  store i64 %call3, ptr %now, align 8, !dbg !6136
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, ptr %now, align 8, !dbg !6137
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #13, !dbg !6138
  ret i64 %6, !dbg !6139
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #1 align 16 !dbg !6140 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6145, metadata !DIExpression()), !dbg !6147
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6146, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6149
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #12, !dbg !6150
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6151
  %2 = load i64, ptr %i.addr, align 8, !dbg !6152
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #12, !dbg !6153
  ret void, !dbg !6154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #9 align 16 !dbg !6155 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6160, metadata !DIExpression()), !dbg !6162
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !6163
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6161, metadata !DIExpression()), !dbg !6164
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6165
  %call = call i64 @__rdmsr(i32 noundef %0) #12, !dbg !6166
  store i64 %call, ptr %val, align 8, !dbg !6167
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #12, !dbg !6168
  br i1 %call1, label %if.then, label %if.end, !dbg !6170

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6171
  %2 = load i64, ptr %val, align 8, !dbg !6172
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #12, !dbg !6173
  br label %if.end, !dbg !6173

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !6175
  ret i64 %3, !dbg !6176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc_ordered() #1 align 16 !dbg !6177 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #13, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6181, metadata !DIExpression()), !dbg !6183
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #13, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6184, !srcloc !6185
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !6184
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !6184
  store i64 %asmresult, ptr %low, align 8, !dbg !6184
  store i64 %asmresult1, ptr %high, align 8, !dbg !6184
  %1 = load i64, ptr %low, align 8, !dbg !6186
  %2 = load i64, ptr %high, align 8, !dbg !6186
  %shl = shl i64 %2, 32, !dbg !6186
  %or = or i64 %1, %shl, !dbg !6186
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #13, !dbg !6187
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #13, !dbg !6187
  ret i64 %or, !dbg !6188
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #1 align 16 !dbg !6189 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6191, metadata !DIExpression()), !dbg !6194
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #13, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6192, metadata !DIExpression()), !dbg !6195
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #13, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6193, metadata !DIExpression()), !dbg !6195
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6196
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !6197, !srcloc !6198
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !6197
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !6197
  store i64 %asmresult, ptr %low, align 8, !dbg !6197
  store i64 %asmresult1, ptr %high, align 8, !dbg !6197
  %2 = load i64, ptr %low, align 8, !dbg !6199
  %3 = load i64, ptr %high, align 8, !dbg !6199
  %shl = shl i64 %3, 32, !dbg !6199
  %or = or i64 %2, %shl, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #13, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #13, !dbg !6200
  ret i64 %or, !dbg !6201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #1 align 16 !dbg !6202 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6220
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !6221
  ret i1 %call, !dbg !6222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #1 align 16 !dbg !6226 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6231, metadata !DIExpression()), !dbg !6234
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6232, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6236
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6237, !range !5846, !noundef !944
  %tobool = trunc i8 %1 to i1, !dbg !6237
  %conv = zext i1 %tobool to i32, !dbg !6237
  %or = or i32 2, %conv, !dbg !6238
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !6239, !srcloc !6240

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6241
  br label %return, !dbg !6241

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6233), !dbg !6242
  store i1 true, ptr %retval, align 1, !dbg !6243
  br label %return, !dbg !6243

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6244
  ret i1 %2, !dbg !6244
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6245 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6253, metadata !DIExpression()), !dbg !6255
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6254, metadata !DIExpression()), !dbg !6256
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6257
  %1 = load i64, ptr %size.addr, align 8, !dbg !6258
  %conv = trunc i64 %1 to i32, !dbg !6258
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6259
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6260
  %3 = load i64, ptr %size.addr, align 8, !dbg !6260
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !6260
  ret void, !dbg !6261
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #1 align 16 !dbg !6262 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6264, metadata !DIExpression()), !dbg !6266
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6265, metadata !DIExpression()), !dbg !6267
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6268
  %1 = load i64, ptr %i.addr, align 8, !dbg !6269
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #12, !dbg !6270
  ret void, !dbg !6271
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !6272 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6277, metadata !DIExpression()), !dbg !6279
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6278, metadata !DIExpression()), !dbg !6280
  ret i1 true, !dbg !6281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #9 align 16 !dbg !6282 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6287, metadata !DIExpression()), !dbg !6290
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6288, metadata !DIExpression()), !dbg !6291
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6289, metadata !DIExpression()), !dbg !6292
  ret void, !dbg !6293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #1 align 16 !dbg !6294 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6300, metadata !DIExpression()), !dbg !6302
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6301, metadata !DIExpression()), !dbg !6303
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6304
  %1 = load i64, ptr %i.addr, align 8, !dbg !6305
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #12, !dbg !6306
  ret void, !dbg !6307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #1 align 16 !dbg !6308 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6312, metadata !DIExpression()), !dbg !6314
  br label %do.body, !dbg !6315

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !6316
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6316
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !6316
  store volatile i64 %0, ptr %counter, align 8, !dbg !6316
  br label %do.end, !dbg !6316

do.end:                                           ; preds = %do.body
  ret void, !dbg !6318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #1 align 16 !dbg !6319 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6325, metadata !DIExpression()), !dbg !6326
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6327
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #12, !dbg !6328
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6329
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #12, !dbg !6330
  ret i64 %call, !dbg !6331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @local64_try_cmpxchg(ptr noundef %l, ptr noundef %old, i64 noundef %new) #9 align 16 !dbg !6332 {
entry:
  %l.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !6337, metadata !DIExpression()), !dbg !6340
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6338, metadata !DIExpression()), !dbg !6341
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6339, metadata !DIExpression()), !dbg !6342
  %0 = load ptr, ptr %l.addr, align 8, !dbg !6343
  %a = getelementptr inbounds %struct.local64_t, ptr %0, i32 0, i32 0, !dbg !6344
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6345
  %2 = load i64, ptr %new.addr, align 8, !dbg !6346
  %call = call zeroext i1 @local_try_cmpxchg(ptr noundef %a, ptr noundef %1, i64 noundef %2) #12, !dbg !6347
  ret i1 %call, !dbg !6348
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sign_extend64(i64 noundef %value, i32 noundef %index) #1 align 16 !dbg !6349 {
entry:
  %value.addr = alloca i64, align 8
  %index.addr = alloca i32, align 4
  %shift = alloca i8, align 1
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6354, metadata !DIExpression()), !dbg !6357
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6355, metadata !DIExpression()), !dbg !6358
  call void @llvm.lifetime.start.p0(i64 1, ptr %shift) #13, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !6356, metadata !DIExpression()), !dbg !6360
  %0 = load i32, ptr %index.addr, align 4, !dbg !6361
  %sub = sub i32 63, %0, !dbg !6362
  %conv = trunc i32 %sub to i8, !dbg !6363
  store i8 %conv, ptr %shift, align 1, !dbg !6360
  %1 = load i64, ptr %value.addr, align 8, !dbg !6364
  %2 = load i8, ptr %shift, align 1, !dbg !6365
  %conv1 = zext i8 %2 to i32, !dbg !6365
  %sh_prom = zext i32 %conv1 to i64, !dbg !6366
  %shl = shl i64 %1, %sh_prom, !dbg !6366
  %3 = load i8, ptr %shift, align 1, !dbg !6367
  %conv2 = zext i8 %3 to i32, !dbg !6367
  %sh_prom3 = zext i32 %conv2 to i64, !dbg !6368
  %shr = ashr i64 %shl, %sh_prom3, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 1, ptr %shift) #13, !dbg !6369
  ret i64 %shr, !dbg !6370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_add(i64 noundef %i, ptr noundef %l) #9 align 16 !dbg !6371 {
entry:
  %i.addr = alloca i64, align 8
  %l.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6376, metadata !DIExpression()), !dbg !6378
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !6377, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %l.addr, align 8, !dbg !6380
  %a = getelementptr inbounds %struct.local_t, ptr %0, i32 0, i32 0, !dbg !6381
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %a, i32 0, i32 0, !dbg !6382
  %1 = load i64, ptr %i.addr, align 8, !dbg !6383
  call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #13, !dbg !6384, !srcloc !6385
  ret void, !dbg !6386
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6387 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6389, metadata !DIExpression()), !dbg !6391
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6393
  %1 = load i64, ptr %size.addr, align 8, !dbg !6394
  %conv = trunc i64 %1 to i32, !dbg !6394
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !6395
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6396
  %3 = load i64, ptr %size.addr, align 8, !dbg !6396
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !6396
  ret void, !dbg !6397
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #1 align 16 !dbg !6398 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6400, metadata !DIExpression()), !dbg !6401
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6402
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #12, !dbg !6403
  ret i64 %call, !dbg !6404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !6405 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6407, metadata !DIExpression()), !dbg !6409
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  ret i1 true, !dbg !6411
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #1 align 16 !dbg !6412 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6418, metadata !DIExpression()), !dbg !6419
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6420
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #12, !dbg !6421
  ret i64 %call, !dbg !6422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #1 align 16 !dbg !6423 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6427
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6427
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6427
  ret i64 %1, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @local_try_cmpxchg(ptr noundef %l, ptr noundef %old, i64 noundef %new) #9 align 16 !dbg !6429 {
entry:
  %l.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !6433, metadata !DIExpression()), !dbg !6445
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6434, metadata !DIExpression()), !dbg !6446
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6435, metadata !DIExpression()), !dbg !6447
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #13, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6436, metadata !DIExpression()), !dbg !6448
  %0 = load ptr, ptr %l.addr, align 8, !dbg !6448
  %a = getelementptr inbounds %struct.local_t, ptr %0, i32 0, i32 0, !dbg !6448
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %a, i32 0, i32 0, !dbg !6448
  store ptr %counter, ptr %__ai_ptr, align 8, !dbg !6448
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #13, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !6438, metadata !DIExpression()), !dbg !6448
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6448
  store ptr %1, ptr %__ai_oldp, align 8, !dbg !6448
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !6448
  call void @instrument_atomic_read_write(ptr noundef %2, i64 noundef 8) #12, !dbg !6448
  %3 = load ptr, ptr %__ai_oldp, align 8, !dbg !6448
  call void @instrument_read_write(ptr noundef %3, i64 noundef 8) #12, !dbg !6448
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6439, metadata !DIExpression()), !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6441, metadata !DIExpression()), !dbg !6449
  %4 = load ptr, ptr %__ai_oldp, align 8, !dbg !6449
  store ptr %4, ptr %_old, align 8, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6442, metadata !DIExpression()), !dbg !6449
  %5 = load ptr, ptr %_old, align 8, !dbg !6449
  %6 = load i64, ptr %5, align 8, !dbg !6449
  store i64 %6, ptr %__old, align 8, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6443, metadata !DIExpression()), !dbg !6449
  %7 = load i64, ptr %new.addr, align 8, !dbg !6449
  store i64 %7, ptr %__new, align 8, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6444, metadata !DIExpression()), !dbg !6449
  %8 = load ptr, ptr %__ai_ptr, align 8, !dbg !6449
  store ptr %8, ptr %__ptr, align 8, !dbg !6449
  %9 = load ptr, ptr %__ptr, align 8, !dbg !6449
  %10 = load i64, ptr %__old, align 8, !dbg !6449
  %11 = load i64, ptr %__new, align 8, !dbg !6449
  %12 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %9, i64 %11, ptr elementtype(i64) %9, i64 %10) #13, !dbg !6449, !srcloc !6450
  %asmresult = extractvalue { i8, i64 } %12, 0, !dbg !6449
  %asmresult1 = extractvalue { i8, i64 } %12, 1, !dbg !6449
  %13 = icmp ult i8 %asmresult, 2, !dbg !6449
  call void @llvm.assume(i1 %13), !dbg !6449
  store i8 %asmresult, ptr %success, align 1, !dbg !6449
  store i64 %asmresult1, ptr %__old, align 8, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6449
  %14 = load i8, ptr %success, align 1, !dbg !6451, !range !5846, !noundef !944
  %tobool = trunc i8 %14 to i1, !dbg !6451
  %lnot = xor i1 %tobool, true, !dbg !6451
  %lnot2 = xor i1 %lnot, true, !dbg !6451
  %lnot3 = xor i1 %lnot2, true, !dbg !6451
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6451
  %conv = sext i32 %lnot.ext to i64, !dbg !6451
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6451
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6451
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6449

if.then:                                          ; preds = %entry
  %15 = load i64, ptr %__old, align 8, !dbg !6451
  %16 = load ptr, ptr %_old, align 8, !dbg !6451
  store i64 %15, ptr %16, align 8, !dbg !6451
  br label %if.end, !dbg !6451

if.end:                                           ; preds = %if.then, %entry
  %17 = load i8, ptr %success, align 1, !dbg !6449, !range !5846, !noundef !944
  %tobool6 = trunc i8 %17 to i1, !dbg !6449
  %lnot7 = xor i1 %tobool6, true, !dbg !6449
  %lnot9 = xor i1 %lnot7, true, !dbg !6449
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6449
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6449
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !6449
  store i64 %expval12, ptr %tmp5, align 8, !dbg !6451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #13, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #13, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #13, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #13, !dbg !6448
  %18 = load i64, ptr %tmp5, align 8, !dbg !6449
  store i64 %18, ptr %tmp, align 8, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #13, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #13, !dbg !6453
  %19 = load i64, ptr %tmp, align 8, !dbg !6448
  %tobool13 = icmp ne i64 %19, 0, !dbg !6453
  ret i1 %tobool13, !dbg !6454
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6455 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6457, metadata !DIExpression()), !dbg !6459
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6458, metadata !DIExpression()), !dbg !6460
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6461
  %1 = load i64, ptr %size.addr, align 8, !dbg !6462
  %conv = trunc i64 %1 to i32, !dbg !6462
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6463
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6464
  %3 = load i64, ptr %size.addr, align 8, !dbg !6464
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !6464
  ret void, !dbg !6465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6466 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6469, metadata !DIExpression()), !dbg !6471
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6472
  %1 = load i64, ptr %size.addr, align 8, !dbg !6473
  %conv = trunc i64 %1 to i32, !dbg !6473
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6474
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6475
  %3 = load i64, ptr %size.addr, align 8, !dbg !6475
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #12, !dbg !6475
  ret void, !dbg !6476
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764}
!llvm.ident = !{!5765}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_msr__314_316_msr_init6315", scope: !2, file: !3, line: 316, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/events/.msr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/events/msr\22 -D KBUILD_BASENAME=\22msr\22 -D KBUILD_MODNAME=\22msr\22 -D __KBUILD_MODNAME=kmod_msr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/events/msr.ll arch/x86/events/msr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !261, globals: !278, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/events/msr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd1ae27cd92e6b3f12cc4eb26d2da6cf")
!4 = !{!5, !17, !22, !28, !33, !129, !135, !142, !147, !153, !169, !176, !184, !191, !197, !204, !212, !219, !228, !233, !238, !244, !253}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_msr_id", file: !3, line: 8, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16}
!8 = !DIEnumerator(name: "PERF_MSR_TSC", value: 0)
!9 = !DIEnumerator(name: "PERF_MSR_APERF", value: 1)
!10 = !DIEnumerator(name: "PERF_MSR_MPERF", value: 2)
!11 = !DIEnumerator(name: "PERF_MSR_PPERF", value: 3)
!12 = !DIEnumerator(name: "PERF_MSR_SMI", value: 4)
!13 = !DIEnumerator(name: "PERF_MSR_PTSC", value: 5)
!14 = !DIEnumerator(name: "PERF_MSR_IRPERF", value: 6)
!15 = !DIEnumerator(name: "PERF_MSR_THERM", value: 7)
!16 = !DIEnumerator(name: "PERF_MSR_EVENT_MAX", value: 8)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !6, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !23, line: 26, baseType: !6, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!27 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !29, line: 65, baseType: !6, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!32 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !35, file: !34, line: 147, baseType: !6, size: 32, elements: !126)
!34 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !34, line: 135, size: 512, elements: !36)
!36 = !{!37, !41, !43, !45, !49, !50, !66, !124, !125}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !35, file: !34, line: 136, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !34, line: 137, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !35, file: !34, line: 138, baseType: !44, size: 32, offset: 128)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !35, file: !34, line: 139, baseType: !46, size: 16, offset: 160)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !47, line: 24, baseType: !48)
!47 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !34, line: 150, baseType: !33, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !35, file: !34, line: 151, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !34, line: 64, baseType: !53)
!53 = !DISubroutineType(types: !54)
!54 = !{!44, !55, !44, !42, !56, !62}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 61, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !59, line: 72, baseType: !60)
!59 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !59, line: 16, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !47, line: 52, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !59, line: 88, baseType: !65)
!65 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !35, file: !34, line: 152, baseType: !67, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !34, line: 117, size: 256, elements: !69)
!69 = !{!70, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !68, file: !34, line: 118, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !47, line: 174, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 172, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !72, file: !47, line: 173, baseType: !44, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !68, file: !34, line: 119, baseType: !76, size: 192, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !77, line: 41, baseType: !78)
!77 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !77, line: 37, size: 192, elements: !79)
!79 = !{!80, !118}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !78, file: !77, line: 38, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !82, line: 29, baseType: !83)
!82 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !82, line: 17, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !82, line: 18, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !82, line: 18, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !86, file: !82, line: 19, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !90, line: 14, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !89, file: !90, line: 15, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !94, line: 44, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !94, line: 14, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 15, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 15, size: 32, elements: !99)
!99 = !{!100, !101, !111}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !98, file: !94, line: 16, baseType: !71, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !94, line: 24, baseType: !102, size: 16)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !94, line: 24, size: 16, elements: !103)
!103 = !{!104, !110}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !102, file: !94, line: 25, baseType: !105, size: 8)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !107)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !108, line: 21, baseType: !109)
!108 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !102, file: !94, line: 26, baseType: !105, size: 8, offset: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !94, line: 28, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !94, line: 28, size: 32, elements: !113)
!113 = !{!114, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !112, file: !94, line: 29, baseType: !115, size: 16)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !108, line: 24, baseType: !48)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !112, file: !94, line: 30, baseType: !115, size: 16, offset: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !78, file: !77, line: 39, baseType: !119, size: 128, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !47, line: 190, size: 128, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !47, line: 191, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !47, line: 191, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !35, file: !34, line: 153, baseType: !42, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !35, file: !34, line: 154, baseType: !42, size: 64, offset: 448)
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!128 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !130, line: 16, baseType: !6, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "TT_NONE", value: 0)
!133 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!134 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !136, line: 312, baseType: !6, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!139 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!140 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!141 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !143, line: 2052, baseType: !6, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!146 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !148, line: 54, baseType: !6, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "USRQUOTA", value: 0)
!151 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!152 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !154, line: 1325, baseType: !6, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!156 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!157 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!158 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!159 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!160 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!161 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!162 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!163 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!164 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!165 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!166 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!167 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!168 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !170, line: 15, baseType: !6, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!173 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!174 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!175 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !177, line: 68, baseType: !6, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!180 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!181 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!182 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!183 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !185, line: 51, baseType: !6, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!186 = !{!187, !188, !189, !190}
!187 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!188 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!189 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!190 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !192, line: 45, baseType: !6, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!195 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!196 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !198, line: 487, baseType: !6, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!199 = !{!200, !201, !202, !203}
!200 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!201 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!202 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!203 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !205, line: 620, baseType: !6, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!208 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!209 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!210 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!211 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !205, line: 597, baseType: !44, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!215 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!216 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!217 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!218 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !198, line: 547, baseType: !6, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227}
!221 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!222 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!223 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!224 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!225 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!226 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!227 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !198, line: 564, baseType: !6, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !198, line: 577, baseType: !6, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !198, line: 503, baseType: !6, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!241 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!242 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !245, line: 593, baseType: !44, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!246 = !{!247, !248, !249, !250, !251, !252}
!247 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!248 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!249 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!250 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!251 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!252 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !254, line: 9, baseType: !6, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!255 = !{!256, !257, !258, !259, !260}
!256 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!257 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!258 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!259 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!260 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!261 = !{!42, !44, !262, !61, !263, !267, !270, !272, !273, !266}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !106, line: 22, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !108, line: 30, baseType: !65)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !108, line: 31, baseType: !277)
!277 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!278 = !{!0, !279, !284, !289, !5604, !5607, !5609, !5612, !5614, !5619, !5638, !5640, !5642, !5644, !5646, !5648, !5650, !5652, !5654, !5656, !5658, !5660, !5662, !5664, !5666, !5668, !5670, !5672, !5675, !5677, !5679, !5681, !5683, !5685, !5687, !5689, !5691, !5694, !5699, !5701, !5703, !5708, !5711, !5713, !5718, !5720, !5722, !5724, !5726, !5729, !5731, !5733, !5735, !5737, !5739, !5741, !5743, !5745, !5747, !5749, !5754}
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 176, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 22)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 4)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "msr", scope: !2, file: !3, line: 155, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 2560, elements: !788)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_msr", file: !293, line: 6, size: 320, elements: !294)
!293 = !DIFile(filename: "arch/x86/events/probe.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "735e24e786030d98ace6e9085068cd43")
!294 = !{!295, !296, !5598, !5602, !5603}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !292, file: !293, line: 7, baseType: !275, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !292, file: !293, line: 8, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !299, line: 84, size: 320, elements: !300)
!299 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!300 = !{!301, !302, !5571, !5594, !5596}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !299, line: 85, baseType: !38, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !298, file: !299, line: 86, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!46, !306, !381, !44}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !308, line: 64, size: 512, elements: !309)
!308 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!309 = !{!310, !311, !312, !313, !360, !452, !5561, !5566, !5567, !5568, !5569, !5570}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !308, line: 65, baseType: !38, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !307, file: !308, line: 66, baseType: !119, size: 128, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !307, file: !308, line: 67, baseType: !306, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !307, file: !308, line: 68, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !308, line: 168, size: 768, elements: !316)
!316 = !{!317, !318, !319, !320}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !315, file: !308, line: 169, baseType: !119, size: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !315, file: !308, line: 170, baseType: !81, size: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !315, file: !308, line: 171, baseType: !307, size: 512, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !315, file: !308, line: 172, baseType: !321, size: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !308, line: 133, size: 192, elements: !324)
!324 = !{!325, !332, !337}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !323, file: !308, line: 134, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!44, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !308, line: 135, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!38, !330}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !323, file: !308, line: 136, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!44, !330, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !308, line: 125, size: 20736, elements: !344)
!344 = !{!345, !350, !354, !355, !359}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !343, file: !308, line: 126, baseType: !346, size: 192)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !348)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!348 = !{!349}
!349 = !DISubrange(count: 3)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !343, file: !308, line: 127, baseType: !351, size: 4096, offset: 192)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 4096, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !343, file: !308, line: 128, baseType: !44, size: 32, offset: 4288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !343, file: !308, line: 129, baseType: !356, size: 16384, offset: 4320)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16384, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 2048)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !343, file: !308, line: 130, baseType: !44, size: 32, offset: 20704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !307, file: !308, line: 69, baseType: !361, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !308, line: 116, size: 384, elements: !364)
!364 = !{!365, !369, !390, !394, !429, !433}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !363, file: !308, line: 117, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !306}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !363, file: !308, line: 118, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !299, line: 254, size: 128, elements: !373)
!373 = !{!374, !386}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !372, file: !299, line: 255, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !306, !381, !347}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !47, line: 66, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !59, line: 73, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !59, line: 15, baseType: !271)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !299, line: 30, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !299, line: 31, baseType: !38, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !382, file: !299, line: 32, baseType: !46, size: 16, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !372, file: !299, line: 256, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!378, !306, !381, !38, !57}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !363, file: !308, line: 119, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !363, file: !308, line: 120, baseType: !395, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !330}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !23, line: 39, size: 384, elements: !401)
!401 = !{!402, !403, !409, !413, !421, !425}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !23, line: 40, baseType: !22, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !400, file: !23, line: 41, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !47, line: 35, baseType: !408)
!408 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !400, file: !23, line: 42, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!42}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !400, file: !23, line: 43, baseType: !414, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!417, !419}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !23, line: 19, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !400, file: !23, line: 44, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!417}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !400, file: !23, line: 45, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !42}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !363, file: !308, line: 121, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!417, !330}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !363, file: !308, line: 122, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !330, !437, !445}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !439, line: 23, baseType: !440)
!439 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 21, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !440, file: !439, line: 22, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !47, line: 37, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !59, line: 49, baseType: !6)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !439, line: 28, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 26, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !439, line: 27, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !47, line: 38, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !59, line: 50, baseType: !6)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !307, file: !308, line: 70, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !455, line: 190, size: 1152, elements: !456)
!455 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!456 = !{!457, !458, !459, !460, !461, !469, !470, !471, !5553, !5554, !5555, !5556, !5557, !5560}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !455, line: 191, baseType: !71, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !454, file: !455, line: 192, baseType: !71, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !454, file: !455, line: 202, baseType: !453, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !455, line: 203, baseType: !38, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !454, file: !455, line: 205, baseType: !462, size: 192, align: 64, offset: 192)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !463, line: 5, size: 192, align: 64, elements: !464)
!463 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!464 = !{!465, !466, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !462, file: !463, line: 6, baseType: !61, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !462, file: !463, line: 7, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !462, file: !463, line: 8, baseType: !467, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !454, file: !455, line: 207, baseType: !417, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !454, file: !455, line: 208, baseType: !6, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !455, line: 209, baseType: !472, size: 256, offset: 512)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !455, line: 209, size: 256, elements: !473)
!473 = !{!474, !486, !490}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !472, file: !455, line: 210, baseType: !475, size: 256)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !455, line: 153, size: 256, elements: !476)
!476 = !{!477, !478, !482, !485}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !475, file: !455, line: 154, baseType: !61, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !475, file: !455, line: 156, baseType: !479, size: 64, offset: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !463, line: 12, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !479, file: !463, line: 13, baseType: !467, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !475, file: !455, line: 162, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !455, line: 162, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !475, file: !455, line: 167, baseType: !61, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !472, file: !455, line: 211, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !455, line: 170, size: 64, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !487, file: !455, line: 171, baseType: !453, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !472, file: !455, line: 212, baseType: !491, size: 256)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !455, line: 174, size: 256, elements: !492)
!492 = !{!493, !5548, !5551, !5552}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !491, file: !455, line: 175, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !455, line: 271, size: 768, elements: !497)
!497 = !{!498, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !496, file: !455, line: 276, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!44, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !455, line: 251, size: 1216, elements: !504)
!504 = !{!505, !506, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !503, file: !455, line: 253, baseType: !453, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !503, file: !455, line: 254, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !143, line: 994, size: 1856, align: 64, elements: !509)
!509 = !{!510, !529, !530, !532, !539, !552, !553, !554, !5502, !5503, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5520, !5521, !5522}
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !143, line: 995, baseType: !511, size: 128)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !143, line: 995, size: 128, elements: !512)
!512 = !{!513, !519, !528}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !511, file: !143, line: 996, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !515, line: 60, size: 64, elements: !516)
!515 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !515, line: 61, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !511, file: !143, line: 997, baseType: !520, size: 128, align: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !47, line: 232, size: 128, align: 64, elements: !521)
!521 = !{!522, !524}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !47, line: 233, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !520, file: !47, line: 234, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !523}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !511, file: !143, line: 998, baseType: !6, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !508, file: !143, line: 1005, baseType: !81, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !508, file: !143, line: 1006, baseType: !531, size: 32, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !47, line: 156, baseType: !6)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !508, file: !143, line: 1007, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !534, line: 13, baseType: !535)
!534 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !47, line: 181, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 179, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !536, file: !47, line: 180, baseType: !265, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !508, file: !143, line: 1008, baseType: !540, size: 256, offset: 256)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !541, line: 66, size: 256, elements: !542)
!541 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!542 = !{!543, !544, !546, !551}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !540, file: !541, line: 67, baseType: !533, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !540, file: !541, line: 68, baseType: !545, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !90, line: 23, baseType: !89)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !540, file: !541, line: 70, baseType: !547, size: 32, offset: 96)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !548, line: 15, size: 32, elements: !549)
!548 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !547, file: !548, line: 20, baseType: !71, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !540, file: !541, line: 72, baseType: !119, size: 128, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !508, file: !143, line: 1009, baseType: !63, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !508, file: !143, line: 1010, baseType: !6, size: 32, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !508, file: !143, line: 1011, baseType: !555, size: 256, offset: 640)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !143, line: 948, size: 256, elements: !556)
!556 = !{!557, !578, !5498, !5499, !5500, !5501}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !555, file: !143, line: 949, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !559, line: 34, baseType: !560)
!559 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 25, size: 64, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !560, file: !559, line: 26, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !564, line: 27, baseType: !565)
!564 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !564, line: 13, size: 64, elements: !566)
!566 = !{!567, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !564, line: 14, baseType: !568, size: 32)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !565, file: !564, line: 14, size: 32, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !568, file: !564, line: 15, baseType: !71, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !564, line: 16, baseType: !572, size: 32)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !564, line: 16, size: 32, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !572, file: !564, line: 18, baseType: !105, size: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !572, file: !564, line: 19, baseType: !576, size: 24, offset: 8)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !348)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !565, file: !564, line: 26, baseType: !93, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !555, file: !143, line: 950, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !254, line: 59, size: 768, elements: !581)
!581 = !{!582, !588, !589, !590, !601, !602, !603, !604}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !580, file: !254, line: 61, baseType: !583, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !584, line: 113, baseType: !585)
!584 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !584, line: 111, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !585, file: !584, line: 112, baseType: !71, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !580, file: !254, line: 62, baseType: !6, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !254, line: 63, baseType: !81, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !580, file: !254, line: 65, baseType: !591, size: 256, offset: 128)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 256, elements: !287)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !47, line: 194, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !592, file: !47, line: 195, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !47, line: 198, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !47, line: 199, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !47, line: 199, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !580, file: !254, line: 66, baseType: !592, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !580, file: !254, line: 68, baseType: !76, size: 192, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !580, file: !254, line: 69, baseType: !520, size: 128, align: 64, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !580, file: !254, line: 70, baseType: !605, offset: 768)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, elements: !1353)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !254, line: 54, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !606, file: !254, line: 55, baseType: !44, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !606, file: !254, line: 56, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !612, line: 26, size: 1152, elements: !613)
!612 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!613 = !{!614, !628, !629, !630, !5487, !5488, !5489, !5490, !5493, !5494, !5495, !5496, !5497}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !611, file: !612, line: 27, baseType: !615, size: 192)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !616, line: 19, size: 192, elements: !617)
!616 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!617 = !{!618, !626, !627}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !615, file: !616, line: 20, baseType: !619, size: 128)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !620, line: 296, size: 128, elements: !621)
!620 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!621 = !{!622, !623, !625}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !619, file: !620, line: 297, baseType: !81, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !619, file: !620, line: 299, baseType: !624, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !47, line: 154, baseType: !6)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !619, file: !620, line: 300, baseType: !42, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !615, file: !616, line: 21, baseType: !6, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !615, file: !616, line: 22, baseType: !6, size: 32, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !611, file: !612, line: 28, baseType: !520, size: 128, align: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !611, file: !612, line: 29, baseType: !6, size: 32, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !611, file: !612, line: 30, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !633, line: 746, size: 58368, elements: !634)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!634 = !{!635, !645, !646, !647, !648, !649, !650, !651, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !717, !728, !825, !829, !832, !863, !864, !865, !866, !877, !879, !880, !881, !882, !883, !884, !895, !896, !899, !900, !901, !902, !903, !904, !905, !906, !913, !914, !921, !922, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1434, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1449, !1450, !1451, !1452, !1454, !1455, !1456, !1457, !1458, !1459, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1483, !1489, !1559, !1560, !1561, !1562, !1566, !1569, !1576, !1581, !1584, !1587, !1590, !1964, !2171, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2209, !2210, !2211, !2220, !2228, !2229, !2230, !2231, !2232, !2237, !2238, !2239, !2242, !2243, !2246, !2249, !2252, !2260, !2263, !2264, !2350, !2351, !2352, !2353, !2354, !2360, !2361, !2362, !2363, !2364, !2365, !2368, !2371, !2372, !2375, !2376, !2377, !2415, !2416, !2417, !2420, !2421, !2422, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2454, !2457, !4256, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4268, !4340, !4342, !4343, !4344, !4345, !4346, !4347, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4364, !4365, !4366}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !632, file: !633, line: 752, baseType: !636, size: 192)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !637, line: 56, size: 192, elements: !638)
!637 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!638 = !{!639, !640, !641, !644}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !637, line: 57, baseType: !61, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !636, file: !637, line: 58, baseType: !61, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !636, file: !637, line: 59, baseType: !642, size: 32, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !108, line: 27, baseType: !6)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !636, file: !637, line: 61, baseType: !642, size: 32, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !632, file: !633, line: 754, baseType: !6, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !632, file: !633, line: 767, baseType: !42, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !632, file: !633, line: 768, baseType: !583, size: 32, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 770, baseType: !6, size: 32, offset: 352)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !632, file: !633, line: 771, baseType: !6, size: 32, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !632, file: !633, line: 774, baseType: !44, size: 32, offset: 416)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !632, file: !633, line: 775, baseType: !652, size: 128, offset: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !653, line: 58, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!654 = !{!655, !656, !661, !662}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !652, file: !653, line: 59, baseType: !514, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !653, line: 60, baseType: !657, size: 32, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !653, line: 60, size: 32, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !657, file: !653, line: 61, baseType: !6, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !657, file: !653, line: 62, baseType: !71, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !652, file: !653, line: 65, baseType: !115, size: 16, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !652, file: !653, line: 65, baseType: !115, size: 16, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !632, file: !633, line: 776, baseType: !6, size: 32, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !632, file: !633, line: 777, baseType: !61, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !632, file: !633, line: 778, baseType: !631, size: 64, offset: 704)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !632, file: !633, line: 787, baseType: !44, size: 32, offset: 768)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !632, file: !633, line: 788, baseType: !44, size: 32, offset: 800)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !632, file: !633, line: 790, baseType: !44, size: 32, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !632, file: !633, line: 792, baseType: !44, size: 32, offset: 864)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !632, file: !633, line: 793, baseType: !44, size: 32, offset: 896)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !632, file: !633, line: 794, baseType: !44, size: 32, offset: 928)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !632, file: !633, line: 795, baseType: !6, size: 32, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !632, file: !633, line: 797, baseType: !674, size: 2048, offset: 1024)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !633, line: 551, size: 2048, elements: !675)
!675 = !{!676, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !696, !699, !700, !701}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !674, file: !633, line: 553, baseType: !677, size: 128)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !633, line: 411, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !677, file: !633, line: 412, baseType: !61, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !677, file: !633, line: 413, baseType: !642, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !674, file: !633, line: 554, baseType: !462, size: 192, align: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !674, file: !633, line: 555, baseType: !275, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !674, file: !633, line: 556, baseType: !275, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !674, file: !633, line: 558, baseType: !119, size: 128, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !674, file: !633, line: 559, baseType: !6, size: 32, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !674, file: !633, line: 561, baseType: !275, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !674, file: !633, line: 562, baseType: !275, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !674, file: !633, line: 563, baseType: !275, size: 64, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !674, file: !633, line: 564, baseType: !275, size: 64, offset: 832)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !674, file: !633, line: 565, baseType: !265, size: 64, offset: 896)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !674, file: !633, line: 566, baseType: !275, size: 64, offset: 960)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !674, file: !633, line: 568, baseType: !275, size: 64, offset: 1024)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !674, file: !633, line: 571, baseType: !44, size: 32, offset: 1088)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !674, file: !633, line: 572, baseType: !695, size: 64, offset: 1152)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !674, file: !633, line: 574, baseType: !697, size: 64, offset: 1216)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !633, line: 49, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !674, file: !633, line: 576, baseType: !697, size: 64, offset: 1280)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !674, file: !633, line: 578, baseType: !61, size: 64, offset: 1344)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !674, file: !633, line: 588, baseType: !702, size: 512, align: 512, offset: 1536)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !633, line: 497, size: 512, align: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !702, file: !633, line: 498, baseType: !275, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !702, file: !633, line: 499, baseType: !275, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !702, file: !633, line: 500, baseType: !275, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !702, file: !633, line: 501, baseType: !642, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !702, file: !633, line: 502, baseType: !642, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !702, file: !633, line: 503, baseType: !61, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !702, file: !633, line: 504, baseType: !61, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !702, file: !633, line: 505, baseType: !61, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !702, file: !633, line: 506, baseType: !713, size: 64, align: 64, offset: 448)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !633, line: 445, size: 64, align: 64, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !713, file: !633, line: 446, baseType: !6, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !713, file: !633, line: 447, baseType: !6, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !632, file: !633, line: 798, baseType: !718, size: 384, offset: 3072)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !633, line: 592, size: 384, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !718, file: !633, line: 593, baseType: !119, size: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !718, file: !633, line: 594, baseType: !61, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !718, file: !633, line: 595, baseType: !61, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !718, file: !633, line: 596, baseType: !6, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !718, file: !633, line: 597, baseType: !48, size: 16, offset: 288)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !718, file: !633, line: 598, baseType: !48, size: 16, offset: 304)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !718, file: !633, line: 600, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !632, file: !633, line: 799, baseType: !729, size: 1792, offset: 3456)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !633, line: 610, size: 1792, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !822, !823}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !729, file: !633, line: 611, baseType: !462, size: 192, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !729, file: !633, line: 618, baseType: !275, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !729, file: !633, line: 619, baseType: !275, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !729, file: !633, line: 620, baseType: !275, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !729, file: !633, line: 621, baseType: !275, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !729, file: !633, line: 622, baseType: !275, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !729, file: !633, line: 629, baseType: !265, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !729, file: !633, line: 630, baseType: !275, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !633, line: 631, baseType: !6, size: 32, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !729, file: !633, line: 653, baseType: !6, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !729, file: !633, line: 654, baseType: !6, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !729, file: !633, line: 655, baseType: !6, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !729, file: !633, line: 656, baseType: !6, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !729, file: !633, line: 662, baseType: !745, size: 512, offset: 704)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !29, line: 118, size: 512, elements: !746)
!746 = !{!747, !755, !756, !761, !818, !819, !820, !821}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !29, line: 119, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !749, line: 9, size: 256, elements: !750)
!749 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !749, line: 10, baseType: !462, size: 192, align: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !748, file: !749, line: 11, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !754, line: 29, baseType: !265)
!754 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !745, file: !29, line: 120, baseType: !753, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !745, file: !29, line: 121, baseType: !757, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!28, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !745, file: !29, line: 122, baseType: !762, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !29, line: 159, size: 512, align: 512, elements: !764)
!764 = !{!765, !790, !791, !794, !804, !805, !813, !817}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !763, file: !29, line: 160, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !29, line: 215, size: 4608, align: 512, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !29, line: 216, baseType: !545, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !767, file: !29, line: 217, baseType: !6, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !767, file: !29, line: 218, baseType: !6, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !767, file: !29, line: 219, baseType: !6, size: 32, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !767, file: !29, line: 220, baseType: !6, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !767, file: !29, line: 221, baseType: !6, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !767, file: !29, line: 222, baseType: !6, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !767, file: !29, line: 223, baseType: !6, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !767, file: !29, line: 224, baseType: !6, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !767, file: !29, line: 226, baseType: !6, size: 32, offset: 160)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !767, file: !29, line: 227, baseType: !48, size: 16, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !767, file: !29, line: 228, baseType: !48, size: 16, offset: 208)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !767, file: !29, line: 229, baseType: !6, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !767, file: !29, line: 235, baseType: !753, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !767, file: !29, line: 236, baseType: !760, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !767, file: !29, line: 237, baseType: !753, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !767, file: !29, line: 238, baseType: !760, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !767, file: !29, line: 239, baseType: !787, size: 4096, align: 512, offset: 512)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 4096, align: 512, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 8)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !763, file: !29, line: 161, baseType: !6, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !763, file: !29, line: 162, baseType: !792, size: 32, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !47, line: 32, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !59, line: 96, baseType: !44)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !763, file: !29, line: 163, baseType: !795, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !796, line: 274, baseType: !797)
!796 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !796, line: 274, size: 32, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !797, file: !796, line: 274, baseType: !800, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !796, line: 69, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !796, line: 64, size: 32, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !801, file: !796, line: 65, baseType: !6, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !763, file: !29, line: 164, baseType: !760, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !763, file: !29, line: 165, baseType: !806, size: 128, offset: 256)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !749, line: 14, size: 128, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !806, file: !749, line: 15, baseType: !809, size: 128)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !463, line: 26, size: 128, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !809, file: !463, line: 27, baseType: !479, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !809, file: !463, line: 28, baseType: !467, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !763, file: !29, line: 166, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!753}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !763, file: !29, line: 167, baseType: !753, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !745, file: !29, line: 123, baseType: !105, size: 8, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !745, file: !29, line: 124, baseType: !105, size: 8, offset: 456)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !745, file: !29, line: 125, baseType: !105, size: 8, offset: 464)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !745, file: !29, line: 126, baseType: !105, size: 8, offset: 472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !729, file: !633, line: 671, baseType: !745, size: 512, offset: 1216)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !729, file: !633, line: 679, baseType: !824, size: 64, offset: 1728)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !632, file: !633, line: 800, baseType: !826, size: 64, offset: 5248)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !633, line: 800, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !632, file: !633, line: 809, baseType: !830, size: 64, offset: 5312)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !633, line: 70, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !632, file: !633, line: 825, baseType: !833, size: 2048, align: 512, offset: 5632)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !633, line: 509, size: 2048, align: 512, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !833, file: !633, line: 511, baseType: !275, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !833, file: !633, line: 512, baseType: !275, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !833, file: !633, line: 513, baseType: !275, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !833, file: !633, line: 514, baseType: !275, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !833, file: !633, line: 515, baseType: !275, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !833, file: !633, line: 516, baseType: !275, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !833, file: !633, line: 518, baseType: !275, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !833, file: !633, line: 519, baseType: !275, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !833, file: !633, line: 520, baseType: !265, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !833, file: !633, line: 522, baseType: !275, size: 64, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !833, file: !633, line: 523, baseType: !275, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !833, file: !633, line: 524, baseType: !265, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !833, file: !633, line: 526, baseType: !265, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !833, file: !633, line: 527, baseType: !275, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !833, file: !633, line: 529, baseType: !275, size: 64, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !833, file: !633, line: 530, baseType: !275, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !833, file: !633, line: 531, baseType: !275, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !833, file: !633, line: 532, baseType: !275, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !833, file: !633, line: 533, baseType: !275, size: 64, offset: 1152)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !833, file: !633, line: 535, baseType: !275, size: 64, offset: 1216)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !833, file: !633, line: 536, baseType: !275, size: 64, offset: 1280)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !833, file: !633, line: 537, baseType: !275, size: 64, offset: 1344)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !833, file: !633, line: 538, baseType: !275, size: 64, offset: 1408)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !833, file: !633, line: 539, baseType: !275, size: 64, offset: 1472)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !833, file: !633, line: 540, baseType: !275, size: 64, offset: 1536)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !833, file: !633, line: 541, baseType: !275, size: 64, offset: 1600)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !833, file: !633, line: 542, baseType: !275, size: 64, offset: 1664)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !833, file: !633, line: 543, baseType: !275, size: 64, offset: 1728)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !632, file: !633, line: 833, baseType: !6, size: 32, offset: 7680)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !632, file: !633, line: 836, baseType: !6, size: 32, offset: 7712)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !632, file: !633, line: 837, baseType: !44, size: 32, offset: 7744)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !632, file: !633, line: 838, baseType: !867, size: 64, offset: 7808)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !870, line: 19, baseType: !871)
!870 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !870, line: 19, size: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !871, file: !870, line: 19, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 1)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !632, file: !633, line: 839, baseType: !878, size: 64, offset: 7872)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !632, file: !633, line: 840, baseType: !869, size: 64, offset: 7936)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !632, file: !633, line: 841, baseType: !42, size: 64, offset: 8000)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !632, file: !633, line: 843, baseType: !48, size: 16, offset: 8064)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !632, file: !633, line: 845, baseType: !48, size: 16, offset: 8080)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !632, file: !633, line: 848, baseType: !44, size: 32, offset: 8096)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !632, file: !633, line: 849, baseType: !885, size: 32, offset: 8128)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !633, line: 718, size: 32, elements: !886)
!886 = !{!887, !894}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !885, file: !633, line: 724, baseType: !888, size: 32)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !885, file: !633, line: 719, size: 32, elements: !889)
!889 = !{!890, !891, !892, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !888, file: !633, line: 720, baseType: !105, size: 8)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !888, file: !633, line: 721, baseType: !105, size: 8, offset: 8)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !888, file: !633, line: 722, baseType: !105, size: 8, offset: 16)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !888, file: !633, line: 723, baseType: !105, size: 8, offset: 24)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !885, file: !633, line: 725, baseType: !642, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !632, file: !633, line: 850, baseType: !119, size: 128, offset: 8192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !632, file: !633, line: 851, baseType: !897, size: 64, offset: 8320)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !633, line: 60, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !632, file: !633, line: 855, baseType: !61, size: 64, offset: 8384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !632, file: !633, line: 856, baseType: !105, size: 8, offset: 8448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !632, file: !633, line: 857, baseType: !105, size: 8, offset: 8456)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !632, file: !633, line: 858, baseType: !44, size: 32, offset: 8480)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !632, file: !633, line: 859, baseType: !119, size: 128, offset: 8512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !632, file: !633, line: 860, baseType: !44, size: 32, offset: 8640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !632, file: !633, line: 861, baseType: !119, size: 128, offset: 8704)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !632, file: !633, line: 873, baseType: !907, size: 256, offset: 8832)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !633, line: 376, size: 256, elements: !908)
!908 = !{!909, !910, !911, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !907, file: !633, line: 381, baseType: !61, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !907, file: !633, line: 384, baseType: !277, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !907, file: !633, line: 389, baseType: !277, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !907, file: !633, line: 392, baseType: !277, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !632, file: !633, line: 875, baseType: !119, size: 128, offset: 9088)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !632, file: !633, line: 877, baseType: !915, size: 320, offset: 9216)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !916, line: 86, size: 320, elements: !917)
!916 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !915, file: !916, line: 87, baseType: !44, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !915, file: !916, line: 88, baseType: !119, size: 128, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !915, file: !916, line: 89, baseType: !119, size: 128, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !632, file: !633, line: 878, baseType: !462, size: 192, align: 64, offset: 9536)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !632, file: !633, line: 881, baseType: !923, size: 64, offset: 9728)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !154, line: 733, size: 10240, elements: !925)
!925 = !{!926, !1351}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !154, line: 734, baseType: !927, size: 10240)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !154, line: 734, size: 10240, elements: !928)
!928 = !{!929, !933, !947, !951, !952, !953, !954, !955, !956, !965, !966, !967, !973, !974, !975, !976, !977, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1014, !1026, !1029, !1075, !1076, !1077, !1080, !1337, !1338, !1341, !1342, !1343, !1349, !1350}
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !154, line: 739, baseType: !930, size: 512, align: 512)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !927, file: !154, line: 739, size: 512, align: 512, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !930, file: !154, line: 747, baseType: !71, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !927, file: !154, line: 750, baseType: !934, size: 128, offset: 512)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !935, line: 218, size: 128, elements: !936)
!935 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!936 = !{!937, !945, !946}
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !935, line: 219, baseType: !938, size: 32)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !935, line: 219, size: 32, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !938, file: !935, line: 220, baseType: !81, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !938, file: !935, line: 221, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !935, line: 197, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !935, line: 197, elements: !944)
!944 = !{}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !934, file: !935, line: 223, baseType: !6, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !934, file: !935, line: 224, baseType: !42, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !927, file: !154, line: 752, baseType: !948, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!61, !507, !61, !61, !61, !61}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !927, file: !154, line: 756, baseType: !61, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !927, file: !154, line: 757, baseType: !61, size: 64, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !927, file: !154, line: 760, baseType: !61, size: 64, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !927, file: !154, line: 761, baseType: !61, size: 64, offset: 896)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !927, file: !154, line: 763, baseType: !61, size: 64, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !927, file: !154, line: 764, baseType: !957, size: 64, offset: 1024)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !959, line: 299, baseType: !960)
!959 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !959, line: 299, size: 64, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !960, file: !959, line: 299, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !964, line: 18, baseType: !61)
!964 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !927, file: !154, line: 773, baseType: !71, size: 32, offset: 1088)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !927, file: !154, line: 785, baseType: !71, size: 32, offset: 1120)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !927, file: !154, line: 795, baseType: !968, size: 64, offset: 1152)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !154, line: 726, size: 128, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !969, file: !154, line: 727, baseType: !275, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !969, file: !154, line: 728, baseType: !44, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !927, file: !154, line: 801, baseType: !61, size: 64, offset: 1216)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !927, file: !154, line: 804, baseType: !533, size: 64, offset: 1280)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !927, file: !154, line: 806, baseType: !44, size: 32, offset: 1344)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !927, file: !154, line: 808, baseType: !81, size: 32, offset: 1376)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !927, file: !154, line: 823, baseType: !978, size: 320, offset: 1408)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !979, line: 48, size: 320, elements: !980)
!979 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!980 = !{!981, !982, !983, !984, !985}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !978, file: !979, line: 49, baseType: !533, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !978, file: !979, line: 55, baseType: !533, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !978, file: !979, line: 57, baseType: !547, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !978, file: !979, line: 59, baseType: !545, size: 32, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !978, file: !979, line: 60, baseType: !119, size: 128, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !927, file: !154, line: 825, baseType: !119, size: 128, offset: 1728)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !927, file: !154, line: 845, baseType: !44, size: 32, offset: 1856)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !927, file: !154, line: 849, baseType: !61, size: 64, offset: 1920)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !927, file: !154, line: 850, baseType: !61, size: 64, offset: 1984)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !927, file: !154, line: 852, baseType: !61, size: 64, offset: 2048)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !927, file: !154, line: 853, baseType: !61, size: 64, offset: 2112)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !927, file: !154, line: 854, baseType: !535, size: 64, offset: 2176)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !927, file: !154, line: 855, baseType: !61, size: 64, offset: 2240)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !927, file: !154, line: 856, baseType: !61, size: 64, offset: 2304)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !927, file: !154, line: 857, baseType: !61, size: 64, offset: 2368)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !927, file: !154, line: 858, baseType: !61, size: 64, offset: 2432)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !927, file: !154, line: 865, baseType: !800, size: 32, offset: 2496)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !927, file: !154, line: 867, baseType: !81, size: 32, offset: 2528)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !927, file: !154, line: 869, baseType: !61, size: 64, offset: 2560)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !927, file: !154, line: 869, baseType: !61, size: 64, offset: 2624)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !927, file: !154, line: 869, baseType: !61, size: 64, offset: 2688)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !927, file: !154, line: 869, baseType: !61, size: 64, offset: 2752)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !927, file: !154, line: 870, baseType: !61, size: 64, offset: 2816)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !927, file: !154, line: 870, baseType: !61, size: 64, offset: 2880)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !927, file: !154, line: 870, baseType: !61, size: 64, offset: 2944)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !927, file: !154, line: 871, baseType: !61, size: 64, offset: 3008)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !927, file: !154, line: 871, baseType: !61, size: 64, offset: 3072)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !927, file: !154, line: 871, baseType: !61, size: 64, offset: 3136)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !927, file: !154, line: 871, baseType: !61, size: 64, offset: 3200)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !927, file: !154, line: 873, baseType: !1011, size: 3328, offset: 3264)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3328, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 52)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !927, file: !154, line: 875, baseType: !1015, size: 1280, offset: 6592)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 1280, elements: !287)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1017, line: 22, size: 320, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1018 = !{!1019, !1020, !1021, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1016, file: !1017, line: 23, baseType: !545, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1016, file: !1017, line: 24, baseType: !265, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1016, file: !1017, line: 26, baseType: !119, size: 128, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1016, file: !1017, line: 28, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !106, line: 20, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !108, line: 26, baseType: !44)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !927, file: !154, line: 877, baseType: !1027, size: 64, offset: 7872)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !154, line: 877, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !927, file: !154, line: 880, baseType: !1030, size: 1088, offset: 7936)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1031, line: 72, baseType: !1032)
!1031 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 23, size: 1088, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1041, !1042, !1043, !1044, !1069, !1070, !1071}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1032, file: !1031, line: 28, baseType: !275, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1032, file: !1031, line: 38, baseType: !535, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1032, file: !1031, line: 40, baseType: !61, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1032, file: !1031, line: 43, baseType: !978, size: 320, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1032, file: !1031, line: 44, baseType: !1039, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1031, line: 44, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !1031, line: 48, baseType: !61, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1032, file: !1031, line: 59, baseType: !540, size: 256, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1032, file: !1031, line: 60, baseType: !42, size: 64, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1032, file: !1031, line: 61, baseType: !1045, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1048, line: 13, size: 1216, elements: !1049)
!1048 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1047, file: !1048, line: 14, baseType: !42, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1047, file: !1048, line: 15, baseType: !61, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1047, file: !1048, line: 17, baseType: !61, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1047, file: !1048, line: 17, baseType: !61, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1047, file: !1048, line: 18, baseType: !61, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1047, file: !1048, line: 18, baseType: !61, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1047, file: !1048, line: 19, baseType: !417, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1047, file: !1048, line: 21, baseType: !271, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1047, file: !1048, line: 23, baseType: !271, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1047, file: !1048, line: 24, baseType: !271, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1047, file: !1048, line: 25, baseType: !271, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1047, file: !1048, line: 26, baseType: !271, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1047, file: !1048, line: 27, baseType: !271, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1047, file: !1048, line: 28, baseType: !271, size: 64, offset: 832)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1047, file: !1048, line: 29, baseType: !271, size: 64, offset: 896)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1047, file: !1048, line: 30, baseType: !271, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1047, file: !1048, line: 31, baseType: !271, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1047, file: !1048, line: 32, baseType: !271, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1047, file: !1048, line: 33, baseType: !271, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1032, file: !1031, line: 63, baseType: !71, size: 32, offset: 1024)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1032, file: !1031, line: 69, baseType: !115, size: 16, offset: 1056)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1032, file: !1031, line: 70, baseType: !1072, size: 16, offset: 1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !106, line: 18, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !108, line: 23, baseType: !1074)
!1074 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !154, line: 882, baseType: !61, size: 64, offset: 9024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !927, file: !154, line: 885, baseType: !81, size: 32, offset: 9088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !927, file: !154, line: 886, baseType: !1078, size: 64, offset: 9152)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !154, line: 732, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !927, file: !154, line: 901, baseType: !1081, size: 64, offset: 9216)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1083, line: 68, size: 4800, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1084 = !{!1085, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1124, !1125, !1126, !1127, !1237, !1238, !1250, !1318, !1319, !1333, !1335}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1082, file: !1083, line: 69, baseType: !1086, size: 576)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1083, line: 23, size: 576, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1086, file: !1083, line: 24, baseType: !642, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !1083, line: 25, baseType: !1090, size: 512, offset: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !1083, line: 25, size: 512, elements: !1091)
!1091 = !{!1092, !1101}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1090, file: !1083, line: 26, baseType: !1093, size: 480)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 480, elements: !1099)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1083, line: 17, size: 96, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1094, file: !1083, line: 18, baseType: !642, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1094, file: !1083, line: 19, baseType: !642, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1094, file: !1083, line: 20, baseType: !642, size: 32, offset: 64)
!1099 = !{!1100}
!1100 = !DISubrange(count: 5)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !1083, line: 27, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1083, line: 27, size: 128, elements: !1103)
!1103 = !{!1104, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1102, file: !1083, line: 28, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1102, file: !1083, line: 29, baseType: !1105, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1082, file: !1083, line: 70, baseType: !1086, size: 576, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1082, file: !1083, line: 71, baseType: !1086, size: 576, offset: 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1082, file: !1083, line: 72, baseType: !1081, size: 64, offset: 1728)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1082, file: !1083, line: 73, baseType: !44, size: 32, offset: 1792)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1082, file: !1083, line: 74, baseType: !438, size: 32, offset: 1824)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1082, file: !1083, line: 75, baseType: !446, size: 32, offset: 1856)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1082, file: !1083, line: 76, baseType: !1114, size: 192, offset: 1920)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1115, line: 9, size: 192, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1116 = !{!1117, !1118, !1122, !1123}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1114, file: !1115, line: 10, baseType: !533, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1114, file: !1115, line: 11, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1115, line: 7, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1114, file: !1115, line: 12, baseType: !6, size: 32, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1114, file: !1115, line: 13, baseType: !583, size: 32, offset: 160)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !1083, line: 77, baseType: !61, size: 64, offset: 2112)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1082, file: !1083, line: 80, baseType: !407, size: 8, offset: 2176)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1082, file: !1083, line: 88, baseType: !119, size: 128, offset: 2240)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1082, file: !1083, line: 89, baseType: !1128, size: 64, offset: 2368)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1130, line: 195, size: 1728, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1131 = !{!1132, !1133, !1136, !1141, !1142, !1145, !1146, !1153, !1154, !1155, !1156, !1159, !1160, !1161, !1162, !1163, !1201, !1222}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1129, file: !1130, line: 196, baseType: !583, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1129, file: !1130, line: 197, baseType: !1134, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1130, line: 28, baseType: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !47, line: 104, baseType: !1024)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 198, baseType: !1137, size: 192, offset: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 198, size: 192, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1137, file: !1130, line: 199, baseType: !119, size: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1137, file: !1130, line: 200, baseType: !462, size: 192, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1129, file: !1130, line: 205, baseType: !978, size: 320, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1129, file: !1130, line: 206, baseType: !1143, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1130, line: 206, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1129, file: !1130, line: 207, baseType: !42, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 208, baseType: !1147, size: 64, offset: 704)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 208, size: 64, elements: !1148)
!1148 = !{!1149, !1152}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1147, file: !1130, line: 209, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1151, line: 8, baseType: !266)
!1151 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1147, file: !1130, line: 210, baseType: !1150, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1129, file: !1130, line: 212, baseType: !1150, size: 64, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1129, file: !1130, line: 213, baseType: !438, size: 32, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1129, file: !1130, line: 214, baseType: !446, size: 32, offset: 864)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1129, file: !1130, line: 215, baseType: !1157, size: 32, offset: 896)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1130, line: 31, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 110, baseType: !642)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1129, file: !1130, line: 216, baseType: !48, size: 16, offset: 928)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1129, file: !1130, line: 217, baseType: !48, size: 16, offset: 944)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1129, file: !1130, line: 221, baseType: !1074, size: 16, offset: 960)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 228, baseType: !61, size: 64, offset: 1024)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 245, baseType: !1164, size: 320, offset: 1088)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 245, size: 320, elements: !1165)
!1165 = !{!1166, !1193}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1164, file: !1130, line: 246, baseType: !1167, size: 320)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1130, line: 114, size: 320, elements: !1168)
!1168 = !{!1169, !1170, !1182, !1185, !1192}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1167, file: !1130, line: 116, baseType: !61, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !1130, line: 117, baseType: !1171, size: 64, offset: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !1130, line: 117, size: 64, elements: !1172)
!1172 = !{!1173, !1181}
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !1130, line: 118, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1171, file: !1130, line: 118, size: 64, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1174, file: !1130, line: 120, baseType: !115, size: 16)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1174, file: !1130, line: 121, baseType: !1178, size: 48, offset: 16)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 48, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 6)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1171, file: !1130, line: 127, baseType: !61, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1167, file: !1130, line: 129, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1130, line: 102, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1167, file: !1130, line: 130, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1130, line: 108, size: 192, elements: !1188)
!1188 = !{!1189, !1190, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1187, file: !1130, line: 109, baseType: !520, size: 128, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1187, file: !1130, line: 110, baseType: !583, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1187, file: !1130, line: 111, baseType: !407, size: 8, offset: 160)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1167, file: !1130, line: 131, baseType: !38, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !1130, line: 247, baseType: !1194, size: 320)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1164, file: !1130, line: 247, size: 320, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1194, file: !1130, line: 248, baseType: !61, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1194, file: !1130, line: 249, baseType: !61, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1194, file: !1130, line: 250, baseType: !1183, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1194, file: !1130, line: 251, baseType: !1186, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1194, file: !1130, line: 252, baseType: !347, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 260, baseType: !1202, size: 256, offset: 1408)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 260, size: 256, elements: !1203)
!1203 = !{!1204, !1210}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1202, file: !1130, line: 261, baseType: !1205, size: 256)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1130, line: 134, size: 256, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1205, file: !1130, line: 135, baseType: !42, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1205, file: !1130, line: 136, baseType: !1209, size: 256)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !287)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1130, line: 262, baseType: !1211, size: 256)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1130, line: 262, size: 256, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1211, file: !1130, line: 264, baseType: !119, size: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1211, file: !1130, line: 265, baseType: !1215, size: 128, offset: 128)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1216, line: 22, size: 128, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1217 = !{!1218, !1221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1215, file: !1216, line: 23, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1216, line: 23, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1215, file: !1216, line: 24, baseType: !61, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1129, file: !1130, line: 280, baseType: !1223, size: 64, offset: 1664)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1130, line: 176, size: 192, elements: !1225)
!1225 = !{!1226, !1235, !1236}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1224, file: !1130, line: 177, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1130, line: 171, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!44, !1128, !1231, !1233, !1128}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1224, file: !1130, line: 178, baseType: !1128, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1224, file: !1130, line: 179, baseType: !1183, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1082, file: !1083, line: 90, baseType: !978, size: 320, offset: 2432)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1082, file: !1083, line: 97, baseType: !1239, size: 256, offset: 2752)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1240, line: 98, size: 256, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1239, file: !1240, line: 99, baseType: !533, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1239, file: !1240, line: 100, baseType: !119, size: 128, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1239, file: !1240, line: 101, baseType: !1245, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1240, line: 21, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1082, file: !1083, line: 99, baseType: !1251, size: 768, offset: 3008)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !34, line: 199, size: 768, elements: !1252)
!1252 = !{!1253, !1258}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1251, file: !34, line: 200, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!44, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1251, file: !34, line: 201, baseType: !1259, size: 704, offset: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !34, line: 193, size: 704, elements: !1260)
!1260 = !{!1261, !1317}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1259, file: !34, line: 195, baseType: !1262, size: 640)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !34, line: 173, size: 640, elements: !1263)
!1263 = !{!1264, !1276, !1288, !1289, !1307, !1308, !1310, !1316}
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !34, line: 174, baseType: !1265, size: 192)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !34, line: 174, size: 192, elements: !1266)
!1266 = !{!1267, !1275}
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !34, line: 175, baseType: !1268, size: 192)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !34, line: 175, size: 192, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1268, file: !34, line: 176, baseType: !55, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1268, file: !34, line: 177, baseType: !44, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1268, file: !34, line: 178, baseType: !44, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1268, file: !34, line: 179, baseType: !44, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1268, file: !34, line: 180, baseType: !44, size: 32, offset: 160)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1265, file: !34, line: 182, baseType: !520, size: 128, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1262, file: !34, line: 184, baseType: !1277, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1279, line: 26, size: 256, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1278, file: !1279, line: 27, baseType: !6, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1278, file: !1279, line: 28, baseType: !1283, size: 192, offset: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1284, line: 43, size: 192, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1283, file: !1284, line: 44, baseType: !545, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1283, file: !1284, line: 45, baseType: !119, size: 128, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1262, file: !34, line: 185, baseType: !55, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1262, file: !34, line: 186, baseType: !1290, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !34, line: 204, size: 960, elements: !1292)
!1292 = !{!1293, !1294, !1298, !1303}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1291, file: !34, line: 205, baseType: !1251, size: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1291, file: !34, line: 206, baseType: !1295, size: 64, offset: 768)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1257, !1290}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1291, file: !34, line: 207, baseType: !1299, size: 64, offset: 832)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302, !437, !445}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1291, file: !34, line: 209, baseType: !1304, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!44, !1302, !55}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1262, file: !34, line: 187, baseType: !1257, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1262, file: !34, line: 188, baseType: !1309, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1262, file: !34, line: 189, baseType: !1311, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !34, line: 157, size: 256, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1312, file: !34, line: 158, baseType: !462, size: 192, align: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1312, file: !34, line: 159, baseType: !1302, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1262, file: !34, line: 190, baseType: !592, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1259, file: !34, line: 196, baseType: !479, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1082, file: !1083, line: 100, baseType: !1302, size: 64, offset: 3776)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1082, file: !1083, line: 102, baseType: !1320, size: 64, offset: 3840)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1083, line: 107, size: 1152, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1331}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1321, file: !1083, line: 108, baseType: !596, size: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1321, file: !1083, line: 109, baseType: !1081, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1321, file: !1083, line: 110, baseType: !438, size: 32, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1321, file: !1083, line: 111, baseType: !71, size: 32, offset: 224)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1321, file: !1083, line: 112, baseType: !1328, size: 640, offset: 256)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 640, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 10)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1321, file: !1083, line: 113, baseType: !1332, size: 256, offset: 896)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 256, elements: !287)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1082, file: !1083, line: 103, baseType: !1334, size: 640, offset: 3904)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 640, elements: !1329)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1082, file: !1083, line: 104, baseType: !1336, size: 256, offset: 4544)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !287)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !927, file: !154, line: 904, baseType: !507, size: 64, offset: 9280)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !927, file: !154, line: 906, baseType: !1339, size: 64, offset: 9344)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !154, line: 906, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !927, file: !154, line: 930, baseType: !71, size: 32, offset: 9408)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !927, file: !154, line: 933, baseType: !71, size: 32, offset: 9440)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !927, file: !154, line: 935, baseType: !1344, size: 64, offset: 9472)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !185, line: 103, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1344, file: !185, line: 104, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !185, line: 101, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !927, file: !154, line: 940, baseType: !533, size: 64, offset: 9536)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !927, file: !154, line: 942, baseType: !1239, size: 256, offset: 9600)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !924, file: !154, line: 986, baseType: !1352, offset: 10240)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: -1)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !632, file: !633, line: 882, baseType: !923, size: 64, offset: 9792)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !632, file: !633, line: 884, baseType: !44, size: 32, offset: 9856)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !632, file: !633, line: 885, baseType: !44, size: 32, offset: 9888)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !632, file: !633, line: 886, baseType: !44, size: 32, offset: 9920)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !632, file: !633, line: 888, baseType: !44, size: 32, offset: 9952)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !632, file: !633, line: 890, baseType: !61, size: 64, offset: 9984)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !632, file: !633, line: 893, baseType: !6, size: 32, offset: 10048)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !632, file: !633, line: 896, baseType: !6, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !632, file: !633, line: 897, baseType: !6, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !632, file: !633, line: 898, baseType: !6, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !632, file: !633, line: 899, baseType: !6, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !632, file: !633, line: 919, baseType: !6, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !632, file: !633, line: 922, baseType: !6, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !632, file: !633, line: 923, baseType: !6, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !632, file: !633, line: 925, baseType: !6, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !632, file: !633, line: 939, baseType: !6, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !632, file: !633, line: 941, baseType: !6, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !632, file: !633, line: 944, baseType: !6, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !632, file: !633, line: 956, baseType: !6, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !632, file: !633, line: 962, baseType: !6, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !632, file: !633, line: 966, baseType: !6, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !632, file: !633, line: 969, baseType: !61, size: 64, offset: 10176)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !632, file: !633, line: 971, baseType: !1378, size: 448, offset: 10240)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !130, line: 25, size: 448, elements: !1379)
!1379 = !{!1380, !1381, !1386}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1378, file: !130, line: 26, baseType: !61, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1378, file: !130, line: 27, baseType: !1382, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!271, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !130, line: 28, baseType: !1387, size: 320, offset: 128)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !130, line: 28, size: 320, elements: !1388)
!1388 = !{!1389, !1399, !1424}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1387, file: !130, line: 37, baseType: !1390, size: 320)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !130, line: 30, size: 320, elements: !1391)
!1391 = !{!1392, !1394, !1395, !1396, !1397, !1398}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1390, file: !130, line: 31, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1390, file: !130, line: 32, baseType: !642, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !130, line: 33, baseType: !642, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1390, file: !130, line: 34, baseType: !642, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1390, file: !130, line: 35, baseType: !275, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1390, file: !130, line: 36, baseType: !1393, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1387, file: !130, line: 47, baseType: !1400, size: 192)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !130, line: 39, size: 192, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1423}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1400, file: !130, line: 40, baseType: !792, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1400, file: !130, line: 41, baseType: !129, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !130, line: 42, baseType: !1405, size: 64, offset: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !130, line: 42, size: 64, elements: !1406)
!1406 = !{!1407, !1415}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1405, file: !130, line: 43, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1410, line: 7, size: 128, elements: !1411)
!1410 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1411 = !{!1412, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1409, file: !1410, line: 8, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !59, line: 93, baseType: !65)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1409, file: !1410, line: 9, baseType: !65, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1405, file: !130, line: 44, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1418, line: 7, size: 64, elements: !1419)
!1418 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1419 = !{!1420, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1417, file: !1418, line: 8, baseType: !1421, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1418, line: 5, baseType: !1024)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1417, file: !1418, line: 9, baseType: !1024, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1400, file: !130, line: 46, baseType: !275, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1387, file: !130, line: 55, baseType: !1425, size: 256)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !130, line: 49, size: 256, elements: !1426)
!1426 = !{!1427, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1425, file: !130, line: 50, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !130, line: 14, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1425, file: !130, line: 51, baseType: !44, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1425, file: !130, line: 52, baseType: !44, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1425, file: !130, line: 53, baseType: !61, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1425, file: !130, line: 54, baseType: !61, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !632, file: !633, line: 973, baseType: !1435, size: 32, offset: 10688)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !47, line: 27, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !59, line: 28, baseType: !44)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !632, file: !633, line: 974, baseType: !1435, size: 32, offset: 10720)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !632, file: !633, line: 978, baseType: !61, size: 64, offset: 10752)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !632, file: !633, line: 987, baseType: !631, size: 64, offset: 10816)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !633, line: 990, baseType: !631, size: 64, offset: 10880)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !632, file: !633, line: 995, baseType: !119, size: 128, offset: 10944)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !632, file: !633, line: 996, baseType: !119, size: 128, offset: 11072)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !632, file: !633, line: 997, baseType: !631, size: 64, offset: 11200)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !632, file: !633, line: 1005, baseType: !119, size: 128, offset: 11264)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !632, file: !633, line: 1006, baseType: !119, size: 128, offset: 11392)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !632, file: !633, line: 1009, baseType: !579, size: 64, offset: 11520)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !632, file: !633, line: 1010, baseType: !1448, size: 512, offset: 11584)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !287)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !632, file: !633, line: 1011, baseType: !119, size: 128, offset: 12096)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !632, file: !633, line: 1012, baseType: !119, size: 128, offset: 12224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !632, file: !633, line: 1014, baseType: !1277, size: 64, offset: 12352)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !632, file: !633, line: 1017, baseType: !1453, size: 64, offset: 12416)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !632, file: !633, line: 1020, baseType: !1453, size: 64, offset: 12480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !632, file: !633, line: 1023, baseType: !42, size: 64, offset: 12544)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !632, file: !633, line: 1025, baseType: !275, size: 64, offset: 12608)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !632, file: !633, line: 1026, baseType: !275, size: 64, offset: 12672)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !632, file: !633, line: 1031, baseType: !275, size: 64, offset: 12736)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !632, file: !633, line: 1032, baseType: !1460, size: 192, offset: 12800)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !633, line: 324, size: 192, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1460, file: !633, line: 326, baseType: !275, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1460, file: !633, line: 327, baseType: !275, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1460, file: !633, line: 328, baseType: !545, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !632, file: !633, line: 1041, baseType: !61, size: 64, offset: 12992)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !632, file: !633, line: 1042, baseType: !61, size: 64, offset: 13056)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !632, file: !633, line: 1045, baseType: !275, size: 64, offset: 13120)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !632, file: !633, line: 1048, baseType: !275, size: 64, offset: 13184)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !632, file: !633, line: 1051, baseType: !61, size: 64, offset: 13248)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !632, file: !633, line: 1052, baseType: !61, size: 64, offset: 13312)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !632, file: !633, line: 1055, baseType: !1472, size: 640, offset: 13376)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1473, line: 132, size: 640, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1474 = !{!1475, !1481, !1482}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1472, file: !1473, line: 133, baseType: !1476, size: 576)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 576, elements: !348)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1473, line: 117, size: 192, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1477, file: !1473, line: 118, baseType: !275, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1477, file: !1473, line: 119, baseType: !806, size: 128, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1472, file: !1473, line: 134, baseType: !6, size: 32, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1472, file: !1473, line: 135, baseType: !6, size: 32, offset: 608)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !632, file: !633, line: 1058, baseType: !1484, size: 448, offset: 14016)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1473, line: 144, size: 448, elements: !1485)
!1485 = !{!1486, !1487, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1484, file: !1473, line: 145, baseType: !520, size: 128, align: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1484, file: !1473, line: 146, baseType: !540, size: 256, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1484, file: !1473, line: 147, baseType: !6, size: 32, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !632, file: !633, line: 1064, baseType: !1490, size: 64, offset: 14464)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1493, line: 110, size: 1472, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1544, !1545, !1546, !1554}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1492, file: !1493, line: 111, baseType: !533, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1492, file: !1493, line: 112, baseType: !438, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1492, file: !1493, line: 113, baseType: !446, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1492, file: !1493, line: 114, baseType: !438, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1492, file: !1493, line: 115, baseType: !446, size: 32, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1492, file: !1493, line: 116, baseType: !438, size: 32, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1492, file: !1493, line: 117, baseType: !446, size: 32, offset: 224)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1492, file: !1493, line: 118, baseType: !438, size: 32, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1492, file: !1493, line: 119, baseType: !446, size: 32, offset: 288)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1492, file: !1493, line: 120, baseType: !6, size: 32, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1492, file: !1493, line: 121, baseType: !1506, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1507, line: 24, baseType: !1508)
!1507 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1507, line: 24, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1508, file: !1507, line: 24, baseType: !275, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1492, file: !1493, line: 122, baseType: !1506, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1492, file: !1493, line: 123, baseType: !1506, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1492, file: !1493, line: 124, baseType: !1506, size: 64, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1492, file: !1493, line: 125, baseType: !1506, size: 64, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1492, file: !1493, line: 127, baseType: !109, size: 8, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1492, file: !1493, line: 129, baseType: !1128, size: 64, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1492, file: !1493, line: 130, baseType: !1128, size: 64, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1492, file: !1493, line: 131, baseType: !1128, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1492, file: !1493, line: 132, baseType: !1128, size: 64, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1492, file: !1493, line: 135, baseType: !42, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1492, file: !1493, line: 137, baseType: !1522, size: 64, offset: 1088)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1524, line: 14, size: 1088, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1523, file: !1524, line: 15, baseType: !583, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1523, file: !1524, line: 17, baseType: !1016, size: 320, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1523, file: !1524, line: 19, baseType: !61, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1523, file: !1524, line: 20, baseType: !533, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1523, file: !1524, line: 23, baseType: !596, size: 128, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1523, file: !1524, line: 24, baseType: !438, size: 32, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1523, file: !1524, line: 29, baseType: !533, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1523, file: !1524, line: 36, baseType: !1534, size: 320, offset: 768)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1535, line: 15, size: 320, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1535, line: 16, baseType: !545, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1534, file: !1535, line: 18, baseType: !44, size: 32, offset: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1534, file: !1535, line: 19, baseType: !44, size: 32, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1534, file: !1535, line: 20, baseType: !44, size: 32, offset: 96)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1534, file: !1535, line: 21, baseType: !44, size: 32, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1534, file: !1535, line: 22, baseType: !61, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !1535, line: 23, baseType: !61, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1492, file: !1493, line: 138, baseType: !1081, size: 64, offset: 1152)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1492, file: !1493, line: 139, baseType: !1320, size: 64, offset: 1216)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1492, file: !1493, line: 140, baseType: !1547, size: 64, offset: 1280)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1493, line: 25, size: 64, elements: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1548, file: !1493, line: 26, baseType: !71, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1548, file: !1493, line: 27, baseType: !44, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1548, file: !1493, line: 28, baseType: !1553, offset: 64)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, elements: !1353)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1493, line: 142, baseType: !1555, size: 128, offset: 1344)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !1493, line: 142, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1555, file: !1493, line: 143, baseType: !44, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1555, file: !1493, line: 144, baseType: !520, size: 128, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !632, file: !633, line: 1067, baseType: !1490, size: 64, offset: 14528)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !632, file: !633, line: 1070, baseType: !1490, size: 64, offset: 14592)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !632, file: !633, line: 1074, baseType: !1128, size: 64, offset: 14656)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !632, file: !633, line: 1084, baseType: !1563, size: 128, offset: 14720)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 16)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !632, file: !633, line: 1086, baseType: !1567, size: 64, offset: 14848)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !633, line: 55, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !632, file: !633, line: 1089, baseType: !1570, size: 64, offset: 14912)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1571, line: 12, size: 64, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1570, file: !1571, line: 13, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1571, line: 8, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !632, file: !633, line: 1090, baseType: !1577, size: 128, offset: 14976)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1578, line: 13, size: 128, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1577, file: !1578, line: 14, baseType: !119, size: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !632, file: !633, line: 1097, baseType: !1582, size: 64, offset: 15104)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !633, line: 50, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !632, file: !633, line: 1100, baseType: !1585, size: 64, offset: 15168)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !633, line: 1100, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !632, file: !633, line: 1103, baseType: !1588, size: 64, offset: 15232)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !633, line: 53, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !632, file: !633, line: 1107, baseType: !1591, size: 64, offset: 15296)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1593, line: 31, size: 576, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1594 = !{!1595, !1596, !1599, !1602, !1605, !1606, !1609, !1612, !1613}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1592, file: !1593, line: 32, baseType: !583, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1592, file: !1593, line: 33, baseType: !1597, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1593, line: 9, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1592, file: !1593, line: 34, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1593, line: 10, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1592, file: !1593, line: 35, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1593, line: 8, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1592, file: !1593, line: 36, baseType: !610, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1592, file: !1593, line: 37, baseType: !1607, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1130, line: 34, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1592, file: !1593, line: 38, baseType: !1610, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1593, line: 38, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1592, file: !1593, line: 39, baseType: !1610, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1592, file: !1593, line: 40, baseType: !1614, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1616, line: 771, size: 384, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1615, file: !1616, line: 772, baseType: !1114, size: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1615, file: !1616, line: 773, baseType: !1081, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1615, file: !1616, line: 774, baseType: !1320, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1615, file: !1616, line: 775, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1624, line: 209, size: 4736, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1625 = !{!1626, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1623, file: !1624, line: 215, baseType: !1627, size: 896)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 896, elements: !1697)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1624, line: 152, size: 1600, elements: !1630)
!1630 = !{!1631, !1748, !1905, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1942}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1629, file: !1624, line: 154, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1624, line: 389, size: 7872, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1665, !1666, !1670, !1671, !1672, !1673, !1674, !1675, !1694, !1695, !1699, !1700, !1701, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1735, !1738, !1739, !1746}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1633, file: !1624, line: 391, baseType: !1629, size: 1600)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1633, file: !1624, line: 393, baseType: !61, size: 64, offset: 1600)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1633, file: !1624, line: 401, baseType: !44, size: 32, offset: 1664)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1633, file: !1624, line: 404, baseType: !44, size: 32, offset: 1696)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1633, file: !1624, line: 417, baseType: !44, size: 32, offset: 1728)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1633, file: !1624, line: 418, baseType: !44, size: 32, offset: 1760)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1633, file: !1624, line: 419, baseType: !44, size: 32, offset: 1792)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1633, file: !1624, line: 432, baseType: !44, size: 32, offset: 1824)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1633, file: !1624, line: 433, baseType: !44, size: 32, offset: 1856)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1633, file: !1624, line: 434, baseType: !44, size: 32, offset: 1888)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1633, file: !1624, line: 436, baseType: !44, size: 32, offset: 1920)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1633, file: !1624, line: 439, baseType: !6, size: 32, offset: 1952)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1633, file: !1624, line: 441, baseType: !453, size: 64, offset: 1984)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1633, file: !1624, line: 442, baseType: !1649, size: 448, offset: 2048)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1624, line: 138, size: 448, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1649, file: !1624, line: 140, baseType: !453, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !1649, file: !1624, line: 141, baseType: !61, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !1649, file: !1624, line: 142, baseType: !1654, size: 320, offset: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1655, line: 11, size: 320, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1656 = !{!1657, !1658, !1659, !1664}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1654, file: !1655, line: 16, baseType: !596, size: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1654, file: !1655, line: 17, baseType: !61, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1654, file: !1655, line: 18, baseType: !1660, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !1655, line: 19, baseType: !642, size: 32, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1633, file: !1624, line: 443, baseType: !1649, size: 448, offset: 2496)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1633, file: !1624, line: 446, baseType: !1667, offset: 2944)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 0)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1633, file: !1624, line: 455, baseType: !115, size: 16, offset: 2944)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1633, file: !1624, line: 456, baseType: !115, size: 16, offset: 2960)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1633, file: !1624, line: 457, baseType: !115, size: 16, offset: 2976)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1633, file: !1624, line: 458, baseType: !115, size: 16, offset: 2992)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1633, file: !1624, line: 461, baseType: !1627, size: 896, offset: 3008)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1633, file: !1624, line: 463, baseType: !1676, size: 64, offset: 3904)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1624, line: 537, size: 41664, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1692}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !1677, file: !1624, line: 538, baseType: !483, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !1677, file: !1624, line: 541, baseType: !6, size: 32, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !1677, file: !1624, line: 544, baseType: !44, size: 32, offset: 96)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !1677, file: !1624, line: 547, baseType: !119, size: 128, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1677, file: !1624, line: 548, baseType: !520, size: 128, align: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !1677, file: !1624, line: 555, baseType: !1633, size: 7872, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !1677, file: !1624, line: 558, baseType: !1632, size: 64, offset: 8256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !1677, file: !1624, line: 561, baseType: !71, size: 32, offset: 8320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1677, file: !1624, line: 564, baseType: !6, size: 32, offset: 8352)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !1677, file: !1624, line: 567, baseType: !1689, size: 32768, offset: 8384)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32768, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 4096)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1677, file: !1624, line: 570, baseType: !1693, size: 512, offset: 41152)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 512, elements: !352)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1633, file: !1624, line: 469, baseType: !119, size: 128, offset: 3968)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1633, file: !1624, line: 478, baseType: !1696, size: 1792, offset: 4096)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 1792, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 14)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1633, file: !1624, line: 487, baseType: !1632, size: 64, offset: 5888)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1633, file: !1624, line: 488, baseType: !1632, size: 64, offset: 5952)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1633, file: !1624, line: 491, baseType: !1702, size: 64, offset: 6016)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1624, line: 327, size: 896, elements: !1704)
!1704 = !{!1705, !1708, !1718, !1719, !1720, !1721, !1722}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !1703, file: !1624, line: 332, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !1707, line: 64, elements: !944)
!1707 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1703, file: !1624, line: 333, baseType: !1709, size: 192)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1624, line: 299, size: 192, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !1709, file: !1624, line: 300, baseType: !1712, size: 192)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !1713, line: 17, size: 192, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1712, file: !1713, line: 18, baseType: !275, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1712, file: !1713, line: 19, baseType: !275, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1712, file: !1713, line: 20, baseType: !277, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1703, file: !1624, line: 339, baseType: !1709, size: 192, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !1703, file: !1624, line: 347, baseType: !1709, size: 192, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !1703, file: !1624, line: 353, baseType: !1709, size: 192, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !1703, file: !1624, line: 366, baseType: !1632, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !1703, file: !1624, line: 367, baseType: !1632, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1633, file: !1624, line: 492, baseType: !119, size: 128, offset: 6080)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1633, file: !1624, line: 495, baseType: !1709, size: 192, offset: 6208)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1633, file: !1624, line: 496, baseType: !1709, size: 192, offset: 6400)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1633, file: !1624, line: 497, baseType: !1460, size: 192, offset: 6592)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1633, file: !1624, line: 503, baseType: !119, size: 128, offset: 6784)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1633, file: !1624, line: 504, baseType: !540, size: 256, offset: 6912)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1633, file: !1624, line: 507, baseType: !76, size: 192, offset: 7168)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1633, file: !1624, line: 510, baseType: !1239, size: 256, offset: 7360)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1633, file: !1624, line: 513, baseType: !1732, size: 64, offset: 7616)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !1734, line: 214, elements: !944)
!1734 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1633, file: !1624, line: 516, baseType: !1736, offset: 7680)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !1737, line: 76, elements: !944)
!1737 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1633, file: !1624, line: 519, baseType: !71, size: 32, offset: 7680)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1633, file: !1624, line: 522, baseType: !1740, size: 128, offset: 7712)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1624, line: 370, size: 128, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1740, file: !1624, line: 372, baseType: !407, size: 8)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !1740, file: !1624, line: 375, baseType: !44, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !1740, file: !1624, line: 380, baseType: !44, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !1740, file: !1624, line: 386, baseType: !44, size: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1633, file: !1624, line: 529, baseType: !1747, offset: 7872)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1632, elements: !1353)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1629, file: !1624, line: 157, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1624, line: 669, size: 1984, elements: !1751)
!1751 = !{!1752, !1756, !1760, !1764, !1765, !1766, !1767, !1771, !1813, !1814, !1820, !1824, !1825, !1829, !1833, !1837, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1903, !1904}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !1750, file: !1624, line: 670, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1628, !1628}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !1750, file: !1624, line: 671, baseType: !1757, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!44, !1628}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !1750, file: !1624, line: 672, baseType: !1761, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1628}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !1750, file: !1624, line: 673, baseType: !1761, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !1750, file: !1624, line: 674, baseType: !1761, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !1750, file: !1624, line: 675, baseType: !1761, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !1750, file: !1624, line: 676, baseType: !1768, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1628, !44}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !1750, file: !1624, line: 677, baseType: !1772, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!44, !1775, !1628}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1777, line: 17, size: 960, elements: !1778)
!1777 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1808, !1809, !1812}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1776, file: !1777, line: 18, baseType: !347, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1776, file: !1777, line: 19, baseType: !57, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1776, file: !1777, line: 20, baseType: !57, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1776, file: !1777, line: 21, baseType: !57, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1776, file: !1777, line: 22, baseType: !57, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1776, file: !1777, line: 23, baseType: !63, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1776, file: !1777, line: 24, baseType: !63, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !1777, line: 25, baseType: !540, size: 256, offset: 448)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1776, file: !1777, line: 26, baseType: !1788, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1777, line: 32, size: 256, elements: !1791)
!1791 = !{!1792, !1796, !1800, !1804}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1790, file: !1777, line: 33, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!42, !1775, !62}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1790, file: !1777, line: 34, baseType: !1797, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1775, !42}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1790, file: !1777, line: 35, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!42, !1775, !42, !62}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1790, file: !1777, line: 36, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!44, !1775, !42}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1776, file: !1777, line: 27, baseType: !44, size: 32, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1776, file: !1777, line: 28, baseType: !1810, size: 64, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1776, file: !1777, line: 29, baseType: !42, size: 64, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !1750, file: !1624, line: 679, baseType: !1772, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !1750, file: !1624, line: 682, baseType: !1815, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!44, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1624, line: 30, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !1750, file: !1624, line: 683, baseType: !1821, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1818}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1750, file: !1624, line: 684, baseType: !1821, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !1750, file: !1624, line: 685, baseType: !1826, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !1750, file: !1624, line: 686, baseType: !1830, size: 64, offset: 832)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!44, !631, !1622}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !1750, file: !1624, line: 688, baseType: !1834, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !631, !1622}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !1750, file: !1624, line: 689, baseType: !1838, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !631}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1750, file: !1624, line: 690, baseType: !1838, size: 64, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1750, file: !1624, line: 691, baseType: !1838, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1750, file: !1624, line: 692, baseType: !1761, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1750, file: !1624, line: 694, baseType: !407, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !1750, file: !1624, line: 707, baseType: !407, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !1750, file: !1624, line: 719, baseType: !407, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1750, file: !1624, line: 722, baseType: !44, size: 32, offset: 1248)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1750, file: !1624, line: 723, baseType: !38, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !1750, file: !1624, line: 726, baseType: !38, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1750, file: !1624, line: 729, baseType: !1676, size: 64, offset: 1408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !1750, file: !1624, line: 732, baseType: !615, size: 192, offset: 1472)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !1750, file: !1624, line: 738, baseType: !119, size: 128, offset: 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !1750, file: !1624, line: 744, baseType: !1854, size: 64, offset: 1792)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1624, line: 580, size: 1728, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1866, !1867, !1871, !1875, !1879, !1880, !1881, !1882, !1883, !1887, !1891, !1895}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1855, file: !1624, line: 586, baseType: !1693, size: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1855, file: !1624, line: 587, baseType: !61, size: 64, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !1855, file: !1624, line: 593, baseType: !57, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1624, line: 596, baseType: !6, size: 32, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !1855, file: !1624, line: 604, baseType: !6, size: 32, offset: 672)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1855, file: !1624, line: 610, baseType: !1749, size: 64, offset: 704)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1855, file: !1624, line: 611, baseType: !119, size: 128, offset: 768)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !1855, file: !1624, line: 612, baseType: !1865, size: 64, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1855, file: !1624, line: 614, baseType: !499, size: 64, offset: 960)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1855, file: !1624, line: 615, baseType: !1868, size: 64, offset: 1024)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !502}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !1855, file: !1624, line: 621, baseType: !1872, size: 64, offset: 1088)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!275, !1628, !1854}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !1855, file: !1624, line: 625, baseType: !1876, size: 64, offset: 1152)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!265, !1628, !1854}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1855, file: !1624, line: 628, baseType: !1805, size: 64, offset: 1216)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1855, file: !1624, line: 631, baseType: !1793, size: 64, offset: 1280)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1855, file: !1624, line: 632, baseType: !1801, size: 64, offset: 1344)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1855, file: !1624, line: 633, baseType: !1797, size: 64, offset: 1408)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !1855, file: !1624, line: 640, baseType: !1884, size: 64, offset: 1472)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!44, !1628, !1854, !275}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !1855, file: !1624, line: 645, baseType: !1888, size: 64, offset: 1536)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!44, !1628, !1854, !265}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1855, file: !1624, line: 654, baseType: !1892, size: 64, offset: 1600)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!378, !502, !347, !57, !63}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1855, file: !1624, line: 657, baseType: !1896, size: 64, offset: 1664)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1899, !502, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1900, line: 59, baseType: !6)
!1900 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !143, line: 61, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !1750, file: !1624, line: 745, baseType: !1854, size: 64, offset: 1856)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !1750, file: !1624, line: 754, baseType: !6, size: 32, offset: 1920)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1629, file: !1624, line: 160, baseType: !1906, size: 128, offset: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1907, line: 105, size: 128, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1906, file: !1907, line: 110, baseType: !61, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1906, file: !1907, line: 118, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1907, line: 95, size: 448, elements: !1913)
!1913 = !{!1914, !1915, !1921, !1922, !1923, !1924, !1925}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1912, file: !1907, line: 96, baseType: !533, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1912, file: !1907, line: 97, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1907, line: 60, baseType: !1918)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1912, file: !1907, line: 98, baseType: !1916, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1912, file: !1907, line: 99, baseType: !407, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1912, file: !1907, line: 100, baseType: !407, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1912, file: !1907, line: 101, baseType: !520, size: 128, align: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1912, file: !1907, line: 102, baseType: !1920, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1629, file: !1624, line: 163, baseType: !119, size: 128, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1629, file: !1624, line: 164, baseType: !119, size: 128, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1629, file: !1624, line: 167, baseType: !119, size: 128, offset: 512)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1629, file: !1624, line: 173, baseType: !44, size: 32, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1629, file: !1624, line: 175, baseType: !6, size: 32, offset: 672)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1629, file: !1624, line: 183, baseType: !275, size: 64, offset: 704)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1629, file: !1624, line: 189, baseType: !71, size: 32, offset: 768)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1629, file: !1624, line: 192, baseType: !1239, size: 256, offset: 832)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1629, file: !1624, line: 193, baseType: !1935, size: 448, offset: 1088)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1240, line: 120, size: 448, elements: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1935, file: !1240, line: 121, baseType: !1239, size: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1935, file: !1240, line: 122, baseType: !520, size: 128, align: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1935, file: !1240, line: 125, baseType: !1940, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1240, line: 18, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1629, file: !1624, line: 199, baseType: !1628, size: 64, offset: 1536)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1623, file: !1624, line: 218, baseType: !583, size: 32, offset: 896)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1623, file: !1624, line: 226, baseType: !1622, size: 64, offset: 960)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1623, file: !1624, line: 229, baseType: !1632, size: 64, offset: 1024)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1623, file: !1624, line: 232, baseType: !44, size: 32, offset: 1088)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1623, file: !1624, line: 241, baseType: !119, size: 128, offset: 1152)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1623, file: !1624, line: 242, baseType: !119, size: 128, offset: 1280)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1623, file: !1624, line: 243, baseType: !119, size: 128, offset: 1408)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1623, file: !1624, line: 246, baseType: !119, size: 128, offset: 1536)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1623, file: !1624, line: 255, baseType: !1696, size: 1792, offset: 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1623, file: !1624, line: 258, baseType: !119, size: 128, offset: 3456)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1623, file: !1624, line: 259, baseType: !119, size: 128, offset: 3584)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1623, file: !1624, line: 265, baseType: !596, size: 128, offset: 3712)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1623, file: !1624, line: 271, baseType: !119, size: 128, offset: 3840)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1623, file: !1624, line: 277, baseType: !119, size: 128, offset: 3968)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1623, file: !1624, line: 278, baseType: !119, size: 128, offset: 4096)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1623, file: !1624, line: 279, baseType: !119, size: 128, offset: 4224)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1623, file: !1624, line: 288, baseType: !1632, size: 64, offset: 4352)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1623, file: !1624, line: 289, baseType: !1632, size: 64, offset: 4416)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1623, file: !1624, line: 290, baseType: !1622, size: 64, offset: 4480)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1623, file: !1624, line: 293, baseType: !407, size: 8, offset: 4544)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1623, file: !1624, line: 296, baseType: !520, size: 128, align: 64, offset: 4608)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !632, file: !633, line: 1110, baseType: !1965, size: 64, offset: 15360)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1967, line: 93, size: 8768, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2019, !2028, !2029, !2031, !2032, !2033, !2036, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2078, !2079, !2086, !2096, !2161, !2162, !2165, !2166, !2167, !2168, !2169, !2170}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1966, file: !1967, line: 94, baseType: !583, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1966, file: !1967, line: 95, baseType: !71, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1966, file: !1967, line: 96, baseType: !44, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1966, file: !1967, line: 97, baseType: !44, size: 32, offset: 96)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1966, file: !1967, line: 98, baseType: !119, size: 128, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1966, file: !1967, line: 100, baseType: !76, size: 192, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1966, file: !1967, line: 103, baseType: !631, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1966, file: !1967, line: 106, baseType: !1977, size: 192, offset: 512)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1978, line: 32, size: 192, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1977, file: !1978, line: 33, baseType: !119, size: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1977, file: !1978, line: 34, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1983, line: 25, baseType: !1984)
!1983 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1983, line: 23, size: 64, elements: !1985)
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1984, file: !1983, line: 24, baseType: !874, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1966, file: !1967, line: 109, baseType: !592, size: 64, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1966, file: !1967, line: 112, baseType: !44, size: 32, offset: 768)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1966, file: !1967, line: 114, baseType: !44, size: 32, offset: 800)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1966, file: !1967, line: 115, baseType: !631, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1966, file: !1967, line: 118, baseType: !44, size: 32, offset: 896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !1967, line: 119, baseType: !6, size: 32, offset: 928)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1966, file: !1967, line: 121, baseType: !1994, size: 64, offset: 960)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1967, line: 80, size: 448, elements: !1996)
!1996 = !{!1997, !1998, !2004}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1995, file: !1967, line: 81, baseType: !71, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1995, file: !1967, line: 82, baseType: !1999, size: 128, offset: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1967, line: 75, size: 128, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1999, file: !1967, line: 76, baseType: !631, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1999, file: !1967, line: 77, baseType: !2003, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1995, file: !1967, line: 83, baseType: !1278, size: 256, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1966, file: !1967, line: 132, baseType: !6, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1966, file: !1967, line: 133, baseType: !6, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1966, file: !1967, line: 138, baseType: !6, size: 32, offset: 1056)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1966, file: !1967, line: 139, baseType: !119, size: 128, offset: 1088)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1966, file: !1967, line: 142, baseType: !745, size: 512, offset: 1216)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1966, file: !1967, line: 143, baseType: !753, size: 64, offset: 1728)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1966, file: !1967, line: 150, baseType: !2012, size: 256, offset: 1792)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, size: 256, elements: !2017)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1967, line: 38, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2013, file: !1967, line: 39, baseType: !275, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2013, file: !1967, line: 40, baseType: !275, size: 64, offset: 64)
!2017 = !{!2018}
!2018 = !DISubrange(count: 2)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1966, file: !1967, line: 156, baseType: !2020, size: 192, offset: 2048)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1967, line: 66, size: 192, elements: !2021)
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2020, file: !1967, line: 67, baseType: !2023, size: 192)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1967, line: 47, size: 192, elements: !2024)
!2024 = !{!2025, !2026, !2027}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2023, file: !1967, line: 48, baseType: !535, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2023, file: !1967, line: 49, baseType: !535, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2023, file: !1967, line: 50, baseType: !535, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1966, file: !1967, line: 160, baseType: !1472, size: 640, offset: 2240)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1966, file: !1967, line: 163, baseType: !2030, size: 256, offset: 2880)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 256, elements: !287)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1966, file: !1967, line: 169, baseType: !579, size: 64, offset: 3136)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1966, file: !1967, line: 172, baseType: !44, size: 32, offset: 3200)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1966, file: !1967, line: 174, baseType: !2034, size: 64, offset: 3264)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1967, line: 174, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1966, file: !1967, line: 185, baseType: !2037, size: 64, offset: 3328)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !796, line: 860, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !796, line: 853, size: 64, elements: !2039)
!2039 = !{!2040, !2045}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2038, file: !796, line: 858, baseType: !2041, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !796, line: 275, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !796, line: 275, size: 32, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2042, file: !796, line: 275, baseType: !800, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2038, file: !796, line: 859, baseType: !81, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1966, file: !1967, line: 186, baseType: !275, size: 64, offset: 3392)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1966, file: !1967, line: 186, baseType: !275, size: 64, offset: 3456)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1966, file: !1967, line: 186, baseType: !275, size: 64, offset: 3520)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1966, file: !1967, line: 186, baseType: !275, size: 64, offset: 3584)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1966, file: !1967, line: 187, baseType: !275, size: 64, offset: 3648)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1966, file: !1967, line: 188, baseType: !275, size: 64, offset: 3712)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1966, file: !1967, line: 189, baseType: !1460, size: 192, offset: 3776)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1966, file: !1967, line: 190, baseType: !61, size: 64, offset: 3968)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1966, file: !1967, line: 190, baseType: !61, size: 64, offset: 4032)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1966, file: !1967, line: 190, baseType: !61, size: 64, offset: 4096)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1966, file: !1967, line: 190, baseType: !61, size: 64, offset: 4160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1966, file: !1967, line: 191, baseType: !61, size: 64, offset: 4224)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1966, file: !1967, line: 191, baseType: !61, size: 64, offset: 4288)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1966, file: !1967, line: 191, baseType: !61, size: 64, offset: 4352)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1966, file: !1967, line: 191, baseType: !61, size: 64, offset: 4416)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1966, file: !1967, line: 192, baseType: !61, size: 64, offset: 4480)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1966, file: !1967, line: 192, baseType: !61, size: 64, offset: 4544)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1966, file: !1967, line: 192, baseType: !61, size: 64, offset: 4608)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1966, file: !1967, line: 192, baseType: !61, size: 64, offset: 4672)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1966, file: !1967, line: 193, baseType: !61, size: 64, offset: 4736)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1966, file: !1967, line: 193, baseType: !61, size: 64, offset: 4800)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1966, file: !1967, line: 194, baseType: !2068, size: 448, offset: 4864)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2069, line: 12, size: 448, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2068, file: !2069, line: 15, baseType: !275, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2068, file: !2069, line: 17, baseType: !275, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2068, file: !2069, line: 19, baseType: !275, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2068, file: !2069, line: 21, baseType: !275, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2068, file: !2069, line: 29, baseType: !275, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2068, file: !2069, line: 35, baseType: !275, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2068, file: !2069, line: 44, baseType: !275, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1966, file: !1967, line: 202, baseType: !277, size: 64, offset: 5312)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1966, file: !1967, line: 213, baseType: !2080, size: 2048, offset: 5376)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, size: 2048, elements: !1564)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2082, line: 43, size: 128, elements: !2083)
!2082 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2081, file: !2082, line: 44, baseType: !60, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2081, file: !2082, line: 45, baseType: !60, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1966, file: !1967, line: 216, baseType: !2087, size: 448, offset: 7424)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1967, line: 30, size: 448, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2087, file: !1967, line: 31, baseType: !44, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2087, file: !1967, line: 32, baseType: !271, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2087, file: !1967, line: 33, baseType: !61, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2087, file: !1967, line: 34, baseType: !275, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2087, file: !1967, line: 34, baseType: !275, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2087, file: !1967, line: 35, baseType: !61, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2087, file: !1967, line: 35, baseType: !61, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1966, file: !1967, line: 219, baseType: !2097, size: 64, offset: 7872)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2099, line: 41, size: 3456, elements: !2100)
!2099 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2117, !2118, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2098, file: !2099, line: 47, baseType: !116, size: 16)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2098, file: !2099, line: 48, baseType: !643, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2098, file: !2099, line: 54, baseType: !107, size: 8, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2098, file: !2099, line: 55, baseType: !107, size: 8, offset: 72)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2098, file: !2099, line: 73, baseType: !276, size: 64, align: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2098, file: !2099, line: 74, baseType: !276, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2098, file: !2099, line: 81, baseType: !276, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2098, file: !2099, line: 82, baseType: !276, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2098, file: !2099, line: 85, baseType: !276, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2098, file: !2099, line: 86, baseType: !276, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2098, file: !2099, line: 94, baseType: !276, size: 64, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2098, file: !2099, line: 102, baseType: !276, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2098, file: !2099, line: 107, baseType: !2114, size: 256, offset: 640)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2098, file: !2099, line: 108, baseType: !107, size: 8, align: 64, offset: 896)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2098, file: !2099, line: 110, baseType: !2119, size: 24, offset: 904)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 24, elements: !348)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2098, file: !2099, line: 111, baseType: !643, size: 32, align: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2098, file: !2099, line: 113, baseType: !643, size: 32, offset: 992)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2098, file: !2099, line: 114, baseType: !643, size: 32, offset: 1024)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2098, file: !2099, line: 115, baseType: !643, size: 32, offset: 1056)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2098, file: !2099, line: 117, baseType: !643, size: 32, offset: 1088)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2098, file: !2099, line: 118, baseType: !276, size: 64, align: 64, offset: 1152)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2098, file: !2099, line: 120, baseType: !276, size: 64, offset: 1216)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2098, file: !2099, line: 121, baseType: !276, size: 64, offset: 1280)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2098, file: !2099, line: 122, baseType: !276, size: 64, offset: 1344)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2098, file: !2099, line: 123, baseType: !276, size: 64, offset: 1408)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2098, file: !2099, line: 133, baseType: !276, size: 64, offset: 1472)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2098, file: !2099, line: 137, baseType: !276, size: 64, offset: 1536)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2098, file: !2099, line: 142, baseType: !276, size: 64, offset: 1600)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2098, file: !2099, line: 143, baseType: !276, size: 64, offset: 1664)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2098, file: !2099, line: 146, baseType: !276, size: 64, offset: 1728)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2098, file: !2099, line: 147, baseType: !276, size: 64, offset: 1792)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2098, file: !2099, line: 148, baseType: !276, size: 64, offset: 1856)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2098, file: !2099, line: 149, baseType: !276, size: 64, offset: 1920)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2098, file: !2099, line: 154, baseType: !276, size: 64, offset: 1984)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2098, file: !2099, line: 155, baseType: !276, size: 64, offset: 2048)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2098, file: !2099, line: 156, baseType: !276, size: 64, offset: 2112)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2098, file: !2099, line: 158, baseType: !276, size: 64, offset: 2176)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2098, file: !2099, line: 159, baseType: !276, size: 64, offset: 2240)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2098, file: !2099, line: 162, baseType: !276, size: 64, offset: 2304)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2098, file: !2099, line: 163, baseType: !276, size: 64, offset: 2368)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2098, file: !2099, line: 164, baseType: !276, size: 64, offset: 2432)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2098, file: !2099, line: 167, baseType: !276, size: 64, offset: 2496)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2098, file: !2099, line: 168, baseType: !276, size: 64, offset: 2560)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2098, file: !2099, line: 171, baseType: !276, size: 64, offset: 2624)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2098, file: !2099, line: 172, baseType: !276, size: 64, offset: 2688)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2098, file: !2099, line: 175, baseType: !276, size: 64, offset: 2752)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2098, file: !2099, line: 178, baseType: !276, size: 64, offset: 2816)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2098, file: !2099, line: 179, baseType: !276, size: 64, offset: 2880)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2098, file: !2099, line: 182, baseType: !643, size: 32, offset: 2944)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2098, file: !2099, line: 186, baseType: !276, size: 64, align: 64, offset: 3008)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2098, file: !2099, line: 194, baseType: !276, size: 64, offset: 3072)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2098, file: !2099, line: 195, baseType: !276, size: 64, offset: 3136)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2098, file: !2099, line: 199, baseType: !276, size: 64, offset: 3200)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2098, file: !2099, line: 200, baseType: !276, size: 64, offset: 3264)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2098, file: !2099, line: 203, baseType: !276, size: 64, offset: 3328)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2098, file: !2099, line: 204, baseType: !276, size: 64, offset: 3392)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1966, file: !1967, line: 222, baseType: !6, size: 32, offset: 7936)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1966, file: !1967, line: 223, baseType: !2163, size: 64, offset: 8000)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1967, line: 223, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1966, file: !1967, line: 230, baseType: !407, size: 8, offset: 8064)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1966, file: !1967, line: 231, baseType: !1074, size: 16, offset: 8080)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1966, file: !1967, line: 232, baseType: !1074, size: 16, offset: 8096)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1966, file: !1967, line: 234, baseType: !923, size: 64, offset: 8128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1966, file: !1967, line: 237, baseType: !540, size: 256, offset: 8192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1966, file: !1967, line: 243, baseType: !978, size: 320, offset: 8448)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !632, file: !633, line: 1111, baseType: !2172, size: 64, offset: 15424)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1967, line: 20, size: 16640, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2173, file: !1967, line: 21, baseType: !81, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2173, file: !1967, line: 22, baseType: !583, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2173, file: !1967, line: 23, baseType: !76, size: 192, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2173, file: !1967, line: 24, baseType: !2179, size: 16384, offset: 256)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 16384, elements: !352)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1978, line: 51, size: 256, elements: !2181)
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2180, file: !1978, line: 52, baseType: !2183, size: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1978, line: 37, size: 256, elements: !2184)
!2184 = !{!2185, !2192, !2193, !2197}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2183, file: !1978, line: 39, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2187, line: 83, baseType: !2188)
!2187 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2187, line: 82, baseType: !2190)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !44}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2183, file: !1978, line: 40, baseType: !61, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2183, file: !1978, line: 46, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2187, line: 86, baseType: !2195)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2187, line: 85, baseType: !1827)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2183, file: !1978, line: 48, baseType: !1982, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !632, file: !633, line: 1112, baseType: !1982, size: 64, offset: 15488)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !632, file: !633, line: 1113, baseType: !1982, size: 64, offset: 15552)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !632, file: !633, line: 1115, baseType: !1982, size: 64, offset: 15616)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !632, file: !633, line: 1116, baseType: !1977, size: 192, offset: 15680)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !632, file: !633, line: 1117, baseType: !61, size: 64, offset: 15872)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !632, file: !633, line: 1118, baseType: !57, size: 64, offset: 15936)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !632, file: !633, line: 1119, baseType: !6, size: 32, offset: 16000)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !632, file: !633, line: 1121, baseType: !523, size: 64, offset: 16064)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !632, file: !633, line: 1125, baseType: !2207, size: 64, offset: 16128)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !633, line: 43, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !632, file: !633, line: 1127, baseType: !438, size: 32, offset: 16192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !632, file: !633, line: 1128, baseType: !6, size: 32, offset: 16224)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !632, file: !633, line: 1130, baseType: !2212, size: 128, offset: 16256)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2213, line: 37, size: 128, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2212, file: !2213, line: 38, baseType: !44, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2212, file: !2213, line: 39, baseType: !71, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2212, file: !2213, line: 40, baseType: !2218, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2213, line: 24, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !632, file: !633, line: 1131, baseType: !2221, size: 256, offset: 16384)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2222, line: 12, size: 256, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2223 = !{!2224, !2225, !2226, !2227}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2221, file: !2222, line: 13, baseType: !347, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2221, file: !2222, line: 14, baseType: !61, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2221, file: !2222, line: 15, baseType: !61, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2221, file: !2222, line: 16, baseType: !407, size: 8, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !632, file: !633, line: 1134, baseType: !275, size: 64, offset: 16640)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !632, file: !633, line: 1135, baseType: !275, size: 64, offset: 16704)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !632, file: !633, line: 1138, baseType: !81, size: 32, offset: 16768)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !632, file: !633, line: 1141, baseType: !545, size: 32, offset: 16800)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !632, file: !633, line: 1143, baseType: !2233, size: 64, offset: 16832)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !633, line: 735, size: 64, elements: !2234)
!2234 = !{!2235}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2233, file: !633, line: 736, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !632, file: !633, line: 1147, baseType: !809, size: 128, offset: 16896)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !632, file: !633, line: 1149, baseType: !631, size: 64, offset: 17024)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !632, file: !633, line: 1151, baseType: !2240, size: 64, offset: 17088)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !633, line: 1151, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !632, file: !633, line: 1188, baseType: !42, size: 64, offset: 17152)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !632, file: !633, line: 1191, baseType: !2244, size: 64, offset: 17216)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !633, line: 44, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !632, file: !633, line: 1194, baseType: !2247, size: 64, offset: 17280)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !633, line: 45, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !632, file: !633, line: 1197, baseType: !2250, size: 64, offset: 17344)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !633, line: 61, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !632, file: !633, line: 1199, baseType: !2253, size: 64, offset: 17408)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2255, line: 99, size: 128, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2254, file: !2255, line: 100, baseType: !533, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2254, file: !2255, line: 101, baseType: !71, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2254, file: !2255, line: 103, baseType: !48, size: 16, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !632, file: !633, line: 1202, baseType: !2261, size: 64, offset: 17472)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !633, line: 48, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !632, file: !633, line: 1205, baseType: !61, size: 64, offset: 17536)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !632, file: !633, line: 1206, baseType: !2265, size: 64, offset: 17600)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1978, line: 14, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1978, line: 12, size: 384, elements: !2268)
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !1978, line: 13, baseType: !2270, size: 384)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !1978, line: 13, size: 384, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2270, file: !1978, line: 13, baseType: !44, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2270, file: !1978, line: 13, baseType: !44, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2270, file: !1978, line: 13, baseType: !44, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2270, file: !1978, line: 13, baseType: !2276, size: 256, offset: 128)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2277, line: 37, size: 256, elements: !2278)
!2277 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2278 = !{!2279, !2284, !2297, !2303, !2312, !2339, !2344}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2276, file: !2277, line: 42, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 39, size: 64, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2280, file: !2277, line: 40, baseType: !1436, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2280, file: !2277, line: 41, baseType: !444, size: 32, offset: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2276, file: !2277, line: 50, baseType: !2285, size: 192)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 45, size: 192, elements: !2286)
!2286 = !{!2287, !2289, !2290, !2296}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2285, file: !2277, line: 46, baseType: !2288, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !59, line: 95, baseType: !44)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2285, file: !2277, line: 47, baseType: !44, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2285, file: !2277, line: 48, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2277, line: 11, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2277, line: 8, size: 64, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2292, file: !2277, line: 9, baseType: !44, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2292, file: !2277, line: 10, baseType: !42, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2285, file: !2277, line: 49, baseType: !44, size: 32, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2276, file: !2277, line: 57, baseType: !2298, size: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 53, size: 128, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2298, file: !2277, line: 54, baseType: !1436, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2298, file: !2277, line: 55, baseType: !444, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2298, file: !2277, line: 56, baseType: !2291, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2276, file: !2277, line: 66, baseType: !2304, size: 256)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 60, size: 256, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2311}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2304, file: !2277, line: 61, baseType: !1436, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2304, file: !2277, line: 62, baseType: !444, size: 32, offset: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2304, file: !2277, line: 63, baseType: !44, size: 32, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2304, file: !2277, line: 64, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !59, line: 94, baseType: !380)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2304, file: !2277, line: 65, baseType: !2310, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2276, file: !2277, line: 105, baseType: !2313, size: 256)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 69, size: 256, elements: !2314)
!2314 = !{!2315, !2316}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2313, file: !2277, line: 70, baseType: !42, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2313, file: !2277, line: 79, baseType: !2317, size: 192, offset: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2313, file: !2277, line: 79, size: 192, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2328, !2333}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2317, file: !2277, line: 81, baseType: !44, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2317, file: !2277, line: 86, baseType: !1074, size: 16)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2317, file: !2277, line: 92, baseType: !2322, size: 192)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !2277, line: 88, size: 192, elements: !2323)
!2323 = !{!2324, !2326, !2327}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2322, file: !2277, line: 89, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !788)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2322, file: !2277, line: 90, baseType: !42, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2322, file: !2277, line: 91, baseType: !42, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2317, file: !2277, line: 97, baseType: !2329, size: 96)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !2277, line: 94, size: 96, elements: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2329, file: !2277, line: 95, baseType: !2325, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2329, file: !2277, line: 96, baseType: !643, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2317, file: !2277, line: 103, baseType: !2334, size: 128)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !2277, line: 99, size: 128, elements: !2335)
!2335 = !{!2336, !2337, !2338}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2334, file: !2277, line: 100, baseType: !61, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2334, file: !2277, line: 101, baseType: !643, size: 32, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2334, file: !2277, line: 102, baseType: !643, size: 32, offset: 96)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2276, file: !2277, line: 111, baseType: !2340, size: 128)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 108, size: 128, elements: !2341)
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2340, file: !2277, line: 109, baseType: !271, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2340, file: !2277, line: 110, baseType: !44, size: 32, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2276, file: !2277, line: 118, baseType: !2345, size: 128)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !2277, line: 114, size: 128, elements: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2345, file: !2277, line: 115, baseType: !42, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2345, file: !2277, line: 116, baseType: !44, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2345, file: !2277, line: 117, baseType: !6, size: 32, offset: 96)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !632, file: !633, line: 1208, baseType: !2068, size: 448, offset: 17664)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !632, file: !633, line: 1215, baseType: !275, size: 64, offset: 18112)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !632, file: !633, line: 1217, baseType: !275, size: 64, offset: 18176)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !632, file: !633, line: 1219, baseType: !275, size: 64, offset: 18240)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !632, file: !633, line: 1223, baseType: !2355, size: 64, offset: 18304)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2356, line: 99, baseType: !2357)
!2356 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 99, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2357, file: !2356, line: 99, baseType: !874, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !632, file: !633, line: 1225, baseType: !2041, size: 32, offset: 18368)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !632, file: !633, line: 1226, baseType: !44, size: 32, offset: 18400)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !632, file: !633, line: 1227, baseType: !44, size: 32, offset: 18432)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !632, file: !633, line: 1231, baseType: !1622, size: 64, offset: 18496)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !632, file: !633, line: 1233, baseType: !119, size: 128, offset: 18560)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !632, file: !633, line: 1240, baseType: !2366, size: 64, offset: 18688)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !633, line: 62, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !632, file: !633, line: 1242, baseType: !2369, size: 64, offset: 18752)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !633, line: 1242, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !632, file: !633, line: 1244, baseType: !119, size: 128, offset: 18816)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !632, file: !633, line: 1245, baseType: !2373, size: 64, offset: 18944)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !633, line: 51, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !632, file: !633, line: 1246, baseType: !540, size: 256, offset: 19008)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !632, file: !633, line: 1247, baseType: !6, size: 32, offset: 19264)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !632, file: !633, line: 1250, baseType: !2378, size: 64, offset: 19328)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !245, line: 912, size: 1792, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2379, file: !245, line: 917, baseType: !545, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2379, file: !245, line: 923, baseType: !540, size: 256, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2379, file: !245, line: 925, baseType: !119, size: 128, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2379, file: !245, line: 926, baseType: !2385, size: 128, offset: 448)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !245, line: 901, size: 128, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2385, file: !245, line: 902, baseType: !479, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2385, file: !245, line: 903, baseType: !275, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2379, file: !245, line: 927, baseType: !2385, size: 128, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2379, file: !245, line: 928, baseType: !119, size: 128, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2379, file: !245, line: 930, baseType: !44, size: 32, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2379, file: !245, line: 931, baseType: !44, size: 32, offset: 864)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2379, file: !245, line: 932, baseType: !44, size: 32, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2379, file: !245, line: 934, baseType: !44, size: 32, offset: 928)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2379, file: !245, line: 935, baseType: !44, size: 32, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2379, file: !245, line: 936, baseType: !44, size: 32, offset: 992)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2379, file: !245, line: 937, baseType: !44, size: 32, offset: 1024)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2379, file: !245, line: 939, baseType: !583, size: 32, offset: 1056)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2379, file: !245, line: 940, baseType: !631, size: 64, offset: 1088)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2379, file: !245, line: 945, baseType: !275, size: 64, offset: 1152)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2379, file: !245, line: 946, baseType: !275, size: 64, offset: 1216)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2379, file: !245, line: 947, baseType: !275, size: 64, offset: 1280)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2379, file: !245, line: 953, baseType: !2378, size: 64, offset: 1344)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2379, file: !245, line: 954, baseType: !275, size: 64, offset: 1408)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2379, file: !245, line: 955, baseType: !275, size: 64, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2379, file: !245, line: 956, baseType: !44, size: 32, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2379, file: !245, line: 958, baseType: !44, size: 32, offset: 1568)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2379, file: !245, line: 960, baseType: !520, size: 128, align: 64, offset: 1600)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2379, file: !245, line: 968, baseType: !2410, size: 64, offset: 1728)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2411, line: 12, baseType: !2412)
!2411 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2411, line: 10, size: 64, elements: !2413)
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2412, file: !2411, line: 11, baseType: !533, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !632, file: !633, line: 1251, baseType: !540, size: 256, offset: 19392)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !632, file: !633, line: 1252, baseType: !119, size: 128, offset: 19648)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !632, file: !633, line: 1259, baseType: !2418, size: 64, offset: 19776)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !633, line: 54, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !632, file: !633, line: 1260, baseType: !1074, size: 16, offset: 19840)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !632, file: !633, line: 1261, baseType: !1074, size: 16, offset: 19856)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !632, file: !633, line: 1314, baseType: !2423, size: 64, offset: 19904)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2425, line: 62, size: 256, align: 256, elements: !2426)
!2425 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2424, file: !2425, line: 75, baseType: !643, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2424, file: !2425, line: 90, baseType: !643, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2424, file: !2425, line: 112, baseType: !276, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2424, file: !2425, line: 132, baseType: !643, size: 32, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2424, file: !2425, line: 140, baseType: !643, size: 32, offset: 160)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2424, file: !2425, line: 149, baseType: !643, size: 32, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2424, file: !2425, line: 154, baseType: !2434, offset: 224)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !1353)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !632, file: !633, line: 1315, baseType: !642, size: 32, offset: 19968)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !632, file: !633, line: 1316, baseType: !642, size: 32, offset: 20000)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !632, file: !633, line: 1321, baseType: !61, size: 64, offset: 20032)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !632, file: !633, line: 1325, baseType: !44, size: 32, offset: 20096)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !632, file: !633, line: 1326, baseType: !44, size: 32, offset: 20128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !632, file: !633, line: 1327, baseType: !44, size: 32, offset: 20160)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !632, file: !633, line: 1328, baseType: !44, size: 32, offset: 20192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !632, file: !633, line: 1329, baseType: !520, size: 128, align: 64, offset: 20224)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !632, file: !633, line: 1332, baseType: !2444, size: 128, offset: 20352)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2445, line: 51, size: 128, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2446 = !{!2447, !2452, !2453}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2444, file: !2445, line: 60, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2449, line: 7, size: 64, elements: !2450)
!2449 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2448, file: !2449, line: 12, baseType: !871, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2444, file: !2445, line: 63, baseType: !407, size: 8, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2444, file: !2445, line: 70, baseType: !407, size: 8, offset: 72)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !632, file: !633, line: 1335, baseType: !2455, size: 64, offset: 20480)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !633, line: 59, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !632, file: !633, line: 1337, baseType: !2458, size: 128, offset: 20544)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2445, line: 39, size: 128, elements: !2459)
!2459 = !{!2460, !4254, !4255}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2458, file: !2445, line: 40, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !154, line: 74, size: 512, align: 128, elements: !2463)
!2463 = !{!2464, !2465, !4248, !4253}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2462, file: !154, line: 75, baseType: !61, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, scope: !2462, file: !154, line: 83, baseType: !2466, size: 320, offset: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2462, file: !154, line: 83, size: 320, elements: !2467)
!2467 = !{!2468, !4174, !4188, !4192, !4247}
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !154, line: 84, baseType: !2469, size: 320)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !154, line: 84, size: 320, elements: !2470)
!2470 = !{!2471, !2482, !4168, !4173}
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !154, line: 90, baseType: !2472, size: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !154, line: 90, size: 128, elements: !2473)
!2473 = !{!2474, !2475, !2480, !2481}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2472, file: !154, line: 91, baseType: !119, size: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2472, file: !154, line: 94, baseType: !2476, size: 128)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !154, line: 94, size: 128, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2476, file: !154, line: 96, baseType: !42, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2476, file: !154, line: 98, baseType: !6, size: 32, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2472, file: !154, line: 102, baseType: !119, size: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2472, file: !154, line: 103, baseType: !119, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2469, file: !154, line: 106, baseType: !2483, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !143, line: 472, size: 1536, align: 64, elements: !2485)
!2485 = !{!2486, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4162, !4163, !4164, !4165, !4166, !4167}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2484, file: !143, line: 473, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !143, line: 641, size: 4800, elements: !2489)
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2495, !2496, !2499, !2500, !3631, !3632, !3633, !3634, !3635, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3984, !3987, !3988, !3989, !3998, !3999, !4000, !4001}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !2488, file: !143, line: 642, baseType: !46, size: 16)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !2488, file: !143, line: 643, baseType: !48, size: 16, offset: 16)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !2488, file: !143, line: 644, baseType: !438, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !2488, file: !143, line: 645, baseType: !119, size: 128, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !2488, file: !143, line: 646, baseType: !446, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2488, file: !143, line: 647, baseType: !6, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !2488, file: !143, line: 650, baseType: !2497, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !143, line: 607, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !2488, file: !143, line: 651, baseType: !2497, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !2488, file: !143, line: 654, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !143, line: 1966, size: 2048, align: 512, elements: !2504)
!2504 = !{!2505, !3465, !3475, !3479, !3483, !3487, !3491, !3495, !3499, !3503, !3507, !3508, !3512, !3516, !3553, !3582, !3586, !3592, !3596, !3600, !3604, !3608, !3612, !3618, !3622}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2503, file: !143, line: 1967, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!2509, !2487, !2509, !6}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !2511, line: 82, size: 1536, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!2512 = !{!2513, !2514, !2515, !2523, !2524, !2539, !2540, !2542, !2555, !3448, !3449, !3450, !3451, !3457, !3458, !3459}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !2510, file: !2511, line: 84, baseType: !6, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !2510, file: !2511, line: 85, baseType: !2041, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2510, file: !2511, line: 86, baseType: !2516, size: 128, offset: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !2517, line: 38, size: 128, elements: !2518)
!2517 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!2518 = !{!2519, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2516, file: !2517, line: 39, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2516, file: !2517, line: 39, baseType: !2522, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !2510, file: !2511, line: 87, baseType: !2509, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2510, file: !2511, line: 88, baseType: !2525, size: 128, offset: 256)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !2511, line: 49, size: 128, elements: !2526)
!2526 = !{!2527, !2536}
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2511, line: 50, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !2511, line: 50, size: 64, elements: !2529)
!2529 = !{!2530, !2535}
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !2528, file: !2511, line: 51, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !2511, line: 51, size: 64, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2531, file: !2511, line: 52, baseType: !642, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2531, file: !2511, line: 52, baseType: !642, size: 32, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !2528, file: !2511, line: 54, baseType: !275, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2525, file: !2511, line: 56, baseType: !2537, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !2510, file: !2511, line: 89, baseType: !2487, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !2510, file: !2511, line: 91, baseType: !2541, size: 256, offset: 448)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !2115)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !2510, file: !2511, line: 94, baseType: !2543, size: 64, offset: 704)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2544, line: 25, size: 64, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2543, file: !2544, line: 26, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2543, file: !2544, line: 26, size: 64, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2547, file: !2544, line: 28, baseType: !276, size: 64, align: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !2544, line: 30, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2547, file: !2544, line: 30, size: 64, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2551, file: !2544, line: 31, baseType: !81, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2551, file: !2544, line: 32, baseType: !44, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !2510, file: !2511, line: 95, baseType: !2556, size: 64, offset: 768)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !2511, line: 128, size: 1024, align: 512, elements: !2559)
!2559 = !{!2560, !2564, !2565, !2572, !2578, !2582, !2586, !2590, !2591, !2595, !2599, !3438, !3442}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2558, file: !2511, line: 129, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!44, !2509, !6}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2558, file: !2511, line: 130, baseType: !2561, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2558, file: !2511, line: 131, baseType: !2566, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!44, !2569, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2558, file: !2511, line: 132, baseType: !2573, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!44, !2569, !6, !38, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2558, file: !2511, line: 134, baseType: !2579, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!44, !2569}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2558, file: !2511, line: 135, baseType: !2583, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!44, !2509}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2558, file: !2511, line: 136, baseType: !2587, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !2509}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2558, file: !2511, line: 137, baseType: !2587, size: 64, offset: 448)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2558, file: !2511, line: 138, baseType: !2592, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !2509, !2487}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2558, file: !2511, line: 139, baseType: !2596, size: 64, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!347, !2509, !347, !44}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2558, file: !2511, line: 140, baseType: !2600, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!2603, !3437}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !2605, line: 70, size: 256, elements: !2606)
!2605 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!2606 = !{!2607, !2608, !3433, !3434}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !2604, file: !2605, line: 71, baseType: !2509, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !2604, file: !2605, line: 72, baseType: !2609, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !143, line: 1190, size: 10752, elements: !2611)
!2611 = !{!2612, !2613, !2616, !2617, !2618, !2619, !2998, !3132, !3172, !3262, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3279, !3283, !3284, !3287, !3290, !3293, !3296, !3297, !3298, !3339, !3365, !3366, !3367, !3368, !3369, !3370, !3373, !3374, !3381, !3382, !3383, !3384, !3385, !3400, !3401, !3402, !3403, !3406, !3407, !3408, !3409, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !2610, file: !143, line: 1191, baseType: !119, size: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !2610, file: !143, line: 1192, baseType: !2614, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !47, line: 21, baseType: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !47, line: 18, baseType: !642)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !2610, file: !143, line: 1193, baseType: !109, size: 8, offset: 160)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !2610, file: !143, line: 1194, baseType: !61, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !2610, file: !143, line: 1195, baseType: !63, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !2610, file: !143, line: 1196, baseType: !2620, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !143, line: 2366, size: 576, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2631, !2635, !2639, !2643, !2986, !2987, !2988, !2990, !2991, !2992, !2994, !2995, !2996, !2997}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2621, file: !143, line: 2367, baseType: !38, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !2621, file: !143, line: 2368, baseType: !44, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !2621, file: !143, line: 2376, baseType: !2626, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!44, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !2605, line: 21, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !2621, file: !143, line: 2377, baseType: !2632, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !143, line: 75, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !2621, file: !143, line: 2378, baseType: !2636, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!2509, !2620, !44, !38, !42}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !2621, file: !143, line: 2380, baseType: !2640, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{null, !2609}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2621, file: !143, line: 2381, baseType: !2644, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !136, line: 402, size: 9216, align: 512, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2653, !2663, !2689, !2690, !2691, !2692, !2696, !2699, !2700, !2701, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2769, !2773, !2791, !2808, !2809, !2810, !2811, !2820, !2843, !2844, !2847, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2861, !2862, !2948, !2956, !2957, !2958, !2960, !2964, !2965, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2982, !2983, !2984, !2985}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2645, file: !136, line: 403, baseType: !135, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2645, file: !136, line: 406, baseType: !119, size: 128, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2645, file: !136, line: 409, baseType: !2650, size: 448, offset: 192)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 448, elements: !2651)
!2651 = !{!2652}
!2652 = !DISubrange(count: 56)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2645, file: !136, line: 417, baseType: !2654, size: 768, offset: 640)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !136, line: 45, size: 768, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2659, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2654, file: !136, line: 46, baseType: !307, size: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2654, file: !136, line: 47, baseType: !2644, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2654, file: !136, line: 48, baseType: !306, size: 64, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2654, file: !136, line: 49, baseType: !2660, size: 64, offset: 640)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !136, line: 49, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2654, file: !136, line: 50, baseType: !1277, size: 64, offset: 704)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2645, file: !136, line: 418, baseType: !2664, size: 64, offset: 1408)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !136, line: 53, size: 448, elements: !2666)
!2666 = !{!2667, !2668, !2673, !2677, !2681, !2685}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2665, file: !136, line: 54, baseType: !382, size: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2665, file: !136, line: 55, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!378, !2664, !2672, !347}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2665, file: !136, line: 57, baseType: !2674, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!378, !2664, !2672, !38, !57}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2665, file: !136, line: 59, baseType: !2678, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2644, !38}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2665, file: !136, line: 60, baseType: !2682, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!44, !2644}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2665, file: !136, line: 61, baseType: !2686, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{null, !2644}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2645, file: !136, line: 419, baseType: !38, size: 64, offset: 1472)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2645, file: !136, line: 420, baseType: !38, size: 64, offset: 1536)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2645, file: !136, line: 421, baseType: !306, size: 64, offset: 1600)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2645, file: !136, line: 424, baseType: !2693, size: 64, offset: 1664)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2695)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !136, line: 424, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2645, file: !136, line: 425, baseType: !2697, size: 64, offset: 1728)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2645, file: !136, line: 426, baseType: !6, size: 32, offset: 1792)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2645, file: !136, line: 435, baseType: !540, size: 256, offset: 1856)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2645, file: !136, line: 437, baseType: !2702, size: 64, offset: 2112)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2704, line: 69, size: 320, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2705 = !{!2706, !2707, !2708, !2725, !2727, !2731, !2732}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2703, file: !2704, line: 70, baseType: !38, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2703, file: !2704, line: 71, baseType: !2644, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2703, file: !2704, line: 72, baseType: !2709, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2704, line: 47, size: 256, elements: !2712)
!2712 = !{!2713, !2714, !2720, !2724}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2711, file: !2704, line: 49, baseType: !6, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2711, file: !2704, line: 51, baseType: !2715, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!44, !38, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2711, file: !2704, line: 53, baseType: !2721, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!44, !347, !2718}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2711, file: !2704, line: 55, baseType: !426, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2703, file: !2704, line: 73, baseType: !2726, size: 16, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2703, file: !2704, line: 74, baseType: !2728, size: 8, offset: 208)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !106, line: 16, baseType: !2729)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !108, line: 20, baseType: !2730)
!2730 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2703, file: !2704, line: 75, baseType: !105, size: 8, offset: 216)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2703, file: !2704, line: 76, baseType: !2733, size: 64, offset: 256)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2703, file: !2704, line: 76, size: 64, elements: !2734)
!2734 = !{!2735, !2736, !2743}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2733, file: !2704, line: 77, baseType: !42, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2733, file: !2704, line: 78, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2704, line: 86, size: 128, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2739, file: !2704, line: 87, baseType: !6, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2739, file: !2704, line: 88, baseType: !347, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2733, file: !2704, line: 79, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2704, line: 92, size: 256, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2752, !2753}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2746, file: !2704, line: 94, baseType: !6, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2746, file: !2704, line: 95, baseType: !6, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2746, file: !2704, line: 96, baseType: !2751, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2746, file: !2704, line: 97, baseType: !2709, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2746, file: !2704, line: 98, baseType: !42, size: 64, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2645, file: !136, line: 438, baseType: !6, size: 32, offset: 2176)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2645, file: !136, line: 441, baseType: !6, size: 32, offset: 2208)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2645, file: !136, line: 442, baseType: !2693, size: 64, offset: 2240)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2645, file: !136, line: 443, baseType: !2697, size: 64, offset: 2304)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2645, file: !136, line: 444, baseType: !407, size: 8, offset: 2368)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2645, file: !136, line: 451, baseType: !407, size: 8, offset: 2376)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2645, file: !136, line: 454, baseType: !6, size: 32, offset: 2400)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2645, file: !136, line: 455, baseType: !2762, size: 64, offset: 2432)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2764, line: 23, size: 96, elements: !2765)
!2764 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2765 = !{!2766, !2767, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2763, file: !2764, line: 24, baseType: !44, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2763, file: !2764, line: 24, baseType: !44, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2763, file: !2764, line: 24, baseType: !44, size: 32, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2645, file: !136, line: 458, baseType: !2770, size: 64, offset: 2496)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!44}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2645, file: !136, line: 460, baseType: !2774, size: 4032, align: 512, offset: 2560)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 4032, elements: !2789)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !136, line: 362, size: 576, elements: !2776)
!2776 = !{!2777, !2778, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2775, file: !136, line: 363, baseType: !42, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2775, file: !136, line: 364, baseType: !6, size: 32, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2775, file: !136, line: 367, baseType: !2780, size: 448, offset: 128)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !136, line: 319, size: 448, elements: !2781)
!2781 = !{!2782, !2783}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2780, file: !136, line: 320, baseType: !2644, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2780, file: !136, line: 321, baseType: !2784, size: 384, offset: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2785, line: 40, size: 384, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2786 = !{!2787}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2784, file: !2785, line: 41, baseType: !2788, size: 384, align: 64)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 384, align: 64, elements: !2017)
!2789 = !{!2790}
!2790 = !DISubrange(count: 7)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2645, file: !136, line: 463, baseType: !2792, size: 192, offset: 6592)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2793, line: 8, size: 192, elements: !2794)
!2793 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2794 = !{!2795, !2796, !2797}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2792, file: !2793, line: 10, baseType: !6, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2792, file: !2793, line: 11, baseType: !1453, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2792, file: !2793, line: 12, baseType: !2798, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2800, line: 59, size: 48, elements: !2801)
!2800 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2801 = !{!2802, !2803, !2804, !2805, !2806, !2807}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2799, file: !2800, line: 60, baseType: !1072, size: 16)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2799, file: !2800, line: 61, baseType: !1072, size: 16, offset: 16)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2799, file: !2800, line: 63, baseType: !6, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2799, file: !2800, line: 64, baseType: !6, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2799, file: !2800, line: 65, baseType: !6, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2799, file: !2800, line: 66, baseType: !6, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2645, file: !136, line: 465, baseType: !61, size: 64, offset: 6784)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2645, file: !136, line: 469, baseType: !6, size: 32, offset: 6848)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2645, file: !136, line: 470, baseType: !119, size: 128, offset: 6912)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2645, file: !136, line: 471, baseType: !2812, size: 64, offset: 7040)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2814, line: 33, size: 96, elements: !2815)
!2814 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2815 = !{!2816, !2817, !2818, !2819}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2813, file: !2814, line: 37, baseType: !44, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2813, file: !2814, line: 43, baseType: !44, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2813, file: !2814, line: 45, baseType: !48, size: 16, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2814, line: 47, baseType: !48, size: 16, offset: 80)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2645, file: !136, line: 476, baseType: !2821, size: 64, offset: 7104)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !136, line: 378, size: 256, elements: !2823)
!2823 = !{!2824, !2840, !2841, !2842}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2822, file: !136, line: 379, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2827, line: 204, baseType: !2828)
!2827 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2827, line: 197, size: 192, elements: !2829)
!2829 = !{!2830, !2832, !2833, !2834, !2836, !2838}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2828, file: !2827, line: 198, baseType: !2831, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2827, line: 21, baseType: !643)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2828, file: !2827, line: 199, baseType: !109, size: 8, offset: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2828, file: !2827, line: 200, baseType: !109, size: 8, offset: 40)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2828, file: !2827, line: 201, baseType: !2835, size: 16, offset: 48)
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2827, line: 17, baseType: !116)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2828, file: !2827, line: 202, baseType: !2837, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2827, line: 16, baseType: !276)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2828, file: !2827, line: 203, baseType: !2839, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2827, line: 22, baseType: !276)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2822, file: !136, line: 380, baseType: !6, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2822, file: !136, line: 381, baseType: !347, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2822, file: !136, line: 382, baseType: !347, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2645, file: !136, line: 477, baseType: !2822, size: 256, offset: 7168)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2645, file: !136, line: 480, baseType: !2845, size: 64, offset: 7424)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !136, line: 480, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2645, file: !136, line: 483, baseType: !2848, size: 64, offset: 7488)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !136, line: 483, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2645, file: !136, line: 488, baseType: !347, size: 64, offset: 7552)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2645, file: !136, line: 492, baseType: !42, size: 64, offset: 7616)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2645, file: !136, line: 493, baseType: !6, size: 32, offset: 7680)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2645, file: !136, line: 495, baseType: !42, size: 64, offset: 7744)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2645, file: !136, line: 496, baseType: !6, size: 32, offset: 7808)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2645, file: !136, line: 499, baseType: !6, size: 32, offset: 7840)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2645, file: !136, line: 500, baseType: !2857, size: 64, offset: 7872)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2859, line: 45, baseType: !2860)
!2859 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2645, file: !136, line: 503, baseType: !6, size: 32, offset: 7936)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2645, file: !136, line: 504, baseType: !2863, size: 64, offset: 8000)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2866, line: 96, size: 192, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2867 = !{!2868, !2869, !2911, !2914}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2865, file: !2866, line: 97, baseType: !6, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2865, file: !2866, line: 98, baseType: !2870, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2866, line: 24, size: 3072, elements: !2872)
!2872 = !{!2873, !2875, !2876, !2877, !2878, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2908, !2909, !2910}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2871, file: !2866, line: 26, baseType: !2874, size: 128)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 128, elements: !2017)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2871, file: !2866, line: 27, baseType: !2874, size: 128, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2871, file: !2866, line: 28, baseType: !44, size: 32, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2871, file: !2866, line: 31, baseType: !81, size: 32, align: 512, offset: 512)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2871, file: !2866, line: 32, baseType: !2879, size: 960, offset: 576)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2880, line: 206, size: 960, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2881 = !{!2882, !2883, !2886, !2888, !2889, !2890}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2879, file: !2880, line: 207, baseType: !523, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2879, file: !2880, line: 208, baseType: !2884, size: 256, offset: 64)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2885, size: 256, elements: !287)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2879, file: !2880, line: 209, baseType: !2887, size: 256, offset: 320)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !287)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2879, file: !2880, line: 213, baseType: !271, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2879, file: !2880, line: 215, baseType: !1336, size: 256, offset: 640)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2879, file: !2880, line: 216, baseType: !105, size: 8, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2871, file: !2866, line: 33, baseType: !61, size: 64, offset: 1536)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2871, file: !2866, line: 34, baseType: !61, size: 64, offset: 1600)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2871, file: !2866, line: 35, baseType: !407, size: 8, offset: 1664)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2871, file: !2866, line: 36, baseType: !1654, size: 320, offset: 1728)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2871, file: !2866, line: 37, baseType: !1239, size: 256, offset: 2048)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2871, file: !2866, line: 38, baseType: !520, size: 128, align: 64, offset: 2304)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2871, file: !2866, line: 39, baseType: !2898, size: 64, offset: 2432)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2866, line: 49, size: 768, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2899, file: !2866, line: 50, baseType: !81, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2899, file: !2866, line: 51, baseType: !2887, size: 256, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2899, file: !2866, line: 53, baseType: !2887, size: 256, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2899, file: !2866, line: 54, baseType: !61, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2899, file: !2866, line: 55, baseType: !2898, size: 64, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2899, file: !2866, line: 56, baseType: !44, size: 32, offset: 704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2899, file: !2866, line: 57, baseType: !44, size: 32, offset: 736)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2871, file: !2866, line: 40, baseType: !61, size: 64, offset: 2496)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2871, file: !2866, line: 42, baseType: !44, size: 32, offset: 2560)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2871, file: !2866, line: 43, baseType: !2864, size: 64, offset: 2624)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2865, file: !2866, line: 99, baseType: !2912, offset: 128)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2913, line: 211, elements: !944)
!2913 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2865, file: !2866, line: 100, baseType: !2915, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2866, line: 63, size: 3008, elements: !2917)
!2917 = !{!2918, !2919, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2947}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2916, file: !2866, line: 64, baseType: !2898, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2916, file: !2866, line: 65, baseType: !2920, size: 192, offset: 64)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2898, size: 192, elements: !348)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2916, file: !2866, line: 67, baseType: !44, size: 32, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2916, file: !2866, line: 68, baseType: !540, size: 256, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2916, file: !2866, line: 69, baseType: !81, size: 32, offset: 576)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2916, file: !2866, line: 70, baseType: !540, size: 256, offset: 640)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2916, file: !2866, line: 71, baseType: !61, size: 64, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2916, file: !2866, line: 72, baseType: !61, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2916, file: !2866, line: 73, baseType: !61, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2916, file: !2866, line: 74, baseType: !61, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2916, file: !2866, line: 75, baseType: !61, size: 64, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2916, file: !2866, line: 76, baseType: !61, size: 64, offset: 1216)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2916, file: !2866, line: 77, baseType: !61, size: 64, offset: 1280)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2916, file: !2866, line: 78, baseType: !61, size: 64, offset: 1344)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2916, file: !2866, line: 79, baseType: !407, size: 8, offset: 1408)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2916, file: !2866, line: 80, baseType: !61, size: 64, offset: 1472)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2916, file: !2866, line: 81, baseType: !540, size: 256, offset: 1536)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2916, file: !2866, line: 82, baseType: !1278, size: 256, offset: 1792)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2916, file: !2866, line: 84, baseType: !71, size: 32, offset: 2048)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2916, file: !2866, line: 87, baseType: !61, size: 64, offset: 2112)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2916, file: !2866, line: 88, baseType: !61, size: 64, offset: 2176)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2916, file: !2866, line: 89, baseType: !2941, size: 704, offset: 2240)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1240, line: 111, size: 704, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2941, file: !1240, line: 112, baseType: !1239, size: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2941, file: !1240, line: 113, baseType: !1654, size: 320, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2941, file: !1240, line: 116, baseType: !1940, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2941, file: !1240, line: 117, baseType: !44, size: 32, offset: 640)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2916, file: !2866, line: 90, baseType: !2864, size: 64, offset: 2944)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2645, file: !136, line: 515, baseType: !2949, size: 64, offset: 8064)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2951, line: 117, size: 128, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2952 = !{!2953, !2954, !2955}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2950, file: !2951, line: 118, baseType: !1024, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2950, file: !2951, line: 119, baseType: !1024, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2950, file: !2951, line: 120, baseType: !271, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2645, file: !136, line: 516, baseType: !6, size: 32, offset: 8128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2645, file: !136, line: 519, baseType: !6, size: 32, offset: 8160)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2645, file: !136, line: 520, baseType: !2959, size: 64, offset: 8192)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2645, file: !136, line: 523, baseType: !2961, size: 64, offset: 8256)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !136, line: 523, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2645, file: !136, line: 524, baseType: !6, size: 32, offset: 8320)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2645, file: !136, line: 525, baseType: !2966, size: 64, offset: 8384)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !136, line: 525, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2645, file: !136, line: 526, baseType: !6, size: 32, offset: 8448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2645, file: !136, line: 533, baseType: !42, size: 64, offset: 8512)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2645, file: !136, line: 534, baseType: !6, size: 32, offset: 8576)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2645, file: !136, line: 535, baseType: !262, size: 64, offset: 8640)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2645, file: !136, line: 536, baseType: !6, size: 32, offset: 8704)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2645, file: !136, line: 539, baseType: !44, size: 32, offset: 8736)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2645, file: !136, line: 540, baseType: !2976, size: 64, offset: 8768)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2978, line: 32, size: 64, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2979 = !{!2980, !2981}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2977, file: !2978, line: 33, baseType: !1024, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2977, file: !2978, line: 34, baseType: !1024, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2645, file: !136, line: 563, baseType: !119, size: 128, offset: 8832)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2645, file: !136, line: 565, baseType: !119, size: 128, offset: 8960)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2645, file: !136, line: 568, baseType: !1826, size: 64, offset: 9088)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2645, file: !136, line: 570, baseType: !71, size: 32, offset: 9152)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2621, file: !143, line: 2382, baseType: !2620, size: 64, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !2621, file: !143, line: 2383, baseType: !592, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !2621, file: !143, line: 2385, baseType: !2989, offset: 576)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2913, line: 206, elements: !944)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !2621, file: !143, line: 2386, baseType: !2989, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !2621, file: !143, line: 2387, baseType: !2989, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !2621, file: !143, line: 2388, baseType: !2993, offset: 576)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2989, elements: !348)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !2621, file: !143, line: 2390, baseType: !2989, offset: 576)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !2621, file: !143, line: 2391, baseType: !2989, offset: 576)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !2621, file: !143, line: 2392, baseType: !2989, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !2621, file: !143, line: 2393, baseType: !2989, offset: 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !2610, file: !143, line: 1197, baseType: !2999, size: 64, offset: 384)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3001)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !143, line: 2057, size: 1664, elements: !3002)
!3002 = !{!3003, !3007, !3011, !3012, !3016, !3022, !3026, !3027, !3028, !3032, !3036, !3040, !3041, !3042, !3048, !3052, !3053, !3057, !3058, !3059, !3060, !3064, !3068, !3115, !3130, !3131}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3001, file: !143, line: 2058, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!2487, !2609}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3001, file: !143, line: 2059, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2487}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3001, file: !143, line: 2060, baseType: !3008, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3001, file: !143, line: 2062, baseType: !3013, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2487, !44}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3001, file: !143, line: 2063, baseType: !3017, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!44, !2487, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !143, line: 309, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3001, file: !143, line: 2064, baseType: !3023, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!44, !2487}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3001, file: !143, line: 2065, baseType: !3008, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3001, file: !143, line: 2066, baseType: !2640, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3001, file: !143, line: 2067, baseType: !3029, size: 64, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!44, !2609, !44}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3001, file: !143, line: 2068, baseType: !3033, size: 64, offset: 576)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!44, !2609, !142}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3001, file: !143, line: 2069, baseType: !3037, size: 64, offset: 640)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!44, !2609}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3001, file: !143, line: 2070, baseType: !3033, size: 64, offset: 704)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3001, file: !143, line: 2071, baseType: !3037, size: 64, offset: 768)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3001, file: !143, line: 2072, baseType: !3043, size: 64, offset: 832)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!44, !2509, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !143, line: 62, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3001, file: !143, line: 2073, baseType: !3049, size: 64, offset: 896)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!44, !2609, !1453, !347}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3001, file: !143, line: 2074, baseType: !2640, size: 64, offset: 960)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3001, file: !143, line: 2076, baseType: !3054, size: 64, offset: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!44, !1775, !2509}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3001, file: !143, line: 2077, baseType: !3054, size: 64, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3001, file: !143, line: 2078, baseType: !3054, size: 64, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3001, file: !143, line: 2079, baseType: !3054, size: 64, offset: 1216)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3001, file: !143, line: 2081, baseType: !3061, size: 64, offset: 1280)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!378, !2609, !44, !347, !57, !63}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3001, file: !143, line: 2082, baseType: !3065, size: 64, offset: 1344)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!378, !2609, !44, !38, !57, !63}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3001, file: !143, line: 2083, baseType: !3069, size: 64, offset: 1408)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!3072, !2487}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !148, line: 296, size: 1664, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3100, !3101, !3102}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3074, file: !148, line: 297, baseType: !596, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3074, file: !148, line: 298, baseType: !119, size: 128, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3074, file: !148, line: 299, baseType: !119, size: 128, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3074, file: !148, line: 300, baseType: !119, size: 128, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3074, file: !148, line: 301, baseType: !540, size: 256, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3074, file: !148, line: 302, baseType: !81, size: 32, offset: 768)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3074, file: !148, line: 303, baseType: !71, size: 32, offset: 800)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3074, file: !148, line: 304, baseType: !2609, size: 64, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3074, file: !148, line: 305, baseType: !3085, size: 64, offset: 896)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !148, line: 68, size: 64, elements: !3086)
!3086 = !{!3087, !3099}
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !148, line: 69, baseType: !3088, size: 32)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !148, line: 69, size: 32, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3088, file: !148, line: 70, baseType: !438, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3088, file: !148, line: 71, baseType: !446, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3088, file: !148, line: 72, baseType: !3093, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3094, line: 24, baseType: !3095)
!3094 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3094, line: 22, size: 32, elements: !3096)
!3096 = !{!3097}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3095, file: !3094, line: 23, baseType: !3098, size: 32)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3094, line: 20, baseType: !444)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3085, file: !148, line: 74, baseType: !147, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3074, file: !148, line: 306, baseType: !63, size: 64, offset: 960)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3074, file: !148, line: 307, baseType: !61, size: 64, offset: 1024)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3074, file: !148, line: 308, baseType: !3103, size: 576, offset: 1088)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !148, line: 205, size: 576, elements: !3104)
!3104 = !{!3105, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3103, file: !148, line: 206, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !148, line: 66, baseType: !65)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3103, file: !148, line: 207, baseType: !3106, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3103, file: !148, line: 208, baseType: !3106, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3103, file: !148, line: 209, baseType: !3106, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3103, file: !148, line: 210, baseType: !3106, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3103, file: !148, line: 211, baseType: !3106, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3103, file: !148, line: 212, baseType: !3106, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3103, file: !148, line: 213, baseType: !1150, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3103, file: !148, line: 214, baseType: !1150, size: 64, offset: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3001, file: !143, line: 2085, baseType: !3116, size: 64, offset: 1472)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!271, !2609, !3119}
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3121, line: 15, size: 256, elements: !3122)
!3121 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3122 = !{!3123, !3124, !3125, !3126, !3127}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3120, file: !3121, line: 16, baseType: !624, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3120, file: !3121, line: 19, baseType: !44, size: 32, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3120, file: !3121, line: 26, baseType: !61, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3120, file: !3121, line: 33, baseType: !61, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3120, file: !3121, line: 36, baseType: !3128, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !154, line: 33, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3001, file: !143, line: 2087, baseType: !3116, size: 64, offset: 1536)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3001, file: !143, line: 2089, baseType: !2640, size: 64, offset: 1600)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !2610, file: !143, line: 1198, baseType: !3133, size: 64, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !148, line: 324, size: 704, elements: !3136)
!3136 = !{!3137, !3141, !3145, !3149, !3150, !3151, !3152, !3153, !3158, !3163, !3167}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3135, file: !148, line: 325, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!44, !3073}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3135, file: !148, line: 326, baseType: !3142, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!3073, !2609, !44}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3135, file: !148, line: 327, baseType: !3146, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3073}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3135, file: !148, line: 328, baseType: !3138, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3135, file: !148, line: 329, baseType: !3138, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3135, file: !148, line: 330, baseType: !3138, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3135, file: !148, line: 331, baseType: !3029, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3135, file: !148, line: 334, baseType: !3154, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!3157, !2487}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3135, file: !148, line: 335, baseType: !3159, size: 64, offset: 512)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!44, !2487, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3135, file: !148, line: 337, baseType: !3164, size: 64, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!44, !2487, !3157}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3135, file: !148, line: 339, baseType: !3168, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!44, !2609, !3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !2610, file: !143, line: 1199, baseType: !3173, size: 64, offset: 512)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !148, line: 430, size: 704, elements: !3176)
!3176 = !{!3177, !3188, !3189, !3193, !3194, !3195, !3210, !3233, !3237, !3238, !3261}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3175, file: !148, line: 431, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!44, !2609, !44, !44, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3184, line: 8, size: 128, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3185 = !{!3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3183, file: !3184, line: 9, baseType: !2603, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3183, file: !3184, line: 10, baseType: !2509, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3175, file: !148, line: 432, baseType: !3029, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3175, file: !148, line: 433, baseType: !3190, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!44, !2609, !6}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3175, file: !148, line: 434, baseType: !3190, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3175, file: !148, line: 435, baseType: !3029, size: 64, offset: 256)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3175, file: !148, line: 436, baseType: !3196, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!44, !2609, !44, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !148, line: 417, size: 256, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3200, file: !148, line: 418, baseType: !44, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3200, file: !148, line: 419, baseType: !6, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3200, file: !148, line: 420, baseType: !6, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3200, file: !148, line: 422, baseType: !6, size: 32, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3200, file: !148, line: 423, baseType: !6, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3200, file: !148, line: 424, baseType: !6, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3200, file: !148, line: 425, baseType: !6, size: 32, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3200, file: !148, line: 426, baseType: !6, size: 32, offset: 224)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3175, file: !148, line: 437, baseType: !3211, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!44, !2609, !3085, !3214}
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !148, line: 345, size: 960, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3215, file: !148, line: 346, baseType: !44, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3215, file: !148, line: 347, baseType: !275, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3215, file: !148, line: 348, baseType: !275, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3215, file: !148, line: 349, baseType: !275, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3215, file: !148, line: 350, baseType: !275, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3215, file: !148, line: 351, baseType: !275, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3215, file: !148, line: 352, baseType: !275, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3215, file: !148, line: 353, baseType: !265, size: 64, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3215, file: !148, line: 355, baseType: !265, size: 64, offset: 512)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3215, file: !148, line: 356, baseType: !44, size: 32, offset: 576)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3215, file: !148, line: 357, baseType: !44, size: 32, offset: 608)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3215, file: !148, line: 358, baseType: !275, size: 64, offset: 640)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3215, file: !148, line: 359, baseType: !275, size: 64, offset: 704)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3215, file: !148, line: 360, baseType: !275, size: 64, offset: 768)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3215, file: !148, line: 361, baseType: !265, size: 64, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3215, file: !148, line: 362, baseType: !44, size: 32, offset: 896)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3175, file: !148, line: 438, baseType: !3234, size: 64, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!44, !2609, !3171, !3214}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3175, file: !148, line: 440, baseType: !3211, size: 64, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3175, file: !148, line: 441, baseType: !3239, size: 64, offset: 576)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!44, !2609, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !148, line: 411, size: 1408, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3243, file: !148, line: 412, baseType: !6, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3243, file: !148, line: 413, baseType: !3247, size: 1344, offset: 64)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3248, size: 1344, elements: !348)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !148, line: 397, size: 448, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3260}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3248, file: !148, line: 398, baseType: !6, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3248, file: !148, line: 399, baseType: !6, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3248, file: !148, line: 401, baseType: !6, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3248, file: !148, line: 402, baseType: !6, size: 32, offset: 96)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3248, file: !148, line: 403, baseType: !6, size: 32, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3248, file: !148, line: 404, baseType: !6, size: 32, offset: 160)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3248, file: !148, line: 405, baseType: !6, size: 32, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3248, file: !148, line: 406, baseType: !277, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3248, file: !148, line: 407, baseType: !3259, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !47, line: 132, baseType: !275)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3248, file: !148, line: 408, baseType: !3259, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3175, file: !148, line: 442, baseType: !3190, size: 64, offset: 640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !2610, file: !143, line: 1200, baseType: !3263, size: 64, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !143, line: 54, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !2610, file: !143, line: 1201, baseType: !61, size: 64, offset: 640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !2610, file: !143, line: 1202, baseType: !61, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !2610, file: !143, line: 1203, baseType: !61, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !2610, file: !143, line: 1204, baseType: !2509, size: 64, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !2610, file: !143, line: 1205, baseType: !978, size: 320, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !2610, file: !143, line: 1206, baseType: !44, size: 32, offset: 1216)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !2610, file: !143, line: 1207, baseType: !71, size: 32, offset: 1248)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !2610, file: !143, line: 1209, baseType: !42, size: 64, offset: 1280)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !2610, file: !143, line: 1211, baseType: !3275, size: 64, offset: 1344)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3278)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !143, line: 1211, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !2610, file: !143, line: 1223, baseType: !3280, size: 64, offset: 1408)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !2517, line: 34, size: 64, elements: !3281)
!3281 = !{!3282}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3280, file: !2517, line: 35, baseType: !2520, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !2610, file: !143, line: 1224, baseType: !119, size: 128, offset: 1472)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !2610, file: !143, line: 1225, baseType: !3285, size: 64, offset: 1600)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !143, line: 1225, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !2610, file: !143, line: 1226, baseType: !3288, size: 64, offset: 1664)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !143, line: 1226, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !2610, file: !143, line: 1227, baseType: !3291, size: 64, offset: 1728)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !143, line: 50, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !2610, file: !143, line: 1228, baseType: !3294, size: 64, offset: 1792)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !143, line: 1228, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !2610, file: !143, line: 1229, baseType: !596, size: 128, offset: 1856)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !2610, file: !143, line: 1230, baseType: !6, size: 32, offset: 1984)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !2610, file: !143, line: 1231, baseType: !3299, size: 2496, offset: 2048)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !148, line: 521, size: 2496, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3305, !3337}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3299, file: !148, line: 522, baseType: !6, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3299, file: !148, line: 523, baseType: !978, size: 320, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3299, file: !148, line: 524, baseType: !3304, size: 192, offset: 384)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2487, size: 192, elements: !348)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3299, file: !148, line: 525, baseType: !3306, size: 1728, offset: 576)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 1728, elements: !348)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !148, line: 222, size: 576, elements: !3308)
!3308 = !{!3309, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3307, file: !148, line: 223, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !148, line: 445, size: 256, elements: !3312)
!3312 = !{!3313, !3314, !3327, !3328}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3311, file: !148, line: 446, baseType: !44, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3311, file: !148, line: 447, baseType: !3315, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3317)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !148, line: 312, size: 512, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3317, file: !148, line: 313, baseType: !3029, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3317, file: !148, line: 314, baseType: !3029, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3317, file: !148, line: 315, baseType: !3029, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3317, file: !148, line: 316, baseType: !3029, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3317, file: !148, line: 317, baseType: !3138, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3317, file: !148, line: 318, baseType: !3138, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3317, file: !148, line: 319, baseType: !3138, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3317, file: !148, line: 320, baseType: !3168, size: 64, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3311, file: !148, line: 448, baseType: !2644, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3311, file: !148, line: 449, baseType: !3310, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3307, file: !148, line: 224, baseType: !44, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3307, file: !148, line: 226, baseType: !119, size: 128, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3307, file: !148, line: 227, baseType: !61, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3307, file: !148, line: 228, baseType: !6, size: 32, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3307, file: !148, line: 229, baseType: !6, size: 32, offset: 352)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3307, file: !148, line: 230, baseType: !3106, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3307, file: !148, line: 231, baseType: !3106, size: 64, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3307, file: !148, line: 232, baseType: !42, size: 64, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3299, file: !148, line: 526, baseType: !3338, size: 192, offset: 2304)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3315, size: 192, elements: !348)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !2610, file: !143, line: 1233, baseType: !3340, size: 2368, offset: 4544)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !143, line: 1184, size: 2368, elements: !3341)
!3341 = !{!3342, !3343, !3344}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3340, file: !143, line: 1185, baseType: !48, size: 16)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3340, file: !143, line: 1186, baseType: !48, size: 16, offset: 16)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3340, file: !143, line: 1187, baseType: !3345, size: 2304, offset: 64)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3346, size: 2304, elements: !348)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3347, line: 12, size: 768, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3348 = !{!3349, !3357, !3358, !3363, !3364}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3346, file: !3347, line: 13, baseType: !3350, size: 384)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3351, line: 17, size: 384, elements: !3352)
!3351 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3350, file: !3351, line: 18, baseType: !44, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3350, file: !3351, line: 19, baseType: !44, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3350, file: !3351, line: 20, baseType: !76, size: 192, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3350, file: !3351, line: 22, baseType: !520, size: 128, align: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3346, file: !3347, line: 14, baseType: !2751, size: 64, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3346, file: !3347, line: 15, baseType: !3359, size: 64, offset: 448)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3360, line: 16, size: 64, elements: !3361)
!3360 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3359, file: !3360, line: 17, baseType: !631, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3346, file: !3347, line: 16, baseType: !76, size: 192, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3346, file: !3347, line: 17, baseType: !71, size: 32, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !2610, file: !143, line: 1240, baseType: !42, size: 64, offset: 6912)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !2610, file: !143, line: 1243, baseType: !642, size: 32, offset: 6976)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !2610, file: !143, line: 1245, baseType: !1150, size: 64, offset: 7040)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !2610, file: !143, line: 1246, baseType: !1150, size: 64, offset: 7104)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !2610, file: !143, line: 1248, baseType: !643, size: 32, offset: 7168)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !2610, file: !143, line: 1249, baseType: !3371, size: 64, offset: 7232)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !143, line: 634, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !2610, file: !143, line: 1252, baseType: !2114, size: 256, offset: 7296)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !2610, file: !143, line: 1253, baseType: !3375, size: 128, offset: 7552)
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3376, line: 21, baseType: !3377)
!3376 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3376, line: 19, size: 128, elements: !3378)
!3378 = !{!3379}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3377, file: !3376, line: 20, baseType: !3380, size: 128)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !1564)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !2610, file: !143, line: 1255, baseType: !6, size: 32, offset: 7680)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !2610, file: !143, line: 1261, baseType: !540, size: 256, offset: 7744)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !2610, file: !143, line: 1267, baseType: !38, size: 64, offset: 8000)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !2610, file: !143, line: 1269, baseType: !2556, size: 64, offset: 8064)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !2610, file: !143, line: 1271, baseType: !3386, size: 448, offset: 8128)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3121, line: 63, size: 448, elements: !3387)
!3387 = !{!3388, !3393, !3394, !3395, !3396, !3397, !3398}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3386, file: !3121, line: 64, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!61, !3392, !3119}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3386, file: !3121, line: 66, baseType: !3389, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3386, file: !3121, line: 69, baseType: !271, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3386, file: !3121, line: 70, baseType: !44, size: 32, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3386, file: !3121, line: 71, baseType: !6, size: 32, offset: 224)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3386, file: !3121, line: 74, baseType: !119, size: 128, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3386, file: !3121, line: 85, baseType: !3399, size: 64, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !2610, file: !143, line: 1274, baseType: !533, size: 64, offset: 8576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !2610, file: !143, line: 1280, baseType: !533, size: 64, offset: 8640)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !2610, file: !143, line: 1283, baseType: !44, size: 32, offset: 8704)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !2610, file: !143, line: 1286, baseType: !3404, size: 32, offset: 8736)
!3404 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3405, line: 8, baseType: !642)
!3405 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !2610, file: !143, line: 1289, baseType: !1940, size: 64, offset: 8768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !2610, file: !143, line: 1290, baseType: !592, size: 64, offset: 8832)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !2610, file: !143, line: 1297, baseType: !1081, size: 64, offset: 8896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !2610, file: !143, line: 1304, baseType: !3410, size: 64, offset: 8960)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3411, line: 49, size: 64, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3410, file: !3411, line: 50, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3411, line: 41, size: 512, align: 512, elements: !3416)
!3416 = !{!3417, !3418, !3423}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3415, file: !3411, line: 43, baseType: !81, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3415, file: !3411, line: 45, baseType: !3419, size: 192, offset: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3411, line: 29, size: 192, elements: !3420)
!3420 = !{!3421, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3419, file: !3411, line: 30, baseType: !119, size: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3419, file: !3411, line: 32, baseType: !271, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3415, file: !3411, line: 46, baseType: !271, size: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !2610, file: !143, line: 1305, baseType: !3410, size: 64, offset: 9024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2610, file: !143, line: 1306, baseType: !520, size: 128, align: 64, offset: 9088)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2610, file: !143, line: 1307, baseType: !1239, size: 256, offset: 9216)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !2610, file: !143, line: 1309, baseType: !540, size: 256, offset: 9472)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !2610, file: !143, line: 1314, baseType: !44, size: 32, offset: 9728)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !2610, file: !143, line: 1317, baseType: !81, size: 32, align: 512, offset: 10240)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !2610, file: !143, line: 1318, baseType: !119, size: 128, offset: 10304)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !2610, file: !143, line: 1320, baseType: !81, size: 32, offset: 10432)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !2610, file: !143, line: 1321, baseType: !119, size: 128, offset: 10496)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !2604, file: !2605, line: 73, baseType: !44, size: 32, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !2604, file: !2605, line: 74, baseType: !3435, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1507, line: 42, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2558, file: !2511, line: 141, baseType: !3439, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!44, !3181, !407}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2558, file: !2511, line: 142, baseType: !3443, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!2509, !2509, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2488)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !2510, file: !2511, line: 96, baseType: !2609, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !2510, file: !2511, line: 97, baseType: !61, size: 64, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !2510, file: !2511, line: 98, baseType: !42, size: 64, offset: 960)
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !2511, line: 100, baseType: !3452, size: 128, offset: 1024)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !2511, line: 100, size: 128, elements: !3453)
!3453 = !{!3454, !3455}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3452, file: !2511, line: 101, baseType: !119, size: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3452, file: !2511, line: 102, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !2510, file: !2511, line: 104, baseType: !119, size: 128, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !2510, file: !2511, line: 105, baseType: !119, size: 128, offset: 1280)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !2510, file: !2511, line: 113, baseType: !3460, size: 128, offset: 1408)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !2511, line: 109, size: 128, elements: !3461)
!3461 = !{!3462, !3463, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3460, file: !2511, line: 110, baseType: !596, size: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3460, file: !2511, line: 111, baseType: !2516, size: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3460, file: !2511, line: 112, baseType: !520, size: 128, align: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !2503, file: !143, line: 1968, baseType: !3466, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!38, !2509, !2487, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3471, line: 10, size: 128, elements: !3472)
!3471 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3470, file: !3471, line: 11, baseType: !426, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3470, file: !3471, line: 12, baseType: !42, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !2503, file: !143, line: 1969, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!44, !3435, !2487, !44}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !2503, file: !143, line: 1970, baseType: !3480, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!2497, !2487, !44, !407}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !2503, file: !143, line: 1972, baseType: !3484, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!44, !2509, !347, !44}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !2503, file: !143, line: 1974, baseType: !3488, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!44, !3435, !2487, !2509, !46, !407}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2503, file: !143, line: 1976, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!44, !2509, !2487, !2509}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !2503, file: !143, line: 1977, baseType: !3496, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!44, !2487, !2509}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2503, file: !143, line: 1978, baseType: !3500, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!44, !3435, !2487, !2509, !38}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2503, file: !143, line: 1980, baseType: !3504, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!44, !3435, !2487, !2509, !46}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2503, file: !143, line: 1982, baseType: !3496, size: 64, offset: 640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !2503, file: !143, line: 1983, baseType: !3509, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!44, !3435, !2487, !2509, !46, !2614}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2503, file: !143, line: 1985, baseType: !3513, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!44, !3435, !2487, !2509, !2487, !2509, !6}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !2503, file: !143, line: 1987, baseType: !3517, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!44, !3435, !2509, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !143, line: 226, size: 640, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3535, !3544, !3545, !3550, !3551, !3552}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3521, file: !143, line: 227, baseType: !6, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3521, file: !143, line: 228, baseType: !46, size: 16, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !143, line: 241, baseType: !3526, size: 32, offset: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !143, line: 241, size: 32, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3526, file: !143, line: 242, baseType: !438, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3526, file: !143, line: 243, baseType: !3530, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3531, line: 16, baseType: !3532)
!3531 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3531, line: 14, size: 32, elements: !3533)
!3533 = !{!3534}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3532, file: !3531, line: 15, baseType: !443, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !143, line: 245, baseType: !3536, size: 32, offset: 96)
!3536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !143, line: 245, size: 32, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3536, file: !143, line: 246, baseType: !446, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3536, file: !143, line: 247, baseType: !3540, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3531, line: 20, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3531, line: 18, size: 32, elements: !3542)
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3541, file: !3531, line: 19, baseType: !450, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3521, file: !143, line: 249, baseType: !63, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3521, file: !143, line: 250, baseType: !3546, size: 128, offset: 192)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1151, line: 13, size: 128, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3546, file: !1151, line: 14, baseType: !1150, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3546, file: !1151, line: 15, baseType: !271, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3521, file: !143, line: 251, baseType: !3546, size: 128, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3521, file: !143, line: 252, baseType: !3546, size: 128, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3521, file: !143, line: 259, baseType: !507, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !2503, file: !143, line: 1988, baseType: !3554, size: 64, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!44, !3435, !3181, !3557, !642, !6}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3559, line: 22, size: 1280, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3558, file: !3559, line: 23, baseType: !642, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3558, file: !3559, line: 24, baseType: !46, size: 16, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3558, file: !3559, line: 25, baseType: !6, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3558, file: !3559, line: 26, baseType: !1158, size: 32, offset: 96)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3558, file: !3559, line: 27, baseType: !275, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3558, file: !3559, line: 28, baseType: !275, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3558, file: !3559, line: 41, baseType: !275, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3558, file: !3559, line: 42, baseType: !2614, size: 32, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3558, file: !3559, line: 43, baseType: !2614, size: 32, offset: 352)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3558, file: !3559, line: 44, baseType: !438, size: 32, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3558, file: !3559, line: 45, baseType: !446, size: 32, offset: 416)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3558, file: !3559, line: 46, baseType: !63, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3558, file: !3559, line: 47, baseType: !3546, size: 128, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3558, file: !3559, line: 48, baseType: !3546, size: 128, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3558, file: !3559, line: 49, baseType: !3546, size: 128, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3558, file: !3559, line: 50, baseType: !3546, size: 128, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3558, file: !3559, line: 51, baseType: !275, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3558, file: !3559, line: 52, baseType: !275, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3558, file: !3559, line: 53, baseType: !642, size: 32, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3558, file: !3559, line: 54, baseType: !642, size: 32, offset: 1184)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3558, file: !3559, line: 55, baseType: !275, size: 64, offset: 1216)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !2503, file: !143, line: 1990, baseType: !3583, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!378, !2509, !347, !57}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !2503, file: !143, line: 1991, baseType: !3587, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!44, !2487, !3590, !275, !275}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !143, line: 55, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !2503, file: !143, line: 1993, baseType: !3593, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!44, !2487, !44}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !2503, file: !143, line: 1994, baseType: !3597, size: 64, offset: 1152)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!44, !2487, !2509, !507, !6, !46}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !2503, file: !143, line: 1997, baseType: !3601, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!44, !3435, !2487, !507, !46}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !2503, file: !143, line: 1999, baseType: !3605, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!2497, !3435, !2509, !44}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !2503, file: !143, line: 2001, baseType: !3609, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!44, !3435, !2509, !2497, !44}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !2503, file: !143, line: 2003, baseType: !3613, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!44, !3435, !2509, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !143, line: 76, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !2503, file: !143, line: 2005, baseType: !3619, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!44, !2509, !3616}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !2503, file: !143, line: 2006, baseType: !3623, size: 64, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!3626, !2487}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !143, line: 3192, size: 192, elements: !3628)
!3628 = !{!3629, !3630}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3627, file: !143, line: 3193, baseType: !619, size: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3627, file: !143, line: 3194, baseType: !642, size: 32, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !2488, file: !143, line: 655, baseType: !2609, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !2488, file: !143, line: 656, baseType: !2483, size: 64, offset: 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !2488, file: !143, line: 659, baseType: !42, size: 64, offset: 576)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !2488, file: !143, line: 663, baseType: !61, size: 64, offset: 640)
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !143, line: 671, baseType: !3636, size: 32, offset: 704)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !143, line: 671, size: 32, elements: !3637)
!3637 = !{!3638, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3636, file: !143, line: 672, baseType: !3639, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3636, file: !143, line: 673, baseType: !6, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !2488, file: !143, line: 675, baseType: !2614, size: 32, offset: 736)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !2488, file: !143, line: 676, baseType: !63, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !2488, file: !143, line: 677, baseType: !3546, size: 128, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !2488, file: !143, line: 678, baseType: !3546, size: 128, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !2488, file: !143, line: 679, baseType: !3546, size: 128, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !2488, file: !143, line: 680, baseType: !81, size: 32, offset: 1216)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !2488, file: !143, line: 681, baseType: !48, size: 16, offset: 1248)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !2488, file: !143, line: 682, baseType: !105, size: 8, offset: 1264)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !2488, file: !143, line: 683, baseType: !105, size: 8, offset: 1272)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !2488, file: !143, line: 684, baseType: !3259, size: 64, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !2488, file: !143, line: 691, baseType: !61, size: 64, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !2488, file: !143, line: 692, baseType: !978, size: 320, offset: 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !2488, file: !143, line: 694, baseType: !61, size: 64, offset: 1728)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !2488, file: !143, line: 695, baseType: !61, size: 64, offset: 1792)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !2488, file: !143, line: 697, baseType: !596, size: 128, offset: 1856)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !2488, file: !143, line: 698, baseType: !119, size: 128, offset: 1984)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !2488, file: !143, line: 707, baseType: !119, size: 128, offset: 2112)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !2488, file: !143, line: 708, baseType: !119, size: 128, offset: 2240)
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !143, line: 709, baseType: !3660, size: 128, offset: 2368)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !143, line: 709, size: 128, elements: !3661)
!3661 = !{!3662, !3663}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3660, file: !143, line: 710, baseType: !592, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3660, file: !143, line: 711, baseType: !520, size: 128, align: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !2488, file: !143, line: 713, baseType: !535, size: 64, offset: 2496)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !2488, file: !143, line: 714, baseType: !535, size: 64, offset: 2560)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !2488, file: !143, line: 715, baseType: !71, size: 32, offset: 2624)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !2488, file: !143, line: 716, baseType: !71, size: 32, offset: 2656)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !2488, file: !143, line: 717, baseType: !71, size: 32, offset: 2688)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !2488, file: !143, line: 719, baseType: !71, size: 32, offset: 2720)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !143, line: 721, baseType: !3671, size: 64, offset: 2752)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !143, line: 721, size: 64, elements: !3672)
!3672 = !{!3673, !3983}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3671, file: !143, line: 722, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3676)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !143, line: 1914, size: 2112, elements: !3677)
!3677 = !{!3678, !3679, !3683, !3687, !3691, !3719, !3720, !3726, !3739, !3743, !3747, !3748, !3907, !3908, !3912, !3917, !3918, !3922, !3926, !3932, !3933, !3937, !3938, !3942, !3946, !3950, !3956, !3960, !3964, !3968, !3972, !3973, !3979}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3676, file: !143, line: 1915, baseType: !2644, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3676, file: !143, line: 1916, baseType: !3680, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!63, !507, !63, !44}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3676, file: !143, line: 1917, baseType: !3684, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!378, !507, !347, !57, !62}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3676, file: !143, line: 1918, baseType: !3688, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!378, !507, !38, !57, !62}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3676, file: !143, line: 1919, baseType: !3692, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!378, !3695, !3717}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !143, line: 373, size: 384, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3704, !3705, !3706, !3707}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3696, file: !143, line: 374, baseType: !507, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3696, file: !143, line: 375, baseType: !63, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3696, file: !143, line: 376, baseType: !3701, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3695, !271}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3696, file: !143, line: 377, baseType: !42, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3696, file: !143, line: 378, baseType: !44, size: 32, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3696, file: !143, line: 379, baseType: !115, size: 16, offset: 288)
!3707 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !143, line: 380, baseType: !3708, size: 64, offset: 320)
!3708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3696, file: !143, line: 380, size: 64, elements: !3709)
!3709 = !{!3710, !3713}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3708, file: !143, line: 386, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !143, line: 386, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3708, file: !143, line: 395, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!378, !42}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !143, line: 69, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3676, file: !143, line: 1920, baseType: !3692, size: 64, offset: 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3676, file: !143, line: 1921, baseType: !3721, size: 64, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!44, !3695, !3724, !6}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !143, line: 53, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3676, file: !143, line: 1923, baseType: !3727, size: 64, offset: 448)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!44, !507, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !143, line: 1858, size: 128, elements: !3732)
!3732 = !{!3733, !3738}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3731, file: !143, line: 1859, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !143, line: 1855, baseType: !3735)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!407, !3730, !38, !44, !63, !275, !6}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3731, file: !143, line: 1860, baseType: !63, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3676, file: !143, line: 1924, baseType: !3740, size: 64, offset: 512)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!1899, !507, !1901}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3676, file: !143, line: 1925, baseType: !3744, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!271, !507, !6, !61}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3676, file: !143, line: 1926, baseType: !3744, size: 64, offset: 640)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3676, file: !143, line: 1927, baseType: !3749, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!44, !507, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !154, line: 625, size: 1344, elements: !3754)
!3754 = !{!3755, !3764, !3765, !3771, !3778, !3779, !3784, !3785, !3790, !3791, !3794, !3900, !3901, !3902, !3903, !3904, !3905}
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3753, file: !154, line: 628, baseType: !3756, size: 128)
!3756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3753, file: !154, line: 628, size: 128, elements: !3757)
!3757 = !{!3758, !3763}
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3756, file: !154, line: 629, baseType: !3759, size: 128)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3756, file: !154, line: 629, size: 128, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3759, file: !154, line: 631, baseType: !61, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3759, file: !154, line: 632, baseType: !61, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3756, file: !154, line: 635, baseType: !520, size: 128, align: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3753, file: !154, line: 639, baseType: !923, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3753, file: !154, line: 640, baseType: !3766, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !959, line: 297, baseType: !3767)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !959, line: 297, size: 64, elements: !3768)
!3768 = !{!3769}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3767, file: !959, line: 297, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !964, line: 19, baseType: !61)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !3753, file: !154, line: 646, baseType: !3772, size: 64, offset: 256)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3753, file: !154, line: 646, size: 64, elements: !3773)
!3773 = !{!3774, !3777}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3772, file: !154, line: 647, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3776)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !154, line: 542, baseType: !61)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3772, file: !154, line: 648, baseType: !3776, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3753, file: !154, line: 666, baseType: !44, size: 32, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3753, file: !154, line: 667, baseType: !3780, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !154, line: 579, size: 320, elements: !3782)
!3782 = !{!3783}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3781, file: !154, line: 580, baseType: !978, size: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3753, file: !154, line: 670, baseType: !407, size: 8, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3753, file: !154, line: 681, baseType: !3786, size: 256, offset: 512)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3753, file: !154, line: 678, size: 256, elements: !3787)
!3787 = !{!3788, !3789}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3786, file: !154, line: 679, baseType: !462, size: 192, align: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3786, file: !154, line: 680, baseType: !61, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3753, file: !154, line: 689, baseType: !119, size: 128, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3753, file: !154, line: 691, baseType: !3792, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !154, line: 691, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3753, file: !154, line: 694, baseType: !3795, size: 64, offset: 960)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3798, line: 563, size: 1024, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3799 = !{!3800, !3804, !3805, !3809, !3813, !3817, !3866, !3870, !3874, !3878, !3879, !3880, !3884, !3888, !3892, !3896}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3797, file: !3798, line: 564, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3752}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3797, file: !3798, line: 569, baseType: !3801, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3797, file: !3798, line: 571, baseType: !3806, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!44, !3752, !61}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3797, file: !3798, line: 572, baseType: !3810, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!44, !3752}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3797, file: !3798, line: 578, baseType: !3814, size: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!44, !3752, !61, !61, !61}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3797, file: !3798, line: 580, baseType: !3818, size: 64, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !154, line: 1184, baseType: !6)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3798, line: 512, size: 896, elements: !3824)
!3824 = !{!3825, !3833, !3834, !3841, !3848, !3858, !3859, !3860, !3862, !3864}
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3823, file: !3798, line: 513, baseType: !3826, size: 320)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3823, file: !3798, line: 513, size: 320, elements: !3827)
!3827 = !{!3828, !3829, !3830, !3831, !3832}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3826, file: !3798, line: 514, baseType: !3752, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3826, file: !3798, line: 515, baseType: !624, size: 32, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3826, file: !3798, line: 516, baseType: !61, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3826, file: !3798, line: 517, baseType: !61, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3826, file: !3798, line: 518, baseType: !61, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3823, file: !3798, line: 520, baseType: !153, size: 32, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3823, file: !3798, line: 522, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !964, line: 22, baseType: !3837)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 22, size: 64, elements: !3838)
!3838 = !{!3839}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3837, file: !964, line: 22, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !964, line: 15, baseType: !61)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3823, file: !3798, line: 524, baseType: !3842, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !959, line: 372, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !959, line: 372, size: 64, elements: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3844, file: !959, line: 372, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !964, line: 16, baseType: !61)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3823, file: !3798, line: 527, baseType: !3849, size: 64, offset: 512)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3823, file: !3798, line: 527, size: 64, elements: !3850)
!3850 = !{!3851, !3857}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3849, file: !3798, line: 528, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !964, line: 21, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 21, size: 64, elements: !3854)
!3854 = !{!3855}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3853, file: !964, line: 21, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !964, line: 14, baseType: !61)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3849, file: !3798, line: 529, baseType: !3836, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3823, file: !3798, line: 534, baseType: !2461, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3823, file: !3798, line: 535, baseType: !2461, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3823, file: !3798, line: 541, baseType: !3861, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3823, file: !3798, line: 545, baseType: !3863, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3823, file: !3798, line: 549, baseType: !3865, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !959, line: 520, baseType: !2461)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3797, file: !3798, line: 581, baseType: !3867, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!3821, !3822, !6}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3797, file: !3798, line: 582, baseType: !3871, size: 64, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!3821, !3822, !61, !61}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3797, file: !3798, line: 584, baseType: !3875, size: 64, offset: 512)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!61, !3752}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3797, file: !3798, line: 588, baseType: !3818, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3797, file: !3798, line: 591, baseType: !3818, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3797, file: !3798, line: 597, baseType: !3881, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!44, !3752, !61, !42, !44, !44}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3798, line: 603, baseType: !3885, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!38, !3752}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3797, file: !3798, line: 613, baseType: !3889, size: 64, offset: 832)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!44, !3752, !2418}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3797, file: !3798, line: 625, baseType: !3893, size: 64, offset: 896)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!2418, !3752, !61}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3797, file: !3798, line: 633, baseType: !3897, size: 64, offset: 960)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!2461, !3752, !61}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3753, file: !154, line: 697, baseType: !61, size: 64, offset: 1024)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3753, file: !154, line: 699, baseType: !507, size: 64, offset: 1088)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3753, file: !154, line: 700, baseType: !42, size: 64, offset: 1152)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3753, file: !154, line: 711, baseType: !533, size: 64, offset: 1216)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3753, file: !154, line: 717, baseType: !2418, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3753, file: !154, line: 722, baseType: !3906, offset: 1344)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !154, line: 570, elements: !944)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3676, file: !143, line: 1928, baseType: !61, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3676, file: !143, line: 1929, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!44, !2487, !507}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3676, file: !143, line: 1930, baseType: !3913, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!44, !507, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !143, line: 1061, baseType: !42)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3676, file: !143, line: 1931, baseType: !3909, size: 64, offset: 960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3676, file: !143, line: 1932, baseType: !3919, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!44, !507, !63, !63, !44}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3676, file: !143, line: 1933, baseType: !3923, size: 64, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!44, !44, !507, !44}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3676, file: !143, line: 1934, baseType: !3927, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!44, !507, !44, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !143, line: 1063, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3676, file: !143, line: 1935, baseType: !948, size: 64, offset: 1216)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3676, file: !143, line: 1936, baseType: !3934, size: 64, offset: 1280)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!44, !44}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3676, file: !143, line: 1937, baseType: !3927, size: 64, offset: 1344)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3676, file: !143, line: 1938, baseType: !3939, size: 64, offset: 1408)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!378, !2455, !507, !62, !57, !6}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3676, file: !143, line: 1939, baseType: !3943, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!378, !507, !62, !2455, !57, !6}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3676, file: !143, line: 1940, baseType: !3947, size: 64, offset: 1536)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !507}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3676, file: !143, line: 1941, baseType: !3951, size: 64, offset: 1600)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!44, !507, !44, !3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3676, file: !143, line: 1942, baseType: !3957, size: 64, offset: 1664)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!271, !507, !44, !63, !63}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3676, file: !143, line: 1944, baseType: !3961, size: 64, offset: 1728)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !1775, !507}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3676, file: !143, line: 1948, baseType: !3965, size: 64, offset: 1792)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!378, !507, !63, !507, !63, !57, !6}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3676, file: !143, line: 1950, baseType: !3969, size: 64, offset: 1856)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!63, !507, !63, !507, !63, !63, !6}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3676, file: !143, line: 1953, baseType: !3919, size: 64, offset: 1920)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3676, file: !143, line: 1954, baseType: !3974, size: 64, offset: 1984)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!44, !3977, !6}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !143, line: 1911, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3676, file: !143, line: 1955, baseType: !3980, size: 64, offset: 2048)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!44, !3977, !3724, !6}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3671, file: !143, line: 723, baseType: !3008, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !2488, file: !143, line: 725, baseType: !3985, size: 64, offset: 2816)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !143, line: 725, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !2488, file: !143, line: 726, baseType: !2484, size: 1536, align: 64, offset: 2880)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !2488, file: !143, line: 727, baseType: !119, size: 128, offset: 4416)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !143, line: 728, baseType: !3990, size: 64, offset: 4544)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !143, line: 728, size: 64, elements: !3991)
!3991 = !{!3992, !3993, !3996, !3997}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3990, file: !143, line: 729, baseType: !2455, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3990, file: !143, line: 730, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !143, line: 730, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3990, file: !143, line: 731, baseType: !347, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3990, file: !143, line: 732, baseType: !6, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !2488, file: !143, line: 735, baseType: !643, size: 32, offset: 4608)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !2488, file: !143, line: 738, baseType: !643, size: 32, offset: 4640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !2488, file: !143, line: 739, baseType: !3371, size: 64, offset: 4672)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !2488, file: !143, line: 750, baseType: !42, size: 64, offset: 4736)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2484, file: !143, line: 474, baseType: !619, size: 128, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2484, file: !143, line: 475, baseType: !978, size: 320, offset: 192)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2484, file: !143, line: 476, baseType: !624, size: 32, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2484, file: !143, line: 477, baseType: !71, size: 32, offset: 544)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2484, file: !143, line: 482, baseType: !809, size: 128, offset: 576)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2484, file: !143, line: 483, baseType: !61, size: 64, offset: 704)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2484, file: !143, line: 484, baseType: !61, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2484, file: !143, line: 485, baseType: !4010, size: 64, offset: 832)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !143, line: 404, size: 1280, elements: !4013)
!4013 = !{!4014, !4018, !4088, !4092, !4096, !4102, !4107, !4111, !4116, !4120, !4124, !4128, !4129, !4133, !4137, !4141, !4146, !4150, !4157, !4158}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4012, file: !143, line: 405, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!44, !2461, !3020}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4012, file: !143, line: 406, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!44, !507, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !154, line: 293, size: 1536, elements: !4024)
!4024 = !{!4025, !4055, !4069}
!4025 = !DIDerivedType(tag: DW_TAG_member, scope: !4023, file: !154, line: 295, baseType: !4026, size: 512)
!4026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4023, file: !154, line: 295, size: 512, elements: !4027)
!4027 = !{!4028, !4054}
!4028 = !DIDerivedType(tag: DW_TAG_member, scope: !4026, file: !154, line: 296, baseType: !4029, size: 448)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4026, file: !154, line: 296, size: 448, elements: !4030)
!4030 = !{!4031, !4032, !4041, !4042, !4043, !4052, !4053}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4029, file: !154, line: 298, baseType: !61, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !154, line: 299, baseType: !4033, size: 128, offset: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4029, file: !154, line: 299, size: 128, elements: !4034)
!4034 = !{!4035, !4036}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4033, file: !154, line: 300, baseType: !119, size: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !154, line: 302, baseType: !4037, size: 128)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4033, file: !154, line: 302, size: 128, elements: !4038)
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4037, file: !154, line: 303, baseType: !42, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4037, file: !154, line: 305, baseType: !6, size: 32, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4029, file: !154, line: 310, baseType: !2483, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4029, file: !154, line: 311, baseType: !61, size: 64, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !154, line: 312, baseType: !4044, size: 64, offset: 320)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4029, file: !154, line: 312, size: 64, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4044, file: !154, line: 313, baseType: !42, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4044, file: !154, line: 314, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !154, line: 257, baseType: !4049)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 255, size: 64, elements: !4050)
!4050 = !{!4051}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4049, file: !154, line: 256, baseType: !61, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4029, file: !154, line: 316, baseType: !71, size: 32, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4029, file: !154, line: 317, baseType: !71, size: 32, offset: 416)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4026, file: !154, line: 323, baseType: !2462, size: 512, align: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4023, file: !154, line: 325, baseType: !4056, size: 512, offset: 512)
!4056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4023, file: !154, line: 325, size: 512, elements: !4057)
!4057 = !{!4058, !4068}
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !154, line: 326, baseType: !4059, size: 320)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4056, file: !154, line: 326, size: 320, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4059, file: !154, line: 327, baseType: !61, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4059, file: !154, line: 328, baseType: !61, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4059, file: !154, line: 329, baseType: !61, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4059, file: !154, line: 331, baseType: !71, size: 32, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4059, file: !154, line: 332, baseType: !71, size: 32, offset: 224)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4059, file: !154, line: 333, baseType: !71, size: 32, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4059, file: !154, line: 335, baseType: !6, size: 32, offset: 288)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4056, file: !154, line: 339, baseType: !2462, size: 512, align: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !4023, file: !154, line: 341, baseType: !4070, size: 512, offset: 1024)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4023, file: !154, line: 341, size: 512, elements: !4071)
!4071 = !{!4072, !4081, !4087}
!4072 = !DIDerivedType(tag: DW_TAG_member, scope: !4070, file: !154, line: 342, baseType: !4073, size: 384)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4070, file: !154, line: 342, size: 384, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4073, file: !154, line: 343, baseType: !61, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4073, file: !154, line: 344, baseType: !61, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4073, file: !154, line: 346, baseType: !42, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4073, file: !154, line: 347, baseType: !42, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4073, file: !154, line: 348, baseType: !42, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4073, file: !154, line: 349, baseType: !42, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4070, file: !154, line: 352, baseType: !4082, size: 256)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4070, file: !154, line: 352, size: 256, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4082, file: !154, line: 353, baseType: !61, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4082, file: !154, line: 354, baseType: !61, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4082, file: !154, line: 356, baseType: !119, size: 128, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4070, file: !154, line: 359, baseType: !2462, size: 512, align: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4012, file: !143, line: 409, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!44, !2483, !3020}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4012, file: !143, line: 412, baseType: !4093, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!407, !2483, !4022}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4012, file: !143, line: 414, baseType: !4097, size: 64, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !143, line: 310, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4012, file: !143, line: 416, baseType: !4103, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!44, !507, !2483, !63, !6, !4106, !3955}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4012, file: !143, line: 419, baseType: !4108, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!44, !507, !2483, !63, !6, !6, !2461, !42}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4012, file: !143, line: 424, baseType: !4112, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!4115, !2483, !4115}
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !47, line: 131, baseType: !275)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4012, file: !143, line: 425, baseType: !4117, size: 64, offset: 512)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{null, !4022, !57, !57}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4012, file: !143, line: 426, baseType: !4121, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!407, !4022, !624}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4012, file: !143, line: 427, baseType: !4125, size: 64, offset: 640)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !4022}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4012, file: !143, line: 428, baseType: !3692, size: 64, offset: 704)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4012, file: !143, line: 433, baseType: !4130, size: 64, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!44, !2483, !4022, !4022, !169}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4012, file: !143, line: 435, baseType: !4134, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!44, !4022}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4012, file: !143, line: 436, baseType: !4138, size: 64, offset: 896)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!407, !4022, !57, !57}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4012, file: !143, line: 438, baseType: !4142, size: 64, offset: 960)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4022, !4145, !4145}
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4012, file: !143, line: 439, baseType: !4147, size: 64, offset: 1024)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!44, !2483, !2461}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4012, file: !143, line: 442, baseType: !4151, size: 64, offset: 1088)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!44, !4154, !507, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !143, line: 66, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4012, file: !143, line: 444, baseType: !3947, size: 64, offset: 1152)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4012, file: !143, line: 445, baseType: !4159, size: 64, offset: 1216)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!44, !3695, !3717}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2484, file: !143, line: 486, baseType: !61, size: 64, offset: 896)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2484, file: !143, line: 487, baseType: !978, size: 320, offset: 960)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2484, file: !143, line: 488, baseType: !3404, size: 32, offset: 1280)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2484, file: !143, line: 489, baseType: !81, size: 32, offset: 1312)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2484, file: !143, line: 490, baseType: !119, size: 128, offset: 1344)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2484, file: !143, line: 491, baseType: !42, size: 64, offset: 1472)
!4168 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !154, line: 107, baseType: !4169, size: 64, offset: 192)
!4169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !154, line: 107, size: 64, elements: !4170)
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4169, file: !154, line: 108, baseType: !61, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4169, file: !154, line: 109, baseType: !61, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2469, file: !154, line: 117, baseType: !61, size: 64, offset: 256)
!4174 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !154, line: 119, baseType: !4175, size: 320)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !154, line: 119, size: 320, elements: !4176)
!4176 = !{!4177, !4178, !4181, !4182, !4183}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4175, file: !154, line: 124, baseType: !61, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4175, file: !154, line: 125, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !154, line: 125, flags: DIFlagFwdDecl)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4175, file: !154, line: 126, baseType: !61, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4175, file: !154, line: 127, baseType: !61, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !154, line: 128, baseType: !4184, size: 64, offset: 256)
!4184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4175, file: !154, line: 128, size: 64, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4184, file: !154, line: 133, baseType: !61, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4184, file: !154, line: 138, baseType: !533, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !154, line: 141, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !154, line: 141, size: 64, elements: !4190)
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4189, file: !154, line: 142, baseType: !61, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !154, line: 144, baseType: !4193, size: 128)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !154, line: 144, size: 128, elements: !4194)
!4194 = !{!4195, !4246}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4193, file: !154, line: 146, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !177, line: 126, size: 1216, elements: !4198)
!4198 = !{!4199, !4209, !4210, !4211, !4212, !4213, !4214, !4228, !4229, !4230}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4197, file: !177, line: 127, baseType: !4200, size: 384)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !177, line: 21, size: 384, elements: !4201)
!4201 = !{!4202, !4203, !4205, !4206, !4207, !4208}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4200, file: !177, line: 22, baseType: !61, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4200, file: !177, line: 23, baseType: !4204, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4200, file: !177, line: 24, baseType: !4204, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4200, file: !177, line: 25, baseType: !61, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4200, file: !177, line: 26, baseType: !61, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4200, file: !177, line: 27, baseType: !61, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4197, file: !177, line: 128, baseType: !1906, size: 128, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4197, file: !177, line: 129, baseType: !1278, size: 256, offset: 512)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4197, file: !177, line: 130, baseType: !176, size: 32, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4197, file: !177, line: 131, baseType: !6, size: 32, offset: 800)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4197, file: !177, line: 132, baseType: !61, size: 64, offset: 832)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4197, file: !177, line: 133, baseType: !4215, size: 64, offset: 896)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4217)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !177, line: 77, size: 192, elements: !4218)
!4218 = !{!4219, !4223, !4224}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4217, file: !177, line: 83, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !2461}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4217, file: !177, line: 89, baseType: !3818, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4217, file: !177, line: 100, baseType: !4225, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!44, !4196, !61, !61, !44}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4197, file: !177, line: 134, baseType: !42, size: 64, offset: 960)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4197, file: !177, line: 135, baseType: !44, size: 32, offset: 1024)
!4230 = !DIDerivedType(tag: DW_TAG_member, scope: !4197, file: !177, line: 136, baseType: !4231, size: 128, offset: 1088)
!4231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4197, file: !177, line: 136, size: 128, elements: !4232)
!4232 = !{!4233, !4239}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4231, file: !177, line: 137, baseType: !4234, size: 128)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4235, line: 6, size: 128, elements: !4236)
!4235 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4236 = !{!4237, !4238}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4234, file: !4235, line: 7, baseType: !275, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4234, file: !4235, line: 8, baseType: !275, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, scope: !4231, file: !177, line: 138, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4231, file: !177, line: 138, elements: !4241)
!4241 = !{!4242, !4244}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4240, file: !177, line: 138, baseType: !4243)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4240, file: !177, line: 138, elements: !944)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4240, file: !177, line: 138, baseType: !4245)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4234, elements: !1353)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4193, file: !154, line: 147, baseType: !42, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2466, file: !154, line: 161, baseType: !520, size: 128, align: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, scope: !2462, file: !154, line: 164, baseType: !4249, size: 32, offset: 384)
!4249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2462, file: !154, line: 164, size: 32, elements: !4250)
!4250 = !{!4251, !4252}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4249, file: !154, line: 169, baseType: !71, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4249, file: !154, line: 177, baseType: !6, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2462, file: !154, line: 181, baseType: !71, size: 32, offset: 416)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2458, file: !2445, line: 42, baseType: !643, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2458, file: !2445, line: 43, baseType: !643, size: 32, offset: 96)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !632, file: !633, line: 1340, baseType: !4257, size: 64, offset: 20672)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !633, line: 69, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !632, file: !633, line: 1351, baseType: !44, size: 32, offset: 20736)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !632, file: !633, line: 1352, baseType: !44, size: 32, offset: 20768)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !632, file: !633, line: 1354, baseType: !61, size: 64, offset: 20800)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !632, file: !633, line: 1364, baseType: !275, size: 64, offset: 20864)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !632, file: !633, line: 1365, baseType: !275, size: 64, offset: 20928)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !632, file: !633, line: 1412, baseType: !61, size: 64, offset: 20992)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !632, file: !633, line: 1453, baseType: !4266, size: 64, offset: 21056)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !633, line: 1453, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !632, file: !633, line: 1457, baseType: !4269, size: 64, offset: 21120)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !185, line: 61, size: 576, elements: !4271)
!4271 = !{!4272, !4273, !4292, !4295, !4296, !4329, !4339}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4270, file: !185, line: 62, baseType: !184, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !185, line: 64, baseType: !4274, size: 192, offset: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !185, line: 64, size: 192, elements: !4275)
!4275 = !{!4276, !4287}
!4276 = !DIDerivedType(tag: DW_TAG_member, scope: !4274, file: !185, line: 65, baseType: !4277, size: 192)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4274, file: !185, line: 65, size: 192, elements: !4278)
!4278 = !{!4279, !4286}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4277, file: !185, line: 66, baseType: !4280, size: 128)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4281, line: 50, size: 128, elements: !4282)
!4281 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4282 = !{!4283, !4284, !4285}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4280, file: !4281, line: 52, baseType: !61, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4280, file: !4281, line: 54, baseType: !6, size: 32, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4280, file: !4281, line: 55, baseType: !6, size: 32, offset: 96)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4277, file: !185, line: 67, baseType: !61, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !4274, file: !185, line: 70, baseType: !4288, size: 192)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4274, file: !185, line: 70, size: 192, elements: !4289)
!4289 = !{!4290, !4291}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4288, file: !185, line: 71, baseType: !520, size: 128, align: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4288, file: !185, line: 72, baseType: !61, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4270, file: !185, line: 76, baseType: !4293, size: 64, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !185, line: 76, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4270, file: !185, line: 77, baseType: !61, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4270, file: !185, line: 79, baseType: !4297, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4281, line: 25, size: 256, elements: !4299)
!4299 = !{!4300, !4306, !4310}
!4300 = !DIDerivedType(tag: DW_TAG_member, scope: !4298, file: !4281, line: 26, baseType: !4301, size: 128)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4298, file: !4281, line: 26, size: 128, elements: !4302)
!4302 = !{!4303, !4305}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4301, file: !4281, line: 27, baseType: !4304, size: 128)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !1564)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4301, file: !4281, line: 28, baseType: !4304, size: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4298, file: !4281, line: 31, baseType: !4307, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4281, line: 23, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4298, file: !4281, line: 33, baseType: !4311, size: 64, offset: 192)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4298, file: !4281, line: 33, size: 64, elements: !4312)
!4312 = !{!4313, !4319, !4324}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4311, file: !4281, line: 38, baseType: !4314, size: 64)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4311, file: !4281, line: 34, size: 64, elements: !4315)
!4315 = !{!4316, !4317, !4318}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4314, file: !4281, line: 35, baseType: !1024, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4314, file: !4281, line: 36, baseType: !105, size: 8, offset: 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4314, file: !4281, line: 37, baseType: !105, size: 8, offset: 40)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4311, file: !4281, line: 42, baseType: !4320, size: 16)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4311, file: !4281, line: 39, size: 16, elements: !4321)
!4321 = !{!4322, !4323}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4320, file: !4281, line: 40, baseType: !105, size: 8)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4320, file: !4281, line: 41, baseType: !105, size: 8, offset: 8)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4311, file: !4281, line: 46, baseType: !4325, size: 16)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4311, file: !4281, line: 43, size: 16, elements: !4326)
!4326 = !{!4327, !4328}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4325, file: !4281, line: 44, baseType: !105, size: 8)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4325, file: !4281, line: 45, baseType: !105, size: 8, offset: 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4270, file: !185, line: 81, baseType: !4330, size: 64, offset: 448)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !185, line: 85, size: 384, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336, !4337, !4338}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4331, file: !185, line: 86, baseType: !4293, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4331, file: !185, line: 87, baseType: !61, size: 64, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4331, file: !185, line: 88, baseType: !61, size: 64, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4331, file: !185, line: 89, baseType: !61, size: 64, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4331, file: !185, line: 90, baseType: !407, size: 8, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4331, file: !185, line: 92, baseType: !4330, size: 64, offset: 320)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4270, file: !185, line: 82, baseType: !6, size: 32, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !632, file: !633, line: 1463, baseType: !4341, offset: 21184)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !633, line: 739, elements: !944)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !632, file: !633, line: 1470, baseType: !520, size: 128, align: 64, offset: 21184)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !632, file: !633, line: 1471, baseType: !583, size: 32, offset: 21312)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !632, file: !633, line: 1472, baseType: !44, size: 32, offset: 21344)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !632, file: !633, line: 1474, baseType: !631, size: 64, offset: 21376)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !632, file: !633, line: 1475, baseType: !1654, size: 320, offset: 21440)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !632, file: !633, line: 1478, baseType: !4348, size: 64, offset: 21760)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !633, line: 1478, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !632, file: !633, line: 1482, baseType: !583, size: 32, offset: 21824)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !632, file: !633, line: 1489, baseType: !42, size: 64, offset: 21888)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !632, file: !633, line: 1504, baseType: !42, size: 64, offset: 21952)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !632, file: !633, line: 1505, baseType: !276, size: 64, offset: 22016)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !632, file: !633, line: 1506, baseType: !275, size: 64, offset: 22080)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !632, file: !633, line: 1507, baseType: !276, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !632, file: !633, line: 1508, baseType: !276, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !632, file: !633, line: 1509, baseType: !276, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !632, file: !633, line: 1510, baseType: !520, size: 128, align: 64, offset: 22208)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !632, file: !633, line: 1511, baseType: !44, size: 32, offset: 22336)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !632, file: !633, line: 1515, baseType: !4361, size: 64, offset: 22400)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !515, line: 56, size: 64, elements: !4362)
!4362 = !{!4363}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4361, file: !515, line: 57, baseType: !518, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !632, file: !633, line: 1518, baseType: !4361, size: 64, offset: 22464)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !632, file: !633, line: 1528, baseType: !520, size: 128, align: 64, offset: 22528)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !632, file: !633, line: 1552, baseType: !4367, size: 35328, offset: 23040)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4368, line: 430, size: 35328, elements: !4369)
!4368 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4369 = !{!4370, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !5353, !5354, !5355, !5356, !5357, !5358, !5361, !5362, !5363, !5364}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4367, file: !4368, line: 432, baseType: !4371, size: 192)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4372, size: 192, elements: !348)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4373, line: 16, size: 64, elements: !4374)
!4373 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4372, file: !4373, line: 17, baseType: !115, size: 16)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4372, file: !4373, line: 18, baseType: !115, size: 16, offset: 16)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4372, file: !4373, line: 19, baseType: !115, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4372, file: !4373, line: 19, baseType: !115, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4372, file: !4373, line: 19, baseType: !115, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4372, file: !4373, line: 19, baseType: !115, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4372, file: !4373, line: 19, baseType: !115, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4372, file: !4373, line: 20, baseType: !115, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4372, file: !4373, line: 20, baseType: !115, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4372, file: !4373, line: 20, baseType: !115, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4372, file: !4373, line: 20, baseType: !115, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4372, file: !4373, line: 20, baseType: !115, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4372, file: !4373, line: 20, baseType: !115, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4367, file: !4368, line: 436, baseType: !61, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4367, file: !4368, line: 440, baseType: !48, size: 16, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4367, file: !4368, line: 441, baseType: !48, size: 16, offset: 272)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4367, file: !4368, line: 442, baseType: !48, size: 16, offset: 288)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4367, file: !4368, line: 443, baseType: !48, size: 16, offset: 304)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4367, file: !4368, line: 447, baseType: !61, size: 64, offset: 320)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4367, file: !4368, line: 448, baseType: !61, size: 64, offset: 384)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4367, file: !4368, line: 459, baseType: !4396, size: 256, offset: 448)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4397, size: 256, elements: !287)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !245, line: 671, size: 8512, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4898, !4899, !4900, !4901, !4907, !4908, !4909, !4910, !4911, !4995, !4996, !4997, !4998, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5118, !5119, !5120, !5121, !5122, !5123, !5134, !5135, !5136, !5137, !5138, !5144, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5161, !5332, !5333, !5334, !5337, !5350, !5351, !5352}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !4398, file: !245, line: 678, baseType: !119, size: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !4398, file: !245, line: 684, baseType: !119, size: 128, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !4398, file: !245, line: 685, baseType: !119, size: 128, offset: 256)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !4398, file: !245, line: 689, baseType: !462, size: 192, align: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !4398, file: !245, line: 690, baseType: !275, size: 64, offset: 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !4398, file: !245, line: 696, baseType: !119, size: 128, offset: 640)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !4398, file: !245, line: 698, baseType: !596, size: 128, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !4398, file: !245, line: 699, baseType: !119, size: 128, offset: 896)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !4398, file: !245, line: 700, baseType: !44, size: 32, offset: 1024)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !4398, file: !245, line: 703, baseType: !44, size: 32, offset: 1056)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !4398, file: !245, line: 705, baseType: !44, size: 32, offset: 1088)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !4398, file: !245, line: 707, baseType: !6, size: 32, offset: 1120)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !4398, file: !245, line: 708, baseType: !4397, size: 64, offset: 1152)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !4398, file: !245, line: 714, baseType: !4414, size: 64, offset: 1216)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !245, line: 302, size: 2432, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4805, !4806, !4807, !4808, !4809, !4813, !4814, !4818, !4822, !4823, !4827, !4831, !4832, !4833, !4837, !4841, !4845, !4846, !4847, !4851, !4855, !4859, !4863, !4864, !4884, !4888, !4889, !4890, !4894}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4415, file: !245, line: 303, baseType: !119, size: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4415, file: !245, line: 305, baseType: !2644, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4415, file: !245, line: 306, baseType: !4420, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !198, line: 705, size: 5824, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4428, !4429, !4482, !4552, !4553, !4554, !4555, !4556, !4563, !4655, !4668, !4678, !4682, !4684, !4685, !4686, !4690, !4697, !4698, !4701, !4704, !4708, !4711, !4712, !4713, !4714, !4715, !4716, !4746, !4747, !4748, !4751, !4754, !4763, !4764, !4765, !4766, !4767, !4768}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4421, file: !198, line: 706, baseType: !307, size: 512)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4421, file: !198, line: 707, baseType: !4420, size: 64, offset: 512)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4421, file: !198, line: 709, baseType: !4426, size: 64, offset: 576)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !198, line: 37, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4421, file: !198, line: 711, baseType: !38, size: 64, offset: 640)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4421, file: !198, line: 712, baseType: !4430, size: 64, offset: 704)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4432)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !198, line: 89, size: 384, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4442, !4447, !4451}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4432, file: !198, line: 90, baseType: !38, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4432, file: !198, line: 91, baseType: !391, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4432, file: !198, line: 92, baseType: !4437, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!44, !4440, !342}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4421)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4432, file: !198, line: 93, baseType: !4443, size: 64, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!347, !4440, !4446, !437, !445}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4432, file: !198, line: 95, baseType: !4448, size: 64, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !4420}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4432, file: !198, line: 97, baseType: !4452, size: 64, offset: 320)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4454)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !205, line: 286, size: 1472, elements: !4455)
!4455 = !{!4456, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4454, file: !205, line: 287, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!44, !4420}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4454, file: !205, line: 288, baseType: !4448, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4454, file: !205, line: 289, baseType: !4457, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4454, file: !205, line: 290, baseType: !4457, size: 64, offset: 192)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4454, file: !205, line: 291, baseType: !4457, size: 64, offset: 256)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4454, file: !205, line: 292, baseType: !4457, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4454, file: !205, line: 293, baseType: !4457, size: 64, offset: 384)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4454, file: !205, line: 294, baseType: !4457, size: 64, offset: 448)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4454, file: !205, line: 295, baseType: !4457, size: 64, offset: 512)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4454, file: !205, line: 296, baseType: !4457, size: 64, offset: 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4454, file: !205, line: 297, baseType: !4457, size: 64, offset: 640)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4454, file: !205, line: 298, baseType: !4457, size: 64, offset: 704)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4454, file: !205, line: 299, baseType: !4457, size: 64, offset: 768)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4454, file: !205, line: 300, baseType: !4457, size: 64, offset: 832)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4454, file: !205, line: 301, baseType: !4457, size: 64, offset: 896)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4454, file: !205, line: 302, baseType: !4457, size: 64, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4454, file: !205, line: 303, baseType: !4457, size: 64, offset: 1024)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4454, file: !205, line: 304, baseType: !4457, size: 64, offset: 1088)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4454, file: !205, line: 305, baseType: !4457, size: 64, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4454, file: !205, line: 306, baseType: !4457, size: 64, offset: 1216)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4454, file: !205, line: 307, baseType: !4457, size: 64, offset: 1280)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4454, file: !205, line: 308, baseType: !4457, size: 64, offset: 1344)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4454, file: !205, line: 309, baseType: !4457, size: 64, offset: 1408)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4421, file: !198, line: 714, baseType: !4483, size: 64, offset: 768)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4486, line: 80, size: 1344, elements: !4487)
!4486 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4487 = !{!4488, !4489, !4490, !4491, !4492, !4493, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4551}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4485, file: !4486, line: 81, baseType: !38, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4485, file: !4486, line: 82, baseType: !38, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4485, file: !4486, line: 83, baseType: !391, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4485, file: !4486, line: 84, baseType: !391, size: 64, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4485, file: !4486, line: 85, baseType: !391, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4485, file: !4486, line: 87, baseType: !4494, size: 64, offset: 320)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!44, !4420, !4497}
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !192, line: 96, size: 1152, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4510, !4514, !4515, !4516, !4517, !4518, !4526, !4527, !4528, !4529, !4530, !4531}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4498, file: !192, line: 97, baseType: !38, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4498, file: !192, line: 98, baseType: !4483, size: 64, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4498, file: !192, line: 100, baseType: !2644, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4498, file: !192, line: 101, baseType: !38, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4498, file: !192, line: 103, baseType: !407, size: 8, offset: 256)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4498, file: !192, line: 104, baseType: !191, size: 32, offset: 288)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4498, file: !192, line: 106, baseType: !4507, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !192, line: 106, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4498, file: !192, line: 107, baseType: !4511, size: 64, offset: 384)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4513)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !192, line: 107, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4498, file: !192, line: 109, baseType: !4457, size: 64, offset: 448)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4498, file: !192, line: 110, baseType: !4448, size: 64, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4498, file: !192, line: 111, baseType: !4457, size: 64, offset: 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4498, file: !192, line: 112, baseType: !4448, size: 64, offset: 640)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4498, file: !192, line: 113, baseType: !4519, size: 64, offset: 704)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!44, !4420, !4522}
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !205, line: 60, baseType: !4523)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !205, line: 58, size: 32, elements: !4524)
!4524 = !{!4525}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4523, file: !205, line: 59, baseType: !44, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4498, file: !192, line: 114, baseType: !4457, size: 64, offset: 768)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4498, file: !192, line: 115, baseType: !391, size: 64, offset: 832)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4498, file: !192, line: 116, baseType: !391, size: 64, offset: 896)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4498, file: !192, line: 118, baseType: !4452, size: 64, offset: 960)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4498, file: !192, line: 119, baseType: !4448, size: 64, offset: 1024)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4498, file: !192, line: 121, baseType: !4532, size: 64, offset: 1088)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !192, line: 121, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4485, file: !4486, line: 88, baseType: !4437, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4485, file: !4486, line: 89, baseType: !4457, size: 64, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4485, file: !4486, line: 90, baseType: !4448, size: 64, offset: 512)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4485, file: !4486, line: 91, baseType: !4448, size: 64, offset: 576)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4485, file: !4486, line: 92, baseType: !4448, size: 64, offset: 640)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4485, file: !4486, line: 94, baseType: !4457, size: 64, offset: 704)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4485, file: !4486, line: 95, baseType: !4457, size: 64, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4485, file: !4486, line: 97, baseType: !4519, size: 64, offset: 832)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4485, file: !4486, line: 98, baseType: !4457, size: 64, offset: 896)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4485, file: !4486, line: 100, baseType: !4457, size: 64, offset: 960)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4485, file: !4486, line: 102, baseType: !4457, size: 64, offset: 1024)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4485, file: !4486, line: 103, baseType: !4448, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4485, file: !4486, line: 105, baseType: !4452, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4485, file: !4486, line: 107, baseType: !4548, size: 64, offset: 1216)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4550)
!4550 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4486, line: 107, flags: DIFlagFwdDecl)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4485, file: !4486, line: 109, baseType: !407, size: 8, offset: 1280)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4421, file: !198, line: 715, baseType: !4497, size: 64, offset: 832)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4421, file: !198, line: 717, baseType: !42, size: 64, offset: 896)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4421, file: !198, line: 719, baseType: !42, size: 64, offset: 960)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4421, file: !198, line: 721, baseType: !540, size: 256, offset: 1024)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4421, file: !198, line: 725, baseType: !4557, size: 448, offset: 1280)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !198, line: 517, size: 448, elements: !4558)
!4558 = !{!4559, !4560, !4561, !4562}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4557, file: !198, line: 518, baseType: !119, size: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4557, file: !198, line: 519, baseType: !119, size: 128, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4557, file: !198, line: 520, baseType: !119, size: 128, offset: 256)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4557, file: !198, line: 521, baseType: !197, size: 32, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4421, file: !198, line: 726, baseType: !4564, size: 2496, offset: 1728)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !205, line: 663, size: 2496, elements: !4565)
!4565 = !{!4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4648, !4652}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4564, file: !205, line: 664, baseType: !4522, size: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4564, file: !205, line: 665, baseType: !6, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4564, file: !205, line: 666, baseType: !6, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4564, file: !205, line: 667, baseType: !407, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4564, file: !205, line: 668, baseType: !407, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4564, file: !205, line: 669, baseType: !407, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4564, file: !205, line: 670, baseType: !407, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4564, file: !205, line: 671, baseType: !407, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4564, file: !205, line: 672, baseType: !407, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4564, file: !205, line: 673, baseType: !407, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4564, file: !205, line: 674, baseType: !407, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4564, file: !205, line: 675, baseType: !642, size: 32, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4564, file: !205, line: 676, baseType: !81, size: 32, offset: 96)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4564, file: !205, line: 678, baseType: !119, size: 128, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4564, file: !205, line: 679, baseType: !1278, size: 256, offset: 256)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4564, file: !205, line: 680, baseType: !4582, size: 64, offset: 512)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4584, line: 43, size: 1536, elements: !4585)
!4584 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !4584, line: 44, baseType: !38, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4583, file: !4584, line: 45, baseType: !44, size: 32, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4583, file: !4584, line: 46, baseType: !119, size: 128, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4583, file: !4584, line: 47, baseType: !81, size: 32, offset: 256)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4583, file: !4584, line: 48, baseType: !4591, size: 64, offset: 320)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !205, line: 629, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4583, file: !4584, line: 49, baseType: !1654, size: 320, offset: 384)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4583, file: !4584, line: 50, baseType: !61, size: 64, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4583, file: !4584, line: 51, baseType: !753, size: 64, offset: 768)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4583, file: !4584, line: 52, baseType: !753, size: 64, offset: 832)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4583, file: !4584, line: 53, baseType: !753, size: 64, offset: 896)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4583, file: !4584, line: 54, baseType: !753, size: 64, offset: 960)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4583, file: !4584, line: 55, baseType: !753, size: 64, offset: 1024)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4583, file: !4584, line: 56, baseType: !61, size: 64, offset: 1088)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4583, file: !4584, line: 57, baseType: !61, size: 64, offset: 1152)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4583, file: !4584, line: 58, baseType: !61, size: 64, offset: 1216)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4583, file: !4584, line: 59, baseType: !61, size: 64, offset: 1280)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4583, file: !4584, line: 60, baseType: !61, size: 64, offset: 1344)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4583, file: !4584, line: 61, baseType: !4420, size: 64, offset: 1408)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4583, file: !4584, line: 62, baseType: !407, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4583, file: !4584, line: 63, baseType: !407, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4564, file: !205, line: 681, baseType: !407, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4564, file: !205, line: 682, baseType: !407, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4564, file: !205, line: 683, baseType: !407, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4564, file: !205, line: 684, baseType: !6, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4564, file: !205, line: 685, baseType: !6, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4564, file: !205, line: 690, baseType: !745, size: 512, offset: 640)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4564, file: !205, line: 691, baseType: !275, size: 64, offset: 1152)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4564, file: !205, line: 692, baseType: !1239, size: 256, offset: 1216)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4564, file: !205, line: 693, baseType: !76, size: 192, offset: 1472)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4564, file: !205, line: 694, baseType: !4591, size: 64, offset: 1664)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4564, file: !205, line: 695, baseType: !71, size: 32, offset: 1728)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4564, file: !205, line: 696, baseType: !71, size: 32, offset: 1760)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4564, file: !205, line: 697, baseType: !6, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4564, file: !205, line: 698, baseType: !6, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4564, file: !205, line: 699, baseType: !6, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4564, file: !205, line: 700, baseType: !6, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4564, file: !205, line: 701, baseType: !6, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4564, file: !205, line: 702, baseType: !6, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4564, file: !205, line: 703, baseType: !407, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4564, file: !205, line: 704, baseType: !6, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4564, file: !205, line: 705, baseType: !6, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4564, file: !205, line: 706, baseType: !6, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4564, file: !205, line: 707, baseType: !6, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4564, file: !205, line: 708, baseType: !6, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4564, file: !205, line: 709, baseType: !6, size: 32, offset: 1824)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4564, file: !205, line: 710, baseType: !204, size: 32, offset: 1856)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4564, file: !205, line: 711, baseType: !212, size: 32, offset: 1888)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4564, file: !205, line: 712, baseType: !212, size: 32, offset: 1920)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4564, file: !205, line: 713, baseType: !44, size: 32, offset: 1952)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4564, file: !205, line: 714, baseType: !44, size: 32, offset: 1984)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4564, file: !205, line: 715, baseType: !275, size: 64, offset: 2048)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4564, file: !205, line: 716, baseType: !275, size: 64, offset: 2112)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4564, file: !205, line: 717, baseType: !275, size: 64, offset: 2176)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4564, file: !205, line: 718, baseType: !275, size: 64, offset: 2240)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4564, file: !205, line: 720, baseType: !4643, size: 64, offset: 2304)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !205, line: 632, size: 64, elements: !4645)
!4645 = !{!4646, !4647}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4644, file: !205, line: 633, baseType: !81, size: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4644, file: !205, line: 634, baseType: !6, size: 32, offset: 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4564, file: !205, line: 721, baseType: !4649, size: 64, offset: 2368)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !4420, !1024}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4564, file: !205, line: 722, baseType: !4653, size: 64, offset: 2432)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !205, line: 722, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4421, file: !198, line: 727, baseType: !4656, size: 64, offset: 4224)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !205, line: 742, size: 1792, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4665, !4666, !4667}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4657, file: !205, line: 743, baseType: !4454, size: 1472)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4657, file: !205, line: 744, baseType: !4457, size: 64, offset: 1472)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4657, file: !205, line: 745, baseType: !4662, size: 64, offset: 1536)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{null, !4420, !407}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4657, file: !205, line: 746, baseType: !4457, size: 64, offset: 1600)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4657, file: !205, line: 747, baseType: !4448, size: 64, offset: 1664)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4657, file: !205, line: 748, baseType: !4448, size: 64, offset: 1728)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4421, file: !198, line: 736, baseType: !4669, size: 128, offset: 4288)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !198, line: 529, size: 128, elements: !4670)
!4670 = !{!4671, !4675}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4669, file: !198, line: 531, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4674, line: 13, flags: DIFlagFwdDecl)
!4674 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4669, file: !198, line: 532, baseType: !4676, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !198, line: 49, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4421, file: !198, line: 738, baseType: !4679, size: 64, offset: 4416)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4681)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !198, line: 738, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4421, file: !198, line: 740, baseType: !4683, size: 64, offset: 4480)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4421, file: !198, line: 741, baseType: !275, size: 64, offset: 4544)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4421, file: !198, line: 746, baseType: !275, size: 64, offset: 4608)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4421, file: !198, line: 747, baseType: !4687, size: 64, offset: 4672)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4689)
!4689 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !198, line: 747, flags: DIFlagFwdDecl)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4421, file: !198, line: 749, baseType: !4691, size: 64, offset: 4736)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !198, line: 428, size: 128, elements: !4693)
!4693 = !{!4694, !4695, !4696}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4692, file: !198, line: 433, baseType: !6, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4692, file: !198, line: 434, baseType: !6, size: 32, offset: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4692, file: !198, line: 435, baseType: !61, size: 64, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4421, file: !198, line: 751, baseType: !119, size: 128, offset: 4800)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4421, file: !198, line: 762, baseType: !4699, size: 64, offset: 4928)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !198, line: 762, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4421, file: !198, line: 770, baseType: !4702, offset: 4992)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4703, line: 5, elements: !944)
!4703 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4421, file: !198, line: 772, baseType: !4705, size: 64, offset: 4992)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4707, line: 18, flags: DIFlagFwdDecl)
!4707 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4421, file: !198, line: 773, baseType: !4709, size: 64, offset: 5056)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4486, line: 22, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4421, file: !198, line: 776, baseType: !44, size: 32, offset: 5120)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4421, file: !198, line: 778, baseType: !2614, size: 32, offset: 5152)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4421, file: !198, line: 779, baseType: !642, size: 32, offset: 5184)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4421, file: !198, line: 781, baseType: !81, size: 32, offset: 5216)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4421, file: !198, line: 782, baseType: !119, size: 128, offset: 5248)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4421, file: !198, line: 784, baseType: !4717, size: 64, offset: 5376)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4719)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4720, line: 52, size: 768, elements: !4721)
!4720 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4721 = !{!4722, !4723, !4724, !4725, !4726, !4730, !4734, !4735, !4736, !4737, !4741, !4745}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4719, file: !4720, line: 53, baseType: !38, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4719, file: !4720, line: 55, baseType: !391, size: 64, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4719, file: !4720, line: 56, baseType: !391, size: 64, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4719, file: !4720, line: 58, baseType: !4437, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4719, file: !4720, line: 59, baseType: !4727, size: 64, offset: 256)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!347, !4440, !4446}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4719, file: !4720, line: 61, baseType: !4731, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !4717}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4719, file: !4720, line: 62, baseType: !4448, size: 64, offset: 384)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4719, file: !4720, line: 64, baseType: !4457, size: 64, offset: 448)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4719, file: !4720, line: 66, baseType: !398, size: 64, offset: 512)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4719, file: !4720, line: 67, baseType: !4738, size: 64, offset: 576)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!417, !4440}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4719, file: !4720, line: 69, baseType: !4742, size: 64, offset: 640)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{null, !4440, !437, !445}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4719, file: !4720, line: 71, baseType: !4452, size: 64, offset: 704)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4421, file: !198, line: 785, baseType: !391, size: 64, offset: 5440)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4421, file: !198, line: 787, baseType: !4448, size: 64, offset: 5504)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4421, file: !198, line: 788, baseType: !4749, size: 64, offset: 5568)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !198, line: 46, flags: DIFlagFwdDecl)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4421, file: !198, line: 789, baseType: !4752, size: 64, offset: 5632)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !198, line: 48, flags: DIFlagFwdDecl)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4421, file: !198, line: 791, baseType: !4755, size: 64, offset: 5696)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !198, line: 597, size: 128, elements: !4757)
!4757 = !{!4758, !4759, !4760, !4761, !4762}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4756, file: !198, line: 598, baseType: !219, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4756, file: !198, line: 599, baseType: !228, size: 32, offset: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4756, file: !198, line: 600, baseType: !233, size: 32, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4756, file: !198, line: 601, baseType: !407, size: 8, offset: 96)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4756, file: !198, line: 602, baseType: !407, size: 8, offset: 104)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4421, file: !198, line: 793, baseType: !238, size: 32, offset: 5760)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4421, file: !198, line: 795, baseType: !407, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4421, file: !198, line: 796, baseType: !407, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4421, file: !198, line: 797, baseType: !407, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4421, file: !198, line: 798, baseType: !407, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4421, file: !198, line: 799, baseType: !407, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4415, file: !245, line: 307, baseType: !4420, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !4415, file: !245, line: 308, baseType: !391, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !4415, file: !245, line: 309, baseType: !391, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4415, file: !245, line: 310, baseType: !38, size: 64, offset: 448)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4415, file: !245, line: 311, baseType: !44, size: 32, offset: 512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4415, file: !245, line: 316, baseType: !44, size: 32, offset: 544)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !4415, file: !245, line: 318, baseType: !1453, size: 64, offset: 576)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !4415, file: !245, line: 319, baseType: !4777, size: 64, offset: 640)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !245, line: 977, size: 1856, elements: !4779)
!4779 = !{!4780, !4795, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !4778, file: !245, line: 978, baseType: !4781, size: 896)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !245, line: 873, size: 896, elements: !4782)
!4782 = !{!4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !4781, file: !245, line: 874, baseType: !4414, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4781, file: !245, line: 875, baseType: !2378, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !4781, file: !245, line: 877, baseType: !119, size: 128, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !4781, file: !245, line: 879, baseType: !119, size: 128, offset: 256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !4781, file: !245, line: 880, baseType: !119, size: 128, offset: 384)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !4781, file: !245, line: 883, baseType: !6, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !4781, file: !245, line: 885, baseType: !6, size: 32, offset: 544)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !4781, file: !245, line: 886, baseType: !6, size: 32, offset: 576)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4781, file: !245, line: 888, baseType: !71, size: 32, offset: 608)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4781, file: !245, line: 889, baseType: !520, size: 128, align: 64, offset: 640)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !4781, file: !245, line: 891, baseType: !42, size: 64, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !4781, file: !245, line: 898, baseType: !44, size: 32, offset: 832)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !4778, file: !245, line: 979, baseType: !4796, size: 64, offset: 896)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !4778, file: !245, line: 981, baseType: !119, size: 128, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !4778, file: !245, line: 982, baseType: !44, size: 32, offset: 1088)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !4778, file: !245, line: 984, baseType: !44, size: 32, offset: 1120)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !4778, file: !245, line: 985, baseType: !44, size: 32, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !4778, file: !245, line: 987, baseType: !545, size: 32, offset: 1184)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4778, file: !245, line: 988, baseType: !745, size: 512, offset: 1216)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !4778, file: !245, line: 989, baseType: !753, size: 64, offset: 1728)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !4778, file: !245, line: 990, baseType: !6, size: 32, offset: 1792)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !4415, file: !245, line: 320, baseType: !71, size: 32, offset: 704)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !4415, file: !245, line: 321, baseType: !44, size: 32, offset: 736)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !4415, file: !245, line: 322, baseType: !44, size: 32, offset: 768)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !4415, file: !245, line: 325, baseType: !6, size: 32, offset: 800)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !4415, file: !245, line: 331, baseType: !4810, size: 64, offset: 832)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !4414}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !4415, file: !245, line: 332, baseType: !4810, size: 64, offset: 896)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !4415, file: !245, line: 350, baseType: !4815, size: 64, offset: 960)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!44, !4397}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !4415, file: !245, line: 356, baseType: !4819, size: 64, offset: 1024)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{null, !4397, !923}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !4415, file: !245, line: 357, baseType: !4819, size: 64, offset: 1088)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4415, file: !245, line: 385, baseType: !4824, size: 64, offset: 1152)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!44, !4397, !44}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !4415, file: !245, line: 386, baseType: !4828, size: 64, offset: 1216)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{null, !4397, !44}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4415, file: !245, line: 406, baseType: !4828, size: 64, offset: 1280)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4415, file: !245, line: 407, baseType: !4828, size: 64, offset: 1344)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4415, file: !245, line: 415, baseType: !4834, size: 64, offset: 1408)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{null, !4397}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !4415, file: !245, line: 427, baseType: !4838, size: 64, offset: 1472)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{null, !4414, !6}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !4415, file: !245, line: 436, baseType: !4842, size: 64, offset: 1536)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!44, !4414}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !4415, file: !245, line: 443, baseType: !4810, size: 64, offset: 1600)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !4415, file: !245, line: 450, baseType: !4815, size: 64, offset: 1664)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !4415, file: !245, line: 455, baseType: !4848, size: 64, offset: 1728)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{null, !4796, !407}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !4415, file: !245, line: 461, baseType: !4852, size: 64, offset: 1792)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4854, line: 325, flags: DIFlagFwdDecl)
!4854 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !4415, file: !245, line: 469, baseType: !4856, size: 64, offset: 1856)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{null, !4796, !4796}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !4415, file: !245, line: 476, baseType: !4860, size: 64, offset: 1920)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!42, !4397, !3955, !44, !407}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !4415, file: !245, line: 483, baseType: !426, size: 64, offset: 1984)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !4415, file: !245, line: 494, baseType: !4865, size: 64, offset: 2048)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!271, !4397, !4868, !61}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !245, line: 1014, size: 448, elements: !4870)
!4870 = !{!4871, !4872, !4875, !4876, !4877, !4878, !4883}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4869, file: !245, line: 1015, baseType: !4397, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4869, file: !245, line: 1016, baseType: !4873, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !245, line: 641, flags: DIFlagFwdDecl)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4869, file: !245, line: 1017, baseType: !61, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4869, file: !245, line: 1018, baseType: !61, size: 64, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !4869, file: !245, line: 1019, baseType: !275, size: 64, offset: 256)
!4878 = !DIDerivedType(tag: DW_TAG_member, scope: !4869, file: !245, line: 1020, baseType: !4879, size: 64, offset: 320)
!4879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4869, file: !245, line: 1020, size: 64, elements: !4880)
!4880 = !{!4881, !4882}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4879, file: !245, line: 1021, baseType: !42, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4879, file: !245, line: 1022, baseType: !61, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4869, file: !245, line: 1024, baseType: !44, size: 32, offset: 384)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !4415, file: !245, line: 506, baseType: !4885, size: 64, offset: 2112)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!44, !122}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !4415, file: !245, line: 520, baseType: !4834, size: 64, offset: 2176)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !4415, file: !245, line: 530, baseType: !4815, size: 64, offset: 2240)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4415, file: !245, line: 537, baseType: !4891, size: 64, offset: 2304)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!407, !4414, !44}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !4415, file: !245, line: 542, baseType: !4895, size: 64, offset: 2368)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!44, !4397, !275}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !4398, file: !245, line: 715, baseType: !42, size: 64, offset: 1280)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4398, file: !245, line: 717, baseType: !244, size: 32, offset: 1344)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !4398, file: !245, line: 718, baseType: !6, size: 32, offset: 1376)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4398, file: !245, line: 719, baseType: !4902, size: 64, offset: 1408)
!4902 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4903, line: 26, baseType: !4904)
!4903 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4903, line: 24, size: 64, elements: !4905)
!4905 = !{!4906}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4904, file: !4903, line: 25, baseType: !2410, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4398, file: !245, line: 720, baseType: !535, size: 64, offset: 1472)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !4398, file: !245, line: 728, baseType: !275, size: 64, offset: 1536)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !4398, file: !245, line: 729, baseType: !275, size: 64, offset: 1600)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !4398, file: !245, line: 730, baseType: !275, size: 64, offset: 1664)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4398, file: !245, line: 732, baseType: !4912, size: 1088, offset: 1728)
!4912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !4913, line: 385, size: 1088, elements: !4914)
!4913 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!4914 = !{!4915, !4916, !4917, !4918, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4968, !4969, !4976, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4912, file: !4913, line: 390, baseType: !643, size: 32)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4912, file: !4913, line: 395, baseType: !643, size: 32, offset: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4912, file: !4913, line: 400, baseType: !276, size: 64, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !4913, line: 402, baseType: !4919, size: 64, offset: 128)
!4919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4912, file: !4913, line: 402, size: 64, elements: !4920)
!4920 = !{!4921, !4922}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4919, file: !4913, line: 403, baseType: !276, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !4919, file: !4913, line: 404, baseType: !276, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !4912, file: !4913, line: 407, baseType: !276, size: 64, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !4912, file: !4913, line: 408, baseType: !276, size: 64, offset: 256)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !4912, file: !4913, line: 410, baseType: !276, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !4912, file: !4913, line: 411, baseType: !276, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4912, file: !4913, line: 412, baseType: !276, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !4912, file: !4913, line: 413, baseType: !276, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !4912, file: !4913, line: 414, baseType: !276, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !4912, file: !4913, line: 415, baseType: !276, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !4912, file: !4913, line: 416, baseType: !276, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !4912, file: !4913, line: 417, baseType: !276, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4912, file: !4913, line: 418, baseType: !276, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4912, file: !4913, line: 419, baseType: !276, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4912, file: !4913, line: 420, baseType: !276, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !4912, file: !4913, line: 421, baseType: !276, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !4912, file: !4913, line: 422, baseType: !276, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4912, file: !4913, line: 423, baseType: !276, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !4912, file: !4913, line: 424, baseType: !276, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !4912, file: !4913, line: 435, baseType: !276, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !4912, file: !4913, line: 436, baseType: !276, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !4912, file: !4913, line: 437, baseType: !276, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !4912, file: !4913, line: 439, baseType: !276, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !4912, file: !4913, line: 440, baseType: !276, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !4912, file: !4913, line: 442, baseType: !276, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !4912, file: !4913, line: 443, baseType: !276, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !4912, file: !4913, line: 444, baseType: !276, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !4912, file: !4913, line: 445, baseType: !276, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !4912, file: !4913, line: 446, baseType: !276, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !4912, file: !4913, line: 447, baseType: !276, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !4912, file: !4913, line: 448, baseType: !276, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !4912, file: !4913, line: 449, baseType: !276, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !4912, file: !4913, line: 450, baseType: !276, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !4912, file: !4913, line: 451, baseType: !276, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !4912, file: !4913, line: 452, baseType: !276, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4912, file: !4913, line: 453, baseType: !276, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !4912, file: !4913, line: 454, baseType: !276, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !4912, file: !4913, line: 455, baseType: !276, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !4912, file: !4913, line: 456, baseType: !276, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !4912, file: !4913, line: 457, baseType: !276, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !4912, file: !4913, line: 458, baseType: !276, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !4912, file: !4913, line: 459, baseType: !276, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!4963 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !4913, line: 461, baseType: !4964, size: 32, offset: 384)
!4964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4912, file: !4913, line: 461, size: 32, elements: !4965)
!4965 = !{!4966, !4967}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !4964, file: !4913, line: 462, baseType: !643, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !4964, file: !4913, line: 463, baseType: !643, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !4912, file: !4913, line: 466, baseType: !643, size: 32, offset: 416)
!4969 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !4913, line: 467, baseType: !4970, size: 64, offset: 448)
!4970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4912, file: !4913, line: 467, size: 64, elements: !4971)
!4971 = !{!4972, !4973, !4974, !4975}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !4970, file: !4913, line: 468, baseType: !276, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !4970, file: !4913, line: 469, baseType: !276, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !4970, file: !4913, line: 470, baseType: !276, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !4970, file: !4913, line: 471, baseType: !276, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !4913, line: 473, baseType: !4977, size: 64, offset: 512)
!4977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4912, file: !4913, line: 473, size: 64, elements: !4978)
!4978 = !{!4979, !4980, !4981, !4982}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !4977, file: !4913, line: 474, baseType: !276, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !4977, file: !4913, line: 475, baseType: !276, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !4977, file: !4913, line: 476, baseType: !276, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !4977, file: !4913, line: 477, baseType: !276, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !4912, file: !4913, line: 479, baseType: !276, size: 64, offset: 576)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !4912, file: !4913, line: 485, baseType: !276, size: 64, offset: 640)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !4912, file: !4913, line: 490, baseType: !643, size: 32, offset: 704)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4912, file: !4913, line: 492, baseType: !1025, size: 32, offset: 736)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !4912, file: !4913, line: 501, baseType: !276, size: 64, offset: 768)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !4912, file: !4913, line: 506, baseType: !643, size: 32, offset: 832)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !4912, file: !4913, line: 507, baseType: !116, size: 16, offset: 864)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !4912, file: !4913, line: 508, baseType: !116, size: 16, offset: 880)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !4912, file: !4913, line: 509, baseType: !643, size: 32, offset: 896)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !4912, file: !4913, line: 510, baseType: !643, size: 32, offset: 928)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !4912, file: !4913, line: 518, baseType: !276, size: 64, offset: 960)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !4912, file: !4913, line: 520, baseType: !276, size: 64, offset: 1024)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !4398, file: !245, line: 733, baseType: !115, size: 16, offset: 2816)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !4398, file: !245, line: 734, baseType: !115, size: 16, offset: 2832)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !4398, file: !245, line: 735, baseType: !115, size: 16, offset: 2848)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !4398, file: !245, line: 736, baseType: !4999, size: 1536, offset: 2880)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !245, line: 155, size: 1536, elements: !5000)
!5000 = !{!5001, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5085, !5086, !5087, !5088}
!5001 = !DIDerivedType(tag: DW_TAG_member, scope: !4999, file: !245, line: 157, baseType: !5002, size: 768)
!5002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4999, file: !245, line: 157, size: 768, elements: !5003)
!5003 = !{!5004, !5023, !5027, !5031, !5036, !5058}
!5004 = !DIDerivedType(tag: DW_TAG_member, scope: !5002, file: !245, line: 158, baseType: !5005, size: 768)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5002, file: !245, line: 158, size: 768, elements: !5006)
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5022}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5005, file: !245, line: 159, baseType: !275, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !5005, file: !245, line: 160, baseType: !275, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !5005, file: !245, line: 161, baseType: !61, size: 64, offset: 128)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !5005, file: !245, line: 162, baseType: !61, size: 64, offset: 192)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !5005, file: !245, line: 163, baseType: !44, size: 32, offset: 256)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5005, file: !245, line: 164, baseType: !44, size: 32, offset: 288)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5005, file: !245, line: 165, baseType: !44, size: 32, offset: 320)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5005, file: !245, line: 166, baseType: !44, size: 32, offset: 352)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !5005, file: !245, line: 168, baseType: !5016, size: 192, offset: 384)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !245, line: 134, size: 192, elements: !5017)
!5017 = !{!5018, !5019, !5020, !5021}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5016, file: !245, line: 135, baseType: !275, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5016, file: !245, line: 136, baseType: !6, size: 32, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5016, file: !245, line: 137, baseType: !44, size: 32, offset: 96)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5016, file: !245, line: 138, baseType: !44, size: 32, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !5005, file: !245, line: 169, baseType: !5016, size: 192, offset: 576)
!5023 = !DIDerivedType(tag: DW_TAG_member, scope: !5002, file: !245, line: 171, baseType: !5024, size: 512)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5002, file: !245, line: 171, size: 512, elements: !5025)
!5025 = !{!5026}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5024, file: !245, line: 172, baseType: !745, size: 512)
!5027 = !DIDerivedType(tag: DW_TAG_member, scope: !5002, file: !245, line: 174, baseType: !5028, size: 128)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5002, file: !245, line: 174, size: 128, elements: !5029)
!5029 = !{!5030}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !5028, file: !245, line: 176, baseType: !119, size: 128)
!5031 = !DIDerivedType(tag: DW_TAG_member, scope: !5002, file: !245, line: 178, baseType: !5032, size: 128)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5002, file: !245, line: 178, size: 128, elements: !5033)
!5033 = !{!5034, !5035}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !5032, file: !245, line: 179, baseType: !275, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !5032, file: !245, line: 180, baseType: !275, size: 64, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, scope: !5002, file: !245, line: 183, baseType: !5037, size: 320)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5002, file: !245, line: 183, size: 320, elements: !5038)
!5038 = !{!5039, !5047}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5037, file: !245, line: 189, baseType: !5040, size: 192)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !5041, line: 14, size: 192, elements: !5042)
!5041 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!5042 = !{!5043, !5044, !5045, !5046}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5040, file: !5041, line: 15, baseType: !61, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5040, file: !5041, line: 16, baseType: !61, size: 64, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5040, file: !5041, line: 17, baseType: !105, size: 8, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5040, file: !5041, line: 18, baseType: !105, size: 8, offset: 136)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !5037, file: !245, line: 190, baseType: !5048, size: 128, offset: 192)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !5049, line: 21, size: 128, elements: !5050)
!5049 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!5050 = !{!5051, !5056}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !5048, file: !5049, line: 22, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !5049, line: 17, size: 64, elements: !5053)
!5053 = !{!5054}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5052, file: !5049, line: 18, baseType: !5055, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5048, file: !5049, line: 23, baseType: !5057, size: 64, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, scope: !5002, file: !245, line: 193, baseType: !5059, size: 192)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5002, file: !245, line: 193, size: 192, elements: !5060)
!5060 = !{!5061, !5062, !5063, !5064, !5065}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !5059, file: !245, line: 194, baseType: !105, size: 8)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !5059, file: !245, line: 195, baseType: !105, size: 8, offset: 8)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5059, file: !245, line: 196, baseType: !115, size: 16, offset: 16)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !5059, file: !245, line: 197, baseType: !275, size: 64, offset: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !5059, file: !245, line: 198, baseType: !275, size: 64, offset: 128)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4999, file: !245, line: 205, baseType: !631, size: 64, offset: 768)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4999, file: !245, line: 211, baseType: !42, size: 64, offset: 832)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4999, file: !245, line: 214, baseType: !61, size: 64, offset: 896)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4999, file: !245, line: 223, baseType: !44, size: 32, offset: 960)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4999, file: !245, line: 229, baseType: !4902, size: 64, offset: 1024)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4999, file: !245, line: 234, baseType: !275, size: 64, offset: 1088)
!5072 = !DIDerivedType(tag: DW_TAG_member, scope: !4999, file: !245, line: 236, baseType: !5073, size: 128, offset: 1152)
!5073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4999, file: !245, line: 236, size: 128, elements: !5074)
!5074 = !{!5075, !5080}
!5075 = !DIDerivedType(tag: DW_TAG_member, scope: !5073, file: !245, line: 237, baseType: !5076, size: 128)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5073, file: !245, line: 237, size: 128, elements: !5077)
!5077 = !{!5078, !5079}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !5076, file: !245, line: 241, baseType: !275, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !5076, file: !245, line: 249, baseType: !4902, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, scope: !5073, file: !245, line: 251, baseType: !5081, size: 128)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5073, file: !245, line: 251, size: 128, elements: !5082)
!5082 = !{!5083, !5084}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !5081, file: !245, line: 252, baseType: !275, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !5081, file: !245, line: 253, baseType: !275, size: 64, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4999, file: !245, line: 261, baseType: !275, size: 64, offset: 1280)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4999, file: !245, line: 262, baseType: !275, size: 64, offset: 1344)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4999, file: !245, line: 268, baseType: !275, size: 64, offset: 1408)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4999, file: !245, line: 269, baseType: !275, size: 64, offset: 1472)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4398, file: !245, line: 738, baseType: !2378, size: 64, offset: 4416)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !4398, file: !245, line: 744, baseType: !4796, size: 64, offset: 4480)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4398, file: !245, line: 745, baseType: !533, size: 64, offset: 4544)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !4398, file: !245, line: 751, baseType: !535, size: 64, offset: 4608)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !4398, file: !245, line: 752, baseType: !535, size: 64, offset: 4672)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !4398, file: !245, line: 757, baseType: !540, size: 256, offset: 4736)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !4398, file: !245, line: 758, baseType: !119, size: 128, offset: 4992)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4398, file: !245, line: 759, baseType: !4397, size: 64, offset: 5120)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !4398, file: !245, line: 761, baseType: !44, size: 32, offset: 5184)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4398, file: !245, line: 762, baseType: !44, size: 32, offset: 5216)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !4398, file: !245, line: 764, baseType: !119, size: 128, offset: 5248)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4398, file: !245, line: 765, baseType: !631, size: 64, offset: 5376)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !4398, file: !245, line: 768, baseType: !540, size: 256, offset: 5440)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !4398, file: !245, line: 769, baseType: !71, size: 32, offset: 5696)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4398, file: !245, line: 771, baseType: !4873, size: 64, offset: 5760)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !4398, file: !245, line: 772, baseType: !119, size: 128, offset: 5824)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !4398, file: !245, line: 773, baseType: !61, size: 64, offset: 5952)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !4398, file: !245, line: 774, baseType: !44, size: 32, offset: 6016)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !4398, file: !245, line: 777, baseType: !76, size: 192, offset: 6080)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4398, file: !245, line: 778, baseType: !5109, size: 64, offset: 6272)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !143, line: 1083, size: 384, elements: !5111)
!5111 = !{!5112, !5113, !5114, !5115, !5116, !5117}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5110, file: !143, line: 1084, baseType: !558, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5110, file: !143, line: 1085, baseType: !44, size: 32, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5110, file: !143, line: 1086, baseType: !44, size: 32, offset: 96)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5110, file: !143, line: 1087, baseType: !5109, size: 64, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5110, file: !143, line: 1088, baseType: !507, size: 64, offset: 192)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5110, file: !143, line: 1089, baseType: !520, size: 128, align: 64, offset: 256)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !4398, file: !245, line: 781, baseType: !6, size: 32, offset: 6336)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !4398, file: !245, line: 782, baseType: !6, size: 32, offset: 6368)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !4398, file: !245, line: 783, baseType: !6, size: 32, offset: 6400)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !4398, file: !245, line: 784, baseType: !6, size: 32, offset: 6432)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !4398, file: !245, line: 785, baseType: !61, size: 64, offset: 6464)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !4398, file: !245, line: 786, baseType: !5124, size: 256, offset: 6528)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !5125, line: 17, size: 256, elements: !5126)
!5125 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!5126 = !{!5127, !5128, !5133}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5124, file: !5125, line: 18, baseType: !652, size: 128)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5124, file: !5125, line: 19, baseType: !5129, size: 64, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{null, !5132}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !5124, file: !5125, line: 20, baseType: !3359, size: 64, offset: 192)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !4398, file: !245, line: 787, baseType: !520, size: 128, align: 64, offset: 6784)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4398, file: !245, line: 788, baseType: !6, size: 32, offset: 6912)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !4398, file: !245, line: 789, baseType: !3359, size: 64, offset: 6976)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !4398, file: !245, line: 791, baseType: !71, size: 32, offset: 7040)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4398, file: !245, line: 794, baseType: !5139, size: 192, offset: 7104)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !245, line: 579, size: 192, elements: !5140)
!5140 = !{!5141, !5142, !5143}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5139, file: !245, line: 580, baseType: !119, size: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5139, file: !245, line: 581, baseType: !545, size: 32, offset: 128)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !5139, file: !245, line: 582, baseType: !6, size: 32, offset: 160)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !4398, file: !245, line: 796, baseType: !5145, size: 64, offset: 7296)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !245, line: 585, size: 128, elements: !5147)
!5147 = !{!5148, !5149}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5146, file: !245, line: 586, baseType: !61, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5146, file: !245, line: 587, baseType: !61, size: 64, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4398, file: !245, line: 797, baseType: !61, size: 64, offset: 7360)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !4398, file: !245, line: 800, baseType: !4397, size: 64, offset: 7424)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4398, file: !245, line: 802, baseType: !4834, size: 64, offset: 7488)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4398, file: !245, line: 803, baseType: !520, size: 128, align: 64, offset: 7552)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4398, file: !245, line: 805, baseType: !610, size: 64, offset: 7680)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4398, file: !245, line: 806, baseType: !275, size: 64, offset: 7744)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !4398, file: !245, line: 808, baseType: !535, size: 64, offset: 7808)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4398, file: !245, line: 810, baseType: !5158, size: 64, offset: 7872)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!275}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !4398, file: !245, line: 811, baseType: !5162, size: 64, offset: 7936)
!5162 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !245, line: 605, baseType: !5163)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{null, !4397, !5166, !5271}
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !245, line: 1148, size: 2048, align: 512, elements: !5168)
!5168 = !{!5169, !5170, !5171, !5172, !5173, !5178, !5179, !5180, !5185, !5186, !5193, !5214, !5236, !5246, !5264, !5265, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !5167, file: !245, line: 1153, baseType: !275, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5167, file: !245, line: 1154, baseType: !275, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !5167, file: !245, line: 1155, baseType: !275, size: 64, offset: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5167, file: !245, line: 1161, baseType: !275, size: 64, offset: 192)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !5167, file: !245, line: 1165, baseType: !5174, size: 64, offset: 256)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5167, file: !245, line: 1162, size: 64, elements: !5175)
!5175 = !{!5176, !5177}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5174, file: !245, line: 1163, baseType: !642, size: 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !5174, file: !245, line: 1164, baseType: !642, size: 32, offset: 32)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5167, file: !245, line: 1166, baseType: !275, size: 64, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5167, file: !245, line: 1167, baseType: !275, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !5167, file: !245, line: 1171, baseType: !5181, size: 64, offset: 448)
!5181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5167, file: !245, line: 1168, size: 64, elements: !5182)
!5182 = !{!5183, !5184}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5181, file: !245, line: 1169, baseType: !642, size: 32)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5181, file: !245, line: 1170, baseType: !642, size: 32, offset: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5167, file: !245, line: 1177, baseType: !275, size: 64, offset: 512)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !5167, file: !245, line: 1178, baseType: !5187, size: 64, offset: 576)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !245, line: 67, size: 64, elements: !5189)
!5189 = !{!5190, !5191}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5188, file: !245, line: 68, baseType: !276, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5188, file: !245, line: 69, baseType: !5192, offset: 64)
!5192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, elements: !1353)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5167, file: !245, line: 1179, baseType: !5194, size: 64, offset: 640)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !245, line: 93, size: 256, elements: !5196)
!5196 = !{!5197, !5213}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !5195, file: !245, line: 94, baseType: !5198, size: 224)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !245, line: 83, size: 224, elements: !5199)
!5199 = !{!5200, !5206, !5211, !5212}
!5200 = !DIDerivedType(tag: DW_TAG_member, scope: !5198, file: !245, line: 84, baseType: !5201, size: 64)
!5201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5198, file: !245, line: 84, size: 64, elements: !5202)
!5202 = !{!5203, !5205}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5201, file: !245, line: 85, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5201, file: !245, line: 86, baseType: !61, size: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5198, file: !245, line: 88, baseType: !5207, size: 64, offset: 64)
!5207 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !245, line: 80, baseType: !5208)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!61, !42, !417, !61, !61}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5198, file: !245, line: 89, baseType: !42, size: 64, offset: 128)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5198, file: !245, line: 90, baseType: !642, size: 32, offset: 192)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5195, file: !245, line: 95, baseType: !642, size: 32, offset: 224)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !5167, file: !245, line: 1180, baseType: !5215, size: 64, offset: 704)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !245, line: 123, size: 128, elements: !5217)
!5217 = !{!5218, !5219, !5220}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5216, file: !245, line: 124, baseType: !276, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !5216, file: !245, line: 125, baseType: !276, size: 64, offset: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5216, file: !245, line: 126, baseType: !5221, offset: 128)
!5221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5222, elements: !1353)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !4913, line: 1415, size: 192, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5222, file: !4913, line: 1416, baseType: !276, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5222, file: !4913, line: 1417, baseType: !276, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !5222, file: !4913, line: 1418, baseType: !276, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !5222, file: !4913, line: 1419, baseType: !276, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !5222, file: !4913, line: 1420, baseType: !276, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !5222, file: !4913, line: 1421, baseType: !276, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !5222, file: !4913, line: 1422, baseType: !276, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5222, file: !4913, line: 1423, baseType: !276, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !5222, file: !4913, line: 1424, baseType: !276, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !5222, file: !4913, line: 1425, baseType: !276, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5222, file: !4913, line: 1426, baseType: !276, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5222, file: !4913, line: 1427, baseType: !276, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5167, file: !245, line: 1181, baseType: !5237, size: 64, offset: 768)
!5237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !4913, line: 1430, size: 64, elements: !5238)
!5238 = !{!5239, !5240}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5237, file: !4913, line: 1431, baseType: !276, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, scope: !5237, file: !4913, line: 1433, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5237, file: !4913, line: 1433, size: 64, elements: !5242)
!5242 = !{!5243, !5244, !5245}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !5241, file: !4913, line: 1434, baseType: !643, size: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !5241, file: !4913, line: 1435, baseType: !116, size: 16, offset: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !5241, file: !4913, line: 1436, baseType: !116, size: 16, offset: 48)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !5167, file: !245, line: 1182, baseType: !5247, size: 64, offset: 832)
!5247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !4913, line: 1267, size: 64, elements: !5248)
!5248 = !{!5249, !5250}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5247, file: !4913, line: 1268, baseType: !276, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, scope: !5247, file: !4913, line: 1269, baseType: !5251, size: 64)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5247, file: !4913, line: 1269, size: 64, elements: !5252)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !5251, file: !4913, line: 1270, baseType: !276, size: 5, flags: DIFlagBitField, extraData: i64 0)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !5251, file: !4913, line: 1271, baseType: !276, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !5251, file: !4913, line: 1272, baseType: !276, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !5251, file: !4913, line: 1273, baseType: !276, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !5251, file: !4913, line: 1274, baseType: !276, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !5251, file: !4913, line: 1275, baseType: !276, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !5251, file: !4913, line: 1276, baseType: !276, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !5251, file: !4913, line: 1277, baseType: !276, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !5251, file: !4913, line: 1278, baseType: !276, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !5251, file: !4913, line: 1279, baseType: !276, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !5251, file: !4913, line: 1280, baseType: !276, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !5167, file: !245, line: 1183, baseType: !275, size: 64, offset: 896)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !5167, file: !245, line: 1185, baseType: !5266, size: 128, offset: 960)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !5267, line: 7, size: 128, elements: !5268)
!5267 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!5268 = !{!5269, !5270}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !5266, file: !5267, line: 8, baseType: !276, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5266, file: !5267, line: 9, baseType: !5271, size: 64, offset: 64)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5273, line: 103, size: 1344, elements: !5274)
!5273 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5274 = !{!5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5303, !5304, !5305}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5272, file: !5273, line: 109, baseType: !61, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5272, file: !5273, line: 110, baseType: !61, size: 64, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5272, file: !5273, line: 111, baseType: !61, size: 64, offset: 128)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5272, file: !5273, line: 112, baseType: !61, size: 64, offset: 192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5272, file: !5273, line: 113, baseType: !61, size: 64, offset: 256)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5272, file: !5273, line: 114, baseType: !61, size: 64, offset: 320)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5272, file: !5273, line: 117, baseType: !61, size: 64, offset: 384)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5272, file: !5273, line: 118, baseType: !61, size: 64, offset: 448)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5272, file: !5273, line: 119, baseType: !61, size: 64, offset: 512)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5272, file: !5273, line: 120, baseType: !61, size: 64, offset: 576)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5272, file: !5273, line: 121, baseType: !61, size: 64, offset: 640)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5272, file: !5273, line: 122, baseType: !61, size: 64, offset: 704)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5272, file: !5273, line: 123, baseType: !61, size: 64, offset: 768)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5272, file: !5273, line: 124, baseType: !61, size: 64, offset: 832)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5272, file: !5273, line: 125, baseType: !61, size: 64, offset: 896)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5272, file: !5273, line: 139, baseType: !61, size: 64, offset: 960)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5272, file: !5273, line: 142, baseType: !61, size: 64, offset: 1024)
!5292 = !DIDerivedType(tag: DW_TAG_member, scope: !5272, file: !5273, line: 144, baseType: !5293, size: 64, offset: 1088)
!5293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5272, file: !5273, line: 144, size: 64, elements: !5294)
!5294 = !{!5295, !5296, !5297}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5293, file: !5273, line: 146, baseType: !115, size: 16)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5293, file: !5273, line: 148, baseType: !275, size: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5293, file: !5273, line: 150, baseType: !5298, size: 64)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5273, line: 59, size: 64, elements: !5299)
!5299 = !{!5300, !5301, !5302}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5298, file: !5273, line: 61, baseType: !275, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5298, file: !5273, line: 63, baseType: !275, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5298, file: !5273, line: 65, baseType: !275, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5272, file: !5273, line: 153, baseType: !61, size: 64, offset: 1152)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5272, file: !5273, line: 154, baseType: !61, size: 64, offset: 1216)
!5305 = !DIDerivedType(tag: DW_TAG_member, scope: !5272, file: !5273, line: 156, baseType: !5306, size: 64, offset: 1280)
!5306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5272, file: !5273, line: 156, size: 64, elements: !5307)
!5307 = !{!5308, !5309, !5310}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5306, file: !5273, line: 158, baseType: !115, size: 16)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5306, file: !5273, line: 160, baseType: !275, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5306, file: !5273, line: 162, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5273, line: 69, size: 64, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5311, file: !5273, line: 71, baseType: !275, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5311, file: !5273, line: 73, baseType: !275, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5311, file: !5273, line: 75, baseType: !275, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5311, file: !5273, line: 77, baseType: !275, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5311, file: !5273, line: 80, baseType: !275, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5311, file: !5273, line: 83, baseType: !275, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5311, file: !5273, line: 86, baseType: !275, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5311, file: !5273, line: 88, baseType: !275, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5311, file: !5273, line: 93, baseType: !275, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5311, file: !5273, line: 100, baseType: !275, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !5167, file: !245, line: 1186, baseType: !5266, size: 128, offset: 1088)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !5167, file: !245, line: 1187, baseType: !275, size: 64, offset: 1216)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5167, file: !245, line: 1189, baseType: !275, size: 64, offset: 1280)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5167, file: !245, line: 1190, baseType: !275, size: 64, offset: 1344)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5167, file: !245, line: 1191, baseType: !275, size: 64, offset: 1408)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5167, file: !245, line: 1192, baseType: !275, size: 64, offset: 1472)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !5167, file: !245, line: 1193, baseType: !275, size: 64, offset: 1536)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !5167, file: !245, line: 1194, baseType: !275, size: 64, offset: 1600)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !5167, file: !245, line: 1195, baseType: !275, size: 64, offset: 1664)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !4398, file: !245, line: 812, baseType: !42, size: 64, offset: 8000)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !4398, file: !245, line: 820, baseType: !2962, size: 64, offset: 8064)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4398, file: !245, line: 821, baseType: !5335, size: 64, offset: 8128)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !245, line: 821, flags: DIFlagFwdDecl)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4398, file: !245, line: 828, baseType: !5338, size: 64, offset: 8192)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !245, line: 1046, size: 1664, elements: !5340)
!5340 = !{!5341, !5342}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !5339, file: !245, line: 1047, baseType: !1629, size: 1600)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5339, file: !245, line: 1048, baseType: !5343, size: 64, offset: 1600)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !245, line: 1039, size: 256, elements: !5345)
!5345 = !{!5346, !5347, !5348, !5349}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5344, file: !245, line: 1040, baseType: !275, size: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5344, file: !245, line: 1041, baseType: !275, size: 64, offset: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !5344, file: !245, line: 1042, baseType: !275, size: 64, offset: 128)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5344, file: !245, line: 1043, baseType: !44, size: 32, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !4398, file: !245, line: 832, baseType: !42, size: 64, offset: 8256)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !4398, file: !245, line: 834, baseType: !119, size: 128, offset: 8320)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !4398, file: !245, line: 842, baseType: !643, size: 32, offset: 8448)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4367, file: !4368, line: 461, baseType: !61, size: 64, offset: 704)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4367, file: !4368, line: 463, baseType: !61, size: 64, offset: 768)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4367, file: !4368, line: 465, baseType: !61, size: 64, offset: 832)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4367, file: !4368, line: 466, baseType: !61, size: 64, offset: 896)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4367, file: !4368, line: 467, baseType: !61, size: 64, offset: 960)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4367, file: !4368, line: 473, baseType: !5359, size: 64, offset: 1024)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4368, line: 10, flags: DIFlagFwdDecl)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4367, file: !4368, line: 480, baseType: !61, size: 64, offset: 1088)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4367, file: !4368, line: 482, baseType: !6, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4367, file: !4368, line: 491, baseType: !642, size: 32, offset: 1184)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4367, file: !4368, line: 501, baseType: !5365, size: 33792, offset: 1536)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5366, line: 448, size: 33792, elements: !5367)
!5366 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5367 = !{!5368, !5369, !5370, !5478, !5479, !5485, !5486}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5365, file: !5366, line: 461, baseType: !6, size: 32)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5365, file: !5366, line: 468, baseType: !61, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5365, file: !5366, line: 476, baseType: !5371, size: 64, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5366, line: 356, size: 33280, align: 512, elements: !5373)
!5373 = !{!5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5372, file: !5366, line: 358, baseType: !6, size: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5372, file: !5366, line: 361, baseType: !6, size: 32, offset: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5372, file: !5366, line: 364, baseType: !275, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5372, file: !5366, line: 367, baseType: !275, size: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5372, file: !5366, line: 370, baseType: !275, size: 64, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5372, file: !5366, line: 373, baseType: !6, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5372, file: !5366, line: 376, baseType: !6, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5372, file: !5366, line: 391, baseType: !6, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5372, file: !5366, line: 394, baseType: !6, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5372, file: !5366, line: 397, baseType: !5384, size: 32768, offset: 512)
!5384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5366, line: 348, size: 32768, elements: !5385)
!5385 = !{!5386, !5401, !5438, !5463, !5476}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5384, file: !5366, line: 349, baseType: !5387, size: 896)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5366, line: 12, size: 896, elements: !5388)
!5388 = !{!5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5400}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5387, file: !5366, line: 13, baseType: !642, size: 32)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5387, file: !5366, line: 14, baseType: !642, size: 32, offset: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5387, file: !5366, line: 15, baseType: !642, size: 32, offset: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5387, file: !5366, line: 16, baseType: !642, size: 32, offset: 96)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5387, file: !5366, line: 17, baseType: !642, size: 32, offset: 128)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5387, file: !5366, line: 18, baseType: !642, size: 32, offset: 160)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5387, file: !5366, line: 19, baseType: !642, size: 32, offset: 192)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5387, file: !5366, line: 22, baseType: !5397, size: 640, offset: 224)
!5397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 640, elements: !5398)
!5398 = !{!5399}
!5399 = !DISubrange(count: 20)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5387, file: !5366, line: 25, baseType: !642, size: 32, offset: 864)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5384, file: !5366, line: 350, baseType: !5402, size: 4096, align: 128)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5366, line: 34, size: 4096, align: 128, elements: !5403)
!5403 = !{!5404, !5405, !5406, !5407, !5408, !5423, !5424, !5425, !5427, !5429, !5433}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5402, file: !5366, line: 35, baseType: !115, size: 16)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5402, file: !5366, line: 36, baseType: !115, size: 16, offset: 16)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5402, file: !5366, line: 37, baseType: !115, size: 16, offset: 32)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5402, file: !5366, line: 38, baseType: !115, size: 16, offset: 48)
!5408 = !DIDerivedType(tag: DW_TAG_member, scope: !5402, file: !5366, line: 39, baseType: !5409, size: 128, offset: 64)
!5409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5402, file: !5366, line: 39, size: 128, elements: !5410)
!5410 = !{!5411, !5416}
!5411 = !DIDerivedType(tag: DW_TAG_member, scope: !5409, file: !5366, line: 40, baseType: !5412, size: 128)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5409, file: !5366, line: 40, size: 128, elements: !5413)
!5413 = !{!5414, !5415}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5412, file: !5366, line: 41, baseType: !275, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5412, file: !5366, line: 42, baseType: !275, size: 64, offset: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, scope: !5409, file: !5366, line: 44, baseType: !5417, size: 128)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5409, file: !5366, line: 44, size: 128, elements: !5418)
!5418 = !{!5419, !5420, !5421, !5422}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5417, file: !5366, line: 45, baseType: !642, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5417, file: !5366, line: 46, baseType: !642, size: 32, offset: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5417, file: !5366, line: 47, baseType: !642, size: 32, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5417, file: !5366, line: 48, baseType: !642, size: 32, offset: 96)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5402, file: !5366, line: 51, baseType: !642, size: 32, offset: 192)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5402, file: !5366, line: 52, baseType: !642, size: 32, offset: 224)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5402, file: !5366, line: 55, baseType: !5426, size: 1024, offset: 256)
!5426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 1024, elements: !2115)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5402, file: !5366, line: 58, baseType: !5428, size: 2048, offset: 1280)
!5428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 2048, elements: !352)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5402, file: !5366, line: 60, baseType: !5430, size: 384, offset: 3328)
!5430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 384, elements: !5431)
!5431 = !{!5432}
!5432 = !DISubrange(count: 12)
!5433 = !DIDerivedType(tag: DW_TAG_member, scope: !5402, file: !5366, line: 62, baseType: !5434, size: 384, offset: 3712)
!5434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5402, file: !5366, line: 62, size: 384, elements: !5435)
!5435 = !{!5436, !5437}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5434, file: !5366, line: 63, baseType: !5430, size: 384)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5434, file: !5366, line: 64, baseType: !5430, size: 384)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5384, file: !5366, line: 351, baseType: !5439, size: 1088)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5366, line: 79, size: 1088, elements: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5462}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5439, file: !5366, line: 80, baseType: !642, size: 32)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5439, file: !5366, line: 81, baseType: !642, size: 32, offset: 32)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5439, file: !5366, line: 82, baseType: !642, size: 32, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5439, file: !5366, line: 83, baseType: !642, size: 32, offset: 96)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5439, file: !5366, line: 84, baseType: !642, size: 32, offset: 128)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5439, file: !5366, line: 85, baseType: !642, size: 32, offset: 160)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5439, file: !5366, line: 86, baseType: !642, size: 32, offset: 192)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5439, file: !5366, line: 88, baseType: !5397, size: 640, offset: 224)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5439, file: !5366, line: 89, baseType: !105, size: 8, offset: 864)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5439, file: !5366, line: 90, baseType: !105, size: 8, offset: 872)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5439, file: !5366, line: 91, baseType: !105, size: 8, offset: 880)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5439, file: !5366, line: 92, baseType: !105, size: 8, offset: 888)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5439, file: !5366, line: 93, baseType: !105, size: 8, offset: 896)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5439, file: !5366, line: 94, baseType: !105, size: 8, offset: 904)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5439, file: !5366, line: 95, baseType: !5456, size: 64, offset: 960)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5458, line: 11, size: 128, elements: !5459)
!5458 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5459 = !{!5460, !5461}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5457, file: !5458, line: 12, baseType: !271, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5457, file: !5458, line: 13, baseType: !5271, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5439, file: !5366, line: 96, baseType: !642, size: 32, offset: 1024)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5384, file: !5366, line: 352, baseType: !5464, size: 4608, align: 512)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5366, line: 333, size: 4608, align: 512, elements: !5465)
!5465 = !{!5466, !5467, !5474}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5464, file: !5366, line: 334, baseType: !5402, size: 4096, align: 128)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5464, file: !5366, line: 335, baseType: !5468, size: 512, offset: 4096)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5366, line: 312, size: 512, elements: !5469)
!5469 = !{!5470, !5471, !5472}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5468, file: !5366, line: 313, baseType: !275, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5468, file: !5366, line: 314, baseType: !275, size: 64, offset: 64)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5468, file: !5366, line: 315, baseType: !5473, size: 384, offset: 128)
!5473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 384, elements: !1179)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5464, file: !5366, line: 336, baseType: !5475, offset: 4608)
!5475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, elements: !1353)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5384, file: !5366, line: 353, baseType: !5477, size: 32768)
!5477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 32768, elements: !1690)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5365, file: !5366, line: 484, baseType: !5371, size: 64, offset: 192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5365, file: !5366, line: 491, baseType: !5480, size: 128, offset: 256)
!5480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5366, line: 404, size: 128, elements: !5481)
!5481 = !{!5482, !5483, !5484}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5480, file: !5366, line: 424, baseType: !275, size: 64)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5480, file: !5366, line: 432, baseType: !6, size: 32, offset: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5480, file: !5366, line: 440, baseType: !6, size: 32, offset: 96)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5365, file: !5366, line: 498, baseType: !5480, size: 128, offset: 384)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5365, file: !5366, line: 508, baseType: !5372, size: 33280, align: 512, offset: 512)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !611, file: !612, line: 31, baseType: !4852, size: 64, offset: 448)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !611, file: !612, line: 32, baseType: !6, size: 32, offset: 512)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !611, file: !612, line: 33, baseType: !610, size: 64, offset: 576)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !611, file: !612, line: 35, baseType: !5491, size: 64, offset: 640)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !612, line: 17, flags: DIFlagFwdDecl)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !611, file: !612, line: 37, baseType: !1081, size: 64, offset: 704)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !611, file: !612, line: 38, baseType: !1320, size: 64, offset: 768)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !611, file: !612, line: 39, baseType: !44, size: 32, offset: 832)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !611, file: !612, line: 40, baseType: !1114, size: 192, offset: 896)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !611, file: !612, line: 42, baseType: !44, size: 32, offset: 1088)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !555, file: !143, line: 951, baseType: !253, size: 32, offset: 128)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !555, file: !143, line: 952, baseType: !438, size: 32, offset: 160)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !555, file: !143, line: 952, baseType: !438, size: 32, offset: 192)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !555, file: !143, line: 953, baseType: !44, size: 32, offset: 224)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !508, file: !143, line: 1012, baseType: !1490, size: 64, offset: 896)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !508, file: !143, line: 1013, baseType: !5504, size: 256, offset: 960)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !143, line: 970, size: 256, elements: !5505)
!5505 = !{!5506, !5507, !5508, !5509, !5510, !5511}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5504, file: !143, line: 971, baseType: !61, size: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5504, file: !143, line: 972, baseType: !6, size: 32, offset: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5504, file: !143, line: 973, baseType: !6, size: 32, offset: 96)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5504, file: !143, line: 974, baseType: !6, size: 32, offset: 128)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5504, file: !143, line: 975, baseType: !6, size: 32, offset: 160)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5504, file: !143, line: 976, baseType: !63, size: 64, offset: 192)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !508, file: !143, line: 1014, baseType: !3183, size: 128, offset: 1216)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !508, file: !143, line: 1015, baseType: !2487, size: 64, offset: 1344)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !508, file: !143, line: 1016, baseType: !3674, size: 64, offset: 1408)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !508, file: !143, line: 1018, baseType: !275, size: 64, offset: 1472)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !508, file: !143, line: 1020, baseType: !42, size: 64, offset: 1536)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !508, file: !143, line: 1023, baseType: !42, size: 64, offset: 1600)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !508, file: !143, line: 1027, baseType: !5519, size: 64, offset: 1664)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !508, file: !143, line: 1029, baseType: !2483, size: 64, offset: 1728)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !508, file: !143, line: 1030, baseType: !3404, size: 32, offset: 1792)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !508, file: !143, line: 1031, baseType: !3404, size: 32, offset: 1824)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !503, file: !455, line: 255, baseType: !1775, size: 64, offset: 128)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !503, file: !455, line: 256, baseType: !42, size: 64, offset: 192)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !503, file: !455, line: 259, baseType: !540, size: 256, offset: 256)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !503, file: !455, line: 260, baseType: !540, size: 256, offset: 512)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !503, file: !455, line: 261, baseType: !44, size: 32, offset: 768)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !503, file: !455, line: 262, baseType: !119, size: 128, offset: 832)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !503, file: !455, line: 263, baseType: !347, size: 64, offset: 960)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !503, file: !455, line: 265, baseType: !57, size: 64, offset: 1024)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !503, file: !455, line: 266, baseType: !407, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !503, file: !455, line: 267, baseType: !407, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !503, file: !455, line: 268, baseType: !3795, size: 64, offset: 1152)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !496, file: !455, line: 277, baseType: !1868, size: 64, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !496, file: !455, line: 290, baseType: !1805, size: 64, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !496, file: !455, line: 292, baseType: !1793, size: 64, offset: 192)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !496, file: !455, line: 293, baseType: !1801, size: 64, offset: 256)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !496, file: !455, line: 294, baseType: !1797, size: 64, offset: 320)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !496, file: !455, line: 296, baseType: !1892, size: 64, offset: 384)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !496, file: !455, line: 306, baseType: !57, size: 64, offset: 448)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !496, file: !455, line: 313, baseType: !407, size: 8, offset: 512)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !496, file: !455, line: 314, baseType: !1892, size: 64, offset: 576)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !496, file: !455, line: 317, baseType: !1896, size: 64, offset: 640)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !496, file: !455, line: 320, baseType: !5545, size: 64, offset: 704)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!44, !502, !3752}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !491, file: !455, line: 176, baseType: !5549, size: 64, offset: 64)
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !455, line: 35, flags: DIFlagFwdDecl)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !491, file: !455, line: 177, baseType: !63, size: 64, offset: 128)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !491, file: !455, line: 178, baseType: !453, size: 64, offset: 192)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !454, file: !455, line: 215, baseType: !42, size: 64, offset: 768)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !454, file: !455, line: 221, baseType: !275, size: 64, offset: 832)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !455, line: 223, baseType: !48, size: 16, offset: 896)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !454, file: !455, line: 224, baseType: !46, size: 16, offset: 912)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !454, file: !455, line: 225, baseType: !5558, size: 64, offset: 960)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !455, line: 36, flags: DIFlagFwdDecl)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !454, file: !455, line: 227, baseType: !520, size: 128, align: 64, offset: 1024)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !307, file: !308, line: 71, baseType: !5562, size: 32, offset: 448)
!5562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5563, line: 19, size: 32, elements: !5564)
!5563 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5564 = !{!5565}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5562, file: !5563, line: 20, baseType: !583, size: 32)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !307, file: !308, line: 73, baseType: !6, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !307, file: !308, line: 74, baseType: !6, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !307, file: !308, line: 75, baseType: !6, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !307, file: !308, line: 76, baseType: !6, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !307, file: !308, line: 77, baseType: !6, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !298, file: !299, line: 88, baseType: !5572, size: 64, offset: 128)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!46, !306, !5575, !44}
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !299, line: 175, size: 512, elements: !5577)
!5577 = !{!5578, !5579, !5580, !5581, !5585, !5589, !5590}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5576, file: !299, line: 176, baseType: !382, size: 128)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5576, file: !299, line: 177, baseType: !57, size: 64, offset: 128)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5576, file: !299, line: 178, baseType: !42, size: 64, offset: 192)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !5576, file: !299, line: 179, baseType: !5582, size: 64, offset: 256)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!2483}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5576, file: !299, line: 180, baseType: !5586, size: 64, offset: 320)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!378, !507, !306, !5575, !347, !63, !57}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5576, file: !299, line: 182, baseType: !5586, size: 64, offset: 384)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5576, file: !299, line: 184, baseType: !5591, size: 64, offset: 448)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{!44, !507, !306, !5575, !3752}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !298, file: !299, line: 90, baseType: !5595, size: 64, offset: 192)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !298, file: !299, line: 91, baseType: !5597, size: 64, offset: 256)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !292, file: !293, line: 9, baseType: !5599, size: 64, offset: 128)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!407, !44, !42}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "no_check", scope: !292, file: !293, line: 10, baseType: !407, size: 8, offset: 192)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !292, file: !293, line: 11, baseType: !275, size: 64, offset: 256)
!5604 = !DIGlobalVariableExpression(var: !5605, expr: !DIExpression())
!5605 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !5606, isLocal: true, isDefinition: true)
!5606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 56, elements: !2789)
!5607 = !DIGlobalVariableExpression(var: !5608, expr: !DIExpression())
!5608 = distinct !DIGlobalVariable(name: "group_aperf", scope: !2, file: !3, line: 136, type: !298, isLocal: true, isDefinition: true)
!5609 = !DIGlobalVariableExpression(var: !5610, expr: !DIExpression())
!5610 = distinct !DIGlobalVariable(name: "attrs_aperf", scope: !2, file: !3, line: 136, type: !5611, isLocal: true, isDefinition: true)
!5611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, elements: !2017)
!5612 = !DIGlobalVariableExpression(var: !5613, expr: !DIExpression())
!5613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !1178, isLocal: true, isDefinition: true)
!5614 = !DIGlobalVariableExpression(var: !5615, expr: !DIExpression())
!5615 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !5616, isLocal: true, isDefinition: true)
!5616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 88, elements: !5617)
!5617 = !{!5618}
!5618 = !DISubrange(count: 11)
!5619 = !DIGlobalVariableExpression(var: !5620, expr: !DIExpression())
!5620 = distinct !DIGlobalVariable(name: "attr_aperf", scope: !2, file: !3, line: 124, type: !5621, isLocal: true, isDefinition: true)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_pmu_events_attr", file: !245, line: 1811, size: 384, elements: !5622)
!5622 = !{!5623, !5636, !5637}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5621, file: !245, line: 1812, baseType: !5624, size: 256)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !198, line: 106, size: 256, elements: !5625)
!5625 = !{!5626, !5627, !5632}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5624, file: !198, line: 107, baseType: !382, size: 128)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5624, file: !198, line: 108, baseType: !5628, size: 64, offset: 128)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!378, !4420, !5631, !347}
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5624, file: !198, line: 110, baseType: !5633, size: 64, offset: 192)
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5634, size: 64)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!378, !4420, !5631, !38, !57}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5621, file: !245, line: 1813, baseType: !275, size: 64, offset: 256)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "event_str", scope: !5621, file: !245, line: 1814, baseType: !38, size: 64, offset: 320)
!5638 = !DIGlobalVariableExpression(var: !5639, expr: !DIExpression())
!5639 = distinct !DIGlobalVariable(name: "group_mperf", scope: !2, file: !3, line: 137, type: !298, isLocal: true, isDefinition: true)
!5640 = !DIGlobalVariableExpression(var: !5641, expr: !DIExpression())
!5641 = distinct !DIGlobalVariable(name: "attrs_mperf", scope: !2, file: !3, line: 137, type: !5611, isLocal: true, isDefinition: true)
!5642 = !DIGlobalVariableExpression(var: !5643, expr: !DIExpression())
!5643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !1178, isLocal: true, isDefinition: true)
!5644 = !DIGlobalVariableExpression(var: !5645, expr: !DIExpression())
!5645 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !5616, isLocal: true, isDefinition: true)
!5646 = !DIGlobalVariableExpression(var: !5647, expr: !DIExpression())
!5647 = distinct !DIGlobalVariable(name: "attr_mperf", scope: !2, file: !3, line: 125, type: !5621, isLocal: true, isDefinition: true)
!5648 = !DIGlobalVariableExpression(var: !5649, expr: !DIExpression())
!5649 = distinct !DIGlobalVariable(name: "group_pperf", scope: !2, file: !3, line: 138, type: !298, isLocal: true, isDefinition: true)
!5650 = !DIGlobalVariableExpression(var: !5651, expr: !DIExpression())
!5651 = distinct !DIGlobalVariable(name: "attrs_pperf", scope: !2, file: !3, line: 138, type: !5611, isLocal: true, isDefinition: true)
!5652 = !DIGlobalVariableExpression(var: !5653, expr: !DIExpression())
!5653 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !1178, isLocal: true, isDefinition: true)
!5654 = !DIGlobalVariableExpression(var: !5655, expr: !DIExpression())
!5655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !5616, isLocal: true, isDefinition: true)
!5656 = !DIGlobalVariableExpression(var: !5657, expr: !DIExpression())
!5657 = distinct !DIGlobalVariable(name: "attr_pperf", scope: !2, file: !3, line: 126, type: !5621, isLocal: true, isDefinition: true)
!5658 = !DIGlobalVariableExpression(var: !5659, expr: !DIExpression())
!5659 = distinct !DIGlobalVariable(name: "group_smi", scope: !2, file: !3, line: 139, type: !298, isLocal: true, isDefinition: true)
!5660 = !DIGlobalVariableExpression(var: !5661, expr: !DIExpression())
!5661 = distinct !DIGlobalVariable(name: "attrs_smi", scope: !2, file: !3, line: 139, type: !5611, isLocal: true, isDefinition: true)
!5662 = !DIGlobalVariableExpression(var: !5663, expr: !DIExpression())
!5663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !286, isLocal: true, isDefinition: true)
!5664 = !DIGlobalVariableExpression(var: !5665, expr: !DIExpression())
!5665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !5616, isLocal: true, isDefinition: true)
!5666 = !DIGlobalVariableExpression(var: !5667, expr: !DIExpression())
!5667 = distinct !DIGlobalVariable(name: "attr_smi", scope: !2, file: !3, line: 127, type: !5621, isLocal: true, isDefinition: true)
!5668 = !DIGlobalVariableExpression(var: !5669, expr: !DIExpression())
!5669 = distinct !DIGlobalVariable(name: "group_ptsc", scope: !2, file: !3, line: 140, type: !298, isLocal: true, isDefinition: true)
!5670 = !DIGlobalVariableExpression(var: !5671, expr: !DIExpression())
!5671 = distinct !DIGlobalVariable(name: "attrs_ptsc", scope: !2, file: !3, line: 140, type: !5611, isLocal: true, isDefinition: true)
!5672 = !DIGlobalVariableExpression(var: !5673, expr: !DIExpression())
!5673 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !5674, isLocal: true, isDefinition: true)
!5674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 40, elements: !1099)
!5675 = !DIGlobalVariableExpression(var: !5676, expr: !DIExpression())
!5676 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !5616, isLocal: true, isDefinition: true)
!5677 = !DIGlobalVariableExpression(var: !5678, expr: !DIExpression())
!5678 = distinct !DIGlobalVariable(name: "attr_ptsc", scope: !2, file: !3, line: 128, type: !5621, isLocal: true, isDefinition: true)
!5679 = !DIGlobalVariableExpression(var: !5680, expr: !DIExpression())
!5680 = distinct !DIGlobalVariable(name: "group_irperf", scope: !2, file: !3, line: 141, type: !298, isLocal: true, isDefinition: true)
!5681 = !DIGlobalVariableExpression(var: !5682, expr: !DIExpression())
!5682 = distinct !DIGlobalVariable(name: "attrs_irperf", scope: !2, file: !3, line: 141, type: !5611, isLocal: true, isDefinition: true)
!5683 = !DIGlobalVariableExpression(var: !5684, expr: !DIExpression())
!5684 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !5606, isLocal: true, isDefinition: true)
!5685 = !DIGlobalVariableExpression(var: !5686, expr: !DIExpression())
!5686 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !5616, isLocal: true, isDefinition: true)
!5687 = !DIGlobalVariableExpression(var: !5688, expr: !DIExpression())
!5688 = distinct !DIGlobalVariable(name: "attr_irperf", scope: !2, file: !3, line: 129, type: !5621, isLocal: true, isDefinition: true)
!5689 = !DIGlobalVariableExpression(var: !5690, expr: !DIExpression())
!5690 = distinct !DIGlobalVariable(name: "group_therm", scope: !2, file: !3, line: 150, type: !298, isLocal: true, isDefinition: true)
!5691 = !DIGlobalVariableExpression(var: !5692, expr: !DIExpression())
!5692 = distinct !DIGlobalVariable(name: "attrs_therm", scope: !2, file: !3, line: 143, type: !5693, isLocal: true, isDefinition: true)
!5693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !287)
!5694 = !DIGlobalVariableExpression(var: !5695, expr: !DIExpression())
!5695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !5696, isLocal: true, isDefinition: true)
!5696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 152, elements: !5697)
!5697 = !{!5698}
!5698 = !DISubrange(count: 19)
!5699 = !DIGlobalVariableExpression(var: !5700, expr: !DIExpression())
!5700 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !5616, isLocal: true, isDefinition: true)
!5701 = !DIGlobalVariableExpression(var: !5702, expr: !DIExpression())
!5702 = distinct !DIGlobalVariable(name: "attr_therm", scope: !2, file: !3, line: 130, type: !5621, isLocal: true, isDefinition: true)
!5703 = !DIGlobalVariableExpression(var: !5704, expr: !DIExpression())
!5704 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !5705, isLocal: true, isDefinition: true)
!5705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 224, elements: !5706)
!5706 = !{!5707}
!5707 = !DISubrange(count: 28)
!5708 = !DIGlobalVariableExpression(var: !5709, expr: !DIExpression())
!5709 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !5710, isLocal: true, isDefinition: true)
!5710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16, elements: !2017)
!5711 = !DIGlobalVariableExpression(var: !5712, expr: !DIExpression())
!5712 = distinct !DIGlobalVariable(name: "attr_therm_snap", scope: !2, file: !3, line: 131, type: !5621, isLocal: true, isDefinition: true)
!5713 = !DIGlobalVariableExpression(var: !5714, expr: !DIExpression())
!5714 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !5715, isLocal: true, isDefinition: true)
!5715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !5716)
!5716 = !{!5717}
!5717 = !DISubrange(count: 24)
!5718 = !DIGlobalVariableExpression(var: !5719, expr: !DIExpression())
!5719 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !5710, isLocal: true, isDefinition: true)
!5720 = !DIGlobalVariableExpression(var: !5721, expr: !DIExpression())
!5721 = distinct !DIGlobalVariable(name: "attr_therm_unit", scope: !2, file: !3, line: 132, type: !5621, isLocal: true, isDefinition: true)
!5722 = !DIGlobalVariableExpression(var: !5723, expr: !DIExpression())
!5723 = distinct !DIGlobalVariable(name: "msr_mask", scope: !2, file: !3, line: 134, type: !61, isLocal: true, isDefinition: true)
!5724 = !DIGlobalVariableExpression(var: !5725, expr: !DIExpression())
!5725 = distinct !DIGlobalVariable(name: "pmu_msr", scope: !2, file: !3, line: 290, type: !4415, isLocal: true, isDefinition: true)
!5726 = !DIGlobalVariableExpression(var: !5727, expr: !DIExpression())
!5727 = distinct !DIGlobalVariable(name: "attr_groups", scope: !2, file: !3, line: 186, type: !5728, isLocal: true, isDefinition: true)
!5728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 192, elements: !348)
!5729 = !DIGlobalVariableExpression(var: !5730, expr: !DIExpression())
!5730 = distinct !DIGlobalVariable(name: "events_attr_group", scope: !2, file: !3, line: 171, type: !298, isLocal: true, isDefinition: true)
!5731 = !DIGlobalVariableExpression(var: !5732, expr: !DIExpression())
!5732 = distinct !DIGlobalVariable(name: "events_attrs", scope: !2, file: !3, line: 166, type: !5611, isLocal: true, isDefinition: true)
!5733 = !DIGlobalVariableExpression(var: !5734, expr: !DIExpression())
!5734 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !286, isLocal: true, isDefinition: true)
!5735 = !DIGlobalVariableExpression(var: !5736, expr: !DIExpression())
!5736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !5616, isLocal: true, isDefinition: true)
!5737 = !DIGlobalVariableExpression(var: !5738, expr: !DIExpression())
!5738 = distinct !DIGlobalVariable(name: "attr_tsc", scope: !2, file: !3, line: 123, type: !5621, isLocal: true, isDefinition: true)
!5739 = !DIGlobalVariableExpression(var: !5740, expr: !DIExpression())
!5740 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !5606, isLocal: true, isDefinition: true)
!5741 = !DIGlobalVariableExpression(var: !5742, expr: !DIExpression())
!5742 = distinct !DIGlobalVariable(name: "format_attr_group", scope: !2, file: !3, line: 181, type: !298, isLocal: true, isDefinition: true)
!5743 = !DIGlobalVariableExpression(var: !5744, expr: !DIExpression())
!5744 = distinct !DIGlobalVariable(name: "format_attrs", scope: !2, file: !3, line: 177, type: !5611, isLocal: true, isDefinition: true)
!5745 = !DIGlobalVariableExpression(var: !5746, expr: !DIExpression())
!5746 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !1178, isLocal: true, isDefinition: true)
!5747 = !DIGlobalVariableExpression(var: !5748, expr: !DIExpression())
!5748 = distinct !DIGlobalVariable(name: "format_attr_event", scope: !2, file: !3, line: 176, type: !5624, isLocal: true, isDefinition: true)
!5749 = !DIGlobalVariableExpression(var: !5750, expr: !DIExpression())
!5750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !5751, isLocal: true, isDefinition: true)
!5751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 104, elements: !5752)
!5752 = !{!5753}
!5753 = !DISubrange(count: 13)
!5754 = !DIGlobalVariableExpression(var: !5755, expr: !DIExpression())
!5755 = distinct !DIGlobalVariable(name: "attr_update", scope: !2, file: !3, line: 192, type: !5756, isLocal: true, isDefinition: true)
!5756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 512, elements: !788)
!5757 = !{i32 7, !"Dwarf Version", i32 5}
!5758 = !{i32 2, !"Debug Info Version", i32 3}
!5759 = !{i32 1, !"wchar_size", i32 2}
!5760 = !{i32 8, !"cf-protection-branch", i32 1}
!5761 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5762 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5763 = !{i32 1, !"Code Model", i32 2}
!5764 = !{i32 1, !"override-stack-alignment", i32 8}
!5765 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5766 = distinct !DISubprogram(name: "__initstub__kmod_msr__314_316_msr_init6", scope: !3, file: !3, line: 316, type: !2771, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5767 = !DILocation(line: 316, column: 1, scope: !5766)
!5768 = distinct !DISubprogram(name: "msr_init", scope: !3, file: !3, line: 303, type: !2771, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5769 = !DILocation(line: 305, column: 6, scope: !5768)
!5770 = !DILocation(line: 305, column: 7, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 305, column: 6)
!5772 = !DILocation(line: 306, column: 3, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 306, column: 3)
!5774 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 305, column: 38)
!5775 = !DILocation(line: 306, column: 3, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 306, column: 3)
!5777 = !DILocation(line: 307, column: 3, scope: !5774)
!5778 = !DILocation(line: 310, column: 13, scope: !5768)
!5779 = !DILocation(line: 310, column: 11, scope: !5768)
!5780 = !DILocation(line: 312, column: 2, scope: !5768)
!5781 = !DILocation(line: 314, column: 2, scope: !5768)
!5782 = !DILocation(line: 315, column: 1, scope: !5768)
!5783 = distinct !DISubprogram(name: "arch_test_bit", scope: !5784, file: !5784, line: 237, type: !5785, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5784 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!407, !61, !5787}
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5789)
!5789 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!5790 = !{!5791, !5792}
!5791 = !DILocalVariable(name: "nr", arg: 1, scope: !5783, file: !5784, line: 237, type: !61)
!5792 = !DILocalVariable(name: "addr", arg: 2, scope: !5783, file: !5784, line: 237, type: !5787)
!5793 = !DILocation(line: 237, column: 29, scope: !5783)
!5794 = !DILocation(line: 237, column: 63, scope: !5783)
!5795 = !DILocation(line: 239, column: 30, scope: !5783)
!5796 = !DILocation(line: 239, column: 9, scope: !5783)
!5797 = !DILocation(line: 239, column: 54, scope: !5783)
!5798 = !DILocation(line: 239, column: 58, scope: !5783)
!5799 = !DILocation(line: 239, column: 36, scope: !5783)
!5800 = !DILocation(line: 240, column: 26, scope: !5783)
!5801 = !DILocation(line: 240, column: 30, scope: !5783)
!5802 = !DILocation(line: 240, column: 8, scope: !5783)
!5803 = !DILocation(line: 239, column: 2, scope: !5783)
!5804 = !DISubprogram(name: "_printk", scope: !5805, file: !5805, line: 153, type: !5806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5805 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!44, !38, null}
!5808 = !DISubprogram(name: "perf_msr_probe", scope: !293, file: !293, line: 15, type: !5809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!61, !5811, !44, !407, !42}
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!5812 = !DISubprogram(name: "perf_pmu_register", scope: !245, file: !245, line: 1080, type: !5813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{!44, !4414, !38, !44}
!5815 = distinct !DISubprogram(name: "constant_test_bit", scope: !5784, file: !5784, line: 204, type: !5816, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5818)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!407, !271, !5787}
!5818 = !{!5819, !5820}
!5819 = !DILocalVariable(name: "nr", arg: 1, scope: !5815, file: !5784, line: 204, type: !271)
!5820 = !DILocalVariable(name: "addr", arg: 2, scope: !5815, file: !5784, line: 204, type: !5787)
!5821 = !DILocation(line: 204, column: 52, scope: !5815)
!5822 = !DILocation(line: 204, column: 86, scope: !5815)
!5823 = !DILocation(line: 206, column: 19, scope: !5815)
!5824 = !DILocation(line: 206, column: 22, scope: !5815)
!5825 = !DILocation(line: 206, column: 15, scope: !5815)
!5826 = !DILocation(line: 207, column: 4, scope: !5815)
!5827 = !DILocation(line: 207, column: 9, scope: !5815)
!5828 = !DILocation(line: 207, column: 12, scope: !5815)
!5829 = !DILocation(line: 206, column: 44, scope: !5815)
!5830 = !DILocation(line: 207, column: 37, scope: !5815)
!5831 = !DILocation(line: 206, column: 2, scope: !5815)
!5832 = distinct !DISubprogram(name: "variable_test_bit", scope: !5784, file: !5784, line: 224, type: !5816, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5833)
!5833 = !{!5834, !5835, !5836}
!5834 = !DILocalVariable(name: "nr", arg: 1, scope: !5832, file: !5784, line: 224, type: !271)
!5835 = !DILocalVariable(name: "addr", arg: 2, scope: !5832, file: !5784, line: 224, type: !5787)
!5836 = !DILocalVariable(name: "oldbit", scope: !5832, file: !5784, line: 226, type: !407)
!5837 = !DILocation(line: 224, column: 52, scope: !5832)
!5838 = !DILocation(line: 224, column: 86, scope: !5832)
!5839 = !DILocation(line: 226, column: 2, scope: !5832)
!5840 = !DILocation(line: 226, column: 7, scope: !5832)
!5841 = !DILocation(line: 231, column: 33, scope: !5832)
!5842 = !DILocation(line: 231, column: 46, scope: !5832)
!5843 = !DILocation(line: 228, column: 2, scope: !5832)
!5844 = !{i64 2148056153, i64 2148056227}
!5845 = !DILocation(line: 233, column: 9, scope: !5832)
!5846 = !{i8 0, i8 2}
!5847 = !DILocation(line: 234, column: 1, scope: !5832)
!5848 = !DILocation(line: 233, column: 2, scope: !5832)
!5849 = distinct !DISubprogram(name: "test_aperfmperf", scope: !3, file: !3, line: 20, type: !5600, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5850)
!5850 = !{!5851, !5852}
!5851 = !DILocalVariable(name: "idx", arg: 1, scope: !5849, file: !3, line: 20, type: !44)
!5852 = !DILocalVariable(name: "data", arg: 2, scope: !5849, file: !3, line: 20, type: !42)
!5853 = !DILocation(line: 20, column: 33, scope: !5849)
!5854 = !DILocation(line: 20, column: 44, scope: !5849)
!5855 = !DILocation(line: 22, column: 9, scope: !5849)
!5856 = !DILocation(line: 22, column: 2, scope: !5849)
!5857 = distinct !DISubprogram(name: "test_intel", scope: !3, file: !3, line: 40, type: !5600, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5858 = !{!5859, !5860}
!5859 = !DILocalVariable(name: "idx", arg: 1, scope: !5857, file: !3, line: 40, type: !44)
!5860 = !DILocalVariable(name: "data", arg: 2, scope: !5857, file: !3, line: 40, type: !42)
!5861 = !DILocation(line: 40, column: 28, scope: !5857)
!5862 = !DILocation(line: 40, column: 39, scope: !5857)
!5863 = !DILocation(line: 42, column: 20, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 42, column: 6)
!5865 = !DILocation(line: 42, column: 6, scope: !5864)
!5866 = !DILocation(line: 42, column: 31, scope: !5864)
!5867 = !DILocation(line: 42, column: 51, scope: !5864)
!5868 = !DILocation(line: 43, column: 20, scope: !5864)
!5869 = !DILocation(line: 43, column: 6, scope: !5864)
!5870 = !DILocation(line: 43, column: 24, scope: !5864)
!5871 = !DILocation(line: 42, column: 6, scope: !5857)
!5872 = !DILocation(line: 44, column: 3, scope: !5864)
!5873 = !DILocation(line: 46, column: 24, scope: !5857)
!5874 = !DILocation(line: 46, column: 10, scope: !5857)
!5875 = !DILocation(line: 46, column: 2, scope: !5857)
!5876 = !DILocation(line: 89, column: 7, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 89, column: 7)
!5878 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 46, column: 35)
!5879 = !DILocation(line: 89, column: 11, scope: !5877)
!5880 = !DILocation(line: 89, column: 7, scope: !5878)
!5881 = !DILocation(line: 90, column: 4, scope: !5877)
!5882 = !DILocation(line: 91, column: 3, scope: !5878)
!5883 = !DILocation(line: 115, column: 7, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 115, column: 7)
!5885 = !DILocation(line: 115, column: 11, scope: !5884)
!5886 = !DILocation(line: 115, column: 27, scope: !5884)
!5887 = !DILocation(line: 115, column: 30, scope: !5884)
!5888 = !DILocation(line: 115, column: 34, scope: !5884)
!5889 = !DILocation(line: 115, column: 7, scope: !5878)
!5890 = !DILocation(line: 116, column: 4, scope: !5884)
!5891 = !DILocation(line: 117, column: 3, scope: !5878)
!5892 = !DILocation(line: 120, column: 2, scope: !5857)
!5893 = !DILocation(line: 121, column: 1, scope: !5857)
!5894 = distinct !DISubprogram(name: "test_ptsc", scope: !3, file: !3, line: 25, type: !5600, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5895)
!5895 = !{!5896, !5897}
!5896 = !DILocalVariable(name: "idx", arg: 1, scope: !5894, file: !3, line: 25, type: !44)
!5897 = !DILocalVariable(name: "data", arg: 2, scope: !5894, file: !3, line: 25, type: !42)
!5898 = !DILocation(line: 25, column: 27, scope: !5894)
!5899 = !DILocation(line: 25, column: 38, scope: !5894)
!5900 = !DILocation(line: 27, column: 9, scope: !5894)
!5901 = !DILocation(line: 27, column: 2, scope: !5894)
!5902 = distinct !DISubprogram(name: "test_irperf", scope: !3, file: !3, line: 30, type: !5600, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5903)
!5903 = !{!5904, !5905}
!5904 = !DILocalVariable(name: "idx", arg: 1, scope: !5902, file: !3, line: 30, type: !44)
!5905 = !DILocalVariable(name: "data", arg: 2, scope: !5902, file: !3, line: 30, type: !42)
!5906 = !DILocation(line: 30, column: 29, scope: !5902)
!5907 = !DILocation(line: 30, column: 40, scope: !5902)
!5908 = !DILocation(line: 32, column: 9, scope: !5902)
!5909 = !DILocation(line: 32, column: 2, scope: !5902)
!5910 = distinct !DISubprogram(name: "test_therm_status", scope: !3, file: !3, line: 35, type: !5600, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5911)
!5911 = !{!5912, !5913}
!5912 = !DILocalVariable(name: "idx", arg: 1, scope: !5910, file: !3, line: 35, type: !44)
!5913 = !DILocalVariable(name: "data", arg: 2, scope: !5910, file: !3, line: 35, type: !42)
!5914 = !DILocation(line: 35, column: 35, scope: !5910)
!5915 = !DILocation(line: 35, column: 46, scope: !5910)
!5916 = !DILocation(line: 37, column: 9, scope: !5910)
!5917 = !DILocation(line: 37, column: 2, scope: !5910)
!5918 = distinct !DISubprogram(name: "msr_event_init", scope: !3, file: !3, line: 203, type: !4816, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5919)
!5919 = !{!5920, !5921, !5922, !5924, !5925}
!5920 = !DILocalVariable(name: "event", arg: 1, scope: !5918, file: !3, line: 203, type: !4397)
!5921 = !DILocalVariable(name: "cfg", scope: !5918, file: !3, line: 205, type: !275)
!5922 = !DILocalVariable(name: "_i", scope: !5923, file: !3, line: 217, type: !61)
!5923 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 217, column: 8)
!5924 = !DILocalVariable(name: "_s", scope: !5923, file: !3, line: 217, type: !44)
!5925 = !DILocalVariable(name: "_mask", scope: !5923, file: !3, line: 217, type: !61)
!5926 = !DILocation(line: 203, column: 46, scope: !5918)
!5927 = !DILocation(line: 205, column: 2, scope: !5918)
!5928 = !DILocation(line: 205, column: 6, scope: !5918)
!5929 = !DILocation(line: 205, column: 12, scope: !5918)
!5930 = !DILocation(line: 205, column: 19, scope: !5918)
!5931 = !DILocation(line: 205, column: 24, scope: !5918)
!5932 = !DILocation(line: 207, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 207, column: 6)
!5934 = !DILocation(line: 207, column: 13, scope: !5933)
!5935 = !DILocation(line: 207, column: 18, scope: !5933)
!5936 = !DILocation(line: 207, column: 26, scope: !5933)
!5937 = !DILocation(line: 207, column: 33, scope: !5933)
!5938 = !DILocation(line: 207, column: 38, scope: !5933)
!5939 = !DILocation(line: 207, column: 23, scope: !5933)
!5940 = !DILocation(line: 207, column: 6, scope: !5918)
!5941 = !DILocation(line: 208, column: 3, scope: !5933)
!5942 = !DILocation(line: 211, column: 6, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 211, column: 6)
!5944 = !DILocation(line: 211, column: 13, scope: !5943)
!5945 = !DILocation(line: 211, column: 18, scope: !5943)
!5946 = !DILocation(line: 211, column: 6, scope: !5918)
!5947 = !DILocation(line: 212, column: 3, scope: !5943)
!5948 = !DILocation(line: 214, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 214, column: 6)
!5950 = !DILocation(line: 214, column: 10, scope: !5949)
!5951 = !DILocation(line: 214, column: 6, scope: !5918)
!5952 = !DILocation(line: 215, column: 3, scope: !5949)
!5953 = !DILocation(line: 217, column: 8, scope: !5923)
!5954 = !DILocation(line: 217, column: 8, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 217, column: 8)
!5956 = !DILocation(line: 217, column: 8, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 217, column: 8)
!5958 = !DILocation(line: 217, column: 8, scope: !5918)
!5959 = !DILocation(line: 217, column: 6, scope: !5918)
!5960 = !DILocation(line: 219, column: 8, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 219, column: 6)
!5962 = !DILocation(line: 219, column: 25, scope: !5961)
!5963 = !DILocation(line: 219, column: 22, scope: !5961)
!5964 = !DILocation(line: 219, column: 19, scope: !5961)
!5965 = !DILocation(line: 219, column: 17, scope: !5961)
!5966 = !DILocation(line: 219, column: 6, scope: !5918)
!5967 = !DILocation(line: 220, column: 3, scope: !5961)
!5968 = !DILocation(line: 222, column: 2, scope: !5918)
!5969 = !DILocation(line: 222, column: 9, scope: !5918)
!5970 = !DILocation(line: 222, column: 12, scope: !5918)
!5971 = !DILocation(line: 222, column: 17, scope: !5918)
!5972 = !DILocation(line: 223, column: 29, scope: !5918)
!5973 = !DILocation(line: 223, column: 25, scope: !5918)
!5974 = !DILocation(line: 223, column: 34, scope: !5918)
!5975 = !DILocation(line: 223, column: 2, scope: !5918)
!5976 = !DILocation(line: 223, column: 9, scope: !5918)
!5977 = !DILocation(line: 223, column: 12, scope: !5918)
!5978 = !DILocation(line: 223, column: 23, scope: !5918)
!5979 = !DILocation(line: 224, column: 21, scope: !5918)
!5980 = !DILocation(line: 224, column: 2, scope: !5918)
!5981 = !DILocation(line: 224, column: 9, scope: !5918)
!5982 = !DILocation(line: 224, column: 12, scope: !5918)
!5983 = !DILocation(line: 224, column: 19, scope: !5918)
!5984 = !DILocation(line: 226, column: 2, scope: !5918)
!5985 = !DILocation(line: 227, column: 1, scope: !5918)
!5986 = distinct !DISubprogram(name: "msr_event_add", scope: !3, file: !3, line: 282, type: !4825, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5987)
!5987 = !{!5988, !5989}
!5988 = !DILocalVariable(name: "event", arg: 1, scope: !5986, file: !3, line: 282, type: !4397)
!5989 = !DILocalVariable(name: "flags", arg: 2, scope: !5986, file: !3, line: 282, type: !44)
!5990 = !DILocation(line: 282, column: 45, scope: !5986)
!5991 = !DILocation(line: 282, column: 56, scope: !5986)
!5992 = !DILocation(line: 284, column: 6, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 284, column: 6)
!5994 = !DILocation(line: 284, column: 12, scope: !5993)
!5995 = !DILocation(line: 284, column: 6, scope: !5986)
!5996 = !DILocation(line: 285, column: 19, scope: !5993)
!5997 = !DILocation(line: 285, column: 26, scope: !5993)
!5998 = !DILocation(line: 285, column: 3, scope: !5993)
!5999 = !DILocation(line: 287, column: 2, scope: !5986)
!6000 = distinct !DISubprogram(name: "msr_event_del", scope: !3, file: !3, line: 277, type: !4829, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6001)
!6001 = !{!6002, !6003}
!6002 = !DILocalVariable(name: "event", arg: 1, scope: !6000, file: !3, line: 277, type: !4397)
!6003 = !DILocalVariable(name: "flags", arg: 2, scope: !6000, file: !3, line: 277, type: !44)
!6004 = !DILocation(line: 277, column: 46, scope: !6000)
!6005 = !DILocation(line: 277, column: 57, scope: !6000)
!6006 = !DILocation(line: 279, column: 17, scope: !6000)
!6007 = !DILocation(line: 279, column: 2, scope: !6000)
!6008 = !DILocation(line: 280, column: 1, scope: !6000)
!6009 = distinct !DISubprogram(name: "msr_event_start", scope: !3, file: !3, line: 265, type: !4829, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6010 = !{!6011, !6012, !6013}
!6011 = !DILocalVariable(name: "event", arg: 1, scope: !6009, file: !3, line: 265, type: !4397)
!6012 = !DILocalVariable(name: "flags", arg: 2, scope: !6009, file: !3, line: 265, type: !44)
!6013 = !DILocalVariable(name: "now", scope: !6009, file: !3, line: 267, type: !275)
!6014 = !DILocation(line: 265, column: 48, scope: !6009)
!6015 = !DILocation(line: 265, column: 59, scope: !6009)
!6016 = !DILocation(line: 267, column: 2, scope: !6009)
!6017 = !DILocation(line: 267, column: 6, scope: !6009)
!6018 = !DILocation(line: 267, column: 29, scope: !6009)
!6019 = !DILocation(line: 267, column: 12, scope: !6009)
!6020 = !DILocation(line: 269, column: 2, scope: !6009)
!6021 = !DILocation(line: 270, column: 1, scope: !6009)
!6022 = distinct !DISubprogram(name: "msr_event_stop", scope: !3, file: !3, line: 272, type: !4829, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6023)
!6023 = !{!6024, !6025}
!6024 = !DILocalVariable(name: "event", arg: 1, scope: !6022, file: !3, line: 272, type: !4397)
!6025 = !DILocalVariable(name: "flags", arg: 2, scope: !6022, file: !3, line: 272, type: !44)
!6026 = !DILocation(line: 272, column: 47, scope: !6022)
!6027 = !DILocation(line: 272, column: 58, scope: !6022)
!6028 = !DILocation(line: 274, column: 19, scope: !6022)
!6029 = !DILocation(line: 274, column: 2, scope: !6022)
!6030 = !DILocation(line: 275, column: 1, scope: !6022)
!6031 = distinct !DISubprogram(name: "msr_event_update", scope: !3, file: !3, line: 241, type: !4835, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6032 = !{!6033, !6034, !6035, !6036}
!6033 = !DILocalVariable(name: "event", arg: 1, scope: !6031, file: !3, line: 241, type: !4397)
!6034 = !DILocalVariable(name: "prev", scope: !6031, file: !3, line: 243, type: !275)
!6035 = !DILocalVariable(name: "now", scope: !6031, file: !3, line: 243, type: !275)
!6036 = !DILocalVariable(name: "delta", scope: !6031, file: !3, line: 244, type: !265)
!6037 = !DILocation(line: 241, column: 49, scope: !6031)
!6038 = !DILocation(line: 243, column: 2, scope: !6031)
!6039 = !DILocation(line: 243, column: 6, scope: !6031)
!6040 = !DILocation(line: 243, column: 12, scope: !6031)
!6041 = !DILocation(line: 244, column: 2, scope: !6031)
!6042 = !DILocation(line: 244, column: 6, scope: !6031)
!6043 = !DILocation(line: 247, column: 9, scope: !6031)
!6044 = !DILocation(line: 247, column: 7, scope: !6031)
!6045 = !DILocation(line: 248, column: 2, scope: !6031)
!6046 = !DILocation(line: 249, column: 26, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 248, column: 5)
!6048 = !DILocation(line: 249, column: 9, scope: !6047)
!6049 = !DILocation(line: 249, column: 7, scope: !6047)
!6050 = !DILocation(line: 250, column: 2, scope: !6047)
!6051 = !DILocation(line: 250, column: 33, scope: !6031)
!6052 = !DILocation(line: 250, column: 40, scope: !6031)
!6053 = !DILocation(line: 250, column: 43, scope: !6031)
!6054 = !DILocation(line: 250, column: 62, scope: !6031)
!6055 = !DILocation(line: 250, column: 12, scope: !6031)
!6056 = !DILocation(line: 250, column: 11, scope: !6031)
!6057 = distinct !{!6057, !6045, !6058, !6059, !6060}
!6058 = !DILocation(line: 250, column: 66, scope: !6031)
!6059 = !{!"llvm.loop.mustprogress"}
!6060 = !{!"llvm.loop.unroll.disable"}
!6061 = !DILocation(line: 252, column: 10, scope: !6031)
!6062 = !DILocation(line: 252, column: 16, scope: !6031)
!6063 = !DILocation(line: 252, column: 14, scope: !6031)
!6064 = !DILocation(line: 252, column: 8, scope: !6031)
!6065 = !DILocation(line: 253, column: 6, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 253, column: 6)
!6067 = !DILocation(line: 253, column: 6, scope: !6031)
!6068 = !DILocation(line: 254, column: 25, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 253, column: 55)
!6070 = !DILocation(line: 254, column: 11, scope: !6069)
!6071 = !DILocation(line: 254, column: 9, scope: !6069)
!6072 = !DILocation(line: 255, column: 3, scope: !6069)
!6073 = !DILocation(line: 256, column: 2, scope: !6069)
!6074 = !DILocation(line: 256, column: 13, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 256, column: 13)
!6076 = !DILocation(line: 256, column: 13, scope: !6066)
!6077 = !DILocation(line: 258, column: 9, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 256, column: 70)
!6079 = !DILocation(line: 258, column: 13, scope: !6078)
!6080 = !DILocation(line: 258, column: 31, scope: !6078)
!6081 = !DILocation(line: 258, column: 35, scope: !6078)
!6082 = !DILocation(line: 258, column: 42, scope: !6078)
!6083 = !DILocation(line: 258, column: 7, scope: !6078)
!6084 = !DILocation(line: 259, column: 3, scope: !6078)
!6085 = !DILocation(line: 260, column: 2, scope: !6078)
!6086 = !DILocation(line: 261, column: 3, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 260, column: 9)
!6088 = !DILocation(line: 263, column: 1, scope: !6031)
!6089 = distinct !DISubprogram(name: "event_show", scope: !3, file: !3, line: 176, type: !5629, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6090 = !{!6091, !6092, !6093}
!6091 = !DILocalVariable(name: "dev", arg: 1, scope: !6089, file: !3, line: 176, type: !4420)
!6092 = !DILocalVariable(name: "attr", arg: 2, scope: !6089, file: !3, line: 176, type: !5631)
!6093 = !DILocalVariable(name: "page", arg: 3, scope: !6089, file: !3, line: 176, type: !347)
!6094 = !DILocation(line: 176, column: 1, scope: !6089)
!6095 = !DILocation(line: 176, column: 1, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 176, column: 1)
!6097 = !DISubprogram(name: "sprintf", scope: !6098, file: !6098, line: 10, type: !6099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6098 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!44, !347, !38, null}
!6101 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !6102, file: !6102, line: 36, type: !6103, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6102 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!61, !61, !61}
!6105 = !{!6106, !6107, !6108}
!6106 = !DILocalVariable(name: "index", arg: 1, scope: !6101, file: !6102, line: 36, type: !61)
!6107 = !DILocalVariable(name: "size", arg: 2, scope: !6101, file: !6102, line: 37, type: !61)
!6108 = !DILocalVariable(name: "mask", scope: !6101, file: !6102, line: 39, type: !61)
!6109 = !DILocation(line: 36, column: 67, scope: !6101)
!6110 = !DILocation(line: 37, column: 17, scope: !6101)
!6111 = !DILocation(line: 39, column: 2, scope: !6101)
!6112 = !DILocation(line: 39, column: 16, scope: !6101)
!6113 = !DILocation(line: 43, column: 9, scope: !6101)
!6114 = !DILocation(line: 43, column: 20, scope: !6101)
!6115 = !DILocation(line: 41, column: 2, scope: !6101)
!6116 = !{i64 502202}
!6117 = !DILocation(line: 45, column: 9, scope: !6101)
!6118 = !DILocation(line: 46, column: 1, scope: !6101)
!6119 = !DILocation(line: 45, column: 2, scope: !6101)
!6120 = distinct !DISubprogram(name: "msr_read_counter", scope: !3, file: !3, line: 229, type: !6121, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6123)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{!275, !4397}
!6123 = !{!6124, !6125}
!6124 = !DILocalVariable(name: "event", arg: 1, scope: !6120, file: !3, line: 229, type: !4397)
!6125 = !DILocalVariable(name: "now", scope: !6120, file: !3, line: 231, type: !275)
!6126 = !DILocation(line: 229, column: 55, scope: !6120)
!6127 = !DILocation(line: 231, column: 2, scope: !6120)
!6128 = !DILocation(line: 231, column: 6, scope: !6120)
!6129 = !DILocation(line: 233, column: 6, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 233, column: 6)
!6131 = !DILocation(line: 233, column: 13, scope: !6130)
!6132 = !DILocation(line: 233, column: 16, scope: !6130)
!6133 = !DILocation(line: 233, column: 6, scope: !6120)
!6134 = !DILocation(line: 234, column: 3, scope: !6130)
!6135 = !DILocation(line: 236, column: 9, scope: !6130)
!6136 = !DILocation(line: 236, column: 7, scope: !6130)
!6137 = !DILocation(line: 238, column: 9, scope: !6120)
!6138 = !DILocation(line: 239, column: 1, scope: !6120)
!6139 = !DILocation(line: 238, column: 2, scope: !6120)
!6140 = distinct !DISubprogram(name: "atomic_long_set", scope: !6141, file: !6141, line: 3193, type: !6142, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6144)
!6141 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6142 = !DISubroutineType(types: !6143)
!6143 = !{null, !3399, !271}
!6144 = !{!6145, !6146}
!6145 = !DILocalVariable(name: "v", arg: 1, scope: !6140, file: !6141, line: 3193, type: !3399)
!6146 = !DILocalVariable(name: "i", arg: 2, scope: !6140, file: !6141, line: 3193, type: !271)
!6147 = !DILocation(line: 3193, column: 32, scope: !6140)
!6148 = !DILocation(line: 3193, column: 40, scope: !6140)
!6149 = !DILocation(line: 3195, column: 26, scope: !6140)
!6150 = !DILocation(line: 3195, column: 2, scope: !6140)
!6151 = !DILocation(line: 3196, column: 22, scope: !6140)
!6152 = !DILocation(line: 3196, column: 25, scope: !6140)
!6153 = !DILocation(line: 3196, column: 2, scope: !6140)
!6154 = !DILocation(line: 3197, column: 1, scope: !6140)
!6155 = distinct !DISubprogram(name: "native_read_msr", scope: !6156, file: !6156, line: 114, type: !6157, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6156 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!277, !6}
!6159 = !{!6160, !6161}
!6160 = !DILocalVariable(name: "msr", arg: 1, scope: !6155, file: !6156, line: 114, type: !6)
!6161 = !DILocalVariable(name: "val", scope: !6155, file: !6156, line: 116, type: !277)
!6162 = !DILocation(line: 114, column: 63, scope: !6155)
!6163 = !DILocation(line: 116, column: 2, scope: !6155)
!6164 = !DILocation(line: 116, column: 21, scope: !6155)
!6165 = !DILocation(line: 118, column: 16, scope: !6155)
!6166 = !DILocation(line: 118, column: 8, scope: !6155)
!6167 = !DILocation(line: 118, column: 6, scope: !6155)
!6168 = !DILocation(line: 120, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6155, file: !6156, line: 120, column: 6)
!6170 = !DILocation(line: 120, column: 6, scope: !6155)
!6171 = !DILocation(line: 121, column: 21, scope: !6169)
!6172 = !DILocation(line: 121, column: 26, scope: !6169)
!6173 = !DILocation(line: 121, column: 3, scope: !6169)
!6174 = !DILocation(line: 123, column: 9, scope: !6155)
!6175 = !DILocation(line: 124, column: 1, scope: !6155)
!6176 = !DILocation(line: 123, column: 2, scope: !6155)
!6177 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !6156, file: !6156, line: 197, type: !6178, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!277}
!6180 = !{!6181, !6182}
!6181 = !DILocalVariable(name: "low", scope: !6177, file: !6156, line: 199, type: !61)
!6182 = !DILocalVariable(name: "high", scope: !6177, file: !6156, line: 199, type: !61)
!6183 = !DILocation(line: 199, column: 2, scope: !6177)
!6184 = !DILocation(line: 215, column: 2, scope: !6177)
!6185 = !{i64 2149621516, i64 2149621549, i64 2149621555, i64 2149621571, i64 2149621590, i64 2149621621, i64 2149622573, i64 2149621147, i64 2149622579, i64 2149622627, i64 2149622691, i64 2149622755, i64 2149622812, i64 2149623019, i64 2149623067, i64 2149623131, i64 2149623195, i64 2149623252, i64 2149621265, i64 2149621290, i64 2149623459, i64 2149623588, i64 2149623520, i64 2149623602, i64 2149623616, i64 2149623738, i64 2149623677, i64 2149623752, i64 2149621424}
!6186 = !DILocation(line: 222, column: 9, scope: !6177)
!6187 = !DILocation(line: 223, column: 1, scope: !6177)
!6188 = !DILocation(line: 222, column: 2, scope: !6177)
!6189 = distinct !DISubprogram(name: "__rdmsr", scope: !6156, file: !6156, line: 80, type: !6157, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6190)
!6190 = !{!6191, !6192, !6193}
!6191 = !DILocalVariable(name: "msr", arg: 1, scope: !6189, file: !6156, line: 80, type: !6)
!6192 = !DILocalVariable(name: "low", scope: !6189, file: !6156, line: 82, type: !61)
!6193 = !DILocalVariable(name: "high", scope: !6189, file: !6156, line: 82, type: !61)
!6194 = !DILocation(line: 80, column: 64, scope: !6189)
!6195 = !DILocation(line: 82, column: 2, scope: !6189)
!6196 = !DILocation(line: 87, column: 45, scope: !6189)
!6197 = !DILocation(line: 84, column: 2, scope: !6189)
!6198 = !{i64 1942772, i64 1942793, i64 2149616172, i64 2149616216, i64 2149616239, i64 2149616272, i64 2149616303, i64 2149616342}
!6199 = !DILocation(line: 89, column: 9, scope: !6189)
!6200 = !DILocation(line: 90, column: 1, scope: !6189)
!6201 = !DILocation(line: 89, column: 2, scope: !6189)
!6202 = distinct !DISubprogram(name: "static_key_false", scope: !2951, file: !2951, line: 205, type: !6203, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6217)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!407, !6205}
!6205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6206, size: 64)
!6206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2951, line: 85, size: 128, elements: !6207)
!6207 = !{!6208, !6209}
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6206, file: !2951, line: 86, baseType: !71, size: 32)
!6209 = !DIDerivedType(tag: DW_TAG_member, scope: !6206, file: !2951, line: 101, baseType: !6210, size: 64, offset: 64)
!6210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6206, file: !2951, line: 101, size: 64, elements: !6211)
!6211 = !{!6212, !6213, !6214}
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6210, file: !2951, line: 102, baseType: !61, size: 64)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6210, file: !2951, line: 103, baseType: !2949, size: 64)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6210, file: !2951, line: 104, baseType: !6215, size: 64)
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6216, size: 64)
!6216 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2951, line: 104, flags: DIFlagFwdDecl)
!6217 = !{!6218}
!6218 = !DILocalVariable(name: "key", arg: 1, scope: !6202, file: !2951, line: 205, type: !6205)
!6219 = !DILocation(line: 205, column: 65, scope: !6202)
!6220 = !DILocation(line: 207, column: 28, scope: !6202)
!6221 = !DILocation(line: 207, column: 9, scope: !6202)
!6222 = !DILocation(line: 207, column: 2, scope: !6202)
!6223 = !DISubprogram(name: "do_trace_read_msr", scope: !6156, file: !6156, line: 65, type: !6224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{null, !6, !275, !44}
!6226 = distinct !DISubprogram(name: "arch_static_branch", scope: !6227, file: !6227, line: 25, type: !6228, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6227 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!407, !6205, !407}
!6230 = !{!6231, !6232, !6233}
!6231 = !DILocalVariable(name: "key", arg: 1, scope: !6226, file: !6227, line: 25, type: !6205)
!6232 = !DILocalVariable(name: "branch", arg: 2, scope: !6226, file: !6227, line: 25, type: !407)
!6233 = !DILabel(scope: !6226, name: "l_yes", file: !6227, line: 33)
!6234 = !DILocation(line: 25, column: 67, scope: !6226)
!6235 = !DILocation(line: 25, column: 77, scope: !6226)
!6236 = !DILocation(line: 30, column: 13, scope: !6226)
!6237 = !DILocation(line: 30, column: 28, scope: !6226)
!6238 = !DILocation(line: 30, column: 26, scope: !6226)
!6239 = !DILocation(line: 27, column: 2, scope: !6226)
!6240 = !{i64 1607094, i64 1607138, i64 2149091821, i64 2149091842, i64 2149091868, i64 2149091901, i64 2149091935, i64 2149091959}
!6241 = !DILocation(line: 32, column: 2, scope: !6226)
!6242 = !DILocation(line: 33, column: 1, scope: !6226)
!6243 = !DILocation(line: 34, column: 2, scope: !6226)
!6244 = !DILocation(line: 35, column: 1, scope: !6226)
!6245 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6246, file: !6246, line: 80, type: !6247, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6252)
!6246 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6247 = !DISubroutineType(types: !6248)
!6248 = !{null, !6249, !57}
!6249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6250, size: 64)
!6250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6251)
!6251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6252 = !{!6253, !6254}
!6253 = !DILocalVariable(name: "v", arg: 1, scope: !6245, file: !6246, line: 80, type: !6249)
!6254 = !DILocalVariable(name: "size", arg: 2, scope: !6245, file: !6246, line: 80, type: !57)
!6255 = !DILocation(line: 80, column: 74, scope: !6245)
!6256 = !DILocation(line: 80, column: 84, scope: !6245)
!6257 = !DILocation(line: 82, column: 20, scope: !6245)
!6258 = !DILocation(line: 82, column: 23, scope: !6245)
!6259 = !DILocation(line: 82, column: 2, scope: !6245)
!6260 = !DILocation(line: 83, column: 2, scope: !6245)
!6261 = !DILocation(line: 84, column: 1, scope: !6245)
!6262 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !534, file: !534, line: 76, type: !6142, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6263)
!6263 = !{!6264, !6265}
!6264 = !DILocalVariable(name: "v", arg: 1, scope: !6262, file: !534, line: 76, type: !3399)
!6265 = !DILocalVariable(name: "i", arg: 2, scope: !6262, file: !534, line: 76, type: !271)
!6266 = !DILocation(line: 76, column: 36, scope: !6262)
!6267 = !DILocation(line: 76, column: 44, scope: !6262)
!6268 = !DILocation(line: 79, column: 19, scope: !6262)
!6269 = !DILocation(line: 79, column: 22, scope: !6262)
!6270 = !DILocation(line: 79, column: 2, scope: !6262)
!6271 = !DILocation(line: 83, column: 1, scope: !6262)
!6272 = distinct !DISubprogram(name: "kasan_check_write", scope: !6273, file: !6273, line: 44, type: !6274, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6276)
!6273 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!407, !6249, !6}
!6276 = !{!6277, !6278}
!6277 = !DILocalVariable(name: "p", arg: 1, scope: !6272, file: !6273, line: 44, type: !6249)
!6278 = !DILocalVariable(name: "size", arg: 2, scope: !6272, file: !6273, line: 44, type: !6)
!6279 = !DILocation(line: 44, column: 59, scope: !6272)
!6280 = !DILocation(line: 44, column: 75, scope: !6272)
!6281 = !DILocation(line: 46, column: 2, scope: !6272)
!6282 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6283, file: !6283, line: 229, type: !6284, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6286)
!6283 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6284 = !DISubroutineType(types: !6285)
!6285 = !{null, !6249, !57, !44}
!6286 = !{!6287, !6288, !6289}
!6287 = !DILocalVariable(name: "ptr", arg: 1, scope: !6282, file: !6283, line: 229, type: !6249)
!6288 = !DILocalVariable(name: "size", arg: 2, scope: !6282, file: !6283, line: 229, type: !57)
!6289 = !DILocalVariable(name: "type", arg: 3, scope: !6282, file: !6283, line: 230, type: !44)
!6290 = !DILocation(line: 229, column: 60, scope: !6282)
!6291 = !DILocation(line: 229, column: 72, scope: !6282)
!6292 = !DILocation(line: 230, column: 15, scope: !6282)
!6293 = !DILocation(line: 230, column: 23, scope: !6282)
!6294 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !6295, file: !6295, line: 2600, type: !6296, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6299)
!6295 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6296 = !DISubroutineType(types: !6297)
!6297 = !{null, !6298, !265}
!6298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!6299 = !{!6300, !6301}
!6300 = !DILocalVariable(name: "v", arg: 1, scope: !6294, file: !6295, line: 2600, type: !6298)
!6301 = !DILocalVariable(name: "i", arg: 2, scope: !6294, file: !6295, line: 2600, type: !265)
!6302 = !DILocation(line: 2600, column: 30, scope: !6294)
!6303 = !DILocation(line: 2600, column: 37, scope: !6294)
!6304 = !DILocation(line: 2602, column: 20, scope: !6294)
!6305 = !DILocation(line: 2602, column: 23, scope: !6294)
!6306 = !DILocation(line: 2602, column: 2, scope: !6294)
!6307 = !DILocation(line: 2603, column: 1, scope: !6294)
!6308 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !6309, file: !6309, line: 18, type: !6296, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6310)
!6309 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6310 = !{!6311, !6312}
!6311 = !DILocalVariable(name: "v", arg: 1, scope: !6308, file: !6309, line: 18, type: !6298)
!6312 = !DILocalVariable(name: "i", arg: 2, scope: !6308, file: !6309, line: 18, type: !265)
!6313 = !DILocation(line: 18, column: 59, scope: !6308)
!6314 = !DILocation(line: 18, column: 66, scope: !6308)
!6315 = !DILocation(line: 20, column: 2, scope: !6308)
!6316 = !DILocation(line: 20, column: 2, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6308, file: !6309, line: 20, column: 2)
!6318 = !DILocation(line: 21, column: 1, scope: !6308)
!6319 = distinct !DISubprogram(name: "atomic_long_read", scope: !6141, file: !6141, line: 3158, type: !6320, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6324)
!6320 = !DISubroutineType(types: !6321)
!6321 = !{!271, !6322}
!6322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6323, size: 64)
!6323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!6324 = !{!6325}
!6325 = !DILocalVariable(name: "v", arg: 1, scope: !6319, file: !6141, line: 3158, type: !6322)
!6326 = !DILocation(line: 3158, column: 39, scope: !6319)
!6327 = !DILocation(line: 3160, column: 25, scope: !6319)
!6328 = !DILocation(line: 3160, column: 2, scope: !6319)
!6329 = !DILocation(line: 3161, column: 30, scope: !6319)
!6330 = !DILocation(line: 3161, column: 9, scope: !6319)
!6331 = !DILocation(line: 3161, column: 2, scope: !6319)
!6332 = distinct !DISubprogram(name: "local64_try_cmpxchg", scope: !4903, file: !4903, line: 50, type: !6333, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6336)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{!407, !6335, !272, !265}
!6335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!6336 = !{!6337, !6338, !6339}
!6337 = !DILocalVariable(name: "l", arg: 1, scope: !6332, file: !4903, line: 50, type: !6335)
!6338 = !DILocalVariable(name: "old", arg: 2, scope: !6332, file: !4903, line: 50, type: !272)
!6339 = !DILocalVariable(name: "new", arg: 3, scope: !6332, file: !4903, line: 50, type: !265)
!6340 = !DILocation(line: 50, column: 51, scope: !6332)
!6341 = !DILocation(line: 50, column: 59, scope: !6332)
!6342 = !DILocation(line: 50, column: 68, scope: !6332)
!6343 = !DILocation(line: 52, column: 28, scope: !6332)
!6344 = !DILocation(line: 52, column: 31, scope: !6332)
!6345 = !DILocation(line: 52, column: 42, scope: !6332)
!6346 = !DILocation(line: 52, column: 47, scope: !6332)
!6347 = !DILocation(line: 52, column: 9, scope: !6332)
!6348 = !DILocation(line: 52, column: 2, scope: !6332)
!6349 = distinct !DISubprogram(name: "sign_extend64", scope: !6350, file: !6350, line: 198, type: !6351, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6350 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!6351 = !DISubroutineType(types: !6352)
!6352 = !{!266, !276, !44}
!6353 = !{!6354, !6355, !6356}
!6354 = !DILocalVariable(name: "value", arg: 1, scope: !6349, file: !6350, line: 198, type: !276)
!6355 = !DILocalVariable(name: "index", arg: 2, scope: !6349, file: !6350, line: 198, type: !44)
!6356 = !DILocalVariable(name: "shift", scope: !6349, file: !6350, line: 200, type: !107)
!6357 = !DILocation(line: 198, column: 50, scope: !6349)
!6358 = !DILocation(line: 198, column: 61, scope: !6349)
!6359 = !DILocation(line: 200, column: 2, scope: !6349)
!6360 = !DILocation(line: 200, column: 7, scope: !6349)
!6361 = !DILocation(line: 200, column: 20, scope: !6349)
!6362 = !DILocation(line: 200, column: 18, scope: !6349)
!6363 = !DILocation(line: 200, column: 15, scope: !6349)
!6364 = !DILocation(line: 201, column: 17, scope: !6349)
!6365 = !DILocation(line: 201, column: 26, scope: !6349)
!6366 = !DILocation(line: 201, column: 23, scope: !6349)
!6367 = !DILocation(line: 201, column: 36, scope: !6349)
!6368 = !DILocation(line: 201, column: 33, scope: !6349)
!6369 = !DILocation(line: 202, column: 1, scope: !6349)
!6370 = !DILocation(line: 201, column: 2, scope: !6349)
!6371 = distinct !DISubprogram(name: "local_add", scope: !2411, file: !2411, line: 31, type: !6372, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6375)
!6372 = !DISubroutineType(types: !6373)
!6373 = !{null, !271, !6374}
!6374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!6375 = !{!6376, !6377}
!6376 = !DILocalVariable(name: "i", arg: 1, scope: !6371, file: !2411, line: 31, type: !271)
!6377 = !DILocalVariable(name: "l", arg: 2, scope: !6371, file: !2411, line: 31, type: !6374)
!6378 = !DILocation(line: 31, column: 35, scope: !6371)
!6379 = !DILocation(line: 31, column: 47, scope: !6371)
!6380 = !DILocation(line: 34, column: 16, scope: !6371)
!6381 = !DILocation(line: 34, column: 19, scope: !6371)
!6382 = !DILocation(line: 34, column: 21, scope: !6371)
!6383 = !DILocation(line: 35, column: 16, scope: !6371)
!6384 = !DILocation(line: 33, column: 2, scope: !6371)
!6385 = !{i64 2154720968}
!6386 = !DILocation(line: 36, column: 1, scope: !6371)
!6387 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6246, file: !6246, line: 66, type: !6247, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6388)
!6388 = !{!6389, !6390}
!6389 = !DILocalVariable(name: "v", arg: 1, scope: !6387, file: !6246, line: 66, type: !6249)
!6390 = !DILocalVariable(name: "size", arg: 2, scope: !6387, file: !6246, line: 66, type: !57)
!6391 = !DILocation(line: 66, column: 73, scope: !6387)
!6392 = !DILocation(line: 66, column: 83, scope: !6387)
!6393 = !DILocation(line: 68, column: 19, scope: !6387)
!6394 = !DILocation(line: 68, column: 22, scope: !6387)
!6395 = !DILocation(line: 68, column: 2, scope: !6387)
!6396 = !DILocation(line: 69, column: 2, scope: !6387)
!6397 = !DILocation(line: 70, column: 1, scope: !6387)
!6398 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !534, file: !534, line: 35, type: !6320, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6399)
!6399 = !{!6400}
!6400 = !DILocalVariable(name: "v", arg: 1, scope: !6398, file: !534, line: 35, type: !6322)
!6401 = !DILocation(line: 35, column: 43, scope: !6398)
!6402 = !DILocation(line: 38, column: 27, scope: !6398)
!6403 = !DILocation(line: 38, column: 9, scope: !6398)
!6404 = !DILocation(line: 38, column: 2, scope: !6398)
!6405 = distinct !DISubprogram(name: "kasan_check_read", scope: !6273, file: !6273, line: 40, type: !6274, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6406)
!6406 = !{!6407, !6408}
!6407 = !DILocalVariable(name: "p", arg: 1, scope: !6405, file: !6273, line: 40, type: !6249)
!6408 = !DILocalVariable(name: "size", arg: 2, scope: !6405, file: !6273, line: 40, type: !6)
!6409 = !DILocation(line: 40, column: 58, scope: !6405)
!6410 = !DILocation(line: 40, column: 74, scope: !6405)
!6411 = !DILocation(line: 42, column: 2, scope: !6405)
!6412 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6295, file: !6295, line: 2554, type: !6413, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6417)
!6413 = !DISubroutineType(types: !6414)
!6414 = !{!265, !6415}
!6415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6416, size: 64)
!6416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!6417 = !{!6418}
!6418 = !DILocalVariable(name: "v", arg: 1, scope: !6412, file: !6295, line: 2554, type: !6415)
!6419 = !DILocation(line: 2554, column: 37, scope: !6412)
!6420 = !DILocation(line: 2556, column: 28, scope: !6412)
!6421 = !DILocation(line: 2556, column: 9, scope: !6412)
!6422 = !DILocation(line: 2556, column: 2, scope: !6412)
!6423 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6309, file: !6309, line: 13, type: !6413, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6424)
!6424 = !{!6425}
!6425 = !DILocalVariable(name: "v", arg: 1, scope: !6423, file: !6309, line: 13, type: !6415)
!6426 = !DILocation(line: 13, column: 65, scope: !6423)
!6427 = !DILocation(line: 15, column: 9, scope: !6423)
!6428 = !DILocation(line: 15, column: 2, scope: !6423)
!6429 = distinct !DISubprogram(name: "local_try_cmpxchg", scope: !2411, file: !2411, line: 128, type: !6430, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6432)
!6430 = !DISubroutineType(types: !6431)
!6431 = !{!407, !6374, !270, !271}
!6432 = !{!6433, !6434, !6435, !6436, !6438, !6439, !6441, !6442, !6443, !6444}
!6433 = !DILocalVariable(name: "l", arg: 1, scope: !6429, file: !2411, line: 128, type: !6374)
!6434 = !DILocalVariable(name: "old", arg: 2, scope: !6429, file: !2411, line: 128, type: !270)
!6435 = !DILocalVariable(name: "new", arg: 3, scope: !6429, file: !2411, line: 128, type: !271)
!6436 = !DILocalVariable(name: "__ai_ptr", scope: !6437, file: !2411, line: 130, type: !272)
!6437 = distinct !DILexicalBlock(scope: !6429, file: !2411, line: 130, column: 9)
!6438 = !DILocalVariable(name: "__ai_oldp", scope: !6437, file: !2411, line: 130, type: !272)
!6439 = !DILocalVariable(name: "success", scope: !6440, file: !2411, line: 130, type: !407)
!6440 = distinct !DILexicalBlock(scope: !6437, file: !2411, line: 130, column: 9)
!6441 = !DILocalVariable(name: "_old", scope: !6440, file: !2411, line: 130, type: !272)
!6442 = !DILocalVariable(name: "__old", scope: !6440, file: !2411, line: 130, type: !265)
!6443 = !DILocalVariable(name: "__new", scope: !6440, file: !2411, line: 130, type: !265)
!6444 = !DILocalVariable(name: "__ptr", scope: !6440, file: !2411, line: 130, type: !273)
!6445 = !DILocation(line: 128, column: 47, scope: !6429)
!6446 = !DILocation(line: 128, column: 56, scope: !6429)
!6447 = !DILocation(line: 128, column: 66, scope: !6429)
!6448 = !DILocation(line: 130, column: 9, scope: !6437)
!6449 = !DILocation(line: 130, column: 9, scope: !6440)
!6450 = !{i64 2154731249, i64 2154731443}
!6451 = !DILocation(line: 130, column: 9, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6440, file: !2411, line: 130, column: 9)
!6453 = !DILocation(line: 130, column: 9, scope: !6429)
!6454 = !DILocation(line: 130, column: 2, scope: !6429)
!6455 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6246, file: !6246, line: 94, type: !6247, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6456 = !{!6457, !6458}
!6457 = !DILocalVariable(name: "v", arg: 1, scope: !6455, file: !6246, line: 94, type: !6249)
!6458 = !DILocalVariable(name: "size", arg: 2, scope: !6455, file: !6246, line: 94, type: !57)
!6459 = !DILocation(line: 94, column: 79, scope: !6455)
!6460 = !DILocation(line: 94, column: 89, scope: !6455)
!6461 = !DILocation(line: 96, column: 20, scope: !6455)
!6462 = !DILocation(line: 96, column: 23, scope: !6455)
!6463 = !DILocation(line: 96, column: 2, scope: !6455)
!6464 = !DILocation(line: 97, column: 2, scope: !6455)
!6465 = !DILocation(line: 98, column: 1, scope: !6455)
!6466 = distinct !DISubprogram(name: "instrument_read_write", scope: !6246, file: !6246, line: 52, type: !6247, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6467)
!6467 = !{!6468, !6469}
!6468 = !DILocalVariable(name: "v", arg: 1, scope: !6466, file: !6246, line: 52, type: !6249)
!6469 = !DILocalVariable(name: "size", arg: 2, scope: !6466, file: !6246, line: 52, type: !57)
!6470 = !DILocation(line: 52, column: 72, scope: !6466)
!6471 = !DILocation(line: 52, column: 82, scope: !6466)
!6472 = !DILocation(line: 54, column: 20, scope: !6466)
!6473 = !DILocation(line: 54, column: 23, scope: !6466)
!6474 = !DILocation(line: 54, column: 2, scope: !6466)
!6475 = !DILocation(line: 55, column: 2, scope: !6466)
!6476 = !DILocation(line: 56, column: 1, scope: !6466)
