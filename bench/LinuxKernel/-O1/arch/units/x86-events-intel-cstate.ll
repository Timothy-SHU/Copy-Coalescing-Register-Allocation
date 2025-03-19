; ModuleID = 'arch/x86/events/intel/cstate.c'
source_filename = "arch/x86/events/intel/cstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_intel_cstate__319_784_cstate_pmu_init\22, \22a\22\09\09"
module asm "__initcall__kmod_intel_cstate__319_784_cstate_pmu_init6:\09\09\09"
module asm ".long\09__initstub__kmod_intel_cstate__319_784_cstate_pmu_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i16, i64 }
%struct.cstate_model = type { i64, i64, i64 }
%struct.perf_msr = type { i64, ptr, ptr, i8, i64 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.perf_pmu_events_attr = type { %struct.device_attribute, i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.31 }
%union.anon.31 = type { i64 }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@__UNIQUE_ID_file311 = internal constant [53 x i8] c"intel_cstate.file=arch/x86/events/intel/intel-cstate\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license312 = internal constant [25 x i8] c"intel_cstate.license=GPL\00", section ".modinfo", align 1, !dbg !5812
@__UNIQUE_ID___addressable___initstub__kmod_intel_cstate__319_784_cstate_pmu_init6320 = internal global ptr @__initstub__kmod_intel_cstate__319_784_cstate_pmu_init6, section ".discard.addressable", align 8, !dbg !5817
@__exitcall_cstate_pmu_exit = internal global ptr @cstate_pmu_exit, section ".exitcall.exit", align 8, !dbg !5819
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@intel_cstates_match = internal constant [57 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 30, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @nhm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 26, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @nhm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 46, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @nhm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 37, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @nhm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 44, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @nhm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 47, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @nhm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 42, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 45, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 58, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 62, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 60, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 63, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 70, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 69, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @hswult_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 55, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @slm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 77, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @slm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 76, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @slm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 61, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 86, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 71, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 79, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 78, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 94, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 85, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @snb_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 142, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @hswult_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 158, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @hswult_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 166, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @hswult_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 165, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @hswult_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 102, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @cnl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 87, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @knl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 133, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @knl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 92, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @glm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 95, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @glm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 122, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @glm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 134, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @glm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 150, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @glm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 156, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @glm_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 190, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 126, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 125, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 106, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icx_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 108, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icx_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 143, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icx_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 207, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icx_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 173, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icx_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 174, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icx_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 140, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 141, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 167, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @icl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 151, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 154, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 183, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 186, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 191, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 172, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 170, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @adl_cstates to i64) }, %struct.x86_cpu_id zeroinitializer], section ".init.rodata", align 16, !dbg !5823
@nhm_cstates = internal constant %struct.cstate_model { i64 6, i64 14, i64 0 }, section ".init.rodata", align 8, !dbg !5838
@snb_cstates = internal constant %struct.cstate_model { i64 14, i64 15, i64 0 }, section ".init.rodata", align 8, !dbg !5840
@hswult_cstates = internal constant %struct.cstate_model { i64 14, i64 127, i64 0 }, section ".init.rodata", align 8, !dbg !5842
@slm_cstates = internal constant %struct.cstate_model { i64 5, i64 4, i64 1 }, section ".init.rodata", align 8, !dbg !5844
@cnl_cstates = internal constant %struct.cstate_model { i64 15, i64 127, i64 0 }, section ".init.rodata", align 8, !dbg !5846
@knl_cstates = internal constant %struct.cstate_model { i64 4, i64 7, i64 2 }, section ".init.rodata", align 8, !dbg !5848
@glm_cstates = internal constant %struct.cstate_model { i64 7, i64 71, i64 0 }, section ".init.rodata", align 8, !dbg !5850
@adl_cstates = internal constant %struct.cstate_model { i64 13, i64 87, i64 0 }, section ".init.rodata", align 8, !dbg !5852
@icl_cstates = internal constant %struct.cstate_model { i64 12, i64 127, i64 0 }, section ".init.rodata", align 8, !dbg !5854
@icx_cstates = internal constant %struct.cstate_model { i64 5, i64 5, i64 0 }, section ".init.rodata", align 8, !dbg !5856
@pkg_msr = internal global [7 x %struct.perf_msr] [%struct.perf_msr { i64 1549, ptr @group_cstate_pkg_c2, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1016, ptr @group_cstate_pkg_c3, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1017, ptr @group_cstate_pkg_c6, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1018, ptr @group_cstate_pkg_c7, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1584, ptr @group_cstate_pkg_c8, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1585, ptr @group_cstate_pkg_c9, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1586, ptr @group_cstate_pkg_c10, ptr @test_msr, i8 0, i64 0 }], align 16, !dbg !5858
@core_msr = internal global [4 x %struct.perf_msr] [%struct.perf_msr { i64 1632, ptr @group_cstate_core_c1, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1020, ptr @group_cstate_core_c3, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1021, ptr @group_cstate_core_c6, ptr @test_msr, i8 0, i64 0 }, %struct.perf_msr { i64 1022, ptr @group_cstate_core_c7, ptr @test_msr, i8 0, i64 0 }], align 16, !dbg !5971
@core_msr_mask = internal global i64 0, align 8, !dbg !6000
@pkg_msr_mask = internal global i64 0, align 8, !dbg !6002
@has_cstate_core = internal global i8 0, align 1, !dbg !6004
@has_cstate_pkg = internal global i8 0, align 1, !dbg !6006
@group_cstate_pkg_c2 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c2, ptr null }, align 8, !dbg !5876
@group_cstate_pkg_c3 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c3, ptr null }, align 8, !dbg !5910
@group_cstate_pkg_c6 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c6, ptr null }, align 8, !dbg !5920
@group_cstate_pkg_c7 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c7, ptr null }, align 8, !dbg !5930
@group_cstate_pkg_c8 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c8, ptr null }, align 8, !dbg !5940
@group_cstate_pkg_c9 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c9, ptr null }, align 8, !dbg !5950
@group_cstate_pkg_c10 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_pkg_c10, ptr null }, align 8, !dbg !5960
@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1, !dbg !5873
@attrs_cstate_pkg_c2 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c2, ptr null], align 16, !dbg !5878
@attr_cstate_pkg_c2 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.2 }, align 8, !dbg !5891
@.str.1 = private unnamed_addr constant [13 x i8] c"c2-residency\00", align 1, !dbg !5881
@.str.2 = private unnamed_addr constant [11 x i8] c"event=0x00\00", align 1, !dbg !5886
@attrs_cstate_pkg_c3 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c3, ptr null], align 16, !dbg !5912
@attr_cstate_pkg_c3 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.4 }, align 8, !dbg !5918
@.str.3 = private unnamed_addr constant [13 x i8] c"c3-residency\00", align 1, !dbg !5914
@.str.4 = private unnamed_addr constant [11 x i8] c"event=0x01\00", align 1, !dbg !5916
@attrs_cstate_pkg_c6 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c6, ptr null], align 16, !dbg !5922
@attr_cstate_pkg_c6 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.6 }, align 8, !dbg !5928
@.str.5 = private unnamed_addr constant [13 x i8] c"c6-residency\00", align 1, !dbg !5924
@.str.6 = private unnamed_addr constant [11 x i8] c"event=0x02\00", align 1, !dbg !5926
@attrs_cstate_pkg_c7 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c7, ptr null], align 16, !dbg !5932
@attr_cstate_pkg_c7 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.8 }, align 8, !dbg !5938
@.str.7 = private unnamed_addr constant [13 x i8] c"c7-residency\00", align 1, !dbg !5934
@.str.8 = private unnamed_addr constant [11 x i8] c"event=0x03\00", align 1, !dbg !5936
@attrs_cstate_pkg_c8 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c8, ptr null], align 16, !dbg !5942
@attr_cstate_pkg_c8 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.10 }, align 8, !dbg !5948
@.str.9 = private unnamed_addr constant [13 x i8] c"c8-residency\00", align 1, !dbg !5944
@.str.10 = private unnamed_addr constant [11 x i8] c"event=0x04\00", align 1, !dbg !5946
@attrs_cstate_pkg_c9 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c9, ptr null], align 16, !dbg !5952
@attr_cstate_pkg_c9 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.12 }, align 8, !dbg !5958
@.str.11 = private unnamed_addr constant [13 x i8] c"c9-residency\00", align 1, !dbg !5954
@.str.12 = private unnamed_addr constant [11 x i8] c"event=0x05\00", align 1, !dbg !5956
@attrs_cstate_pkg_c10 = internal global [2 x ptr] [ptr @attr_cstate_pkg_c10, ptr null], align 16, !dbg !5962
@attr_cstate_pkg_c10 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.14 }, align 8, !dbg !5969
@.str.13 = private unnamed_addr constant [14 x i8] c"c10-residency\00", align 1, !dbg !5964
@.str.14 = private unnamed_addr constant [11 x i8] c"event=0x06\00", align 1, !dbg !5967
@group_cstate_core_c1 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_core_c1, ptr null }, align 8, !dbg !5974
@group_cstate_core_c3 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_core_c3, ptr null }, align 8, !dbg !5982
@group_cstate_core_c6 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_core_c6, ptr null }, align 8, !dbg !5988
@group_cstate_core_c7 = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_cstate_core_c7, ptr null }, align 8, !dbg !5994
@attrs_cstate_core_c1 = internal global [2 x ptr] [ptr @attr_cstate_core_c1, ptr null], align 16, !dbg !5976
@attr_cstate_core_c1 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.2 }, align 8, !dbg !5980
@.str.15 = private unnamed_addr constant [13 x i8] c"c1-residency\00", align 1, !dbg !5978
@attrs_cstate_core_c3 = internal global [2 x ptr] [ptr @attr_cstate_core_c3, ptr null], align 16, !dbg !5984
@attr_cstate_core_c3 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.4 }, align 8, !dbg !5986
@attrs_cstate_core_c6 = internal global [2 x ptr] [ptr @attr_cstate_core_c6, ptr null], align 16, !dbg !5990
@attr_cstate_core_c6 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.6 }, align 8, !dbg !5992
@attrs_cstate_core_c7 = internal global [2 x ptr] [ptr @attr_cstate_core_c7, ptr null], align 16, !dbg !5996
@attr_cstate_core_c7 = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.8 }, align 8, !dbg !5998
@.str.16 = private unnamed_addr constant [25 x i8] c"perf/x86/cstate:starting\00", align 1, !dbg !6008
@.str.17 = private unnamed_addr constant [23 x i8] c"perf/x86/cstate:online\00", align 1, !dbg !6011
@cstate_core_pmu = internal global %struct.pmu { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @core_attr_groups, ptr @core_attr_update, ptr @.str.21, i32 0, i32 65, ptr null, ptr null, %struct.atomic_t zeroinitializer, i32 -1, i32 0, i32 0, ptr null, ptr null, ptr @cstate_pmu_event_init, ptr null, ptr null, ptr @cstate_pmu_event_add, ptr @cstate_pmu_event_del, ptr @cstate_pmu_event_start, ptr @cstate_pmu_event_stop, ptr @cstate_pmu_event_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6035
@.str.18 = private unnamed_addr constant [38 x i8] c"\016Failed to register cstate core pmu\0A\00", align 1, !dbg !6016
@cstate_pkg_pmu = internal global %struct.pmu { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @pkg_attr_groups, ptr @pkg_attr_update, ptr @.str.26, i32 0, i32 65, ptr null, ptr null, %struct.atomic_t zeroinitializer, i32 -1, i32 0, i32 0, ptr null, ptr null, ptr @cstate_pmu_event_init, ptr null, ptr null, ptr @cstate_pmu_event_add, ptr @cstate_pmu_event_del, ptr @cstate_pmu_event_start, ptr @cstate_pmu_event_stop, ptr @cstate_pmu_event_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6070
@.str.19 = private unnamed_addr constant [11 x i8] c"cstate_die\00", align 1, !dbg !6021
@.str.20 = private unnamed_addr constant [37 x i8] c"\016Failed to register cstate pkg pmu\0A\00", align 1, !dbg !6023
@cstate_core_cpu_mask = internal global %struct.cpumask zeroinitializer, align 8, !dbg !6028
@cpu_sibling_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@nr_cpu_ids = external dso_local global i32, align 4
@cstate_pkg_cpu_mask = internal global %struct.cpumask zeroinitializer, align 8, !dbg !6030
@cpu_die_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@core_attr_groups = internal global [4 x ptr] [ptr @core_events_attr_group, ptr @core_format_attr_group, ptr @cpumask_attr_group, ptr null], align 16, !dbg !6037
@core_attr_update = internal global [5 x ptr] [ptr @group_cstate_core_c1, ptr @group_cstate_core_c3, ptr @group_cstate_core_c6, ptr @group_cstate_core_c7, ptr null], align 16, !dbg !6065
@.str.21 = private unnamed_addr constant [12 x i8] c"cstate_core\00", align 1, !dbg !6032
@core_events_attr_group = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_empty, ptr null }, align 8, !dbg !6040
@core_format_attr_group = internal global %struct.attribute_group { ptr @.str.22, ptr null, ptr null, ptr @core_format_attrs, ptr null }, align 8, !dbg !6047
@cpumask_attr_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cstate_cpumask_attrs, ptr null }, align 8, !dbg !6057
@attrs_empty = internal global [1 x ptr] zeroinitializer, align 8, !dbg !6042
@.str.22 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !6045
@core_format_attrs = internal global [2 x ptr] [ptr @format_attr_core_event, ptr null], align 16, !dbg !6049
@format_attr_core_event = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @__cstate_core_event_show, ptr null }, align 8, !dbg !6053
@.str.23 = private unnamed_addr constant [6 x i8] c"event\00", align 1, !dbg !6051
@.str.24 = private unnamed_addr constant [13 x i8] c"config:0-63\0A\00", align 1, !dbg !6055
@cstate_cpumask_attrs = internal global [2 x ptr] [ptr @dev_attr_cpumask, ptr null], align 16, !dbg !6059
@dev_attr_cpumask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @cstate_get_attr_cpumask, ptr null }, align 8, !dbg !6063
@.str.25 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1, !dbg !6061
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__max_die_per_package = external dso_local global i32, align 4
@pkg_attr_groups = internal global [4 x ptr] [ptr @pkg_events_attr_group, ptr @pkg_format_attr_group, ptr @cpumask_attr_group, ptr null], align 16, !dbg !6072
@pkg_attr_update = internal global [8 x ptr] [ptr @group_cstate_pkg_c2, ptr @group_cstate_pkg_c3, ptr @group_cstate_pkg_c6, ptr @group_cstate_pkg_c7, ptr @group_cstate_pkg_c8, ptr @group_cstate_pkg_c9, ptr @group_cstate_pkg_c10, ptr null], align 16, !dbg !6082
@.str.26 = private unnamed_addr constant [11 x i8] c"cstate_pkg\00", align 1, !dbg !6068
@pkg_events_attr_group = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @attrs_empty, ptr null }, align 8, !dbg !6074
@pkg_format_attr_group = internal global %struct.attribute_group { ptr @.str.22, ptr null, ptr null, ptr @pkg_format_attrs, ptr null }, align 8, !dbg !6076
@pkg_format_attrs = internal global [2 x ptr] [ptr @format_attr_pkg_event, ptr null], align 16, !dbg !6078
@format_attr_pkg_event = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @__cstate_pkg_event_show, ptr null }, align 8, !dbg !6080
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__UNIQUE_ID___addressable___initstub__kmod_intel_cstate__319_784_cstate_pmu_init6320, ptr @cstate_pmu_exit, ptr @__exitcall_cstate_pmu_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_intel_cstate__319_784_cstate_pmu_init6() #0 section ".init.text" align 16 !dbg !6097 {
entry:
  %call = call i32 @cstate_pmu_init() #11, !dbg !6098
  ret i32 %call, !dbg !6098
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cstate_pmu_init() #0 section ".init.text" align 16 !dbg !6099 {
entry:
  %retval = alloca i32, align 4
  %id = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #12, !dbg !6104
  call void @llvm.dbg.declare(metadata ptr %id, metadata !6101, metadata !DIExpression()), !dbg !6105
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6103, metadata !DIExpression()), !dbg !6107
  br i1 false, label %cond.true, label %cond.false, !dbg !6108

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !6109

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !6109
  br i1 %call, label %if.then, label %if.end, !dbg !6108

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -19, ptr %retval, align 4, !dbg !6111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6111

if.end:                                           ; preds = %cond.false, %cond.true
  %call1 = call ptr @x86_match_cpu(ptr noundef @intel_cstates_match) #13, !dbg !6112
  store ptr %call1, ptr %id, align 8, !dbg !6113
  %0 = load ptr, ptr %id, align 8, !dbg !6114
  %tobool = icmp ne ptr %0, null, !dbg !6114
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6116

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !6117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6117

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr %id, align 8, !dbg !6118
  %driver_data = getelementptr inbounds %struct.x86_cpu_id, ptr %1, i32 0, i32 6, !dbg !6119
  %2 = load i64, ptr %driver_data, align 8, !dbg !6119
  %3 = inttoptr i64 %2 to ptr, !dbg !6120
  %call4 = call i32 @cstate_probe(ptr noundef %3) #11, !dbg !6121
  store i32 %call4, ptr %err, align 4, !dbg !6122
  %4 = load i32, ptr %err, align 4, !dbg !6123
  %tobool5 = icmp ne i32 %4, 0, !dbg !6123
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6125

if.then6:                                         ; preds = %if.end3
  %5 = load i32, ptr %err, align 4, !dbg !6126
  store i32 %5, ptr %retval, align 4, !dbg !6127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6127

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @cstate_init() #11, !dbg !6128
  store i32 %call8, ptr %retval, align 4, !dbg !6129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6129

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #12, !dbg !6130
  %6 = load i32, ptr %retval, align 4, !dbg !6130
  ret i32 %6, !dbg !6130
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cstate_pmu_exit() #0 section ".exit.text" align 16 !dbg !6131 {
entry:
  call void @cstate_cleanup() #13, !dbg !6132
  ret void, !dbg !6133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cstate_cleanup() #1 align 16 !dbg !6134 {
entry:
  call void @cpuhp_remove_state_nocalls(i32 noundef 170) #13, !dbg !6135
  call void @cpuhp_remove_state_nocalls(i32 noundef 115) #13, !dbg !6136
  %0 = load i8, ptr @has_cstate_core, align 1, !dbg !6137, !range !6139, !noundef !816
  %tobool = trunc i8 %0 to i1, !dbg !6137
  br i1 %tobool, label %if.then, label %if.end, !dbg !6140

if.then:                                          ; preds = %entry
  call void @perf_pmu_unregister(ptr noundef @cstate_core_pmu) #13, !dbg !6141
  br label %if.end, !dbg !6141

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @has_cstate_pkg, align 1, !dbg !6142, !range !6139, !noundef !816
  %tobool1 = trunc i8 %1 to i1, !dbg !6142
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6144

if.then2:                                         ; preds = %if.end
  call void @perf_pmu_unregister(ptr noundef @cstate_pkg_pmu) #13, !dbg !6145
  br label %if.end3, !dbg !6145

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !6146
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6147 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6155, metadata !DIExpression()), !dbg !6157
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6156, metadata !DIExpression()), !dbg !6158
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6159
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6160
  br i1 %1, label %cond.true, label %cond.false, !dbg !6160

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6161
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6162
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6163
  %conv = zext i1 %call to i32, !dbg !6163
  br label %cond.end, !dbg !6160

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6164
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6165
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !6166
  %conv2 = zext i1 %call1 to i32, !dbg !6166
  br label %cond.end, !dbg !6160

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6160
  %tobool = icmp ne i32 %cond, 0, !dbg !6160
  ret i1 %tobool, !dbg !6167
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6168 dso_local ptr @x86_match_cpu(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cstate_probe(ptr noundef %cm) #0 section ".init.text" align 16 !dbg !6172 {
entry:
  %cm.addr = alloca ptr, align 8
  store ptr %cm, ptr %cm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cm.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  %0 = load ptr, ptr %cm.addr, align 8, !dbg !6178
  %quirks = getelementptr inbounds %struct.cstate_model, ptr %0, i32 0, i32 2, !dbg !6180
  %1 = load i64, ptr %quirks, align 8, !dbg !6180
  %and = and i64 %1, 1, !dbg !6181
  %tobool = icmp ne i64 %and, 0, !dbg !6181
  br i1 %tobool, label %if.then, label %if.end, !dbg !6182

if.then:                                          ; preds = %entry
  store i64 1018, ptr getelementptr inbounds ([7 x %struct.perf_msr], ptr @pkg_msr, i64 0, i64 2), align 16, !dbg !6183
  br label %if.end, !dbg !6184

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cm.addr, align 8, !dbg !6185
  %quirks1 = getelementptr inbounds %struct.cstate_model, ptr %2, i32 0, i32 2, !dbg !6187
  %3 = load i64, ptr %quirks1, align 8, !dbg !6187
  %and2 = and i64 %3, 2, !dbg !6188
  %tobool3 = icmp ne i64 %and2, 0, !dbg !6188
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6189

if.then4:                                         ; preds = %if.end
  store i64 1023, ptr getelementptr inbounds ([7 x %struct.perf_msr], ptr @pkg_msr, i64 0, i64 2), align 16, !dbg !6190
  br label %if.end5, !dbg !6191

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load ptr, ptr %cm.addr, align 8, !dbg !6192
  %core_events = getelementptr inbounds %struct.cstate_model, ptr %4, i32 0, i32 0, !dbg !6193
  %call = call i64 @perf_msr_probe(ptr noundef @core_msr, i32 noundef 4, i1 noundef zeroext true, ptr noundef %core_events) #13, !dbg !6194
  store i64 %call, ptr @core_msr_mask, align 8, !dbg !6195
  %5 = load ptr, ptr %cm.addr, align 8, !dbg !6196
  %pkg_events = getelementptr inbounds %struct.cstate_model, ptr %5, i32 0, i32 1, !dbg !6197
  %call6 = call i64 @perf_msr_probe(ptr noundef @pkg_msr, i32 noundef 7, i1 noundef zeroext true, ptr noundef %pkg_events) #13, !dbg !6198
  store i64 %call6, ptr @pkg_msr_mask, align 8, !dbg !6199
  %6 = load i64, ptr @core_msr_mask, align 8, !dbg !6200
  %tobool7 = icmp ne i64 %6, 0, !dbg !6201
  %lnot = xor i1 %tobool7, true, !dbg !6201
  %lnot8 = xor i1 %lnot, true, !dbg !6202
  %frombool = zext i1 %lnot8 to i8, !dbg !6203
  store i8 %frombool, ptr @has_cstate_core, align 1, !dbg !6203
  %7 = load i64, ptr @pkg_msr_mask, align 8, !dbg !6204
  %tobool9 = icmp ne i64 %7, 0, !dbg !6205
  %lnot10 = xor i1 %tobool9, true, !dbg !6205
  %lnot11 = xor i1 %lnot10, true, !dbg !6206
  %frombool12 = zext i1 %lnot11 to i8, !dbg !6207
  store i8 %frombool12, ptr @has_cstate_pkg, align 1, !dbg !6207
  %8 = load i8, ptr @has_cstate_core, align 1, !dbg !6208, !range !6139, !noundef !816
  %tobool13 = trunc i8 %8 to i1, !dbg !6208
  br i1 %tobool13, label %lor.end, label %lor.rhs, !dbg !6209

lor.rhs:                                          ; preds = %if.end5
  %9 = load i8, ptr @has_cstate_pkg, align 1, !dbg !6210, !range !6139, !noundef !816
  %tobool14 = trunc i8 %9 to i1, !dbg !6210
  br label %lor.end, !dbg !6209

lor.end:                                          ; preds = %lor.rhs, %if.end5
  %10 = phi i1 [ true, %if.end5 ], [ %tobool14, %lor.rhs ]
  %11 = zext i1 %10 to i64, !dbg !6211
  %cond = select i1 %10, i32 0, i32 -19, !dbg !6211
  ret i32 %cond, !dbg !6212
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cstate_init() #0 section ".init.text" align 16 !dbg !6213 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6215, metadata !DIExpression()), !dbg !6217
  %call = call i32 @cpuhp_setup_state(i32 noundef 115, ptr noundef @.str.16, ptr noundef @cstate_cpu_init, ptr noundef null) #13, !dbg !6218
  %call1 = call i32 @cpuhp_setup_state(i32 noundef 170, ptr noundef @.str.17, ptr noundef null, ptr noundef @cstate_cpu_exit) #13, !dbg !6219
  %0 = load i8, ptr @has_cstate_core, align 1, !dbg !6220, !range !6139, !noundef !816
  %tobool = trunc i8 %0 to i1, !dbg !6220
  br i1 %tobool, label %if.then, label %if.end6, !dbg !6222

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @cstate_core_pmu, i32 0, i32 6), align 8, !dbg !6223
  %call2 = call i32 @perf_pmu_register(ptr noundef @cstate_core_pmu, ptr noundef %1, i32 noundef -1) #13, !dbg !6225
  store i32 %call2, ptr %err, align 4, !dbg !6226
  %2 = load i32, ptr %err, align 4, !dbg !6227
  %tobool3 = icmp ne i32 %2, 0, !dbg !6227
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6229

if.then4:                                         ; preds = %if.then
  store i8 0, ptr @has_cstate_core, align 1, !dbg !6230
  br label %do.body, !dbg !6232

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !6234

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6234

do.end:                                           ; preds = %do.cond
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #11, !dbg !6232
  store i32 %call5, ptr %tmp, align 4, !dbg !6234
  %3 = load i32, ptr %tmp, align 4, !dbg !6232
  call void @cstate_cleanup() #13, !dbg !6236
  %4 = load i32, ptr %err, align 4, !dbg !6237
  store i32 %4, ptr %retval, align 4, !dbg !6238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6238

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !6239

if.end6:                                          ; preds = %if.end, %entry
  %5 = load i8, ptr @has_cstate_pkg, align 1, !dbg !6240, !range !6139, !noundef !816
  %tobool7 = trunc i8 %5 to i1, !dbg !6240
  br i1 %tobool7, label %if.then8, label %if.end22, !dbg !6242

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @topology_max_die_per_package() #13, !dbg !6243
  %cmp = icmp sgt i32 %call9, 1, !dbg !6246
  br i1 %cmp, label %if.then10, label %if.else, !dbg !6247

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 @perf_pmu_register(ptr noundef @cstate_pkg_pmu, ptr noundef @.str.19, i32 noundef -1) #13, !dbg !6248
  store i32 %call11, ptr %err, align 4, !dbg !6250
  br label %if.end13, !dbg !6251

if.else:                                          ; preds = %if.then8
  %6 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @cstate_pkg_pmu, i32 0, i32 6), align 8, !dbg !6252
  %call12 = call i32 @perf_pmu_register(ptr noundef @cstate_pkg_pmu, ptr noundef %6, i32 noundef -1) #13, !dbg !6254
  store i32 %call12, ptr %err, align 4, !dbg !6255
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %7 = load i32, ptr %err, align 4, !dbg !6256
  %tobool14 = icmp ne i32 %7, 0, !dbg !6256
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !6258

if.then15:                                        ; preds = %if.end13
  store i8 0, ptr @has_cstate_pkg, align 1, !dbg !6259
  br label %do.body16, !dbg !6261

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !6263

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6263

do.end18:                                         ; preds = %do.cond17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #11, !dbg !6261
  store i32 %call20, ptr %tmp19, align 4, !dbg !6263
  %8 = load i32, ptr %tmp19, align 4, !dbg !6261
  call void @cstate_cleanup() #13, !dbg !6265
  %9 = load i32, ptr %err, align 4, !dbg !6266
  store i32 %9, ptr %retval, align 4, !dbg !6267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6267

if.end21:                                         ; preds = %if.end13
  br label %if.end22, !dbg !6268

if.end22:                                         ; preds = %if.end21, %if.end6
  store i32 0, ptr %retval, align 4, !dbg !6269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6269

cleanup:                                          ; preds = %if.end22, %do.end18, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6270
  %10 = load i32, ptr %retval, align 4, !dbg !6270
  ret i32 %10, !dbg !6270
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6271 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6275, metadata !DIExpression()), !dbg !6277
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6276, metadata !DIExpression()), !dbg !6278
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6279
  %and = and i64 %0, 63, !dbg !6280
  %shl = shl i64 1, %and, !dbg !6281
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6282
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6283
  %shr = ashr i64 %2, 6, !dbg !6284
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6282
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6282
  %and1 = and i64 %shl, %3, !dbg !6285
  %cmp = icmp ne i64 %and1, 0, !dbg !6286
  ret i1 %cmp, !dbg !6287
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6288 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6290, metadata !DIExpression()), !dbg !6293
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6291, metadata !DIExpression()), !dbg !6294
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6295
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6292, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6297
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6298
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6299, !srcloc !6300
  %3 = icmp ult i8 %2, 2, !dbg !6299
  call void @llvm.assume(i1 %3), !dbg !6299
  store i8 %2, ptr %oldbit, align 1, !dbg !6299
  %4 = load i8, ptr %oldbit, align 1, !dbg !6301, !range !6139, !noundef !816
  %tobool = trunc i8 %4 to i1, !dbg !6301
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6302
  ret i1 %tobool, !dbg !6303
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6304 dso_local i64 @perf_msr_probe(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_msr(i32 noundef %idx, ptr noundef %data) #8 align 16 !dbg !6308 {
entry:
  %idx.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6314
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6314
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6314

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6314
  %3 = ptrtoint ptr %2 to i64, !dbg !6314
  %cmp = icmp ne i64 %3, 0, !dbg !6314
  %conv = zext i1 %cmp to i32, !dbg !6314
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6314
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6314

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %data.addr, align 8, !dbg !6314
  %6 = ptrtoint ptr %5 to i64, !dbg !6314
  %cmp2 = icmp ne i64 %6, 0, !dbg !6314
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6314

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %data.addr, align 8, !dbg !6314
  %8 = load i64, ptr %7, align 8, !dbg !6314
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6314
  br i1 %9, label %cond.true, label %cond.false, !dbg !6314

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %idx.addr, align 4, !dbg !6314
  %conv5 = sext i32 %10 to i64, !dbg !6314
  %11 = load ptr, ptr %data.addr, align 8, !dbg !6314
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv5, ptr noundef %11) #13, !dbg !6314
  %conv6 = zext i1 %call to i32, !dbg !6314
  br label %cond.end, !dbg !6314

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %idx.addr, align 4, !dbg !6314
  %conv7 = sext i32 %12 to i64, !dbg !6314
  %13 = load ptr, ptr %data.addr, align 8, !dbg !6314
  %call8 = call zeroext i1 @_test_bit(i64 noundef %conv7, ptr noundef %13) #13, !dbg !6314
  %conv9 = zext i1 %call8 to i32, !dbg !6314
  br label %cond.end, !dbg !6314

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %conv9, %cond.false ], !dbg !6314
  %tobool = icmp ne i32 %cond, 0, !dbg !6314
  ret i1 %tobool, !dbg !6315
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @perf_event_sysfs_show(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6316 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6319, metadata !DIExpression()), !dbg !6324
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6320, metadata !DIExpression()), !dbg !6325
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6326
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6321, metadata !DIExpression()), !dbg !6327
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6328
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6329
  %div = udiv i64 %1, 64, !dbg !6329
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6330
  store ptr %add.ptr, ptr %p, align 8, !dbg !6327
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6322, metadata !DIExpression()), !dbg !6332
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6333
  %rem = urem i64 %2, 64, !dbg !6333
  %shl = shl i64 1, %rem, !dbg !6333
  store i64 %shl, ptr %mask, align 8, !dbg !6332
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6323, metadata !DIExpression()), !dbg !6335
  %3 = load ptr, ptr %p, align 8, !dbg !6336
  %4 = load i64, ptr %3, align 8, !dbg !6337
  store i64 %4, ptr %val, align 8, !dbg !6335
  %5 = load i64, ptr %val, align 8, !dbg !6338
  %6 = load i64, ptr %mask, align 8, !dbg !6339
  %and = and i64 %5, %6, !dbg !6340
  %tobool = icmp ne i64 %and, 0, !dbg !6341
  %lnot = xor i1 %tobool, true, !dbg !6341
  %lnot1 = xor i1 %lnot, true, !dbg !6342
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6343
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6343
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6343
  ret i1 %lnot1, !dbg !6344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6345 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6348, metadata !DIExpression()), !dbg !6350
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6349, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6352
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6353
  %div = udiv i64 %1, 64, !dbg !6353
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6354
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6355
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6356
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6357
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6358
  ret i1 %call, !dbg !6359
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6360 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6368, metadata !DIExpression()), !dbg !6370
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6369, metadata !DIExpression()), !dbg !6371
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6372
  %1 = load i64, ptr %size.addr, align 8, !dbg !6373
  %conv = trunc i64 %1 to i32, !dbg !6373
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !6374
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6375
  %3 = load i64, ptr %size.addr, align 8, !dbg !6375
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !6375
  ret void, !dbg !6376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !6377 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6382, metadata !DIExpression()), !dbg !6384
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6383, metadata !DIExpression()), !dbg !6385
  ret i1 true, !dbg !6386
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #1 align 16 !dbg !6387 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6392, metadata !DIExpression()), !dbg !6395
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6393, metadata !DIExpression()), !dbg !6396
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6394, metadata !DIExpression()), !dbg !6397
  ret void, !dbg !6398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #1 align 16 !dbg !6399 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6406, metadata !DIExpression()), !dbg !6410
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6407, metadata !DIExpression()), !dbg !6411
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !6408, metadata !DIExpression()), !dbg !6412
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !6409, metadata !DIExpression()), !dbg !6413
  %0 = load i32, ptr %state.addr, align 4, !dbg !6414
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6415
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !6416
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !6417
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #13, !dbg !6418
  ret i32 %call, !dbg !6419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cstate_cpu_init(i32 noundef %cpu) #8 align 16 !dbg !6420 {
entry:
  %cpu.addr = alloca i32, align 4
  %target = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6422, metadata !DIExpression()), !dbg !6434
  call void @llvm.lifetime.start.p0(i64 4, ptr %target) #12, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %target, metadata !6423, metadata !DIExpression()), !dbg !6436
  br label %do.body, !dbg !6437

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6424, metadata !DIExpression()), !dbg !6438
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6438
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6437
  br label %do.cond, !dbg !6438

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6438

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6427, metadata !DIExpression()), !dbg !6439
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !6439
  %1 = load i64, ptr %__ptr, align 8, !dbg !6439
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6439
  %idxprom = zext i32 %2 to i64, !dbg !6439
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6439
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6439
  %add = add i64 %1, %3, !dbg !6439
  %4 = inttoptr i64 %add to ptr, !dbg !6439
  store ptr %4, ptr %tmp1, align 8, !dbg !6439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6437
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6439
  store ptr %5, ptr %tmp, align 8, !dbg !6438
  %6 = load ptr, ptr %tmp, align 8, !dbg !6437
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %6, i64 0, i64 0, !dbg !6440
  %call = call i32 @cpumask_first_and(ptr noundef @cstate_core_cpu_mask, ptr noundef %arraydecay) #13, !dbg !6440
  store i32 %call, ptr %target, align 4, !dbg !6441
  %7 = load i8, ptr @has_cstate_core, align 1, !dbg !6442, !range !6139, !noundef !816
  %tobool = trunc i8 %7 to i1, !dbg !6442
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6444

land.lhs.true:                                    ; preds = %do.end
  %8 = load i32, ptr %target, align 4, !dbg !6445
  %9 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6446
  %cmp = icmp uge i32 %8, %9, !dbg !6447
  br i1 %cmp, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !6449
  call void @cpumask_set_cpu(i32 noundef %10, ptr noundef @cstate_core_cpu_mask) #13, !dbg !6450
  br label %if.end, !dbg !6450

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  br label %do.body2, !dbg !6451

do.body2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #12, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !6429, metadata !DIExpression()), !dbg !6452
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !6452
  %11 = load ptr, ptr %__vpp_verify3, align 8, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #12, !dbg !6451
  br label %do.cond4, !dbg !6452

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !6452

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #12, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !6432, metadata !DIExpression()), !dbg !6453
  store i64 ptrtoint (ptr @cpu_die_map to i64), ptr %__ptr7, align 8, !dbg !6453
  %12 = load i64, ptr %__ptr7, align 8, !dbg !6453
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !6453
  %idxprom9 = zext i32 %13 to i64, !dbg !6453
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !6453
  %14 = load i64, ptr %arrayidx10, align 8, !dbg !6453
  %add11 = add i64 %12, %14, !dbg !6453
  %15 = inttoptr i64 %add11 to ptr, !dbg !6453
  store ptr %15, ptr %tmp8, align 8, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #12, !dbg !6451
  %16 = load ptr, ptr %tmp8, align 8, !dbg !6453
  store ptr %16, ptr %tmp6, align 8, !dbg !6452
  %17 = load ptr, ptr %tmp6, align 8, !dbg !6451
  %arraydecay12 = getelementptr inbounds [1 x %struct.cpumask], ptr %17, i64 0, i64 0, !dbg !6454
  %call13 = call i32 @cpumask_first_and(ptr noundef @cstate_pkg_cpu_mask, ptr noundef %arraydecay12) #13, !dbg !6454
  store i32 %call13, ptr %target, align 4, !dbg !6455
  %18 = load i8, ptr @has_cstate_pkg, align 1, !dbg !6456, !range !6139, !noundef !816
  %tobool14 = trunc i8 %18 to i1, !dbg !6456
  br i1 %tobool14, label %land.lhs.true15, label %if.end18, !dbg !6458

land.lhs.true15:                                  ; preds = %do.end5
  %19 = load i32, ptr %target, align 4, !dbg !6459
  %20 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6460
  %cmp16 = icmp uge i32 %19, %20, !dbg !6461
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !6462

if.then17:                                        ; preds = %land.lhs.true15
  %21 = load i32, ptr %cpu.addr, align 4, !dbg !6463
  call void @cpumask_set_cpu(i32 noundef %21, ptr noundef @cstate_pkg_cpu_mask) #13, !dbg !6464
  br label %if.end18, !dbg !6464

if.end18:                                         ; preds = %if.then17, %land.lhs.true15, %do.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr %target) #12, !dbg !6465
  ret i32 0, !dbg !6466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cstate_cpu_exit(i32 noundef %cpu) #8 align 16 !dbg !6467 {
entry:
  %cpu.addr = alloca i32, align 4
  %target = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__ptr14 = alloca i64, align 8
  %tmp15 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6469, metadata !DIExpression()), !dbg !6485
  call void @llvm.lifetime.start.p0(i64 4, ptr %target) #12, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %target, metadata !6470, metadata !DIExpression()), !dbg !6487
  %0 = load i8, ptr @has_cstate_core, align 1, !dbg !6488, !range !6139, !noundef !816
  %tobool = trunc i8 %0 to i1, !dbg !6488
  br i1 %tobool, label %land.lhs.true, label %if.end4, !dbg !6489

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6490
  %call = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %1, ptr noundef @cstate_core_cpu_mask) #13, !dbg !6491
  br i1 %call, label %if.then, label %if.end4, !dbg !6492

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !6493

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6471, metadata !DIExpression()), !dbg !6494
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6494
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6493
  br label %do.cond, !dbg !6494

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6494

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6476, metadata !DIExpression()), !dbg !6495
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !6495
  %3 = load i64, ptr %__ptr, align 8, !dbg !6495
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !6495
  %idxprom = zext i32 %4 to i64, !dbg !6495
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6495
  %5 = load i64, ptr %arrayidx, align 8, !dbg !6495
  %add = add i64 %3, %5, !dbg !6495
  %6 = inttoptr i64 %add to ptr, !dbg !6495
  store ptr %6, ptr %tmp1, align 8, !dbg !6495
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6493
  %7 = load ptr, ptr %tmp1, align 8, !dbg !6495
  store ptr %7, ptr %tmp, align 8, !dbg !6494
  %8 = load ptr, ptr %tmp, align 8, !dbg !6493
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %8, i64 0, i64 0, !dbg !6496
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !6497
  %call2 = call i32 @cpumask_any_but(ptr noundef %arraydecay, i32 noundef %9) #13, !dbg !6498
  store i32 %call2, ptr %target, align 4, !dbg !6499
  %10 = load i32, ptr %target, align 4, !dbg !6500
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6502
  %cmp = icmp ult i32 %10, %11, !dbg !6503
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6504

if.then3:                                         ; preds = %do.end
  %12 = load i32, ptr %target, align 4, !dbg !6505
  call void @cpumask_set_cpu(i32 noundef %12, ptr noundef @cstate_core_cpu_mask) #13, !dbg !6507
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !6508
  %14 = load i32, ptr %target, align 4, !dbg !6509
  call void @perf_pmu_migrate_context(ptr noundef @cstate_core_pmu, i32 noundef %13, i32 noundef %14) #13, !dbg !6510
  br label %if.end, !dbg !6511

if.end:                                           ; preds = %if.then3, %do.end
  br label %if.end4, !dbg !6512

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  %15 = load i8, ptr @has_cstate_pkg, align 1, !dbg !6513, !range !6139, !noundef !816
  %tobool5 = trunc i8 %15 to i1, !dbg !6513
  br i1 %tobool5, label %land.lhs.true6, label %if.end24, !dbg !6514

land.lhs.true6:                                   ; preds = %if.end4
  %16 = load i32, ptr %cpu.addr, align 4, !dbg !6515
  %call7 = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %16, ptr noundef @cstate_pkg_cpu_mask) #13, !dbg !6516
  br i1 %call7, label %if.then8, label %if.end24, !dbg !6517

if.then8:                                         ; preds = %land.lhs.true6
  br label %do.body9, !dbg !6518

do.body9:                                         ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify10) #12, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify10, metadata !6478, metadata !DIExpression()), !dbg !6519
  store ptr null, ptr %__vpp_verify10, align 8, !dbg !6519
  %17 = load ptr, ptr %__vpp_verify10, align 8, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify10) #12, !dbg !6518
  br label %do.cond11, !dbg !6519

do.cond11:                                        ; preds = %do.body9
  br label %do.end12, !dbg !6519

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr14) #12, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %__ptr14, metadata !6483, metadata !DIExpression()), !dbg !6520
  store i64 ptrtoint (ptr @cpu_die_map to i64), ptr %__ptr14, align 8, !dbg !6520
  %18 = load i64, ptr %__ptr14, align 8, !dbg !6520
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !6520
  %idxprom16 = zext i32 %19 to i64, !dbg !6520
  %arrayidx17 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom16, !dbg !6520
  %20 = load i64, ptr %arrayidx17, align 8, !dbg !6520
  %add18 = add i64 %18, %20, !dbg !6520
  %21 = inttoptr i64 %add18 to ptr, !dbg !6520
  store ptr %21, ptr %tmp15, align 8, !dbg !6520
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr14) #12, !dbg !6518
  %22 = load ptr, ptr %tmp15, align 8, !dbg !6520
  store ptr %22, ptr %tmp13, align 8, !dbg !6519
  %23 = load ptr, ptr %tmp13, align 8, !dbg !6518
  %arraydecay19 = getelementptr inbounds [1 x %struct.cpumask], ptr %23, i64 0, i64 0, !dbg !6521
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !6522
  %call20 = call i32 @cpumask_any_but(ptr noundef %arraydecay19, i32 noundef %24) #13, !dbg !6523
  store i32 %call20, ptr %target, align 4, !dbg !6524
  %25 = load i32, ptr %target, align 4, !dbg !6525
  %26 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6527
  %cmp21 = icmp ult i32 %25, %26, !dbg !6528
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6529

if.then22:                                        ; preds = %do.end12
  %27 = load i32, ptr %target, align 4, !dbg !6530
  call void @cpumask_set_cpu(i32 noundef %27, ptr noundef @cstate_pkg_cpu_mask) #13, !dbg !6532
  %28 = load i32, ptr %cpu.addr, align 4, !dbg !6533
  %29 = load i32, ptr %target, align 4, !dbg !6534
  call void @perf_pmu_migrate_context(ptr noundef @cstate_pkg_pmu, i32 noundef %28, i32 noundef %29) #13, !dbg !6535
  br label %if.end23, !dbg !6536

if.end23:                                         ; preds = %if.then22, %do.end12
  br label %if.end24, !dbg !6537

if.end24:                                         ; preds = %if.end23, %land.lhs.true6, %if.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %target) #12, !dbg !6538
  ret i32 0, !dbg !6539
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6540 dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6543 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @topology_max_die_per_package() #1 align 16 !dbg !6547 {
entry:
  %0 = load i32, ptr @__max_die_per_package, align 4, !dbg !6549
  ret i32 %0, !dbg !6550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6551 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first_and(ptr noundef %srcp1, ptr noundef %srcp2) #1 align 16 !dbg !6554 {
entry:
  %srcp1.addr = alloca ptr, align 8
  %srcp2.addr = alloca ptr, align 8
  store ptr %srcp1, ptr %srcp1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp1.addr, metadata !6560, metadata !DIExpression()), !dbg !6562
  store ptr %srcp2, ptr %srcp2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp2.addr, metadata !6561, metadata !DIExpression()), !dbg !6563
  %0 = load ptr, ptr %srcp1.addr, align 8, !dbg !6564
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !6564
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6564
  %1 = load ptr, ptr %srcp2.addr, align 8, !dbg !6565
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6565
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !6565
  %call = call i64 @find_first_and_bit(ptr noundef %arraydecay, ptr noundef %arraydecay2, i64 noundef 64) #13, !dbg !6566
  %conv = trunc i64 %call to i32, !dbg !6566
  ret i32 %conv, !dbg !6567
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #4 align 16 !dbg !6568 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6573, metadata !DIExpression()), !dbg !6575
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6574, metadata !DIExpression()), !dbg !6576
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6577
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !6578
  %conv = zext i32 %call to i64, !dbg !6578
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !6579
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6579
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6579
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !6580
  ret void, !dbg !6581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size) #1 align 16 !dbg !6582 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !6587, metadata !DIExpression()), !dbg !6593
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !6588, metadata !DIExpression()), !dbg !6594
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6589, metadata !DIExpression()), !dbg !6595
  %0 = load i64, ptr %size.addr, align 8, !dbg !6596
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6596
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !6596

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6596
  %cmp = icmp ule i64 %2, 64, !dbg !6596
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6596

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6596
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6596
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6597

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6598
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6590, metadata !DIExpression()), !dbg !6599
  %4 = load ptr, ptr %addr1.addr, align 8, !dbg !6600
  %5 = load i64, ptr %4, align 8, !dbg !6601
  %6 = load ptr, ptr %addr2.addr, align 8, !dbg !6602
  %7 = load i64, ptr %6, align 8, !dbg !6603
  %and = and i64 %5, %7, !dbg !6604
  %8 = load i64, ptr %size.addr, align 8, !dbg !6605
  %sub = sub i64 %8, 1, !dbg !6605
  %sub3 = sub i64 63, %sub, !dbg !6605
  %shr = lshr i64 -1, %sub3, !dbg !6605
  %and4 = and i64 -1, %shr, !dbg !6605
  %add = add i64 0, %and4, !dbg !6605
  %and5 = and i64 %and, %add, !dbg !6606
  store i64 %and5, ptr %val, align 8, !dbg !6599
  %9 = load i64, ptr %val, align 8, !dbg !6607
  %tobool = icmp ne i64 %9, 0, !dbg !6607
  br i1 %tobool, label %cond.true, label %cond.false7, !dbg !6607

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %val, align 8, !dbg !6608
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6608
  br i1 %11, label %cond.true6, label %cond.false, !dbg !6608

cond.true6:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !6608
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !6608
  %cast = trunc i64 %13 to i32, !dbg !6608
  %conv = sext i32 %cast to i64, !dbg !6608
  br label %cond.end, !dbg !6608

cond.false:                                       ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6608
  %call = call i64 @variable__ffs(i64 noundef %14) #13, !dbg !6608
  br label %cond.end, !dbg !6608

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i64 [ %conv, %cond.true6 ], [ %call, %cond.false ], !dbg !6608
  br label %cond.end8, !dbg !6607

cond.false7:                                      ; preds = %if.then
  %15 = load i64, ptr %size.addr, align 8, !dbg !6609
  br label %cond.end8, !dbg !6607

cond.end8:                                        ; preds = %cond.false7, %cond.end
  %cond9 = phi i64 [ %cond, %cond.end ], [ %15, %cond.false7 ], !dbg !6607
  store i64 %cond9, ptr %retval, align 8, !dbg !6610
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6611
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %16 = load ptr, ptr %addr1.addr, align 8, !dbg !6612
  %17 = load ptr, ptr %addr2.addr, align 8, !dbg !6613
  %18 = load i64, ptr %size.addr, align 8, !dbg !6614
  %call10 = call i64 @_find_first_and_bit(ptr noundef %16, ptr noundef %17, i64 noundef %18) #13, !dbg !6615
  store i64 %call10, ptr %retval, align 8, !dbg !6616
  br label %return, !dbg !6616

return:                                           ; preds = %if.end, %cond.end8
  %19 = load i64, ptr %retval, align 8, !dbg !6617
  ret i64 %19, !dbg !6617
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !6618 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6622, metadata !DIExpression()), !dbg !6623
  %0 = load i64, ptr %word.addr, align 8, !dbg !6624
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !6625, !srcloc !6626
  store i64 %1, ptr %word.addr, align 8, !dbg !6625
  %2 = load i64, ptr %word.addr, align 8, !dbg !6627
  ret i64 %2, !dbg !6628
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6629 dso_local i64 @_find_first_and_bit(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6630 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6636, metadata !DIExpression()), !dbg !6638
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6637, metadata !DIExpression()), !dbg !6639
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6640
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6641
  %div = sdiv i64 %1, 64, !dbg !6641
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6642
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6643
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6644
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6645
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6646
  ret void, !dbg !6647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !6648 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6652, metadata !DIExpression()), !dbg !6653
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6654
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !6655
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6656
  ret i32 %1, !dbg !6657
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6658 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6664
  %1 = load i64, ptr %size.addr, align 8, !dbg !6665
  %conv = trunc i64 %1 to i32, !dbg !6665
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !6666
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6667
  %3 = load i64, ptr %size.addr, align 8, !dbg !6667
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !6667
  ret void, !dbg !6668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6669 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6671, metadata !DIExpression()), !dbg !6673
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6672, metadata !DIExpression()), !dbg !6674
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6675
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6677
  br i1 %1, label %if.then, label %if.else, !dbg !6678

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6679
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6679
  %shr = ashr i64 %3, 3, !dbg !6679
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6679
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6681
  %and = and i64 %4, 7, !dbg !6681
  %sh_prom = trunc i64 %and to i32, !dbg !6681
  %shl = shl i32 1, %sh_prom, !dbg !6681
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #12, !dbg !6682, !srcloc !6683
  br label %if.end, !dbg !6684

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6685
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6687
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !6688, !srcloc !6689
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6690
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !6691 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6693, metadata !DIExpression()), !dbg !6695
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6694, metadata !DIExpression()), !dbg !6696
  ret i1 true, !dbg !6697
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !6698 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6702, metadata !DIExpression()), !dbg !6704
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6703, metadata !DIExpression()), !dbg !6705
  ret void, !dbg !6706
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %cpu, ptr noundef %cpumask) #4 align 16 !dbg !6707 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6711, metadata !DIExpression()), !dbg !6713
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6712, metadata !DIExpression()), !dbg !6714
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6715
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !6716
  %conv = zext i32 %call to i64, !dbg !6716
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6717
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6717
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6717
  %call1 = call zeroext i1 @test_and_clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !6718
  ret i1 %call1, !dbg !6719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_any_but(ptr noundef %mask, i32 noundef %cpu) #1 align 16 !dbg !6720 {
entry:
  %mask.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6724, metadata !DIExpression()), !dbg !6727
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6725, metadata !DIExpression()), !dbg !6728
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6726, metadata !DIExpression()), !dbg !6730
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6731
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !6732
  store i32 0, ptr %i, align 4, !dbg !6733
  br label %for.cond, !dbg !6733

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !6735
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6735
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6735
  %2 = load i32, ptr %i, align 4, !dbg !6735
  %conv = zext i32 %2 to i64, !dbg !6735
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #13, !dbg !6735
  %conv2 = trunc i64 %call1 to i32, !dbg !6735
  store i32 %conv2, ptr %i, align 4, !dbg !6735
  %3 = load i32, ptr %i, align 4, !dbg !6735
  %cmp = icmp ult i32 %3, 64, !dbg !6735
  br i1 %cmp, label %for.body, label %for.end, !dbg !6733

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !6737
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !6739
  %cmp4 = icmp ne i32 %4, %5, !dbg !6740
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6741

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6742

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6739

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !6735
  %inc = add i32 %6, 1, !dbg !6735
  store i32 %inc, ptr %i, align 4, !dbg !6735
  br label %for.cond, !dbg !6735, !llvm.loop !6743

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !6747
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6748
  ret i32 %7, !dbg !6749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6750 dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6753 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6757, metadata !DIExpression()), !dbg !6759
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6758, metadata !DIExpression()), !dbg !6760
  br label %do.body, !dbg !6761

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6762

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6764
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6765
  %div = sdiv i64 %1, 64, !dbg !6765
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6766
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6767
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6768
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6769
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6770
  ret i1 %call, !dbg !6771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6772 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6774, metadata !DIExpression()), !dbg !6776
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6775, metadata !DIExpression()), !dbg !6777
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6778
  %1 = load i64, ptr %size.addr, align 8, !dbg !6779
  %conv = trunc i64 %1 to i32, !dbg !6779
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !6780
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6781
  %3 = load i64, ptr %size.addr, align 8, !dbg !6781
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !6781
  ret void, !dbg !6782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6783 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6785, metadata !DIExpression()), !dbg !6789
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6786, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6787, metadata !DIExpression()), !dbg !6791
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6791
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6791
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #12, !dbg !6791, !srcloc !6792
  %3 = icmp ult i8 %2, 2, !dbg !6791
  call void @llvm.assume(i1 %3), !dbg !6791
  store i8 %2, ptr %c, align 1, !dbg !6791
  %4 = load i8, ptr %c, align 1, !dbg !6791, !range !6139, !noundef !816
  %tobool = trunc i8 %4 to i1, !dbg !6791
  %frombool = zext i1 %tobool to i8, !dbg !6791
  store i8 %frombool, ptr %tmp, align 1, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !6793
  %5 = load i8, ptr %tmp, align 1, !dbg !6791, !range !6139, !noundef !816
  %tobool1 = trunc i8 %5 to i1, !dbg !6791
  ret i1 %tobool1, !dbg !6794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #1 align 16 !dbg !6795 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6799, metadata !DIExpression()), !dbg !6805
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6800, metadata !DIExpression()), !dbg !6806
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6801, metadata !DIExpression()), !dbg !6807
  %0 = load i64, ptr %size.addr, align 8, !dbg !6808
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6808
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6808

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6808
  %cmp = icmp ule i64 %2, 64, !dbg !6808
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6808

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6808
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6808
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6809

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6810
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6802, metadata !DIExpression()), !dbg !6811
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6812
  %5 = load i64, ptr %size.addr, align 8, !dbg !6812
  %cmp3 = icmp uge i64 %4, %5, !dbg !6812
  %lnot = xor i1 %cmp3, true, !dbg !6812
  %lnot4 = xor i1 %lnot, true, !dbg !6812
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6812
  %conv = sext i32 %lnot.ext to i64, !dbg !6812
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6812
  %tobool = icmp ne i64 %expval, 0, !dbg !6812
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6814

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6815
  store i64 %6, ptr %retval, align 8, !dbg !6816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6816

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6817
  %8 = load i64, ptr %7, align 8, !dbg !6818
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6819
  %shl = shl i64 1, %9, !dbg !6819
  %sub = sub i64 -1, %shl, !dbg !6819
  %add = add i64 %sub, 1, !dbg !6819
  %10 = load i64, ptr %size.addr, align 8, !dbg !6819
  %sub6 = sub i64 %10, 1, !dbg !6819
  %sub7 = sub i64 63, %sub6, !dbg !6819
  %shr = lshr i64 -1, %sub7, !dbg !6819
  %and = and i64 %add, %shr, !dbg !6819
  %add8 = add i64 0, %and, !dbg !6819
  %and9 = and i64 %8, %add8, !dbg !6820
  store i64 %and9, ptr %val, align 8, !dbg !6821
  %11 = load i64, ptr %val, align 8, !dbg !6822
  %tobool10 = icmp ne i64 %11, 0, !dbg !6822
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6822

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6823
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6823
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6823

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6823
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6823
  %cast = trunc i64 %15 to i32, !dbg !6823
  %conv12 = sext i32 %cast to i64, !dbg !6823
  br label %cond.end, !dbg !6823

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6823
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !6823
  br label %cond.end, !dbg !6823

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6823
  br label %cond.end14, !dbg !6822

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6824
  br label %cond.end14, !dbg !6822

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6822
  store i64 %cond15, ptr %retval, align 8, !dbg !6825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6825

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6826
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6827
  %19 = load i64, ptr %size.addr, align 8, !dbg !6828
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6829
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !6830
  store i64 %call17, ptr %retval, align 8, !dbg !6831
  br label %return, !dbg !6831

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6832
  ret i64 %21, !dbg !6832
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6833 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cstate_pmu_event_init(ptr noundef %event) #8 align 16 !dbg !6834 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %cfg = alloca i64, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i64, align 8
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp28 = alloca ptr, align 8
  %_i40 = alloca i64, align 8
  %_s41 = alloca i32, align 4
  %_mask42 = alloca i64, align 8
  %tmp51 = alloca i64, align 8
  %__vpp_verify65 = alloca ptr, align 8
  %tmp68 = alloca ptr, align 8
  %__ptr69 = alloca i64, align 8
  %tmp70 = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6836, metadata !DIExpression()), !dbg !6861
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #12, !dbg !6862
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6837, metadata !DIExpression()), !dbg !6863
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6864
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6865
  %config = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 2, !dbg !6866
  %1 = load i64, ptr %config, align 8, !dbg !6866
  store i64 %1, ptr %cfg, align 8, !dbg !6863
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !6867
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6838, metadata !DIExpression()), !dbg !6868
  %2 = load ptr, ptr %event.addr, align 8, !dbg !6869
  %attr1 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 22, !dbg !6871
  %type = getelementptr inbounds %struct.perf_event_attr, ptr %attr1, i32 0, i32 0, !dbg !6872
  %3 = load i32, ptr %type, align 8, !dbg !6872
  %4 = load ptr, ptr %event.addr, align 8, !dbg !6873
  %pmu = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 13, !dbg !6874
  %5 = load ptr, ptr %pmu, align 8, !dbg !6874
  %type2 = getelementptr inbounds %struct.pmu, ptr %5, i32 0, i32 7, !dbg !6875
  %6 = load i32, ptr %type2, align 8, !dbg !6875
  %cmp = icmp ne i32 %3, %6, !dbg !6876
  br i1 %cmp, label %if.then, label %if.end, !dbg !6877

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !6878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6878

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %event.addr, align 8, !dbg !6879
  %attr3 = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 22, !dbg !6881
  %8 = getelementptr inbounds %struct.perf_event_attr, ptr %attr3, i32 0, i32 3, !dbg !6882
  %9 = load i64, ptr %8, align 8, !dbg !6882
  %tobool = icmp ne i64 %9, 0, !dbg !6879
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !6883

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6884

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %event.addr, align 8, !dbg !6885
  %cpu6 = getelementptr inbounds %struct.perf_event, ptr %10, i32 0, i32 36, !dbg !6887
  %11 = load i32, ptr %cpu6, align 4, !dbg !6887
  %cmp7 = icmp slt i32 %11, 0, !dbg !6888
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6889

if.then8:                                         ; preds = %if.end5
  store i32 -22, ptr %retval, align 4, !dbg !6890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6890

if.end9:                                          ; preds = %if.end5
  %12 = load ptr, ptr %event.addr, align 8, !dbg !6891
  %pmu10 = getelementptr inbounds %struct.perf_event, ptr %12, i32 0, i32 13, !dbg !6892
  %13 = load ptr, ptr %pmu10, align 8, !dbg !6892
  %cmp11 = icmp eq ptr %13, @cstate_core_pmu, !dbg !6893
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !6894

if.then12:                                        ; preds = %if.end9
  %14 = load i64, ptr %cfg, align 8, !dbg !6895
  %cmp13 = icmp uge i64 %14, 4, !dbg !6897
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !6898

if.then14:                                        ; preds = %if.then12
  store i32 -22, ptr %retval, align 4, !dbg !6899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6899

if.end15:                                         ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #12, !dbg !6900
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !6839, metadata !DIExpression()), !dbg !6900
  %15 = load i64, ptr %cfg, align 8, !dbg !6900
  store i64 %15, ptr %_i, align 8, !dbg !6900
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #12, !dbg !6900
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !6843, metadata !DIExpression()), !dbg !6900
  store i32 4, ptr %_s, align 4, !dbg !6900
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #12, !dbg !6900
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !6844, metadata !DIExpression()), !dbg !6900
  %16 = load i64, ptr %_i, align 8, !dbg !6900
  %17 = load i32, ptr %_s, align 4, !dbg !6900
  %conv = sext i32 %17 to i64, !dbg !6900
  %call = call i64 @array_index_mask_nospec(i64 noundef %16, i64 noundef %conv) #13, !dbg !6900
  store i64 %call, ptr %_mask, align 8, !dbg !6900
  br label %do.body, !dbg !6900

do.body:                                          ; preds = %if.end15
  br label %do.cond, !dbg !6901

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6901

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !6900

do.body16:                                        ; preds = %do.end
  br label %do.cond17, !dbg !6903

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6903

do.end18:                                         ; preds = %do.cond17
  %18 = load i64, ptr %_i, align 8, !dbg !6900
  %19 = load i64, ptr %_mask, align 8, !dbg !6900
  %and = and i64 %18, %19, !dbg !6900
  store i64 %and, ptr %tmp, align 8, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #12, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #12, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #12, !dbg !6905
  %20 = load i64, ptr %tmp, align 8, !dbg !6900
  store i64 %20, ptr %cfg, align 8, !dbg !6906
  %21 = load i64, ptr @core_msr_mask, align 8, !dbg !6907
  %22 = load i64, ptr %cfg, align 8, !dbg !6909
  %sh_prom = trunc i64 %22 to i32, !dbg !6910
  %shl = shl i32 1, %sh_prom, !dbg !6910
  %conv19 = sext i32 %shl to i64, !dbg !6911
  %and20 = and i64 %21, %conv19, !dbg !6912
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6912
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !6913

if.then22:                                        ; preds = %do.end18
  store i32 -22, ptr %retval, align 4, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

if.end23:                                         ; preds = %do.end18
  %23 = load i64, ptr %cfg, align 8, !dbg !6915
  %arrayidx = getelementptr [4 x %struct.perf_msr], ptr @core_msr, i64 0, i64 %23, !dbg !6916
  %msr = getelementptr inbounds %struct.perf_msr, ptr %arrayidx, i32 0, i32 0, !dbg !6917
  %24 = load i64, ptr %msr, align 8, !dbg !6917
  %25 = load ptr, ptr %event.addr, align 8, !dbg !6918
  %hw = getelementptr inbounds %struct.perf_event, ptr %25, i32 0, i32 26, !dbg !6919
  %26 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6920
  %event_base = getelementptr inbounds %struct.anon.22, ptr %26, i32 0, i32 3, !dbg !6920
  store i64 %24, ptr %event_base, align 8, !dbg !6921
  br label %do.body24, !dbg !6922

do.body24:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6923
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6845, metadata !DIExpression()), !dbg !6923
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6923
  %27 = load ptr, ptr %__vpp_verify, align 8, !dbg !6923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6922
  br label %do.cond25, !dbg !6923

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !6923

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6924
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6848, metadata !DIExpression()), !dbg !6924
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !6924
  %28 = load i64, ptr %__ptr, align 8, !dbg !6924
  %29 = load ptr, ptr %event.addr, align 8, !dbg !6924
  %cpu29 = getelementptr inbounds %struct.perf_event, ptr %29, i32 0, i32 36, !dbg !6924
  %30 = load i32, ptr %cpu29, align 4, !dbg !6924
  %idxprom = sext i32 %30 to i64, !dbg !6924
  %arrayidx30 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6924
  %31 = load i64, ptr %arrayidx30, align 8, !dbg !6924
  %add = add i64 %28, %31, !dbg !6924
  %32 = inttoptr i64 %add to ptr, !dbg !6924
  store ptr %32, ptr %tmp28, align 8, !dbg !6924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6922
  %33 = load ptr, ptr %tmp28, align 8, !dbg !6924
  store ptr %33, ptr %tmp27, align 8, !dbg !6923
  %34 = load ptr, ptr %tmp27, align 8, !dbg !6922
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %34, i64 0, i64 0, !dbg !6925
  %call31 = call i32 @cpumask_first_and(ptr noundef @cstate_core_cpu_mask, ptr noundef %arraydecay) #13, !dbg !6925
  store i32 %call31, ptr %cpu, align 4, !dbg !6926
  br label %if.end79, !dbg !6927

if.else:                                          ; preds = %if.end9
  %35 = load ptr, ptr %event.addr, align 8, !dbg !6928
  %pmu32 = getelementptr inbounds %struct.perf_event, ptr %35, i32 0, i32 13, !dbg !6929
  %36 = load ptr, ptr %pmu32, align 8, !dbg !6929
  %cmp33 = icmp eq ptr %36, @cstate_pkg_pmu, !dbg !6930
  br i1 %cmp33, label %if.then35, label %if.else77, !dbg !6931

if.then35:                                        ; preds = %if.else
  %37 = load i64, ptr %cfg, align 8, !dbg !6932
  %cmp36 = icmp uge i64 %37, 7, !dbg !6934
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !6935

if.then38:                                        ; preds = %if.then35
  store i32 -22, ptr %retval, align 4, !dbg !6936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6936

if.end39:                                         ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i40) #12, !dbg !6937
  call void @llvm.dbg.declare(metadata ptr %_i40, metadata !6850, metadata !DIExpression()), !dbg !6937
  %38 = load i64, ptr %cfg, align 8, !dbg !6937
  store i64 %38, ptr %_i40, align 8, !dbg !6937
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s41) #12, !dbg !6937
  call void @llvm.dbg.declare(metadata ptr %_s41, metadata !6854, metadata !DIExpression()), !dbg !6937
  store i32 7, ptr %_s41, align 4, !dbg !6937
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask42) #12, !dbg !6937
  call void @llvm.dbg.declare(metadata ptr %_mask42, metadata !6855, metadata !DIExpression()), !dbg !6937
  %39 = load i64, ptr %_i40, align 8, !dbg !6937
  %40 = load i32, ptr %_s41, align 4, !dbg !6937
  %conv43 = sext i32 %40 to i64, !dbg !6937
  %call44 = call i64 @array_index_mask_nospec(i64 noundef %39, i64 noundef %conv43) #13, !dbg !6937
  store i64 %call44, ptr %_mask42, align 8, !dbg !6937
  br label %do.body45, !dbg !6937

do.body45:                                        ; preds = %if.end39
  br label %do.cond46, !dbg !6938

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6938

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !6937

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !6940

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !6940

do.end50:                                         ; preds = %do.cond49
  %41 = load i64, ptr %_i40, align 8, !dbg !6937
  %42 = load i64, ptr %_mask42, align 8, !dbg !6937
  %and52 = and i64 %41, %42, !dbg !6937
  store i64 %and52, ptr %tmp51, align 8, !dbg !6940
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask42) #12, !dbg !6942
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s41) #12, !dbg !6942
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i40) #12, !dbg !6942
  %43 = load i64, ptr %tmp51, align 8, !dbg !6937
  store i64 %43, ptr %cfg, align 8, !dbg !6943
  %44 = load i64, ptr @pkg_msr_mask, align 8, !dbg !6944
  %45 = load i64, ptr %cfg, align 8, !dbg !6946
  %sh_prom53 = trunc i64 %45 to i32, !dbg !6947
  %shl54 = shl i32 1, %sh_prom53, !dbg !6947
  %conv55 = sext i32 %shl54 to i64, !dbg !6948
  %and56 = and i64 %44, %conv55, !dbg !6949
  %tobool57 = icmp ne i64 %and56, 0, !dbg !6949
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !6950

if.then58:                                        ; preds = %do.end50
  store i32 -22, ptr %retval, align 4, !dbg !6951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6951

if.end59:                                         ; preds = %do.end50
  %46 = load i64, ptr %cfg, align 8, !dbg !6952
  %arrayidx60 = getelementptr [7 x %struct.perf_msr], ptr @pkg_msr, i64 0, i64 %46, !dbg !6953
  %msr61 = getelementptr inbounds %struct.perf_msr, ptr %arrayidx60, i32 0, i32 0, !dbg !6954
  %47 = load i64, ptr %msr61, align 8, !dbg !6954
  %48 = load ptr, ptr %event.addr, align 8, !dbg !6955
  %hw62 = getelementptr inbounds %struct.perf_event, ptr %48, i32 0, i32 26, !dbg !6956
  %49 = getelementptr inbounds %struct.hw_perf_event, ptr %hw62, i32 0, i32 0, !dbg !6957
  %event_base63 = getelementptr inbounds %struct.anon.22, ptr %49, i32 0, i32 3, !dbg !6957
  store i64 %47, ptr %event_base63, align 8, !dbg !6958
  br label %do.body64, !dbg !6959

do.body64:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify65) #12, !dbg !6960
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify65, metadata !6856, metadata !DIExpression()), !dbg !6960
  store ptr null, ptr %__vpp_verify65, align 8, !dbg !6960
  %50 = load ptr, ptr %__vpp_verify65, align 8, !dbg !6960
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify65) #12, !dbg !6959
  br label %do.cond66, !dbg !6960

do.cond66:                                        ; preds = %do.body64
  br label %do.end67, !dbg !6960

do.end67:                                         ; preds = %do.cond66
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr69) #12, !dbg !6961
  call void @llvm.dbg.declare(metadata ptr %__ptr69, metadata !6859, metadata !DIExpression()), !dbg !6961
  store i64 ptrtoint (ptr @cpu_die_map to i64), ptr %__ptr69, align 8, !dbg !6961
  %51 = load i64, ptr %__ptr69, align 8, !dbg !6961
  %52 = load ptr, ptr %event.addr, align 8, !dbg !6961
  %cpu71 = getelementptr inbounds %struct.perf_event, ptr %52, i32 0, i32 36, !dbg !6961
  %53 = load i32, ptr %cpu71, align 4, !dbg !6961
  %idxprom72 = sext i32 %53 to i64, !dbg !6961
  %arrayidx73 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom72, !dbg !6961
  %54 = load i64, ptr %arrayidx73, align 8, !dbg !6961
  %add74 = add i64 %51, %54, !dbg !6961
  %55 = inttoptr i64 %add74 to ptr, !dbg !6961
  store ptr %55, ptr %tmp70, align 8, !dbg !6961
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr69) #12, !dbg !6959
  %56 = load ptr, ptr %tmp70, align 8, !dbg !6961
  store ptr %56, ptr %tmp68, align 8, !dbg !6960
  %57 = load ptr, ptr %tmp68, align 8, !dbg !6959
  %arraydecay75 = getelementptr inbounds [1 x %struct.cpumask], ptr %57, i64 0, i64 0, !dbg !6962
  %call76 = call i32 @cpumask_first_and(ptr noundef @cstate_pkg_cpu_mask, ptr noundef %arraydecay75) #13, !dbg !6962
  store i32 %call76, ptr %cpu, align 4, !dbg !6963
  br label %if.end78, !dbg !6964

if.else77:                                        ; preds = %if.else
  store i32 -2, ptr %retval, align 4, !dbg !6965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6965

if.end78:                                         ; preds = %do.end67
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %do.end26
  %58 = load i32, ptr %cpu, align 4, !dbg !6967
  %59 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6969
  %cmp80 = icmp uge i32 %58, %59, !dbg !6970
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !6971

if.then82:                                        ; preds = %if.end79
  store i32 -19, ptr %retval, align 4, !dbg !6972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6972

if.end83:                                         ; preds = %if.end79
  %60 = load i32, ptr %cpu, align 4, !dbg !6973
  %61 = load ptr, ptr %event.addr, align 8, !dbg !6974
  %cpu84 = getelementptr inbounds %struct.perf_event, ptr %61, i32 0, i32 36, !dbg !6975
  store i32 %60, ptr %cpu84, align 4, !dbg !6976
  %62 = load i64, ptr %cfg, align 8, !dbg !6977
  %63 = load ptr, ptr %event.addr, align 8, !dbg !6978
  %hw85 = getelementptr inbounds %struct.perf_event, ptr %63, i32 0, i32 26, !dbg !6979
  %64 = getelementptr inbounds %struct.hw_perf_event, ptr %hw85, i32 0, i32 0, !dbg !6980
  %config86 = getelementptr inbounds %struct.anon.22, ptr %64, i32 0, i32 0, !dbg !6980
  store i64 %62, ptr %config86, align 8, !dbg !6981
  %65 = load ptr, ptr %event.addr, align 8, !dbg !6982
  %hw87 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 26, !dbg !6983
  %66 = getelementptr inbounds %struct.hw_perf_event, ptr %hw87, i32 0, i32 0, !dbg !6984
  %idx = getelementptr inbounds %struct.anon.22, ptr %66, i32 0, i32 5, !dbg !6984
  store i32 -1, ptr %idx, align 4, !dbg !6985
  store i32 0, ptr %retval, align 4, !dbg !6986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6986

cleanup:                                          ; preds = %if.end83, %if.then82, %if.else77, %if.then58, %if.then38, %if.then22, %if.then14, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !6987
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #12, !dbg !6987
  %67 = load i32, ptr %retval, align 4, !dbg !6987
  ret i32 %67, !dbg !6987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cstate_pmu_event_add(ptr noundef %event, i32 noundef %mode) #8 align 16 !dbg !6988 {
entry:
  %event.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6991, metadata !DIExpression()), !dbg !6993
  %0 = load i32, ptr %mode.addr, align 4, !dbg !6994
  %and = and i32 %0, 1, !dbg !6996
  %tobool = icmp ne i32 %and, 0, !dbg !6996
  br i1 %tobool, label %if.then, label %if.end, !dbg !6997

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6998
  %2 = load i32, ptr %mode.addr, align 4, !dbg !6999
  call void @cstate_pmu_event_start(ptr noundef %1, i32 noundef %2) #13, !dbg !7000
  br label %if.end, !dbg !7000

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !7001
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cstate_pmu_event_del(ptr noundef %event, i32 noundef %mode) #8 align 16 !dbg !7002 {
entry:
  %event.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7004, metadata !DIExpression()), !dbg !7006
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7005, metadata !DIExpression()), !dbg !7007
  %0 = load ptr, ptr %event.addr, align 8, !dbg !7008
  call void @cstate_pmu_event_stop(ptr noundef %0, i32 noundef 4) #13, !dbg !7009
  ret void, !dbg !7010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cstate_pmu_event_start(ptr noundef %event, i32 noundef %mode) #8 align 16 !dbg !7011 {
entry:
  %event.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7013, metadata !DIExpression()), !dbg !7015
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7014, metadata !DIExpression()), !dbg !7016
  %0 = load ptr, ptr %event.addr, align 8, !dbg !7017
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !7017
  %prev_count = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 5, !dbg !7017
  %a = getelementptr inbounds %struct.local64_t, ptr %prev_count, i32 0, i32 0, !dbg !7017
  %a1 = getelementptr inbounds %struct.local_t, ptr %a, i32 0, i32 0, !dbg !7017
  %1 = load ptr, ptr %event.addr, align 8, !dbg !7017
  %call = call i64 @cstate_pmu_read_counter(ptr noundef %1) #13, !dbg !7017
  call void @atomic_long_set(ptr noundef %a1, i64 noundef %call) #13, !dbg !7017
  ret void, !dbg !7018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cstate_pmu_event_stop(ptr noundef %event, i32 noundef %mode) #8 align 16 !dbg !7019 {
entry:
  %event.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7021, metadata !DIExpression()), !dbg !7023
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7022, metadata !DIExpression()), !dbg !7024
  %0 = load ptr, ptr %event.addr, align 8, !dbg !7025
  call void @cstate_pmu_event_update(ptr noundef %0) #13, !dbg !7026
  ret void, !dbg !7027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cstate_pmu_event_update(ptr noundef %event) #8 align 16 !dbg !7028 {
entry:
  %event.addr = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %prev_raw_count = alloca i64, align 8
  %new_raw_count = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7030, metadata !DIExpression()), !dbg !7035
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #12, !dbg !7036
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !7031, metadata !DIExpression()), !dbg !7037
  %0 = load ptr, ptr %event.addr, align 8, !dbg !7038
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !7039
  store ptr %hw, ptr %hwc, align 8, !dbg !7037
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_raw_count) #12, !dbg !7040
  call void @llvm.dbg.declare(metadata ptr %prev_raw_count, metadata !7033, metadata !DIExpression()), !dbg !7041
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_raw_count) #12, !dbg !7040
  call void @llvm.dbg.declare(metadata ptr %new_raw_count, metadata !7034, metadata !DIExpression()), !dbg !7042
  %1 = load ptr, ptr %hwc, align 8, !dbg !7043
  %prev_count = getelementptr inbounds %struct.hw_perf_event, ptr %1, i32 0, i32 5, !dbg !7043
  %a = getelementptr inbounds %struct.local64_t, ptr %prev_count, i32 0, i32 0, !dbg !7043
  %a1 = getelementptr inbounds %struct.local_t, ptr %a, i32 0, i32 0, !dbg !7043
  %call = call i64 @atomic_long_read(ptr noundef %a1) #13, !dbg !7043
  store i64 %call, ptr %prev_raw_count, align 8, !dbg !7044
  br label %do.body, !dbg !7045

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %event.addr, align 8, !dbg !7046
  %call2 = call i64 @cstate_pmu_read_counter(ptr noundef %2) #13, !dbg !7048
  store i64 %call2, ptr %new_raw_count, align 8, !dbg !7049
  br label %do.cond, !dbg !7050

do.cond:                                          ; preds = %do.body
  %3 = load ptr, ptr %hwc, align 8, !dbg !7051
  %prev_count3 = getelementptr inbounds %struct.hw_perf_event, ptr %3, i32 0, i32 5, !dbg !7052
  %4 = load i64, ptr %new_raw_count, align 8, !dbg !7053
  %call4 = call zeroext i1 @local64_try_cmpxchg(ptr noundef %prev_count3, ptr noundef %prev_raw_count, i64 noundef %4) #13, !dbg !7054
  %lnot = xor i1 %call4, true, !dbg !7055
  br i1 %lnot, label %do.body, label %do.end, !dbg !7050, !llvm.loop !7056

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %new_raw_count, align 8, !dbg !7058
  %6 = load i64, ptr %prev_raw_count, align 8, !dbg !7058
  %sub = sub i64 %5, %6, !dbg !7058
  %7 = load ptr, ptr %event.addr, align 8, !dbg !7058
  %count = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 17, !dbg !7058
  %a5 = getelementptr inbounds %struct.local64_t, ptr %count, i32 0, i32 0, !dbg !7058
  call void @local_add(i64 noundef %sub, ptr noundef %a5) #13, !dbg !7058
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_raw_count) #12, !dbg !7059
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_raw_count) #12, !dbg !7059
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #12, !dbg !7059
  ret void, !dbg !7059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__cstate_core_event_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #8 align 16 !dbg !7060 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7062, metadata !DIExpression()), !dbg !7065
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7063, metadata !DIExpression()), !dbg !7065
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7064, metadata !DIExpression()), !dbg !7065
  br label %do.body, !dbg !7065

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7066

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7065
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.24) #13, !dbg !7065
  %conv = sext i32 %call to i64, !dbg !7065
  ret i64 %conv, !dbg !7065
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7068 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cstate_get_attr_cpumask(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #8 align 16 !dbg !7072 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pmu = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7074, metadata !DIExpression()), !dbg !7078
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7075, metadata !DIExpression()), !dbg !7079
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7076, metadata !DIExpression()), !dbg !7080
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmu) #12, !dbg !7081
  call void @llvm.dbg.declare(metadata ptr %pmu, metadata !7077, metadata !DIExpression()), !dbg !7082
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7083
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #13, !dbg !7084
  store ptr %call, ptr %pmu, align 8, !dbg !7082
  %1 = load ptr, ptr %pmu, align 8, !dbg !7085
  %cmp = icmp eq ptr %1, @cstate_core_pmu, !dbg !7087
  br i1 %cmp, label %if.then, label %if.else, !dbg !7088

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !7089
  %call1 = call i64 @cpumap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %2, ptr noundef @cstate_core_cpu_mask) #13, !dbg !7090
  store i64 %call1, ptr %retval, align 8, !dbg !7091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7091

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %pmu, align 8, !dbg !7092
  %cmp2 = icmp eq ptr %3, @cstate_pkg_pmu, !dbg !7094
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !7095

if.then3:                                         ; preds = %if.else
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !7096
  %call4 = call i64 @cpumap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %4, ptr noundef @cstate_pkg_cpu_mask) #13, !dbg !7097
  store i64 %call4, ptr %retval, align 8, !dbg !7098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7098

if.else5:                                         ; preds = %if.else
  store i64 0, ptr %retval, align 8, !dbg !7099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7099

cleanup:                                          ; preds = %if.else5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmu) #12, !dbg !7100
  %5 = load i64, ptr %retval, align 8, !dbg !7100
  ret i64 %5, !dbg !7100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #1 align 16 !dbg !7101 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7105, metadata !DIExpression()), !dbg !7106
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7107
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !7108
  %1 = load ptr, ptr %driver_data, align 8, !dbg !7108
  ret ptr %1, !dbg !7109
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_to_pagebuf(i1 noundef zeroext %list, ptr noundef %buf, ptr noundef %mask) #1 align 16 !dbg !7110 {
entry:
  %list.addr = alloca i8, align 1
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %frombool = zext i1 %list to i8
  store i8 %frombool, ptr %list.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7114, metadata !DIExpression()), !dbg !7117
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7115, metadata !DIExpression()), !dbg !7118
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7116, metadata !DIExpression()), !dbg !7119
  %0 = load i8, ptr %list.addr, align 1, !dbg !7120, !range !6139, !noundef !816
  %tobool = trunc i8 %0 to i1, !dbg !7120
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !7121
  %2 = load ptr, ptr %mask.addr, align 8, !dbg !7122
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !7122
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7122
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !7123
  %call = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext %tobool, ptr noundef %1, ptr noundef %arraydecay, i32 noundef %3) #13, !dbg !7124
  %conv = sext i32 %call to i64, !dbg !7124
  ret i64 %conv, !dbg !7125
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7126 dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #1 align 16 !dbg !7130 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !7135, metadata !DIExpression()), !dbg !7138
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7136, metadata !DIExpression()), !dbg !7139
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !7140
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7137, metadata !DIExpression()), !dbg !7141
  %0 = load i64, ptr %size.addr, align 8, !dbg !7142
  %1 = load i64, ptr %index.addr, align 8, !dbg !7143
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #12, !dbg !7144, !srcloc !7145
  store i64 %2, ptr %mask, align 8, !dbg !7144
  %3 = load i64, ptr %mask, align 8, !dbg !7146
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !7147
  ret i64 %3, !dbg !7148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7149 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7154, metadata !DIExpression()), !dbg !7156
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7155, metadata !DIExpression()), !dbg !7157
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7158
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #13, !dbg !7159
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7160
  %2 = load i64, ptr %i.addr, align 8, !dbg !7161
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #13, !dbg !7162
  ret void, !dbg !7163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cstate_pmu_read_counter(ptr noundef %event) #1 align 16 !dbg !7164 {
entry:
  %event.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7168, metadata !DIExpression()), !dbg !7170
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !7171
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7169, metadata !DIExpression()), !dbg !7172
  %0 = load ptr, ptr %event.addr, align 8, !dbg !7173
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !7173
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !7173
  %event_base = getelementptr inbounds %struct.anon.22, ptr %1, i32 0, i32 3, !dbg !7173
  %2 = load i64, ptr %event_base, align 8, !dbg !7173
  %conv = trunc i64 %2 to i32, !dbg !7173
  %call = call i64 @native_read_msr(i32 noundef %conv) #13, !dbg !7173
  store i64 %call, ptr %val, align 8, !dbg !7173
  %3 = load i64, ptr %val, align 8, !dbg !7174
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !7175
  ret i64 %3, !dbg !7176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7177 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7179, metadata !DIExpression()), !dbg !7181
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7180, metadata !DIExpression()), !dbg !7182
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7183
  %1 = load i64, ptr %i.addr, align 8, !dbg !7184
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #13, !dbg !7185
  ret void, !dbg !7186
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7187 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7193, metadata !DIExpression()), !dbg !7195
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7194, metadata !DIExpression()), !dbg !7196
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7197
  %1 = load i64, ptr %i.addr, align 8, !dbg !7198
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #13, !dbg !7199
  ret void, !dbg !7200
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !7201 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7204, metadata !DIExpression()), !dbg !7206
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7205, metadata !DIExpression()), !dbg !7207
  br label %do.body, !dbg !7208

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !7209
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7209
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !7209
  store volatile i64 %0, ptr %counter, align 8, !dbg !7209
  br label %do.end, !dbg !7209

do.end:                                           ; preds = %do.body
  ret void, !dbg !7211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #1 align 16 !dbg !7212 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !7217, metadata !DIExpression()), !dbg !7219
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !7220
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7218, metadata !DIExpression()), !dbg !7221
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7222
  %call = call i64 @__rdmsr(i32 noundef %0) #13, !dbg !7223
  store i64 %call, ptr %val, align 8, !dbg !7224
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !7225
  br i1 %call1, label %if.then, label %if.end, !dbg !7227

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !7228
  %2 = load i64, ptr %val, align 8, !dbg !7229
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #13, !dbg !7230
  br label %if.end, !dbg !7230

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !7232
  ret i64 %3, !dbg !7233
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !7234 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !7236, metadata !DIExpression()), !dbg !7239
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !7240
  call void @llvm.dbg.declare(metadata ptr %low, metadata !7237, metadata !DIExpression()), !dbg !7240
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !7240
  call void @llvm.dbg.declare(metadata ptr %high, metadata !7238, metadata !DIExpression()), !dbg !7240
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7241
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !7242, !srcloc !7243
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !7242
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !7242
  store i64 %asmresult, ptr %low, align 8, !dbg !7242
  store i64 %asmresult1, ptr %high, align 8, !dbg !7242
  %2 = load i64, ptr %low, align 8, !dbg !7244
  %3 = load i64, ptr %high, align 8, !dbg !7244
  %shl = shl i64 %3, 32, !dbg !7244
  %or = or i64 %2, %shl, !dbg !7244
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !7245
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !7245
  ret i64 %or, !dbg !7246
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !7247 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7263, metadata !DIExpression()), !dbg !7264
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7265
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !7266
  ret i1 %call, !dbg !7267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7268 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !7271 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7276, metadata !DIExpression()), !dbg !7279
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7277, metadata !DIExpression()), !dbg !7280
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7281
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7282, !range !6139, !noundef !816
  %tobool = trunc i8 %1 to i1, !dbg !7282
  %conv = zext i1 %tobool to i32, !dbg !7282
  %or = or i32 2, %conv, !dbg !7283
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !7284, !srcloc !7285

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7286
  br label %return, !dbg !7286

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7278), !dbg !7287
  store i1 true, ptr %retval, align 1, !dbg !7288
  br label %return, !dbg !7288

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7289
  ret i1 %2, !dbg !7289
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #4 align 16 !dbg !7290 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7296, metadata !DIExpression()), !dbg !7297
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7298
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #13, !dbg !7299
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7300
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #13, !dbg !7301
  ret i64 %call, !dbg !7302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @local64_try_cmpxchg(ptr noundef %l, ptr noundef %old, i64 noundef %new) #1 align 16 !dbg !7303 {
entry:
  %l.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !7308, metadata !DIExpression()), !dbg !7311
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7309, metadata !DIExpression()), !dbg !7312
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7310, metadata !DIExpression()), !dbg !7313
  %0 = load ptr, ptr %l.addr, align 8, !dbg !7314
  %a = getelementptr inbounds %struct.local64_t, ptr %0, i32 0, i32 0, !dbg !7315
  %1 = load ptr, ptr %old.addr, align 8, !dbg !7316
  %2 = load i64, ptr %new.addr, align 8, !dbg !7317
  %call = call zeroext i1 @local_try_cmpxchg(ptr noundef %a, ptr noundef %1, i64 noundef %2) #13, !dbg !7318
  ret i1 %call, !dbg !7319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_add(i64 noundef %i, ptr noundef %l) #1 align 16 !dbg !7320 {
entry:
  %i.addr = alloca i64, align 8
  %l.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7325, metadata !DIExpression()), !dbg !7327
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !7326, metadata !DIExpression()), !dbg !7328
  %0 = load ptr, ptr %l.addr, align 8, !dbg !7329
  %a = getelementptr inbounds %struct.local_t, ptr %0, i32 0, i32 0, !dbg !7330
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %a, i32 0, i32 0, !dbg !7331
  %1 = load i64, ptr %i.addr, align 8, !dbg !7332
  call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #12, !dbg !7333, !srcloc !7334
  ret void, !dbg !7335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #4 align 16 !dbg !7336 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7338, metadata !DIExpression()), !dbg !7339
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7340
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #13, !dbg !7341
  ret i64 %call, !dbg !7342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #4 align 16 !dbg !7343 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7349, metadata !DIExpression()), !dbg !7350
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7351
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #13, !dbg !7352
  ret i64 %call, !dbg !7353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #4 align 16 !dbg !7354 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7356, metadata !DIExpression()), !dbg !7357
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7358
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7358
  %1 = load volatile i64, ptr %counter, align 8, !dbg !7358
  ret i64 %1, !dbg !7359
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @local_try_cmpxchg(ptr noundef %l, ptr noundef %old, i64 noundef %new) #1 align 16 !dbg !7360 {
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
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !7364, metadata !DIExpression()), !dbg !7376
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !7365, metadata !DIExpression()), !dbg !7377
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7366, metadata !DIExpression()), !dbg !7378
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #12, !dbg !7379
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !7367, metadata !DIExpression()), !dbg !7379
  %0 = load ptr, ptr %l.addr, align 8, !dbg !7379
  %a = getelementptr inbounds %struct.local_t, ptr %0, i32 0, i32 0, !dbg !7379
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %a, i32 0, i32 0, !dbg !7379
  store ptr %counter, ptr %__ai_ptr, align 8, !dbg !7379
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #12, !dbg !7379
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !7369, metadata !DIExpression()), !dbg !7379
  %1 = load ptr, ptr %old.addr, align 8, !dbg !7379
  store ptr %1, ptr %__ai_oldp, align 8, !dbg !7379
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !7379
  call void @instrument_atomic_read_write(ptr noundef %2, i64 noundef 8) #13, !dbg !7379
  %3 = load ptr, ptr %__ai_oldp, align 8, !dbg !7379
  call void @instrument_read_write(ptr noundef %3, i64 noundef 8) #13, !dbg !7379
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #12, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %success, metadata !7370, metadata !DIExpression()), !dbg !7380
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #12, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !7372, metadata !DIExpression()), !dbg !7380
  %4 = load ptr, ptr %__ai_oldp, align 8, !dbg !7380
  store ptr %4, ptr %_old, align 8, !dbg !7380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #12, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !7373, metadata !DIExpression()), !dbg !7380
  %5 = load ptr, ptr %_old, align 8, !dbg !7380
  %6 = load i64, ptr %5, align 8, !dbg !7380
  store i64 %6, ptr %__old, align 8, !dbg !7380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #12, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !7374, metadata !DIExpression()), !dbg !7380
  %7 = load i64, ptr %new.addr, align 8, !dbg !7380
  store i64 %7, ptr %__new, align 8, !dbg !7380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7375, metadata !DIExpression()), !dbg !7380
  %8 = load ptr, ptr %__ai_ptr, align 8, !dbg !7380
  store ptr %8, ptr %__ptr, align 8, !dbg !7380
  %9 = load ptr, ptr %__ptr, align 8, !dbg !7380
  %10 = load i64, ptr %__old, align 8, !dbg !7380
  %11 = load i64, ptr %__new, align 8, !dbg !7380
  %12 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %9, i64 %11, ptr elementtype(i64) %9, i64 %10) #12, !dbg !7380, !srcloc !7381
  %asmresult = extractvalue { i8, i64 } %12, 0, !dbg !7380
  %asmresult1 = extractvalue { i8, i64 } %12, 1, !dbg !7380
  %13 = icmp ult i8 %asmresult, 2, !dbg !7380
  call void @llvm.assume(i1 %13), !dbg !7380
  store i8 %asmresult, ptr %success, align 1, !dbg !7380
  store i64 %asmresult1, ptr %__old, align 8, !dbg !7380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !7380
  %14 = load i8, ptr %success, align 1, !dbg !7382, !range !6139, !noundef !816
  %tobool = trunc i8 %14 to i1, !dbg !7382
  %lnot = xor i1 %tobool, true, !dbg !7382
  %lnot2 = xor i1 %lnot, true, !dbg !7382
  %lnot3 = xor i1 %lnot2, true, !dbg !7382
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7382
  %conv = sext i32 %lnot.ext to i64, !dbg !7382
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7382
  %tobool4 = icmp ne i64 %expval, 0, !dbg !7382
  br i1 %tobool4, label %if.then, label %if.end, !dbg !7380

if.then:                                          ; preds = %entry
  %15 = load i64, ptr %__old, align 8, !dbg !7382
  %16 = load ptr, ptr %_old, align 8, !dbg !7382
  store i64 %15, ptr %16, align 8, !dbg !7382
  br label %if.end, !dbg !7382

if.end:                                           ; preds = %if.then, %entry
  %17 = load i8, ptr %success, align 1, !dbg !7380, !range !6139, !noundef !816
  %tobool6 = trunc i8 %17 to i1, !dbg !7380
  %lnot7 = xor i1 %tobool6, true, !dbg !7380
  %lnot9 = xor i1 %lnot7, true, !dbg !7380
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !7380
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !7380
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !7380
  store i64 %expval12, ptr %tmp5, align 8, !dbg !7382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #12, !dbg !7379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #12, !dbg !7379
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #12, !dbg !7379
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #12, !dbg !7379
  %18 = load i64, ptr %tmp5, align 8, !dbg !7380
  store i64 %18, ptr %tmp, align 8, !dbg !7379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #12, !dbg !7384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #12, !dbg !7384
  %19 = load i64, ptr %tmp, align 8, !dbg !7379
  %tobool13 = icmp ne i64 %19, 0, !dbg !7384
  ret i1 %tobool13, !dbg !7385
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7386 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7388, metadata !DIExpression()), !dbg !7390
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7389, metadata !DIExpression()), !dbg !7391
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7392
  %1 = load i64, ptr %size.addr, align 8, !dbg !7393
  %conv = trunc i64 %1 to i32, !dbg !7393
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !7394
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7395
  %3 = load i64, ptr %size.addr, align 8, !dbg !7395
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #13, !dbg !7395
  ret void, !dbg !7396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__cstate_pkg_event_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #8 align 16 !dbg !7397 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7399, metadata !DIExpression()), !dbg !7402
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7400, metadata !DIExpression()), !dbg !7402
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7401, metadata !DIExpression()), !dbg !7402
  br label %do.body, !dbg !7402

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7403

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7402
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.24) #13, !dbg !7402
  %conv = sext i32 %call to i64, !dbg !7402
  ret i64 %conv, !dbg !7402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state_nocalls(i32 noundef %state) #1 align 16 !dbg !7405 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7409, metadata !DIExpression()), !dbg !7410
  %0 = load i32, ptr %state.addr, align 4, !dbg !7411
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #13, !dbg !7412
  ret void, !dbg !7413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7414 dso_local void @perf_pmu_unregister(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7415 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6088, !6089, !6090, !6091, !6092, !6093, !6094, !6095}
!llvm.ident = !{!6096}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file311", scope: !2, file: !3, line: 111, type: !6085, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/events/intel/.cstate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/events/intel/intel-cstate\22 -D KBUILD_BASENAME=\22cstate\22 -D KBUILD_MODNAME=\22intel_cstate\22 -D __KBUILD_MODNAME=kmod_intel_cstate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/events/intel/cstate.ll arch/x86/events/intel/cstate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !461, globals: !5811, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/events/intel/cstate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6937b1465727d6a91748c4e9a8185635")
!4 = !{!5, !16, !23, !28, !34, !39, !135, !141, !148, !153, !159, !175, !182, !190, !197, !203, !210, !218, !225, !234, !239, !244, !250, !259, !267}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_cstate_pkg_events", file: !3, line: 230, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15}
!8 = !DIEnumerator(name: "PERF_CSTATE_PKG_C2_RES", value: 0)
!9 = !DIEnumerator(name: "PERF_CSTATE_PKG_C3_RES", value: 1)
!10 = !DIEnumerator(name: "PERF_CSTATE_PKG_C6_RES", value: 2)
!11 = !DIEnumerator(name: "PERF_CSTATE_PKG_C7_RES", value: 3)
!12 = !DIEnumerator(name: "PERF_CSTATE_PKG_C8_RES", value: 4)
!13 = !DIEnumerator(name: "PERF_CSTATE_PKG_C9_RES", value: 5)
!14 = !DIEnumerator(name: "PERF_CSTATE_PKG_C10_RES", value: 6)
!15 = !DIEnumerator(name: "PERF_CSTATE_PKG_EVENT_MAX", value: 7)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_cstate_core_events", file: !3, line: 149, baseType: !6, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "PERF_CSTATE_CORE_C1_RES", value: 0)
!19 = !DIEnumerator(name: "PERF_CSTATE_CORE_C3_RES", value: 1)
!20 = !DIEnumerator(name: "PERF_CSTATE_CORE_C6_RES", value: 2)
!21 = !DIEnumerator(name: "PERF_CSTATE_CORE_C7_RES", value: 3)
!22 = !DIEnumerator(name: "PERF_CSTATE_CORE_EVENT_MAX", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 10, baseType: !6, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "false", value: 0)
!27 = !DIEnumerator(name: "true", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !6, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !35, line: 65, baseType: !6, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!38 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !41, file: !40, line: 147, baseType: !6, size: 32, elements: !132)
!40 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !40, line: 135, size: 512, elements: !42)
!42 = !{!43, !47, !49, !51, !55, !56, !72, !130, !131}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !41, file: !40, line: 136, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !40, line: 137, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !41, file: !40, line: 138, baseType: !50, size: 32, offset: 128)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !41, file: !40, line: 139, baseType: !52, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !53, line: 24, baseType: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !40, line: 150, baseType: !39, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !41, file: !40, line: 151, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !40, line: 64, baseType: !59)
!59 = !DISubroutineType(types: !60)
!60 = !{!50, !61, !50, !48, !62, !68}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 61, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !65, line: 72, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !65, line: 16, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !53, line: 52, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !65, line: 88, baseType: !71)
!71 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !41, file: !40, line: 152, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !40, line: 117, size: 256, elements: !75)
!75 = !{!76, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !74, file: !40, line: 118, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !53, line: 174, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 172, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !78, file: !53, line: 173, baseType: !50, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !74, file: !40, line: 119, baseType: !82, size: 192, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !83, line: 41, baseType: !84)
!83 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !83, line: 37, size: 192, elements: !85)
!85 = !{!86, !124}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !83, line: 38, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !88, line: 29, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !88, line: 17, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 18, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 18, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !92, file: !88, line: 19, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !96, line: 14, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !96, line: 15, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !100, line: 44, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !100, line: 14, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !100, line: 15, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !100, line: 15, size: 32, elements: !105)
!105 = !{!106, !107, !117}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !100, line: 16, baseType: !77, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 24, baseType: !108, size: 16)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 24, size: 16, elements: !109)
!109 = !{!110, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !108, file: !100, line: 25, baseType: !111, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !112, line: 17, baseType: !113)
!112 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !115)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !108, file: !100, line: 26, baseType: !111, size: 8, offset: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 28, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 28, size: 32, elements: !119)
!119 = !{!120, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !118, file: !100, line: 29, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !112, line: 19, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !54)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !118, file: !100, line: 30, baseType: !121, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !84, file: !83, line: 39, baseType: !125, size: 128, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 190, size: 128, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !53, line: 191, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !53, line: 191, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !41, file: !40, line: 153, baseType: !48, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !41, file: !40, line: 154, baseType: !48, size: 64, offset: 448)
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!134 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !136, line: 16, baseType: !6, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "TT_NONE", value: 0)
!139 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!140 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !142, line: 312, baseType: !6, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!145 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!146 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!147 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !149, line: 2052, baseType: !6, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!152 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !154, line: 54, baseType: !6, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "USRQUOTA", value: 0)
!157 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!158 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !160, line: 1325, baseType: !6, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!162 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!163 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!164 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!165 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!166 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!167 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!168 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!169 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!170 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!171 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!172 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!173 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!174 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !176, line: 15, baseType: !6, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!177 = !{!178, !179, !180, !181}
!178 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!179 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!180 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!181 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !183, line: 68, baseType: !6, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!186 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!187 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!188 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!189 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !191, line: 51, baseType: !6, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!192 = !{!193, !194, !195, !196}
!193 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!194 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!195 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!196 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !198, line: 45, baseType: !6, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!201 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!202 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !204, line: 487, baseType: !6, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!205 = !{!206, !207, !208, !209}
!206 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!207 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!208 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!209 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !211, line: 620, baseType: !6, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!214 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!215 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!216 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!217 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !211, line: 597, baseType: !50, size: 32, elements: !219)
!219 = !{!220, !221, !222, !223, !224}
!220 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!221 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!222 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!223 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!224 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !204, line: 547, baseType: !6, size: 32, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233}
!227 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!228 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!229 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!230 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!231 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!232 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!233 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !204, line: 564, baseType: !6, size: 32, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!238 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !204, line: 577, baseType: !6, size: 32, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!243 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !204, line: 503, baseType: !6, size: 32, elements: !245)
!245 = !{!246, !247, !248, !249}
!246 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!247 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!248 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!249 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !251, line: 593, baseType: !50, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!252 = !{!253, !254, !255, !256, !257, !258}
!253 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!254 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!255 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!256 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!257 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!258 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !260, line: 9, baseType: !6, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!263 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!264 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!265 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!266 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !268, line: 57, baseType: !50, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!270 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!271 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!272 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!273 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!274 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!275 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!276 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!277 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!278 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!279 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!280 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!281 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!282 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!283 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!284 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!285 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!286 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!287 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!288 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!289 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!290 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!291 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!292 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!293 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!294 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!295 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!296 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!297 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!298 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!299 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!300 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!301 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!302 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!303 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!304 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!305 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!306 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!307 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!308 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!309 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!310 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!311 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!312 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!313 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!314 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!315 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!316 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!317 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!318 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!319 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!320 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!321 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!322 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!323 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!324 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!325 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!326 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!327 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!328 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!329 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!330 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!331 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!332 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!333 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!334 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!335 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!336 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!337 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!338 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!339 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!340 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!341 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!342 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!343 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!344 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!345 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!346 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!347 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!348 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!349 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!350 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!351 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!352 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!353 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!354 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!355 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!356 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!357 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!358 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!359 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!360 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!361 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!362 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!363 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!364 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!365 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!366 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!367 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!368 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!369 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!370 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!371 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!372 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!373 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!374 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!375 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!376 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!377 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!378 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!379 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!380 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!381 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!382 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!383 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!384 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!385 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!386 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!387 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!388 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!389 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!390 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!391 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!392 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!393 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!394 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!395 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!396 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!397 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!398 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!399 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!400 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!401 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!402 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!403 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!404 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!405 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!406 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!407 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!408 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!409 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!410 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!411 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!412 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!413 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!414 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!415 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!416 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!417 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!418 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!419 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!420 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!421 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!422 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!423 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!424 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!425 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!426 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!427 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!428 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!429 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!430 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!431 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!432 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!433 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!434 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!435 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!436 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!437 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!438 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!439 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!440 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!441 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!442 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!443 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!444 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!445 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!446 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!447 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!448 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!449 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!450 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!451 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!452 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!453 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!454 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!455 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!456 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!457 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!458 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!459 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!460 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!461 = !{!48, !50, !462, !463, !67, !470, !471, !473, !6, !483, !485, !488, !5802, !5804, !5807, !5808, !5809}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cstate_model", file: !3, line: 129, size: 192, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "core_events", scope: !465, file: !3, line: 130, baseType: !67, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_events", scope: !465, file: !3, line: 131, baseType: !67, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !465, file: !3, line: 132, baseType: !67, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 42, baseType: !67)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !475, line: 913, baseType: !476)
!475 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 64, elements: !481)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !475, line: 19, size: 64, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !477, file: !475, line: 19, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 1)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !487)
!487 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !142, line: 402, size: 9216, align: 512, elements: !490)
!490 = !{!491, !492, !493, !497, !5483, !5509, !5510, !5511, !5512, !5516, !5519, !5520, !5521, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5588, !5592, !5610, !5627, !5628, !5629, !5630, !5639, !5662, !5663, !5666, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5680, !5681, !5766, !5774, !5775, !5776, !5778, !5780, !5781, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5798, !5799, !5800, !5801}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !489, file: !142, line: 403, baseType: !141, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !489, file: !142, line: 406, baseType: !125, size: 128, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !142, line: 409, baseType: !494, size: 448, offset: 192)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 448, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 56)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !489, file: !142, line: 417, baseType: !498, size: 768, offset: 640)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !142, line: 45, size: 768, elements: !499)
!499 = !{!500, !5477, !5478, !5479, !5482}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !498, file: !142, line: 46, baseType: !501, size: 512)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !502, line: 64, size: 512, elements: !503)
!502 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!503 = !{!504, !505, !506, !508, !555, !5466, !5467, !5472, !5473, !5474, !5475, !5476}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !501, file: !502, line: 65, baseType: !44, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !501, file: !502, line: 66, baseType: !125, size: 128, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !501, file: !502, line: 67, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !501, file: !502, line: 68, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !502, line: 168, size: 768, elements: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !510, file: !502, line: 169, baseType: !125, size: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !510, file: !502, line: 170, baseType: !87, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !510, file: !502, line: 171, baseType: !501, size: 512, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !510, file: !502, line: 172, baseType: !516, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !502, line: 133, size: 192, elements: !519)
!519 = !{!520, !527, !532}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !518, file: !502, line: 134, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!50, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !502, line: 135, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!44, !525}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !518, file: !502, line: 136, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!50, !525, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !502, line: 125, size: 20736, elements: !539)
!539 = !{!540, !545, !549, !550, !554}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !538, file: !502, line: 126, baseType: !541, size: 192)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 192, elements: !543)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!543 = !{!544}
!544 = !DISubrange(count: 3)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !538, file: !502, line: 127, baseType: !546, size: 4096, offset: 192)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 4096, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !538, file: !502, line: 128, baseType: !50, size: 32, offset: 4288)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !538, file: !502, line: 129, baseType: !551, size: 16384, offset: 4320)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 16384, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 2048)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !538, file: !502, line: 130, baseType: !50, size: 32, offset: 20704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !501, file: !502, line: 69, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !502, line: 116, size: 384, elements: !559)
!559 = !{!560, !564, !586, !5454, !5458, !5462}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !558, file: !502, line: 117, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !507}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !558, file: !502, line: 118, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !568, line: 254, size: 128, elements: !569)
!568 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!569 = !{!570, !582}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !567, file: !568, line: 255, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !507, !577, !542}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !53, line: 66, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !65, line: 73, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !65, line: 15, baseType: !487)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !568, line: 30, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !578, file: !568, line: 31, baseType: !44, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !578, file: !568, line: 32, baseType: !52, size: 16, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !567, file: !568, line: 256, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!574, !507, !577, !44, !63}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !558, file: !502, line: 119, baseType: !587, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !568, line: 84, size: 320, elements: !591)
!591 = !{!592, !593, !597, !5450, !5452}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !590, file: !568, line: 85, baseType: !44, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !590, file: !568, line: 86, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!52, !507, !577, !50}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !590, file: !568, line: 88, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!52, !507, !601, !50}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !568, line: 175, size: 512, elements: !603)
!603 = !{!604, !605, !606, !607, !5441, !5445, !5446}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !602, file: !568, line: 176, baseType: !578, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !602, file: !568, line: 177, baseType: !63, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !602, file: !568, line: 178, baseType: !48, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !602, file: !568, line: 179, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !149, line: 472, size: 1536, align: 64, elements: !613)
!613 = !{!614, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5435, !5436, !5437, !5438, !5439, !5440}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !612, file: !149, line: 473, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !149, line: 641, size: 4800, elements: !617)
!617 = !{!618, !619, !620, !628, !629, !636, !637, !640, !641, !5213, !5214, !5215, !5216, !5217, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5257, !5260, !5261, !5262, !5271, !5272, !5273, !5274}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !616, file: !149, line: 642, baseType: !52, size: 16)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !616, file: !149, line: 643, baseType: !54, size: 16, offset: 16)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !616, file: !149, line: 644, baseType: !621, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !622, line: 23, baseType: !623)
!622 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 21, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !622, line: 22, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !53, line: 37, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !65, line: 49, baseType: !6)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !616, file: !149, line: 645, baseType: !125, size: 128, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !616, file: !149, line: 646, baseType: !630, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !622, line: 28, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 26, size: 32, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !631, file: !622, line: 27, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !53, line: 38, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !65, line: 50, baseType: !6)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !616, file: !149, line: 647, baseType: !6, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !616, file: !149, line: 650, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !149, line: 607, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !616, file: !149, line: 651, baseType: !638, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !616, file: !149, line: 654, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !149, line: 1966, size: 2048, align: 512, elements: !645)
!645 = !{!646, !5047, !5057, !5061, !5065, !5069, !5073, !5077, !5081, !5085, !5089, !5090, !5094, !5098, !5135, !5164, !5168, !5174, !5178, !5182, !5186, !5190, !5194, !5200, !5204}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !644, file: !149, line: 1967, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!650, !615, !650, !6}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !652, line: 82, size: 1536, elements: !653)
!652 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!653 = !{!654, !655, !665, !673, !674, !694, !695, !699, !712, !5030, !5031, !5032, !5033, !5039, !5040, !5041}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !651, file: !652, line: 84, baseType: !6, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !651, file: !652, line: 85, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !657, line: 275, baseType: !658)
!657 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !657, line: 275, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !658, file: !657, line: 275, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !657, line: 69, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !657, line: 64, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !662, file: !657, line: 65, baseType: !6, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !651, file: !652, line: 86, baseType: !666, size: 128, offset: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !667, line: 38, size: 128, elements: !668)
!667 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!668 = !{!669, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !666, file: !667, line: 39, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !666, file: !667, line: 39, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !651, file: !652, line: 87, baseType: !650, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !651, file: !652, line: 88, baseType: !675, size: 128, offset: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !652, line: 49, size: 128, elements: !676)
!676 = !{!677, !691}
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !652, line: 50, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !652, line: 50, size: 64, elements: !679)
!679 = !{!680, !687}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !652, line: 51, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !652, line: 51, size: 64, elements: !682)
!682 = !{!683, !686}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !681, file: !652, line: 52, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !112, line: 21, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !6)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !681, file: !652, line: 52, baseType: !684, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !678, file: !652, line: 54, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !112, line: 23, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !690)
!690 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !675, file: !652, line: 56, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !651, file: !652, line: 89, baseType: !615, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !651, file: !652, line: 91, baseType: !696, size: 256, offset: 448)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !651, file: !652, line: 94, baseType: !700, size: 64, offset: 704)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !701, line: 25, size: 64, elements: !702)
!701 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 26, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 26, size: 64, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !704, file: !701, line: 28, baseType: !689, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !701, line: 30, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !701, line: 30, size: 64, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !701, line: 31, baseType: !87, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !708, file: !701, line: 32, baseType: !50, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !651, file: !652, line: 95, baseType: !713, size: 64, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !652, line: 128, size: 1024, align: 512, elements: !716)
!716 = !{!717, !721, !722, !729, !735, !739, !743, !747, !748, !752, !756, !5020, !5024}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !715, file: !652, line: 129, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!50, !650, !6}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !715, file: !652, line: 130, baseType: !718, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !715, file: !652, line: 131, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!50, !726, !728}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !715, file: !652, line: 132, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!50, !726, !6, !44, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !715, file: !652, line: 134, baseType: !736, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!50, !726}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !715, file: !652, line: 135, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!50, !650}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !715, file: !652, line: 136, baseType: !744, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !650}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !715, file: !652, line: 137, baseType: !744, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !715, file: !652, line: 138, baseType: !749, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !650, !615}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !715, file: !652, line: 139, baseType: !753, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!542, !650, !542, !50}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !715, file: !652, line: 140, baseType: !757, size: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!760, !5019}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !762, line: 70, size: 256, elements: !763)
!762 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!763 = !{!764, !765, !5015, !5016}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !761, file: !762, line: 71, baseType: !650, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !761, file: !762, line: 72, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !149, line: 1190, size: 10752, elements: !768)
!768 = !{!769, !770, !773, !774, !775, !776, !825, !4725, !4765, !4850, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4867, !4871, !4872, !4875, !4878, !4881, !4884, !4885, !4886, !4927, !4950, !4951, !4952, !4953, !4954, !4955, !4958, !4959, !4965, !4966, !4967, !4968, !4969, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !767, file: !149, line: 1191, baseType: !125, size: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !767, file: !149, line: 1192, baseType: !771, size: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !53, line: 21, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !53, line: 18, baseType: !684)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !767, file: !149, line: 1193, baseType: !115, size: 8, offset: 160)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !767, file: !149, line: 1194, baseType: !67, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !767, file: !149, line: 1195, baseType: !69, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !767, file: !149, line: 1196, baseType: !777, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !149, line: 2366, size: 576, elements: !779)
!779 = !{!780, !781, !782, !789, !793, !797, !801, !802, !803, !813, !817, !818, !819, !821, !822, !823, !824}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !778, file: !149, line: 2367, baseType: !44, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !778, file: !149, line: 2368, baseType: !50, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !778, file: !149, line: 2376, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!50, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !788, line: 32, flags: DIFlagFwdDecl)
!788 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!789 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !778, file: !149, line: 2377, baseType: !790, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !149, line: 75, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !778, file: !149, line: 2378, baseType: !794, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!650, !777, !50, !44, !48}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !778, file: !149, line: 2380, baseType: !798, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !766}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !778, file: !149, line: 2381, baseType: !488, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !778, file: !149, line: 2382, baseType: !777, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !778, file: !149, line: 2383, baseType: !804, size: 64, offset: 512)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !53, line: 194, size: 64, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !804, file: !53, line: 195, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !53, line: 198, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !53, line: 199, baseType: !807, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !808, file: !53, line: 199, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !778, file: !149, line: 2385, baseType: !814, offset: 576)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !815, line: 206, elements: !816)
!815 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!816 = !{}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !778, file: !149, line: 2386, baseType: !814, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !778, file: !149, line: 2387, baseType: !814, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !778, file: !149, line: 2388, baseType: !820, offset: 576)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, elements: !543)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !778, file: !149, line: 2390, baseType: !814, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !778, file: !149, line: 2391, baseType: !814, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !778, file: !149, line: 2392, baseType: !814, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !778, file: !149, line: 2393, baseType: !814, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !767, file: !149, line: 1197, baseType: !826, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !149, line: 2057, size: 1664, elements: !829)
!829 = !{!830, !834, !838, !839, !843, !849, !853, !854, !855, !859, !863, !867, !868, !869, !875, !880, !881, !4650, !4651, !4652, !4653, !4657, !4661, !4708, !4723, !4724}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !828, file: !149, line: 2058, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!615, !766}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !828, file: !149, line: 2059, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !615}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !828, file: !149, line: 2060, baseType: !835, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !828, file: !149, line: 2062, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !615, !50}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !828, file: !149, line: 2063, baseType: !844, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!50, !615, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !149, line: 309, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !828, file: !149, line: 2064, baseType: !850, size: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!50, !615}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !828, file: !149, line: 2065, baseType: !835, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !828, file: !149, line: 2066, baseType: !798, size: 64, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !828, file: !149, line: 2067, baseType: !856, size: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!50, !766, !50}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !828, file: !149, line: 2068, baseType: !860, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!50, !766, !148}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !828, file: !149, line: 2069, baseType: !864, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!50, !766}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !828, file: !149, line: 2070, baseType: !860, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !828, file: !149, line: 2071, baseType: !864, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !828, file: !149, line: 2072, baseType: !870, size: 64, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!50, !650, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !149, line: 62, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !828, file: !149, line: 2073, baseType: !876, size: 64, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!50, !766, !879, !542}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !828, file: !149, line: 2074, baseType: !798, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !828, file: !149, line: 2076, baseType: !882, size: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!50, !885, !650}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !887, line: 17, size: 960, elements: !888)
!887 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !917, !938, !939, !4649}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !886, file: !887, line: 18, baseType: !542, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !886, file: !887, line: 19, baseType: !63, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !886, file: !887, line: 20, baseType: !63, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 21, baseType: !63, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !886, file: !887, line: 22, baseType: !63, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !886, file: !887, line: 23, baseType: !69, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !886, file: !887, line: 24, baseType: !69, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !887, line: 25, baseType: !897, size: 256, offset: 448)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !898, line: 66, size: 256, elements: !899)
!898 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!899 = !{!900, !909, !911, !916}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !898, line: 67, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !902, line: 13, baseType: !903)
!902 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !53, line: 181, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 179, size: 64, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !904, file: !53, line: 180, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !112, line: 22, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !71)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !897, file: !898, line: 68, baseType: !910, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !96, line: 23, baseType: !95)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !897, file: !898, line: 70, baseType: !912, size: 32, offset: 96)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !913, line: 15, size: 32, elements: !914)
!913 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !912, file: !913, line: 20, baseType: !77, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !897, file: !898, line: 72, baseType: !125, size: 128, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !886, file: !887, line: 26, baseType: !918, size: 64, offset: 704)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !887, line: 32, size: 256, elements: !921)
!921 = !{!922, !926, !930, !934}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !920, file: !887, line: 33, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!48, !885, !68}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !920, file: !887, line: 34, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !885, !48}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !920, file: !887, line: 35, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!48, !885, !48, !68}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !920, file: !887, line: 36, baseType: !935, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!50, !885, !48}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !886, file: !887, line: 27, baseType: !50, size: 32, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !886, file: !887, line: 28, baseType: !940, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !149, line: 994, size: 1856, align: 64, elements: !943)
!943 = !{!944, !963, !964, !966, !967, !968, !969, !970, !4468, !4469, !4478, !4484, !4485, !4639, !4640, !4641, !4642, !4644, !4645, !4648}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !149, line: 995, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !149, line: 995, size: 128, elements: !946)
!946 = !{!947, !953, !962}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !945, file: !149, line: 996, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !949, line: 60, size: 64, elements: !950)
!949 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !949, line: 61, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !945, file: !149, line: 997, baseType: !954, size: 128, align: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !53, line: 232, size: 128, align: 64, elements: !955)
!955 = !{!956, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !954, file: !53, line: 233, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !954, file: !53, line: 234, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !957}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !945, file: !149, line: 998, baseType: !6, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !942, file: !149, line: 1005, baseType: !87, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !942, file: !149, line: 1006, baseType: !965, size: 32, offset: 160)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !53, line: 156, baseType: !6)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !942, file: !149, line: 1007, baseType: !901, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !942, file: !149, line: 1008, baseType: !897, size: 256, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !942, file: !149, line: 1009, baseType: !69, size: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !942, file: !149, line: 1010, baseType: !6, size: 32, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !942, file: !149, line: 1011, baseType: !971, size: 256, offset: 640)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !149, line: 948, size: 256, elements: !972)
!972 = !{!973, !994, !4464, !4465, !4466, !4467}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !149, line: 949, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !975, line: 34, baseType: !976)
!975 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !975, line: 25, size: 64, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !976, file: !975, line: 26, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !980, line: 27, baseType: !981)
!980 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !980, line: 13, size: 64, elements: !982)
!982 = !{!983, !993}
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !980, line: 14, baseType: !984, size: 32)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !980, line: 14, size: 32, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !984, file: !980, line: 15, baseType: !77, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !980, line: 16, baseType: !988, size: 32)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !980, line: 16, size: 32, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !988, file: !980, line: 18, baseType: !111, size: 8)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !988, file: !980, line: 19, baseType: !992, size: 24, offset: 8)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !543)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !981, file: !980, line: 26, baseType: !99, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !971, file: !149, line: 950, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !260, line: 59, size: 768, elements: !997)
!997 = !{!998, !1004, !1005, !1006, !1010, !1011, !1012, !1013}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !996, file: !260, line: 61, baseType: !999, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1000, line: 113, baseType: !1001)
!1000 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1000, line: 111, size: 32, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1001, file: !1000, line: 112, baseType: !77, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !996, file: !260, line: 62, baseType: !6, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !996, file: !260, line: 63, baseType: !87, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !996, file: !260, line: 65, baseType: !1007, size: 256, offset: 128)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 256, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 4)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !996, file: !260, line: 66, baseType: !804, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !996, file: !260, line: 68, baseType: !82, size: 192, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !996, file: !260, line: 69, baseType: !954, size: 128, align: 64, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !996, file: !260, line: 70, baseType: !1014, offset: 768)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, elements: !1764)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !260, line: 54, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1015, file: !260, line: 55, baseType: !50, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1015, file: !260, line: 56, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1021, line: 26, size: 1152, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1022 = !{!1023, !1037, !1038, !1039, !4453, !4454, !4455, !4456, !4459, !4460, !4461, !4462, !4463}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1020, file: !1021, line: 27, baseType: !1024, size: 192)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1025, line: 19, size: 192, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1026 = !{!1027, !1035, !1036}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1024, file: !1025, line: 20, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1029, line: 296, size: 128, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1030 = !{!1031, !1032, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1028, file: !1029, line: 297, baseType: !87, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1028, file: !1029, line: 299, baseType: !1033, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 154, baseType: !6)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1028, file: !1029, line: 300, baseType: !48, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1024, file: !1025, line: 21, baseType: !6, size: 32, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1024, file: !1025, line: 22, baseType: !6, size: 32, offset: 160)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1020, file: !1021, line: 28, baseType: !954, size: 128, align: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1020, file: !1021, line: 29, baseType: !6, size: 32, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1020, file: !1021, line: 30, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1042, line: 746, size: 58368, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1043 = !{!1044, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1131, !1142, !1237, !1241, !1244, !1275, !1276, !1277, !1278, !1282, !1284, !1285, !1286, !1287, !1288, !1289, !1300, !1301, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1318, !1319, !1326, !1327, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1845, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1893, !1899, !1969, !1970, !1971, !1972, !1976, !1979, !1986, !1991, !1994, !1997, !2000, !2681, !2882, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2920, !2921, !2922, !2931, !2939, !2940, !2941, !2942, !2943, !2948, !2949, !2950, !2953, !2954, !2957, !2960, !2963, !2971, !2974, !2975, !3061, !3062, !3063, !3064, !3065, !3071, !3072, !3073, !3074, !3075, !3076, !3079, !3082, !3083, !3086, !3087, !3088, !3126, !3127, !3128, !3129, !3130, !3131, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3163, !3166, !3172, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3184, !3256, !3258, !3259, !3260, !3261, !3262, !3263, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3280, !3281, !3282}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1041, file: !1042, line: 752, baseType: !1045, size: 192)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1046, line: 56, size: 192, elements: !1047)
!1046 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1047 = !{!1048, !1049, !1050, !1051}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !1046, line: 57, baseType: !67, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1045, file: !1046, line: 58, baseType: !67, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1045, file: !1046, line: 59, baseType: !684, size: 32, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1045, file: !1046, line: 61, baseType: !684, size: 32, offset: 160)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1041, file: !1042, line: 754, baseType: !6, size: 32, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1041, file: !1042, line: 767, baseType: !48, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1041, file: !1042, line: 768, baseType: !999, size: 32, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !1042, line: 770, baseType: !6, size: 32, offset: 352)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1041, file: !1042, line: 771, baseType: !6, size: 32, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1041, file: !1042, line: 774, baseType: !50, size: 32, offset: 416)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1041, file: !1042, line: 775, baseType: !1059, size: 128, offset: 448)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1060, line: 58, size: 128, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1061 = !{!1062, !1063, !1068, !1069}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1059, file: !1060, line: 59, baseType: !948, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1060, line: 60, baseType: !1064, size: 32, offset: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !1060, line: 60, size: 32, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1064, file: !1060, line: 61, baseType: !6, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1064, file: !1060, line: 62, baseType: !77, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1059, file: !1060, line: 65, baseType: !121, size: 16, offset: 96)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1059, file: !1060, line: 65, baseType: !121, size: 16, offset: 112)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1041, file: !1042, line: 776, baseType: !6, size: 32, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1041, file: !1042, line: 777, baseType: !67, size: 64, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1041, file: !1042, line: 778, baseType: !1040, size: 64, offset: 704)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1041, file: !1042, line: 787, baseType: !50, size: 32, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1041, file: !1042, line: 788, baseType: !50, size: 32, offset: 800)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1041, file: !1042, line: 790, baseType: !50, size: 32, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1041, file: !1042, line: 792, baseType: !50, size: 32, offset: 864)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1041, file: !1042, line: 793, baseType: !50, size: 32, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1041, file: !1042, line: 794, baseType: !50, size: 32, offset: 928)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1041, file: !1042, line: 795, baseType: !6, size: 32, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1041, file: !1042, line: 797, baseType: !1081, size: 2048, offset: 1024)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1042, line: 551, size: 2048, elements: !1082)
!1082 = !{!1083, !1088, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1110, !1113, !1114, !1115}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1081, file: !1042, line: 553, baseType: !1084, size: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1042, line: 411, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1084, file: !1042, line: 412, baseType: !67, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1084, file: !1042, line: 413, baseType: !684, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1081, file: !1042, line: 554, baseType: !1089, size: 192, align: 64, offset: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1090, line: 5, size: 192, align: 64, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1091 = !{!1092, !1093, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1089, file: !1090, line: 6, baseType: !67, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1089, file: !1090, line: 7, baseType: !1094, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1089, file: !1090, line: 8, baseType: !1094, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1081, file: !1042, line: 555, baseType: !688, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1081, file: !1042, line: 556, baseType: !688, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1081, file: !1042, line: 558, baseType: !125, size: 128, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1081, file: !1042, line: 559, baseType: !6, size: 32, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1081, file: !1042, line: 561, baseType: !688, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1081, file: !1042, line: 562, baseType: !688, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1081, file: !1042, line: 563, baseType: !688, size: 64, offset: 768)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1081, file: !1042, line: 564, baseType: !688, size: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1081, file: !1042, line: 565, baseType: !907, size: 64, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1081, file: !1042, line: 566, baseType: !688, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1081, file: !1042, line: 568, baseType: !688, size: 64, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1081, file: !1042, line: 571, baseType: !50, size: 32, offset: 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1081, file: !1042, line: 572, baseType: !1109, size: 64, offset: 1152)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1081, file: !1042, line: 574, baseType: !1111, size: 64, offset: 1216)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1042, line: 49, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1081, file: !1042, line: 576, baseType: !1111, size: 64, offset: 1280)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1081, file: !1042, line: 578, baseType: !67, size: 64, offset: 1344)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1081, file: !1042, line: 588, baseType: !1116, size: 512, align: 512, offset: 1536)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1042, line: 497, size: 512, align: 512, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1116, file: !1042, line: 498, baseType: !688, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1116, file: !1042, line: 499, baseType: !688, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1116, file: !1042, line: 500, baseType: !688, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1116, file: !1042, line: 501, baseType: !684, size: 32, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1116, file: !1042, line: 502, baseType: !684, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1116, file: !1042, line: 503, baseType: !67, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1116, file: !1042, line: 504, baseType: !67, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1116, file: !1042, line: 505, baseType: !67, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1116, file: !1042, line: 506, baseType: !1127, size: 64, align: 64, offset: 448)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1042, line: 445, size: 64, align: 64, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1127, file: !1042, line: 446, baseType: !6, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1127, file: !1042, line: 447, baseType: !6, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1041, file: !1042, line: 798, baseType: !1132, size: 384, offset: 3072)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1042, line: 592, size: 384, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1132, file: !1042, line: 593, baseType: !125, size: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1132, file: !1042, line: 594, baseType: !67, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1132, file: !1042, line: 595, baseType: !67, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1132, file: !1042, line: 596, baseType: !6, size: 32, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1132, file: !1042, line: 597, baseType: !54, size: 16, offset: 288)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1132, file: !1042, line: 598, baseType: !54, size: 16, offset: 304)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1132, file: !1042, line: 600, baseType: !1141, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1041, file: !1042, line: 799, baseType: !1143, size: 1792, offset: 3456)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1042, line: 610, size: 1792, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1234, !1235}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1143, file: !1042, line: 611, baseType: !1089, size: 192, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1143, file: !1042, line: 618, baseType: !688, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1143, file: !1042, line: 619, baseType: !688, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1143, file: !1042, line: 620, baseType: !688, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1143, file: !1042, line: 621, baseType: !688, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1143, file: !1042, line: 622, baseType: !688, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1143, file: !1042, line: 629, baseType: !907, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1143, file: !1042, line: 630, baseType: !688, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1042, line: 631, baseType: !6, size: 32, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1143, file: !1042, line: 653, baseType: !6, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1143, file: !1042, line: 654, baseType: !6, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1143, file: !1042, line: 655, baseType: !6, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1143, file: !1042, line: 656, baseType: !6, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1143, file: !1042, line: 662, baseType: !1159, size: 512, offset: 704)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !35, line: 118, size: 512, elements: !1160)
!1160 = !{!1161, !1169, !1170, !1175, !1230, !1231, !1232, !1233}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1159, file: !35, line: 119, baseType: !1162, size: 256)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1163, line: 9, size: 256, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1162, file: !1163, line: 10, baseType: !1089, size: 192, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1162, file: !1163, line: 11, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1168, line: 29, baseType: !907)
!1168 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1159, file: !35, line: 120, baseType: !1167, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1159, file: !35, line: 121, baseType: !1171, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!34, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1159, file: !35, line: 122, baseType: !1176, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !35, line: 159, size: 512, align: 512, elements: !1178)
!1178 = !{!1179, !1204, !1205, !1208, !1213, !1214, !1225, !1229}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1177, file: !35, line: 160, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !35, line: 215, size: 4608, align: 512, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1181, file: !35, line: 216, baseType: !910, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1181, file: !35, line: 217, baseType: !6, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1181, file: !35, line: 218, baseType: !6, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1181, file: !35, line: 219, baseType: !6, size: 32, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1181, file: !35, line: 220, baseType: !6, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1181, file: !35, line: 221, baseType: !6, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1181, file: !35, line: 222, baseType: !6, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1181, file: !35, line: 223, baseType: !6, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1181, file: !35, line: 224, baseType: !6, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1181, file: !35, line: 226, baseType: !6, size: 32, offset: 160)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1181, file: !35, line: 227, baseType: !54, size: 16, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1181, file: !35, line: 228, baseType: !54, size: 16, offset: 208)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1181, file: !35, line: 229, baseType: !6, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1181, file: !35, line: 235, baseType: !1167, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1181, file: !35, line: 236, baseType: !1174, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1181, file: !35, line: 237, baseType: !1167, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1181, file: !35, line: 238, baseType: !1174, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1181, file: !35, line: 239, baseType: !1201, size: 4096, align: 512, offset: 512)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 4096, align: 512, elements: !1202)
!1202 = !{!1203}
!1203 = !DISubrange(count: 8)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1177, file: !35, line: 161, baseType: !6, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1177, file: !35, line: 162, baseType: !1206, size: 32, offset: 96)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !53, line: 32, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !65, line: 96, baseType: !50)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1177, file: !35, line: 163, baseType: !1209, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !657, line: 274, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !657, line: 274, size: 32, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1210, file: !657, line: 274, baseType: !661, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1177, file: !35, line: 164, baseType: !1174, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1177, file: !35, line: 165, baseType: !1215, size: 128, offset: 256)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1163, line: 14, size: 128, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1215, file: !1163, line: 15, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1090, line: 26, size: 128, elements: !1219)
!1219 = !{!1220, !1224}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1218, file: !1090, line: 27, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1090, line: 12, size: 64, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1221, file: !1090, line: 13, baseType: !1094, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1218, file: !1090, line: 28, baseType: !1094, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1177, file: !35, line: 166, baseType: !1226, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!1167}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1177, file: !35, line: 167, baseType: !1167, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1159, file: !35, line: 123, baseType: !111, size: 8, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1159, file: !35, line: 124, baseType: !111, size: 8, offset: 456)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1159, file: !35, line: 125, baseType: !111, size: 8, offset: 464)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1159, file: !35, line: 126, baseType: !111, size: 8, offset: 472)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1143, file: !1042, line: 671, baseType: !1159, size: 512, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1143, file: !1042, line: 679, baseType: !1236, size: 64, offset: 1728)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1041, file: !1042, line: 800, baseType: !1238, size: 64, offset: 5248)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1042, line: 800, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1041, file: !1042, line: 809, baseType: !1242, size: 64, offset: 5312)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1042, line: 70, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1041, file: !1042, line: 825, baseType: !1245, size: 2048, align: 512, offset: 5632)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1042, line: 509, size: 2048, align: 512, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1245, file: !1042, line: 511, baseType: !688, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1245, file: !1042, line: 512, baseType: !688, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1245, file: !1042, line: 513, baseType: !688, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1245, file: !1042, line: 514, baseType: !688, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1245, file: !1042, line: 515, baseType: !688, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1245, file: !1042, line: 516, baseType: !688, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1245, file: !1042, line: 518, baseType: !688, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1245, file: !1042, line: 519, baseType: !688, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1245, file: !1042, line: 520, baseType: !907, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1245, file: !1042, line: 522, baseType: !688, size: 64, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1245, file: !1042, line: 523, baseType: !688, size: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1245, file: !1042, line: 524, baseType: !907, size: 64, offset: 704)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1245, file: !1042, line: 526, baseType: !907, size: 64, offset: 768)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1245, file: !1042, line: 527, baseType: !688, size: 64, offset: 832)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1245, file: !1042, line: 529, baseType: !688, size: 64, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1245, file: !1042, line: 530, baseType: !688, size: 64, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1245, file: !1042, line: 531, baseType: !688, size: 64, offset: 1024)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1245, file: !1042, line: 532, baseType: !688, size: 64, offset: 1088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1245, file: !1042, line: 533, baseType: !688, size: 64, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1245, file: !1042, line: 535, baseType: !688, size: 64, offset: 1216)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1245, file: !1042, line: 536, baseType: !688, size: 64, offset: 1280)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1245, file: !1042, line: 537, baseType: !688, size: 64, offset: 1344)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1245, file: !1042, line: 538, baseType: !688, size: 64, offset: 1408)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1245, file: !1042, line: 539, baseType: !688, size: 64, offset: 1472)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1245, file: !1042, line: 540, baseType: !688, size: 64, offset: 1536)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1245, file: !1042, line: 541, baseType: !688, size: 64, offset: 1600)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1245, file: !1042, line: 542, baseType: !688, size: 64, offset: 1664)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1245, file: !1042, line: 543, baseType: !688, size: 64, offset: 1728)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1041, file: !1042, line: 833, baseType: !6, size: 32, offset: 7680)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1041, file: !1042, line: 836, baseType: !6, size: 32, offset: 7712)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1041, file: !1042, line: 837, baseType: !50, size: 32, offset: 7744)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1041, file: !1042, line: 838, baseType: !1279, size: 64, offset: 7808)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !475, line: 19, baseType: !477)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1041, file: !1042, line: 839, baseType: !1283, size: 64, offset: 7872)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1041, file: !1042, line: 840, baseType: !1281, size: 64, offset: 7936)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1041, file: !1042, line: 841, baseType: !48, size: 64, offset: 8000)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1041, file: !1042, line: 843, baseType: !54, size: 16, offset: 8064)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1041, file: !1042, line: 845, baseType: !54, size: 16, offset: 8080)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1041, file: !1042, line: 848, baseType: !50, size: 32, offset: 8096)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1041, file: !1042, line: 849, baseType: !1290, size: 32, offset: 8128)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1042, line: 718, size: 32, elements: !1291)
!1291 = !{!1292, !1299}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1290, file: !1042, line: 724, baseType: !1293, size: 32)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1042, line: 719, size: 32, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1293, file: !1042, line: 720, baseType: !111, size: 8)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1293, file: !1042, line: 721, baseType: !111, size: 8, offset: 8)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1293, file: !1042, line: 722, baseType: !111, size: 8, offset: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1293, file: !1042, line: 723, baseType: !111, size: 8, offset: 24)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1290, file: !1042, line: 725, baseType: !684, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1041, file: !1042, line: 850, baseType: !125, size: 128, offset: 8192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1041, file: !1042, line: 851, baseType: !1302, size: 64, offset: 8320)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1042, line: 60, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1041, file: !1042, line: 855, baseType: !67, size: 64, offset: 8384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1041, file: !1042, line: 856, baseType: !111, size: 8, offset: 8448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1041, file: !1042, line: 857, baseType: !111, size: 8, offset: 8456)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1041, file: !1042, line: 858, baseType: !50, size: 32, offset: 8480)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1041, file: !1042, line: 859, baseType: !125, size: 128, offset: 8512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1041, file: !1042, line: 860, baseType: !50, size: 32, offset: 8640)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1041, file: !1042, line: 861, baseType: !125, size: 128, offset: 8704)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1041, file: !1042, line: 873, baseType: !1312, size: 256, offset: 8832)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1042, line: 376, size: 256, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1312, file: !1042, line: 381, baseType: !67, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1312, file: !1042, line: 384, baseType: !690, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1312, file: !1042, line: 389, baseType: !690, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1312, file: !1042, line: 392, baseType: !690, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1041, file: !1042, line: 875, baseType: !125, size: 128, offset: 9088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1041, file: !1042, line: 877, baseType: !1320, size: 320, offset: 9216)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1321, line: 86, size: 320, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1320, file: !1321, line: 87, baseType: !50, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1320, file: !1321, line: 88, baseType: !125, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1320, file: !1321, line: 89, baseType: !125, size: 128, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1041, file: !1042, line: 878, baseType: !1089, size: 192, align: 64, offset: 9536)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1041, file: !1042, line: 881, baseType: !1328, size: 64, offset: 9728)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !160, line: 733, size: 10240, elements: !1330)
!1330 = !{!1331, !1762}
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !160, line: 734, baseType: !1332, size: 10240)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !160, line: 734, size: 10240, elements: !1333)
!1333 = !{!1334, !1338, !1351, !1356, !1357, !1358, !1359, !1360, !1361, !1370, !1371, !1372, !1378, !1379, !1380, !1381, !1382, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1419, !1431, !1434, !1482, !1483, !1484, !1487, !1748, !1749, !1752, !1753, !1754, !1760, !1761}
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !160, line: 739, baseType: !1335, size: 512, align: 512)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !160, line: 739, size: 512, align: 512, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1335, file: !160, line: 747, baseType: !77, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1332, file: !160, line: 750, baseType: !1339, size: 128, offset: 512)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1340, line: 218, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1341 = !{!1342, !1349, !1350}
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1340, line: 219, baseType: !1343, size: 32)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1340, line: 219, size: 32, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1343, file: !1340, line: 220, baseType: !87, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1343, file: !1340, line: 221, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1340, line: 197, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 197, elements: !816)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1339, file: !1340, line: 223, baseType: !6, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1339, file: !1340, line: 224, baseType: !48, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1332, file: !160, line: 752, baseType: !1352, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!67, !1355, !67, !67, !67, !67}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1332, file: !160, line: 756, baseType: !67, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1332, file: !160, line: 757, baseType: !67, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1332, file: !160, line: 760, baseType: !67, size: 64, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1332, file: !160, line: 761, baseType: !67, size: 64, offset: 896)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1332, file: !160, line: 763, baseType: !67, size: 64, offset: 960)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1332, file: !160, line: 764, baseType: !1362, size: 64, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1364, line: 299, baseType: !1365)
!1364 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 299, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1365, file: !1364, line: 299, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1369, line: 18, baseType: !67)
!1369 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1332, file: !160, line: 773, baseType: !77, size: 32, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1332, file: !160, line: 785, baseType: !77, size: 32, offset: 1120)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1332, file: !160, line: 795, baseType: !1373, size: 64, offset: 1152)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !160, line: 726, size: 128, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1374, file: !160, line: 727, baseType: !688, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1374, file: !160, line: 728, baseType: !50, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1332, file: !160, line: 801, baseType: !67, size: 64, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1332, file: !160, line: 804, baseType: !901, size: 64, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1332, file: !160, line: 806, baseType: !50, size: 32, offset: 1344)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1332, file: !160, line: 808, baseType: !87, size: 32, offset: 1376)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1332, file: !160, line: 823, baseType: !1383, size: 320, offset: 1408)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1384, line: 48, size: 320, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1385 = !{!1386, !1387, !1388, !1389, !1390}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1383, file: !1384, line: 49, baseType: !901, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1383, file: !1384, line: 55, baseType: !901, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1383, file: !1384, line: 57, baseType: !912, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1383, file: !1384, line: 59, baseType: !910, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1383, file: !1384, line: 60, baseType: !125, size: 128, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1332, file: !160, line: 825, baseType: !125, size: 128, offset: 1728)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1332, file: !160, line: 845, baseType: !50, size: 32, offset: 1856)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1332, file: !160, line: 849, baseType: !67, size: 64, offset: 1920)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1332, file: !160, line: 850, baseType: !67, size: 64, offset: 1984)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1332, file: !160, line: 852, baseType: !67, size: 64, offset: 2048)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1332, file: !160, line: 853, baseType: !67, size: 64, offset: 2112)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1332, file: !160, line: 854, baseType: !903, size: 64, offset: 2176)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1332, file: !160, line: 855, baseType: !67, size: 64, offset: 2240)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1332, file: !160, line: 856, baseType: !67, size: 64, offset: 2304)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1332, file: !160, line: 857, baseType: !67, size: 64, offset: 2368)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1332, file: !160, line: 858, baseType: !67, size: 64, offset: 2432)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1332, file: !160, line: 865, baseType: !661, size: 32, offset: 2496)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1332, file: !160, line: 867, baseType: !87, size: 32, offset: 2528)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1332, file: !160, line: 869, baseType: !67, size: 64, offset: 2560)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1332, file: !160, line: 869, baseType: !67, size: 64, offset: 2624)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1332, file: !160, line: 869, baseType: !67, size: 64, offset: 2688)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1332, file: !160, line: 869, baseType: !67, size: 64, offset: 2752)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1332, file: !160, line: 870, baseType: !67, size: 64, offset: 2816)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1332, file: !160, line: 870, baseType: !67, size: 64, offset: 2880)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1332, file: !160, line: 870, baseType: !67, size: 64, offset: 2944)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1332, file: !160, line: 871, baseType: !67, size: 64, offset: 3008)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1332, file: !160, line: 871, baseType: !67, size: 64, offset: 3072)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1332, file: !160, line: 871, baseType: !67, size: 64, offset: 3136)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1332, file: !160, line: 871, baseType: !67, size: 64, offset: 3200)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1332, file: !160, line: 873, baseType: !1416, size: 3328, offset: 3264)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3328, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 52)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1332, file: !160, line: 875, baseType: !1420, size: 1280, offset: 6592)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 1280, elements: !1008)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1422, line: 22, size: 320, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1423 = !{!1424, !1425, !1426, !1427}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1422, line: 23, baseType: !910, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1421, file: !1422, line: 24, baseType: !907, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1421, file: !1422, line: 26, baseType: !125, size: 128, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1421, file: !1422, line: 28, baseType: !1428, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !112, line: 20, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !50)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1332, file: !160, line: 877, baseType: !1432, size: 64, offset: 7872)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !160, line: 877, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1332, file: !160, line: 880, baseType: !1435, size: 1088, offset: 7936)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1436, line: 72, baseType: !1437)
!1436 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1436, line: 23, size: 1088, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1446, !1447, !1448, !1449, !1476, !1477, !1478}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1437, file: !1436, line: 28, baseType: !688, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1437, file: !1436, line: 38, baseType: !903, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1437, file: !1436, line: 40, baseType: !67, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1437, file: !1436, line: 43, baseType: !1383, size: 320, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1437, file: !1436, line: 44, baseType: !1444, size: 64, offset: 512)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1436, line: 44, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1437, file: !1436, line: 48, baseType: !67, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1437, file: !1436, line: 59, baseType: !897, size: 256, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1437, file: !1436, line: 60, baseType: !48, size: 64, offset: 896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1437, file: !1436, line: 61, baseType: !1450, size: 64, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1453, line: 13, size: 1216, elements: !1454)
!1453 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1452, file: !1453, line: 14, baseType: !48, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1452, file: !1453, line: 15, baseType: !67, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1452, file: !1453, line: 17, baseType: !67, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1452, file: !1453, line: 17, baseType: !67, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1452, file: !1453, line: 18, baseType: !67, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1452, file: !1453, line: 18, baseType: !67, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1452, file: !1453, line: 19, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1452, file: !1453, line: 21, baseType: !487, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1452, file: !1453, line: 23, baseType: !487, size: 64, offset: 512)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1452, file: !1453, line: 24, baseType: !487, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1452, file: !1453, line: 25, baseType: !487, size: 64, offset: 640)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1452, file: !1453, line: 26, baseType: !487, size: 64, offset: 704)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1452, file: !1453, line: 27, baseType: !487, size: 64, offset: 768)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1452, file: !1453, line: 28, baseType: !487, size: 64, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1452, file: !1453, line: 29, baseType: !487, size: 64, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1452, file: !1453, line: 30, baseType: !487, size: 64, offset: 960)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1452, file: !1453, line: 31, baseType: !487, size: 64, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1452, file: !1453, line: 32, baseType: !487, size: 64, offset: 1088)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1452, file: !1453, line: 33, baseType: !487, size: 64, offset: 1152)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1437, file: !1436, line: 63, baseType: !77, size: 32, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1437, file: !1436, line: 69, baseType: !121, size: 16, offset: 1056)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1437, file: !1436, line: 70, baseType: !1479, size: 16, offset: 1072)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !112, line: 18, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !1481)
!1481 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !160, line: 882, baseType: !67, size: 64, offset: 9024)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1332, file: !160, line: 885, baseType: !87, size: 32, offset: 9088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1332, file: !160, line: 886, baseType: !1485, size: 64, offset: 9152)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !160, line: 732, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1332, file: !160, line: 901, baseType: !1488, size: 64, offset: 9216)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1490, line: 68, size: 4800, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1491 = !{!1492, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1531, !1532, !1535, !1536, !1646, !1647, !1659, !1729, !1730, !1744, !1746}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1489, file: !1490, line: 69, baseType: !1493, size: 576)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1490, line: 23, size: 576, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1493, file: !1490, line: 24, baseType: !684, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1490, line: 25, baseType: !1497, size: 512, offset: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1490, line: 25, size: 512, elements: !1498)
!1498 = !{!1499, !1508}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1497, file: !1490, line: 26, baseType: !1500, size: 480)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 480, elements: !1506)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1490, line: 17, size: 96, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1501, file: !1490, line: 18, baseType: !684, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1501, file: !1490, line: 19, baseType: !684, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1501, file: !1490, line: 20, baseType: !684, size: 32, offset: 64)
!1506 = !{!1507}
!1507 = !DISubrange(count: 5)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1490, line: 27, baseType: !1509, size: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !1490, line: 27, size: 128, elements: !1510)
!1510 = !{!1511, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1509, file: !1490, line: 28, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1509, file: !1490, line: 29, baseType: !1512, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1489, file: !1490, line: 70, baseType: !1493, size: 576, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1489, file: !1490, line: 71, baseType: !1493, size: 576, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1489, file: !1490, line: 72, baseType: !1488, size: 64, offset: 1728)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1489, file: !1490, line: 73, baseType: !50, size: 32, offset: 1792)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1489, file: !1490, line: 74, baseType: !621, size: 32, offset: 1824)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1489, file: !1490, line: 75, baseType: !630, size: 32, offset: 1856)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1489, file: !1490, line: 76, baseType: !1521, size: 192, offset: 1920)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1522, line: 9, size: 192, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1523 = !{!1524, !1525, !1529, !1530}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1521, file: !1522, line: 10, baseType: !901, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1521, file: !1522, line: 11, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1522, line: 7, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1521, file: !1522, line: 12, baseType: !6, size: 32, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1521, file: !1522, line: 13, baseType: !999, size: 32, offset: 160)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !1490, line: 77, baseType: !67, size: 64, offset: 2112)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1489, file: !1490, line: 80, baseType: !1533, size: 8, offset: 2176)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 35, baseType: !1534)
!1534 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1489, file: !1490, line: 88, baseType: !125, size: 128, offset: 2240)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1489, file: !1490, line: 89, baseType: !1537, size: 64, offset: 2368)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1539, line: 195, size: 1728, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1540 = !{!1541, !1542, !1545, !1550, !1551, !1554, !1555, !1562, !1563, !1564, !1565, !1568, !1569, !1570, !1571, !1572, !1610, !1631}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1538, file: !1539, line: 196, baseType: !999, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1538, file: !1539, line: 197, baseType: !1543, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1539, line: 28, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !53, line: 104, baseType: !1429)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !1539, line: 198, baseType: !1546, size: 192, offset: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !1539, line: 198, size: 192, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1546, file: !1539, line: 199, baseType: !125, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1546, file: !1539, line: 200, baseType: !1089, size: 192, align: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1538, file: !1539, line: 205, baseType: !1383, size: 320, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1538, file: !1539, line: 206, baseType: !1552, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1539, line: 206, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1538, file: !1539, line: 207, baseType: !48, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !1539, line: 208, baseType: !1556, size: 64, offset: 704)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !1539, line: 208, size: 64, elements: !1557)
!1557 = !{!1558, !1561}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1556, file: !1539, line: 209, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1560, line: 8, baseType: !908)
!1560 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1556, file: !1539, line: 210, baseType: !1559, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1538, file: !1539, line: 212, baseType: !1559, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1538, file: !1539, line: 213, baseType: !621, size: 32, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1538, file: !1539, line: 214, baseType: !630, size: 32, offset: 864)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1538, file: !1539, line: 215, baseType: !1566, size: 32, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1539, line: 31, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 110, baseType: !684)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1538, file: !1539, line: 216, baseType: !54, size: 16, offset: 928)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1538, file: !1539, line: 217, baseType: !54, size: 16, offset: 944)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1538, file: !1539, line: 221, baseType: !1481, size: 16, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !1539, line: 228, baseType: !67, size: 64, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !1539, line: 245, baseType: !1573, size: 320, offset: 1088)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !1539, line: 245, size: 320, elements: !1574)
!1574 = !{!1575, !1602}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1573, file: !1539, line: 246, baseType: !1576, size: 320)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1539, line: 114, size: 320, elements: !1577)
!1577 = !{!1578, !1579, !1591, !1594, !1601}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1576, file: !1539, line: 116, baseType: !67, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1539, line: 117, baseType: !1580, size: 64, offset: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1539, line: 117, size: 64, elements: !1581)
!1581 = !{!1582, !1590}
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !1539, line: 118, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1580, file: !1539, line: 118, size: 64, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1583, file: !1539, line: 120, baseType: !121, size: 16)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1583, file: !1539, line: 121, baseType: !1587, size: 48, offset: 16)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 6)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1580, file: !1539, line: 127, baseType: !67, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1576, file: !1539, line: 129, baseType: !1592, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1539, line: 102, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1576, file: !1539, line: 130, baseType: !1595, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1539, line: 108, size: 192, elements: !1597)
!1597 = !{!1598, !1599, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1596, file: !1539, line: 109, baseType: !954, size: 128, align: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1596, file: !1539, line: 110, baseType: !999, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1596, file: !1539, line: 111, baseType: !1533, size: 8, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1576, file: !1539, line: 131, baseType: !44, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1539, line: 247, baseType: !1603, size: 320)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !1539, line: 247, size: 320, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1603, file: !1539, line: 248, baseType: !67, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1603, file: !1539, line: 249, baseType: !67, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1603, file: !1539, line: 250, baseType: !1592, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1603, file: !1539, line: 251, baseType: !1595, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1603, file: !1539, line: 252, baseType: !542, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !1539, line: 260, baseType: !1611, size: 256, offset: 1408)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !1539, line: 260, size: 256, elements: !1612)
!1612 = !{!1613, !1619}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1611, file: !1539, line: 261, baseType: !1614, size: 256)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1539, line: 134, size: 256, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1614, file: !1539, line: 135, baseType: !48, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1614, file: !1539, line: 136, baseType: !1618, size: 256)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !1008)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1539, line: 262, baseType: !1620, size: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !1539, line: 262, size: 256, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1620, file: !1539, line: 264, baseType: !125, size: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1620, file: !1539, line: 265, baseType: !1624, size: 128, offset: 128)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1625, line: 22, size: 128, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1626 = !{!1627, !1630}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1624, file: !1625, line: 23, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1625, line: 23, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1624, file: !1625, line: 24, baseType: !67, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1538, file: !1539, line: 280, baseType: !1632, size: 64, offset: 1664)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1539, line: 176, size: 192, elements: !1634)
!1634 = !{!1635, !1644, !1645}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1633, file: !1539, line: 177, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1539, line: 171, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!50, !1537, !1640, !1642, !1537}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1633, file: !1539, line: 178, baseType: !1537, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1633, file: !1539, line: 179, baseType: !1592, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1489, file: !1490, line: 90, baseType: !1383, size: 320, offset: 2432)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1489, file: !1490, line: 97, baseType: !1648, size: 256, offset: 2752)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1649, line: 98, size: 256, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1648, file: !1649, line: 99, baseType: !901, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1648, file: !1649, line: 100, baseType: !125, size: 128, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1648, file: !1649, line: 101, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1649, line: 21, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1489, file: !1490, line: 99, baseType: !1660, size: 768, offset: 3008)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !40, line: 199, size: 768, elements: !1661)
!1661 = !{!1662, !1667}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1660, file: !40, line: 200, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!50, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1660, file: !40, line: 201, baseType: !1668, size: 704, offset: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !40, line: 193, size: 704, elements: !1669)
!1669 = !{!1670, !1728}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1668, file: !40, line: 195, baseType: !1671, size: 640)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !40, line: 173, size: 640, elements: !1672)
!1672 = !{!1673, !1685, !1697, !1698, !1718, !1719, !1721, !1727}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !40, line: 174, baseType: !1674, size: 192)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !40, line: 174, size: 192, elements: !1675)
!1675 = !{!1676, !1684}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !40, line: 175, baseType: !1677, size: 192)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !40, line: 175, size: 192, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1677, file: !40, line: 176, baseType: !61, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1677, file: !40, line: 177, baseType: !50, size: 32, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1677, file: !40, line: 178, baseType: !50, size: 32, offset: 96)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1677, file: !40, line: 179, baseType: !50, size: 32, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1677, file: !40, line: 180, baseType: !50, size: 32, offset: 160)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1674, file: !40, line: 182, baseType: !954, size: 128, align: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1671, file: !40, line: 184, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1688, line: 26, size: 256, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1687, file: !1688, line: 27, baseType: !6, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1687, file: !1688, line: 28, baseType: !1692, size: 192, offset: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1693, line: 43, size: 192, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !1693, line: 44, baseType: !910, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1692, file: !1693, line: 45, baseType: !125, size: 128, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1671, file: !40, line: 185, baseType: !61, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1671, file: !40, line: 186, baseType: !1699, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !40, line: 204, size: 960, elements: !1701)
!1701 = !{!1702, !1703, !1707, !1714}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1700, file: !40, line: 205, baseType: !1660, size: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1700, file: !40, line: 206, baseType: !1704, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1666, !1699}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1700, file: !40, line: 207, baseType: !1708, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1711, !1712, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1700, file: !40, line: 209, baseType: !1715, size: 64, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!50, !1711, !61}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1671, file: !40, line: 187, baseType: !1666, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1671, file: !40, line: 188, baseType: !1720, size: 64, offset: 448)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1671, file: !40, line: 189, baseType: !1722, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !40, line: 157, size: 256, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1723, file: !40, line: 158, baseType: !1089, size: 192, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1723, file: !40, line: 159, baseType: !1711, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1671, file: !40, line: 190, baseType: !804, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1668, file: !40, line: 196, baseType: !1221, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1489, file: !1490, line: 100, baseType: !1711, size: 64, offset: 3776)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1489, file: !1490, line: 102, baseType: !1731, size: 64, offset: 3840)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1490, line: 107, size: 1152, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1742}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1732, file: !1490, line: 108, baseType: !808, size: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1732, file: !1490, line: 109, baseType: !1488, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1732, file: !1490, line: 110, baseType: !621, size: 32, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1732, file: !1490, line: 111, baseType: !77, size: 32, offset: 224)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1732, file: !1490, line: 112, baseType: !1739, size: 640, offset: 256)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 640, elements: !1740)
!1740 = !{!1741}
!1741 = !DISubrange(count: 10)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1732, file: !1490, line: 113, baseType: !1743, size: 256, offset: 896)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 256, elements: !1008)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1489, file: !1490, line: 103, baseType: !1745, size: 640, offset: 3904)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 640, elements: !1740)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1489, file: !1490, line: 104, baseType: !1747, size: 256, offset: 4544)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 256, elements: !1008)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1332, file: !160, line: 904, baseType: !1355, size: 64, offset: 9280)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1332, file: !160, line: 906, baseType: !1750, size: 64, offset: 9344)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !160, line: 906, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1332, file: !160, line: 930, baseType: !77, size: 32, offset: 9408)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1332, file: !160, line: 933, baseType: !77, size: 32, offset: 9440)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1332, file: !160, line: 935, baseType: !1755, size: 64, offset: 9472)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !191, line: 103, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1755, file: !191, line: 104, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !191, line: 101, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1332, file: !160, line: 940, baseType: !901, size: 64, offset: 9536)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1332, file: !160, line: 942, baseType: !1648, size: 256, offset: 9600)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1329, file: !160, line: 986, baseType: !1763, offset: 10240)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: -1)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1041, file: !1042, line: 882, baseType: !1328, size: 64, offset: 9792)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1041, file: !1042, line: 884, baseType: !50, size: 32, offset: 9856)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1041, file: !1042, line: 885, baseType: !50, size: 32, offset: 9888)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1041, file: !1042, line: 886, baseType: !50, size: 32, offset: 9920)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1041, file: !1042, line: 888, baseType: !50, size: 32, offset: 9952)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1041, file: !1042, line: 890, baseType: !67, size: 64, offset: 9984)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1041, file: !1042, line: 893, baseType: !6, size: 32, offset: 10048)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1041, file: !1042, line: 896, baseType: !6, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1041, file: !1042, line: 897, baseType: !6, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1041, file: !1042, line: 898, baseType: !6, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1041, file: !1042, line: 899, baseType: !6, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1041, file: !1042, line: 919, baseType: !6, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1041, file: !1042, line: 922, baseType: !6, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1041, file: !1042, line: 923, baseType: !6, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1041, file: !1042, line: 925, baseType: !6, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1041, file: !1042, line: 939, baseType: !6, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1041, file: !1042, line: 941, baseType: !6, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1041, file: !1042, line: 944, baseType: !6, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1041, file: !1042, line: 956, baseType: !6, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1041, file: !1042, line: 962, baseType: !6, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1041, file: !1042, line: 966, baseType: !6, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1041, file: !1042, line: 969, baseType: !67, size: 64, offset: 10176)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1041, file: !1042, line: 971, baseType: !1789, size: 448, offset: 10240)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !136, line: 25, size: 448, elements: !1790)
!1790 = !{!1791, !1792, !1797}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1789, file: !136, line: 26, baseType: !67, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1789, file: !136, line: 27, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!487, !1796}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !136, line: 28, baseType: !1798, size: 320, offset: 128)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !136, line: 28, size: 320, elements: !1799)
!1799 = !{!1800, !1810, !1835}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1798, file: !136, line: 37, baseType: !1801, size: 320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !136, line: 30, size: 320, elements: !1802)
!1802 = !{!1803, !1805, !1806, !1807, !1808, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1801, file: !136, line: 31, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1801, file: !136, line: 32, baseType: !684, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1801, file: !136, line: 33, baseType: !684, size: 32, offset: 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1801, file: !136, line: 34, baseType: !684, size: 32, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1801, file: !136, line: 35, baseType: !688, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1801, file: !136, line: 36, baseType: !1804, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1798, file: !136, line: 47, baseType: !1811, size: 192)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !136, line: 39, size: 192, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1834}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1811, file: !136, line: 40, baseType: !1206, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1811, file: !136, line: 41, baseType: !135, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !136, line: 42, baseType: !1816, size: 64, offset: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !136, line: 42, size: 64, elements: !1817)
!1817 = !{!1818, !1826}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1816, file: !136, line: 43, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1821, line: 7, size: 128, elements: !1822)
!1821 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1822 = !{!1823, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1820, file: !1821, line: 8, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !65, line: 93, baseType: !71)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1820, file: !1821, line: 9, baseType: !71, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1816, file: !136, line: 44, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1829, line: 7, size: 64, elements: !1830)
!1829 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1830 = !{!1831, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1828, file: !1829, line: 8, baseType: !1832, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1829, line: 5, baseType: !1429)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1828, file: !1829, line: 9, baseType: !1429, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1811, file: !136, line: 46, baseType: !688, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1798, file: !136, line: 55, baseType: !1836, size: 256)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !136, line: 49, size: 256, elements: !1837)
!1837 = !{!1838, !1841, !1842, !1843, !1844}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1836, file: !136, line: 50, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !136, line: 14, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1836, file: !136, line: 51, baseType: !50, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1836, file: !136, line: 52, baseType: !50, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1836, file: !136, line: 53, baseType: !67, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1836, file: !136, line: 54, baseType: !67, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1041, file: !1042, line: 973, baseType: !1846, size: 32, offset: 10688)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !53, line: 27, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !65, line: 28, baseType: !50)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1041, file: !1042, line: 974, baseType: !1846, size: 32, offset: 10720)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1041, file: !1042, line: 978, baseType: !67, size: 64, offset: 10752)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1041, file: !1042, line: 987, baseType: !1040, size: 64, offset: 10816)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1041, file: !1042, line: 990, baseType: !1040, size: 64, offset: 10880)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1041, file: !1042, line: 995, baseType: !125, size: 128, offset: 10944)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1041, file: !1042, line: 996, baseType: !125, size: 128, offset: 11072)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1041, file: !1042, line: 997, baseType: !1040, size: 64, offset: 11200)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1041, file: !1042, line: 1005, baseType: !125, size: 128, offset: 11264)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1041, file: !1042, line: 1006, baseType: !125, size: 128, offset: 11392)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1041, file: !1042, line: 1009, baseType: !995, size: 64, offset: 11520)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1041, file: !1042, line: 1010, baseType: !1859, size: 512, offset: 11584)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 512, elements: !1008)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1041, file: !1042, line: 1011, baseType: !125, size: 128, offset: 12096)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1041, file: !1042, line: 1012, baseType: !125, size: 128, offset: 12224)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1041, file: !1042, line: 1014, baseType: !1686, size: 64, offset: 12352)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1041, file: !1042, line: 1017, baseType: !879, size: 64, offset: 12416)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1041, file: !1042, line: 1020, baseType: !879, size: 64, offset: 12480)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1041, file: !1042, line: 1023, baseType: !48, size: 64, offset: 12544)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1041, file: !1042, line: 1025, baseType: !688, size: 64, offset: 12608)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1041, file: !1042, line: 1026, baseType: !688, size: 64, offset: 12672)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1041, file: !1042, line: 1031, baseType: !688, size: 64, offset: 12736)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1041, file: !1042, line: 1032, baseType: !1870, size: 192, offset: 12800)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1042, line: 324, size: 192, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1870, file: !1042, line: 326, baseType: !688, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1870, file: !1042, line: 327, baseType: !688, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1870, file: !1042, line: 328, baseType: !910, size: 32, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1041, file: !1042, line: 1041, baseType: !67, size: 64, offset: 12992)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1041, file: !1042, line: 1042, baseType: !67, size: 64, offset: 13056)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1041, file: !1042, line: 1045, baseType: !688, size: 64, offset: 13120)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1041, file: !1042, line: 1048, baseType: !688, size: 64, offset: 13184)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1041, file: !1042, line: 1051, baseType: !67, size: 64, offset: 13248)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1041, file: !1042, line: 1052, baseType: !67, size: 64, offset: 13312)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1041, file: !1042, line: 1055, baseType: !1882, size: 640, offset: 13376)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1883, line: 132, size: 640, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1884 = !{!1885, !1891, !1892}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1882, file: !1883, line: 133, baseType: !1886, size: 576)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1887, size: 576, elements: !543)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1883, line: 117, size: 192, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1887, file: !1883, line: 118, baseType: !688, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1887, file: !1883, line: 119, baseType: !1215, size: 128, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1882, file: !1883, line: 134, baseType: !6, size: 32, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1882, file: !1883, line: 135, baseType: !6, size: 32, offset: 608)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1041, file: !1042, line: 1058, baseType: !1894, size: 448, offset: 14016)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1883, line: 144, size: 448, elements: !1895)
!1895 = !{!1896, !1897, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1894, file: !1883, line: 145, baseType: !954, size: 128, align: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1894, file: !1883, line: 146, baseType: !897, size: 256, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1894, file: !1883, line: 147, baseType: !6, size: 32, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1041, file: !1042, line: 1064, baseType: !1900, size: 64, offset: 14464)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1902)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1903, line: 110, size: 1472, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1954, !1955, !1956, !1964}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1902, file: !1903, line: 111, baseType: !901, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1902, file: !1903, line: 112, baseType: !621, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1902, file: !1903, line: 113, baseType: !630, size: 32, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1902, file: !1903, line: 114, baseType: !621, size: 32, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1902, file: !1903, line: 115, baseType: !630, size: 32, offset: 160)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1902, file: !1903, line: 116, baseType: !621, size: 32, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1902, file: !1903, line: 117, baseType: !630, size: 32, offset: 224)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1902, file: !1903, line: 118, baseType: !621, size: 32, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1902, file: !1903, line: 119, baseType: !630, size: 32, offset: 288)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1902, file: !1903, line: 120, baseType: !6, size: 32, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1902, file: !1903, line: 121, baseType: !1916, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1917, line: 24, baseType: !1918)
!1917 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1917, line: 24, size: 64, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1918, file: !1917, line: 24, baseType: !688, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1902, file: !1903, line: 122, baseType: !1916, size: 64, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1902, file: !1903, line: 123, baseType: !1916, size: 64, offset: 512)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1902, file: !1903, line: 124, baseType: !1916, size: 64, offset: 576)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1902, file: !1903, line: 125, baseType: !1916, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1902, file: !1903, line: 127, baseType: !115, size: 8, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1902, file: !1903, line: 129, baseType: !1537, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1902, file: !1903, line: 130, baseType: !1537, size: 64, offset: 832)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1902, file: !1903, line: 131, baseType: !1537, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1902, file: !1903, line: 132, baseType: !1537, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1902, file: !1903, line: 135, baseType: !48, size: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1902, file: !1903, line: 137, baseType: !1932, size: 64, offset: 1088)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1934, line: 14, size: 1088, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1933, file: !1934, line: 15, baseType: !999, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1933, file: !1934, line: 17, baseType: !1421, size: 320, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1933, file: !1934, line: 19, baseType: !67, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1933, file: !1934, line: 20, baseType: !901, size: 64, offset: 448)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1933, file: !1934, line: 23, baseType: !808, size: 128, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1933, file: !1934, line: 24, baseType: !621, size: 32, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1933, file: !1934, line: 29, baseType: !901, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1933, file: !1934, line: 36, baseType: !1944, size: 320, offset: 768)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1945, line: 15, size: 320, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1944, file: !1945, line: 16, baseType: !910, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1944, file: !1945, line: 18, baseType: !50, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1944, file: !1945, line: 19, baseType: !50, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1944, file: !1945, line: 20, baseType: !50, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1944, file: !1945, line: 21, baseType: !50, size: 32, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1944, file: !1945, line: 22, baseType: !67, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1945, line: 23, baseType: !67, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1902, file: !1903, line: 138, baseType: !1488, size: 64, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1902, file: !1903, line: 139, baseType: !1731, size: 64, offset: 1216)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1902, file: !1903, line: 140, baseType: !1957, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1903, line: 25, size: 64, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1958, file: !1903, line: 26, baseType: !77, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1958, file: !1903, line: 27, baseType: !50, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1958, file: !1903, line: 28, baseType: !1963, offset: 64)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, elements: !1764)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !1903, line: 142, baseType: !1965, size: 128, offset: 1344)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1902, file: !1903, line: 142, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1965, file: !1903, line: 143, baseType: !50, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1965, file: !1903, line: 144, baseType: !954, size: 128, align: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1041, file: !1042, line: 1067, baseType: !1900, size: 64, offset: 14528)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1041, file: !1042, line: 1070, baseType: !1900, size: 64, offset: 14592)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1041, file: !1042, line: 1074, baseType: !1537, size: 64, offset: 14656)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1041, file: !1042, line: 1084, baseType: !1973, size: 128, offset: 14720)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !1974)
!1974 = !{!1975}
!1975 = !DISubrange(count: 16)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1041, file: !1042, line: 1086, baseType: !1977, size: 64, offset: 14848)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1042, line: 55, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1041, file: !1042, line: 1089, baseType: !1980, size: 64, offset: 14912)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1981, line: 12, size: 64, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1982 = !{!1983}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1980, file: !1981, line: 13, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1981, line: 8, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1041, file: !1042, line: 1090, baseType: !1987, size: 128, offset: 14976)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1988, line: 13, size: 128, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1989 = !{!1990}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1987, file: !1988, line: 14, baseType: !125, size: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1041, file: !1042, line: 1097, baseType: !1992, size: 64, offset: 15104)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1042, line: 50, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1041, file: !1042, line: 1100, baseType: !1995, size: 64, offset: 15168)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1042, line: 1100, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1041, file: !1042, line: 1103, baseType: !1998, size: 64, offset: 15232)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1042, line: 53, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1041, file: !1042, line: 1107, baseType: !2001, size: 64, offset: 15296)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2003, line: 31, size: 576, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2004 = !{!2005, !2006, !2009, !2012, !2015, !2016, !2019, !2022, !2023}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2002, file: !2003, line: 32, baseType: !999, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2002, file: !2003, line: 33, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2003, line: 9, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2002, file: !2003, line: 34, baseType: !2010, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2003, line: 10, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2002, file: !2003, line: 35, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2003, line: 8, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2002, file: !2003, line: 36, baseType: !1019, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2002, file: !2003, line: 37, baseType: !2017, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1539, line: 34, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2002, file: !2003, line: 38, baseType: !2020, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2003, line: 38, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2002, file: !2003, line: 39, baseType: !2020, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2002, file: !2003, line: 40, baseType: !2024, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2026, line: 771, size: 384, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2025, file: !2026, line: 772, baseType: !1521, size: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2025, file: !2026, line: 773, baseType: !1488, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2025, file: !2026, line: 774, baseType: !1731, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2025, file: !2026, line: 775, baseType: !2032, size: 64, offset: 320)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2034, line: 209, size: 4736, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!2035 = !{!2036, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2033, file: !2034, line: 215, baseType: !2037, size: 896)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 896, elements: !2485)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !2034, line: 152, size: 1600, elements: !2040)
!2040 = !{!2041, !2536, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2659}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2039, file: !2034, line: 154, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !2034, line: 389, size: 7872, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2436, !2453, !2454, !2458, !2459, !2460, !2461, !2462, !2463, !2482, !2483, !2487, !2488, !2489, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2523, !2526, !2527, !2534}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2043, file: !2034, line: 391, baseType: !2039, size: 1600)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2043, file: !2034, line: 393, baseType: !67, size: 64, offset: 1600)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2043, file: !2034, line: 401, baseType: !50, size: 32, offset: 1664)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2043, file: !2034, line: 404, baseType: !50, size: 32, offset: 1696)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !2043, file: !2034, line: 417, baseType: !50, size: 32, offset: 1728)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !2043, file: !2034, line: 418, baseType: !50, size: 32, offset: 1760)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !2043, file: !2034, line: 419, baseType: !50, size: 32, offset: 1792)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !2043, file: !2034, line: 432, baseType: !50, size: 32, offset: 1824)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !2043, file: !2034, line: 433, baseType: !50, size: 32, offset: 1856)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !2043, file: !2034, line: 434, baseType: !50, size: 32, offset: 1888)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !2043, file: !2034, line: 436, baseType: !50, size: 32, offset: 1920)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !2043, file: !2034, line: 439, baseType: !6, size: 32, offset: 1952)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2043, file: !2034, line: 441, baseType: !2058, size: 64, offset: 1984)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !788, line: 190, size: 1152, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2428, !2429, !2430, !2431, !2432, !2435}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2059, file: !788, line: 191, baseType: !77, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2059, file: !788, line: 192, baseType: !77, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2059, file: !788, line: 202, baseType: !2058, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2059, file: !788, line: 203, baseType: !44, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2059, file: !788, line: 205, baseType: !1089, size: 192, align: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2059, file: !788, line: 207, baseType: !1462, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2059, file: !788, line: 208, baseType: !6, size: 32, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !788, line: 209, baseType: !2069, size: 256, offset: 512)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !788, line: 209, size: 256, elements: !2070)
!2070 = !{!2071, !2080, !2084}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2069, file: !788, line: 210, baseType: !2072, size: 256)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !788, line: 153, size: 256, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2079}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2072, file: !788, line: 154, baseType: !67, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2072, file: !788, line: 156, baseType: !1221, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2072, file: !788, line: 162, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !788, line: 162, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2072, file: !788, line: 167, baseType: !67, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2069, file: !788, line: 211, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !788, line: 170, size: 64, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2081, file: !788, line: 171, baseType: !2058, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2069, file: !788, line: 212, baseType: !2085, size: 256)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !788, line: 174, size: 256, elements: !2086)
!2086 = !{!2087, !2423, !2426, !2427}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2085, file: !788, line: 175, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !788, line: 271, size: 768, elements: !2091)
!2091 = !{!2092, !2396, !2400, !2401, !2402, !2403, !2404, !2408, !2409, !2410, !2411, !2419}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2090, file: !788, line: 276, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!50, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !788, line: 251, size: 1216, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2097, file: !788, line: 253, baseType: !2058, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2097, file: !788, line: 254, baseType: !1355, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2097, file: !788, line: 255, baseType: !885, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2097, file: !788, line: 256, baseType: !48, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2097, file: !788, line: 259, baseType: !897, size: 256, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2097, file: !788, line: 260, baseType: !897, size: 256, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2097, file: !788, line: 261, baseType: !50, size: 32, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2097, file: !788, line: 262, baseType: !125, size: 128, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2097, file: !788, line: 263, baseType: !542, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2097, file: !788, line: 265, baseType: !63, size: 64, offset: 1024)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2097, file: !788, line: 266, baseType: !1533, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2097, file: !788, line: 267, baseType: !1533, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2097, file: !788, line: 268, baseType: !2112, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2115, line: 563, size: 1024, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2116 = !{!2117, !2173, !2174, !2178, !2182, !2186, !2362, !2366, !2370, !2374, !2375, !2376, !2380, !2384, !2388, !2392}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2114, file: !2115, line: 564, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !160, line: 625, size: 1344, elements: !2123)
!2123 = !{!2124, !2133, !2134, !2140, !2147, !2148, !2153, !2154, !2159, !2160, !2163, !2164, !2165, !2166, !2167, !2168, !2171}
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !160, line: 628, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !160, line: 628, size: 128, elements: !2126)
!2126 = !{!2127, !2132}
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !160, line: 629, baseType: !2128, size: 128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !160, line: 629, size: 128, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2128, file: !160, line: 631, baseType: !67, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2128, file: !160, line: 632, baseType: !67, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2125, file: !160, line: 635, baseType: !954, size: 128, align: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2122, file: !160, line: 639, baseType: !1328, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2122, file: !160, line: 640, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1364, line: 297, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1364, line: 297, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2136, file: !1364, line: 297, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1369, line: 19, baseType: !67)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !160, line: 646, baseType: !2141, size: 64, offset: 256)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !160, line: 646, size: 64, elements: !2142)
!2142 = !{!2143, !2146}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2141, file: !160, line: 647, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2145)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !160, line: 542, baseType: !67)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2141, file: !160, line: 648, baseType: !2145, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2122, file: !160, line: 666, baseType: !50, size: 32, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2122, file: !160, line: 667, baseType: !2149, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !160, line: 579, size: 320, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2150, file: !160, line: 580, baseType: !1383, size: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2122, file: !160, line: 670, baseType: !1533, size: 8, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2122, file: !160, line: 681, baseType: !2155, size: 256, offset: 512)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !160, line: 678, size: 256, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2155, file: !160, line: 679, baseType: !1089, size: 192, align: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2155, file: !160, line: 680, baseType: !67, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2122, file: !160, line: 689, baseType: !125, size: 128, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2122, file: !160, line: 691, baseType: !2161, size: 64, offset: 896)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !160, line: 691, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2122, file: !160, line: 694, baseType: !2112, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2122, file: !160, line: 697, baseType: !67, size: 64, offset: 1024)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2122, file: !160, line: 699, baseType: !1355, size: 64, offset: 1088)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2122, file: !160, line: 700, baseType: !48, size: 64, offset: 1152)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2122, file: !160, line: 711, baseType: !901, size: 64, offset: 1216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2122, file: !160, line: 717, baseType: !2169, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !160, line: 717, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2122, file: !160, line: 722, baseType: !2172, offset: 1344)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !160, line: 570, elements: !816)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2114, file: !2115, line: 569, baseType: !2118, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2114, file: !2115, line: 571, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!50, !2121, !67}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2114, file: !2115, line: 572, baseType: !2179, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!50, !2121}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2114, file: !2115, line: 578, baseType: !2183, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!50, !2121, !67, !67, !67}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2114, file: !2115, line: 580, baseType: !2187, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !160, line: 1184, baseType: !6)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2115, line: 512, size: 896, elements: !2193)
!2193 = !{!2194, !2202, !2203, !2210, !2217, !2227, !2355, !2356, !2358, !2360}
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !2115, line: 513, baseType: !2195, size: 320)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !2115, line: 513, size: 320, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2195, file: !2115, line: 514, baseType: !2121, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2195, file: !2115, line: 515, baseType: !1033, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2195, file: !2115, line: 516, baseType: !67, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2195, file: !2115, line: 517, baseType: !67, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2195, file: !2115, line: 518, baseType: !67, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2192, file: !2115, line: 520, baseType: !159, size: 32, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2192, file: !2115, line: 522, baseType: !2204, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1369, line: 22, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1369, line: 22, size: 64, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2206, file: !1369, line: 22, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1369, line: 15, baseType: !67)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2192, file: !2115, line: 524, baseType: !2211, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1364, line: 372, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 372, size: 64, elements: !2214)
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2213, file: !1364, line: 372, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1369, line: 16, baseType: !67)
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !2115, line: 527, baseType: !2218, size: 64, offset: 512)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2192, file: !2115, line: 527, size: 64, elements: !2219)
!2219 = !{!2220, !2226}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2218, file: !2115, line: 528, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1369, line: 21, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1369, line: 21, size: 64, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2222, file: !1369, line: 21, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1369, line: 14, baseType: !67)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2218, file: !2115, line: 529, baseType: !2205, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2192, file: !2115, line: 534, baseType: !2228, size: 64, offset: 576)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !160, line: 74, size: 512, align: 128, elements: !2230)
!2230 = !{!2231, !2232, !2349, !2354}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2229, file: !160, line: 75, baseType: !67, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !160, line: 83, baseType: !2233, size: 320, offset: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2229, file: !160, line: 83, size: 320, elements: !2234)
!2234 = !{!2235, !2256, !2270, !2274, !2348}
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !160, line: 84, baseType: !2236, size: 320)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2233, file: !160, line: 84, size: 320, elements: !2237)
!2237 = !{!2238, !2249, !2250, !2255}
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !160, line: 90, baseType: !2239, size: 128)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !160, line: 90, size: 128, elements: !2240)
!2240 = !{!2241, !2242, !2247, !2248}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2239, file: !160, line: 91, baseType: !125, size: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !160, line: 94, baseType: !2243, size: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !160, line: 94, size: 128, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2243, file: !160, line: 96, baseType: !48, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2243, file: !160, line: 98, baseType: !6, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2239, file: !160, line: 102, baseType: !125, size: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2239, file: !160, line: 103, baseType: !125, size: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2236, file: !160, line: 106, baseType: !611, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !160, line: 107, baseType: !2251, size: 64, offset: 192)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !160, line: 107, size: 64, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2251, file: !160, line: 108, baseType: !67, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2251, file: !160, line: 109, baseType: !67, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2236, file: !160, line: 117, baseType: !67, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !160, line: 119, baseType: !2257, size: 320)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2233, file: !160, line: 119, size: 320, elements: !2258)
!2258 = !{!2259, !2260, !2263, !2264, !2265}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2257, file: !160, line: 124, baseType: !67, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2257, file: !160, line: 125, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !160, line: 125, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2257, file: !160, line: 126, baseType: !67, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2257, file: !160, line: 127, baseType: !67, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !160, line: 128, baseType: !2266, size: 64, offset: 256)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !160, line: 128, size: 64, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2266, file: !160, line: 133, baseType: !67, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2266, file: !160, line: 138, baseType: !901, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !160, line: 141, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2233, file: !160, line: 141, size: 64, elements: !2272)
!2272 = !{!2273}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2271, file: !160, line: 142, baseType: !67, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !160, line: 144, baseType: !2275, size: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2233, file: !160, line: 144, size: 128, elements: !2276)
!2276 = !{!2277, !2347}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2275, file: !160, line: 146, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !183, line: 126, size: 1216, elements: !2280)
!2280 = !{!2281, !2290, !2311, !2312, !2313, !2314, !2315, !2329, !2330, !2331}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2279, file: !183, line: 127, baseType: !2282, size: 384)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !183, line: 21, size: 384, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2282, file: !183, line: 22, baseType: !67, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2282, file: !183, line: 23, baseType: !472, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2282, file: !183, line: 24, baseType: !472, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2282, file: !183, line: 25, baseType: !67, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2282, file: !183, line: 26, baseType: !67, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2282, file: !183, line: 27, baseType: !67, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2279, file: !183, line: 128, baseType: !2291, size: 128, offset: 384)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2292, line: 105, size: 128, elements: !2293)
!2292 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2291, file: !2292, line: 110, baseType: !67, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2291, file: !2292, line: 118, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2292, line: 95, size: 448, elements: !2298)
!2298 = !{!2299, !2300, !2306, !2307, !2308, !2309, !2310}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2297, file: !2292, line: 96, baseType: !901, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2297, file: !2292, line: 97, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2292, line: 60, baseType: !2303)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2297, file: !2292, line: 98, baseType: !2301, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2297, file: !2292, line: 99, baseType: !1533, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2297, file: !2292, line: 100, baseType: !1533, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2297, file: !2292, line: 101, baseType: !954, size: 128, align: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2297, file: !2292, line: 102, baseType: !2305, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2279, file: !183, line: 129, baseType: !1687, size: 256, offset: 512)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2279, file: !183, line: 130, baseType: !182, size: 32, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !183, line: 131, baseType: !6, size: 32, offset: 800)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2279, file: !183, line: 132, baseType: !67, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2279, file: !183, line: 133, baseType: !2316, size: 64, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !183, line: 77, size: 192, elements: !2319)
!2319 = !{!2320, !2324, !2325}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2318, file: !183, line: 83, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !2228}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2318, file: !183, line: 89, baseType: !2187, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2318, file: !183, line: 100, baseType: !2326, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!50, !2278, !67, !67, !50}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2279, file: !183, line: 134, baseType: !48, size: 64, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2279, file: !183, line: 135, baseType: !50, size: 32, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !183, line: 136, baseType: !2332, size: 128, offset: 1088)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2279, file: !183, line: 136, size: 128, elements: !2333)
!2333 = !{!2334, !2340}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2332, file: !183, line: 137, baseType: !2335, size: 128)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2336, line: 6, size: 128, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2335, file: !2336, line: 7, baseType: !688, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2335, file: !2336, line: 8, baseType: !688, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !183, line: 138, baseType: !2341)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !183, line: 138, elements: !2342)
!2342 = !{!2343, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2341, file: !183, line: 138, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2341, file: !183, line: 138, elements: !816)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2341, file: !183, line: 138, baseType: !2346)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2335, elements: !1764)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2275, file: !160, line: 147, baseType: !48, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2233, file: !160, line: 161, baseType: !954, size: 128, align: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !160, line: 164, baseType: !2350, size: 32, offset: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2229, file: !160, line: 164, size: 32, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2350, file: !160, line: 169, baseType: !77, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2350, file: !160, line: 177, baseType: !6, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2229, file: !160, line: 181, baseType: !77, size: 32, offset: 416)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2192, file: !2115, line: 535, baseType: !2228, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2192, file: !2115, line: 541, baseType: !2357, size: 64, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2192, file: !2115, line: 545, baseType: !2359, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2192, file: !2115, line: 549, baseType: !2361, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1364, line: 520, baseType: !2228)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2114, file: !2115, line: 581, baseType: !2363, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!2190, !2191, !6}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2114, file: !2115, line: 582, baseType: !2367, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!2190, !2191, !67, !67}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2114, file: !2115, line: 584, baseType: !2371, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!67, !2121}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2114, file: !2115, line: 588, baseType: !2187, size: 64, offset: 576)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2114, file: !2115, line: 591, baseType: !2187, size: 64, offset: 640)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2114, file: !2115, line: 597, baseType: !2377, size: 64, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!50, !2121, !67, !48, !50, !50}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2114, file: !2115, line: 603, baseType: !2381, size: 64, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!44, !2121}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2114, file: !2115, line: 613, baseType: !2385, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!50, !2121, !2169}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2114, file: !2115, line: 625, baseType: !2389, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2169, !2121, !67}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2114, file: !2115, line: 633, baseType: !2393, size: 64, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!2228, !2121, !67}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2090, file: !788, line: 277, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !2096}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2090, file: !788, line: 290, baseType: !935, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2090, file: !788, line: 292, baseType: !923, size: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2090, file: !788, line: 293, baseType: !931, size: 64, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2090, file: !788, line: 294, baseType: !927, size: 64, offset: 320)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2090, file: !788, line: 296, baseType: !2405, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!574, !2096, !542, !63, !69}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2090, file: !788, line: 306, baseType: !63, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2090, file: !788, line: 313, baseType: !1533, size: 8, offset: 512)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2090, file: !788, line: 314, baseType: !2405, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2090, file: !788, line: 317, baseType: !2412, size: 64, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2415, !2096, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2416, line: 59, baseType: !6)
!2416 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !788, line: 31, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2090, file: !788, line: 320, baseType: !2420, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!50, !2096, !2121}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2085, file: !788, line: 176, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !788, line: 35, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !788, line: 177, baseType: !69, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2085, file: !788, line: 178, baseType: !2058, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2059, file: !788, line: 215, baseType: !48, size: 64, offset: 768)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2059, file: !788, line: 221, baseType: !688, size: 64, offset: 832)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2059, file: !788, line: 223, baseType: !54, size: 16, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2059, file: !788, line: 224, baseType: !52, size: 16, offset: 912)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2059, file: !788, line: 225, baseType: !2433, size: 64, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !788, line: 36, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2059, file: !788, line: 227, baseType: !954, size: 128, align: 64, offset: 1024)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !2043, file: !2034, line: 442, baseType: !2437, size: 448, offset: 2048)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !2034, line: 138, size: 448, elements: !2438)
!2438 = !{!2439, !2440, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2437, file: !2034, line: 140, baseType: !2058, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2437, file: !2034, line: 141, baseType: !67, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2437, file: !2034, line: 142, baseType: !2442, size: 320, offset: 128)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2443, line: 11, size: 320, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2444 = !{!2445, !2446, !2447, !2452}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2442, file: !2443, line: 16, baseType: !808, size: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2442, file: !2443, line: 17, baseType: !67, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2442, file: !2443, line: 18, baseType: !2448, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !2443, line: 19, baseType: !684, size: 32, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !2043, file: !2034, line: 443, baseType: !2437, size: 448, offset: 2496)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !2043, file: !2034, line: 446, baseType: !2455, offset: 2944)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, elements: !2456)
!2456 = !{!2457}
!2457 = !DISubrange(count: 0)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !2043, file: !2034, line: 455, baseType: !121, size: 16, offset: 2944)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !2043, file: !2034, line: 456, baseType: !121, size: 16, offset: 2960)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !2043, file: !2034, line: 457, baseType: !121, size: 16, offset: 2976)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !2043, file: !2034, line: 458, baseType: !121, size: 16, offset: 2992)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2043, file: !2034, line: 461, baseType: !2037, size: 896, offset: 3008)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2043, file: !2034, line: 463, baseType: !2464, size: 64, offset: 3904)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !2034, line: 537, size: 41664, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2480}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2465, file: !2034, line: 538, baseType: !2077, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2465, file: !2034, line: 541, baseType: !6, size: 32, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2465, file: !2034, line: 544, baseType: !50, size: 32, offset: 96)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2465, file: !2034, line: 547, baseType: !125, size: 128, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2465, file: !2034, line: 548, baseType: !954, size: 128, align: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2465, file: !2034, line: 555, baseType: !2043, size: 7872, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2465, file: !2034, line: 558, baseType: !2042, size: 64, offset: 8256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2465, file: !2034, line: 561, baseType: !77, size: 32, offset: 8320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2465, file: !2034, line: 564, baseType: !6, size: 32, offset: 8352)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2465, file: !2034, line: 567, baseType: !2477, size: 32768, offset: 8384)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32768, elements: !2478)
!2478 = !{!2479}
!2479 = !DISubrange(count: 4096)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2465, file: !2034, line: 570, baseType: !2481, size: 512, offset: 41152)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !547)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !2043, file: !2034, line: 469, baseType: !125, size: 128, offset: 3968)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !2043, file: !2034, line: 478, baseType: !2484, size: 1792, offset: 4096)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1792, elements: !2485)
!2485 = !{!2486}
!2486 = !DISubrange(count: 14)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !2043, file: !2034, line: 487, baseType: !2042, size: 64, offset: 5888)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !2043, file: !2034, line: 488, baseType: !2042, size: 64, offset: 5952)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !2043, file: !2034, line: 491, baseType: !2490, size: 64, offset: 6016)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !2034, line: 327, size: 896, elements: !2492)
!2492 = !{!2493, !2496, !2506, !2507, !2508, !2509, !2510}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2491, file: !2034, line: 332, baseType: !2494)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2495, line: 64, elements: !816)
!2495 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2491, file: !2034, line: 333, baseType: !2497, size: 192)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !2034, line: 299, size: 192, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2497, file: !2034, line: 300, baseType: !2500, size: 192)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2501, line: 17, size: 192, elements: !2502)
!2501 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2500, file: !2501, line: 18, baseType: !688, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2500, file: !2501, line: 19, baseType: !688, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2500, file: !2501, line: 20, baseType: !690, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2491, file: !2034, line: 339, baseType: !2497, size: 192, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2491, file: !2034, line: 347, baseType: !2497, size: 192, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2491, file: !2034, line: 353, baseType: !2497, size: 192, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2491, file: !2034, line: 366, baseType: !2042, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2491, file: !2034, line: 367, baseType: !2042, size: 64, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !2043, file: !2034, line: 492, baseType: !125, size: 128, offset: 6080)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2043, file: !2034, line: 495, baseType: !2497, size: 192, offset: 6208)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2043, file: !2034, line: 496, baseType: !2497, size: 192, offset: 6400)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2043, file: !2034, line: 497, baseType: !1870, size: 192, offset: 6592)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !2043, file: !2034, line: 503, baseType: !125, size: 128, offset: 6784)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !2043, file: !2034, line: 504, baseType: !897, size: 256, offset: 6912)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !2043, file: !2034, line: 507, baseType: !82, size: 192, offset: 7168)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !2043, file: !2034, line: 510, baseType: !1648, size: 256, offset: 7360)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2043, file: !2034, line: 513, baseType: !2520, size: 64, offset: 7616)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2522, line: 214, elements: !816)
!2522 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2043, file: !2034, line: 516, baseType: !2524, offset: 7680)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2525, line: 76, elements: !816)
!2525 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !2043, file: !2034, line: 519, baseType: !77, size: 32, offset: 7680)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !2043, file: !2034, line: 522, baseType: !2528, size: 128, offset: 7712)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !2034, line: 370, size: 128, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2528, file: !2034, line: 372, baseType: !1533, size: 8)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2528, file: !2034, line: 375, baseType: !50, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2528, file: !2034, line: 380, baseType: !50, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2528, file: !2034, line: 386, baseType: !50, size: 32, offset: 96)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !2043, file: !2034, line: 529, baseType: !2535, offset: 7872)
!2535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, elements: !1764)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2039, file: !2034, line: 157, baseType: !2537, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !2034, line: 669, size: 1984, elements: !2539)
!2539 = !{!2540, !2544, !2548, !2552, !2553, !2554, !2555, !2559, !2563, !2564, !2570, !2574, !2575, !2579, !2583, !2587, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2640, !2641}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2538, file: !2034, line: 670, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!2038, !2038}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2538, file: !2034, line: 671, baseType: !2545, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!50, !2038}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2538, file: !2034, line: 672, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2038}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2538, file: !2034, line: 673, baseType: !2549, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2538, file: !2034, line: 674, baseType: !2549, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2538, file: !2034, line: 675, baseType: !2549, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2538, file: !2034, line: 676, baseType: !2556, size: 64, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !2038, !50}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2538, file: !2034, line: 677, baseType: !2560, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!50, !885, !2038}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2538, file: !2034, line: 679, baseType: !2560, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2538, file: !2034, line: 682, baseType: !2565, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!50, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !2034, line: 30, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2538, file: !2034, line: 683, baseType: !2571, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2568}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2538, file: !2034, line: 684, baseType: !2571, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2538, file: !2034, line: 685, baseType: !2576, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2538, file: !2034, line: 686, baseType: !2580, size: 64, offset: 832)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!50, !1040, !2032}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2538, file: !2034, line: 688, baseType: !2584, size: 64, offset: 896)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !1040, !2032}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2538, file: !2034, line: 689, baseType: !2588, size: 64, offset: 960)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !1040}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2538, file: !2034, line: 690, baseType: !2588, size: 64, offset: 1024)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2538, file: !2034, line: 691, baseType: !2588, size: 64, offset: 1088)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2538, file: !2034, line: 692, baseType: !2549, size: 64, offset: 1152)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2538, file: !2034, line: 694, baseType: !1533, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2538, file: !2034, line: 707, baseType: !1533, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2538, file: !2034, line: 719, baseType: !1533, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2538, file: !2034, line: 722, baseType: !50, size: 32, offset: 1248)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2538, file: !2034, line: 723, baseType: !44, size: 64, offset: 1280)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2538, file: !2034, line: 726, baseType: !44, size: 64, offset: 1344)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2538, file: !2034, line: 729, baseType: !2464, size: 64, offset: 1408)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2538, file: !2034, line: 732, baseType: !1024, size: 192, offset: 1472)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2538, file: !2034, line: 738, baseType: !125, size: 128, offset: 1664)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2538, file: !2034, line: 744, baseType: !2604, size: 64, offset: 1792)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !2034, line: 580, size: 1728, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2616, !2617, !2618, !2622, !2626, !2627, !2628, !2629, !2630, !2634, !2638, !2639}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2605, file: !2034, line: 586, baseType: !2481, size: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2605, file: !2034, line: 587, baseType: !67, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2605, file: !2034, line: 593, baseType: !63, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2605, file: !2034, line: 596, baseType: !6, size: 32, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2605, file: !2034, line: 604, baseType: !6, size: 32, offset: 672)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2605, file: !2034, line: 610, baseType: !2537, size: 64, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2605, file: !2034, line: 611, baseType: !125, size: 128, offset: 768)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2605, file: !2034, line: 612, baseType: !2615, size: 64, offset: 896)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2605, file: !2034, line: 614, baseType: !2093, size: 64, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2605, file: !2034, line: 615, baseType: !2397, size: 64, offset: 1024)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2605, file: !2034, line: 621, baseType: !2619, size: 64, offset: 1088)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!688, !2038, !2604}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2605, file: !2034, line: 625, baseType: !2623, size: 64, offset: 1152)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!907, !2038, !2604}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2605, file: !2034, line: 628, baseType: !935, size: 64, offset: 1216)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2605, file: !2034, line: 631, baseType: !923, size: 64, offset: 1280)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2605, file: !2034, line: 632, baseType: !931, size: 64, offset: 1344)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2605, file: !2034, line: 633, baseType: !927, size: 64, offset: 1408)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2605, file: !2034, line: 640, baseType: !2631, size: 64, offset: 1472)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!50, !2038, !2604, !688}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2605, file: !2034, line: 645, baseType: !2635, size: 64, offset: 1536)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!50, !2038, !2604, !907}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2605, file: !2034, line: 654, baseType: !2405, size: 64, offset: 1600)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2605, file: !2034, line: 657, baseType: !2412, size: 64, offset: 1664)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2538, file: !2034, line: 745, baseType: !2604, size: 64, offset: 1856)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2538, file: !2034, line: 754, baseType: !6, size: 32, offset: 1920)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2039, file: !2034, line: 160, baseType: !2291, size: 128, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2039, file: !2034, line: 163, baseType: !125, size: 128, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2039, file: !2034, line: 164, baseType: !125, size: 128, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !2039, file: !2034, line: 167, baseType: !125, size: 128, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2039, file: !2034, line: 173, baseType: !50, size: 32, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2034, line: 175, baseType: !6, size: 32, offset: 672)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !2039, file: !2034, line: 183, baseType: !688, size: 64, offset: 704)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !2039, file: !2034, line: 189, baseType: !77, size: 32, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2039, file: !2034, line: 192, baseType: !1648, size: 256, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !2039, file: !2034, line: 193, baseType: !2652, size: 448, offset: 1088)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1649, line: 120, size: 448, elements: !2653)
!2653 = !{!2654, !2655, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2652, file: !1649, line: 121, baseType: !1648, size: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2652, file: !1649, line: 122, baseType: !954, size: 128, align: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2652, file: !1649, line: 125, baseType: !2657, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1649, line: 18, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2039, file: !2034, line: 199, baseType: !2038, size: 64, offset: 1536)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2033, file: !2034, line: 218, baseType: !999, size: 32, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2033, file: !2034, line: 226, baseType: !2032, size: 64, offset: 960)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2033, file: !2034, line: 229, baseType: !2042, size: 64, offset: 1024)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2033, file: !2034, line: 232, baseType: !50, size: 32, offset: 1088)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2033, file: !2034, line: 241, baseType: !125, size: 128, offset: 1152)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2033, file: !2034, line: 242, baseType: !125, size: 128, offset: 1280)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2033, file: !2034, line: 243, baseType: !125, size: 128, offset: 1408)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2033, file: !2034, line: 246, baseType: !125, size: 128, offset: 1536)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2033, file: !2034, line: 255, baseType: !2484, size: 1792, offset: 1664)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2033, file: !2034, line: 258, baseType: !125, size: 128, offset: 3456)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2033, file: !2034, line: 259, baseType: !125, size: 128, offset: 3584)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2033, file: !2034, line: 265, baseType: !808, size: 128, offset: 3712)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2033, file: !2034, line: 271, baseType: !125, size: 128, offset: 3840)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2033, file: !2034, line: 277, baseType: !125, size: 128, offset: 3968)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2033, file: !2034, line: 278, baseType: !125, size: 128, offset: 4096)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2033, file: !2034, line: 279, baseType: !125, size: 128, offset: 4224)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2033, file: !2034, line: 288, baseType: !2042, size: 64, offset: 4352)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2033, file: !2034, line: 289, baseType: !2042, size: 64, offset: 4416)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2033, file: !2034, line: 290, baseType: !2032, size: 64, offset: 4480)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2033, file: !2034, line: 293, baseType: !1533, size: 8, offset: 4544)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2033, file: !2034, line: 296, baseType: !954, size: 128, align: 64, offset: 4608)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1041, file: !1042, line: 1110, baseType: !2682, size: 64, offset: 15360)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2684, line: 93, size: 8768, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2736, !2745, !2746, !2748, !2749, !2750, !2753, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2791, !2792, !2799, !2809, !2872, !2873, !2876, !2877, !2878, !2879, !2880, !2881}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2683, file: !2684, line: 94, baseType: !999, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2683, file: !2684, line: 95, baseType: !77, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2683, file: !2684, line: 96, baseType: !50, size: 32, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2683, file: !2684, line: 97, baseType: !50, size: 32, offset: 96)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2683, file: !2684, line: 98, baseType: !125, size: 128, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2683, file: !2684, line: 100, baseType: !82, size: 192, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2683, file: !2684, line: 103, baseType: !1040, size: 64, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2683, file: !2684, line: 106, baseType: !2694, size: 192, offset: 512)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2695, line: 32, size: 192, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2694, file: !2695, line: 33, baseType: !125, size: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2694, file: !2695, line: 34, baseType: !2699, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2700, line: 25, baseType: !2701)
!2700 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2700, line: 23, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2701, file: !2700, line: 24, baseType: !480, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2683, file: !2684, line: 109, baseType: !804, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2683, file: !2684, line: 112, baseType: !50, size: 32, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2683, file: !2684, line: 114, baseType: !50, size: 32, offset: 800)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2683, file: !2684, line: 115, baseType: !1040, size: 64, offset: 832)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2683, file: !2684, line: 118, baseType: !50, size: 32, offset: 896)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2683, file: !2684, line: 119, baseType: !6, size: 32, offset: 928)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2683, file: !2684, line: 121, baseType: !2711, size: 64, offset: 960)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2684, line: 80, size: 448, elements: !2713)
!2713 = !{!2714, !2715, !2721}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2712, file: !2684, line: 81, baseType: !77, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2712, file: !2684, line: 82, baseType: !2716, size: 128, offset: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2684, line: 75, size: 128, elements: !2717)
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2716, file: !2684, line: 76, baseType: !1040, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2716, file: !2684, line: 77, baseType: !2720, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2712, file: !2684, line: 83, baseType: !1687, size: 256, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2683, file: !2684, line: 132, baseType: !6, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2683, file: !2684, line: 133, baseType: !6, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2683, file: !2684, line: 138, baseType: !6, size: 32, offset: 1056)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2683, file: !2684, line: 139, baseType: !125, size: 128, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2683, file: !2684, line: 142, baseType: !1159, size: 512, offset: 1216)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2683, file: !2684, line: 143, baseType: !1167, size: 64, offset: 1728)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2683, file: !2684, line: 150, baseType: !2729, size: 256, offset: 1792)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2730, size: 256, elements: !2734)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2684, line: 38, size: 128, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2730, file: !2684, line: 39, baseType: !688, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2730, file: !2684, line: 40, baseType: !688, size: 64, offset: 64)
!2734 = !{!2735}
!2735 = !DISubrange(count: 2)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2683, file: !2684, line: 156, baseType: !2737, size: 192, offset: 2048)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2684, line: 66, size: 192, elements: !2738)
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2737, file: !2684, line: 67, baseType: !2740, size: 192)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2684, line: 47, size: 192, elements: !2741)
!2741 = !{!2742, !2743, !2744}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2740, file: !2684, line: 48, baseType: !903, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2740, file: !2684, line: 49, baseType: !903, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2740, file: !2684, line: 50, baseType: !903, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2683, file: !2684, line: 160, baseType: !1882, size: 640, offset: 2240)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2683, file: !2684, line: 163, baseType: !2747, size: 256, offset: 2880)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, size: 256, elements: !1008)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2683, file: !2684, line: 169, baseType: !995, size: 64, offset: 3136)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2683, file: !2684, line: 172, baseType: !50, size: 32, offset: 3200)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2683, file: !2684, line: 174, baseType: !2751, size: 64, offset: 3264)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2684, line: 174, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2683, file: !2684, line: 185, baseType: !2754, size: 64, offset: 3328)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !657, line: 860, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 853, size: 64, elements: !2756)
!2756 = !{!2757, !2758}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2755, file: !657, line: 858, baseType: !656, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2755, file: !657, line: 859, baseType: !87, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2683, file: !2684, line: 186, baseType: !688, size: 64, offset: 3392)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2683, file: !2684, line: 186, baseType: !688, size: 64, offset: 3456)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2683, file: !2684, line: 186, baseType: !688, size: 64, offset: 3520)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2683, file: !2684, line: 186, baseType: !688, size: 64, offset: 3584)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2683, file: !2684, line: 187, baseType: !688, size: 64, offset: 3648)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2683, file: !2684, line: 188, baseType: !688, size: 64, offset: 3712)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2683, file: !2684, line: 189, baseType: !1870, size: 192, offset: 3776)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2683, file: !2684, line: 190, baseType: !67, size: 64, offset: 3968)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2683, file: !2684, line: 190, baseType: !67, size: 64, offset: 4032)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2683, file: !2684, line: 190, baseType: !67, size: 64, offset: 4096)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2683, file: !2684, line: 190, baseType: !67, size: 64, offset: 4160)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2683, file: !2684, line: 191, baseType: !67, size: 64, offset: 4224)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2683, file: !2684, line: 191, baseType: !67, size: 64, offset: 4288)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2683, file: !2684, line: 191, baseType: !67, size: 64, offset: 4352)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2683, file: !2684, line: 191, baseType: !67, size: 64, offset: 4416)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2683, file: !2684, line: 192, baseType: !67, size: 64, offset: 4480)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2683, file: !2684, line: 192, baseType: !67, size: 64, offset: 4544)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2683, file: !2684, line: 192, baseType: !67, size: 64, offset: 4608)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2683, file: !2684, line: 192, baseType: !67, size: 64, offset: 4672)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2683, file: !2684, line: 193, baseType: !67, size: 64, offset: 4736)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2683, file: !2684, line: 193, baseType: !67, size: 64, offset: 4800)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2683, file: !2684, line: 194, baseType: !2781, size: 448, offset: 4864)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2782, line: 12, size: 448, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2781, file: !2782, line: 15, baseType: !688, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2781, file: !2782, line: 17, baseType: !688, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2781, file: !2782, line: 19, baseType: !688, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2781, file: !2782, line: 21, baseType: !688, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2781, file: !2782, line: 29, baseType: !688, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2781, file: !2782, line: 35, baseType: !688, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2781, file: !2782, line: 44, baseType: !688, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2683, file: !2684, line: 202, baseType: !690, size: 64, offset: 5312)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2683, file: !2684, line: 213, baseType: !2793, size: 2048, offset: 5376)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2794, size: 2048, elements: !1974)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2795, line: 43, size: 128, elements: !2796)
!2795 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2796 = !{!2797, !2798}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2794, file: !2795, line: 44, baseType: !66, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2794, file: !2795, line: 45, baseType: !66, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2683, file: !2684, line: 216, baseType: !2800, size: 448, offset: 7424)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2684, line: 30, size: 448, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2805, !2806, !2807, !2808}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2800, file: !2684, line: 31, baseType: !50, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2800, file: !2684, line: 32, baseType: !487, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2800, file: !2684, line: 33, baseType: !67, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2800, file: !2684, line: 34, baseType: !688, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2800, file: !2684, line: 34, baseType: !688, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2800, file: !2684, line: 35, baseType: !67, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2800, file: !2684, line: 35, baseType: !67, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2683, file: !2684, line: 219, baseType: !2810, size: 64, offset: 7872)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2812, line: 41, size: 3456, elements: !2813)
!2812 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2828, !2829, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2811, file: !2812, line: 47, baseType: !122, size: 16)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2811, file: !2812, line: 48, baseType: !685, size: 32, offset: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2811, file: !2812, line: 54, baseType: !113, size: 8, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2811, file: !2812, line: 55, baseType: !113, size: 8, offset: 72)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2811, file: !2812, line: 73, baseType: !689, size: 64, align: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2811, file: !2812, line: 74, baseType: !689, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2811, file: !2812, line: 81, baseType: !689, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2811, file: !2812, line: 82, baseType: !689, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2811, file: !2812, line: 85, baseType: !689, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2811, file: !2812, line: 86, baseType: !689, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2811, file: !2812, line: 94, baseType: !689, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2811, file: !2812, line: 102, baseType: !689, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2811, file: !2812, line: 107, baseType: !2827, size: 256, offset: 640)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !697)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2811, file: !2812, line: 108, baseType: !113, size: 8, align: 64, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2811, file: !2812, line: 110, baseType: !2830, size: 24, offset: 904)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 24, elements: !543)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2811, file: !2812, line: 111, baseType: !685, size: 32, align: 64, offset: 960)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2811, file: !2812, line: 113, baseType: !685, size: 32, offset: 992)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2811, file: !2812, line: 114, baseType: !685, size: 32, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2811, file: !2812, line: 115, baseType: !685, size: 32, offset: 1056)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2811, file: !2812, line: 117, baseType: !685, size: 32, offset: 1088)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2811, file: !2812, line: 118, baseType: !689, size: 64, align: 64, offset: 1152)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2811, file: !2812, line: 120, baseType: !689, size: 64, offset: 1216)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2811, file: !2812, line: 121, baseType: !689, size: 64, offset: 1280)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2811, file: !2812, line: 122, baseType: !689, size: 64, offset: 1344)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2811, file: !2812, line: 123, baseType: !689, size: 64, offset: 1408)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2811, file: !2812, line: 133, baseType: !689, size: 64, offset: 1472)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2811, file: !2812, line: 137, baseType: !689, size: 64, offset: 1536)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2811, file: !2812, line: 142, baseType: !689, size: 64, offset: 1600)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2811, file: !2812, line: 143, baseType: !689, size: 64, offset: 1664)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2811, file: !2812, line: 146, baseType: !689, size: 64, offset: 1728)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2811, file: !2812, line: 147, baseType: !689, size: 64, offset: 1792)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2811, file: !2812, line: 148, baseType: !689, size: 64, offset: 1856)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2811, file: !2812, line: 149, baseType: !689, size: 64, offset: 1920)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2811, file: !2812, line: 154, baseType: !689, size: 64, offset: 1984)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2811, file: !2812, line: 155, baseType: !689, size: 64, offset: 2048)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2811, file: !2812, line: 156, baseType: !689, size: 64, offset: 2112)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2811, file: !2812, line: 158, baseType: !689, size: 64, offset: 2176)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2811, file: !2812, line: 159, baseType: !689, size: 64, offset: 2240)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2811, file: !2812, line: 162, baseType: !689, size: 64, offset: 2304)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2811, file: !2812, line: 163, baseType: !689, size: 64, offset: 2368)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2811, file: !2812, line: 164, baseType: !689, size: 64, offset: 2432)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2811, file: !2812, line: 167, baseType: !689, size: 64, offset: 2496)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2811, file: !2812, line: 168, baseType: !689, size: 64, offset: 2560)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2811, file: !2812, line: 171, baseType: !689, size: 64, offset: 2624)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2811, file: !2812, line: 172, baseType: !689, size: 64, offset: 2688)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2811, file: !2812, line: 175, baseType: !689, size: 64, offset: 2752)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2811, file: !2812, line: 178, baseType: !689, size: 64, offset: 2816)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2811, file: !2812, line: 179, baseType: !689, size: 64, offset: 2880)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2811, file: !2812, line: 182, baseType: !685, size: 32, offset: 2944)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2811, file: !2812, line: 186, baseType: !689, size: 64, align: 64, offset: 3008)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2811, file: !2812, line: 194, baseType: !689, size: 64, offset: 3072)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2811, file: !2812, line: 195, baseType: !689, size: 64, offset: 3136)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2811, file: !2812, line: 199, baseType: !689, size: 64, offset: 3200)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2811, file: !2812, line: 200, baseType: !689, size: 64, offset: 3264)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2811, file: !2812, line: 203, baseType: !689, size: 64, offset: 3328)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2811, file: !2812, line: 204, baseType: !689, size: 64, offset: 3392)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2683, file: !2684, line: 222, baseType: !6, size: 32, offset: 7936)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2683, file: !2684, line: 223, baseType: !2874, size: 64, offset: 8000)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2684, line: 223, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2683, file: !2684, line: 230, baseType: !1533, size: 8, offset: 8064)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2683, file: !2684, line: 231, baseType: !1481, size: 16, offset: 8080)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2683, file: !2684, line: 232, baseType: !1481, size: 16, offset: 8096)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2683, file: !2684, line: 234, baseType: !1328, size: 64, offset: 8128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2683, file: !2684, line: 237, baseType: !897, size: 256, offset: 8192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2683, file: !2684, line: 243, baseType: !1383, size: 320, offset: 8448)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1041, file: !1042, line: 1111, baseType: !2883, size: 64, offset: 15424)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2684, line: 20, size: 16640, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2884, file: !2684, line: 21, baseType: !87, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2884, file: !2684, line: 22, baseType: !999, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2884, file: !2684, line: 23, baseType: !82, size: 192, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2884, file: !2684, line: 24, baseType: !2890, size: 16384, offset: 256)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2891, size: 16384, elements: !547)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2695, line: 51, size: 256, elements: !2892)
!2892 = !{!2893}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2891, file: !2695, line: 52, baseType: !2894, size: 256)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2695, line: 37, size: 256, elements: !2895)
!2895 = !{!2896, !2903, !2904, !2908}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2894, file: !2695, line: 39, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2898, line: 83, baseType: !2899)
!2898 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2898, line: 82, baseType: !2901)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !50}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2894, file: !2695, line: 40, baseType: !67, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2894, file: !2695, line: 46, baseType: !2905, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2898, line: 86, baseType: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2898, line: 85, baseType: !2577)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2894, file: !2695, line: 48, baseType: !2699, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1041, file: !1042, line: 1112, baseType: !2699, size: 64, offset: 15488)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1041, file: !1042, line: 1113, baseType: !2699, size: 64, offset: 15552)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1041, file: !1042, line: 1115, baseType: !2699, size: 64, offset: 15616)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1041, file: !1042, line: 1116, baseType: !2694, size: 192, offset: 15680)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1041, file: !1042, line: 1117, baseType: !67, size: 64, offset: 15872)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1041, file: !1042, line: 1118, baseType: !63, size: 64, offset: 15936)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1041, file: !1042, line: 1119, baseType: !6, size: 32, offset: 16000)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1041, file: !1042, line: 1121, baseType: !957, size: 64, offset: 16064)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1041, file: !1042, line: 1125, baseType: !2918, size: 64, offset: 16128)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1042, line: 43, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1041, file: !1042, line: 1127, baseType: !621, size: 32, offset: 16192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1041, file: !1042, line: 1128, baseType: !6, size: 32, offset: 16224)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1041, file: !1042, line: 1130, baseType: !2923, size: 128, offset: 16256)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2924, line: 37, size: 128, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2925 = !{!2926, !2927, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2923, file: !2924, line: 38, baseType: !50, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2923, file: !2924, line: 39, baseType: !77, size: 32, offset: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2923, file: !2924, line: 40, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2924, line: 24, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1041, file: !1042, line: 1131, baseType: !2932, size: 256, offset: 16384)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2933, line: 12, size: 256, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2932, file: !2933, line: 13, baseType: !542, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2932, file: !2933, line: 14, baseType: !67, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2932, file: !2933, line: 15, baseType: !67, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2932, file: !2933, line: 16, baseType: !1533, size: 8, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1041, file: !1042, line: 1134, baseType: !688, size: 64, offset: 16640)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1041, file: !1042, line: 1135, baseType: !688, size: 64, offset: 16704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1041, file: !1042, line: 1138, baseType: !87, size: 32, offset: 16768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1041, file: !1042, line: 1141, baseType: !910, size: 32, offset: 16800)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1041, file: !1042, line: 1143, baseType: !2944, size: 64, offset: 16832)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1042, line: 735, size: 64, elements: !2945)
!2945 = !{!2946}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2944, file: !1042, line: 736, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1041, file: !1042, line: 1147, baseType: !1218, size: 128, offset: 16896)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1041, file: !1042, line: 1149, baseType: !1040, size: 64, offset: 17024)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1041, file: !1042, line: 1151, baseType: !2951, size: 64, offset: 17088)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1042, line: 1151, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1041, file: !1042, line: 1188, baseType: !48, size: 64, offset: 17152)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1041, file: !1042, line: 1191, baseType: !2955, size: 64, offset: 17216)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1042, line: 44, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1041, file: !1042, line: 1194, baseType: !2958, size: 64, offset: 17280)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1042, line: 45, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1041, file: !1042, line: 1197, baseType: !2961, size: 64, offset: 17344)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1042, line: 61, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1041, file: !1042, line: 1199, baseType: !2964, size: 64, offset: 17408)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2966, line: 99, size: 128, elements: !2967)
!2966 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2965, file: !2966, line: 100, baseType: !901, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2965, file: !2966, line: 101, baseType: !77, size: 32, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2965, file: !2966, line: 103, baseType: !54, size: 16, offset: 96)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1041, file: !1042, line: 1202, baseType: !2972, size: 64, offset: 17472)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1042, line: 48, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1041, file: !1042, line: 1205, baseType: !67, size: 64, offset: 17536)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1041, file: !1042, line: 1206, baseType: !2976, size: 64, offset: 17600)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2695, line: 14, baseType: !2978)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2695, line: 12, size: 384, elements: !2979)
!2979 = !{!2980}
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2978, file: !2695, line: 13, baseType: !2981, size: 384)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2978, file: !2695, line: 13, size: 384, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2981, file: !2695, line: 13, baseType: !50, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2981, file: !2695, line: 13, baseType: !50, size: 32, offset: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2981, file: !2695, line: 13, baseType: !50, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2981, file: !2695, line: 13, baseType: !2987, size: 256, offset: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2988, line: 37, size: 256, elements: !2989)
!2988 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2989 = !{!2990, !2995, !3008, !3014, !3023, !3050, !3055}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2987, file: !2988, line: 42, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 39, size: 64, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2991, file: !2988, line: 40, baseType: !1847, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2991, file: !2988, line: 41, baseType: !627, size: 32, offset: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2987, file: !2988, line: 50, baseType: !2996, size: 192)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 45, size: 192, elements: !2997)
!2997 = !{!2998, !3000, !3001, !3007}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2996, file: !2988, line: 46, baseType: !2999, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !65, line: 95, baseType: !50)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2996, file: !2988, line: 47, baseType: !50, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2996, file: !2988, line: 48, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2988, line: 11, baseType: !3003)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2988, line: 8, size: 64, elements: !3004)
!3004 = !{!3005, !3006}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3003, file: !2988, line: 9, baseType: !50, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3003, file: !2988, line: 10, baseType: !48, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2996, file: !2988, line: 49, baseType: !50, size: 32, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2987, file: !2988, line: 57, baseType: !3009, size: 128)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 53, size: 128, elements: !3010)
!3010 = !{!3011, !3012, !3013}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3009, file: !2988, line: 54, baseType: !1847, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3009, file: !2988, line: 55, baseType: !627, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3009, file: !2988, line: 56, baseType: !3002, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2987, file: !2988, line: 66, baseType: !3015, size: 256)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 60, size: 256, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3022}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3015, file: !2988, line: 61, baseType: !1847, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3015, file: !2988, line: 62, baseType: !627, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3015, file: !2988, line: 63, baseType: !50, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3015, file: !2988, line: 64, baseType: !3021, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !65, line: 94, baseType: !576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3015, file: !2988, line: 65, baseType: !3021, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2987, file: !2988, line: 105, baseType: !3024, size: 256)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 69, size: 256, elements: !3025)
!3025 = !{!3026, !3027}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3024, file: !2988, line: 70, baseType: !48, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !2988, line: 79, baseType: !3028, size: 192, offset: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3024, file: !2988, line: 79, size: 192, elements: !3029)
!3029 = !{!3030, !3031, !3032, !3039, !3044}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3028, file: !2988, line: 81, baseType: !50, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3028, file: !2988, line: 86, baseType: !1481, size: 16)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3028, file: !2988, line: 92, baseType: !3033, size: 192)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !2988, line: 88, size: 192, elements: !3034)
!3034 = !{!3035, !3037, !3038}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3033, file: !2988, line: 89, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !1202)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3033, file: !2988, line: 90, baseType: !48, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3033, file: !2988, line: 91, baseType: !48, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3028, file: !2988, line: 97, baseType: !3040, size: 96)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !2988, line: 94, size: 96, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3040, file: !2988, line: 95, baseType: !3036, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3040, file: !2988, line: 96, baseType: !685, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3028, file: !2988, line: 103, baseType: !3045, size: 128)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !2988, line: 99, size: 128, elements: !3046)
!3046 = !{!3047, !3048, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3045, file: !2988, line: 100, baseType: !67, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3045, file: !2988, line: 101, baseType: !685, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3045, file: !2988, line: 102, baseType: !685, size: 32, offset: 96)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2987, file: !2988, line: 111, baseType: !3051, size: 128)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 108, size: 128, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3051, file: !2988, line: 109, baseType: !487, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3051, file: !2988, line: 110, baseType: !50, size: 32, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2987, file: !2988, line: 118, baseType: !3056, size: 128)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !2988, line: 114, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3056, file: !2988, line: 115, baseType: !48, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3056, file: !2988, line: 116, baseType: !50, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3056, file: !2988, line: 117, baseType: !6, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1041, file: !1042, line: 1208, baseType: !2781, size: 448, offset: 17664)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1041, file: !1042, line: 1215, baseType: !688, size: 64, offset: 18112)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1041, file: !1042, line: 1217, baseType: !688, size: 64, offset: 18176)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1041, file: !1042, line: 1219, baseType: !688, size: 64, offset: 18240)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1041, file: !1042, line: 1223, baseType: !3066, size: 64, offset: 18304)
!3066 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3067, line: 99, baseType: !3068)
!3067 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3067, line: 99, size: 64, elements: !3069)
!3069 = !{!3070}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3068, file: !3067, line: 99, baseType: !480, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1041, file: !1042, line: 1225, baseType: !656, size: 32, offset: 18368)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1041, file: !1042, line: 1226, baseType: !50, size: 32, offset: 18400)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1041, file: !1042, line: 1227, baseType: !50, size: 32, offset: 18432)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1041, file: !1042, line: 1231, baseType: !2032, size: 64, offset: 18496)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1041, file: !1042, line: 1233, baseType: !125, size: 128, offset: 18560)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1041, file: !1042, line: 1240, baseType: !3077, size: 64, offset: 18688)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1042, line: 62, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1041, file: !1042, line: 1242, baseType: !3080, size: 64, offset: 18752)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1042, line: 1242, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1041, file: !1042, line: 1244, baseType: !125, size: 128, offset: 18816)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1041, file: !1042, line: 1245, baseType: !3084, size: 64, offset: 18944)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1042, line: 51, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1041, file: !1042, line: 1246, baseType: !897, size: 256, offset: 19008)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1041, file: !1042, line: 1247, baseType: !6, size: 32, offset: 19264)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1041, file: !1042, line: 1250, baseType: !3089, size: 64, offset: 19328)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !251, line: 912, size: 1792, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3090, file: !251, line: 917, baseType: !910, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3090, file: !251, line: 923, baseType: !897, size: 256, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3090, file: !251, line: 925, baseType: !125, size: 128, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3090, file: !251, line: 926, baseType: !3096, size: 128, offset: 448)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !251, line: 901, size: 128, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3096, file: !251, line: 902, baseType: !1221, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3096, file: !251, line: 903, baseType: !688, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3090, file: !251, line: 927, baseType: !3096, size: 128, offset: 576)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3090, file: !251, line: 928, baseType: !125, size: 128, offset: 704)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3090, file: !251, line: 930, baseType: !50, size: 32, offset: 832)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3090, file: !251, line: 931, baseType: !50, size: 32, offset: 864)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3090, file: !251, line: 932, baseType: !50, size: 32, offset: 896)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3090, file: !251, line: 934, baseType: !50, size: 32, offset: 928)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3090, file: !251, line: 935, baseType: !50, size: 32, offset: 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3090, file: !251, line: 936, baseType: !50, size: 32, offset: 992)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3090, file: !251, line: 937, baseType: !50, size: 32, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3090, file: !251, line: 939, baseType: !999, size: 32, offset: 1056)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3090, file: !251, line: 940, baseType: !1040, size: 64, offset: 1088)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3090, file: !251, line: 945, baseType: !688, size: 64, offset: 1152)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3090, file: !251, line: 946, baseType: !688, size: 64, offset: 1216)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3090, file: !251, line: 947, baseType: !688, size: 64, offset: 1280)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3090, file: !251, line: 953, baseType: !3089, size: 64, offset: 1344)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3090, file: !251, line: 954, baseType: !688, size: 64, offset: 1408)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3090, file: !251, line: 955, baseType: !688, size: 64, offset: 1472)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3090, file: !251, line: 956, baseType: !50, size: 32, offset: 1536)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3090, file: !251, line: 958, baseType: !50, size: 32, offset: 1568)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3090, file: !251, line: 960, baseType: !954, size: 128, align: 64, offset: 1600)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3090, file: !251, line: 968, baseType: !3121, size: 64, offset: 1728)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3122, line: 12, baseType: !3123)
!3122 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3122, line: 10, size: 64, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3123, file: !3122, line: 11, baseType: !901, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1041, file: !1042, line: 1251, baseType: !897, size: 256, offset: 19392)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1041, file: !1042, line: 1252, baseType: !125, size: 128, offset: 19648)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1041, file: !1042, line: 1259, baseType: !2169, size: 64, offset: 19776)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1041, file: !1042, line: 1260, baseType: !1481, size: 16, offset: 19840)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1041, file: !1042, line: 1261, baseType: !1481, size: 16, offset: 19856)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1041, file: !1042, line: 1314, baseType: !3132, size: 64, offset: 19904)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3134, line: 62, size: 256, align: 256, elements: !3135)
!3134 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3133, file: !3134, line: 75, baseType: !685, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3133, file: !3134, line: 90, baseType: !685, size: 32, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3133, file: !3134, line: 112, baseType: !689, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3133, file: !3134, line: 132, baseType: !685, size: 32, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3133, file: !3134, line: 140, baseType: !685, size: 32, offset: 160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3133, file: !3134, line: 149, baseType: !685, size: 32, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3133, file: !3134, line: 154, baseType: !3143, offset: 224)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, elements: !1764)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1041, file: !1042, line: 1315, baseType: !684, size: 32, offset: 19968)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1041, file: !1042, line: 1316, baseType: !684, size: 32, offset: 20000)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1041, file: !1042, line: 1321, baseType: !67, size: 64, offset: 20032)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1041, file: !1042, line: 1325, baseType: !50, size: 32, offset: 20096)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1041, file: !1042, line: 1326, baseType: !50, size: 32, offset: 20128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1041, file: !1042, line: 1327, baseType: !50, size: 32, offset: 20160)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1041, file: !1042, line: 1328, baseType: !50, size: 32, offset: 20192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1041, file: !1042, line: 1329, baseType: !954, size: 128, align: 64, offset: 20224)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1041, file: !1042, line: 1332, baseType: !3153, size: 128, offset: 20352)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3154, line: 51, size: 128, elements: !3155)
!3154 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3155 = !{!3156, !3161, !3162}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3153, file: !3154, line: 60, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3158, line: 7, size: 64, elements: !3159)
!3158 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3157, file: !3158, line: 12, baseType: !477, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3153, file: !3154, line: 63, baseType: !1533, size: 8, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3153, file: !3154, line: 70, baseType: !1533, size: 8, offset: 72)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1041, file: !1042, line: 1335, baseType: !3164, size: 64, offset: 20480)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1042, line: 59, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1041, file: !1042, line: 1337, baseType: !3167, size: 128, offset: 20544)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3154, line: 39, size: 128, elements: !3168)
!3168 = !{!3169, !3170, !3171}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3167, file: !3154, line: 40, baseType: !2228, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3167, file: !3154, line: 42, baseType: !685, size: 32, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3167, file: !3154, line: 43, baseType: !685, size: 32, offset: 96)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1041, file: !1042, line: 1340, baseType: !3173, size: 64, offset: 20672)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1042, line: 69, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1041, file: !1042, line: 1351, baseType: !50, size: 32, offset: 20736)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1041, file: !1042, line: 1352, baseType: !50, size: 32, offset: 20768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1041, file: !1042, line: 1354, baseType: !67, size: 64, offset: 20800)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1041, file: !1042, line: 1364, baseType: !688, size: 64, offset: 20864)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1041, file: !1042, line: 1365, baseType: !688, size: 64, offset: 20928)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1041, file: !1042, line: 1412, baseType: !67, size: 64, offset: 20992)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1041, file: !1042, line: 1453, baseType: !3182, size: 64, offset: 21056)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1042, line: 1453, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1041, file: !1042, line: 1457, baseType: !3185, size: 64, offset: 21120)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !191, line: 61, size: 576, elements: !3187)
!3187 = !{!3188, !3189, !3208, !3211, !3212, !3245, !3255}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3186, file: !191, line: 62, baseType: !190, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3186, file: !191, line: 64, baseType: !3190, size: 192, offset: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3186, file: !191, line: 64, size: 192, elements: !3191)
!3191 = !{!3192, !3203}
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !191, line: 65, baseType: !3193, size: 192)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !191, line: 65, size: 192, elements: !3194)
!3194 = !{!3195, !3202}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3193, file: !191, line: 66, baseType: !3196, size: 128)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3197, line: 50, size: 128, elements: !3198)
!3197 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3198 = !{!3199, !3200, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3196, file: !3197, line: 52, baseType: !67, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3196, file: !3197, line: 54, baseType: !6, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3196, file: !3197, line: 55, baseType: !6, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3193, file: !191, line: 67, baseType: !67, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !191, line: 70, baseType: !3204, size: 192)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !191, line: 70, size: 192, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3204, file: !191, line: 71, baseType: !954, size: 128, align: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3204, file: !191, line: 72, baseType: !67, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3186, file: !191, line: 76, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !191, line: 76, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3186, file: !191, line: 77, baseType: !67, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3186, file: !191, line: 79, baseType: !3213, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3197, line: 25, size: 256, elements: !3215)
!3215 = !{!3216, !3222, !3226}
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3197, line: 26, baseType: !3217, size: 128)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !3197, line: 26, size: 128, elements: !3218)
!3218 = !{!3219, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3217, file: !3197, line: 27, baseType: !3220, size: 128)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !1974)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3217, file: !3197, line: 28, baseType: !3220, size: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3214, file: !3197, line: 31, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3225)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3197, line: 23, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3197, line: 33, baseType: !3227, size: 64, offset: 192)
!3227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !3197, line: 33, size: 64, elements: !3228)
!3228 = !{!3229, !3235, !3240}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3227, file: !3197, line: 38, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3197, line: 34, size: 64, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3230, file: !3197, line: 35, baseType: !1429, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3230, file: !3197, line: 36, baseType: !111, size: 8, offset: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3230, file: !3197, line: 37, baseType: !111, size: 8, offset: 40)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3227, file: !3197, line: 42, baseType: !3236, size: 16)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3197, line: 39, size: 16, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3236, file: !3197, line: 40, baseType: !111, size: 8)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3236, file: !3197, line: 41, baseType: !111, size: 8, offset: 8)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3227, file: !3197, line: 46, baseType: !3241, size: 16)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3197, line: 43, size: 16, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3241, file: !3197, line: 44, baseType: !111, size: 8)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3241, file: !3197, line: 45, baseType: !111, size: 8, offset: 8)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3186, file: !191, line: 81, baseType: !3246, size: 64, offset: 448)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !191, line: 85, size: 384, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3247, file: !191, line: 86, baseType: !3209, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3247, file: !191, line: 87, baseType: !67, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3247, file: !191, line: 88, baseType: !67, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3247, file: !191, line: 89, baseType: !67, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3247, file: !191, line: 90, baseType: !1533, size: 8, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3247, file: !191, line: 92, baseType: !3246, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3186, file: !191, line: 82, baseType: !6, size: 32, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1041, file: !1042, line: 1463, baseType: !3257, offset: 21184)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1042, line: 739, elements: !816)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1041, file: !1042, line: 1470, baseType: !954, size: 128, align: 64, offset: 21184)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1041, file: !1042, line: 1471, baseType: !999, size: 32, offset: 21312)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1041, file: !1042, line: 1472, baseType: !50, size: 32, offset: 21344)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1041, file: !1042, line: 1474, baseType: !1040, size: 64, offset: 21376)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1041, file: !1042, line: 1475, baseType: !2442, size: 320, offset: 21440)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1041, file: !1042, line: 1478, baseType: !3264, size: 64, offset: 21760)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1042, line: 1478, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1041, file: !1042, line: 1482, baseType: !999, size: 32, offset: 21824)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1041, file: !1042, line: 1489, baseType: !48, size: 64, offset: 21888)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1041, file: !1042, line: 1504, baseType: !48, size: 64, offset: 21952)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1041, file: !1042, line: 1505, baseType: !689, size: 64, offset: 22016)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1041, file: !1042, line: 1506, baseType: !688, size: 64, offset: 22080)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1041, file: !1042, line: 1507, baseType: !689, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1041, file: !1042, line: 1508, baseType: !689, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1041, file: !1042, line: 1509, baseType: !689, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1041, file: !1042, line: 1510, baseType: !954, size: 128, align: 64, offset: 22208)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1041, file: !1042, line: 1511, baseType: !50, size: 32, offset: 22336)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1041, file: !1042, line: 1515, baseType: !3277, size: 64, offset: 22400)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !949, line: 56, size: 64, elements: !3278)
!3278 = !{!3279}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3277, file: !949, line: 57, baseType: !952, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1041, file: !1042, line: 1518, baseType: !3277, size: 64, offset: 22464)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1041, file: !1042, line: 1528, baseType: !954, size: 128, align: 64, offset: 22528)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1041, file: !1042, line: 1552, baseType: !3283, size: 35328, offset: 23040)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3284, line: 430, size: 35328, elements: !3285)
!3284 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3285 = !{!3286, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !4319, !4320, !4321, !4322, !4323, !4324, !4327, !4328, !4329, !4330}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3283, file: !3284, line: 432, baseType: !3287, size: 192)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3288, size: 192, elements: !543)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3289, line: 16, size: 64, elements: !3290)
!3289 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3288, file: !3289, line: 17, baseType: !121, size: 16)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3288, file: !3289, line: 18, baseType: !121, size: 16, offset: 16)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3288, file: !3289, line: 19, baseType: !121, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3288, file: !3289, line: 19, baseType: !121, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3288, file: !3289, line: 19, baseType: !121, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3288, file: !3289, line: 19, baseType: !121, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3288, file: !3289, line: 19, baseType: !121, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3288, file: !3289, line: 20, baseType: !121, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3288, file: !3289, line: 20, baseType: !121, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3288, file: !3289, line: 20, baseType: !121, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3288, file: !3289, line: 20, baseType: !121, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3288, file: !3289, line: 20, baseType: !121, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3288, file: !3289, line: 20, baseType: !121, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3283, file: !3284, line: 436, baseType: !67, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3283, file: !3284, line: 440, baseType: !54, size: 16, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3283, file: !3284, line: 441, baseType: !54, size: 16, offset: 272)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3283, file: !3284, line: 442, baseType: !54, size: 16, offset: 288)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3283, file: !3284, line: 443, baseType: !54, size: 16, offset: 304)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3283, file: !3284, line: 447, baseType: !67, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3283, file: !3284, line: 448, baseType: !67, size: 64, offset: 384)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3283, file: !3284, line: 459, baseType: !3312, size: 256, offset: 448)
!3312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3313, size: 256, elements: !1008)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !251, line: 671, size: 8512, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3858, !3859, !3860, !3861, !3867, !3868, !3869, !3870, !3871, !3955, !3956, !3957, !3958, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4078, !4079, !4080, !4081, !4082, !4083, !4098, !4099, !4100, !4101, !4102, !4108, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4125, !4296, !4297, !4300, !4303, !4316, !4317, !4318}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3314, file: !251, line: 678, baseType: !125, size: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3314, file: !251, line: 684, baseType: !125, size: 128, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3314, file: !251, line: 685, baseType: !125, size: 128, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3314, file: !251, line: 689, baseType: !1089, size: 192, align: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3314, file: !251, line: 690, baseType: !688, size: 64, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3314, file: !251, line: 696, baseType: !125, size: 128, offset: 640)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3314, file: !251, line: 698, baseType: !808, size: 128, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3314, file: !251, line: 699, baseType: !125, size: 128, offset: 896)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3314, file: !251, line: 700, baseType: !50, size: 32, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3314, file: !251, line: 703, baseType: !50, size: 32, offset: 1056)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3314, file: !251, line: 705, baseType: !50, size: 32, offset: 1088)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3314, file: !251, line: 707, baseType: !6, size: 32, offset: 1120)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3314, file: !251, line: 708, baseType: !3313, size: 64, offset: 1152)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3314, file: !251, line: 714, baseType: !3330, size: 64, offset: 1216)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !251, line: 302, size: 2432, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3764, !3765, !3766, !3767, !3768, !3772, !3773, !3777, !3781, !3782, !3786, !3790, !3791, !3792, !3796, !3800, !3804, !3805, !3806, !3810, !3814, !3818, !3823, !3824, !3844, !3848, !3849, !3850, !3854}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3331, file: !251, line: 303, baseType: !125, size: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3331, file: !251, line: 305, baseType: !488, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3331, file: !251, line: 306, baseType: !3336, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !204, line: 705, size: 5824, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3344, !3345, !3398, !3484, !3485, !3486, !3487, !3488, !3495, !3587, !3600, !3610, !3614, !3616, !3617, !3618, !3622, !3629, !3630, !3633, !3636, !3640, !3643, !3644, !3645, !3646, !3647, !3648, !3705, !3706, !3707, !3710, !3713, !3722, !3723, !3724, !3725, !3726, !3727}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3337, file: !204, line: 706, baseType: !501, size: 512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3337, file: !204, line: 707, baseType: !3336, size: 64, offset: 512)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3337, file: !204, line: 709, baseType: !3342, size: 64, offset: 576)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !204, line: 37, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3337, file: !204, line: 711, baseType: !44, size: 64, offset: 640)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3337, file: !204, line: 712, baseType: !3346, size: 64, offset: 704)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3348)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !204, line: 89, size: 384, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3358, !3363, !3367}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3348, file: !204, line: 90, baseType: !44, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3348, file: !204, line: 91, baseType: !587, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3348, file: !204, line: 92, baseType: !3353, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!50, !3356, !537}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3348, file: !204, line: 93, baseType: !3359, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!542, !3356, !3362, !1712, !1713}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3348, file: !204, line: 95, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !3336}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3348, file: !204, line: 97, baseType: !3368, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !211, line: 286, size: 1472, elements: !3371)
!3371 = !{!3372, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3370, file: !211, line: 287, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!50, !3336}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3370, file: !211, line: 288, baseType: !3364, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3370, file: !211, line: 289, baseType: !3373, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3370, file: !211, line: 290, baseType: !3373, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3370, file: !211, line: 291, baseType: !3373, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3370, file: !211, line: 292, baseType: !3373, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3370, file: !211, line: 293, baseType: !3373, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3370, file: !211, line: 294, baseType: !3373, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3370, file: !211, line: 295, baseType: !3373, size: 64, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3370, file: !211, line: 296, baseType: !3373, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3370, file: !211, line: 297, baseType: !3373, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3370, file: !211, line: 298, baseType: !3373, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3370, file: !211, line: 299, baseType: !3373, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3370, file: !211, line: 300, baseType: !3373, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3370, file: !211, line: 301, baseType: !3373, size: 64, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3370, file: !211, line: 302, baseType: !3373, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3370, file: !211, line: 303, baseType: !3373, size: 64, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3370, file: !211, line: 304, baseType: !3373, size: 64, offset: 1088)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3370, file: !211, line: 305, baseType: !3373, size: 64, offset: 1152)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3370, file: !211, line: 306, baseType: !3373, size: 64, offset: 1216)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3370, file: !211, line: 307, baseType: !3373, size: 64, offset: 1280)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3370, file: !211, line: 308, baseType: !3373, size: 64, offset: 1344)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3370, file: !211, line: 309, baseType: !3373, size: 64, offset: 1408)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3337, file: !204, line: 714, baseType: !3399, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3402, line: 80, size: 1344, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3483}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3401, file: !3402, line: 81, baseType: !44, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3401, file: !3402, line: 82, baseType: !44, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3401, file: !3402, line: 83, baseType: !587, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3401, file: !3402, line: 84, baseType: !587, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3401, file: !3402, line: 85, baseType: !587, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3401, file: !3402, line: 87, baseType: !3410, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!50, !3336, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !198, line: 96, size: 1152, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3435, !3446, !3447, !3448, !3449, !3450, !3458, !3459, !3460, !3461, !3462, !3463}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !198, line: 97, baseType: !44, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3414, file: !198, line: 98, baseType: !3399, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3414, file: !198, line: 100, baseType: !488, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3414, file: !198, line: 101, baseType: !44, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3414, file: !198, line: 103, baseType: !1533, size: 8, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3414, file: !198, line: 104, baseType: !197, size: 32, offset: 288)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3414, file: !198, line: 106, baseType: !3423, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3426, line: 282, size: 1600, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3427 = !{!3428, !3429, !3430, !3434}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !3426, line: 283, baseType: !2827, size: 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3425, file: !3426, line: 284, baseType: !2827, size: 256, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3425, file: !3426, line: 285, baseType: !3431, size: 1024, offset: 512)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3425, file: !3426, line: 286, baseType: !1462, size: 64, offset: 1536)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3414, file: !198, line: 107, baseType: !3436, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3426, line: 217, size: 256, elements: !3439)
!3439 = !{!3440, !3442, !3444, !3445}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3438, file: !3426, line: 218, baseType: !3441, size: 128)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !1974)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3438, file: !3426, line: 219, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3426, line: 15, baseType: !67)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3438, file: !3426, line: 220, baseType: !685, size: 32, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3438, file: !3426, line: 221, baseType: !685, size: 32, offset: 224)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3414, file: !198, line: 109, baseType: !3373, size: 64, offset: 448)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3414, file: !198, line: 110, baseType: !3364, size: 64, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3414, file: !198, line: 111, baseType: !3373, size: 64, offset: 576)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3414, file: !198, line: 112, baseType: !3364, size: 64, offset: 640)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3414, file: !198, line: 113, baseType: !3451, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!50, !3336, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !211, line: 60, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !211, line: 58, size: 32, elements: !3456)
!3456 = !{!3457}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3455, file: !211, line: 59, baseType: !50, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3414, file: !198, line: 114, baseType: !3373, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3414, file: !198, line: 115, baseType: !587, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3414, file: !198, line: 116, baseType: !587, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3414, file: !198, line: 118, baseType: !3368, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3414, file: !198, line: 119, baseType: !3364, size: 64, offset: 1024)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3414, file: !198, line: 121, baseType: !3464, size: 64, offset: 1088)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !198, line: 121, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3401, file: !3402, line: 88, baseType: !3353, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3401, file: !3402, line: 89, baseType: !3373, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3401, file: !3402, line: 90, baseType: !3364, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3401, file: !3402, line: 91, baseType: !3364, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3401, file: !3402, line: 92, baseType: !3364, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3401, file: !3402, line: 94, baseType: !3373, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3401, file: !3402, line: 95, baseType: !3373, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3401, file: !3402, line: 97, baseType: !3451, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3401, file: !3402, line: 98, baseType: !3373, size: 64, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3401, file: !3402, line: 100, baseType: !3373, size: 64, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3401, file: !3402, line: 102, baseType: !3373, size: 64, offset: 1024)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3401, file: !3402, line: 103, baseType: !3364, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3401, file: !3402, line: 105, baseType: !3368, size: 64, offset: 1152)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3401, file: !3402, line: 107, baseType: !3480, size: 64, offset: 1216)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3402, line: 107, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3401, file: !3402, line: 109, baseType: !1533, size: 8, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3337, file: !204, line: 715, baseType: !3413, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3337, file: !204, line: 717, baseType: !48, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3337, file: !204, line: 719, baseType: !48, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3337, file: !204, line: 721, baseType: !897, size: 256, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3337, file: !204, line: 725, baseType: !3489, size: 448, offset: 1280)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !204, line: 517, size: 448, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3489, file: !204, line: 518, baseType: !125, size: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3489, file: !204, line: 519, baseType: !125, size: 128, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3489, file: !204, line: 520, baseType: !125, size: 128, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3489, file: !204, line: 521, baseType: !203, size: 32, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3337, file: !204, line: 726, baseType: !3496, size: 2496, offset: 1728)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !211, line: 663, size: 2496, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3580, !3584}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3496, file: !211, line: 664, baseType: !3454, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3496, file: !211, line: 665, baseType: !6, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3496, file: !211, line: 666, baseType: !6, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3496, file: !211, line: 667, baseType: !1533, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3496, file: !211, line: 668, baseType: !1533, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3496, file: !211, line: 669, baseType: !1533, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3496, file: !211, line: 670, baseType: !1533, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3496, file: !211, line: 671, baseType: !1533, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3496, file: !211, line: 672, baseType: !1533, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3496, file: !211, line: 673, baseType: !1533, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3496, file: !211, line: 674, baseType: !1533, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3496, file: !211, line: 675, baseType: !684, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3496, file: !211, line: 676, baseType: !87, size: 32, offset: 96)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3496, file: !211, line: 678, baseType: !125, size: 128, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3496, file: !211, line: 679, baseType: !1687, size: 256, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3496, file: !211, line: 680, baseType: !3514, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3516, line: 43, size: 1536, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3515, file: !3516, line: 44, baseType: !44, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3515, file: !3516, line: 45, baseType: !50, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3515, file: !3516, line: 46, baseType: !125, size: 128, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3515, file: !3516, line: 47, baseType: !87, size: 32, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3515, file: !3516, line: 48, baseType: !3523, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !211, line: 629, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3515, file: !3516, line: 49, baseType: !2442, size: 320, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3515, file: !3516, line: 50, baseType: !67, size: 64, offset: 704)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3515, file: !3516, line: 51, baseType: !1167, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3515, file: !3516, line: 52, baseType: !1167, size: 64, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3515, file: !3516, line: 53, baseType: !1167, size: 64, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3515, file: !3516, line: 54, baseType: !1167, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3515, file: !3516, line: 55, baseType: !1167, size: 64, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3515, file: !3516, line: 56, baseType: !67, size: 64, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3515, file: !3516, line: 57, baseType: !67, size: 64, offset: 1152)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3515, file: !3516, line: 58, baseType: !67, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3515, file: !3516, line: 59, baseType: !67, size: 64, offset: 1280)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3515, file: !3516, line: 60, baseType: !67, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3515, file: !3516, line: 61, baseType: !3336, size: 64, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3515, file: !3516, line: 62, baseType: !1533, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3515, file: !3516, line: 63, baseType: !1533, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3496, file: !211, line: 681, baseType: !1533, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3496, file: !211, line: 682, baseType: !1533, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3496, file: !211, line: 683, baseType: !1533, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3496, file: !211, line: 684, baseType: !6, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3496, file: !211, line: 685, baseType: !6, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3496, file: !211, line: 690, baseType: !1159, size: 512, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3496, file: !211, line: 691, baseType: !688, size: 64, offset: 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3496, file: !211, line: 692, baseType: !1648, size: 256, offset: 1216)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3496, file: !211, line: 693, baseType: !82, size: 192, offset: 1472)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3496, file: !211, line: 694, baseType: !3523, size: 64, offset: 1664)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3496, file: !211, line: 695, baseType: !77, size: 32, offset: 1728)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3496, file: !211, line: 696, baseType: !77, size: 32, offset: 1760)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3496, file: !211, line: 697, baseType: !6, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3496, file: !211, line: 698, baseType: !6, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3496, file: !211, line: 699, baseType: !6, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3496, file: !211, line: 700, baseType: !6, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3496, file: !211, line: 701, baseType: !6, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3496, file: !211, line: 702, baseType: !6, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3496, file: !211, line: 703, baseType: !1533, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3496, file: !211, line: 704, baseType: !6, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3496, file: !211, line: 705, baseType: !6, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3496, file: !211, line: 706, baseType: !6, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3496, file: !211, line: 707, baseType: !6, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3496, file: !211, line: 708, baseType: !6, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3496, file: !211, line: 709, baseType: !6, size: 32, offset: 1824)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3496, file: !211, line: 710, baseType: !210, size: 32, offset: 1856)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3496, file: !211, line: 711, baseType: !218, size: 32, offset: 1888)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3496, file: !211, line: 712, baseType: !218, size: 32, offset: 1920)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3496, file: !211, line: 713, baseType: !50, size: 32, offset: 1952)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3496, file: !211, line: 714, baseType: !50, size: 32, offset: 1984)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3496, file: !211, line: 715, baseType: !688, size: 64, offset: 2048)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3496, file: !211, line: 716, baseType: !688, size: 64, offset: 2112)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3496, file: !211, line: 717, baseType: !688, size: 64, offset: 2176)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3496, file: !211, line: 718, baseType: !688, size: 64, offset: 2240)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3496, file: !211, line: 720, baseType: !3575, size: 64, offset: 2304)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !211, line: 632, size: 64, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3576, file: !211, line: 633, baseType: !87, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3576, file: !211, line: 634, baseType: !6, size: 32, offset: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3496, file: !211, line: 721, baseType: !3581, size: 64, offset: 2368)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !3336, !1429}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3496, file: !211, line: 722, baseType: !3585, size: 64, offset: 2432)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !211, line: 722, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3337, file: !204, line: 727, baseType: !3588, size: 64, offset: 4224)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !211, line: 742, size: 1792, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3597, !3598, !3599}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3589, file: !211, line: 743, baseType: !3370, size: 1472)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3589, file: !211, line: 744, baseType: !3373, size: 64, offset: 1472)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3589, file: !211, line: 745, baseType: !3594, size: 64, offset: 1536)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3336, !1533}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3589, file: !211, line: 746, baseType: !3373, size: 64, offset: 1600)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3589, file: !211, line: 747, baseType: !3364, size: 64, offset: 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3589, file: !211, line: 748, baseType: !3364, size: 64, offset: 1728)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3337, file: !204, line: 736, baseType: !3601, size: 128, offset: 4288)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !204, line: 529, size: 128, elements: !3602)
!3602 = !{!3603, !3607}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3601, file: !204, line: 531, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3606, line: 13, flags: DIFlagFwdDecl)
!3606 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3601, file: !204, line: 532, baseType: !3608, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !204, line: 49, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3337, file: !204, line: 738, baseType: !3611, size: 64, offset: 4416)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !204, line: 738, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3337, file: !204, line: 740, baseType: !3615, size: 64, offset: 4480)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3337, file: !204, line: 741, baseType: !688, size: 64, offset: 4544)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3337, file: !204, line: 746, baseType: !688, size: 64, offset: 4608)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3337, file: !204, line: 747, baseType: !3619, size: 64, offset: 4672)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3621)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !204, line: 747, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3337, file: !204, line: 749, baseType: !3623, size: 64, offset: 4736)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !204, line: 428, size: 128, elements: !3625)
!3625 = !{!3626, !3627, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3624, file: !204, line: 433, baseType: !6, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3624, file: !204, line: 434, baseType: !6, size: 32, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3624, file: !204, line: 435, baseType: !67, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3337, file: !204, line: 751, baseType: !125, size: 128, offset: 4800)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3337, file: !204, line: 762, baseType: !3631, size: 64, offset: 4928)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !204, line: 762, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3337, file: !204, line: 770, baseType: !3634, offset: 4992)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3635, line: 5, elements: !816)
!3635 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3337, file: !204, line: 772, baseType: !3637, size: 64, offset: 4992)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3639, line: 18, flags: DIFlagFwdDecl)
!3639 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3337, file: !204, line: 773, baseType: !3641, size: 64, offset: 5056)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3402, line: 22, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3337, file: !204, line: 776, baseType: !50, size: 32, offset: 5120)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3337, file: !204, line: 778, baseType: !771, size: 32, offset: 5152)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3337, file: !204, line: 779, baseType: !684, size: 32, offset: 5184)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3337, file: !204, line: 781, baseType: !87, size: 32, offset: 5216)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3337, file: !204, line: 782, baseType: !125, size: 128, offset: 5248)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3337, file: !204, line: 784, baseType: !3649, size: 64, offset: 5376)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3651)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3652, line: 52, size: 768, elements: !3653)
!3652 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3662, !3666, !3667, !3668, !3696, !3700, !3704}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3651, file: !3652, line: 53, baseType: !44, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3651, file: !3652, line: 55, baseType: !587, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3651, file: !3652, line: 56, baseType: !587, size: 64, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3651, file: !3652, line: 58, baseType: !3353, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3651, file: !3652, line: 59, baseType: !3659, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!542, !3356, !3362}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3651, file: !3652, line: 61, baseType: !3663, size: 64, offset: 320)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3649}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3651, file: !3652, line: 62, baseType: !3364, size: 64, offset: 384)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3651, file: !3652, line: 64, baseType: !3373, size: 64, offset: 448)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3651, file: !3652, line: 66, baseType: !3669, size: 64, offset: 512)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !3672)
!3672 = !{!3673, !3674, !3678, !3682, !3688, !3692}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3671, file: !29, line: 40, baseType: !28, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3671, file: !29, line: 41, baseType: !3675, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!1533}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3671, file: !29, line: 42, baseType: !3679, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!48}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3671, file: !29, line: 43, baseType: !3683, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!1462, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3671, file: !29, line: 44, baseType: !3689, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!1462}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3671, file: !29, line: 45, baseType: !3693, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !48}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3651, file: !3652, line: 67, baseType: !3697, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!1462, !3356}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3651, file: !3652, line: 69, baseType: !3701, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3356, !1712, !1713}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3651, file: !3652, line: 71, baseType: !3368, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3337, file: !204, line: 785, baseType: !587, size: 64, offset: 5440)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3337, file: !204, line: 787, baseType: !3364, size: 64, offset: 5504)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3337, file: !204, line: 788, baseType: !3708, size: 64, offset: 5568)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !204, line: 46, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3337, file: !204, line: 789, baseType: !3711, size: 64, offset: 5632)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !204, line: 48, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3337, file: !204, line: 791, baseType: !3714, size: 64, offset: 5696)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !204, line: 597, size: 128, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3715, file: !204, line: 598, baseType: !225, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3715, file: !204, line: 599, baseType: !234, size: 32, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3715, file: !204, line: 600, baseType: !239, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3715, file: !204, line: 601, baseType: !1533, size: 8, offset: 96)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3715, file: !204, line: 602, baseType: !1533, size: 8, offset: 104)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3337, file: !204, line: 793, baseType: !244, size: 32, offset: 5760)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3337, file: !204, line: 795, baseType: !1533, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3337, file: !204, line: 796, baseType: !1533, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3337, file: !204, line: 797, baseType: !1533, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3337, file: !204, line: 798, baseType: !1533, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3337, file: !204, line: 799, baseType: !1533, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3331, file: !251, line: 307, baseType: !3336, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3331, file: !251, line: 308, baseType: !587, size: 64, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3331, file: !251, line: 309, baseType: !587, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3331, file: !251, line: 310, baseType: !44, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3331, file: !251, line: 311, baseType: !50, size: 32, offset: 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3331, file: !251, line: 316, baseType: !50, size: 32, offset: 544)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3331, file: !251, line: 318, baseType: !879, size: 64, offset: 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3331, file: !251, line: 319, baseType: !3736, size: 64, offset: 640)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !251, line: 977, size: 1856, elements: !3738)
!3738 = !{!3739, !3754, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3737, file: !251, line: 978, baseType: !3740, size: 896)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !251, line: 873, size: 896, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3740, file: !251, line: 874, baseType: !3330, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3740, file: !251, line: 875, baseType: !3089, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3740, file: !251, line: 877, baseType: !125, size: 128, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3740, file: !251, line: 879, baseType: !125, size: 128, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3740, file: !251, line: 880, baseType: !125, size: 128, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3740, file: !251, line: 883, baseType: !6, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3740, file: !251, line: 885, baseType: !6, size: 32, offset: 544)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3740, file: !251, line: 886, baseType: !6, size: 32, offset: 576)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3740, file: !251, line: 888, baseType: !77, size: 32, offset: 608)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3740, file: !251, line: 889, baseType: !954, size: 128, align: 64, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3740, file: !251, line: 891, baseType: !48, size: 64, offset: 768)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3740, file: !251, line: 898, baseType: !50, size: 32, offset: 832)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3737, file: !251, line: 979, baseType: !3755, size: 64, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3737, file: !251, line: 981, baseType: !125, size: 128, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3737, file: !251, line: 982, baseType: !50, size: 32, offset: 1088)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3737, file: !251, line: 984, baseType: !50, size: 32, offset: 1120)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3737, file: !251, line: 985, baseType: !50, size: 32, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3737, file: !251, line: 987, baseType: !910, size: 32, offset: 1184)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3737, file: !251, line: 988, baseType: !1159, size: 512, offset: 1216)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3737, file: !251, line: 989, baseType: !1167, size: 64, offset: 1728)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3737, file: !251, line: 990, baseType: !6, size: 32, offset: 1792)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3331, file: !251, line: 320, baseType: !77, size: 32, offset: 704)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3331, file: !251, line: 321, baseType: !50, size: 32, offset: 736)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3331, file: !251, line: 322, baseType: !50, size: 32, offset: 768)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3331, file: !251, line: 325, baseType: !6, size: 32, offset: 800)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3331, file: !251, line: 331, baseType: !3769, size: 64, offset: 832)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !3330}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3331, file: !251, line: 332, baseType: !3769, size: 64, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3331, file: !251, line: 350, baseType: !3774, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!50, !3313}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3331, file: !251, line: 356, baseType: !3778, size: 64, offset: 1024)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3313, !1328}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3331, file: !251, line: 357, baseType: !3778, size: 64, offset: 1088)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3331, file: !251, line: 385, baseType: !3783, size: 64, offset: 1152)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!50, !3313, !50}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3331, file: !251, line: 386, baseType: !3787, size: 64, offset: 1216)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3313, !50}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3331, file: !251, line: 406, baseType: !3787, size: 64, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3331, file: !251, line: 407, baseType: !3787, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3331, file: !251, line: 415, baseType: !3793, size: 64, offset: 1408)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3313}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3331, file: !251, line: 427, baseType: !3797, size: 64, offset: 1472)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{null, !3330, !6}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3331, file: !251, line: 436, baseType: !3801, size: 64, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!50, !3330}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3331, file: !251, line: 443, baseType: !3769, size: 64, offset: 1600)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3331, file: !251, line: 450, baseType: !3774, size: 64, offset: 1664)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3331, file: !251, line: 455, baseType: !3807, size: 64, offset: 1728)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3755, !1533}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3331, file: !251, line: 461, baseType: !3811, size: 64, offset: 1792)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3813, line: 11, flags: DIFlagFwdDecl)
!3813 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3331, file: !251, line: 469, baseType: !3815, size: 64, offset: 1856)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !3755, !3755}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3331, file: !251, line: 476, baseType: !3819, size: 64, offset: 1920)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!48, !3313, !3822, !50, !1533}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3331, file: !251, line: 483, baseType: !3693, size: 64, offset: 1984)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3331, file: !251, line: 494, baseType: !3825, size: 64, offset: 2048)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!487, !3313, !3828, !67}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !251, line: 1014, size: 448, elements: !3830)
!3830 = !{!3831, !3832, !3835, !3836, !3837, !3838, !3843}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3829, file: !251, line: 1015, baseType: !3313, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3829, file: !251, line: 1016, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !251, line: 641, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3829, file: !251, line: 1017, baseType: !67, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3829, file: !251, line: 1018, baseType: !67, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3829, file: !251, line: 1019, baseType: !688, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3829, file: !251, line: 1020, baseType: !3839, size: 64, offset: 320)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3829, file: !251, line: 1020, size: 64, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3839, file: !251, line: 1021, baseType: !48, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3839, file: !251, line: 1022, baseType: !67, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3829, file: !251, line: 1024, baseType: !50, size: 32, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3331, file: !251, line: 506, baseType: !3845, size: 64, offset: 2112)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!50, !128}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3331, file: !251, line: 520, baseType: !3793, size: 64, offset: 2176)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3331, file: !251, line: 530, baseType: !3774, size: 64, offset: 2240)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3331, file: !251, line: 537, baseType: !3851, size: 64, offset: 2304)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!1533, !3330, !50}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3331, file: !251, line: 542, baseType: !3855, size: 64, offset: 2368)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!50, !3313, !688}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3314, file: !251, line: 715, baseType: !48, size: 64, offset: 1280)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3314, file: !251, line: 717, baseType: !250, size: 32, offset: 1344)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3314, file: !251, line: 718, baseType: !6, size: 32, offset: 1376)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3314, file: !251, line: 719, baseType: !3862, size: 64, offset: 1408)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3863, line: 26, baseType: !3864)
!3863 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3863, line: 24, size: 64, elements: !3865)
!3865 = !{!3866}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3864, file: !3863, line: 25, baseType: !3121, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3314, file: !251, line: 720, baseType: !903, size: 64, offset: 1472)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3314, file: !251, line: 728, baseType: !688, size: 64, offset: 1536)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3314, file: !251, line: 729, baseType: !688, size: 64, offset: 1600)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3314, file: !251, line: 730, baseType: !688, size: 64, offset: 1664)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3314, file: !251, line: 732, baseType: !3872, size: 1088, offset: 1728)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3873, line: 385, size: 1088, elements: !3874)
!3873 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3874 = !{!3875, !3876, !3877, !3878, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3928, !3929, !3936, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3872, file: !3873, line: 390, baseType: !685, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3872, file: !3873, line: 395, baseType: !685, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3872, file: !3873, line: 400, baseType: !689, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3873, line: 402, baseType: !3879, size: 64, offset: 128)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3872, file: !3873, line: 402, size: 64, elements: !3880)
!3880 = !{!3881, !3882}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3879, file: !3873, line: 403, baseType: !689, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3879, file: !3873, line: 404, baseType: !689, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3872, file: !3873, line: 407, baseType: !689, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3872, file: !3873, line: 408, baseType: !689, size: 64, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3872, file: !3873, line: 410, baseType: !689, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3872, file: !3873, line: 411, baseType: !689, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3872, file: !3873, line: 412, baseType: !689, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3872, file: !3873, line: 413, baseType: !689, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3872, file: !3873, line: 414, baseType: !689, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3872, file: !3873, line: 415, baseType: !689, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3872, file: !3873, line: 416, baseType: !689, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3872, file: !3873, line: 417, baseType: !689, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3872, file: !3873, line: 418, baseType: !689, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3872, file: !3873, line: 419, baseType: !689, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3872, file: !3873, line: 420, baseType: !689, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3872, file: !3873, line: 421, baseType: !689, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3872, file: !3873, line: 422, baseType: !689, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3872, file: !3873, line: 423, baseType: !689, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3872, file: !3873, line: 424, baseType: !689, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3872, file: !3873, line: 435, baseType: !689, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3872, file: !3873, line: 436, baseType: !689, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3872, file: !3873, line: 437, baseType: !689, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3872, file: !3873, line: 439, baseType: !689, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3872, file: !3873, line: 440, baseType: !689, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3872, file: !3873, line: 442, baseType: !689, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3872, file: !3873, line: 443, baseType: !689, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3872, file: !3873, line: 444, baseType: !689, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3872, file: !3873, line: 445, baseType: !689, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3872, file: !3873, line: 446, baseType: !689, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3872, file: !3873, line: 447, baseType: !689, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3872, file: !3873, line: 448, baseType: !689, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3872, file: !3873, line: 449, baseType: !689, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3872, file: !3873, line: 450, baseType: !689, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3872, file: !3873, line: 451, baseType: !689, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3872, file: !3873, line: 452, baseType: !689, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3872, file: !3873, line: 453, baseType: !689, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3872, file: !3873, line: 454, baseType: !689, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3872, file: !3873, line: 455, baseType: !689, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3872, file: !3873, line: 456, baseType: !689, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3872, file: !3873, line: 457, baseType: !689, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3872, file: !3873, line: 458, baseType: !689, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3872, file: !3873, line: 459, baseType: !689, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3873, line: 461, baseType: !3924, size: 32, offset: 384)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3872, file: !3873, line: 461, size: 32, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3924, file: !3873, line: 462, baseType: !685, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3924, file: !3873, line: 463, baseType: !685, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3872, file: !3873, line: 466, baseType: !685, size: 32, offset: 416)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3873, line: 467, baseType: !3930, size: 64, offset: 448)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3872, file: !3873, line: 467, size: 64, elements: !3931)
!3931 = !{!3932, !3933, !3934, !3935}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3930, file: !3873, line: 468, baseType: !689, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3930, file: !3873, line: 469, baseType: !689, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3930, file: !3873, line: 470, baseType: !689, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3930, file: !3873, line: 471, baseType: !689, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3873, line: 473, baseType: !3937, size: 64, offset: 512)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3872, file: !3873, line: 473, size: 64, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3937, file: !3873, line: 474, baseType: !689, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3937, file: !3873, line: 475, baseType: !689, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3937, file: !3873, line: 476, baseType: !689, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3937, file: !3873, line: 477, baseType: !689, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3872, file: !3873, line: 479, baseType: !689, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3872, file: !3873, line: 485, baseType: !689, size: 64, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3872, file: !3873, line: 490, baseType: !685, size: 32, offset: 704)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3872, file: !3873, line: 492, baseType: !1430, size: 32, offset: 736)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3872, file: !3873, line: 501, baseType: !689, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3872, file: !3873, line: 506, baseType: !685, size: 32, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3872, file: !3873, line: 507, baseType: !122, size: 16, offset: 864)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3872, file: !3873, line: 508, baseType: !122, size: 16, offset: 880)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3872, file: !3873, line: 509, baseType: !685, size: 32, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3872, file: !3873, line: 510, baseType: !685, size: 32, offset: 928)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3872, file: !3873, line: 518, baseType: !689, size: 64, offset: 960)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3872, file: !3873, line: 520, baseType: !689, size: 64, offset: 1024)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3314, file: !251, line: 733, baseType: !121, size: 16, offset: 2816)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3314, file: !251, line: 734, baseType: !121, size: 16, offset: 2832)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3314, file: !251, line: 735, baseType: !121, size: 16, offset: 2848)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3314, file: !251, line: 736, baseType: !3959, size: 1536, offset: 2880)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !251, line: 155, size: 1536, elements: !3960)
!3960 = !{!3961, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4045, !4046, !4047, !4048}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !251, line: 157, baseType: !3962, size: 768)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !251, line: 157, size: 768, elements: !3963)
!3963 = !{!3964, !3983, !3987, !3991, !3996, !4018}
!3964 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !251, line: 158, baseType: !3965, size: 768)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !251, line: 158, size: 768, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3982}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3965, file: !251, line: 159, baseType: !688, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3965, file: !251, line: 160, baseType: !688, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3965, file: !251, line: 161, baseType: !67, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3965, file: !251, line: 162, baseType: !67, size: 64, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3965, file: !251, line: 163, baseType: !50, size: 32, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3965, file: !251, line: 164, baseType: !50, size: 32, offset: 288)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3965, file: !251, line: 165, baseType: !50, size: 32, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3965, file: !251, line: 166, baseType: !50, size: 32, offset: 352)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3965, file: !251, line: 168, baseType: !3976, size: 192, offset: 384)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !251, line: 134, size: 192, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3976, file: !251, line: 135, baseType: !688, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3976, file: !251, line: 136, baseType: !6, size: 32, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3976, file: !251, line: 137, baseType: !50, size: 32, offset: 96)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3976, file: !251, line: 138, baseType: !50, size: 32, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3965, file: !251, line: 169, baseType: !3976, size: 192, offset: 576)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !251, line: 171, baseType: !3984, size: 512)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !251, line: 171, size: 512, elements: !3985)
!3985 = !{!3986}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3984, file: !251, line: 172, baseType: !1159, size: 512)
!3987 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !251, line: 174, baseType: !3988, size: 128)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !251, line: 174, size: 128, elements: !3989)
!3989 = !{!3990}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3988, file: !251, line: 176, baseType: !125, size: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !251, line: 178, baseType: !3992, size: 128)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !251, line: 178, size: 128, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3992, file: !251, line: 179, baseType: !688, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3992, file: !251, line: 180, baseType: !688, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !251, line: 183, baseType: !3997, size: 320)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !251, line: 183, size: 320, elements: !3998)
!3998 = !{!3999, !4007}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3997, file: !251, line: 189, baseType: !4000, size: 192)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4001, line: 14, size: 192, elements: !4002)
!4001 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4002 = !{!4003, !4004, !4005, !4006}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4000, file: !4001, line: 15, baseType: !67, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4000, file: !4001, line: 16, baseType: !67, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4000, file: !4001, line: 17, baseType: !111, size: 8, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4000, file: !4001, line: 18, baseType: !111, size: 8, offset: 136)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3997, file: !251, line: 190, baseType: !4008, size: 128, offset: 192)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4009, line: 21, size: 128, elements: !4010)
!4009 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4010 = !{!4011, !4016}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4008, file: !4009, line: 22, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4009, line: 17, size: 64, elements: !4013)
!4013 = !{!4014}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4012, file: !4009, line: 18, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4008, file: !4009, line: 23, baseType: !4017, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !251, line: 193, baseType: !4019, size: 192)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !251, line: 193, size: 192, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4019, file: !251, line: 194, baseType: !111, size: 8)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4019, file: !251, line: 195, baseType: !111, size: 8, offset: 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4019, file: !251, line: 196, baseType: !121, size: 16, offset: 16)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4019, file: !251, line: 197, baseType: !688, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4019, file: !251, line: 198, baseType: !688, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3959, file: !251, line: 205, baseType: !1040, size: 64, offset: 768)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3959, file: !251, line: 211, baseType: !48, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3959, file: !251, line: 214, baseType: !67, size: 64, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3959, file: !251, line: 223, baseType: !50, size: 32, offset: 960)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3959, file: !251, line: 229, baseType: !3862, size: 64, offset: 1024)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3959, file: !251, line: 234, baseType: !688, size: 64, offset: 1088)
!4032 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !251, line: 236, baseType: !4033, size: 128, offset: 1152)
!4033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !251, line: 236, size: 128, elements: !4034)
!4034 = !{!4035, !4040}
!4035 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !251, line: 237, baseType: !4036, size: 128)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4033, file: !251, line: 237, size: 128, elements: !4037)
!4037 = !{!4038, !4039}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4036, file: !251, line: 241, baseType: !688, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4036, file: !251, line: 249, baseType: !3862, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !251, line: 251, baseType: !4041, size: 128)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4033, file: !251, line: 251, size: 128, elements: !4042)
!4042 = !{!4043, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4041, file: !251, line: 252, baseType: !688, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4041, file: !251, line: 253, baseType: !688, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3959, file: !251, line: 261, baseType: !688, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3959, file: !251, line: 262, baseType: !688, size: 64, offset: 1344)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3959, file: !251, line: 268, baseType: !688, size: 64, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3959, file: !251, line: 269, baseType: !688, size: 64, offset: 1472)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3314, file: !251, line: 738, baseType: !3089, size: 64, offset: 4416)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3314, file: !251, line: 744, baseType: !3755, size: 64, offset: 4480)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3314, file: !251, line: 745, baseType: !901, size: 64, offset: 4544)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3314, file: !251, line: 751, baseType: !903, size: 64, offset: 4608)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3314, file: !251, line: 752, baseType: !903, size: 64, offset: 4672)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3314, file: !251, line: 757, baseType: !897, size: 256, offset: 4736)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3314, file: !251, line: 758, baseType: !125, size: 128, offset: 4992)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3314, file: !251, line: 759, baseType: !3313, size: 64, offset: 5120)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3314, file: !251, line: 761, baseType: !50, size: 32, offset: 5184)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3314, file: !251, line: 762, baseType: !50, size: 32, offset: 5216)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3314, file: !251, line: 764, baseType: !125, size: 128, offset: 5248)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3314, file: !251, line: 765, baseType: !1040, size: 64, offset: 5376)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3314, file: !251, line: 768, baseType: !897, size: 256, offset: 5440)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3314, file: !251, line: 769, baseType: !77, size: 32, offset: 5696)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3314, file: !251, line: 771, baseType: !3833, size: 64, offset: 5760)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3314, file: !251, line: 772, baseType: !125, size: 128, offset: 5824)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3314, file: !251, line: 773, baseType: !67, size: 64, offset: 5952)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3314, file: !251, line: 774, baseType: !50, size: 32, offset: 6016)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3314, file: !251, line: 777, baseType: !82, size: 192, offset: 6080)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3314, file: !251, line: 778, baseType: !4069, size: 64, offset: 6272)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !149, line: 1083, size: 384, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4070, file: !149, line: 1084, baseType: !974, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4070, file: !149, line: 1085, baseType: !50, size: 32, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4070, file: !149, line: 1086, baseType: !50, size: 32, offset: 96)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4070, file: !149, line: 1087, baseType: !4069, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4070, file: !149, line: 1088, baseType: !1355, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4070, file: !149, line: 1089, baseType: !954, size: 128, align: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3314, file: !251, line: 781, baseType: !6, size: 32, offset: 6336)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3314, file: !251, line: 782, baseType: !6, size: 32, offset: 6368)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3314, file: !251, line: 783, baseType: !6, size: 32, offset: 6400)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3314, file: !251, line: 784, baseType: !6, size: 32, offset: 6432)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3314, file: !251, line: 785, baseType: !67, size: 64, offset: 6464)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3314, file: !251, line: 786, baseType: !4084, size: 256, offset: 6528)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4085, line: 17, size: 256, elements: !4086)
!4085 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4086 = !{!4087, !4088, !4093}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4084, file: !4085, line: 18, baseType: !1059, size: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4084, file: !4085, line: 19, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4092}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4084, file: !4085, line: 20, baseType: !4094, size: 64, offset: 192)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4095, line: 16, size: 64, elements: !4096)
!4095 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4096 = !{!4097}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4094, file: !4095, line: 17, baseType: !1040, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3314, file: !251, line: 787, baseType: !954, size: 128, align: 64, offset: 6784)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3314, file: !251, line: 788, baseType: !6, size: 32, offset: 6912)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3314, file: !251, line: 789, baseType: !4094, size: 64, offset: 6976)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3314, file: !251, line: 791, baseType: !77, size: 32, offset: 7040)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3314, file: !251, line: 794, baseType: !4103, size: 192, offset: 7104)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !251, line: 579, size: 192, elements: !4104)
!4104 = !{!4105, !4106, !4107}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4103, file: !251, line: 580, baseType: !125, size: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4103, file: !251, line: 581, baseType: !910, size: 32, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4103, file: !251, line: 582, baseType: !6, size: 32, offset: 160)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3314, file: !251, line: 796, baseType: !4109, size: 64, offset: 7296)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !251, line: 585, size: 128, elements: !4111)
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4110, file: !251, line: 586, baseType: !67, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4110, file: !251, line: 587, baseType: !67, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3314, file: !251, line: 797, baseType: !67, size: 64, offset: 7360)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3314, file: !251, line: 800, baseType: !3313, size: 64, offset: 7424)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3314, file: !251, line: 802, baseType: !3793, size: 64, offset: 7488)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3314, file: !251, line: 803, baseType: !954, size: 128, align: 64, offset: 7552)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3314, file: !251, line: 805, baseType: !1019, size: 64, offset: 7680)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3314, file: !251, line: 806, baseType: !688, size: 64, offset: 7744)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3314, file: !251, line: 808, baseType: !903, size: 64, offset: 7808)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3314, file: !251, line: 810, baseType: !4122, size: 64, offset: 7872)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!688}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3314, file: !251, line: 811, baseType: !4126, size: 64, offset: 7936)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !251, line: 605, baseType: !4127)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !3313, !4130, !4235}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !251, line: 1148, size: 2048, align: 512, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4142, !4143, !4144, !4149, !4150, !4157, !4178, !4200, !4210, !4228, !4229, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4131, file: !251, line: 1153, baseType: !688, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4131, file: !251, line: 1154, baseType: !688, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4131, file: !251, line: 1155, baseType: !688, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4131, file: !251, line: 1161, baseType: !688, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4131, file: !251, line: 1165, baseType: !4138, size: 64, offset: 256)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !251, line: 1162, size: 64, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4138, file: !251, line: 1163, baseType: !684, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4138, file: !251, line: 1164, baseType: !684, size: 32, offset: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4131, file: !251, line: 1166, baseType: !688, size: 64, offset: 320)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4131, file: !251, line: 1167, baseType: !688, size: 64, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4131, file: !251, line: 1171, baseType: !4145, size: 64, offset: 448)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4131, file: !251, line: 1168, size: 64, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4145, file: !251, line: 1169, baseType: !684, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4145, file: !251, line: 1170, baseType: !684, size: 32, offset: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4131, file: !251, line: 1177, baseType: !688, size: 64, offset: 512)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4131, file: !251, line: 1178, baseType: !4151, size: 64, offset: 576)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !251, line: 67, size: 64, elements: !4153)
!4153 = !{!4154, !4155}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4152, file: !251, line: 68, baseType: !689, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4152, file: !251, line: 69, baseType: !4156, offset: 64)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, elements: !1764)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4131, file: !251, line: 1179, baseType: !4158, size: 64, offset: 640)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !251, line: 93, size: 256, elements: !4160)
!4160 = !{!4161, !4177}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4159, file: !251, line: 94, baseType: !4162, size: 224)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !251, line: 83, size: 224, elements: !4163)
!4163 = !{!4164, !4170, !4175, !4176}
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !251, line: 84, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !251, line: 84, size: 64, elements: !4166)
!4166 = !{!4167, !4169}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4165, file: !251, line: 85, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4165, file: !251, line: 86, baseType: !67, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4162, file: !251, line: 88, baseType: !4171, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !251, line: 80, baseType: !4172)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!67, !48, !1462, !67, !67}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4162, file: !251, line: 89, baseType: !48, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4162, file: !251, line: 90, baseType: !684, size: 32, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4159, file: !251, line: 95, baseType: !684, size: 32, offset: 224)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4131, file: !251, line: 1180, baseType: !4179, size: 64, offset: 704)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !251, line: 123, size: 128, elements: !4181)
!4181 = !{!4182, !4183, !4184}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4180, file: !251, line: 124, baseType: !689, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4180, file: !251, line: 125, baseType: !689, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4180, file: !251, line: 126, baseType: !4185, offset: 128)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4186, elements: !1764)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3873, line: 1415, size: 192, elements: !4187)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4186, file: !3873, line: 1416, baseType: !689, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4186, file: !3873, line: 1417, baseType: !689, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4186, file: !3873, line: 1418, baseType: !689, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4186, file: !3873, line: 1419, baseType: !689, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4186, file: !3873, line: 1420, baseType: !689, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4186, file: !3873, line: 1421, baseType: !689, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4186, file: !3873, line: 1422, baseType: !689, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4186, file: !3873, line: 1423, baseType: !689, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4186, file: !3873, line: 1424, baseType: !689, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4186, file: !3873, line: 1425, baseType: !689, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4186, file: !3873, line: 1426, baseType: !689, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4186, file: !3873, line: 1427, baseType: !689, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4131, file: !251, line: 1181, baseType: !4201, size: 64, offset: 768)
!4201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3873, line: 1430, size: 64, elements: !4202)
!4202 = !{!4203, !4204}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4201, file: !3873, line: 1431, baseType: !689, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, scope: !4201, file: !3873, line: 1433, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4201, file: !3873, line: 1433, size: 64, elements: !4206)
!4206 = !{!4207, !4208, !4209}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4205, file: !3873, line: 1434, baseType: !685, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4205, file: !3873, line: 1435, baseType: !122, size: 16, offset: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4205, file: !3873, line: 1436, baseType: !122, size: 16, offset: 48)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4131, file: !251, line: 1182, baseType: !4211, size: 64, offset: 832)
!4211 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3873, line: 1267, size: 64, elements: !4212)
!4212 = !{!4213, !4214}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4211, file: !3873, line: 1268, baseType: !689, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, scope: !4211, file: !3873, line: 1269, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4211, file: !3873, line: 1269, size: 64, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4215, file: !3873, line: 1270, baseType: !689, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4215, file: !3873, line: 1271, baseType: !689, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4215, file: !3873, line: 1272, baseType: !689, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4215, file: !3873, line: 1273, baseType: !689, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4215, file: !3873, line: 1274, baseType: !689, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4215, file: !3873, line: 1275, baseType: !689, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4215, file: !3873, line: 1276, baseType: !689, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4215, file: !3873, line: 1277, baseType: !689, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4215, file: !3873, line: 1278, baseType: !689, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4215, file: !3873, line: 1279, baseType: !689, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4215, file: !3873, line: 1280, baseType: !689, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4131, file: !251, line: 1183, baseType: !688, size: 64, offset: 896)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4131, file: !251, line: 1185, baseType: !4230, size: 128, offset: 960)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4231, line: 7, size: 128, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4230, file: !4231, line: 8, baseType: !689, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4230, file: !4231, line: 9, baseType: !4235, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4237, line: 103, size: 1344, elements: !4238)
!4237 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4267, !4268, !4269}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4236, file: !4237, line: 109, baseType: !67, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4236, file: !4237, line: 110, baseType: !67, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4236, file: !4237, line: 111, baseType: !67, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4236, file: !4237, line: 112, baseType: !67, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4236, file: !4237, line: 113, baseType: !67, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4236, file: !4237, line: 114, baseType: !67, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4236, file: !4237, line: 117, baseType: !67, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4236, file: !4237, line: 118, baseType: !67, size: 64, offset: 448)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4236, file: !4237, line: 119, baseType: !67, size: 64, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4236, file: !4237, line: 120, baseType: !67, size: 64, offset: 576)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4236, file: !4237, line: 121, baseType: !67, size: 64, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4236, file: !4237, line: 122, baseType: !67, size: 64, offset: 704)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4236, file: !4237, line: 123, baseType: !67, size: 64, offset: 768)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4236, file: !4237, line: 124, baseType: !67, size: 64, offset: 832)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4236, file: !4237, line: 125, baseType: !67, size: 64, offset: 896)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4236, file: !4237, line: 139, baseType: !67, size: 64, offset: 960)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4236, file: !4237, line: 142, baseType: !67, size: 64, offset: 1024)
!4256 = !DIDerivedType(tag: DW_TAG_member, scope: !4236, file: !4237, line: 144, baseType: !4257, size: 64, offset: 1088)
!4257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4236, file: !4237, line: 144, size: 64, elements: !4258)
!4258 = !{!4259, !4260, !4261}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4257, file: !4237, line: 146, baseType: !121, size: 16)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4257, file: !4237, line: 148, baseType: !688, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4257, file: !4237, line: 150, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4237, line: 59, size: 64, elements: !4263)
!4263 = !{!4264, !4265, !4266}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4262, file: !4237, line: 61, baseType: !688, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4262, file: !4237, line: 63, baseType: !688, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4262, file: !4237, line: 65, baseType: !688, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4236, file: !4237, line: 153, baseType: !67, size: 64, offset: 1152)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4236, file: !4237, line: 154, baseType: !67, size: 64, offset: 1216)
!4269 = !DIDerivedType(tag: DW_TAG_member, scope: !4236, file: !4237, line: 156, baseType: !4270, size: 64, offset: 1280)
!4270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4236, file: !4237, line: 156, size: 64, elements: !4271)
!4271 = !{!4272, !4273, !4274}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4270, file: !4237, line: 158, baseType: !121, size: 16)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4270, file: !4237, line: 160, baseType: !688, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4270, file: !4237, line: 162, baseType: !4275, size: 64)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4237, line: 69, size: 64, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4275, file: !4237, line: 71, baseType: !688, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4275, file: !4237, line: 73, baseType: !688, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4275, file: !4237, line: 75, baseType: !688, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4275, file: !4237, line: 77, baseType: !688, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4275, file: !4237, line: 80, baseType: !688, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4275, file: !4237, line: 83, baseType: !688, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4275, file: !4237, line: 86, baseType: !688, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4275, file: !4237, line: 88, baseType: !688, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4275, file: !4237, line: 93, baseType: !688, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4275, file: !4237, line: 100, baseType: !688, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4131, file: !251, line: 1186, baseType: !4230, size: 128, offset: 1088)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4131, file: !251, line: 1187, baseType: !688, size: 64, offset: 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4131, file: !251, line: 1189, baseType: !688, size: 64, offset: 1280)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4131, file: !251, line: 1190, baseType: !688, size: 64, offset: 1344)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4131, file: !251, line: 1191, baseType: !688, size: 64, offset: 1408)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4131, file: !251, line: 1192, baseType: !688, size: 64, offset: 1472)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4131, file: !251, line: 1193, baseType: !688, size: 64, offset: 1536)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4131, file: !251, line: 1194, baseType: !688, size: 64, offset: 1600)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4131, file: !251, line: 1195, baseType: !688, size: 64, offset: 1664)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3314, file: !251, line: 812, baseType: !48, size: 64, offset: 8000)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3314, file: !251, line: 820, baseType: !4298, size: 64, offset: 8064)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !142, line: 523, flags: DIFlagFwdDecl)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3314, file: !251, line: 821, baseType: !4301, size: 64, offset: 8128)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !251, line: 821, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3314, file: !251, line: 828, baseType: !4304, size: 64, offset: 8192)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !251, line: 1046, size: 1664, elements: !4306)
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4305, file: !251, line: 1047, baseType: !2039, size: 1600)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4305, file: !251, line: 1048, baseType: !4309, size: 64, offset: 1600)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !251, line: 1039, size: 256, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4310, file: !251, line: 1040, baseType: !688, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4310, file: !251, line: 1041, baseType: !688, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4310, file: !251, line: 1042, baseType: !688, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4310, file: !251, line: 1043, baseType: !50, size: 32, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3314, file: !251, line: 832, baseType: !48, size: 64, offset: 8256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3314, file: !251, line: 834, baseType: !125, size: 128, offset: 8320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3314, file: !251, line: 842, baseType: !685, size: 32, offset: 8448)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3283, file: !3284, line: 461, baseType: !67, size: 64, offset: 704)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3283, file: !3284, line: 463, baseType: !67, size: 64, offset: 768)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3283, file: !3284, line: 465, baseType: !67, size: 64, offset: 832)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3283, file: !3284, line: 466, baseType: !67, size: 64, offset: 896)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3283, file: !3284, line: 467, baseType: !67, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3283, file: !3284, line: 473, baseType: !4325, size: 64, offset: 1024)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3284, line: 10, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3283, file: !3284, line: 480, baseType: !67, size: 64, offset: 1088)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3283, file: !3284, line: 482, baseType: !6, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3283, file: !3284, line: 491, baseType: !684, size: 32, offset: 1184)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3283, file: !3284, line: 501, baseType: !4331, size: 33792, offset: 1536)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4332, line: 448, size: 33792, elements: !4333)
!4332 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4333 = !{!4334, !4335, !4336, !4444, !4445, !4451, !4452}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4331, file: !4332, line: 461, baseType: !6, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4331, file: !4332, line: 468, baseType: !67, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4331, file: !4332, line: 476, baseType: !4337, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4332, line: 356, size: 33280, align: 512, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4338, file: !4332, line: 358, baseType: !6, size: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4338, file: !4332, line: 361, baseType: !6, size: 32, offset: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4338, file: !4332, line: 364, baseType: !688, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4338, file: !4332, line: 367, baseType: !688, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4338, file: !4332, line: 370, baseType: !688, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4338, file: !4332, line: 373, baseType: !6, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4338, file: !4332, line: 376, baseType: !6, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4338, file: !4332, line: 391, baseType: !6, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4338, file: !4332, line: 394, baseType: !6, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4338, file: !4332, line: 397, baseType: !4350, size: 32768, offset: 512)
!4350 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4332, line: 348, size: 32768, elements: !4351)
!4351 = !{!4352, !4367, !4404, !4429, !4442}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4350, file: !4332, line: 349, baseType: !4353, size: 896)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4332, line: 12, size: 896, elements: !4354)
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4366}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4353, file: !4332, line: 13, baseType: !684, size: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4353, file: !4332, line: 14, baseType: !684, size: 32, offset: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4353, file: !4332, line: 15, baseType: !684, size: 32, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4353, file: !4332, line: 16, baseType: !684, size: 32, offset: 96)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4353, file: !4332, line: 17, baseType: !684, size: 32, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4353, file: !4332, line: 18, baseType: !684, size: 32, offset: 160)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4353, file: !4332, line: 19, baseType: !684, size: 32, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4353, file: !4332, line: 22, baseType: !4363, size: 640, offset: 224)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 640, elements: !4364)
!4364 = !{!4365}
!4365 = !DISubrange(count: 20)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4353, file: !4332, line: 25, baseType: !684, size: 32, offset: 864)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4350, file: !4332, line: 350, baseType: !4368, size: 4096, align: 128)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4332, line: 34, size: 4096, align: 128, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4374, !4389, !4390, !4391, !4393, !4395, !4399}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4368, file: !4332, line: 35, baseType: !121, size: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4368, file: !4332, line: 36, baseType: !121, size: 16, offset: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4368, file: !4332, line: 37, baseType: !121, size: 16, offset: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4368, file: !4332, line: 38, baseType: !121, size: 16, offset: 48)
!4374 = !DIDerivedType(tag: DW_TAG_member, scope: !4368, file: !4332, line: 39, baseType: !4375, size: 128, offset: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4368, file: !4332, line: 39, size: 128, elements: !4376)
!4376 = !{!4377, !4382}
!4377 = !DIDerivedType(tag: DW_TAG_member, scope: !4375, file: !4332, line: 40, baseType: !4378, size: 128)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4375, file: !4332, line: 40, size: 128, elements: !4379)
!4379 = !{!4380, !4381}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4378, file: !4332, line: 41, baseType: !688, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4378, file: !4332, line: 42, baseType: !688, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, scope: !4375, file: !4332, line: 44, baseType: !4383, size: 128)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4375, file: !4332, line: 44, size: 128, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4383, file: !4332, line: 45, baseType: !684, size: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4383, file: !4332, line: 46, baseType: !684, size: 32, offset: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4383, file: !4332, line: 47, baseType: !684, size: 32, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4383, file: !4332, line: 48, baseType: !684, size: 32, offset: 96)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4368, file: !4332, line: 51, baseType: !684, size: 32, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4368, file: !4332, line: 52, baseType: !684, size: 32, offset: 224)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4368, file: !4332, line: 55, baseType: !4392, size: 1024, offset: 256)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 1024, elements: !697)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4368, file: !4332, line: 58, baseType: !4394, size: 2048, offset: 1280)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 2048, elements: !547)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4368, file: !4332, line: 60, baseType: !4396, size: 384, offset: 3328)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 384, elements: !4397)
!4397 = !{!4398}
!4398 = !DISubrange(count: 12)
!4399 = !DIDerivedType(tag: DW_TAG_member, scope: !4368, file: !4332, line: 62, baseType: !4400, size: 384, offset: 3712)
!4400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4368, file: !4332, line: 62, size: 384, elements: !4401)
!4401 = !{!4402, !4403}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4400, file: !4332, line: 63, baseType: !4396, size: 384)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4400, file: !4332, line: 64, baseType: !4396, size: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4350, file: !4332, line: 351, baseType: !4405, size: 1088)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4332, line: 79, size: 1088, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4428}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4405, file: !4332, line: 80, baseType: !684, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4405, file: !4332, line: 81, baseType: !684, size: 32, offset: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4405, file: !4332, line: 82, baseType: !684, size: 32, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4405, file: !4332, line: 83, baseType: !684, size: 32, offset: 96)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4405, file: !4332, line: 84, baseType: !684, size: 32, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4405, file: !4332, line: 85, baseType: !684, size: 32, offset: 160)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4405, file: !4332, line: 86, baseType: !684, size: 32, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4405, file: !4332, line: 88, baseType: !4363, size: 640, offset: 224)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4405, file: !4332, line: 89, baseType: !111, size: 8, offset: 864)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4405, file: !4332, line: 90, baseType: !111, size: 8, offset: 872)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4405, file: !4332, line: 91, baseType: !111, size: 8, offset: 880)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4405, file: !4332, line: 92, baseType: !111, size: 8, offset: 888)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4405, file: !4332, line: 93, baseType: !111, size: 8, offset: 896)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4405, file: !4332, line: 94, baseType: !111, size: 8, offset: 904)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4405, file: !4332, line: 95, baseType: !4422, size: 64, offset: 960)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4424, line: 11, size: 128, elements: !4425)
!4424 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4425 = !{!4426, !4427}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4423, file: !4424, line: 12, baseType: !487, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4423, file: !4424, line: 13, baseType: !4235, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4405, file: !4332, line: 96, baseType: !684, size: 32, offset: 1024)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4350, file: !4332, line: 352, baseType: !4430, size: 4608, align: 512)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4332, line: 333, size: 4608, align: 512, elements: !4431)
!4431 = !{!4432, !4433, !4440}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4430, file: !4332, line: 334, baseType: !4368, size: 4096, align: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4430, file: !4332, line: 335, baseType: !4434, size: 512, offset: 4096)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4332, line: 312, size: 512, elements: !4435)
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4434, file: !4332, line: 313, baseType: !688, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4434, file: !4332, line: 314, baseType: !688, size: 64, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4434, file: !4332, line: 315, baseType: !4439, size: 384, offset: 128)
!4439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 384, elements: !1588)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4430, file: !4332, line: 336, baseType: !4441, offset: 4608)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !1764)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4350, file: !4332, line: 353, baseType: !4443, size: 32768)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32768, elements: !2478)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4331, file: !4332, line: 484, baseType: !4337, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4331, file: !4332, line: 491, baseType: !4446, size: 128, offset: 256)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4332, line: 404, size: 128, elements: !4447)
!4447 = !{!4448, !4449, !4450}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4446, file: !4332, line: 424, baseType: !688, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4446, file: !4332, line: 432, baseType: !6, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4446, file: !4332, line: 440, baseType: !6, size: 32, offset: 96)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4331, file: !4332, line: 498, baseType: !4446, size: 128, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4331, file: !4332, line: 508, baseType: !4338, size: 33280, align: 512, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1020, file: !1021, line: 31, baseType: !3811, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1020, file: !1021, line: 32, baseType: !6, size: 32, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1020, file: !1021, line: 33, baseType: !1019, size: 64, offset: 576)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1020, file: !1021, line: 35, baseType: !4457, size: 64, offset: 640)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1021, line: 17, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1020, file: !1021, line: 37, baseType: !1488, size: 64, offset: 704)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1020, file: !1021, line: 38, baseType: !1731, size: 64, offset: 768)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1020, file: !1021, line: 39, baseType: !50, size: 32, offset: 832)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1020, file: !1021, line: 40, baseType: !1521, size: 192, offset: 896)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1020, file: !1021, line: 42, baseType: !50, size: 32, offset: 1088)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !971, file: !149, line: 951, baseType: !259, size: 32, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !971, file: !149, line: 952, baseType: !621, size: 32, offset: 160)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !971, file: !149, line: 952, baseType: !621, size: 32, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !971, file: !149, line: 953, baseType: !50, size: 32, offset: 224)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !942, file: !149, line: 1012, baseType: !1900, size: 64, offset: 896)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !942, file: !149, line: 1013, baseType: !4470, size: 256, offset: 960)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !149, line: 970, size: 256, elements: !4471)
!4471 = !{!4472, !4473, !4474, !4475, !4476, !4477}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4470, file: !149, line: 971, baseType: !67, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4470, file: !149, line: 972, baseType: !6, size: 32, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4470, file: !149, line: 973, baseType: !6, size: 32, offset: 96)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4470, file: !149, line: 974, baseType: !6, size: 32, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4470, file: !149, line: 975, baseType: !6, size: 32, offset: 160)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4470, file: !149, line: 976, baseType: !69, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !942, file: !149, line: 1014, baseType: !4479, size: 128, offset: 1216)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4480, line: 8, size: 128, elements: !4481)
!4480 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4481 = !{!4482, !4483}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4479, file: !4480, line: 9, baseType: !760, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4479, file: !4480, line: 10, baseType: !650, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !942, file: !149, line: 1015, baseType: !615, size: 64, offset: 1344)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !942, file: !149, line: 1016, baseType: !4486, size: 64, offset: 1408)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !149, line: 1914, size: 2112, elements: !4489)
!4489 = !{!4490, !4491, !4495, !4499, !4503, !4531, !4532, !4538, !4551, !4555, !4559, !4560, !4564, !4565, !4569, !4574, !4575, !4579, !4583, !4589, !4590, !4594, !4595, !4599, !4603, !4607, !4612, !4616, !4620, !4624, !4628, !4629, !4635}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4488, file: !149, line: 1915, baseType: !488, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4488, file: !149, line: 1916, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!69, !1355, !69, !50}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4488, file: !149, line: 1917, baseType: !4496, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!574, !1355, !542, !63, !68}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4488, file: !149, line: 1918, baseType: !4500, size: 64, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!574, !1355, !44, !63, !68}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4488, file: !149, line: 1919, baseType: !4504, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!574, !4507, !4529}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !149, line: 373, size: 384, elements: !4509)
!4509 = !{!4510, !4511, !4512, !4516, !4517, !4518, !4519}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4508, file: !149, line: 374, baseType: !1355, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4508, file: !149, line: 375, baseType: !69, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4508, file: !149, line: 376, baseType: !4513, size: 64, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{null, !4507, !487}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4508, file: !149, line: 377, baseType: !48, size: 64, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4508, file: !149, line: 378, baseType: !50, size: 32, offset: 256)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4508, file: !149, line: 379, baseType: !121, size: 16, offset: 288)
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !149, line: 380, baseType: !4520, size: 64, offset: 320)
!4520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4508, file: !149, line: 380, size: 64, elements: !4521)
!4521 = !{!4522, !4525}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4520, file: !149, line: 386, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !149, line: 386, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4520, file: !149, line: 395, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!574, !48}
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !149, line: 69, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4488, file: !149, line: 1920, baseType: !4504, size: 64, offset: 320)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4488, file: !149, line: 1921, baseType: !4533, size: 64, offset: 384)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!50, !4507, !4536, !6}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !149, line: 53, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4488, file: !149, line: 1923, baseType: !4539, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!50, !1355, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !149, line: 1858, size: 128, elements: !4544)
!4544 = !{!4545, !4550}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4543, file: !149, line: 1859, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !149, line: 1855, baseType: !4547)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!1533, !4542, !44, !50, !69, !688, !6}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4543, file: !149, line: 1860, baseType: !69, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4488, file: !149, line: 1924, baseType: !4552, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!2415, !1355, !2417}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4488, file: !149, line: 1925, baseType: !4556, size: 64, offset: 576)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!487, !1355, !6, !67}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4488, file: !149, line: 1926, baseType: !4556, size: 64, offset: 640)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4488, file: !149, line: 1927, baseType: !4561, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!50, !1355, !2121}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4488, file: !149, line: 1928, baseType: !67, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4488, file: !149, line: 1929, baseType: !4566, size: 64, offset: 832)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!50, !615, !1355}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4488, file: !149, line: 1930, baseType: !4570, size: 64, offset: 896)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!50, !1355, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !149, line: 1061, baseType: !48)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4488, file: !149, line: 1931, baseType: !4566, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4488, file: !149, line: 1932, baseType: !4576, size: 64, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!50, !1355, !69, !69, !50}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4488, file: !149, line: 1933, baseType: !4580, size: 64, offset: 1088)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!50, !50, !1355, !50}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4488, file: !149, line: 1934, baseType: !4584, size: 64, offset: 1152)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!50, !1355, !50, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !149, line: 1063, flags: DIFlagFwdDecl)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4488, file: !149, line: 1935, baseType: !1352, size: 64, offset: 1216)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4488, file: !149, line: 1936, baseType: !4591, size: 64, offset: 1280)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!50, !50}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4488, file: !149, line: 1937, baseType: !4584, size: 64, offset: 1344)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4488, file: !149, line: 1938, baseType: !4596, size: 64, offset: 1408)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!574, !3164, !1355, !68, !63, !6}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4488, file: !149, line: 1939, baseType: !4600, size: 64, offset: 1472)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!574, !1355, !68, !3164, !63, !6}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4488, file: !149, line: 1940, baseType: !4604, size: 64, offset: 1536)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !1355}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4488, file: !149, line: 1941, baseType: !4608, size: 64, offset: 1600)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!50, !1355, !50, !4611, !3822}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4488, file: !149, line: 1942, baseType: !4613, size: 64, offset: 1664)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!487, !1355, !50, !69, !69}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4488, file: !149, line: 1944, baseType: !4617, size: 64, offset: 1728)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !885, !1355}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4488, file: !149, line: 1948, baseType: !4621, size: 64, offset: 1792)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!574, !1355, !69, !1355, !69, !63, !6}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4488, file: !149, line: 1950, baseType: !4625, size: 64, offset: 1856)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!69, !1355, !69, !1355, !69, !69, !6}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4488, file: !149, line: 1953, baseType: !4576, size: 64, offset: 1920)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4488, file: !149, line: 1954, baseType: !4630, size: 64, offset: 1984)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!50, !4633, !6}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !149, line: 1911, flags: DIFlagFwdDecl)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4488, file: !149, line: 1955, baseType: !4636, size: 64, offset: 2048)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!50, !4633, !4536, !6}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !942, file: !149, line: 1018, baseType: !688, size: 64, offset: 1472)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !942, file: !149, line: 1020, baseType: !48, size: 64, offset: 1536)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !942, file: !149, line: 1023, baseType: !48, size: 64, offset: 1600)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !942, file: !149, line: 1027, baseType: !4643, size: 64, offset: 1664)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !942, file: !149, line: 1029, baseType: !611, size: 64, offset: 1728)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !942, file: !149, line: 1030, baseType: !4646, size: 32, offset: 1792)
!4646 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4647, line: 8, baseType: !684)
!4647 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !942, file: !149, line: 1031, baseType: !4646, size: 32, offset: 1824)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !886, file: !887, line: 29, baseType: !48, size: 64, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !828, file: !149, line: 2077, baseType: !882, size: 64, offset: 1088)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !828, file: !149, line: 2078, baseType: !882, size: 64, offset: 1152)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !828, file: !149, line: 2079, baseType: !882, size: 64, offset: 1216)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !828, file: !149, line: 2081, baseType: !4654, size: 64, offset: 1280)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!574, !766, !50, !542, !63, !69}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !828, file: !149, line: 2082, baseType: !4658, size: 64, offset: 1344)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!574, !766, !50, !44, !63, !69}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !828, file: !149, line: 2083, baseType: !4662, size: 64, offset: 1408)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!4665, !615}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !154, line: 296, size: 1664, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4693, !4694, !4695}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4667, file: !154, line: 297, baseType: !808, size: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4667, file: !154, line: 298, baseType: !125, size: 128, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4667, file: !154, line: 299, baseType: !125, size: 128, offset: 256)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4667, file: !154, line: 300, baseType: !125, size: 128, offset: 384)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4667, file: !154, line: 301, baseType: !897, size: 256, offset: 512)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4667, file: !154, line: 302, baseType: !87, size: 32, offset: 768)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4667, file: !154, line: 303, baseType: !77, size: 32, offset: 800)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4667, file: !154, line: 304, baseType: !766, size: 64, offset: 832)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4667, file: !154, line: 305, baseType: !4678, size: 64, offset: 896)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !154, line: 68, size: 64, elements: !4679)
!4679 = !{!4680, !4692}
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4678, file: !154, line: 69, baseType: !4681, size: 32)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4678, file: !154, line: 69, size: 32, elements: !4682)
!4682 = !{!4683, !4684, !4685}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4681, file: !154, line: 70, baseType: !621, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4681, file: !154, line: 71, baseType: !630, size: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4681, file: !154, line: 72, baseType: !4686, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4687, line: 24, baseType: !4688)
!4687 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4687, line: 22, size: 32, elements: !4689)
!4689 = !{!4690}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4688, file: !4687, line: 23, baseType: !4691, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4687, line: 20, baseType: !627)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4678, file: !154, line: 74, baseType: !153, size: 32, offset: 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4667, file: !154, line: 306, baseType: !69, size: 64, offset: 960)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4667, file: !154, line: 307, baseType: !67, size: 64, offset: 1024)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4667, file: !154, line: 308, baseType: !4696, size: 576, offset: 1088)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !154, line: 205, size: 576, elements: !4697)
!4697 = !{!4698, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4696, file: !154, line: 206, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !154, line: 66, baseType: !71)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4696, file: !154, line: 207, baseType: !4699, size: 64, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4696, file: !154, line: 208, baseType: !4699, size: 64, offset: 128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4696, file: !154, line: 209, baseType: !4699, size: 64, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4696, file: !154, line: 210, baseType: !4699, size: 64, offset: 256)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4696, file: !154, line: 211, baseType: !4699, size: 64, offset: 320)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4696, file: !154, line: 212, baseType: !4699, size: 64, offset: 384)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4696, file: !154, line: 213, baseType: !1559, size: 64, offset: 448)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4696, file: !154, line: 214, baseType: !1559, size: 64, offset: 512)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !828, file: !149, line: 2085, baseType: !4709, size: 64, offset: 1472)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!487, !766, !4712}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4714, line: 15, size: 256, elements: !4715)
!4714 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4715 = !{!4716, !4717, !4718, !4719, !4720}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4713, file: !4714, line: 16, baseType: !1033, size: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4713, file: !4714, line: 19, baseType: !50, size: 32, offset: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4713, file: !4714, line: 26, baseType: !67, size: 64, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4713, file: !4714, line: 33, baseType: !67, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4713, file: !4714, line: 36, baseType: !4721, size: 64, offset: 192)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !160, line: 33, flags: DIFlagFwdDecl)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !828, file: !149, line: 2087, baseType: !4709, size: 64, offset: 1536)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !828, file: !149, line: 2089, baseType: !798, size: 64, offset: 1600)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !767, file: !149, line: 1198, baseType: !4726, size: 64, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4728)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !154, line: 324, size: 704, elements: !4729)
!4729 = !{!4730, !4734, !4738, !4742, !4743, !4744, !4745, !4746, !4751, !4756, !4760}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4728, file: !154, line: 325, baseType: !4731, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!50, !4666}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4728, file: !154, line: 326, baseType: !4735, size: 64, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!4666, !766, !50}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4728, file: !154, line: 327, baseType: !4739, size: 64, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !4666}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4728, file: !154, line: 328, baseType: !4731, size: 64, offset: 192)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4728, file: !154, line: 329, baseType: !4731, size: 64, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4728, file: !154, line: 330, baseType: !4731, size: 64, offset: 320)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4728, file: !154, line: 331, baseType: !856, size: 64, offset: 384)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4728, file: !154, line: 334, baseType: !4747, size: 64, offset: 448)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!4750, !615}
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4728, file: !154, line: 335, baseType: !4752, size: 64, offset: 512)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!50, !615, !4755}
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4728, file: !154, line: 337, baseType: !4757, size: 64, offset: 576)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!50, !615, !4750}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4728, file: !154, line: 339, baseType: !4761, size: 64, offset: 640)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!50, !766, !4764}
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !767, file: !149, line: 1199, baseType: !4766, size: 64, offset: 512)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4768)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !154, line: 430, size: 704, elements: !4769)
!4769 = !{!4770, !4776, !4777, !4781, !4782, !4783, !4798, !4821, !4825, !4826, !4849}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4768, file: !154, line: 431, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!50, !766, !50, !50, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4479)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4768, file: !154, line: 432, baseType: !856, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4768, file: !154, line: 433, baseType: !4778, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!50, !766, !6}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4768, file: !154, line: 434, baseType: !4778, size: 64, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4768, file: !154, line: 435, baseType: !856, size: 64, offset: 256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4768, file: !154, line: 436, baseType: !4784, size: 64, offset: 320)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!50, !766, !50, !4787}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !154, line: 417, size: 256, elements: !4789)
!4789 = !{!4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4788, file: !154, line: 418, baseType: !50, size: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4788, file: !154, line: 419, baseType: !6, size: 32, offset: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4788, file: !154, line: 420, baseType: !6, size: 32, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4788, file: !154, line: 422, baseType: !6, size: 32, offset: 96)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4788, file: !154, line: 423, baseType: !6, size: 32, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4788, file: !154, line: 424, baseType: !6, size: 32, offset: 160)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4788, file: !154, line: 425, baseType: !6, size: 32, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4788, file: !154, line: 426, baseType: !6, size: 32, offset: 224)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4768, file: !154, line: 437, baseType: !4799, size: 64, offset: 384)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!50, !766, !4678, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !154, line: 345, size: 960, elements: !4804)
!4804 = !{!4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4803, file: !154, line: 346, baseType: !50, size: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4803, file: !154, line: 347, baseType: !688, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4803, file: !154, line: 348, baseType: !688, size: 64, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4803, file: !154, line: 349, baseType: !688, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4803, file: !154, line: 350, baseType: !688, size: 64, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4803, file: !154, line: 351, baseType: !688, size: 64, offset: 320)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4803, file: !154, line: 352, baseType: !688, size: 64, offset: 384)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4803, file: !154, line: 353, baseType: !907, size: 64, offset: 448)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4803, file: !154, line: 355, baseType: !907, size: 64, offset: 512)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4803, file: !154, line: 356, baseType: !50, size: 32, offset: 576)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4803, file: !154, line: 357, baseType: !50, size: 32, offset: 608)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4803, file: !154, line: 358, baseType: !688, size: 64, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4803, file: !154, line: 359, baseType: !688, size: 64, offset: 704)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4803, file: !154, line: 360, baseType: !688, size: 64, offset: 768)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4803, file: !154, line: 361, baseType: !907, size: 64, offset: 832)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4803, file: !154, line: 362, baseType: !50, size: 32, offset: 896)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4768, file: !154, line: 438, baseType: !4822, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!50, !766, !4764, !4802}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4768, file: !154, line: 440, baseType: !4799, size: 64, offset: 512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4768, file: !154, line: 441, baseType: !4827, size: 64, offset: 576)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!50, !766, !4830}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !154, line: 411, size: 1408, elements: !4832)
!4832 = !{!4833, !4834}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4831, file: !154, line: 412, baseType: !6, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4831, file: !154, line: 413, baseType: !4835, size: 1344, offset: 64)
!4835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4836, size: 1344, elements: !543)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !154, line: 397, size: 448, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4848}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4836, file: !154, line: 398, baseType: !6, size: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4836, file: !154, line: 399, baseType: !6, size: 32, offset: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4836, file: !154, line: 401, baseType: !6, size: 32, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4836, file: !154, line: 402, baseType: !6, size: 32, offset: 96)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4836, file: !154, line: 403, baseType: !6, size: 32, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4836, file: !154, line: 404, baseType: !6, size: 32, offset: 160)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4836, file: !154, line: 405, baseType: !6, size: 32, offset: 192)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4836, file: !154, line: 406, baseType: !690, size: 64, offset: 256)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4836, file: !154, line: 407, baseType: !4847, size: 64, offset: 320)
!4847 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !53, line: 132, baseType: !688)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4836, file: !154, line: 408, baseType: !4847, size: 64, offset: 384)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4768, file: !154, line: 442, baseType: !4778, size: 64, offset: 640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !767, file: !149, line: 1200, baseType: !4851, size: 64, offset: 576)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4853)
!4853 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !149, line: 54, flags: DIFlagFwdDecl)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !767, file: !149, line: 1201, baseType: !67, size: 64, offset: 640)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !767, file: !149, line: 1202, baseType: !67, size: 64, offset: 704)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !767, file: !149, line: 1203, baseType: !67, size: 64, offset: 768)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !767, file: !149, line: 1204, baseType: !650, size: 64, offset: 832)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !767, file: !149, line: 1205, baseType: !1383, size: 320, offset: 896)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !767, file: !149, line: 1206, baseType: !50, size: 32, offset: 1216)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !767, file: !149, line: 1207, baseType: !77, size: 32, offset: 1248)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !767, file: !149, line: 1209, baseType: !48, size: 64, offset: 1280)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !767, file: !149, line: 1211, baseType: !4863, size: 64, offset: 1344)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4866)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !149, line: 1211, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !767, file: !149, line: 1223, baseType: !4868, size: 64, offset: 1408)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !667, line: 34, size: 64, elements: !4869)
!4869 = !{!4870}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4868, file: !667, line: 35, baseType: !670, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !767, file: !149, line: 1224, baseType: !125, size: 128, offset: 1472)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !767, file: !149, line: 1225, baseType: !4873, size: 64, offset: 1600)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !149, line: 1225, flags: DIFlagFwdDecl)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !767, file: !149, line: 1226, baseType: !4876, size: 64, offset: 1664)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !149, line: 1226, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !767, file: !149, line: 1227, baseType: !4879, size: 64, offset: 1728)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !149, line: 50, flags: DIFlagFwdDecl)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !767, file: !149, line: 1228, baseType: !4882, size: 64, offset: 1792)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !149, line: 1228, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !767, file: !149, line: 1229, baseType: !808, size: 128, offset: 1856)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !767, file: !149, line: 1230, baseType: !6, size: 32, offset: 1984)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !767, file: !149, line: 1231, baseType: !4887, size: 2496, offset: 2048)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !154, line: 521, size: 2496, elements: !4888)
!4888 = !{!4889, !4890, !4891, !4893, !4925}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4887, file: !154, line: 522, baseType: !6, size: 32)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4887, file: !154, line: 523, baseType: !1383, size: 320, offset: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4887, file: !154, line: 524, baseType: !4892, size: 192, offset: 384)
!4892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 192, elements: !543)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4887, file: !154, line: 525, baseType: !4894, size: 1728, offset: 576)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4895, size: 1728, elements: !543)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !154, line: 222, size: 576, elements: !4896)
!4896 = !{!4897, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4895, file: !154, line: 223, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !154, line: 445, size: 256, elements: !4900)
!4900 = !{!4901, !4902, !4915, !4916}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4899, file: !154, line: 446, baseType: !50, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4899, file: !154, line: 447, baseType: !4903, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4905)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !154, line: 312, size: 512, elements: !4906)
!4906 = !{!4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4905, file: !154, line: 313, baseType: !856, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4905, file: !154, line: 314, baseType: !856, size: 64, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4905, file: !154, line: 315, baseType: !856, size: 64, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4905, file: !154, line: 316, baseType: !856, size: 64, offset: 192)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4905, file: !154, line: 317, baseType: !4731, size: 64, offset: 256)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4905, file: !154, line: 318, baseType: !4731, size: 64, offset: 320)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4905, file: !154, line: 319, baseType: !4731, size: 64, offset: 384)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4905, file: !154, line: 320, baseType: !4761, size: 64, offset: 448)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4899, file: !154, line: 448, baseType: !488, size: 64, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4899, file: !154, line: 449, baseType: !4898, size: 64, offset: 192)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4895, file: !154, line: 224, baseType: !50, size: 32, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4895, file: !154, line: 226, baseType: !125, size: 128, offset: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4895, file: !154, line: 227, baseType: !67, size: 64, offset: 256)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4895, file: !154, line: 228, baseType: !6, size: 32, offset: 320)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4895, file: !154, line: 229, baseType: !6, size: 32, offset: 352)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4895, file: !154, line: 230, baseType: !4699, size: 64, offset: 384)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4895, file: !154, line: 231, baseType: !4699, size: 64, offset: 448)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4895, file: !154, line: 232, baseType: !48, size: 64, offset: 512)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4887, file: !154, line: 526, baseType: !4926, size: 192, offset: 2304)
!4926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4903, size: 192, elements: !543)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !767, file: !149, line: 1233, baseType: !4928, size: 2368, offset: 4544)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !149, line: 1184, size: 2368, elements: !4929)
!4929 = !{!4930, !4931, !4932}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4928, file: !149, line: 1185, baseType: !54, size: 16)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4928, file: !149, line: 1186, baseType: !54, size: 16, offset: 16)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4928, file: !149, line: 1187, baseType: !4933, size: 2304, offset: 64)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4934, size: 2304, elements: !543)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4935, line: 12, size: 768, elements: !4936)
!4935 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4936 = !{!4937, !4945, !4947, !4948, !4949}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4934, file: !4935, line: 13, baseType: !4938, size: 384)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4939, line: 17, size: 384, elements: !4940)
!4939 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4940 = !{!4941, !4942, !4943, !4944}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4938, file: !4939, line: 18, baseType: !50, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4938, file: !4939, line: 19, baseType: !50, size: 32, offset: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4938, file: !4939, line: 20, baseType: !82, size: 192, offset: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4938, file: !4939, line: 22, baseType: !954, size: 128, align: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4934, file: !4935, line: 14, baseType: !4946, size: 64, offset: 384)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4934, file: !4935, line: 15, baseType: !4094, size: 64, offset: 448)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4934, file: !4935, line: 16, baseType: !82, size: 192, offset: 512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4934, file: !4935, line: 17, baseType: !77, size: 32, offset: 704)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !767, file: !149, line: 1240, baseType: !48, size: 64, offset: 6912)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !767, file: !149, line: 1243, baseType: !684, size: 32, offset: 6976)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !767, file: !149, line: 1245, baseType: !1559, size: 64, offset: 7040)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !767, file: !149, line: 1246, baseType: !1559, size: 64, offset: 7104)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !767, file: !149, line: 1248, baseType: !685, size: 32, offset: 7168)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !767, file: !149, line: 1249, baseType: !4956, size: 64, offset: 7232)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !149, line: 634, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !767, file: !149, line: 1252, baseType: !2827, size: 256, offset: 7296)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !767, file: !149, line: 1253, baseType: !4960, size: 128, offset: 7552)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4961, line: 21, baseType: !4962)
!4961 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4961, line: 19, size: 128, elements: !4963)
!4963 = !{!4964}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4962, file: !4961, line: 20, baseType: !3441, size: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !767, file: !149, line: 1255, baseType: !6, size: 32, offset: 7680)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !767, file: !149, line: 1261, baseType: !897, size: 256, offset: 7744)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !767, file: !149, line: 1267, baseType: !44, size: 64, offset: 8000)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !767, file: !149, line: 1269, baseType: !713, size: 64, offset: 8064)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !767, file: !149, line: 1271, baseType: !4970, size: 448, offset: 8128)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4714, line: 63, size: 448, elements: !4971)
!4971 = !{!4972, !4977, !4978, !4979, !4980, !4981, !4982}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4970, file: !4714, line: 64, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!67, !4976, !4712}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4970, file: !4714, line: 66, baseType: !4973, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4970, file: !4714, line: 69, baseType: !487, size: 64, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4970, file: !4714, line: 70, baseType: !50, size: 32, offset: 192)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4970, file: !4714, line: 71, baseType: !6, size: 32, offset: 224)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4970, file: !4714, line: 74, baseType: !125, size: 128, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4970, file: !4714, line: 85, baseType: !4983, size: 64, offset: 384)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !767, file: !149, line: 1274, baseType: !901, size: 64, offset: 8576)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !767, file: !149, line: 1280, baseType: !901, size: 64, offset: 8640)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !767, file: !149, line: 1283, baseType: !50, size: 32, offset: 8704)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !767, file: !149, line: 1286, baseType: !4646, size: 32, offset: 8736)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !767, file: !149, line: 1289, baseType: !2657, size: 64, offset: 8768)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !767, file: !149, line: 1290, baseType: !804, size: 64, offset: 8832)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !767, file: !149, line: 1297, baseType: !1488, size: 64, offset: 8896)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !767, file: !149, line: 1304, baseType: !4992, size: 64, offset: 8960)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4993, line: 49, size: 64, elements: !4994)
!4993 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4994 = !{!4995}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4992, file: !4993, line: 50, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4993, line: 41, size: 512, align: 512, elements: !4998)
!4998 = !{!4999, !5000, !5005}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4997, file: !4993, line: 43, baseType: !87, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4997, file: !4993, line: 45, baseType: !5001, size: 192, offset: 64)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4993, line: 29, size: 192, elements: !5002)
!5002 = !{!5003, !5004}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5001, file: !4993, line: 30, baseType: !125, size: 128)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5001, file: !4993, line: 32, baseType: !487, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4997, file: !4993, line: 46, baseType: !487, size: 64, offset: 256)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !767, file: !149, line: 1305, baseType: !4992, size: 64, offset: 9024)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !767, file: !149, line: 1306, baseType: !954, size: 128, align: 64, offset: 9088)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !767, file: !149, line: 1307, baseType: !1648, size: 256, offset: 9216)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !767, file: !149, line: 1309, baseType: !897, size: 256, offset: 9472)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !767, file: !149, line: 1314, baseType: !50, size: 32, offset: 9728)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !767, file: !149, line: 1317, baseType: !87, size: 32, align: 512, offset: 10240)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !767, file: !149, line: 1318, baseType: !125, size: 128, offset: 10304)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !767, file: !149, line: 1320, baseType: !87, size: 32, offset: 10432)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !767, file: !149, line: 1321, baseType: !125, size: 128, offset: 10496)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !761, file: !762, line: 73, baseType: !50, size: 32, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !761, file: !762, line: 74, baseType: !5017, size: 64, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1917, line: 42, flags: DIFlagFwdDecl)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !715, file: !652, line: 141, baseType: !5021, size: 64, offset: 704)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!50, !4774, !1533}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !715, file: !652, line: 142, baseType: !5025, size: 64, offset: 768)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!650, !650, !5028}
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !651, file: !652, line: 96, baseType: !766, size: 64, offset: 832)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !651, file: !652, line: 97, baseType: !67, size: 64, offset: 896)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !651, file: !652, line: 98, baseType: !48, size: 64, offset: 960)
!5033 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 100, baseType: !5034, size: 128, offset: 1024)
!5034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 100, size: 128, elements: !5035)
!5035 = !{!5036, !5037}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5034, file: !652, line: 101, baseType: !125, size: 128)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5034, file: !652, line: 102, baseType: !5038, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !651, file: !652, line: 104, baseType: !125, size: 128, offset: 1152)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !651, file: !652, line: 105, baseType: !125, size: 128, offset: 1280)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !651, file: !652, line: 113, baseType: !5042, size: 128, offset: 1408)
!5042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 109, size: 128, elements: !5043)
!5043 = !{!5044, !5045, !5046}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5042, file: !652, line: 110, baseType: !808, size: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5042, file: !652, line: 111, baseType: !666, size: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5042, file: !652, line: 112, baseType: !954, size: 128, align: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !644, file: !149, line: 1968, baseType: !5048, size: 64, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!44, !650, !615, !5051}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5053, line: 10, size: 128, elements: !5054)
!5053 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5054 = !{!5055, !5056}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5052, file: !5053, line: 11, baseType: !3693, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5052, file: !5053, line: 12, baseType: !48, size: 64, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !644, file: !149, line: 1969, baseType: !5058, size: 64, offset: 128)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!50, !5017, !615, !50}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !644, file: !149, line: 1970, baseType: !5062, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!638, !615, !50, !1533}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !644, file: !149, line: 1972, baseType: !5066, size: 64, offset: 256)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!50, !650, !542, !50}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !644, file: !149, line: 1974, baseType: !5070, size: 64, offset: 320)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!50, !5017, !615, !650, !52, !1533}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !644, file: !149, line: 1976, baseType: !5074, size: 64, offset: 384)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!50, !650, !615, !650}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !644, file: !149, line: 1977, baseType: !5078, size: 64, offset: 448)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!50, !615, !650}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !644, file: !149, line: 1978, baseType: !5082, size: 64, offset: 512)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!50, !5017, !615, !650, !44}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !644, file: !149, line: 1980, baseType: !5086, size: 64, offset: 576)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!50, !5017, !615, !650, !52}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !644, file: !149, line: 1982, baseType: !5078, size: 64, offset: 640)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !644, file: !149, line: 1983, baseType: !5091, size: 64, offset: 704)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!50, !5017, !615, !650, !52, !771}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !644, file: !149, line: 1985, baseType: !5095, size: 64, offset: 768)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!50, !5017, !615, !650, !615, !650, !6}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !644, file: !149, line: 1987, baseType: !5099, size: 64, offset: 832)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!50, !5017, !650, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !149, line: 226, size: 640, elements: !5104)
!5104 = !{!5105, !5106, !5107, !5117, !5126, !5127, !5132, !5133, !5134}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5103, file: !149, line: 227, baseType: !6, size: 32)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5103, file: !149, line: 228, baseType: !52, size: 16, offset: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, scope: !5103, file: !149, line: 241, baseType: !5108, size: 32, offset: 64)
!5108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5103, file: !149, line: 241, size: 32, elements: !5109)
!5109 = !{!5110, !5111}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5108, file: !149, line: 242, baseType: !621, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5108, file: !149, line: 243, baseType: !5112, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5113, line: 16, baseType: !5114)
!5113 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5113, line: 14, size: 32, elements: !5115)
!5115 = !{!5116}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5114, file: !5113, line: 15, baseType: !626, size: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, scope: !5103, file: !149, line: 245, baseType: !5118, size: 32, offset: 96)
!5118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5103, file: !149, line: 245, size: 32, elements: !5119)
!5119 = !{!5120, !5121}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5118, file: !149, line: 246, baseType: !630, size: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5118, file: !149, line: 247, baseType: !5122, size: 32)
!5122 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5113, line: 20, baseType: !5123)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5113, line: 18, size: 32, elements: !5124)
!5124 = !{!5125}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5123, file: !5113, line: 19, baseType: !634, size: 32)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5103, file: !149, line: 249, baseType: !69, size: 64, offset: 128)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5103, file: !149, line: 250, baseType: !5128, size: 128, offset: 192)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1560, line: 13, size: 128, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5128, file: !1560, line: 14, baseType: !1559, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5128, file: !1560, line: 15, baseType: !487, size: 64, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5103, file: !149, line: 251, baseType: !5128, size: 128, offset: 320)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5103, file: !149, line: 252, baseType: !5128, size: 128, offset: 448)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5103, file: !149, line: 259, baseType: !1355, size: 64, offset: 576)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !644, file: !149, line: 1988, baseType: !5136, size: 64, offset: 896)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!50, !5017, !4774, !5139, !684, !6}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5141, line: 22, size: 1280, elements: !5142)
!5141 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5142 = !{!5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5140, file: !5141, line: 23, baseType: !684, size: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5140, file: !5141, line: 24, baseType: !52, size: 16, offset: 32)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5140, file: !5141, line: 25, baseType: !6, size: 32, offset: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5140, file: !5141, line: 26, baseType: !1567, size: 32, offset: 96)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5140, file: !5141, line: 27, baseType: !688, size: 64, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5140, file: !5141, line: 28, baseType: !688, size: 64, offset: 192)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5140, file: !5141, line: 41, baseType: !688, size: 64, offset: 256)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5140, file: !5141, line: 42, baseType: !771, size: 32, offset: 320)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5140, file: !5141, line: 43, baseType: !771, size: 32, offset: 352)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5140, file: !5141, line: 44, baseType: !621, size: 32, offset: 384)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5140, file: !5141, line: 45, baseType: !630, size: 32, offset: 416)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5140, file: !5141, line: 46, baseType: !69, size: 64, offset: 448)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5140, file: !5141, line: 47, baseType: !5128, size: 128, offset: 512)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5140, file: !5141, line: 48, baseType: !5128, size: 128, offset: 640)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5140, file: !5141, line: 49, baseType: !5128, size: 128, offset: 768)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5140, file: !5141, line: 50, baseType: !5128, size: 128, offset: 896)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5140, file: !5141, line: 51, baseType: !688, size: 64, offset: 1024)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5140, file: !5141, line: 52, baseType: !688, size: 64, offset: 1088)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5140, file: !5141, line: 53, baseType: !684, size: 32, offset: 1152)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5140, file: !5141, line: 54, baseType: !684, size: 32, offset: 1184)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5140, file: !5141, line: 55, baseType: !688, size: 64, offset: 1216)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !644, file: !149, line: 1990, baseType: !5165, size: 64, offset: 960)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!574, !650, !542, !63}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !644, file: !149, line: 1991, baseType: !5169, size: 64, offset: 1024)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!50, !615, !5172, !688, !688}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !149, line: 55, flags: DIFlagFwdDecl)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !644, file: !149, line: 1993, baseType: !5175, size: 64, offset: 1088)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!50, !615, !50}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !644, file: !149, line: 1994, baseType: !5179, size: 64, offset: 1152)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!50, !615, !650, !1355, !6, !52}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !644, file: !149, line: 1997, baseType: !5183, size: 64, offset: 1216)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!50, !5017, !615, !1355, !52}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !644, file: !149, line: 1999, baseType: !5187, size: 64, offset: 1280)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!638, !5017, !650, !50}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !644, file: !149, line: 2001, baseType: !5191, size: 64, offset: 1344)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!50, !5017, !650, !638, !50}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !644, file: !149, line: 2003, baseType: !5195, size: 64, offset: 1408)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!50, !5017, !650, !5198}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !149, line: 76, flags: DIFlagFwdDecl)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !644, file: !149, line: 2005, baseType: !5201, size: 64, offset: 1472)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!50, !650, !5198}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !644, file: !149, line: 2006, baseType: !5205, size: 64, offset: 1536)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!5208, !615}
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !149, line: 3192, size: 192, elements: !5210)
!5210 = !{!5211, !5212}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5209, file: !149, line: 3193, baseType: !1028, size: 128)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5209, file: !149, line: 3194, baseType: !684, size: 32, offset: 128)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !616, file: !149, line: 655, baseType: !766, size: 64, offset: 448)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !616, file: !149, line: 656, baseType: !611, size: 64, offset: 512)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !616, file: !149, line: 659, baseType: !48, size: 64, offset: 576)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !616, file: !149, line: 663, baseType: !67, size: 64, offset: 640)
!5217 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !149, line: 671, baseType: !5218, size: 32, offset: 704)
!5218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !149, line: 671, size: 32, elements: !5219)
!5219 = !{!5220, !5222}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5218, file: !149, line: 672, baseType: !5221, size: 32)
!5221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5218, file: !149, line: 673, baseType: !6, size: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !616, file: !149, line: 675, baseType: !771, size: 32, offset: 736)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !616, file: !149, line: 676, baseType: !69, size: 64, offset: 768)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !616, file: !149, line: 677, baseType: !5128, size: 128, offset: 832)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !616, file: !149, line: 678, baseType: !5128, size: 128, offset: 960)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !616, file: !149, line: 679, baseType: !5128, size: 128, offset: 1088)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !616, file: !149, line: 680, baseType: !87, size: 32, offset: 1216)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !616, file: !149, line: 681, baseType: !54, size: 16, offset: 1248)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !616, file: !149, line: 682, baseType: !111, size: 8, offset: 1264)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !616, file: !149, line: 683, baseType: !111, size: 8, offset: 1272)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !616, file: !149, line: 684, baseType: !4847, size: 64, offset: 1280)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !616, file: !149, line: 691, baseType: !67, size: 64, offset: 1344)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !616, file: !149, line: 692, baseType: !1383, size: 320, offset: 1408)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !616, file: !149, line: 694, baseType: !67, size: 64, offset: 1728)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !616, file: !149, line: 695, baseType: !67, size: 64, offset: 1792)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !616, file: !149, line: 697, baseType: !808, size: 128, offset: 1856)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !616, file: !149, line: 698, baseType: !125, size: 128, offset: 1984)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !616, file: !149, line: 707, baseType: !125, size: 128, offset: 2112)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !616, file: !149, line: 708, baseType: !125, size: 128, offset: 2240)
!5241 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !149, line: 709, baseType: !5242, size: 128, offset: 2368)
!5242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !149, line: 709, size: 128, elements: !5243)
!5243 = !{!5244, !5245}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5242, file: !149, line: 710, baseType: !804, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5242, file: !149, line: 711, baseType: !954, size: 128, align: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !616, file: !149, line: 713, baseType: !903, size: 64, offset: 2496)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !616, file: !149, line: 714, baseType: !903, size: 64, offset: 2560)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !616, file: !149, line: 715, baseType: !77, size: 32, offset: 2624)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !616, file: !149, line: 716, baseType: !77, size: 32, offset: 2656)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !616, file: !149, line: 717, baseType: !77, size: 32, offset: 2688)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !616, file: !149, line: 719, baseType: !77, size: 32, offset: 2720)
!5252 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !149, line: 721, baseType: !5253, size: 64, offset: 2752)
!5253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !149, line: 721, size: 64, elements: !5254)
!5254 = !{!5255, !5256}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5253, file: !149, line: 722, baseType: !4486, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5253, file: !149, line: 723, baseType: !835, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !616, file: !149, line: 725, baseType: !5258, size: 64, offset: 2816)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !149, line: 725, flags: DIFlagFwdDecl)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !616, file: !149, line: 726, baseType: !612, size: 1536, align: 64, offset: 2880)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !616, file: !149, line: 727, baseType: !125, size: 128, offset: 4416)
!5262 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !149, line: 728, baseType: !5263, size: 64, offset: 4544)
!5263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !149, line: 728, size: 64, elements: !5264)
!5264 = !{!5265, !5266, !5269, !5270}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5263, file: !149, line: 729, baseType: !3164, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5263, file: !149, line: 730, baseType: !5267, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !149, line: 730, flags: DIFlagFwdDecl)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5263, file: !149, line: 731, baseType: !542, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5263, file: !149, line: 732, baseType: !6, size: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !616, file: !149, line: 735, baseType: !685, size: 32, offset: 4608)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !616, file: !149, line: 738, baseType: !685, size: 32, offset: 4640)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !616, file: !149, line: 739, baseType: !4956, size: 64, offset: 4672)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !616, file: !149, line: 750, baseType: !48, size: 64, offset: 4736)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !612, file: !149, line: 474, baseType: !1028, size: 128, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !612, file: !149, line: 475, baseType: !1383, size: 320, offset: 192)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !612, file: !149, line: 476, baseType: !1033, size: 32, offset: 512)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !612, file: !149, line: 477, baseType: !77, size: 32, offset: 544)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !612, file: !149, line: 482, baseType: !1218, size: 128, offset: 576)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !612, file: !149, line: 483, baseType: !67, size: 64, offset: 704)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !612, file: !149, line: 484, baseType: !67, size: 64, offset: 768)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !612, file: !149, line: 485, baseType: !5283, size: 64, offset: 832)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5285)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !149, line: 404, size: 1280, elements: !5286)
!5286 = !{!5287, !5291, !5361, !5365, !5369, !5375, !5380, !5384, !5389, !5393, !5397, !5401, !5402, !5406, !5410, !5414, !5419, !5423, !5430, !5431}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5285, file: !149, line: 405, baseType: !5288, size: 64)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!50, !2228, !847}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5285, file: !149, line: 406, baseType: !5292, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!50, !1355, !5295}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !160, line: 293, size: 1536, elements: !5297)
!5297 = !{!5298, !5328, !5342}
!5298 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !160, line: 295, baseType: !5299, size: 512)
!5299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5296, file: !160, line: 295, size: 512, elements: !5300)
!5300 = !{!5301, !5327}
!5301 = !DIDerivedType(tag: DW_TAG_member, scope: !5299, file: !160, line: 296, baseType: !5302, size: 448)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5299, file: !160, line: 296, size: 448, elements: !5303)
!5303 = !{!5304, !5305, !5314, !5315, !5316, !5325, !5326}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5302, file: !160, line: 298, baseType: !67, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, scope: !5302, file: !160, line: 299, baseType: !5306, size: 128, offset: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5302, file: !160, line: 299, size: 128, elements: !5307)
!5307 = !{!5308, !5309}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5306, file: !160, line: 300, baseType: !125, size: 128)
!5309 = !DIDerivedType(tag: DW_TAG_member, scope: !5306, file: !160, line: 302, baseType: !5310, size: 128)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5306, file: !160, line: 302, size: 128, elements: !5311)
!5311 = !{!5312, !5313}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5310, file: !160, line: 303, baseType: !48, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5310, file: !160, line: 305, baseType: !6, size: 32, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5302, file: !160, line: 310, baseType: !611, size: 64, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5302, file: !160, line: 311, baseType: !67, size: 64, offset: 256)
!5316 = !DIDerivedType(tag: DW_TAG_member, scope: !5302, file: !160, line: 312, baseType: !5317, size: 64, offset: 320)
!5317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5302, file: !160, line: 312, size: 64, elements: !5318)
!5318 = !{!5319, !5320}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5317, file: !160, line: 313, baseType: !48, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5317, file: !160, line: 314, baseType: !5321, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !160, line: 257, baseType: !5322)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 255, size: 64, elements: !5323)
!5323 = !{!5324}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5322, file: !160, line: 256, baseType: !67, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5302, file: !160, line: 316, baseType: !77, size: 32, offset: 384)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5302, file: !160, line: 317, baseType: !77, size: 32, offset: 416)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5299, file: !160, line: 323, baseType: !2229, size: 512, align: 128)
!5328 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !160, line: 325, baseType: !5329, size: 512, offset: 512)
!5329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5296, file: !160, line: 325, size: 512, elements: !5330)
!5330 = !{!5331, !5341}
!5331 = !DIDerivedType(tag: DW_TAG_member, scope: !5329, file: !160, line: 326, baseType: !5332, size: 320)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5329, file: !160, line: 326, size: 320, elements: !5333)
!5333 = !{!5334, !5335, !5336, !5337, !5338, !5339, !5340}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5332, file: !160, line: 327, baseType: !67, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5332, file: !160, line: 328, baseType: !67, size: 64, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5332, file: !160, line: 329, baseType: !67, size: 64, offset: 128)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5332, file: !160, line: 331, baseType: !77, size: 32, offset: 192)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5332, file: !160, line: 332, baseType: !77, size: 32, offset: 224)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5332, file: !160, line: 333, baseType: !77, size: 32, offset: 256)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5332, file: !160, line: 335, baseType: !6, size: 32, offset: 288)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5329, file: !160, line: 339, baseType: !2229, size: 512, align: 128)
!5342 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !160, line: 341, baseType: !5343, size: 512, offset: 1024)
!5343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5296, file: !160, line: 341, size: 512, elements: !5344)
!5344 = !{!5345, !5354, !5360}
!5345 = !DIDerivedType(tag: DW_TAG_member, scope: !5343, file: !160, line: 342, baseType: !5346, size: 384)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5343, file: !160, line: 342, size: 384, elements: !5347)
!5347 = !{!5348, !5349, !5350, !5351, !5352, !5353}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5346, file: !160, line: 343, baseType: !67, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5346, file: !160, line: 344, baseType: !67, size: 64, offset: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5346, file: !160, line: 346, baseType: !48, size: 64, offset: 128)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5346, file: !160, line: 347, baseType: !48, size: 64, offset: 192)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5346, file: !160, line: 348, baseType: !48, size: 64, offset: 256)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5346, file: !160, line: 349, baseType: !48, size: 64, offset: 320)
!5354 = !DIDerivedType(tag: DW_TAG_member, scope: !5343, file: !160, line: 352, baseType: !5355, size: 256)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5343, file: !160, line: 352, size: 256, elements: !5356)
!5356 = !{!5357, !5358, !5359}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5355, file: !160, line: 353, baseType: !67, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5355, file: !160, line: 354, baseType: !67, size: 64, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5355, file: !160, line: 356, baseType: !125, size: 128, offset: 128)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5343, file: !160, line: 359, baseType: !2229, size: 512, align: 128)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5285, file: !149, line: 409, baseType: !5362, size: 64, offset: 128)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!50, !611, !847}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5285, file: !149, line: 412, baseType: !5366, size: 64, offset: 192)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!1533, !611, !5295}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5285, file: !149, line: 414, baseType: !5370, size: 64, offset: 256)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{null, !5373}
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !149, line: 310, flags: DIFlagFwdDecl)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5285, file: !149, line: 416, baseType: !5376, size: 64, offset: 320)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!50, !1355, !611, !69, !6, !5379, !3822}
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5285, file: !149, line: 419, baseType: !5381, size: 64, offset: 384)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!50, !1355, !611, !69, !6, !6, !2228, !48}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5285, file: !149, line: 424, baseType: !5385, size: 64, offset: 448)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!5388, !611, !5388}
!5388 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !53, line: 131, baseType: !688)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5285, file: !149, line: 425, baseType: !5390, size: 64, offset: 512)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !5295, !63, !63}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5285, file: !149, line: 426, baseType: !5394, size: 64, offset: 576)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!1533, !5295, !1033}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5285, file: !149, line: 427, baseType: !5398, size: 64, offset: 640)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{null, !5295}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5285, file: !149, line: 428, baseType: !4504, size: 64, offset: 704)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5285, file: !149, line: 433, baseType: !5403, size: 64, offset: 768)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!50, !611, !5295, !5295, !175}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5285, file: !149, line: 435, baseType: !5407, size: 64, offset: 832)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!50, !5295}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5285, file: !149, line: 436, baseType: !5411, size: 64, offset: 896)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!1533, !5295, !63, !63}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5285, file: !149, line: 438, baseType: !5415, size: 64, offset: 960)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{null, !5295, !5418, !5418}
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5285, file: !149, line: 439, baseType: !5420, size: 64, offset: 1024)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!50, !611, !2228}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5285, file: !149, line: 442, baseType: !5424, size: 64, offset: 1088)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!50, !5427, !1355, !5429}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !149, line: 66, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5285, file: !149, line: 444, baseType: !4604, size: 64, offset: 1152)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5285, file: !149, line: 445, baseType: !5432, size: 64, offset: 1216)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!50, !4507, !4529}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !149, line: 486, baseType: !67, size: 64, offset: 896)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !612, file: !149, line: 487, baseType: !1383, size: 320, offset: 960)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !612, file: !149, line: 488, baseType: !4646, size: 32, offset: 1280)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !612, file: !149, line: 489, baseType: !87, size: 32, offset: 1312)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !612, file: !149, line: 490, baseType: !125, size: 128, offset: 1344)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !612, file: !149, line: 491, baseType: !48, size: 64, offset: 1472)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !602, file: !568, line: 180, baseType: !5442, size: 64, offset: 320)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{!574, !1355, !507, !601, !542, !69, !63}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !602, file: !568, line: 182, baseType: !5442, size: 64, offset: 384)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !602, file: !568, line: 184, baseType: !5447, size: 64, offset: 448)
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!50, !1355, !507, !601, !2121}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !590, file: !568, line: 90, baseType: !5451, size: 64, offset: 192)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !590, file: !568, line: 91, baseType: !5453, size: 64, offset: 256)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !558, file: !502, line: 120, baseType: !5455, size: 64, offset: 192)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!3669, !525}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !558, file: !502, line: 121, baseType: !5459, size: 64, offset: 256)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!1462, !525}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !558, file: !502, line: 122, baseType: !5463, size: 64, offset: 320)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{null, !525, !1712, !1713}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !501, file: !502, line: 70, baseType: !2058, size: 64, offset: 384)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !501, file: !502, line: 71, baseType: !5468, size: 32, offset: 448)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5469, line: 19, size: 32, elements: !5470)
!5469 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5470 = !{!5471}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5468, file: !5469, line: 20, baseType: !999, size: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !501, file: !502, line: 73, baseType: !6, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !501, file: !502, line: 74, baseType: !6, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !501, file: !502, line: 75, baseType: !6, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !501, file: !502, line: 76, baseType: !6, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !501, file: !502, line: 77, baseType: !6, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !498, file: !142, line: 47, baseType: !488, size: 64, offset: 512)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !498, file: !142, line: 48, baseType: !507, size: 64, offset: 576)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !498, file: !142, line: 49, baseType: !5480, size: 64, offset: 640)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !142, line: 49, flags: DIFlagFwdDecl)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !498, file: !142, line: 50, baseType: !1686, size: 64, offset: 704)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !489, file: !142, line: 418, baseType: !5484, size: 64, offset: 1408)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !142, line: 53, size: 448, elements: !5486)
!5486 = !{!5487, !5488, !5493, !5497, !5501, !5505}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5485, file: !142, line: 54, baseType: !578, size: 128)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5485, file: !142, line: 55, baseType: !5489, size: 64, offset: 128)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!574, !5484, !5492, !542}
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5485, file: !142, line: 57, baseType: !5494, size: 64, offset: 192)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!574, !5484, !5492, !44, !63}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5485, file: !142, line: 59, baseType: !5498, size: 64, offset: 256)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{null, !488, !44}
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5485, file: !142, line: 60, baseType: !5502, size: 64, offset: 320)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!50, !488}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5485, file: !142, line: 61, baseType: !5506, size: 64, offset: 384)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !488}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !489, file: !142, line: 419, baseType: !44, size: 64, offset: 1472)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !489, file: !142, line: 420, baseType: !44, size: 64, offset: 1536)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !489, file: !142, line: 421, baseType: !507, size: 64, offset: 1600)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !489, file: !142, line: 424, baseType: !5513, size: 64, offset: 1664)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5515)
!5515 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !142, line: 424, flags: DIFlagFwdDecl)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !489, file: !142, line: 425, baseType: !5517, size: 64, offset: 1728)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1429)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !489, file: !142, line: 426, baseType: !6, size: 32, offset: 1792)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !489, file: !142, line: 435, baseType: !897, size: 256, offset: 1856)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !489, file: !142, line: 437, baseType: !5522, size: 64, offset: 2112)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5524, line: 69, size: 320, elements: !5525)
!5524 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5525 = !{!5526, !5527, !5528, !5545, !5547, !5551, !5552}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5523, file: !5524, line: 70, baseType: !44, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5523, file: !5524, line: 71, baseType: !488, size: 64, offset: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5523, file: !5524, line: 72, baseType: !5529, size: 64, offset: 128)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5531)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5524, line: 47, size: 256, elements: !5532)
!5532 = !{!5533, !5534, !5540, !5544}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5531, file: !5524, line: 49, baseType: !6, size: 32)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5531, file: !5524, line: 51, baseType: !5535, size: 64, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!50, !44, !5538}
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5523)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5531, file: !5524, line: 53, baseType: !5541, size: 64, offset: 128)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!50, !542, !5538}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5531, file: !5524, line: 55, baseType: !3693, size: 64, offset: 192)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5523, file: !5524, line: 73, baseType: !5546, size: 16, offset: 192)
!5546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5523, file: !5524, line: 74, baseType: !5548, size: 8, offset: 208)
!5548 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !112, line: 16, baseType: !5549)
!5549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !114, line: 20, baseType: !5550)
!5550 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5523, file: !5524, line: 75, baseType: !111, size: 8, offset: 216)
!5552 = !DIDerivedType(tag: DW_TAG_member, scope: !5523, file: !5524, line: 76, baseType: !5553, size: 64, offset: 256)
!5553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5523, file: !5524, line: 76, size: 64, elements: !5554)
!5554 = !{!5555, !5556, !5563}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5553, file: !5524, line: 77, baseType: !48, size: 64)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5553, file: !5524, line: 78, baseType: !5557, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5559)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5524, line: 86, size: 128, elements: !5560)
!5560 = !{!5561, !5562}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5559, file: !5524, line: 87, baseType: !6, size: 32)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5559, file: !5524, line: 88, baseType: !542, size: 64, offset: 64)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5553, file: !5524, line: 79, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5566)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5524, line: 92, size: 256, elements: !5567)
!5567 = !{!5568, !5569, !5570, !5571, !5572}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5566, file: !5524, line: 94, baseType: !6, size: 32)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5566, file: !5524, line: 95, baseType: !6, size: 32, offset: 32)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5566, file: !5524, line: 96, baseType: !4946, size: 64, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5566, file: !5524, line: 97, baseType: !5529, size: 64, offset: 128)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5566, file: !5524, line: 98, baseType: !48, size: 64, offset: 192)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !489, file: !142, line: 438, baseType: !6, size: 32, offset: 2176)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !489, file: !142, line: 441, baseType: !6, size: 32, offset: 2208)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !489, file: !142, line: 442, baseType: !5513, size: 64, offset: 2240)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !489, file: !142, line: 443, baseType: !5517, size: 64, offset: 2304)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !489, file: !142, line: 444, baseType: !1533, size: 8, offset: 2368)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !489, file: !142, line: 451, baseType: !1533, size: 8, offset: 2376)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !489, file: !142, line: 454, baseType: !6, size: 32, offset: 2400)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !489, file: !142, line: 455, baseType: !5581, size: 64, offset: 2432)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5583, line: 23, size: 96, elements: !5584)
!5583 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5584 = !{!5585, !5586, !5587}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5582, file: !5583, line: 24, baseType: !50, size: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5582, file: !5583, line: 24, baseType: !50, size: 32, offset: 32)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5582, file: !5583, line: 24, baseType: !50, size: 32, offset: 64)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !489, file: !142, line: 458, baseType: !5589, size: 64, offset: 2496)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!50}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !489, file: !142, line: 460, baseType: !5593, size: 4032, align: 512, offset: 2560)
!5593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5594, size: 4032, elements: !5608)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !142, line: 362, size: 576, elements: !5595)
!5595 = !{!5596, !5597, !5598}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5594, file: !142, line: 363, baseType: !48, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5594, file: !142, line: 364, baseType: !6, size: 32, offset: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5594, file: !142, line: 367, baseType: !5599, size: 448, offset: 128)
!5599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !142, line: 319, size: 448, elements: !5600)
!5600 = !{!5601, !5602}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5599, file: !142, line: 320, baseType: !488, size: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5599, file: !142, line: 321, baseType: !5603, size: 384, offset: 64)
!5603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5604, line: 40, size: 384, elements: !5605)
!5604 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5605 = !{!5606}
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5603, file: !5604, line: 41, baseType: !5607, size: 384, align: 64)
!5607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 384, align: 64, elements: !2734)
!5608 = !{!5609}
!5609 = !DISubrange(count: 7)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !489, file: !142, line: 463, baseType: !5611, size: 192, offset: 6592)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5612, line: 8, size: 192, elements: !5613)
!5612 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5613 = !{!5614, !5615, !5616}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5611, file: !5612, line: 10, baseType: !6, size: 32)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5611, file: !5612, line: 11, baseType: !879, size: 64, offset: 64)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5611, file: !5612, line: 12, baseType: !5617, size: 64, offset: 128)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5619, line: 59, size: 48, elements: !5620)
!5619 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5620 = !{!5621, !5622, !5623, !5624, !5625, !5626}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5618, file: !5619, line: 60, baseType: !1479, size: 16)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5618, file: !5619, line: 61, baseType: !1479, size: 16, offset: 16)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5618, file: !5619, line: 63, baseType: !6, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5618, file: !5619, line: 64, baseType: !6, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5618, file: !5619, line: 65, baseType: !6, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5618, file: !5619, line: 66, baseType: !6, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !489, file: !142, line: 465, baseType: !67, size: 64, offset: 6784)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !489, file: !142, line: 469, baseType: !6, size: 32, offset: 6848)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !489, file: !142, line: 470, baseType: !125, size: 128, offset: 6912)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !489, file: !142, line: 471, baseType: !5631, size: 64, offset: 7040)
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5633, line: 33, size: 96, elements: !5634)
!5633 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5634 = !{!5635, !5636, !5637, !5638}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5632, file: !5633, line: 37, baseType: !50, size: 32)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5632, file: !5633, line: 43, baseType: !50, size: 32, offset: 32)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5632, file: !5633, line: 45, baseType: !54, size: 16, offset: 64)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5632, file: !5633, line: 47, baseType: !54, size: 16, offset: 80)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !489, file: !142, line: 476, baseType: !5640, size: 64, offset: 7104)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !142, line: 378, size: 256, elements: !5642)
!5642 = !{!5643, !5659, !5660, !5661}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5641, file: !142, line: 379, baseType: !5644, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5646, line: 204, baseType: !5647)
!5646 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5646, line: 197, size: 192, elements: !5648)
!5648 = !{!5649, !5651, !5652, !5653, !5655, !5657}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5647, file: !5646, line: 198, baseType: !5650, size: 32)
!5650 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5646, line: 21, baseType: !685)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5647, file: !5646, line: 199, baseType: !115, size: 8, offset: 32)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5647, file: !5646, line: 200, baseType: !115, size: 8, offset: 40)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5647, file: !5646, line: 201, baseType: !5654, size: 16, offset: 48)
!5654 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5646, line: 17, baseType: !122)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5647, file: !5646, line: 202, baseType: !5656, size: 64, offset: 64)
!5656 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5646, line: 16, baseType: !689)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5647, file: !5646, line: 203, baseType: !5658, size: 64, offset: 128)
!5658 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5646, line: 22, baseType: !689)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5641, file: !142, line: 380, baseType: !6, size: 32, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5641, file: !142, line: 381, baseType: !542, size: 64, offset: 128)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5641, file: !142, line: 382, baseType: !542, size: 64, offset: 192)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !489, file: !142, line: 477, baseType: !5641, size: 256, offset: 7168)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !489, file: !142, line: 480, baseType: !5664, size: 64, offset: 7424)
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5665 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !142, line: 480, flags: DIFlagFwdDecl)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !489, file: !142, line: 483, baseType: !5667, size: 64, offset: 7488)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !142, line: 483, flags: DIFlagFwdDecl)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !489, file: !142, line: 488, baseType: !542, size: 64, offset: 7552)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !489, file: !142, line: 492, baseType: !48, size: 64, offset: 7616)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !489, file: !142, line: 493, baseType: !6, size: 32, offset: 7680)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !489, file: !142, line: 495, baseType: !48, size: 64, offset: 7744)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !489, file: !142, line: 496, baseType: !6, size: 32, offset: 7808)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !489, file: !142, line: 499, baseType: !6, size: 32, offset: 7840)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !489, file: !142, line: 500, baseType: !5676, size: 64, offset: 7872)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5678, line: 45, baseType: !5679)
!5678 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !489, file: !142, line: 503, baseType: !6, size: 32, offset: 7936)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !489, file: !142, line: 504, baseType: !5682, size: 64, offset: 8000)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5685, line: 96, size: 192, elements: !5686)
!5685 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5686 = !{!5687, !5688, !5730, !5732}
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5684, file: !5685, line: 97, baseType: !6, size: 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5684, file: !5685, line: 98, baseType: !5689, size: 64, offset: 64)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5685, line: 24, size: 3072, elements: !5691)
!5691 = !{!5692, !5694, !5695, !5696, !5697, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5727, !5728, !5729}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5690, file: !5685, line: 26, baseType: !5693, size: 128)
!5693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 128, elements: !2734)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5690, file: !5685, line: 27, baseType: !5693, size: 128, offset: 128)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5690, file: !5685, line: 28, baseType: !50, size: 32, offset: 256)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5690, file: !5685, line: 31, baseType: !87, size: 32, align: 512, offset: 512)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5690, file: !5685, line: 32, baseType: !5698, size: 960, offset: 576)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5699, line: 206, size: 960, elements: !5700)
!5699 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5700 = !{!5701, !5702, !5705, !5707, !5708, !5709}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5698, file: !5699, line: 207, baseType: !957, size: 64)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5698, file: !5699, line: 208, baseType: !5703, size: 256, offset: 64)
!5703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5704, size: 256, elements: !1008)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5698, file: !5699, line: 209, baseType: !5706, size: 256, offset: 320)
!5706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !1008)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5698, file: !5699, line: 213, baseType: !487, size: 64, offset: 576)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5698, file: !5699, line: 215, baseType: !1747, size: 256, offset: 640)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5698, file: !5699, line: 216, baseType: !111, size: 8, offset: 896)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5690, file: !5685, line: 33, baseType: !67, size: 64, offset: 1536)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5690, file: !5685, line: 34, baseType: !67, size: 64, offset: 1600)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5690, file: !5685, line: 35, baseType: !1533, size: 8, offset: 1664)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5690, file: !5685, line: 36, baseType: !2442, size: 320, offset: 1728)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5690, file: !5685, line: 37, baseType: !1648, size: 256, offset: 2048)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5690, file: !5685, line: 38, baseType: !954, size: 128, align: 64, offset: 2304)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5690, file: !5685, line: 39, baseType: !5717, size: 64, offset: 2432)
!5717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5718, size: 64)
!5718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5685, line: 49, size: 768, elements: !5719)
!5719 = !{!5720, !5721, !5722, !5723, !5724, !5725, !5726}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5718, file: !5685, line: 50, baseType: !87, size: 32)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5718, file: !5685, line: 51, baseType: !5706, size: 256, offset: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5718, file: !5685, line: 53, baseType: !5706, size: 256, offset: 320)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5718, file: !5685, line: 54, baseType: !67, size: 64, offset: 576)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5718, file: !5685, line: 55, baseType: !5717, size: 64, offset: 640)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5718, file: !5685, line: 56, baseType: !50, size: 32, offset: 704)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5718, file: !5685, line: 57, baseType: !50, size: 32, offset: 736)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5690, file: !5685, line: 40, baseType: !67, size: 64, offset: 2496)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5690, file: !5685, line: 42, baseType: !50, size: 32, offset: 2560)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5690, file: !5685, line: 43, baseType: !5683, size: 64, offset: 2624)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5684, file: !5685, line: 99, baseType: !5731, offset: 128)
!5731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !815, line: 211, elements: !816)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5684, file: !5685, line: 100, baseType: !5733, size: 64, offset: 128)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5685, line: 63, size: 3008, elements: !5735)
!5735 = !{!5736, !5737, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5765}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5734, file: !5685, line: 64, baseType: !5717, size: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5734, file: !5685, line: 65, baseType: !5738, size: 192, offset: 64)
!5738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5717, size: 192, elements: !543)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5734, file: !5685, line: 67, baseType: !50, size: 32, offset: 256)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5734, file: !5685, line: 68, baseType: !897, size: 256, offset: 320)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5734, file: !5685, line: 69, baseType: !87, size: 32, offset: 576)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5734, file: !5685, line: 70, baseType: !897, size: 256, offset: 640)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5734, file: !5685, line: 71, baseType: !67, size: 64, offset: 896)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5734, file: !5685, line: 72, baseType: !67, size: 64, offset: 960)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5734, file: !5685, line: 73, baseType: !67, size: 64, offset: 1024)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5734, file: !5685, line: 74, baseType: !67, size: 64, offset: 1088)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5734, file: !5685, line: 75, baseType: !67, size: 64, offset: 1152)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5734, file: !5685, line: 76, baseType: !67, size: 64, offset: 1216)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5734, file: !5685, line: 77, baseType: !67, size: 64, offset: 1280)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5734, file: !5685, line: 78, baseType: !67, size: 64, offset: 1344)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5734, file: !5685, line: 79, baseType: !1533, size: 8, offset: 1408)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5734, file: !5685, line: 80, baseType: !67, size: 64, offset: 1472)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5734, file: !5685, line: 81, baseType: !897, size: 256, offset: 1536)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5734, file: !5685, line: 82, baseType: !1687, size: 256, offset: 1792)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5734, file: !5685, line: 84, baseType: !77, size: 32, offset: 2048)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5734, file: !5685, line: 87, baseType: !67, size: 64, offset: 2112)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5734, file: !5685, line: 88, baseType: !67, size: 64, offset: 2176)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5734, file: !5685, line: 89, baseType: !5759, size: 704, offset: 2240)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1649, line: 111, size: 704, elements: !5760)
!5760 = !{!5761, !5762, !5763, !5764}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5759, file: !1649, line: 112, baseType: !1648, size: 256)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5759, file: !1649, line: 113, baseType: !2442, size: 320, offset: 256)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5759, file: !1649, line: 116, baseType: !2657, size: 64, offset: 576)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5759, file: !1649, line: 117, baseType: !50, size: 32, offset: 640)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5734, file: !5685, line: 90, baseType: !5683, size: 64, offset: 2944)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !489, file: !142, line: 515, baseType: !5767, size: 64, offset: 8064)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5769, line: 117, size: 128, elements: !5770)
!5769 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5770 = !{!5771, !5772, !5773}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5768, file: !5769, line: 118, baseType: !1429, size: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5768, file: !5769, line: 119, baseType: !1429, size: 32, offset: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5768, file: !5769, line: 120, baseType: !487, size: 64, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !489, file: !142, line: 516, baseType: !6, size: 32, offset: 8128)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !489, file: !142, line: 519, baseType: !6, size: 32, offset: 8160)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !489, file: !142, line: 520, baseType: !5777, size: 64, offset: 8192)
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !489, file: !142, line: 523, baseType: !5779, size: 64, offset: 8256)
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !489, file: !142, line: 524, baseType: !6, size: 32, offset: 8320)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !489, file: !142, line: 525, baseType: !5782, size: 64, offset: 8384)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5784, size: 64)
!5784 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !142, line: 525, flags: DIFlagFwdDecl)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !489, file: !142, line: 526, baseType: !6, size: 32, offset: 8448)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !489, file: !142, line: 533, baseType: !48, size: 64, offset: 8512)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !489, file: !142, line: 534, baseType: !6, size: 32, offset: 8576)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !489, file: !142, line: 535, baseType: !462, size: 64, offset: 8640)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !489, file: !142, line: 536, baseType: !6, size: 32, offset: 8704)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !489, file: !142, line: 539, baseType: !50, size: 32, offset: 8736)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !489, file: !142, line: 540, baseType: !5792, size: 64, offset: 8768)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5794, line: 32, size: 64, elements: !5795)
!5794 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5795 = !{!5796, !5797}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5793, file: !5794, line: 33, baseType: !1429, size: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5793, file: !5794, line: 34, baseType: !1429, size: 32, offset: 32)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !489, file: !142, line: 563, baseType: !125, size: 128, offset: 8832)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !489, file: !142, line: 565, baseType: !125, size: 128, offset: 8960)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !489, file: !142, line: 568, baseType: !2576, size: 64, offset: 9088)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !489, file: !142, line: 570, baseType: !77, size: 32, offset: 9152)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !907)
!5804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5805, size: 64)
!5805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5806)
!5806 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5810, size: 64)
!5810 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !688)
!5811 = !{!0, !5812, !5817, !5819, !5823, !5838, !5840, !5842, !5844, !5846, !5848, !5850, !5852, !5854, !5856, !5858, !5873, !5876, !5878, !5881, !5886, !5891, !5910, !5912, !5914, !5916, !5918, !5920, !5922, !5924, !5926, !5928, !5930, !5932, !5934, !5936, !5938, !5940, !5942, !5944, !5946, !5948, !5950, !5952, !5954, !5956, !5958, !5960, !5962, !5964, !5967, !5969, !5971, !5974, !5976, !5978, !5980, !5982, !5984, !5986, !5988, !5990, !5992, !5994, !5996, !5998, !6000, !6002, !6004, !6006, !6008, !6011, !6016, !6021, !6023, !6028, !6030, !6032, !6035, !6037, !6040, !6042, !6045, !6047, !6049, !6051, !6053, !6055, !6057, !6059, !6061, !6063, !6065, !6068, !6070, !6072, !6074, !6076, !6078, !6080, !6082}
!5812 = !DIGlobalVariableExpression(var: !5813, expr: !DIExpression())
!5813 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license312", scope: !2, file: !3, line: 111, type: !5814, isLocal: true, isDefinition: true, align: 8)
!5814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, elements: !5815)
!5815 = !{!5816}
!5816 = !DISubrange(count: 25)
!5817 = !DIGlobalVariableExpression(var: !5818, expr: !DIExpression())
!5818 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_intel_cstate__319_784_cstate_pmu_init6320", scope: !2, file: !3, line: 784, type: !48, isLocal: true, isDefinition: true)
!5819 = !DIGlobalVariableExpression(var: !5820, expr: !DIExpression())
!5820 = distinct !DIGlobalVariable(name: "__exitcall_cstate_pmu_exit", scope: !2, file: !3, line: 790, type: !5821, isLocal: true, isDefinition: true)
!5821 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5822, line: 120, baseType: !2576)
!5822 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5823 = !DIGlobalVariableExpression(var: !5824, expr: !DIExpression())
!5824 = distinct !DIGlobalVariable(name: "intel_cstates_match", scope: !2, file: !3, line: 619, type: !5825, isLocal: true, isDefinition: true)
!5825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5826, size: 10944, elements: !5836)
!5826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5827)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !3426, line: 687, size: 192, elements: !5828)
!5828 = !{!5829, !5830, !5831, !5832, !5833, !5834, !5835}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5827, file: !3426, line: 688, baseType: !122, size: 16)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !5827, file: !3426, line: 689, baseType: !122, size: 16, offset: 16)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !5827, file: !3426, line: 690, baseType: !122, size: 16, offset: 32)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !5827, file: !3426, line: 691, baseType: !122, size: 16, offset: 48)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !5827, file: !3426, line: 692, baseType: !122, size: 16, offset: 64)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5827, file: !3426, line: 694, baseType: !122, size: 16, offset: 80)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5827, file: !3426, line: 695, baseType: !3443, size: 64, offset: 128)
!5836 = !{!5837}
!5837 = !DISubrange(count: 57)
!5838 = !DIGlobalVariableExpression(var: !5839, expr: !DIExpression())
!5839 = distinct !DIGlobalVariable(name: "nhm_cstates", scope: !2, file: !3, line: 506, type: !464, isLocal: true, isDefinition: true)
!5840 = !DIGlobalVariableExpression(var: !5841, expr: !DIExpression())
!5841 = distinct !DIGlobalVariable(name: "snb_cstates", scope: !2, file: !3, line: 515, type: !464, isLocal: true, isDefinition: true)
!5842 = !DIGlobalVariableExpression(var: !5843, expr: !DIExpression())
!5843 = distinct !DIGlobalVariable(name: "hswult_cstates", scope: !2, file: !3, line: 526, type: !464, isLocal: true, isDefinition: true)
!5844 = !DIGlobalVariableExpression(var: !5845, expr: !DIExpression())
!5845 = distinct !DIGlobalVariable(name: "slm_cstates", scope: !2, file: !3, line: 588, type: !464, isLocal: true, isDefinition: true)
!5846 = !DIGlobalVariableExpression(var: !5847, expr: !DIExpression())
!5847 = distinct !DIGlobalVariable(name: "cnl_cstates", scope: !2, file: !3, line: 540, type: !464, isLocal: true, isDefinition: true)
!5848 = !DIGlobalVariableExpression(var: !5849, expr: !DIExpression())
!5849 = distinct !DIGlobalVariable(name: "knl_cstates", scope: !2, file: !3, line: 597, type: !464, isLocal: true, isDefinition: true)
!5850 = !DIGlobalVariableExpression(var: !5851, expr: !DIExpression())
!5851 = distinct !DIGlobalVariable(name: "glm_cstates", scope: !2, file: !3, line: 607, type: !464, isLocal: true, isDefinition: true)
!5852 = !DIGlobalVariableExpression(var: !5853, expr: !DIExpression())
!5853 = distinct !DIGlobalVariable(name: "adl_cstates", scope: !2, file: !3, line: 576, type: !464, isLocal: true, isDefinition: true)
!5854 = !DIGlobalVariableExpression(var: !5855, expr: !DIExpression())
!5855 = distinct !DIGlobalVariable(name: "icl_cstates", scope: !2, file: !3, line: 555, type: !464, isLocal: true, isDefinition: true)
!5856 = !DIGlobalVariableExpression(var: !5857, expr: !DIExpression())
!5857 = distinct !DIGlobalVariable(name: "icx_cstates", scope: !2, file: !3, line: 568, type: !464, isLocal: true, isDefinition: true)
!5858 = !DIGlobalVariableExpression(var: !5859, expr: !DIExpression())
!5859 = distinct !DIGlobalVariable(name: "pkg_msr", scope: !2, file: !3, line: 260, type: !5860, isLocal: true, isDefinition: true)
!5860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5861, size: 2240, elements: !5608)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_msr", file: !5862, line: 6, size: 320, elements: !5863)
!5862 = !DIFile(filename: "arch/x86/events/intel/../probe.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "735e24e786030d98ace6e9085068cd43")
!5863 = !{!5864, !5865, !5867, !5871, !5872}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !5861, file: !5862, line: 7, baseType: !688, size: 64)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !5861, file: !5862, line: 8, baseType: !5866, size: 64, offset: 64)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5861, file: !5862, line: 9, baseType: !5868, size: 64, offset: 128)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!1533, !50, !48}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "no_check", scope: !5861, file: !5862, line: 10, baseType: !1533, size: 8, offset: 192)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5861, file: !5862, line: 11, baseType: !688, size: 64, offset: 256)
!5873 = !DIGlobalVariableExpression(var: !5874, expr: !DIExpression())
!5874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !5875, isLocal: true, isDefinition: true)
!5875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 56, elements: !5608)
!5876 = !DIGlobalVariableExpression(var: !5877, expr: !DIExpression())
!5877 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c2", scope: !2, file: !3, line: 252, type: !590, isLocal: true, isDefinition: true)
!5878 = !DIGlobalVariableExpression(var: !5879, expr: !DIExpression())
!5879 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c2", scope: !2, file: !3, line: 252, type: !5880, isLocal: true, isDefinition: true)
!5880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 128, elements: !2734)
!5881 = !DIGlobalVariableExpression(var: !5882, expr: !DIExpression())
!5882 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !5883, isLocal: true, isDefinition: true)
!5883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 104, elements: !5884)
!5884 = !{!5885}
!5885 = !DISubrange(count: 13)
!5886 = !DIGlobalVariableExpression(var: !5887, expr: !DIExpression())
!5887 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !5888, isLocal: true, isDefinition: true)
!5888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 88, elements: !5889)
!5889 = !{!5890}
!5890 = !DISubrange(count: 11)
!5891 = !DIGlobalVariableExpression(var: !5892, expr: !DIExpression())
!5892 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c2", scope: !2, file: !3, line: 242, type: !5893, isLocal: true, isDefinition: true)
!5893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_pmu_events_attr", file: !251, line: 1811, size: 384, elements: !5894)
!5894 = !{!5895, !5908, !5909}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5893, file: !251, line: 1812, baseType: !5896, size: 256)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !204, line: 106, size: 256, elements: !5897)
!5897 = !{!5898, !5899, !5904}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5896, file: !204, line: 107, baseType: !578, size: 128)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5896, file: !204, line: 108, baseType: !5900, size: 64, offset: 128)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!574, !3336, !5903, !542}
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5896, file: !204, line: 110, baseType: !5905, size: 64, offset: 192)
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!574, !3336, !5903, !44, !63}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5893, file: !251, line: 1813, baseType: !688, size: 64, offset: 256)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "event_str", scope: !5893, file: !251, line: 1814, baseType: !44, size: 64, offset: 320)
!5910 = !DIGlobalVariableExpression(var: !5911, expr: !DIExpression())
!5911 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c3", scope: !2, file: !3, line: 253, type: !590, isLocal: true, isDefinition: true)
!5912 = !DIGlobalVariableExpression(var: !5913, expr: !DIExpression())
!5913 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c3", scope: !2, file: !3, line: 253, type: !5880, isLocal: true, isDefinition: true)
!5914 = !DIGlobalVariableExpression(var: !5915, expr: !DIExpression())
!5915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !5883, isLocal: true, isDefinition: true)
!5916 = !DIGlobalVariableExpression(var: !5917, expr: !DIExpression())
!5917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !5888, isLocal: true, isDefinition: true)
!5918 = !DIGlobalVariableExpression(var: !5919, expr: !DIExpression())
!5919 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c3", scope: !2, file: !3, line: 243, type: !5893, isLocal: true, isDefinition: true)
!5920 = !DIGlobalVariableExpression(var: !5921, expr: !DIExpression())
!5921 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c6", scope: !2, file: !3, line: 254, type: !590, isLocal: true, isDefinition: true)
!5922 = !DIGlobalVariableExpression(var: !5923, expr: !DIExpression())
!5923 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c6", scope: !2, file: !3, line: 254, type: !5880, isLocal: true, isDefinition: true)
!5924 = !DIGlobalVariableExpression(var: !5925, expr: !DIExpression())
!5925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !5883, isLocal: true, isDefinition: true)
!5926 = !DIGlobalVariableExpression(var: !5927, expr: !DIExpression())
!5927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !5888, isLocal: true, isDefinition: true)
!5928 = !DIGlobalVariableExpression(var: !5929, expr: !DIExpression())
!5929 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c6", scope: !2, file: !3, line: 244, type: !5893, isLocal: true, isDefinition: true)
!5930 = !DIGlobalVariableExpression(var: !5931, expr: !DIExpression())
!5931 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c7", scope: !2, file: !3, line: 255, type: !590, isLocal: true, isDefinition: true)
!5932 = !DIGlobalVariableExpression(var: !5933, expr: !DIExpression())
!5933 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c7", scope: !2, file: !3, line: 255, type: !5880, isLocal: true, isDefinition: true)
!5934 = !DIGlobalVariableExpression(var: !5935, expr: !DIExpression())
!5935 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !5883, isLocal: true, isDefinition: true)
!5936 = !DIGlobalVariableExpression(var: !5937, expr: !DIExpression())
!5937 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !5888, isLocal: true, isDefinition: true)
!5938 = !DIGlobalVariableExpression(var: !5939, expr: !DIExpression())
!5939 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c7", scope: !2, file: !3, line: 245, type: !5893, isLocal: true, isDefinition: true)
!5940 = !DIGlobalVariableExpression(var: !5941, expr: !DIExpression())
!5941 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c8", scope: !2, file: !3, line: 256, type: !590, isLocal: true, isDefinition: true)
!5942 = !DIGlobalVariableExpression(var: !5943, expr: !DIExpression())
!5943 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c8", scope: !2, file: !3, line: 256, type: !5880, isLocal: true, isDefinition: true)
!5944 = !DIGlobalVariableExpression(var: !5945, expr: !DIExpression())
!5945 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !5883, isLocal: true, isDefinition: true)
!5946 = !DIGlobalVariableExpression(var: !5947, expr: !DIExpression())
!5947 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !5888, isLocal: true, isDefinition: true)
!5948 = !DIGlobalVariableExpression(var: !5949, expr: !DIExpression())
!5949 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c8", scope: !2, file: !3, line: 246, type: !5893, isLocal: true, isDefinition: true)
!5950 = !DIGlobalVariableExpression(var: !5951, expr: !DIExpression())
!5951 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c9", scope: !2, file: !3, line: 257, type: !590, isLocal: true, isDefinition: true)
!5952 = !DIGlobalVariableExpression(var: !5953, expr: !DIExpression())
!5953 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c9", scope: !2, file: !3, line: 257, type: !5880, isLocal: true, isDefinition: true)
!5954 = !DIGlobalVariableExpression(var: !5955, expr: !DIExpression())
!5955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !5883, isLocal: true, isDefinition: true)
!5956 = !DIGlobalVariableExpression(var: !5957, expr: !DIExpression())
!5957 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !5888, isLocal: true, isDefinition: true)
!5958 = !DIGlobalVariableExpression(var: !5959, expr: !DIExpression())
!5959 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c9", scope: !2, file: !3, line: 247, type: !5893, isLocal: true, isDefinition: true)
!5960 = !DIGlobalVariableExpression(var: !5961, expr: !DIExpression())
!5961 = distinct !DIGlobalVariable(name: "group_cstate_pkg_c10", scope: !2, file: !3, line: 258, type: !590, isLocal: true, isDefinition: true)
!5962 = !DIGlobalVariableExpression(var: !5963, expr: !DIExpression())
!5963 = distinct !DIGlobalVariable(name: "attrs_cstate_pkg_c10", scope: !2, file: !3, line: 258, type: !5880, isLocal: true, isDefinition: true)
!5964 = !DIGlobalVariableExpression(var: !5965, expr: !DIExpression())
!5965 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !5966, isLocal: true, isDefinition: true)
!5966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 112, elements: !2485)
!5967 = !DIGlobalVariableExpression(var: !5968, expr: !DIExpression())
!5968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !5888, isLocal: true, isDefinition: true)
!5969 = !DIGlobalVariableExpression(var: !5970, expr: !DIExpression())
!5970 = distinct !DIGlobalVariable(name: "attr_cstate_pkg_c10", scope: !2, file: !3, line: 248, type: !5893, isLocal: true, isDefinition: true)
!5971 = !DIGlobalVariableExpression(var: !5972, expr: !DIExpression())
!5972 = distinct !DIGlobalVariable(name: "core_msr", scope: !2, file: !3, line: 175, type: !5973, isLocal: true, isDefinition: true)
!5973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5861, size: 1280, elements: !1008)
!5974 = !DIGlobalVariableExpression(var: !5975, expr: !DIExpression())
!5975 = distinct !DIGlobalVariable(name: "group_cstate_core_c1", scope: !2, file: !3, line: 165, type: !590, isLocal: true, isDefinition: true)
!5976 = !DIGlobalVariableExpression(var: !5977, expr: !DIExpression())
!5977 = distinct !DIGlobalVariable(name: "attrs_cstate_core_c1", scope: !2, file: !3, line: 165, type: !5880, isLocal: true, isDefinition: true)
!5978 = !DIGlobalVariableExpression(var: !5979, expr: !DIExpression())
!5979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !5883, isLocal: true, isDefinition: true)
!5980 = !DIGlobalVariableExpression(var: !5981, expr: !DIExpression())
!5981 = distinct !DIGlobalVariable(name: "attr_cstate_core_c1", scope: !2, file: !3, line: 158, type: !5893, isLocal: true, isDefinition: true)
!5982 = !DIGlobalVariableExpression(var: !5983, expr: !DIExpression())
!5983 = distinct !DIGlobalVariable(name: "group_cstate_core_c3", scope: !2, file: !3, line: 166, type: !590, isLocal: true, isDefinition: true)
!5984 = !DIGlobalVariableExpression(var: !5985, expr: !DIExpression())
!5985 = distinct !DIGlobalVariable(name: "attrs_cstate_core_c3", scope: !2, file: !3, line: 166, type: !5880, isLocal: true, isDefinition: true)
!5986 = !DIGlobalVariableExpression(var: !5987, expr: !DIExpression())
!5987 = distinct !DIGlobalVariable(name: "attr_cstate_core_c3", scope: !2, file: !3, line: 159, type: !5893, isLocal: true, isDefinition: true)
!5988 = !DIGlobalVariableExpression(var: !5989, expr: !DIExpression())
!5989 = distinct !DIGlobalVariable(name: "group_cstate_core_c6", scope: !2, file: !3, line: 167, type: !590, isLocal: true, isDefinition: true)
!5990 = !DIGlobalVariableExpression(var: !5991, expr: !DIExpression())
!5991 = distinct !DIGlobalVariable(name: "attrs_cstate_core_c6", scope: !2, file: !3, line: 167, type: !5880, isLocal: true, isDefinition: true)
!5992 = !DIGlobalVariableExpression(var: !5993, expr: !DIExpression())
!5993 = distinct !DIGlobalVariable(name: "attr_cstate_core_c6", scope: !2, file: !3, line: 160, type: !5893, isLocal: true, isDefinition: true)
!5994 = !DIGlobalVariableExpression(var: !5995, expr: !DIExpression())
!5995 = distinct !DIGlobalVariable(name: "group_cstate_core_c7", scope: !2, file: !3, line: 168, type: !590, isLocal: true, isDefinition: true)
!5996 = !DIGlobalVariableExpression(var: !5997, expr: !DIExpression())
!5997 = distinct !DIGlobalVariable(name: "attrs_cstate_core_c7", scope: !2, file: !3, line: 168, type: !5880, isLocal: true, isDefinition: true)
!5998 = !DIGlobalVariableExpression(var: !5999, expr: !DIExpression())
!5999 = distinct !DIGlobalVariable(name: "attr_cstate_core_c7", scope: !2, file: !3, line: 161, type: !5893, isLocal: true, isDefinition: true)
!6000 = !DIGlobalVariableExpression(var: !6001, expr: !DIExpression())
!6001 = distinct !DIGlobalVariable(name: "core_msr_mask", scope: !2, file: !3, line: 163, type: !67, isLocal: true, isDefinition: true)
!6002 = !DIGlobalVariableExpression(var: !6003, expr: !DIExpression())
!6003 = distinct !DIGlobalVariable(name: "pkg_msr_mask", scope: !2, file: !3, line: 250, type: !67, isLocal: true, isDefinition: true)
!6004 = !DIGlobalVariableExpression(var: !6005, expr: !DIExpression())
!6005 = distinct !DIGlobalVariable(name: "has_cstate_core", scope: !2, file: !3, line: 147, type: !1533, isLocal: true, isDefinition: true)
!6006 = !DIGlobalVariableExpression(var: !6007, expr: !DIExpression())
!6007 = distinct !DIGlobalVariable(name: "has_cstate_pkg", scope: !2, file: !3, line: 228, type: !1533, isLocal: true, isDefinition: true)
!6008 = !DIGlobalVariableExpression(var: !6009, expr: !DIExpression())
!6009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 734, type: !6010, isLocal: true, isDefinition: true)
!6010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !5815)
!6011 = !DIGlobalVariableExpression(var: !6012, expr: !DIExpression())
!6012 = distinct !DIGlobalVariable(scope: null, file: !3, line: 736, type: !6013, isLocal: true, isDefinition: true)
!6013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 184, elements: !6014)
!6014 = !{!6015}
!6015 = !DISubrange(count: 23)
!6016 = !DIGlobalVariableExpression(var: !6017, expr: !DIExpression())
!6017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 742, type: !6018, isLocal: true, isDefinition: true)
!6018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 304, elements: !6019)
!6019 = !{!6020}
!6020 = !DISubrange(count: 38)
!6021 = !DIGlobalVariableExpression(var: !6022, expr: !DIExpression())
!6022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 751, type: !5888, isLocal: true, isDefinition: true)
!6023 = !DIGlobalVariableExpression(var: !6024, expr: !DIExpression())
!6024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 758, type: !6025, isLocal: true, isDefinition: true)
!6025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 296, elements: !6026)
!6026 = !{!6027}
!6027 = !DISubrange(count: 37)
!6028 = !DIGlobalVariableExpression(var: !6029, expr: !DIExpression())
!6029 = distinct !DIGlobalVariable(name: "cstate_core_cpu_mask", scope: !2, file: !3, line: 207, type: !1281, isLocal: true, isDefinition: true)
!6030 = !DIGlobalVariableExpression(var: !6031, expr: !DIExpression())
!6031 = distinct !DIGlobalVariable(name: "cstate_pkg_cpu_mask", scope: !2, file: !3, line: 285, type: !1281, isLocal: true, isDefinition: true)
!6032 = !DIGlobalVariableExpression(var: !6033, expr: !DIExpression())
!6033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !6034, isLocal: true, isDefinition: true)
!6034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 96, elements: !4397)
!6035 = !DIGlobalVariableExpression(var: !6036, expr: !DIExpression())
!6036 = distinct !DIGlobalVariable(name: "cstate_core_pmu", scope: !2, file: !3, line: 476, type: !3331, isLocal: true, isDefinition: true)
!6037 = !DIGlobalVariableExpression(var: !6038, expr: !DIExpression())
!6038 = distinct !DIGlobalVariable(name: "core_attr_groups", scope: !2, file: !3, line: 219, type: !6039, isLocal: true, isDefinition: true)
!6039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 256, elements: !1008)
!6040 = !DIGlobalVariableExpression(var: !6041, expr: !DIExpression())
!6041 = distinct !DIGlobalVariable(name: "core_events_attr_group", scope: !2, file: !3, line: 191, type: !590, isLocal: true, isDefinition: true)
!6042 = !DIGlobalVariableExpression(var: !6043, expr: !DIExpression())
!6043 = distinct !DIGlobalVariable(name: "attrs_empty", scope: !2, file: !3, line: 182, type: !6044, isLocal: true, isDefinition: true)
!6044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 64, elements: !481)
!6045 = !DIGlobalVariableExpression(var: !6046, expr: !DIExpression())
!6046 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !5875, isLocal: true, isDefinition: true)
!6047 = !DIGlobalVariableExpression(var: !6048, expr: !DIExpression())
!6048 = distinct !DIGlobalVariable(name: "core_format_attr_group", scope: !2, file: !3, line: 202, type: !590, isLocal: true, isDefinition: true)
!6049 = !DIGlobalVariableExpression(var: !6050, expr: !DIExpression())
!6050 = distinct !DIGlobalVariable(name: "core_format_attrs", scope: !2, file: !3, line: 197, type: !5880, isLocal: true, isDefinition: true)
!6051 = !DIGlobalVariableExpression(var: !6052, expr: !DIExpression())
!6052 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !1587, isLocal: true, isDefinition: true)
!6053 = !DIGlobalVariableExpression(var: !6054, expr: !DIExpression())
!6054 = distinct !DIGlobalVariable(name: "format_attr_core_event", scope: !2, file: !3, line: 196, type: !5896, isLocal: true, isDefinition: true)
!6055 = !DIGlobalVariableExpression(var: !6056, expr: !DIExpression())
!6056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !5883, isLocal: true, isDefinition: true)
!6057 = !DIGlobalVariableExpression(var: !6058, expr: !DIExpression())
!6058 = distinct !DIGlobalVariable(name: "cpumask_attr_group", scope: !2, file: !3, line: 215, type: !590, isLocal: true, isDefinition: true)
!6059 = !DIGlobalVariableExpression(var: !6060, expr: !DIExpression())
!6060 = distinct !DIGlobalVariable(name: "cstate_cpumask_attrs", scope: !2, file: !3, line: 210, type: !5880, isLocal: true, isDefinition: true)
!6061 = !DIGlobalVariableExpression(var: !6062, expr: !DIExpression())
!6062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !3036, isLocal: true, isDefinition: true)
!6063 = !DIGlobalVariableExpression(var: !6064, expr: !DIExpression())
!6064 = distinct !DIGlobalVariable(name: "dev_attr_cpumask", scope: !2, file: !3, line: 208, type: !5896, isLocal: true, isDefinition: true)
!6065 = !DIGlobalVariableExpression(var: !6066, expr: !DIExpression())
!6066 = distinct !DIGlobalVariable(name: "core_attr_update", scope: !2, file: !3, line: 457, type: !6067, isLocal: true, isDefinition: true)
!6067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 320, elements: !1506)
!6068 = !DIGlobalVariableExpression(var: !6069, expr: !DIExpression())
!6069 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !5888, isLocal: true, isDefinition: true)
!6070 = !DIGlobalVariableExpression(var: !6071, expr: !DIExpression())
!6071 = distinct !DIGlobalVariable(name: "cstate_pkg_pmu", scope: !2, file: !3, line: 491, type: !3331, isLocal: true, isDefinition: true)
!6072 = !DIGlobalVariableExpression(var: !6073, expr: !DIExpression())
!6073 = distinct !DIGlobalVariable(name: "pkg_attr_groups", scope: !2, file: !3, line: 287, type: !6039, isLocal: true, isDefinition: true)
!6074 = !DIGlobalVariableExpression(var: !6075, expr: !DIExpression())
!6075 = distinct !DIGlobalVariable(name: "pkg_events_attr_group", scope: !2, file: !3, line: 270, type: !590, isLocal: true, isDefinition: true)
!6076 = !DIGlobalVariableExpression(var: !6077, expr: !DIExpression())
!6077 = distinct !DIGlobalVariable(name: "pkg_format_attr_group", scope: !2, file: !3, line: 280, type: !590, isLocal: true, isDefinition: true)
!6078 = !DIGlobalVariableExpression(var: !6079, expr: !DIExpression())
!6079 = distinct !DIGlobalVariable(name: "pkg_format_attrs", scope: !2, file: !3, line: 276, type: !5880, isLocal: true, isDefinition: true)
!6080 = !DIGlobalVariableExpression(var: !6081, expr: !DIExpression())
!6081 = distinct !DIGlobalVariable(name: "format_attr_pkg_event", scope: !2, file: !3, line: 275, type: !5896, isLocal: true, isDefinition: true)
!6082 = !DIGlobalVariableExpression(var: !6083, expr: !DIExpression())
!6083 = distinct !DIGlobalVariable(name: "pkg_attr_update", scope: !2, file: !3, line: 465, type: !6084, isLocal: true, isDefinition: true)
!6084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 512, elements: !1202)
!6085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, elements: !6086)
!6086 = !{!6087}
!6087 = !DISubrange(count: 53)
!6088 = !{i32 7, !"Dwarf Version", i32 5}
!6089 = !{i32 2, !"Debug Info Version", i32 3}
!6090 = !{i32 1, !"wchar_size", i32 2}
!6091 = !{i32 8, !"cf-protection-branch", i32 1}
!6092 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6093 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6094 = !{i32 1, !"Code Model", i32 2}
!6095 = !{i32 1, !"override-stack-alignment", i32 8}
!6096 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6097 = distinct !DISubprogram(name: "__initstub__kmod_intel_cstate__319_784_cstate_pmu_init6", scope: !3, file: !3, line: 784, type: !5590, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6098 = !DILocation(line: 784, column: 1, scope: !6097)
!6099 = distinct !DISubprogram(name: "cstate_pmu_init", scope: !3, file: !3, line: 766, type: !5590, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6100 = !{!6101, !6103}
!6101 = !DILocalVariable(name: "id", scope: !6099, file: !3, line: 768, type: !6102)
!6102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!6103 = !DILocalVariable(name: "err", scope: !6099, file: !3, line: 769, type: !50)
!6104 = !DILocation(line: 768, column: 2, scope: !6099)
!6105 = !DILocation(line: 768, column: 27, scope: !6099)
!6106 = !DILocation(line: 769, column: 2, scope: !6099)
!6107 = !DILocation(line: 769, column: 6, scope: !6099)
!6108 = !DILocation(line: 771, column: 6, scope: !6099)
!6109 = !DILocation(line: 771, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 771, column: 6)
!6111 = !DILocation(line: 772, column: 3, scope: !6110)
!6112 = !DILocation(line: 774, column: 7, scope: !6099)
!6113 = !DILocation(line: 774, column: 5, scope: !6099)
!6114 = !DILocation(line: 775, column: 7, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 775, column: 6)
!6116 = !DILocation(line: 775, column: 6, scope: !6099)
!6117 = !DILocation(line: 776, column: 3, scope: !6115)
!6118 = !DILocation(line: 778, column: 51, scope: !6099)
!6119 = !DILocation(line: 778, column: 55, scope: !6099)
!6120 = !DILocation(line: 778, column: 21, scope: !6099)
!6121 = !DILocation(line: 778, column: 8, scope: !6099)
!6122 = !DILocation(line: 778, column: 6, scope: !6099)
!6123 = !DILocation(line: 779, column: 6, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 779, column: 6)
!6125 = !DILocation(line: 779, column: 6, scope: !6099)
!6126 = !DILocation(line: 780, column: 10, scope: !6124)
!6127 = !DILocation(line: 780, column: 3, scope: !6124)
!6128 = !DILocation(line: 782, column: 9, scope: !6099)
!6129 = !DILocation(line: 782, column: 2, scope: !6099)
!6130 = !DILocation(line: 783, column: 1, scope: !6099)
!6131 = distinct !DISubprogram(name: "cstate_pmu_exit", scope: !3, file: !3, line: 786, type: !2577, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6132 = !DILocation(line: 788, column: 2, scope: !6131)
!6133 = !DILocation(line: 789, column: 1, scope: !6131)
!6134 = distinct !DISubprogram(name: "cstate_cleanup", scope: !3, file: !3, line: 717, type: !2577, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6135 = !DILocation(line: 719, column: 2, scope: !6134)
!6136 = !DILocation(line: 720, column: 2, scope: !6134)
!6137 = !DILocation(line: 722, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 722, column: 6)
!6139 = !{i8 0, i8 2}
!6140 = !DILocation(line: 722, column: 6, scope: !6134)
!6141 = !DILocation(line: 723, column: 3, scope: !6138)
!6142 = !DILocation(line: 725, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 725, column: 6)
!6144 = !DILocation(line: 725, column: 6, scope: !6134)
!6145 = !DILocation(line: 726, column: 3, scope: !6143)
!6146 = !DILocation(line: 727, column: 1, scope: !6134)
!6147 = distinct !DISubprogram(name: "arch_test_bit", scope: !6148, file: !6148, line: 237, type: !6149, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6154)
!6148 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!1533, !67, !6151}
!6151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6152, size: 64)
!6152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6153)
!6153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!6154 = !{!6155, !6156}
!6155 = !DILocalVariable(name: "nr", arg: 1, scope: !6147, file: !6148, line: 237, type: !67)
!6156 = !DILocalVariable(name: "addr", arg: 2, scope: !6147, file: !6148, line: 237, type: !6151)
!6157 = !DILocation(line: 237, column: 29, scope: !6147)
!6158 = !DILocation(line: 237, column: 63, scope: !6147)
!6159 = !DILocation(line: 239, column: 30, scope: !6147)
!6160 = !DILocation(line: 239, column: 9, scope: !6147)
!6161 = !DILocation(line: 239, column: 54, scope: !6147)
!6162 = !DILocation(line: 239, column: 58, scope: !6147)
!6163 = !DILocation(line: 239, column: 36, scope: !6147)
!6164 = !DILocation(line: 240, column: 26, scope: !6147)
!6165 = !DILocation(line: 240, column: 30, scope: !6147)
!6166 = !DILocation(line: 240, column: 8, scope: !6147)
!6167 = !DILocation(line: 239, column: 2, scope: !6147)
!6168 = !DISubprogram(name: "x86_match_cpu", scope: !6169, file: !6169, line: 291, type: !6170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6169 = !DIFile(filename: "./arch/x86/include/asm/cpu_device_id.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e1a78964618b7c8a5d697bb345982db")
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!6102, !6102}
!6172 = distinct !DISubprogram(name: "cstate_probe", scope: !3, file: !3, line: 694, type: !6173, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6175)
!6173 = !DISubroutineType(types: !6174)
!6174 = !{!50, !463}
!6175 = !{!6176}
!6176 = !DILocalVariable(name: "cm", arg: 1, scope: !6172, file: !3, line: 694, type: !463)
!6177 = !DILocation(line: 694, column: 59, scope: !6172)
!6178 = !DILocation(line: 697, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 697, column: 6)
!6180 = !DILocation(line: 697, column: 10, scope: !6179)
!6181 = !DILocation(line: 697, column: 17, scope: !6179)
!6182 = !DILocation(line: 697, column: 6, scope: !6172)
!6183 = !DILocation(line: 698, column: 39, scope: !6179)
!6184 = !DILocation(line: 698, column: 3, scope: !6179)
!6185 = !DILocation(line: 701, column: 6, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 701, column: 6)
!6187 = !DILocation(line: 701, column: 10, scope: !6186)
!6188 = !DILocation(line: 701, column: 17, scope: !6186)
!6189 = !DILocation(line: 701, column: 6, scope: !6172)
!6190 = !DILocation(line: 702, column: 40, scope: !6186)
!6191 = !DILocation(line: 702, column: 3, scope: !6186)
!6192 = !DILocation(line: 706, column: 28, scope: !6172)
!6193 = !DILocation(line: 706, column: 32, scope: !6172)
!6194 = !DILocation(line: 705, column: 18, scope: !6172)
!6195 = !DILocation(line: 705, column: 16, scope: !6172)
!6196 = !DILocation(line: 709, column: 27, scope: !6172)
!6197 = !DILocation(line: 709, column: 31, scope: !6172)
!6198 = !DILocation(line: 708, column: 17, scope: !6172)
!6199 = !DILocation(line: 708, column: 15, scope: !6172)
!6200 = !DILocation(line: 711, column: 22, scope: !6172)
!6201 = !DILocation(line: 711, column: 21, scope: !6172)
!6202 = !DILocation(line: 711, column: 20, scope: !6172)
!6203 = !DILocation(line: 711, column: 18, scope: !6172)
!6204 = !DILocation(line: 712, column: 22, scope: !6172)
!6205 = !DILocation(line: 712, column: 21, scope: !6172)
!6206 = !DILocation(line: 712, column: 20, scope: !6172)
!6207 = !DILocation(line: 712, column: 18, scope: !6172)
!6208 = !DILocation(line: 714, column: 10, scope: !6172)
!6209 = !DILocation(line: 714, column: 26, scope: !6172)
!6210 = !DILocation(line: 714, column: 29, scope: !6172)
!6211 = !DILocation(line: 714, column: 9, scope: !6172)
!6212 = !DILocation(line: 714, column: 2, scope: !6172)
!6213 = distinct !DISubprogram(name: "cstate_init", scope: !3, file: !3, line: 729, type: !5590, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6214)
!6214 = !{!6215}
!6215 = !DILocalVariable(name: "err", scope: !6213, file: !3, line: 731, type: !50)
!6216 = !DILocation(line: 731, column: 2, scope: !6213)
!6217 = !DILocation(line: 731, column: 6, scope: !6213)
!6218 = !DILocation(line: 733, column: 2, scope: !6213)
!6219 = !DILocation(line: 735, column: 2, scope: !6213)
!6220 = !DILocation(line: 738, column: 6, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 738, column: 6)
!6222 = !DILocation(line: 738, column: 6, scope: !6213)
!6223 = !DILocation(line: 739, column: 61, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 738, column: 23)
!6225 = !DILocation(line: 739, column: 9, scope: !6224)
!6226 = !DILocation(line: 739, column: 7, scope: !6224)
!6227 = !DILocation(line: 740, column: 7, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 740, column: 7)
!6229 = !DILocation(line: 740, column: 7, scope: !6224)
!6230 = !DILocation(line: 741, column: 20, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 740, column: 12)
!6232 = !DILocation(line: 742, column: 4, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 742, column: 4)
!6234 = !DILocation(line: 742, column: 4, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 742, column: 4)
!6236 = !DILocation(line: 743, column: 4, scope: !6231)
!6237 = !DILocation(line: 744, column: 11, scope: !6231)
!6238 = !DILocation(line: 744, column: 4, scope: !6231)
!6239 = !DILocation(line: 746, column: 2, scope: !6224)
!6240 = !DILocation(line: 748, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 748, column: 6)
!6242 = !DILocation(line: 748, column: 6, scope: !6213)
!6243 = !DILocation(line: 749, column: 7, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 749, column: 7)
!6245 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 748, column: 22)
!6246 = !DILocation(line: 749, column: 38, scope: !6244)
!6247 = !DILocation(line: 749, column: 7, scope: !6245)
!6248 = !DILocation(line: 750, column: 10, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 749, column: 43)
!6250 = !DILocation(line: 750, column: 8, scope: !6249)
!6251 = !DILocation(line: 752, column: 3, scope: !6249)
!6252 = !DILocation(line: 754, column: 22, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 752, column: 10)
!6254 = !DILocation(line: 753, column: 10, scope: !6253)
!6255 = !DILocation(line: 753, column: 8, scope: !6253)
!6256 = !DILocation(line: 756, column: 7, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 756, column: 7)
!6258 = !DILocation(line: 756, column: 7, scope: !6245)
!6259 = !DILocation(line: 757, column: 19, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 756, column: 12)
!6261 = !DILocation(line: 758, column: 4, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 758, column: 4)
!6263 = !DILocation(line: 758, column: 4, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 758, column: 4)
!6265 = !DILocation(line: 759, column: 4, scope: !6260)
!6266 = !DILocation(line: 760, column: 11, scope: !6260)
!6267 = !DILocation(line: 760, column: 4, scope: !6260)
!6268 = !DILocation(line: 762, column: 2, scope: !6245)
!6269 = !DILocation(line: 763, column: 2, scope: !6213)
!6270 = !DILocation(line: 764, column: 1, scope: !6213)
!6271 = distinct !DISubprogram(name: "constant_test_bit", scope: !6148, file: !6148, line: 204, type: !6272, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6274)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!1533, !487, !6151}
!6274 = !{!6275, !6276}
!6275 = !DILocalVariable(name: "nr", arg: 1, scope: !6271, file: !6148, line: 204, type: !487)
!6276 = !DILocalVariable(name: "addr", arg: 2, scope: !6271, file: !6148, line: 204, type: !6151)
!6277 = !DILocation(line: 204, column: 52, scope: !6271)
!6278 = !DILocation(line: 204, column: 86, scope: !6271)
!6279 = !DILocation(line: 206, column: 19, scope: !6271)
!6280 = !DILocation(line: 206, column: 22, scope: !6271)
!6281 = !DILocation(line: 206, column: 15, scope: !6271)
!6282 = !DILocation(line: 207, column: 4, scope: !6271)
!6283 = !DILocation(line: 207, column: 9, scope: !6271)
!6284 = !DILocation(line: 207, column: 12, scope: !6271)
!6285 = !DILocation(line: 206, column: 44, scope: !6271)
!6286 = !DILocation(line: 207, column: 37, scope: !6271)
!6287 = !DILocation(line: 206, column: 2, scope: !6271)
!6288 = distinct !DISubprogram(name: "variable_test_bit", scope: !6148, file: !6148, line: 224, type: !6272, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6289)
!6289 = !{!6290, !6291, !6292}
!6290 = !DILocalVariable(name: "nr", arg: 1, scope: !6288, file: !6148, line: 224, type: !487)
!6291 = !DILocalVariable(name: "addr", arg: 2, scope: !6288, file: !6148, line: 224, type: !6151)
!6292 = !DILocalVariable(name: "oldbit", scope: !6288, file: !6148, line: 226, type: !1533)
!6293 = !DILocation(line: 224, column: 52, scope: !6288)
!6294 = !DILocation(line: 224, column: 86, scope: !6288)
!6295 = !DILocation(line: 226, column: 2, scope: !6288)
!6296 = !DILocation(line: 226, column: 7, scope: !6288)
!6297 = !DILocation(line: 231, column: 33, scope: !6288)
!6298 = !DILocation(line: 231, column: 46, scope: !6288)
!6299 = !DILocation(line: 228, column: 2, scope: !6288)
!6300 = !{i64 2148364890, i64 2148364964}
!6301 = !DILocation(line: 233, column: 9, scope: !6288)
!6302 = !DILocation(line: 234, column: 1, scope: !6288)
!6303 = !DILocation(line: 233, column: 2, scope: !6288)
!6304 = !DISubprogram(name: "perf_msr_probe", scope: !5862, file: !5862, line: 15, type: !6305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!67, !6307, !50, !1533, !48}
!6307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!6308 = distinct !DISubprogram(name: "test_msr", scope: !3, file: !3, line: 170, type: !5869, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6309 = !{!6310, !6311}
!6310 = !DILocalVariable(name: "idx", arg: 1, scope: !6308, file: !3, line: 170, type: !50)
!6311 = !DILocalVariable(name: "data", arg: 2, scope: !6308, file: !3, line: 170, type: !48)
!6312 = !DILocation(line: 170, column: 26, scope: !6308)
!6313 = !DILocation(line: 170, column: 37, scope: !6308)
!6314 = !DILocation(line: 172, column: 9, scope: !6308)
!6315 = !DILocation(line: 172, column: 2, scope: !6308)
!6316 = distinct !DISubprogram(name: "const_test_bit", scope: !6317, file: !6317, line: 166, type: !6149, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6317 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6318 = !{!6319, !6320, !6321, !6322, !6323}
!6319 = !DILocalVariable(name: "nr", arg: 1, scope: !6316, file: !6317, line: 166, type: !67)
!6320 = !DILocalVariable(name: "addr", arg: 2, scope: !6316, file: !6317, line: 166, type: !6151)
!6321 = !DILocalVariable(name: "p", scope: !6316, file: !6317, line: 168, type: !471)
!6322 = !DILocalVariable(name: "mask", scope: !6316, file: !6317, line: 169, type: !67)
!6323 = !DILocalVariable(name: "val", scope: !6316, file: !6317, line: 170, type: !67)
!6324 = !DILocation(line: 166, column: 30, scope: !6316)
!6325 = !DILocation(line: 166, column: 64, scope: !6316)
!6326 = !DILocation(line: 168, column: 2, scope: !6316)
!6327 = !DILocation(line: 168, column: 23, scope: !6316)
!6328 = !DILocation(line: 168, column: 50, scope: !6316)
!6329 = !DILocation(line: 168, column: 57, scope: !6316)
!6330 = !DILocation(line: 168, column: 55, scope: !6316)
!6331 = !DILocation(line: 169, column: 2, scope: !6316)
!6332 = !DILocation(line: 169, column: 16, scope: !6316)
!6333 = !DILocation(line: 169, column: 23, scope: !6316)
!6334 = !DILocation(line: 170, column: 2, scope: !6316)
!6335 = !DILocation(line: 170, column: 16, scope: !6316)
!6336 = !DILocation(line: 170, column: 23, scope: !6316)
!6337 = !DILocation(line: 170, column: 22, scope: !6316)
!6338 = !DILocation(line: 172, column: 12, scope: !6316)
!6339 = !DILocation(line: 172, column: 18, scope: !6316)
!6340 = !DILocation(line: 172, column: 16, scope: !6316)
!6341 = !DILocation(line: 172, column: 10, scope: !6316)
!6342 = !DILocation(line: 172, column: 9, scope: !6316)
!6343 = !DILocation(line: 173, column: 1, scope: !6316)
!6344 = !DILocation(line: 172, column: 2, scope: !6316)
!6345 = distinct !DISubprogram(name: "_test_bit", scope: !6346, file: !6346, line: 139, type: !6149, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6347)
!6346 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6347 = !{!6348, !6349}
!6348 = !DILocalVariable(name: "nr", arg: 1, scope: !6345, file: !6346, line: 139, type: !67)
!6349 = !DILocalVariable(name: "addr", arg: 2, scope: !6345, file: !6346, line: 139, type: !6151)
!6350 = !DILocation(line: 139, column: 25, scope: !6345)
!6351 = !DILocation(line: 139, column: 59, scope: !6345)
!6352 = !DILocation(line: 141, column: 25, scope: !6345)
!6353 = !DILocation(line: 141, column: 32, scope: !6345)
!6354 = !DILocation(line: 141, column: 30, scope: !6345)
!6355 = !DILocation(line: 141, column: 2, scope: !6345)
!6356 = !DILocation(line: 142, column: 23, scope: !6345)
!6357 = !DILocation(line: 142, column: 27, scope: !6345)
!6358 = !DILocation(line: 142, column: 9, scope: !6345)
!6359 = !DILocation(line: 142, column: 2, scope: !6345)
!6360 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6361, file: !6361, line: 66, type: !6362, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6367)
!6361 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6362 = !DISubroutineType(types: !6363)
!6363 = !{null, !6364, !63}
!6364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6365, size: 64)
!6365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6366)
!6366 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6367 = !{!6368, !6369}
!6368 = !DILocalVariable(name: "v", arg: 1, scope: !6360, file: !6361, line: 66, type: !6364)
!6369 = !DILocalVariable(name: "size", arg: 2, scope: !6360, file: !6361, line: 66, type: !63)
!6370 = !DILocation(line: 66, column: 73, scope: !6360)
!6371 = !DILocation(line: 66, column: 83, scope: !6360)
!6372 = !DILocation(line: 68, column: 19, scope: !6360)
!6373 = !DILocation(line: 68, column: 22, scope: !6360)
!6374 = !DILocation(line: 68, column: 2, scope: !6360)
!6375 = !DILocation(line: 69, column: 2, scope: !6360)
!6376 = !DILocation(line: 70, column: 1, scope: !6360)
!6377 = distinct !DISubprogram(name: "kasan_check_read", scope: !6378, file: !6378, line: 40, type: !6379, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6381)
!6378 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!1533, !6364, !6}
!6381 = !{!6382, !6383}
!6382 = !DILocalVariable(name: "p", arg: 1, scope: !6377, file: !6378, line: 40, type: !6364)
!6383 = !DILocalVariable(name: "size", arg: 2, scope: !6377, file: !6378, line: 40, type: !6)
!6384 = !DILocation(line: 40, column: 58, scope: !6377)
!6385 = !DILocation(line: 40, column: 74, scope: !6377)
!6386 = !DILocation(line: 42, column: 2, scope: !6377)
!6387 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6388, file: !6388, line: 229, type: !6389, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6391)
!6388 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6389 = !DISubroutineType(types: !6390)
!6390 = !{null, !6364, !63, !50}
!6391 = !{!6392, !6393, !6394}
!6392 = !DILocalVariable(name: "ptr", arg: 1, scope: !6387, file: !6388, line: 229, type: !6364)
!6393 = !DILocalVariable(name: "size", arg: 2, scope: !6387, file: !6388, line: 229, type: !63)
!6394 = !DILocalVariable(name: "type", arg: 3, scope: !6387, file: !6388, line: 230, type: !50)
!6395 = !DILocation(line: 229, column: 60, scope: !6387)
!6396 = !DILocation(line: 229, column: 72, scope: !6387)
!6397 = !DILocation(line: 230, column: 15, scope: !6387)
!6398 = !DILocation(line: 230, column: 23, scope: !6387)
!6399 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !268, file: !268, line: 283, type: !6400, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!50, !267, !44, !6402, !6402}
!6402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6403, size: 64)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!50, !6}
!6405 = !{!6406, !6407, !6408, !6409}
!6406 = !DILocalVariable(name: "state", arg: 1, scope: !6399, file: !268, line: 283, type: !267)
!6407 = !DILocalVariable(name: "name", arg: 2, scope: !6399, file: !268, line: 284, type: !44)
!6408 = !DILocalVariable(name: "startup", arg: 3, scope: !6399, file: !268, line: 285, type: !6402)
!6409 = !DILocalVariable(name: "teardown", arg: 4, scope: !6399, file: !268, line: 286, type: !6402)
!6410 = !DILocation(line: 283, column: 54, scope: !6399)
!6411 = !DILocation(line: 284, column: 21, scope: !6399)
!6412 = !DILocation(line: 285, column: 15, scope: !6399)
!6413 = !DILocation(line: 286, column: 15, scope: !6399)
!6414 = !DILocation(line: 288, column: 29, scope: !6399)
!6415 = !DILocation(line: 288, column: 36, scope: !6399)
!6416 = !DILocation(line: 288, column: 48, scope: !6399)
!6417 = !DILocation(line: 288, column: 57, scope: !6399)
!6418 = !DILocation(line: 288, column: 9, scope: !6399)
!6419 = !DILocation(line: 288, column: 2, scope: !6399)
!6420 = distinct !DISubprogram(name: "cstate_cpu_init", scope: !3, file: !3, line: 431, type: !6403, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6421)
!6421 = !{!6422, !6423, !6424, !6427, !6429, !6432}
!6422 = !DILocalVariable(name: "cpu", arg: 1, scope: !6420, file: !3, line: 431, type: !6)
!6423 = !DILocalVariable(name: "target", scope: !6420, file: !3, line: 433, type: !6)
!6424 = !DILocalVariable(name: "__vpp_verify", scope: !6425, file: !3, line: 439, type: !1462)
!6425 = distinct !DILexicalBlock(scope: !6426, file: !3, line: 439, column: 11)
!6426 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 439, column: 11)
!6427 = !DILocalVariable(name: "__ptr", scope: !6428, file: !3, line: 439, type: !67)
!6428 = distinct !DILexicalBlock(scope: !6426, file: !3, line: 439, column: 11)
!6429 = !DILocalVariable(name: "__vpp_verify", scope: !6430, file: !3, line: 449, type: !1462)
!6430 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 449, column: 11)
!6431 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 449, column: 11)
!6432 = !DILocalVariable(name: "__ptr", scope: !6433, file: !3, line: 449, type: !67)
!6433 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 449, column: 11)
!6434 = !DILocation(line: 431, column: 41, scope: !6420)
!6435 = !DILocation(line: 433, column: 2, scope: !6420)
!6436 = !DILocation(line: 433, column: 15, scope: !6420)
!6437 = !DILocation(line: 439, column: 11, scope: !6426)
!6438 = !DILocation(line: 439, column: 11, scope: !6425)
!6439 = !DILocation(line: 439, column: 11, scope: !6428)
!6440 = !DILocation(line: 439, column: 11, scope: !6420)
!6441 = !DILocation(line: 439, column: 9, scope: !6420)
!6442 = !DILocation(line: 442, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 442, column: 6)
!6444 = !DILocation(line: 442, column: 22, scope: !6443)
!6445 = !DILocation(line: 442, column: 25, scope: !6443)
!6446 = !DILocation(line: 442, column: 35, scope: !6443)
!6447 = !DILocation(line: 442, column: 32, scope: !6443)
!6448 = !DILocation(line: 442, column: 6, scope: !6420)
!6449 = !DILocation(line: 443, column: 19, scope: !6443)
!6450 = !DILocation(line: 443, column: 3, scope: !6443)
!6451 = !DILocation(line: 449, column: 11, scope: !6431)
!6452 = !DILocation(line: 449, column: 11, scope: !6430)
!6453 = !DILocation(line: 449, column: 11, scope: !6433)
!6454 = !DILocation(line: 449, column: 11, scope: !6420)
!6455 = !DILocation(line: 449, column: 9, scope: !6420)
!6456 = !DILocation(line: 451, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 451, column: 6)
!6458 = !DILocation(line: 451, column: 21, scope: !6457)
!6459 = !DILocation(line: 451, column: 24, scope: !6457)
!6460 = !DILocation(line: 451, column: 34, scope: !6457)
!6461 = !DILocation(line: 451, column: 31, scope: !6457)
!6462 = !DILocation(line: 451, column: 6, scope: !6420)
!6463 = !DILocation(line: 452, column: 19, scope: !6457)
!6464 = !DILocation(line: 452, column: 3, scope: !6457)
!6465 = !DILocation(line: 455, column: 1, scope: !6420)
!6466 = !DILocation(line: 454, column: 2, scope: !6420)
!6467 = distinct !DISubprogram(name: "cstate_cpu_exit", scope: !3, file: !3, line: 403, type: !6403, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6468)
!6468 = !{!6469, !6470, !6471, !6476, !6478, !6483}
!6469 = !DILocalVariable(name: "cpu", arg: 1, scope: !6467, file: !3, line: 403, type: !6)
!6470 = !DILocalVariable(name: "target", scope: !6467, file: !3, line: 405, type: !6)
!6471 = !DILocalVariable(name: "__vpp_verify", scope: !6472, file: !3, line: 410, type: !1462)
!6472 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 410, column: 28)
!6473 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 410, column: 28)
!6474 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 408, column: 62)
!6475 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 407, column: 6)
!6476 = !DILocalVariable(name: "__ptr", scope: !6477, file: !3, line: 410, type: !67)
!6477 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 410, column: 28)
!6478 = !DILocalVariable(name: "__vpp_verify", scope: !6479, file: !3, line: 421, type: !1462)
!6479 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 421, column: 28)
!6480 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 421, column: 28)
!6481 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 419, column: 61)
!6482 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 418, column: 6)
!6483 = !DILocalVariable(name: "__ptr", scope: !6484, file: !3, line: 421, type: !67)
!6484 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 421, column: 28)
!6485 = !DILocation(line: 403, column: 41, scope: !6467)
!6486 = !DILocation(line: 405, column: 2, scope: !6467)
!6487 = !DILocation(line: 405, column: 15, scope: !6467)
!6488 = !DILocation(line: 407, column: 6, scope: !6475)
!6489 = !DILocation(line: 407, column: 22, scope: !6475)
!6490 = !DILocation(line: 408, column: 33, scope: !6475)
!6491 = !DILocation(line: 408, column: 6, scope: !6475)
!6492 = !DILocation(line: 407, column: 6, scope: !6467)
!6493 = !DILocation(line: 410, column: 28, scope: !6473)
!6494 = !DILocation(line: 410, column: 28, scope: !6472)
!6495 = !DILocation(line: 410, column: 28, scope: !6477)
!6496 = !DILocation(line: 410, column: 28, scope: !6474)
!6497 = !DILocation(line: 410, column: 59, scope: !6474)
!6498 = !DILocation(line: 410, column: 12, scope: !6474)
!6499 = !DILocation(line: 410, column: 10, scope: !6474)
!6500 = !DILocation(line: 412, column: 7, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 412, column: 7)
!6502 = !DILocation(line: 412, column: 16, scope: !6501)
!6503 = !DILocation(line: 412, column: 14, scope: !6501)
!6504 = !DILocation(line: 412, column: 7, scope: !6474)
!6505 = !DILocation(line: 413, column: 20, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 412, column: 28)
!6507 = !DILocation(line: 413, column: 4, scope: !6506)
!6508 = !DILocation(line: 414, column: 47, scope: !6506)
!6509 = !DILocation(line: 414, column: 52, scope: !6506)
!6510 = !DILocation(line: 414, column: 4, scope: !6506)
!6511 = !DILocation(line: 415, column: 3, scope: !6506)
!6512 = !DILocation(line: 416, column: 2, scope: !6474)
!6513 = !DILocation(line: 418, column: 6, scope: !6482)
!6514 = !DILocation(line: 418, column: 21, scope: !6482)
!6515 = !DILocation(line: 419, column: 33, scope: !6482)
!6516 = !DILocation(line: 419, column: 6, scope: !6482)
!6517 = !DILocation(line: 418, column: 6, scope: !6467)
!6518 = !DILocation(line: 421, column: 28, scope: !6480)
!6519 = !DILocation(line: 421, column: 28, scope: !6479)
!6520 = !DILocation(line: 421, column: 28, scope: !6484)
!6521 = !DILocation(line: 421, column: 28, scope: !6481)
!6522 = !DILocation(line: 421, column: 55, scope: !6481)
!6523 = !DILocation(line: 421, column: 12, scope: !6481)
!6524 = !DILocation(line: 421, column: 10, scope: !6481)
!6525 = !DILocation(line: 423, column: 7, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 423, column: 7)
!6527 = !DILocation(line: 423, column: 16, scope: !6526)
!6528 = !DILocation(line: 423, column: 14, scope: !6526)
!6529 = !DILocation(line: 423, column: 7, scope: !6481)
!6530 = !DILocation(line: 424, column: 20, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 423, column: 28)
!6532 = !DILocation(line: 424, column: 4, scope: !6531)
!6533 = !DILocation(line: 425, column: 46, scope: !6531)
!6534 = !DILocation(line: 425, column: 51, scope: !6531)
!6535 = !DILocation(line: 425, column: 4, scope: !6531)
!6536 = !DILocation(line: 426, column: 3, scope: !6531)
!6537 = !DILocation(line: 427, column: 2, scope: !6481)
!6538 = !DILocation(line: 429, column: 1, scope: !6467)
!6539 = !DILocation(line: 428, column: 2, scope: !6467)
!6540 = !DISubprogram(name: "perf_pmu_register", scope: !251, file: !251, line: 1080, type: !6541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{!50, !3330, !44, !50}
!6543 = !DISubprogram(name: "_printk", scope: !6544, file: !6544, line: 153, type: !6545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6544 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!50, !44, null}
!6547 = distinct !DISubprogram(name: "topology_max_die_per_package", scope: !6548, file: !6548, line: 127, type: !5590, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6548 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!6549 = !DILocation(line: 129, column: 9, scope: !6547)
!6550 = !DILocation(line: 129, column: 2, scope: !6547)
!6551 = !DISubprogram(name: "__cpuhp_setup_state", scope: !268, file: !268, line: 263, type: !6552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6552 = !DISubroutineType(types: !6553)
!6553 = !{!50, !267, !44, !1533, !6402, !6402, !1533}
!6554 = distinct !DISubprogram(name: "cpumask_first_and", scope: !475, file: !475, line: 184, type: !6555, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6559)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{!6, !6557, !6557}
!6557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6558, size: 64)
!6558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!6559 = !{!6560, !6561}
!6560 = !DILocalVariable(name: "srcp1", arg: 1, scope: !6554, file: !475, line: 184, type: !6557)
!6561 = !DILocalVariable(name: "srcp2", arg: 2, scope: !6554, file: !475, line: 184, type: !6557)
!6562 = !DILocation(line: 184, column: 54, scope: !6554)
!6563 = !DILocation(line: 184, column: 83, scope: !6554)
!6564 = !DILocation(line: 186, column: 28, scope: !6554)
!6565 = !DILocation(line: 186, column: 49, scope: !6554)
!6566 = !DILocation(line: 186, column: 9, scope: !6554)
!6567 = !DILocation(line: 186, column: 2, scope: !6554)
!6568 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !475, file: !475, line: 469, type: !6569, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6572)
!6569 = !DISubroutineType(types: !6570)
!6570 = !{null, !6, !6571}
!6571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!6572 = !{!6573, !6574}
!6573 = !DILocalVariable(name: "cpu", arg: 1, scope: !6568, file: !475, line: 469, type: !6)
!6574 = !DILocalVariable(name: "dstp", arg: 2, scope: !6568, file: !475, line: 469, type: !6571)
!6575 = !DILocation(line: 469, column: 58, scope: !6568)
!6576 = !DILocation(line: 469, column: 79, scope: !6568)
!6577 = !DILocation(line: 471, column: 24, scope: !6568)
!6578 = !DILocation(line: 471, column: 10, scope: !6568)
!6579 = !DILocation(line: 471, column: 30, scope: !6568)
!6580 = !DILocation(line: 471, column: 2, scope: !6568)
!6581 = !DILocation(line: 472, column: 1, scope: !6568)
!6582 = distinct !DISubprogram(name: "find_first_and_bit", scope: !6583, file: !6583, line: 334, type: !6584, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6586)
!6583 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6584 = !DISubroutineType(types: !6585)
!6585 = !{!67, !471, !471, !67}
!6586 = !{!6587, !6588, !6589, !6590}
!6587 = !DILocalVariable(name: "addr1", arg: 1, scope: !6582, file: !6583, line: 334, type: !471)
!6588 = !DILocalVariable(name: "addr2", arg: 2, scope: !6582, file: !6583, line: 335, type: !471)
!6589 = !DILocalVariable(name: "size", arg: 3, scope: !6582, file: !6583, line: 336, type: !67)
!6590 = !DILocalVariable(name: "val", scope: !6591, file: !6583, line: 339, type: !67)
!6591 = distinct !DILexicalBlock(scope: !6592, file: !6583, line: 338, column: 31)
!6592 = distinct !DILexicalBlock(scope: !6582, file: !6583, line: 338, column: 6)
!6593 = !DILocation(line: 334, column: 55, scope: !6582)
!6594 = !DILocation(line: 335, column: 27, scope: !6582)
!6595 = !DILocation(line: 336, column: 20, scope: !6582)
!6596 = !DILocation(line: 338, column: 6, scope: !6592)
!6597 = !DILocation(line: 338, column: 6, scope: !6582)
!6598 = !DILocation(line: 339, column: 3, scope: !6591)
!6599 = !DILocation(line: 339, column: 17, scope: !6591)
!6600 = !DILocation(line: 339, column: 24, scope: !6591)
!6601 = !DILocation(line: 339, column: 23, scope: !6591)
!6602 = !DILocation(line: 339, column: 33, scope: !6591)
!6603 = !DILocation(line: 339, column: 32, scope: !6591)
!6604 = !DILocation(line: 339, column: 30, scope: !6591)
!6605 = !DILocation(line: 339, column: 41, scope: !6591)
!6606 = !DILocation(line: 339, column: 39, scope: !6591)
!6607 = !DILocation(line: 341, column: 10, scope: !6591)
!6608 = !DILocation(line: 341, column: 16, scope: !6591)
!6609 = !DILocation(line: 341, column: 29, scope: !6591)
!6610 = !DILocation(line: 341, column: 3, scope: !6591)
!6611 = !DILocation(line: 342, column: 2, scope: !6592)
!6612 = !DILocation(line: 344, column: 29, scope: !6582)
!6613 = !DILocation(line: 344, column: 36, scope: !6582)
!6614 = !DILocation(line: 344, column: 43, scope: !6582)
!6615 = !DILocation(line: 344, column: 9, scope: !6582)
!6616 = !DILocation(line: 344, column: 2, scope: !6582)
!6617 = !DILocation(line: 345, column: 1, scope: !6582)
!6618 = distinct !DISubprogram(name: "variable__ffs", scope: !6148, file: !6148, line: 250, type: !6619, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6621)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{!67, !67}
!6621 = !{!6622}
!6622 = !DILocalVariable(name: "word", arg: 1, scope: !6618, file: !6148, line: 250, type: !67)
!6623 = !DILocation(line: 250, column: 66, scope: !6618)
!6624 = !DILocation(line: 254, column: 11, scope: !6618)
!6625 = !DILocation(line: 252, column: 2, scope: !6618)
!6626 = !{i64 859965}
!6627 = !DILocation(line: 255, column: 9, scope: !6618)
!6628 = !DILocation(line: 255, column: 2, scope: !6618)
!6629 = !DISubprogram(name: "_find_first_and_bit", scope: !6583, file: !6583, line: 30, type: !6584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6630 = distinct !DISubprogram(name: "set_bit", scope: !6631, file: !6631, line: 26, type: !6632, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6635)
!6631 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6632 = !DISubroutineType(types: !6633)
!6633 = !{null, !487, !6634}
!6634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6153, size: 64)
!6635 = !{!6636, !6637}
!6636 = !DILocalVariable(name: "nr", arg: 1, scope: !6630, file: !6631, line: 26, type: !487)
!6637 = !DILocalVariable(name: "addr", arg: 2, scope: !6630, file: !6631, line: 26, type: !6634)
!6638 = !DILocation(line: 26, column: 42, scope: !6630)
!6639 = !DILocation(line: 26, column: 70, scope: !6630)
!6640 = !DILocation(line: 28, column: 26, scope: !6630)
!6641 = !DILocation(line: 28, column: 33, scope: !6630)
!6642 = !DILocation(line: 28, column: 31, scope: !6630)
!6643 = !DILocation(line: 28, column: 2, scope: !6630)
!6644 = !DILocation(line: 29, column: 15, scope: !6630)
!6645 = !DILocation(line: 29, column: 19, scope: !6630)
!6646 = !DILocation(line: 29, column: 2, scope: !6630)
!6647 = !DILocation(line: 30, column: 1, scope: !6630)
!6648 = distinct !DISubprogram(name: "cpumask_check", scope: !475, file: !475, line: 148, type: !6649, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6651)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!6, !6}
!6651 = !{!6652}
!6652 = !DILocalVariable(name: "cpu", arg: 1, scope: !6648, file: !475, line: 148, type: !6)
!6653 = !DILocation(line: 148, column: 64, scope: !6648)
!6654 = !DILocation(line: 150, column: 20, scope: !6648)
!6655 = !DILocation(line: 150, column: 2, scope: !6648)
!6656 = !DILocation(line: 151, column: 9, scope: !6648)
!6657 = !DILocation(line: 151, column: 2, scope: !6648)
!6658 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6361, file: !6361, line: 80, type: !6362, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "v", arg: 1, scope: !6658, file: !6361, line: 80, type: !6364)
!6661 = !DILocalVariable(name: "size", arg: 2, scope: !6658, file: !6361, line: 80, type: !63)
!6662 = !DILocation(line: 80, column: 74, scope: !6658)
!6663 = !DILocation(line: 80, column: 84, scope: !6658)
!6664 = !DILocation(line: 82, column: 20, scope: !6658)
!6665 = !DILocation(line: 82, column: 23, scope: !6658)
!6666 = !DILocation(line: 82, column: 2, scope: !6658)
!6667 = !DILocation(line: 83, column: 2, scope: !6658)
!6668 = !DILocation(line: 84, column: 1, scope: !6658)
!6669 = distinct !DISubprogram(name: "arch_set_bit", scope: !6148, file: !6148, line: 52, type: !6632, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6670)
!6670 = !{!6671, !6672}
!6671 = !DILocalVariable(name: "nr", arg: 1, scope: !6669, file: !6148, line: 52, type: !487)
!6672 = !DILocalVariable(name: "addr", arg: 2, scope: !6669, file: !6148, line: 52, type: !6634)
!6673 = !DILocation(line: 52, column: 19, scope: !6669)
!6674 = !DILocation(line: 52, column: 47, scope: !6669)
!6675 = !DILocation(line: 54, column: 27, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6669, file: !6148, line: 54, column: 6)
!6677 = !DILocation(line: 54, column: 6, scope: !6676)
!6678 = !DILocation(line: 54, column: 6, scope: !6669)
!6679 = !DILocation(line: 56, column: 6, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6676, file: !6148, line: 54, column: 32)
!6681 = !DILocation(line: 57, column: 12, scope: !6680)
!6682 = !DILocation(line: 55, column: 3, scope: !6680)
!6683 = !{i64 2148351278, i64 2148351317, i64 2148351338, i64 2148351375, i64 2148351398, i64 2148351268}
!6684 = !DILocation(line: 59, column: 2, scope: !6680)
!6685 = !DILocation(line: 61, column: 8, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6676, file: !6148, line: 59, column: 9)
!6687 = !DILocation(line: 61, column: 32, scope: !6686)
!6688 = !DILocation(line: 60, column: 3, scope: !6686)
!6689 = !{i64 2148351563, i64 2148351602, i64 2148351623, i64 2148351660, i64 2148351683, i64 2148351553}
!6690 = !DILocation(line: 63, column: 1, scope: !6669)
!6691 = distinct !DISubprogram(name: "kasan_check_write", scope: !6378, file: !6378, line: 44, type: !6379, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6692)
!6692 = !{!6693, !6694}
!6693 = !DILocalVariable(name: "p", arg: 1, scope: !6691, file: !6378, line: 44, type: !6364)
!6694 = !DILocalVariable(name: "size", arg: 2, scope: !6691, file: !6378, line: 44, type: !6)
!6695 = !DILocation(line: 44, column: 59, scope: !6691)
!6696 = !DILocation(line: 44, column: 75, scope: !6691)
!6697 = !DILocation(line: 46, column: 2, scope: !6691)
!6698 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !475, file: !475, line: 140, type: !6699, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6701)
!6699 = !DISubroutineType(types: !6700)
!6700 = !{null, !6, !6}
!6701 = !{!6702, !6703}
!6702 = !DILocalVariable(name: "cpu", arg: 1, scope: !6698, file: !475, line: 140, type: !6)
!6703 = !DILocalVariable(name: "bits", arg: 2, scope: !6698, file: !475, line: 140, type: !6)
!6704 = !DILocation(line: 140, column: 60, scope: !6698)
!6705 = !DILocation(line: 140, column: 78, scope: !6698)
!6706 = !DILocation(line: 145, column: 1, scope: !6698)
!6707 = distinct !DISubprogram(name: "cpumask_test_and_clear_cpu", scope: !475, file: !475, line: 530, type: !6708, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6710)
!6708 = !DISubroutineType(types: !6709)
!6709 = !{!1533, !50, !6571}
!6710 = !{!6711, !6712}
!6711 = !DILocalVariable(name: "cpu", arg: 1, scope: !6707, file: !475, line: 530, type: !50)
!6712 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6707, file: !475, line: 530, type: !6571)
!6713 = !DILocation(line: 530, column: 60, scope: !6707)
!6714 = !DILocation(line: 530, column: 81, scope: !6707)
!6715 = !DILocation(line: 532, column: 42, scope: !6707)
!6716 = !DILocation(line: 532, column: 28, scope: !6707)
!6717 = !DILocation(line: 532, column: 48, scope: !6707)
!6718 = !DILocation(line: 532, column: 9, scope: !6707)
!6719 = !DILocation(line: 532, column: 2, scope: !6707)
!6720 = distinct !DISubprogram(name: "cpumask_any_but", scope: !475, file: !475, line: 379, type: !6721, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6723)
!6721 = !DISubroutineType(types: !6722)
!6722 = !{!6, !6557, !6}
!6723 = !{!6724, !6725, !6726}
!6724 = !DILocalVariable(name: "mask", arg: 1, scope: !6720, file: !475, line: 379, type: !6557)
!6725 = !DILocalVariable(name: "cpu", arg: 2, scope: !6720, file: !475, line: 379, type: !6)
!6726 = !DILocalVariable(name: "i", scope: !6720, file: !475, line: 381, type: !6)
!6727 = !DILocation(line: 379, column: 52, scope: !6720)
!6728 = !DILocation(line: 379, column: 71, scope: !6720)
!6729 = !DILocation(line: 381, column: 2, scope: !6720)
!6730 = !DILocation(line: 381, column: 15, scope: !6720)
!6731 = !DILocation(line: 383, column: 16, scope: !6720)
!6732 = !DILocation(line: 383, column: 2, scope: !6720)
!6733 = !DILocation(line: 384, column: 2, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6720, file: !475, line: 384, column: 2)
!6735 = !DILocation(line: 384, column: 2, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6734, file: !475, line: 384, column: 2)
!6737 = !DILocation(line: 385, column: 7, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6736, file: !475, line: 385, column: 7)
!6739 = !DILocation(line: 385, column: 12, scope: !6738)
!6740 = !DILocation(line: 385, column: 9, scope: !6738)
!6741 = !DILocation(line: 385, column: 7, scope: !6736)
!6742 = !DILocation(line: 386, column: 4, scope: !6738)
!6743 = distinct !{!6743, !6733, !6744, !6745, !6746}
!6744 = !DILocation(line: 386, column: 4, scope: !6734)
!6745 = !{!"llvm.loop.mustprogress"}
!6746 = !{!"llvm.loop.unroll.disable"}
!6747 = !DILocation(line: 387, column: 9, scope: !6720)
!6748 = !DILocation(line: 388, column: 1, scope: !6720)
!6749 = !DILocation(line: 387, column: 2, scope: !6720)
!6750 = !DISubprogram(name: "perf_pmu_migrate_context", scope: !251, file: !251, line: 1113, type: !6751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{null, !3330, !50, !50}
!6753 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !6631, file: !6631, line: 82, type: !6754, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{!1533, !487, !6634}
!6756 = !{!6757, !6758}
!6757 = !DILocalVariable(name: "nr", arg: 1, scope: !6753, file: !6631, line: 82, type: !487)
!6758 = !DILocalVariable(name: "addr", arg: 2, scope: !6753, file: !6631, line: 82, type: !6634)
!6759 = !DILocation(line: 82, column: 53, scope: !6753)
!6760 = !DILocation(line: 82, column: 81, scope: !6753)
!6761 = !DILocation(line: 84, column: 2, scope: !6753)
!6762 = !DILocation(line: 84, column: 2, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6753, file: !6631, line: 84, column: 2)
!6764 = !DILocation(line: 85, column: 31, scope: !6753)
!6765 = !DILocation(line: 85, column: 38, scope: !6753)
!6766 = !DILocation(line: 85, column: 36, scope: !6753)
!6767 = !DILocation(line: 85, column: 2, scope: !6753)
!6768 = !DILocation(line: 86, column: 33, scope: !6753)
!6769 = !DILocation(line: 86, column: 37, scope: !6753)
!6770 = !DILocation(line: 86, column: 9, scope: !6753)
!6771 = !DILocation(line: 86, column: 2, scope: !6753)
!6772 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6361, file: !6361, line: 94, type: !6362, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6773)
!6773 = !{!6774, !6775}
!6774 = !DILocalVariable(name: "v", arg: 1, scope: !6772, file: !6361, line: 94, type: !6364)
!6775 = !DILocalVariable(name: "size", arg: 2, scope: !6772, file: !6361, line: 94, type: !63)
!6776 = !DILocation(line: 94, column: 79, scope: !6772)
!6777 = !DILocation(line: 94, column: 89, scope: !6772)
!6778 = !DILocation(line: 96, column: 20, scope: !6772)
!6779 = !DILocation(line: 96, column: 23, scope: !6772)
!6780 = !DILocation(line: 96, column: 2, scope: !6772)
!6781 = !DILocation(line: 97, column: 2, scope: !6772)
!6782 = !DILocation(line: 98, column: 1, scope: !6772)
!6783 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !6148, file: !6148, line: 160, type: !6754, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6784)
!6784 = !{!6785, !6786, !6787}
!6785 = !DILocalVariable(name: "nr", arg: 1, scope: !6783, file: !6148, line: 160, type: !487)
!6786 = !DILocalVariable(name: "addr", arg: 2, scope: !6783, file: !6148, line: 160, type: !6634)
!6787 = !DILocalVariable(name: "c", scope: !6788, file: !6148, line: 162, type: !1533)
!6788 = distinct !DILexicalBlock(scope: !6783, file: !6148, line: 162, column: 9)
!6789 = !DILocation(line: 160, column: 30, scope: !6783)
!6790 = !DILocation(line: 160, column: 58, scope: !6783)
!6791 = !DILocation(line: 162, column: 9, scope: !6788)
!6792 = !{i64 2148360631, i64 2148360670, i64 2148360691, i64 2148360728, i64 2148360751, i64 2148360760, i64 2148360863}
!6793 = !DILocation(line: 162, column: 9, scope: !6783)
!6794 = !DILocation(line: 162, column: 2, scope: !6783)
!6795 = distinct !DISubprogram(name: "find_next_bit", scope: !6583, file: !6583, line: 54, type: !6796, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6798)
!6796 = !DISubroutineType(types: !6797)
!6797 = !{!67, !471, !67, !67}
!6798 = !{!6799, !6800, !6801, !6802}
!6799 = !DILocalVariable(name: "addr", arg: 1, scope: !6795, file: !6583, line: 54, type: !471)
!6800 = !DILocalVariable(name: "size", arg: 2, scope: !6795, file: !6583, line: 54, type: !67)
!6801 = !DILocalVariable(name: "offset", arg: 3, scope: !6795, file: !6583, line: 55, type: !67)
!6802 = !DILocalVariable(name: "val", scope: !6803, file: !6583, line: 58, type: !67)
!6803 = distinct !DILexicalBlock(scope: !6804, file: !6583, line: 57, column: 31)
!6804 = distinct !DILexicalBlock(scope: !6795, file: !6583, line: 57, column: 6)
!6805 = !DILocation(line: 54, column: 50, scope: !6795)
!6806 = !DILocation(line: 54, column: 70, scope: !6795)
!6807 = !DILocation(line: 55, column: 22, scope: !6795)
!6808 = !DILocation(line: 57, column: 6, scope: !6804)
!6809 = !DILocation(line: 57, column: 6, scope: !6795)
!6810 = !DILocation(line: 58, column: 3, scope: !6803)
!6811 = !DILocation(line: 58, column: 17, scope: !6803)
!6812 = !DILocation(line: 60, column: 7, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6803, file: !6583, line: 60, column: 7)
!6814 = !DILocation(line: 60, column: 7, scope: !6803)
!6815 = !DILocation(line: 61, column: 11, scope: !6813)
!6816 = !DILocation(line: 61, column: 4, scope: !6813)
!6817 = !DILocation(line: 63, column: 10, scope: !6803)
!6818 = !DILocation(line: 63, column: 9, scope: !6803)
!6819 = !DILocation(line: 63, column: 17, scope: !6803)
!6820 = !DILocation(line: 63, column: 15, scope: !6803)
!6821 = !DILocation(line: 63, column: 7, scope: !6803)
!6822 = !DILocation(line: 64, column: 10, scope: !6803)
!6823 = !DILocation(line: 64, column: 16, scope: !6803)
!6824 = !DILocation(line: 64, column: 29, scope: !6803)
!6825 = !DILocation(line: 64, column: 3, scope: !6803)
!6826 = !DILocation(line: 65, column: 2, scope: !6804)
!6827 = !DILocation(line: 67, column: 24, scope: !6795)
!6828 = !DILocation(line: 67, column: 30, scope: !6795)
!6829 = !DILocation(line: 67, column: 36, scope: !6795)
!6830 = !DILocation(line: 67, column: 9, scope: !6795)
!6831 = !DILocation(line: 67, column: 2, scope: !6795)
!6832 = !DILocation(line: 68, column: 1, scope: !6795)
!6833 = !DISubprogram(name: "_find_next_bit", scope: !6583, file: !6583, line: 11, type: !6796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6834 = distinct !DISubprogram(name: "cstate_pmu_event_init", scope: !3, file: !3, line: 308, type: !3775, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6835)
!6835 = !{!6836, !6837, !6838, !6839, !6843, !6844, !6845, !6848, !6850, !6854, !6855, !6856, !6859}
!6836 = !DILocalVariable(name: "event", arg: 1, scope: !6834, file: !3, line: 308, type: !3313)
!6837 = !DILocalVariable(name: "cfg", scope: !6834, file: !3, line: 310, type: !688)
!6838 = !DILocalVariable(name: "cpu", scope: !6834, file: !3, line: 311, type: !50)
!6839 = !DILocalVariable(name: "_i", scope: !6840, file: !3, line: 326, type: !67)
!6840 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 326, column: 9)
!6841 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 323, column: 38)
!6842 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 323, column: 6)
!6843 = !DILocalVariable(name: "_s", scope: !6840, file: !3, line: 326, type: !50)
!6844 = !DILocalVariable(name: "_mask", scope: !6840, file: !3, line: 326, type: !67)
!6845 = !DILocalVariable(name: "__vpp_verify", scope: !6846, file: !3, line: 330, type: !1462)
!6846 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 330, column: 9)
!6847 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 330, column: 9)
!6848 = !DILocalVariable(name: "__ptr", scope: !6849, file: !3, line: 330, type: !67)
!6849 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 330, column: 9)
!6850 = !DILocalVariable(name: "_i", scope: !6851, file: !3, line: 335, type: !67)
!6851 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 335, column: 9)
!6852 = distinct !DILexicalBlock(scope: !6853, file: !3, line: 332, column: 44)
!6853 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 332, column: 13)
!6854 = !DILocalVariable(name: "_s", scope: !6851, file: !3, line: 335, type: !50)
!6855 = !DILocalVariable(name: "_mask", scope: !6851, file: !3, line: 335, type: !67)
!6856 = !DILocalVariable(name: "__vpp_verify", scope: !6857, file: !3, line: 339, type: !1462)
!6857 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 339, column: 9)
!6858 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 339, column: 9)
!6859 = !DILocalVariable(name: "__ptr", scope: !6860, file: !3, line: 339, type: !67)
!6860 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 339, column: 9)
!6861 = !DILocation(line: 308, column: 53, scope: !6834)
!6862 = !DILocation(line: 310, column: 2, scope: !6834)
!6863 = !DILocation(line: 310, column: 6, scope: !6834)
!6864 = !DILocation(line: 310, column: 12, scope: !6834)
!6865 = !DILocation(line: 310, column: 19, scope: !6834)
!6866 = !DILocation(line: 310, column: 24, scope: !6834)
!6867 = !DILocation(line: 311, column: 2, scope: !6834)
!6868 = !DILocation(line: 311, column: 6, scope: !6834)
!6869 = !DILocation(line: 313, column: 6, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 313, column: 6)
!6871 = !DILocation(line: 313, column: 13, scope: !6870)
!6872 = !DILocation(line: 313, column: 18, scope: !6870)
!6873 = !DILocation(line: 313, column: 26, scope: !6870)
!6874 = !DILocation(line: 313, column: 33, scope: !6870)
!6875 = !DILocation(line: 313, column: 38, scope: !6870)
!6876 = !DILocation(line: 313, column: 23, scope: !6870)
!6877 = !DILocation(line: 313, column: 6, scope: !6834)
!6878 = !DILocation(line: 314, column: 3, scope: !6870)
!6879 = !DILocation(line: 317, column: 6, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 317, column: 6)
!6881 = !DILocation(line: 317, column: 13, scope: !6880)
!6882 = !DILocation(line: 317, column: 18, scope: !6880)
!6883 = !DILocation(line: 317, column: 6, scope: !6834)
!6884 = !DILocation(line: 318, column: 3, scope: !6880)
!6885 = !DILocation(line: 320, column: 6, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 320, column: 6)
!6887 = !DILocation(line: 320, column: 13, scope: !6886)
!6888 = !DILocation(line: 320, column: 17, scope: !6886)
!6889 = !DILocation(line: 320, column: 6, scope: !6834)
!6890 = !DILocation(line: 321, column: 3, scope: !6886)
!6891 = !DILocation(line: 323, column: 6, scope: !6842)
!6892 = !DILocation(line: 323, column: 13, scope: !6842)
!6893 = !DILocation(line: 323, column: 17, scope: !6842)
!6894 = !DILocation(line: 323, column: 6, scope: !6834)
!6895 = !DILocation(line: 324, column: 7, scope: !6896)
!6896 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 324, column: 7)
!6897 = !DILocation(line: 324, column: 11, scope: !6896)
!6898 = !DILocation(line: 324, column: 7, scope: !6841)
!6899 = !DILocation(line: 325, column: 4, scope: !6896)
!6900 = !DILocation(line: 326, column: 9, scope: !6840)
!6901 = !DILocation(line: 326, column: 9, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6840, file: !3, line: 326, column: 9)
!6903 = !DILocation(line: 326, column: 9, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6840, file: !3, line: 326, column: 9)
!6905 = !DILocation(line: 326, column: 9, scope: !6841)
!6906 = !DILocation(line: 326, column: 7, scope: !6841)
!6907 = !DILocation(line: 327, column: 9, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 327, column: 7)
!6909 = !DILocation(line: 327, column: 31, scope: !6908)
!6910 = !DILocation(line: 327, column: 28, scope: !6908)
!6911 = !DILocation(line: 327, column: 25, scope: !6908)
!6912 = !DILocation(line: 327, column: 23, scope: !6908)
!6913 = !DILocation(line: 327, column: 7, scope: !6841)
!6914 = !DILocation(line: 328, column: 4, scope: !6908)
!6915 = !DILocation(line: 329, column: 35, scope: !6841)
!6916 = !DILocation(line: 329, column: 26, scope: !6841)
!6917 = !DILocation(line: 329, column: 40, scope: !6841)
!6918 = !DILocation(line: 329, column: 3, scope: !6841)
!6919 = !DILocation(line: 329, column: 10, scope: !6841)
!6920 = !DILocation(line: 329, column: 13, scope: !6841)
!6921 = !DILocation(line: 329, column: 24, scope: !6841)
!6922 = !DILocation(line: 330, column: 9, scope: !6847)
!6923 = !DILocation(line: 330, column: 9, scope: !6846)
!6924 = !DILocation(line: 330, column: 9, scope: !6849)
!6925 = !DILocation(line: 330, column: 9, scope: !6841)
!6926 = !DILocation(line: 330, column: 7, scope: !6841)
!6927 = !DILocation(line: 332, column: 2, scope: !6841)
!6928 = !DILocation(line: 332, column: 13, scope: !6853)
!6929 = !DILocation(line: 332, column: 20, scope: !6853)
!6930 = !DILocation(line: 332, column: 24, scope: !6853)
!6931 = !DILocation(line: 332, column: 13, scope: !6842)
!6932 = !DILocation(line: 333, column: 7, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 333, column: 7)
!6934 = !DILocation(line: 333, column: 11, scope: !6933)
!6935 = !DILocation(line: 333, column: 7, scope: !6852)
!6936 = !DILocation(line: 334, column: 4, scope: !6933)
!6937 = !DILocation(line: 335, column: 9, scope: !6851)
!6938 = !DILocation(line: 335, column: 9, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 335, column: 9)
!6940 = !DILocation(line: 335, column: 9, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 335, column: 9)
!6942 = !DILocation(line: 335, column: 9, scope: !6852)
!6943 = !DILocation(line: 335, column: 7, scope: !6852)
!6944 = !DILocation(line: 336, column: 9, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6852, file: !3, line: 336, column: 7)
!6946 = !DILocation(line: 336, column: 30, scope: !6945)
!6947 = !DILocation(line: 336, column: 27, scope: !6945)
!6948 = !DILocation(line: 336, column: 24, scope: !6945)
!6949 = !DILocation(line: 336, column: 22, scope: !6945)
!6950 = !DILocation(line: 336, column: 7, scope: !6852)
!6951 = !DILocation(line: 337, column: 4, scope: !6945)
!6952 = !DILocation(line: 338, column: 34, scope: !6852)
!6953 = !DILocation(line: 338, column: 26, scope: !6852)
!6954 = !DILocation(line: 338, column: 39, scope: !6852)
!6955 = !DILocation(line: 338, column: 3, scope: !6852)
!6956 = !DILocation(line: 338, column: 10, scope: !6852)
!6957 = !DILocation(line: 338, column: 13, scope: !6852)
!6958 = !DILocation(line: 338, column: 24, scope: !6852)
!6959 = !DILocation(line: 339, column: 9, scope: !6858)
!6960 = !DILocation(line: 339, column: 9, scope: !6857)
!6961 = !DILocation(line: 339, column: 9, scope: !6860)
!6962 = !DILocation(line: 339, column: 9, scope: !6852)
!6963 = !DILocation(line: 339, column: 7, scope: !6852)
!6964 = !DILocation(line: 341, column: 2, scope: !6852)
!6965 = !DILocation(line: 342, column: 3, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6853, file: !3, line: 341, column: 9)
!6967 = !DILocation(line: 345, column: 6, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 345, column: 6)
!6969 = !DILocation(line: 345, column: 13, scope: !6968)
!6970 = !DILocation(line: 345, column: 10, scope: !6968)
!6971 = !DILocation(line: 345, column: 6, scope: !6834)
!6972 = !DILocation(line: 346, column: 3, scope: !6968)
!6973 = !DILocation(line: 348, column: 15, scope: !6834)
!6974 = !DILocation(line: 348, column: 2, scope: !6834)
!6975 = !DILocation(line: 348, column: 9, scope: !6834)
!6976 = !DILocation(line: 348, column: 13, scope: !6834)
!6977 = !DILocation(line: 349, column: 21, scope: !6834)
!6978 = !DILocation(line: 349, column: 2, scope: !6834)
!6979 = !DILocation(line: 349, column: 9, scope: !6834)
!6980 = !DILocation(line: 349, column: 12, scope: !6834)
!6981 = !DILocation(line: 349, column: 19, scope: !6834)
!6982 = !DILocation(line: 350, column: 2, scope: !6834)
!6983 = !DILocation(line: 350, column: 9, scope: !6834)
!6984 = !DILocation(line: 350, column: 12, scope: !6834)
!6985 = !DILocation(line: 350, column: 16, scope: !6834)
!6986 = !DILocation(line: 351, column: 2, scope: !6834)
!6987 = !DILocation(line: 352, column: 1, scope: !6834)
!6988 = distinct !DISubprogram(name: "cstate_pmu_event_add", scope: !3, file: !3, line: 391, type: !3784, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6989)
!6989 = !{!6990, !6991}
!6990 = !DILocalVariable(name: "event", arg: 1, scope: !6988, file: !3, line: 391, type: !3313)
!6991 = !DILocalVariable(name: "mode", arg: 2, scope: !6988, file: !3, line: 391, type: !50)
!6992 = !DILocation(line: 391, column: 52, scope: !6988)
!6993 = !DILocation(line: 391, column: 63, scope: !6988)
!6994 = !DILocation(line: 393, column: 6, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !6988, file: !3, line: 393, column: 6)
!6996 = !DILocation(line: 393, column: 11, scope: !6995)
!6997 = !DILocation(line: 393, column: 6, scope: !6988)
!6998 = !DILocation(line: 394, column: 26, scope: !6995)
!6999 = !DILocation(line: 394, column: 33, scope: !6995)
!7000 = !DILocation(line: 394, column: 3, scope: !6995)
!7001 = !DILocation(line: 396, column: 2, scope: !6988)
!7002 = distinct !DISubprogram(name: "cstate_pmu_event_del", scope: !3, file: !3, line: 386, type: !3788, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7003)
!7003 = !{!7004, !7005}
!7004 = !DILocalVariable(name: "event", arg: 1, scope: !7002, file: !3, line: 386, type: !3313)
!7005 = !DILocalVariable(name: "mode", arg: 2, scope: !7002, file: !3, line: 386, type: !50)
!7006 = !DILocation(line: 386, column: 53, scope: !7002)
!7007 = !DILocation(line: 386, column: 64, scope: !7002)
!7008 = !DILocation(line: 388, column: 24, scope: !7002)
!7009 = !DILocation(line: 388, column: 2, scope: !7002)
!7010 = !DILocation(line: 389, column: 1, scope: !7002)
!7011 = distinct !DISubprogram(name: "cstate_pmu_event_start", scope: !3, file: !3, line: 376, type: !3788, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7012)
!7012 = !{!7013, !7014}
!7013 = !DILocalVariable(name: "event", arg: 1, scope: !7011, file: !3, line: 376, type: !3313)
!7014 = !DILocalVariable(name: "mode", arg: 2, scope: !7011, file: !3, line: 376, type: !50)
!7015 = !DILocation(line: 376, column: 55, scope: !7011)
!7016 = !DILocation(line: 376, column: 66, scope: !7011)
!7017 = !DILocation(line: 378, column: 2, scope: !7011)
!7018 = !DILocation(line: 379, column: 1, scope: !7011)
!7019 = distinct !DISubprogram(name: "cstate_pmu_event_stop", scope: !3, file: !3, line: 381, type: !3788, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7020)
!7020 = !{!7021, !7022}
!7021 = !DILocalVariable(name: "event", arg: 1, scope: !7019, file: !3, line: 381, type: !3313)
!7022 = !DILocalVariable(name: "mode", arg: 2, scope: !7019, file: !3, line: 381, type: !50)
!7023 = !DILocation(line: 381, column: 54, scope: !7019)
!7024 = !DILocation(line: 381, column: 65, scope: !7019)
!7025 = !DILocation(line: 383, column: 26, scope: !7019)
!7026 = !DILocation(line: 383, column: 2, scope: !7019)
!7027 = !DILocation(line: 384, column: 1, scope: !7019)
!7028 = distinct !DISubprogram(name: "cstate_pmu_event_update", scope: !3, file: !3, line: 362, type: !3794, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7029)
!7029 = !{!7030, !7031, !7033, !7034}
!7030 = !DILocalVariable(name: "event", arg: 1, scope: !7028, file: !3, line: 362, type: !3313)
!7031 = !DILocalVariable(name: "hwc", scope: !7028, file: !3, line: 364, type: !7032)
!7032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!7033 = !DILocalVariable(name: "prev_raw_count", scope: !7028, file: !3, line: 365, type: !688)
!7034 = !DILocalVariable(name: "new_raw_count", scope: !7028, file: !3, line: 365, type: !688)
!7035 = !DILocation(line: 362, column: 56, scope: !7028)
!7036 = !DILocation(line: 364, column: 2, scope: !7028)
!7037 = !DILocation(line: 364, column: 24, scope: !7028)
!7038 = !DILocation(line: 364, column: 31, scope: !7028)
!7039 = !DILocation(line: 364, column: 38, scope: !7028)
!7040 = !DILocation(line: 365, column: 2, scope: !7028)
!7041 = !DILocation(line: 365, column: 6, scope: !7028)
!7042 = !DILocation(line: 365, column: 22, scope: !7028)
!7043 = !DILocation(line: 367, column: 19, scope: !7028)
!7044 = !DILocation(line: 367, column: 17, scope: !7028)
!7045 = !DILocation(line: 368, column: 2, scope: !7028)
!7046 = !DILocation(line: 369, column: 43, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !7028, file: !3, line: 368, column: 5)
!7048 = !DILocation(line: 369, column: 19, scope: !7047)
!7049 = !DILocation(line: 369, column: 17, scope: !7047)
!7050 = !DILocation(line: 370, column: 2, scope: !7047)
!7051 = !DILocation(line: 370, column: 33, scope: !7028)
!7052 = !DILocation(line: 370, column: 38, scope: !7028)
!7053 = !DILocation(line: 371, column: 28, scope: !7028)
!7054 = !DILocation(line: 370, column: 12, scope: !7028)
!7055 = !DILocation(line: 370, column: 11, scope: !7028)
!7056 = distinct !{!7056, !7045, !7057, !6745, !6746}
!7057 = !DILocation(line: 371, column: 42, scope: !7028)
!7058 = !DILocation(line: 373, column: 2, scope: !7028)
!7059 = !DILocation(line: 374, column: 1, scope: !7028)
!7060 = distinct !DISubprogram(name: "__cstate_core_event_show", scope: !3, file: !3, line: 196, type: !5901, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7061)
!7061 = !{!7062, !7063, !7064}
!7062 = !DILocalVariable(name: "dev", arg: 1, scope: !7060, file: !3, line: 196, type: !3336)
!7063 = !DILocalVariable(name: "attr", arg: 2, scope: !7060, file: !3, line: 196, type: !5903)
!7064 = !DILocalVariable(name: "page", arg: 3, scope: !7060, file: !3, line: 196, type: !542)
!7065 = !DILocation(line: 196, column: 1, scope: !7060)
!7066 = !DILocation(line: 196, column: 1, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7060, file: !3, line: 196, column: 1)
!7068 = !DISubprogram(name: "sprintf", scope: !7069, file: !7069, line: 10, type: !7070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7069 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7070 = !DISubroutineType(types: !7071)
!7071 = !{!50, !542, !44, null}
!7072 = distinct !DISubprogram(name: "cstate_get_attr_cpumask", scope: !3, file: !3, line: 294, type: !5901, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7073)
!7073 = !{!7074, !7075, !7076, !7077}
!7074 = !DILocalVariable(name: "dev", arg: 1, scope: !7072, file: !3, line: 294, type: !3336)
!7075 = !DILocalVariable(name: "attr", arg: 2, scope: !7072, file: !3, line: 295, type: !5903)
!7076 = !DILocalVariable(name: "buf", arg: 3, scope: !7072, file: !3, line: 296, type: !542)
!7077 = !DILocalVariable(name: "pmu", scope: !7072, file: !3, line: 298, type: !3330)
!7078 = !DILocation(line: 294, column: 55, scope: !7072)
!7079 = !DILocation(line: 295, column: 37, scope: !7072)
!7080 = !DILocation(line: 296, column: 18, scope: !7072)
!7081 = !DILocation(line: 298, column: 2, scope: !7072)
!7082 = !DILocation(line: 298, column: 14, scope: !7072)
!7083 = !DILocation(line: 298, column: 36, scope: !7072)
!7084 = !DILocation(line: 298, column: 20, scope: !7072)
!7085 = !DILocation(line: 300, column: 6, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7072, file: !3, line: 300, column: 6)
!7087 = !DILocation(line: 300, column: 10, scope: !7086)
!7088 = !DILocation(line: 300, column: 6, scope: !7072)
!7089 = !DILocation(line: 301, column: 40, scope: !7086)
!7090 = !DILocation(line: 301, column: 10, scope: !7086)
!7091 = !DILocation(line: 301, column: 3, scope: !7086)
!7092 = !DILocation(line: 302, column: 11, scope: !7093)
!7093 = distinct !DILexicalBlock(scope: !7086, file: !3, line: 302, column: 11)
!7094 = !DILocation(line: 302, column: 15, scope: !7093)
!7095 = !DILocation(line: 302, column: 11, scope: !7086)
!7096 = !DILocation(line: 303, column: 40, scope: !7093)
!7097 = !DILocation(line: 303, column: 10, scope: !7093)
!7098 = !DILocation(line: 303, column: 3, scope: !7093)
!7099 = !DILocation(line: 305, column: 3, scope: !7093)
!7100 = !DILocation(line: 306, column: 1, scope: !7072)
!7101 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !204, file: !204, line: 916, type: !7102, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7104)
!7102 = !DISubroutineType(types: !7103)
!7103 = !{!48, !3356}
!7104 = !{!7105}
!7105 = !DILocalVariable(name: "dev", arg: 1, scope: !7101, file: !204, line: 916, type: !3356)
!7106 = !DILocation(line: 916, column: 58, scope: !7101)
!7107 = !DILocation(line: 918, column: 9, scope: !7101)
!7108 = !DILocation(line: 918, column: 14, scope: !7101)
!7109 = !DILocation(line: 918, column: 2, scope: !7101)
!7110 = distinct !DISubprogram(name: "cpumap_print_to_pagebuf", scope: !475, file: !475, line: 1167, type: !7111, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7113)
!7111 = !DISubroutineType(types: !7112)
!7112 = !{!574, !1533, !542, !6557}
!7113 = !{!7114, !7115, !7116}
!7114 = !DILocalVariable(name: "list", arg: 1, scope: !7110, file: !475, line: 1167, type: !1533)
!7115 = !DILocalVariable(name: "buf", arg: 2, scope: !7110, file: !475, line: 1167, type: !542)
!7116 = !DILocalVariable(name: "mask", arg: 3, scope: !7110, file: !475, line: 1167, type: !6557)
!7117 = !DILocation(line: 1167, column: 30, scope: !7110)
!7118 = !DILocation(line: 1167, column: 42, scope: !7110)
!7119 = !DILocation(line: 1167, column: 69, scope: !7110)
!7120 = !DILocation(line: 1169, column: 33, scope: !7110)
!7121 = !DILocation(line: 1169, column: 39, scope: !7110)
!7122 = !DILocation(line: 1169, column: 44, scope: !7110)
!7123 = !DILocation(line: 1170, column: 11, scope: !7110)
!7124 = !DILocation(line: 1169, column: 9, scope: !7110)
!7125 = !DILocation(line: 1169, column: 2, scope: !7110)
!7126 = !DISubprogram(name: "bitmap_print_to_pagebuf", scope: !7127, file: !7127, line: 232, type: !7128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7127 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!7128 = !DISubroutineType(types: !7129)
!7129 = !{!50, !1533, !542, !471, !50}
!7130 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !7131, file: !7131, line: 36, type: !7132, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7134)
!7131 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!7132 = !DISubroutineType(types: !7133)
!7133 = !{!67, !67, !67}
!7134 = !{!7135, !7136, !7137}
!7135 = !DILocalVariable(name: "index", arg: 1, scope: !7130, file: !7131, line: 36, type: !67)
!7136 = !DILocalVariable(name: "size", arg: 2, scope: !7130, file: !7131, line: 37, type: !67)
!7137 = !DILocalVariable(name: "mask", scope: !7130, file: !7131, line: 39, type: !67)
!7138 = !DILocation(line: 36, column: 67, scope: !7130)
!7139 = !DILocation(line: 37, column: 17, scope: !7130)
!7140 = !DILocation(line: 39, column: 2, scope: !7130)
!7141 = !DILocation(line: 39, column: 16, scope: !7130)
!7142 = !DILocation(line: 43, column: 9, scope: !7130)
!7143 = !DILocation(line: 43, column: 20, scope: !7130)
!7144 = !DILocation(line: 41, column: 2, scope: !7130)
!7145 = !{i64 267609}
!7146 = !DILocation(line: 45, column: 9, scope: !7130)
!7147 = !DILocation(line: 46, column: 1, scope: !7130)
!7148 = !DILocation(line: 45, column: 2, scope: !7130)
!7149 = distinct !DISubprogram(name: "atomic_long_set", scope: !7150, file: !7150, line: 3193, type: !7151, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7153)
!7150 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7151 = !DISubroutineType(types: !7152)
!7152 = !{null, !4983, !487}
!7153 = !{!7154, !7155}
!7154 = !DILocalVariable(name: "v", arg: 1, scope: !7149, file: !7150, line: 3193, type: !4983)
!7155 = !DILocalVariable(name: "i", arg: 2, scope: !7149, file: !7150, line: 3193, type: !487)
!7156 = !DILocation(line: 3193, column: 32, scope: !7149)
!7157 = !DILocation(line: 3193, column: 40, scope: !7149)
!7158 = !DILocation(line: 3195, column: 26, scope: !7149)
!7159 = !DILocation(line: 3195, column: 2, scope: !7149)
!7160 = !DILocation(line: 3196, column: 22, scope: !7149)
!7161 = !DILocation(line: 3196, column: 25, scope: !7149)
!7162 = !DILocation(line: 3196, column: 2, scope: !7149)
!7163 = !DILocation(line: 3197, column: 1, scope: !7149)
!7164 = distinct !DISubprogram(name: "cstate_pmu_read_counter", scope: !3, file: !3, line: 354, type: !7165, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7167)
!7165 = !DISubroutineType(types: !7166)
!7166 = !{!688, !3313}
!7167 = !{!7168, !7169}
!7168 = !DILocalVariable(name: "event", arg: 1, scope: !7164, file: !3, line: 354, type: !3313)
!7169 = !DILocalVariable(name: "val", scope: !7164, file: !3, line: 356, type: !688)
!7170 = !DILocation(line: 354, column: 62, scope: !7164)
!7171 = !DILocation(line: 356, column: 2, scope: !7164)
!7172 = !DILocation(line: 356, column: 6, scope: !7164)
!7173 = !DILocation(line: 358, column: 2, scope: !7164)
!7174 = !DILocation(line: 359, column: 9, scope: !7164)
!7175 = !DILocation(line: 360, column: 1, scope: !7164)
!7176 = !DILocation(line: 359, column: 2, scope: !7164)
!7177 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !902, file: !902, line: 76, type: !7151, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7178)
!7178 = !{!7179, !7180}
!7179 = !DILocalVariable(name: "v", arg: 1, scope: !7177, file: !902, line: 76, type: !4983)
!7180 = !DILocalVariable(name: "i", arg: 2, scope: !7177, file: !902, line: 76, type: !487)
!7181 = !DILocation(line: 76, column: 36, scope: !7177)
!7182 = !DILocation(line: 76, column: 44, scope: !7177)
!7183 = !DILocation(line: 79, column: 19, scope: !7177)
!7184 = !DILocation(line: 79, column: 22, scope: !7177)
!7185 = !DILocation(line: 79, column: 2, scope: !7177)
!7186 = !DILocation(line: 83, column: 1, scope: !7177)
!7187 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !7188, file: !7188, line: 2600, type: !7189, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7192)
!7188 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7189 = !DISubroutineType(types: !7190)
!7190 = !{null, !7191, !907}
!7191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!7192 = !{!7193, !7194}
!7193 = !DILocalVariable(name: "v", arg: 1, scope: !7187, file: !7188, line: 2600, type: !7191)
!7194 = !DILocalVariable(name: "i", arg: 2, scope: !7187, file: !7188, line: 2600, type: !907)
!7195 = !DILocation(line: 2600, column: 30, scope: !7187)
!7196 = !DILocation(line: 2600, column: 37, scope: !7187)
!7197 = !DILocation(line: 2602, column: 20, scope: !7187)
!7198 = !DILocation(line: 2602, column: 23, scope: !7187)
!7199 = !DILocation(line: 2602, column: 2, scope: !7187)
!7200 = !DILocation(line: 2603, column: 1, scope: !7187)
!7201 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !7202, file: !7202, line: 18, type: !7189, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7203)
!7202 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7203 = !{!7204, !7205}
!7204 = !DILocalVariable(name: "v", arg: 1, scope: !7201, file: !7202, line: 18, type: !7191)
!7205 = !DILocalVariable(name: "i", arg: 2, scope: !7201, file: !7202, line: 18, type: !907)
!7206 = !DILocation(line: 18, column: 59, scope: !7201)
!7207 = !DILocation(line: 18, column: 66, scope: !7201)
!7208 = !DILocation(line: 20, column: 2, scope: !7201)
!7209 = !DILocation(line: 20, column: 2, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !7201, file: !7202, line: 20, column: 2)
!7211 = !DILocation(line: 21, column: 1, scope: !7201)
!7212 = distinct !DISubprogram(name: "native_read_msr", scope: !7213, file: !7213, line: 114, type: !7214, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7216)
!7213 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!7214 = !DISubroutineType(types: !7215)
!7215 = !{!690, !6}
!7216 = !{!7217, !7218}
!7217 = !DILocalVariable(name: "msr", arg: 1, scope: !7212, file: !7213, line: 114, type: !6)
!7218 = !DILocalVariable(name: "val", scope: !7212, file: !7213, line: 116, type: !690)
!7219 = !DILocation(line: 114, column: 63, scope: !7212)
!7220 = !DILocation(line: 116, column: 2, scope: !7212)
!7221 = !DILocation(line: 116, column: 21, scope: !7212)
!7222 = !DILocation(line: 118, column: 16, scope: !7212)
!7223 = !DILocation(line: 118, column: 8, scope: !7212)
!7224 = !DILocation(line: 118, column: 6, scope: !7212)
!7225 = !DILocation(line: 120, column: 6, scope: !7226)
!7226 = distinct !DILexicalBlock(scope: !7212, file: !7213, line: 120, column: 6)
!7227 = !DILocation(line: 120, column: 6, scope: !7212)
!7228 = !DILocation(line: 121, column: 21, scope: !7226)
!7229 = !DILocation(line: 121, column: 26, scope: !7226)
!7230 = !DILocation(line: 121, column: 3, scope: !7226)
!7231 = !DILocation(line: 123, column: 9, scope: !7212)
!7232 = !DILocation(line: 124, column: 1, scope: !7212)
!7233 = !DILocation(line: 123, column: 2, scope: !7212)
!7234 = distinct !DISubprogram(name: "__rdmsr", scope: !7213, file: !7213, line: 80, type: !7214, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7235)
!7235 = !{!7236, !7237, !7238}
!7236 = !DILocalVariable(name: "msr", arg: 1, scope: !7234, file: !7213, line: 80, type: !6)
!7237 = !DILocalVariable(name: "low", scope: !7234, file: !7213, line: 82, type: !67)
!7238 = !DILocalVariable(name: "high", scope: !7234, file: !7213, line: 82, type: !67)
!7239 = !DILocation(line: 80, column: 64, scope: !7234)
!7240 = !DILocation(line: 82, column: 2, scope: !7234)
!7241 = !DILocation(line: 87, column: 45, scope: !7234)
!7242 = !DILocation(line: 84, column: 2, scope: !7234)
!7243 = !{i64 1132568, i64 1132589, i64 2149352904, i64 2149352948, i64 2149352971, i64 2149353004, i64 2149353035, i64 2149353074}
!7244 = !DILocation(line: 89, column: 9, scope: !7234)
!7245 = !DILocation(line: 90, column: 1, scope: !7234)
!7246 = !DILocation(line: 89, column: 2, scope: !7234)
!7247 = distinct !DISubprogram(name: "static_key_false", scope: !5769, file: !5769, line: 205, type: !7248, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7262)
!7248 = !DISubroutineType(types: !7249)
!7249 = !{!1533, !7250}
!7250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7251, size: 64)
!7251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !5769, line: 85, size: 128, elements: !7252)
!7252 = !{!7253, !7254}
!7253 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7251, file: !5769, line: 86, baseType: !77, size: 32)
!7254 = !DIDerivedType(tag: DW_TAG_member, scope: !7251, file: !5769, line: 101, baseType: !7255, size: 64, offset: 64)
!7255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7251, file: !5769, line: 101, size: 64, elements: !7256)
!7256 = !{!7257, !7258, !7259}
!7257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7255, file: !5769, line: 102, baseType: !67, size: 64)
!7258 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7255, file: !5769, line: 103, baseType: !5767, size: 64)
!7259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7255, file: !5769, line: 104, baseType: !7260, size: 64)
!7260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7261, size: 64)
!7261 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !5769, line: 104, flags: DIFlagFwdDecl)
!7262 = !{!7263}
!7263 = !DILocalVariable(name: "key", arg: 1, scope: !7247, file: !5769, line: 205, type: !7250)
!7264 = !DILocation(line: 205, column: 65, scope: !7247)
!7265 = !DILocation(line: 207, column: 28, scope: !7247)
!7266 = !DILocation(line: 207, column: 9, scope: !7247)
!7267 = !DILocation(line: 207, column: 2, scope: !7247)
!7268 = !DISubprogram(name: "do_trace_read_msr", scope: !7213, file: !7213, line: 65, type: !7269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7269 = !DISubroutineType(types: !7270)
!7270 = !{null, !6, !688, !50}
!7271 = distinct !DISubprogram(name: "arch_static_branch", scope: !7272, file: !7272, line: 25, type: !7273, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7275)
!7272 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7273 = !DISubroutineType(types: !7274)
!7274 = !{!1533, !7250, !1533}
!7275 = !{!7276, !7277, !7278}
!7276 = !DILocalVariable(name: "key", arg: 1, scope: !7271, file: !7272, line: 25, type: !7250)
!7277 = !DILocalVariable(name: "branch", arg: 2, scope: !7271, file: !7272, line: 25, type: !1533)
!7278 = !DILabel(scope: !7271, name: "l_yes", file: !7272, line: 33)
!7279 = !DILocation(line: 25, column: 67, scope: !7271)
!7280 = !DILocation(line: 25, column: 77, scope: !7271)
!7281 = !DILocation(line: 30, column: 13, scope: !7271)
!7282 = !DILocation(line: 30, column: 28, scope: !7271)
!7283 = !DILocation(line: 30, column: 26, scope: !7271)
!7284 = !DILocation(line: 27, column: 2, scope: !7271)
!7285 = !{i64 662867, i64 662911, i64 2148147594, i64 2148147615, i64 2148147641, i64 2148147674, i64 2148147708, i64 2148147732}
!7286 = !DILocation(line: 32, column: 2, scope: !7271)
!7287 = !DILocation(line: 33, column: 1, scope: !7271)
!7288 = !DILocation(line: 34, column: 2, scope: !7271)
!7289 = !DILocation(line: 35, column: 1, scope: !7271)
!7290 = distinct !DISubprogram(name: "atomic_long_read", scope: !7150, file: !7150, line: 3158, type: !7291, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7295)
!7291 = !DISubroutineType(types: !7292)
!7292 = !{!487, !7293}
!7293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7294, size: 64)
!7294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!7295 = !{!7296}
!7296 = !DILocalVariable(name: "v", arg: 1, scope: !7290, file: !7150, line: 3158, type: !7293)
!7297 = !DILocation(line: 3158, column: 39, scope: !7290)
!7298 = !DILocation(line: 3160, column: 25, scope: !7290)
!7299 = !DILocation(line: 3160, column: 2, scope: !7290)
!7300 = !DILocation(line: 3161, column: 30, scope: !7290)
!7301 = !DILocation(line: 3161, column: 9, scope: !7290)
!7302 = !DILocation(line: 3161, column: 2, scope: !7290)
!7303 = distinct !DISubprogram(name: "local64_try_cmpxchg", scope: !3863, file: !3863, line: 50, type: !7304, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7307)
!7304 = !DISubroutineType(types: !7305)
!7305 = !{!1533, !7306, !5808, !907}
!7306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!7307 = !{!7308, !7309, !7310}
!7308 = !DILocalVariable(name: "l", arg: 1, scope: !7303, file: !3863, line: 50, type: !7306)
!7309 = !DILocalVariable(name: "old", arg: 2, scope: !7303, file: !3863, line: 50, type: !5808)
!7310 = !DILocalVariable(name: "new", arg: 3, scope: !7303, file: !3863, line: 50, type: !907)
!7311 = !DILocation(line: 50, column: 51, scope: !7303)
!7312 = !DILocation(line: 50, column: 59, scope: !7303)
!7313 = !DILocation(line: 50, column: 68, scope: !7303)
!7314 = !DILocation(line: 52, column: 28, scope: !7303)
!7315 = !DILocation(line: 52, column: 31, scope: !7303)
!7316 = !DILocation(line: 52, column: 42, scope: !7303)
!7317 = !DILocation(line: 52, column: 47, scope: !7303)
!7318 = !DILocation(line: 52, column: 9, scope: !7303)
!7319 = !DILocation(line: 52, column: 2, scope: !7303)
!7320 = distinct !DISubprogram(name: "local_add", scope: !3122, file: !3122, line: 31, type: !7321, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7324)
!7321 = !DISubroutineType(types: !7322)
!7322 = !{null, !487, !7323}
!7323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!7324 = !{!7325, !7326}
!7325 = !DILocalVariable(name: "i", arg: 1, scope: !7320, file: !3122, line: 31, type: !487)
!7326 = !DILocalVariable(name: "l", arg: 2, scope: !7320, file: !3122, line: 31, type: !7323)
!7327 = !DILocation(line: 31, column: 35, scope: !7320)
!7328 = !DILocation(line: 31, column: 47, scope: !7320)
!7329 = !DILocation(line: 34, column: 16, scope: !7320)
!7330 = !DILocation(line: 34, column: 19, scope: !7320)
!7331 = !DILocation(line: 34, column: 21, scope: !7320)
!7332 = !DILocation(line: 35, column: 16, scope: !7320)
!7333 = !DILocation(line: 33, column: 2, scope: !7320)
!7334 = !{i64 2154737747}
!7335 = !DILocation(line: 36, column: 1, scope: !7320)
!7336 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !902, file: !902, line: 35, type: !7291, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7337)
!7337 = !{!7338}
!7338 = !DILocalVariable(name: "v", arg: 1, scope: !7336, file: !902, line: 35, type: !7293)
!7339 = !DILocation(line: 35, column: 43, scope: !7336)
!7340 = !DILocation(line: 38, column: 27, scope: !7336)
!7341 = !DILocation(line: 38, column: 9, scope: !7336)
!7342 = !DILocation(line: 38, column: 2, scope: !7336)
!7343 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !7188, file: !7188, line: 2554, type: !7344, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7348)
!7344 = !DISubroutineType(types: !7345)
!7345 = !{!907, !7346}
!7346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7347, size: 64)
!7347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!7348 = !{!7349}
!7349 = !DILocalVariable(name: "v", arg: 1, scope: !7343, file: !7188, line: 2554, type: !7346)
!7350 = !DILocation(line: 2554, column: 37, scope: !7343)
!7351 = !DILocation(line: 2556, column: 28, scope: !7343)
!7352 = !DILocation(line: 2556, column: 9, scope: !7343)
!7353 = !DILocation(line: 2556, column: 2, scope: !7343)
!7354 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !7202, file: !7202, line: 13, type: !7344, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7355)
!7355 = !{!7356}
!7356 = !DILocalVariable(name: "v", arg: 1, scope: !7354, file: !7202, line: 13, type: !7346)
!7357 = !DILocation(line: 13, column: 65, scope: !7354)
!7358 = !DILocation(line: 15, column: 9, scope: !7354)
!7359 = !DILocation(line: 15, column: 2, scope: !7354)
!7360 = distinct !DISubprogram(name: "local_try_cmpxchg", scope: !3122, file: !3122, line: 128, type: !7361, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7363)
!7361 = !DISubroutineType(types: !7362)
!7362 = !{!1533, !7323, !5807, !487}
!7363 = !{!7364, !7365, !7366, !7367, !7369, !7370, !7372, !7373, !7374, !7375}
!7364 = !DILocalVariable(name: "l", arg: 1, scope: !7360, file: !3122, line: 128, type: !7323)
!7365 = !DILocalVariable(name: "old", arg: 2, scope: !7360, file: !3122, line: 128, type: !5807)
!7366 = !DILocalVariable(name: "new", arg: 3, scope: !7360, file: !3122, line: 128, type: !487)
!7367 = !DILocalVariable(name: "__ai_ptr", scope: !7368, file: !3122, line: 130, type: !5808)
!7368 = distinct !DILexicalBlock(scope: !7360, file: !3122, line: 130, column: 9)
!7369 = !DILocalVariable(name: "__ai_oldp", scope: !7368, file: !3122, line: 130, type: !5808)
!7370 = !DILocalVariable(name: "success", scope: !7371, file: !3122, line: 130, type: !1533)
!7371 = distinct !DILexicalBlock(scope: !7368, file: !3122, line: 130, column: 9)
!7372 = !DILocalVariable(name: "_old", scope: !7371, file: !3122, line: 130, type: !5808)
!7373 = !DILocalVariable(name: "__old", scope: !7371, file: !3122, line: 130, type: !907)
!7374 = !DILocalVariable(name: "__new", scope: !7371, file: !3122, line: 130, type: !907)
!7375 = !DILocalVariable(name: "__ptr", scope: !7371, file: !3122, line: 130, type: !5809)
!7376 = !DILocation(line: 128, column: 47, scope: !7360)
!7377 = !DILocation(line: 128, column: 56, scope: !7360)
!7378 = !DILocation(line: 128, column: 66, scope: !7360)
!7379 = !DILocation(line: 130, column: 9, scope: !7368)
!7380 = !DILocation(line: 130, column: 9, scope: !7371)
!7381 = !{i64 2154748028, i64 2154748222}
!7382 = !DILocation(line: 130, column: 9, scope: !7383)
!7383 = distinct !DILexicalBlock(scope: !7371, file: !3122, line: 130, column: 9)
!7384 = !DILocation(line: 130, column: 9, scope: !7360)
!7385 = !DILocation(line: 130, column: 2, scope: !7360)
!7386 = distinct !DISubprogram(name: "instrument_read_write", scope: !6361, file: !6361, line: 52, type: !6362, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7387)
!7387 = !{!7388, !7389}
!7388 = !DILocalVariable(name: "v", arg: 1, scope: !7386, file: !6361, line: 52, type: !6364)
!7389 = !DILocalVariable(name: "size", arg: 2, scope: !7386, file: !6361, line: 52, type: !63)
!7390 = !DILocation(line: 52, column: 72, scope: !7386)
!7391 = !DILocation(line: 52, column: 82, scope: !7386)
!7392 = !DILocation(line: 54, column: 20, scope: !7386)
!7393 = !DILocation(line: 54, column: 23, scope: !7386)
!7394 = !DILocation(line: 54, column: 2, scope: !7386)
!7395 = !DILocation(line: 55, column: 2, scope: !7386)
!7396 = !DILocation(line: 56, column: 1, scope: !7386)
!7397 = distinct !DISubprogram(name: "__cstate_pkg_event_show", scope: !3, file: !3, line: 275, type: !5901, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7398)
!7398 = !{!7399, !7400, !7401}
!7399 = !DILocalVariable(name: "dev", arg: 1, scope: !7397, file: !3, line: 275, type: !3336)
!7400 = !DILocalVariable(name: "attr", arg: 2, scope: !7397, file: !3, line: 275, type: !5903)
!7401 = !DILocalVariable(name: "page", arg: 3, scope: !7397, file: !3, line: 275, type: !542)
!7402 = !DILocation(line: 275, column: 1, scope: !7397)
!7403 = !DILocation(line: 275, column: 1, scope: !7404)
!7404 = distinct !DILexicalBlock(scope: !7397, file: !3, line: 275, column: 1)
!7405 = distinct !DISubprogram(name: "cpuhp_remove_state_nocalls", scope: !268, file: !268, line: 454, type: !7406, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7408)
!7406 = !DISubroutineType(types: !7407)
!7407 = !{null, !267}
!7408 = !{!7409}
!7409 = !DILocalVariable(name: "state", arg: 1, scope: !7405, file: !268, line: 454, type: !267)
!7410 = !DILocation(line: 454, column: 64, scope: !7405)
!7411 = !DILocation(line: 456, column: 23, scope: !7405)
!7412 = !DILocation(line: 456, column: 2, scope: !7405)
!7413 = !DILocation(line: 457, column: 1, scope: !7405)
!7414 = !DISubprogram(name: "perf_pmu_unregister", scope: !251, file: !251, line: 1081, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7415 = !DISubprogram(name: "__cpuhp_remove_state", scope: !268, file: !268, line: 434, type: !7416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7416 = !DISubroutineType(types: !7417)
!7417 = !{null, !267, !1533}
