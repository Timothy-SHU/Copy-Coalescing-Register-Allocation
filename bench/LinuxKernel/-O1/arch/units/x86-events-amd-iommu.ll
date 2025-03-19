; ModuleID = 'arch/x86/events/amd/iommu.c'
source_filename = "arch/x86/events/amd/iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_iommu__318_489_amd_iommu_pc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_iommu__318_489_amd_iommu_pc_init6:\09\09\09"
module asm ".long\09__initstub__kmod_iommu__318_489_amd_iommu_pc_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.amd_iommu_event_desc = type { %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.perf_amd_iommu = type { %struct.list_head, %struct.pmu, ptr, [16 x i8], i8, i8, i64, %struct.raw_spinlock }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i64, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i64, %struct.irq_work, %struct.callback_head, i32, %struct.rcuwait, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i64, ptr, ptr, %struct.callback_head, ptr, i64, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.13, i64, i64, i64, %union.anon.14, i32, %union.anon.15, %union.anon.16, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64, i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%struct.hw_perf_event = type { %union.anon.18, ptr, ptr, i64, i32, %struct.local64_t, i64, %union.anon.25, i64, i64, i64, i64 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { i64, %struct.local64_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.anon.24 = type { i8, i8, i16, i64, i64 }

@__UNIQUE_ID___addressable___initstub__kmod_iommu__318_489_amd_iommu_pc_init6319 = internal global ptr @__initstub__kmod_iommu__318_489_amd_iommu_pc_init6, section ".discard.addressable", align 8, !dbg !0
@amd_iommu_events_group = internal global %struct.attribute_group { ptr @.str.70, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5827
@iommu_cpumask = internal global %struct.cpumask zeroinitializer, align 8, !dbg !5829
@amd_iommu_v2_event_descs = internal global [25 x %struct.amd_iommu_event_desc] [%struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.1 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.3 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.5 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.7 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.9 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.11 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.13 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.15 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.17 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.19 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.21 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.23 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.25 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.27 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.29 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.31 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.33 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.35 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.37 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.39 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.41 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.43 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.45 }, %struct.amd_iommu_event_desc { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @_iommu_event_show, ptr null }, ptr @.str.47 }, %struct.amd_iommu_event_desc zeroinitializer], align 16, !dbg !5725
@.str = private unnamed_addr constant [17 x i8] c"mem_pass_untrans\00", align 1, !dbg !5608
@.str.1 = private unnamed_addr constant [13 x i8] c"csource=0x01\00", align 1, !dbg !5613
@.str.2 = private unnamed_addr constant [18 x i8] c"mem_pass_pretrans\00", align 1, !dbg !5618
@.str.3 = private unnamed_addr constant [13 x i8] c"csource=0x02\00", align 1, !dbg !5623
@.str.4 = private unnamed_addr constant [14 x i8] c"mem_pass_excl\00", align 1, !dbg !5625
@.str.5 = private unnamed_addr constant [13 x i8] c"csource=0x03\00", align 1, !dbg !5628
@.str.6 = private unnamed_addr constant [17 x i8] c"mem_target_abort\00", align 1, !dbg !5630
@.str.7 = private unnamed_addr constant [13 x i8] c"csource=0x04\00", align 1, !dbg !5632
@.str.8 = private unnamed_addr constant [16 x i8] c"mem_trans_total\00", align 1, !dbg !5634
@.str.9 = private unnamed_addr constant [13 x i8] c"csource=0x05\00", align 1, !dbg !5636
@.str.10 = private unnamed_addr constant [22 x i8] c"mem_iommu_tlb_pte_hit\00", align 1, !dbg !5638
@.str.11 = private unnamed_addr constant [13 x i8] c"csource=0x06\00", align 1, !dbg !5643
@.str.12 = private unnamed_addr constant [22 x i8] c"mem_iommu_tlb_pte_mis\00", align 1, !dbg !5645
@.str.13 = private unnamed_addr constant [13 x i8] c"csource=0x07\00", align 1, !dbg !5647
@.str.14 = private unnamed_addr constant [22 x i8] c"mem_iommu_tlb_pde_hit\00", align 1, !dbg !5649
@.str.15 = private unnamed_addr constant [13 x i8] c"csource=0x08\00", align 1, !dbg !5651
@.str.16 = private unnamed_addr constant [22 x i8] c"mem_iommu_tlb_pde_mis\00", align 1, !dbg !5653
@.str.17 = private unnamed_addr constant [13 x i8] c"csource=0x09\00", align 1, !dbg !5655
@.str.18 = private unnamed_addr constant [12 x i8] c"mem_dte_hit\00", align 1, !dbg !5657
@.str.19 = private unnamed_addr constant [13 x i8] c"csource=0x0a\00", align 1, !dbg !5660
@.str.20 = private unnamed_addr constant [12 x i8] c"mem_dte_mis\00", align 1, !dbg !5662
@.str.21 = private unnamed_addr constant [13 x i8] c"csource=0x0b\00", align 1, !dbg !5664
@.str.22 = private unnamed_addr constant [18 x i8] c"page_tbl_read_tot\00", align 1, !dbg !5666
@.str.23 = private unnamed_addr constant [13 x i8] c"csource=0x0c\00", align 1, !dbg !5668
@.str.24 = private unnamed_addr constant [18 x i8] c"page_tbl_read_nst\00", align 1, !dbg !5670
@.str.25 = private unnamed_addr constant [13 x i8] c"csource=0x0d\00", align 1, !dbg !5672
@.str.26 = private unnamed_addr constant [18 x i8] c"page_tbl_read_gst\00", align 1, !dbg !5674
@.str.27 = private unnamed_addr constant [13 x i8] c"csource=0x0e\00", align 1, !dbg !5676
@.str.28 = private unnamed_addr constant [12 x i8] c"int_dte_hit\00", align 1, !dbg !5678
@.str.29 = private unnamed_addr constant [13 x i8] c"csource=0x0f\00", align 1, !dbg !5680
@.str.30 = private unnamed_addr constant [12 x i8] c"int_dte_mis\00", align 1, !dbg !5682
@.str.31 = private unnamed_addr constant [13 x i8] c"csource=0x10\00", align 1, !dbg !5684
@.str.32 = private unnamed_addr constant [14 x i8] c"cmd_processed\00", align 1, !dbg !5686
@.str.33 = private unnamed_addr constant [13 x i8] c"csource=0x11\00", align 1, !dbg !5688
@.str.34 = private unnamed_addr constant [18 x i8] c"cmd_processed_inv\00", align 1, !dbg !5690
@.str.35 = private unnamed_addr constant [13 x i8] c"csource=0x12\00", align 1, !dbg !5692
@.str.36 = private unnamed_addr constant [8 x i8] c"tlb_inv\00", align 1, !dbg !5694
@.str.37 = private unnamed_addr constant [13 x i8] c"csource=0x13\00", align 1, !dbg !5696
@.str.38 = private unnamed_addr constant [21 x i8] c"ign_rd_wr_mmio_1ff8h\00", align 1, !dbg !5698
@.str.39 = private unnamed_addr constant [13 x i8] c"csource=0x14\00", align 1, !dbg !5703
@.str.40 = private unnamed_addr constant [20 x i8] c"vapic_int_non_guest\00", align 1, !dbg !5705
@.str.41 = private unnamed_addr constant [13 x i8] c"csource=0x15\00", align 1, !dbg !5708
@.str.42 = private unnamed_addr constant [16 x i8] c"vapic_int_guest\00", align 1, !dbg !5710
@.str.43 = private unnamed_addr constant [13 x i8] c"csource=0x16\00", align 1, !dbg !5712
@.str.44 = private unnamed_addr constant [9 x i8] c"smi_recv\00", align 1, !dbg !5714
@.str.45 = private unnamed_addr constant [13 x i8] c"csource=0x17\00", align 1, !dbg !5719
@.str.46 = private unnamed_addr constant [8 x i8] c"smi_blk\00", align 1, !dbg !5721
@.str.47 = private unnamed_addr constant [13 x i8] c"csource=0x18\00", align 1, !dbg !5723
@.str.48 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !5730
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.49 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5733
@iommu_pmu = internal constant %struct.pmu { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @amd_iommu_attr_groups, ptr null, ptr null, i32 0, i32 64, ptr null, ptr null, %struct.atomic_t zeroinitializer, i32 -1, i32 0, i32 0, ptr null, ptr null, ptr @perf_iommu_event_init, ptr null, ptr null, ptr @perf_iommu_add, ptr @perf_iommu_del, ptr @perf_iommu_start, ptr @perf_iommu_stop, ptr @perf_iommu_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 8, !dbg !5747
@.str.50 = private unnamed_addr constant [13 x i8] c"amd_iommu_%u\00", align 1, !dbg !5735
@.str.51 = private unnamed_addr constant [72 x i8] c"\016perf/amd_iommu: Detected AMD IOMMU #%d (%d banks, %d counters/bank).\0A\00", align 1, !dbg !5737
@perf_amd_iommu_list = internal global %struct.list_head { ptr @perf_amd_iommu_list, ptr @perf_amd_iommu_list }, align 8, !dbg !5823
@.str.52 = private unnamed_addr constant [48 x i8] c"\014perf/amd_iommu: Error initializing IOMMU %d.\0A\00", align 1, !dbg !5742
@amd_iommu_attr_groups = internal global [4 x ptr] [ptr @amd_iommu_format_group, ptr @amd_iommu_cpumask_group, ptr @amd_iommu_events_group, ptr null], align 16, !dbg !5750
@amd_iommu_format_group = internal global %struct.attribute_group { ptr @.str.53, ptr null, ptr null, ptr @iommu_format_attrs, ptr null }, align 8, !dbg !5756
@amd_iommu_cpumask_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iommu_cpumask_attrs, ptr null }, align 8, !dbg !5809
@.str.53 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !5753
@iommu_format_attrs = internal global [8 x ptr] [ptr @format_attr_csource, ptr @format_attr_devid, ptr @format_attr_pasid, ptr @format_attr_domid, ptr @format_attr_devid_mask, ptr @format_attr_pasid_mask, ptr @format_attr_domid_mask, ptr null], align 16, !dbg !5758
@format_attr_csource = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @csource_show, ptr null }, align 8, !dbg !5763
@format_attr_devid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @devid_show, ptr null }, align 8, !dbg !5769
@format_attr_pasid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @pasid_show, ptr null }, align 8, !dbg !5775
@format_attr_domid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @domid_show, ptr null }, align 8, !dbg !5781
@format_attr_devid_mask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @devid_mask_show, ptr null }, align 8, !dbg !5790
@format_attr_pasid_mask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292 }, ptr @pasid_mask_show, ptr null }, align 8, !dbg !5796
@format_attr_domid_mask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @domid_mask_show, ptr null }, align 8, !dbg !5805
@.str.54 = private unnamed_addr constant [8 x i8] c"csource\00", align 1, !dbg !5761
@.str.55 = private unnamed_addr constant [12 x i8] c"config:0-7\0A\00", align 1, !dbg !5765
@.str.56 = private unnamed_addr constant [6 x i8] c"devid\00", align 1, !dbg !5767
@.str.57 = private unnamed_addr constant [13 x i8] c"config:8-23\0A\00", align 1, !dbg !5771
@.str.58 = private unnamed_addr constant [6 x i8] c"pasid\00", align 1, !dbg !5773
@.str.59 = private unnamed_addr constant [14 x i8] c"config:40-59\0A\00", align 1, !dbg !5777
@.str.60 = private unnamed_addr constant [6 x i8] c"domid\00", align 1, !dbg !5779
@.str.61 = private unnamed_addr constant [14 x i8] c"config:24-39\0A\00", align 1, !dbg !5783
@.str.62 = private unnamed_addr constant [11 x i8] c"devid_mask\00", align 1, !dbg !5785
@.str.63 = private unnamed_addr constant [14 x i8] c"config1:0-15\0A\00", align 1, !dbg !5792
@.str.64 = private unnamed_addr constant [11 x i8] c"pasid_mask\00", align 1, !dbg !5794
@.str.65 = private unnamed_addr constant [15 x i8] c"config1:32-51\0A\00", align 1, !dbg !5798
@.str.66 = private unnamed_addr constant [11 x i8] c"domid_mask\00", align 1, !dbg !5803
@.str.67 = private unnamed_addr constant [15 x i8] c"config1:16-31\0A\00", align 1, !dbg !5807
@iommu_cpumask_attrs = internal global [2 x ptr] [ptr @dev_attr_cpumask, ptr null], align 16, !dbg !5811
@dev_attr_cpumask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @_iommu_cpumask_show, ptr null }, align 8, !dbg !5816
@.str.68 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1, !dbg !5814
@nr_cpu_ids = external dso_local global i32, align 4
@.str.69 = private unnamed_addr constant [28 x i8] c"arch/x86/events/amd/iommu.c\00", align 1, !dbg !5818
@.str.70 = private unnamed_addr constant [7 x i8] c"events\00", align 1, !dbg !5825
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_iommu__318_489_amd_iommu_pc_init6319], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_iommu__318_489_amd_iommu_pc_init6() #0 section ".init.text" align 16 !dbg !5840 {
entry:
  %call = call i32 @amd_iommu_pc_init() #17, !dbg !5841
  ret i32 %call, !dbg !5841
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @amd_iommu_pc_init() #0 section ".init.text" align 16 !dbg !5842 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5844, metadata !DIExpression()), !dbg !5848
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #18, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5845, metadata !DIExpression()), !dbg !5849
  store i32 0, ptr %cnt, align 4, !dbg !5849
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5846, metadata !DIExpression()), !dbg !5851
  %call = call zeroext i1 @amd_iommu_pc_supported() #19, !dbg !5852
  br i1 %call, label %if.end, label %if.then, !dbg !5854

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5855

if.end:                                           ; preds = %entry
  %call1 = call i32 @_init_events_attrs() #17, !dbg !5856
  store i32 %call1, ptr %ret, align 4, !dbg !5857
  %0 = load i32, ptr %ret, align 4, !dbg !5858
  %tobool = icmp ne i32 %0, 0, !dbg !5858
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5860

if.then2:                                         ; preds = %if.end
  %1 = load i32, ptr %ret, align 4, !dbg !5861
  store i32 %1, ptr %retval, align 4, !dbg !5862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5862

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5863
  br label %for.cond, !dbg !5865

for.cond:                                         ; preds = %for.inc, %if.end3
  %2 = load i32, ptr %i, align 4, !dbg !5866
  %call4 = call i32 @amd_iommu_get_num_iommus() #19, !dbg !5868
  %cmp = icmp ult i32 %2, %call4, !dbg !5869
  br i1 %cmp, label %for.body, label %for.end, !dbg !5870

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !5871
  %call5 = call i32 @init_one_iommu(i32 noundef %3) #17, !dbg !5873
  store i32 %call5, ptr %ret, align 4, !dbg !5874
  %4 = load i32, ptr %ret, align 4, !dbg !5875
  %tobool6 = icmp ne i32 %4, 0, !dbg !5875
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5877

if.then7:                                         ; preds = %for.body
  %5 = load i32, ptr %cnt, align 4, !dbg !5878
  %inc = add i32 %5, 1, !dbg !5878
  store i32 %inc, ptr %cnt, align 4, !dbg !5878
  br label %if.end8, !dbg !5879

if.end8:                                          ; preds = %if.then7, %for.body
  br label %for.inc, !dbg !5880

for.inc:                                          ; preds = %if.end8
  %6 = load i32, ptr %i, align 4, !dbg !5881
  %inc9 = add i32 %6, 1, !dbg !5881
  store i32 %inc9, ptr %i, align 4, !dbg !5881
  br label %for.cond, !dbg !5882, !llvm.loop !5883

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %cnt, align 4, !dbg !5887
  %tobool10 = icmp ne i32 %7, 0, !dbg !5887
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5889

if.then11:                                        ; preds = %for.end
  %8 = load ptr, ptr getelementptr inbounds (%struct.attribute_group, ptr @amd_iommu_events_group, i32 0, i32 3), align 8, !dbg !5890
  call void @kfree(ptr noundef %8) #19, !dbg !5892
  store i32 -19, ptr %retval, align 4, !dbg !5893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5893

if.end12:                                         ; preds = %for.end
  call void @cpumask_set_cpu(i32 noundef 0, ptr noundef @iommu_cpumask) #19, !dbg !5894
  store i32 0, ptr %retval, align 4, !dbg !5895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5895

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5896
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #18, !dbg !5896
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5896
  %9 = load i32, ptr %retval, align 4, !dbg !5896
  ret i32 %9, !dbg !5896
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5897 dso_local zeroext i1 @amd_iommu_pc_supported() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @_init_events_attrs() #0 section ".init.text" align 16 !dbg !5898 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %attrs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5900, metadata !DIExpression()), !dbg !5904
  store i32 0, ptr %i, align 4, !dbg !5904
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #18, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5901, metadata !DIExpression()), !dbg !5905
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #18, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !5902, metadata !DIExpression()), !dbg !5907
  br label %while.cond, !dbg !5908

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5909
  %idxprom = sext i32 %0 to i64, !dbg !5910
  %arrayidx = getelementptr [25 x %struct.amd_iommu_event_desc], ptr @amd_iommu_v2_event_descs, i64 0, i64 %idxprom, !dbg !5910
  %attr = getelementptr inbounds %struct.amd_iommu_event_desc, ptr %arrayidx, i32 0, i32 0, !dbg !5911
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %attr, i32 0, i32 0, !dbg !5912
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !5913
  %1 = load ptr, ptr %name, align 8, !dbg !5913
  %tobool = icmp ne ptr %1, null, !dbg !5908
  br i1 %tobool, label %while.body, label %while.end, !dbg !5908

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4, !dbg !5914
  %inc = add i32 %2, 1, !dbg !5914
  store i32 %inc, ptr %i, align 4, !dbg !5914
  br label %while.cond, !dbg !5908, !llvm.loop !5915

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %i, align 4, !dbg !5916
  %add = add i32 %3, 1, !dbg !5917
  %conv = sext i32 %add to i64, !dbg !5916
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #20, !dbg !5918
  store ptr %call, ptr %attrs, align 8, !dbg !5919
  %4 = load ptr, ptr %attrs, align 8, !dbg !5920
  %tobool2 = icmp ne ptr %4, null, !dbg !5920
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5922

if.then:                                          ; preds = %while.end
  store i32 -12, ptr %retval, align 4, !dbg !5923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

if.end:                                           ; preds = %while.end
  store i32 0, ptr %j, align 4, !dbg !5924
  br label %for.cond, !dbg !5926

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %j, align 4, !dbg !5927
  %6 = load i32, ptr %i, align 4, !dbg !5929
  %cmp = icmp slt i32 %5, %6, !dbg !5930
  br i1 %cmp, label %for.body, label %for.end, !dbg !5931

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %j, align 4, !dbg !5932
  %idxprom4 = sext i32 %7 to i64, !dbg !5933
  %arrayidx5 = getelementptr [25 x %struct.amd_iommu_event_desc], ptr @amd_iommu_v2_event_descs, i64 0, i64 %idxprom4, !dbg !5933
  %attr6 = getelementptr inbounds %struct.amd_iommu_event_desc, ptr %arrayidx5, i32 0, i32 0, !dbg !5934
  %attr7 = getelementptr inbounds %struct.device_attribute, ptr %attr6, i32 0, i32 0, !dbg !5935
  %8 = load ptr, ptr %attrs, align 8, !dbg !5936
  %9 = load i32, ptr %j, align 4, !dbg !5937
  %idxprom8 = sext i32 %9 to i64, !dbg !5936
  %arrayidx9 = getelementptr ptr, ptr %8, i64 %idxprom8, !dbg !5936
  store ptr %attr7, ptr %arrayidx9, align 8, !dbg !5938
  br label %for.inc, !dbg !5936

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %j, align 4, !dbg !5939
  %inc10 = add i32 %10, 1, !dbg !5939
  store i32 %inc10, ptr %j, align 4, !dbg !5939
  br label %for.cond, !dbg !5940, !llvm.loop !5941

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %attrs, align 8, !dbg !5943
  store ptr %11, ptr getelementptr inbounds (%struct.attribute_group, ptr @amd_iommu_events_group, i32 0, i32 3), align 8, !dbg !5944
  store i32 0, ptr %retval, align 4, !dbg !5945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5945

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #18, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #18, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5946
  %12 = load i32, ptr %retval, align 4, !dbg !5946
  ret i32 %12, !dbg !5946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5947 dso_local i32 @amd_iommu_get_num_iommus() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_one_iommu(i32 noundef %idx) #0 section ".init.text" align 16 !dbg !5948 {
entry:
  %retval = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %perf_iommu = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  %tmp = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5952, metadata !DIExpression()), !dbg !5955
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf_iommu) #18, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %perf_iommu, metadata !5953, metadata !DIExpression()), !dbg !5957
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5954, metadata !DIExpression()), !dbg !5959
  %call = call noalias ptr @kzalloc(i64 noundef 368, i32 noundef 3264) #21, !dbg !5960
  store ptr %call, ptr %perf_iommu, align 8, !dbg !5961
  %0 = load ptr, ptr %perf_iommu, align 8, !dbg !5962
  %tobool = icmp ne ptr %0, null, !dbg !5962
  br i1 %tobool, label %if.end, label %if.then, !dbg !5964

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5965

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5966

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %perf_iommu, align 8, !dbg !5967
  %lock = getelementptr inbounds %struct.perf_amd_iommu, ptr %1, i32 0, i32 7, !dbg !5967
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5967
  %2 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5967
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5967
  store i32 0, ptr %counter, align 4, !dbg !5967
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5967
  br label %do.cond, !dbg !5967

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5967

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %perf_iommu, align 8, !dbg !5969
  %pmu = getelementptr inbounds %struct.perf_amd_iommu, ptr %3, i32 0, i32 1, !dbg !5970
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmu, ptr align 8 @iommu_pmu, i64 304, i1 false), !dbg !5971
  %4 = load i32, ptr %idx.addr, align 4, !dbg !5972
  %call1 = call ptr @get_amd_iommu(i32 noundef %4) #19, !dbg !5973
  %5 = load ptr, ptr %perf_iommu, align 8, !dbg !5974
  %iommu = getelementptr inbounds %struct.perf_amd_iommu, ptr %5, i32 0, i32 2, !dbg !5975
  store ptr %call1, ptr %iommu, align 8, !dbg !5976
  %6 = load i32, ptr %idx.addr, align 4, !dbg !5977
  %call2 = call zeroext i8 @amd_iommu_pc_get_max_banks(i32 noundef %6) #19, !dbg !5978
  %7 = load ptr, ptr %perf_iommu, align 8, !dbg !5979
  %max_banks = getelementptr inbounds %struct.perf_amd_iommu, ptr %7, i32 0, i32 4, !dbg !5980
  store i8 %call2, ptr %max_banks, align 8, !dbg !5981
  %8 = load i32, ptr %idx.addr, align 4, !dbg !5982
  %call3 = call zeroext i8 @amd_iommu_pc_get_max_counters(i32 noundef %8) #19, !dbg !5983
  %9 = load ptr, ptr %perf_iommu, align 8, !dbg !5984
  %max_counters = getelementptr inbounds %struct.perf_amd_iommu, ptr %9, i32 0, i32 5, !dbg !5985
  store i8 %call3, ptr %max_counters, align 1, !dbg !5986
  %10 = load ptr, ptr %perf_iommu, align 8, !dbg !5987
  %iommu4 = getelementptr inbounds %struct.perf_amd_iommu, ptr %10, i32 0, i32 2, !dbg !5989
  %11 = load ptr, ptr %iommu4, align 8, !dbg !5989
  %tobool5 = icmp ne ptr %11, null, !dbg !5987
  br i1 %tobool5, label %lor.lhs.false, label %if.then11, !dbg !5990

lor.lhs.false:                                    ; preds = %do.end
  %12 = load ptr, ptr %perf_iommu, align 8, !dbg !5991
  %max_banks6 = getelementptr inbounds %struct.perf_amd_iommu, ptr %12, i32 0, i32 4, !dbg !5992
  %13 = load i8, ptr %max_banks6, align 8, !dbg !5992
  %tobool7 = icmp ne i8 %13, 0, !dbg !5991
  br i1 %tobool7, label %lor.lhs.false8, label %if.then11, !dbg !5993

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %14 = load ptr, ptr %perf_iommu, align 8, !dbg !5994
  %max_counters9 = getelementptr inbounds %struct.perf_amd_iommu, ptr %14, i32 0, i32 5, !dbg !5995
  %15 = load i8, ptr %max_counters9, align 1, !dbg !5995
  %tobool10 = icmp ne i8 %15, 0, !dbg !5994
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5996

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %do.end
  %16 = load ptr, ptr %perf_iommu, align 8, !dbg !5997
  call void @kfree(ptr noundef %16) #19, !dbg !5999
  store i32 -22, ptr %retval, align 4, !dbg !6000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6000

if.end12:                                         ; preds = %lor.lhs.false8
  %17 = load ptr, ptr %perf_iommu, align 8, !dbg !6001
  %name = getelementptr inbounds %struct.perf_amd_iommu, ptr %17, i32 0, i32 3, !dbg !6002
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !6001
  %18 = load i32, ptr %idx.addr, align 4, !dbg !6003
  %call13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 16, ptr noundef @.str.50, i32 noundef %18) #19, !dbg !6004
  %19 = load ptr, ptr %perf_iommu, align 8, !dbg !6005
  %pmu14 = getelementptr inbounds %struct.perf_amd_iommu, ptr %19, i32 0, i32 1, !dbg !6006
  %20 = load ptr, ptr %perf_iommu, align 8, !dbg !6007
  %name15 = getelementptr inbounds %struct.perf_amd_iommu, ptr %20, i32 0, i32 3, !dbg !6008
  %arraydecay16 = getelementptr inbounds [16 x i8], ptr %name15, i64 0, i64 0, !dbg !6007
  %call17 = call i32 @perf_pmu_register(ptr noundef %pmu14, ptr noundef %arraydecay16, i32 noundef -1) #19, !dbg !6009
  store i32 %call17, ptr %ret, align 4, !dbg !6010
  %21 = load i32, ptr %ret, align 4, !dbg !6011
  %tobool18 = icmp ne i32 %21, 0, !dbg !6011
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !6013

if.then19:                                        ; preds = %if.end12
  br label %do.body20, !dbg !6014

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !6017

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6017

do.end22:                                         ; preds = %do.cond21
  %22 = load i32, ptr %idx.addr, align 4, !dbg !6014
  %23 = load ptr, ptr %perf_iommu, align 8, !dbg !6014
  %max_banks23 = getelementptr inbounds %struct.perf_amd_iommu, ptr %23, i32 0, i32 4, !dbg !6014
  %24 = load i8, ptr %max_banks23, align 8, !dbg !6014
  %conv = zext i8 %24 to i32, !dbg !6014
  %25 = load ptr, ptr %perf_iommu, align 8, !dbg !6014
  %max_counters24 = getelementptr inbounds %struct.perf_amd_iommu, ptr %25, i32 0, i32 5, !dbg !6014
  %26 = load i8, ptr %max_counters24, align 1, !dbg !6014
  %conv25 = zext i8 %26 to i32, !dbg !6014
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.51, i32 noundef %22, i32 noundef %conv, i32 noundef %conv25) #17, !dbg !6014
  store i32 %call26, ptr %tmp, align 4, !dbg !6017
  %27 = load i32, ptr %tmp, align 4, !dbg !6014
  %28 = load ptr, ptr %perf_iommu, align 8, !dbg !6019
  %list = getelementptr inbounds %struct.perf_amd_iommu, ptr %28, i32 0, i32 0, !dbg !6020
  call void @list_add_tail(ptr noundef %list, ptr noundef @perf_amd_iommu_list) #19, !dbg !6021
  br label %if.end32, !dbg !6022

if.else:                                          ; preds = %if.end12
  br label %do.body27, !dbg !6023

do.body27:                                        ; preds = %if.else
  br label %do.cond28, !dbg !6026

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6026

do.end29:                                         ; preds = %do.cond28
  %29 = load i32, ptr %idx.addr, align 4, !dbg !6023
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.52, i32 noundef %29) #17, !dbg !6023
  store i32 %call31, ptr %tmp30, align 4, !dbg !6026
  %30 = load i32, ptr %tmp30, align 4, !dbg !6023
  %31 = load ptr, ptr %perf_iommu, align 8, !dbg !6028
  call void @kfree(ptr noundef %31) #19, !dbg !6029
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %do.end22
  %32 = load i32, ptr %ret, align 4, !dbg !6030
  store i32 %32, ptr %retval, align 4, !dbg !6031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6031

cleanup:                                          ; preds = %if.end32, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6032
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf_iommu) #18, !dbg !6032
  %33 = load i32, ptr %retval, align 4, !dbg !6032
  ret i32 %33, !dbg !6032
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6033 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #4 align 16 !dbg !6036 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6041, metadata !DIExpression()), !dbg !6043
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6042, metadata !DIExpression()), !dbg !6044
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6045
  %call = call i32 @cpumask_check(i32 noundef %0) #19, !dbg !6046
  %conv = zext i32 %call to i64, !dbg !6046
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !6047
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6047
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6047
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #19, !dbg !6048
  ret void, !dbg !6049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6050 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6054, metadata !DIExpression()), !dbg !6057
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6055, metadata !DIExpression()), !dbg !6058
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6056, metadata !DIExpression()), !dbg !6059
  %0 = load i64, ptr %n.addr, align 8, !dbg !6060
  %1 = load i64, ptr %size.addr, align 8, !dbg !6061
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6062
  %or = or i32 %2, 256, !dbg !6063
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #20, !dbg !6064
  ret ptr %call, !dbg !6065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_iommu_event_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #6 align 16 !dbg !6066 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6068, metadata !DIExpression()), !dbg !6074
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6069, metadata !DIExpression()), !dbg !6075
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6070, metadata !DIExpression()), !dbg !6076
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #18, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %event, metadata !6071, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6072, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6079
  store ptr %0, ptr %__mptr, align 8, !dbg !6079
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6079
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6079
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6080
  %2 = load ptr, ptr %tmp, align 8, !dbg !6079
  store ptr %2, ptr %event, align 8, !dbg !6078
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6081
  %4 = load ptr, ptr %event, align 8, !dbg !6082
  %event1 = getelementptr inbounds %struct.amd_iommu_event_desc, ptr %4, i32 0, i32 1, !dbg !6083
  %5 = load ptr, ptr %event1, align 8, !dbg !6083
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.48, ptr noundef %5) #19, !dbg !6084
  %conv = sext i32 %call to i64, !dbg !6084
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #18, !dbg !6085
  ret i64 %conv, !dbg !6086
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6087 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6091 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6093, metadata !DIExpression()), !dbg !6097
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6094, metadata !DIExpression()), !dbg !6098
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6095, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6096, metadata !DIExpression()), !dbg !6101
  %0 = load i64, ptr %n.addr, align 8, !dbg !6102
  %1 = load i64, ptr %size.addr, align 8, !dbg !6102
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6102
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6102
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6102
  store i64 %4, ptr %bytes, align 8, !dbg !6102
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !6102
  %lnot = xor i1 %call, true, !dbg !6102
  %lnot1 = xor i1 %lnot, true, !dbg !6102
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6102
  %conv = sext i32 %lnot.ext to i64, !dbg !6102
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6102
  %tobool = icmp ne i64 %expval, 0, !dbg !6102
  br i1 %tobool, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6105

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6106
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6108
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6109

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6110
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6111
  br i1 %8, label %if.then2, label %if.end4, !dbg !6112

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6113
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6114
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #21, !dbg !6115
  store ptr %call3, ptr %retval, align 8, !dbg !6116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6116

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6117
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6118
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #21, !dbg !6119
  store ptr %call5, ptr %retval, align 8, !dbg !6120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6120

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !6121
  %13 = load ptr, ptr %retval, align 8, !dbg !6121
  ret ptr %13, !dbg !6121
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !6122 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6129, !range !6130, !noundef !938
  %tobool = trunc i8 %0 to i1, !dbg !6129
  %lnot = xor i1 %tobool, true, !dbg !6129
  %lnot1 = xor i1 %lnot, true, !dbg !6129
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6129
  %conv = sext i32 %lnot.ext to i64, !dbg !6129
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6129
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6129
  ret i1 %tobool2, !dbg !6131
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6132 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6136, metadata !DIExpression()), !dbg !6141
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6137, metadata !DIExpression()), !dbg !6142
  %0 = load i64, ptr %size.addr, align 8, !dbg !6143
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6144
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6145

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6146
  %tobool = icmp ne i64 %2, 0, !dbg !6146
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6147

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6138, metadata !DIExpression()), !dbg !6149
  %3 = load i64, ptr %size.addr, align 8, !dbg !6150
  %cmp = icmp ugt i64 %3, 8192, !dbg !6152
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6153

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6154
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6155
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !6156
  store ptr %call, ptr %retval, align 8, !dbg !6157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6157

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6158
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !6158
  store i32 %call2, ptr %index, align 4, !dbg !6159
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6160
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6161
  %9 = ptrtoint ptr %8 to i64, !dbg !6161
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !6162
  %idxprom = zext i32 %call3 to i64, !dbg !6163
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6163
  %10 = load i32, ptr %index, align 4, !dbg !6164
  %idxprom4 = zext i32 %10 to i64, !dbg !6163
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6163
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6163
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6165
  %13 = load i64, ptr %size.addr, align 8, !dbg !6166
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6167
  store ptr %call6, ptr %retval, align 8, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6168

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6169
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6170
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6171
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !6172
  store ptr %call8, ptr %retval, align 8, !dbg !6173
  br label %return, !dbg !6173

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6174
  ret ptr %16, !dbg !6174
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6175 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6176 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6177 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6181, metadata !DIExpression()), !dbg !6183
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6182, metadata !DIExpression()), !dbg !6184
  %0 = load i64, ptr %size.addr, align 8, !dbg !6185
  %tobool = icmp ne i64 %0, 0, !dbg !6185
  br i1 %tobool, label %if.end, label %if.then, !dbg !6187

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6188
  br label %return, !dbg !6188

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6189
  %cmp = icmp ule i64 %1, 8, !dbg !6191
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6192

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6193
  br label %return, !dbg !6193

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6194
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6196
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6197

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6198
  %cmp4 = icmp ule i64 %3, 96, !dbg !6199
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6200

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6201
  br label %return, !dbg !6201

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6202
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6204
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6205

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6206
  %cmp9 = icmp ule i64 %5, 192, !dbg !6207
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6208

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6209
  br label %return, !dbg !6209

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6210
  %cmp12 = icmp ule i64 %6, 8, !dbg !6212
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6213

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6214
  br label %return, !dbg !6214

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6215
  %cmp15 = icmp ule i64 %7, 16, !dbg !6217
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6218

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6219
  br label %return, !dbg !6219

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6220
  %cmp18 = icmp ule i64 %8, 32, !dbg !6222
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6223

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6224
  br label %return, !dbg !6224

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6225
  %cmp21 = icmp ule i64 %9, 64, !dbg !6227
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6228

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6229
  br label %return, !dbg !6229

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6230
  %cmp24 = icmp ule i64 %10, 128, !dbg !6232
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6233

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6234
  br label %return, !dbg !6234

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6235
  %cmp27 = icmp ule i64 %11, 256, !dbg !6237
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6238

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6239
  br label %return, !dbg !6239

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6240
  %cmp30 = icmp ule i64 %12, 512, !dbg !6242
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6243

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6244
  br label %return, !dbg !6244

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6245
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6247
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6248

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6249
  br label %return, !dbg !6249

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6250
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6252
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6253

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6254
  br label %return, !dbg !6254

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6255
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6257
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6258

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6259
  br label %return, !dbg !6259

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6260
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6262
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6263

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6264
  br label %return, !dbg !6264

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6265
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6267
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6268

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6269
  br label %return, !dbg !6269

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6270
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6272
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6273

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6274
  br label %return, !dbg !6274

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6275
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6277
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6278

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6280
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6282
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6283

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6284
  br label %return, !dbg !6284

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6285
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6287
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6288

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6289
  br label %return, !dbg !6289

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6290
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6292
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6293

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6294
  br label %return, !dbg !6294

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6295
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6297
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6298

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6299
  br label %return, !dbg !6299

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6300
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6302
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6303

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6304
  br label %return, !dbg !6304

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6305, !range !6130, !noundef !938
  %tobool69 = trunc i8 %25 to i1, !dbg !6305
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6307

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6308

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_227() #23, !dbg !6309, !srcloc !6312
  unreachable, !dbg !6309

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6313

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6314

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6315

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6317

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6315

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.49, i32 480, i32 0, i64 12) #18, !dbg !6319, !srcloc !6321
  br label %do.end75, !dbg !6319

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6315

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6322
  br label %return, !dbg !6322

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6323
  ret i32 %26, !dbg !6323
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6324 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6327 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6331, metadata !DIExpression()), !dbg !6333
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6332, metadata !DIExpression()), !dbg !6334
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6335
  %and = and i32 %0, 17, !dbg !6335
  %cmp = icmp eq i32 %and, 0, !dbg !6335
  %lnot = xor i1 %cmp, true, !dbg !6335
  %lnot1 = xor i1 %lnot, true, !dbg !6335
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6335
  %conv = sext i32 %lnot.ext to i64, !dbg !6335
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6335
  %tobool = icmp ne i64 %expval, 0, !dbg !6335
  br i1 %tobool, label %if.then, label %if.end, !dbg !6337

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6338
  br label %return, !dbg !6338

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6339
  %and2 = and i32 %1, 1, !dbg !6341
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6341
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6342

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6343
  br label %return, !dbg !6343

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6344
  br label %return, !dbg !6344

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6346
  ret i32 %2, !dbg !6346
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6347 dso_local void @__compiletime_assert_227() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !6348 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6350, metadata !DIExpression()), !dbg !6352
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6351, metadata !DIExpression()), !dbg !6353
  %0 = load i64, ptr %size.addr, align 8, !dbg !6354
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6355
  %or = or i32 %1, 256, !dbg !6356
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !6357
  ret ptr %call, !dbg !6358
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6359 dso_local ptr @get_amd_iommu(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6362 dso_local zeroext i8 @amd_iommu_pc_get_max_banks(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6365 dso_local zeroext i8 @amd_iommu_pc_get_max_counters(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6366 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6369 dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6372 dso_local i32 @_printk(ptr noundef, ...) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !6376 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6381, metadata !DIExpression()), !dbg !6383
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6382, metadata !DIExpression()), !dbg !6384
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6385
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6386
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6387
  %2 = load ptr, ptr %prev, align 8, !dbg !6387
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6388
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19, !dbg !6389
  ret void, !dbg !6390
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_iommu_event_init(ptr noundef %event) #6 align 16 !dbg !6391 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6393, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6394, metadata !DIExpression()), !dbg !6398
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6399
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6400
  store ptr %hw, ptr %hwc, align 8, !dbg !6398
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6401
  %attr = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 22, !dbg !6403
  %type = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 0, !dbg !6404
  %2 = load i32, ptr %type, align 8, !dbg !6404
  %3 = load ptr, ptr %event.addr, align 8, !dbg !6405
  %pmu = getelementptr inbounds %struct.perf_event, ptr %3, i32 0, i32 13, !dbg !6406
  %4 = load ptr, ptr %pmu, align 8, !dbg !6406
  %type1 = getelementptr inbounds %struct.pmu, ptr %4, i32 0, i32 7, !dbg !6407
  %5 = load i32, ptr %type1, align 8, !dbg !6407
  %cmp = icmp ne i32 %2, %5, !dbg !6408
  br i1 %cmp, label %if.then, label %if.end, !dbg !6409

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %event.addr, align 8, !dbg !6411
  %call = call zeroext i1 @is_sampling_event(ptr noundef %6) #19, !dbg !6413
  br i1 %call, label %if.then2, label %lor.lhs.false, !dbg !6414

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %event.addr, align 8, !dbg !6415
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 16, !dbg !6416
  %8 = load i32, ptr %attach_state, align 4, !dbg !6416
  %and = and i32 %8, 4, !dbg !6417
  %tobool = icmp ne i32 %and, 0, !dbg !6417
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !6418

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6419

if.end3:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %event.addr, align 8, !dbg !6420
  %cpu = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 36, !dbg !6422
  %10 = load i32, ptr %cpu, align 4, !dbg !6422
  %cmp4 = icmp slt i32 %10, 0, !dbg !6423
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6424

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

if.end6:                                          ; preds = %if.end3
  %11 = load ptr, ptr %event.addr, align 8, !dbg !6426
  %attr7 = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 22, !dbg !6427
  %config = getelementptr inbounds %struct.perf_event_attr, ptr %attr7, i32 0, i32 2, !dbg !6428
  %12 = load i64, ptr %config, align 8, !dbg !6428
  %13 = load ptr, ptr %hwc, align 8, !dbg !6429
  %14 = getelementptr inbounds %struct.hw_perf_event, ptr %13, i32 0, i32 0, !dbg !6430
  %conf = getelementptr inbounds %struct.anon.24, ptr %14, i32 0, i32 3, !dbg !6430
  store i64 %12, ptr %conf, align 8, !dbg !6431
  %15 = load ptr, ptr %event.addr, align 8, !dbg !6432
  %attr8 = getelementptr inbounds %struct.perf_event, ptr %15, i32 0, i32 22, !dbg !6433
  %16 = getelementptr inbounds %struct.perf_event_attr, ptr %attr8, i32 0, i32 9, !dbg !6434
  %17 = load i64, ptr %16, align 8, !dbg !6434
  %18 = load ptr, ptr %hwc, align 8, !dbg !6435
  %19 = getelementptr inbounds %struct.hw_perf_event, ptr %18, i32 0, i32 0, !dbg !6436
  %conf1 = getelementptr inbounds %struct.anon.24, ptr %19, i32 0, i32 4, !dbg !6436
  store i64 %17, ptr %conf1, align 8, !dbg !6437
  store i32 0, ptr %retval, align 4, !dbg !6438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6438

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !6439
  %20 = load i32, ptr %retval, align 4, !dbg !6439
  ret i32 %20, !dbg !6439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_iommu_add(ptr noundef %event, i32 noundef %flags) #6 align 16 !dbg !6440 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6442, metadata !DIExpression()), !dbg !6445
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6443, metadata !DIExpression()), !dbg !6446
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #18, !dbg !6447
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6444, metadata !DIExpression()), !dbg !6448
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6449
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6450
  %state = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 4, !dbg !6451
  store i32 3, ptr %state, align 8, !dbg !6452
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6453
  %call = call i32 @get_next_avail_iommu_bnk_cntr(ptr noundef %1) #19, !dbg !6454
  store i32 %call, ptr %retval1, align 4, !dbg !6455
  %2 = load i32, ptr %retval1, align 4, !dbg !6456
  %tobool = icmp ne i32 %2, 0, !dbg !6456
  br i1 %tobool, label %if.then, label %if.end, !dbg !6458

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !6459
  store i32 %3, ptr %retval, align 4, !dbg !6460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6460

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6461
  %and = and i32 %4, 1, !dbg !6463
  %tobool2 = icmp ne i32 %and, 0, !dbg !6463
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6464

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %event.addr, align 8, !dbg !6465
  call void @perf_iommu_start(ptr noundef %5, i32 noundef 2) #19, !dbg !6466
  br label %if.end4, !dbg !6466

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6467

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #18, !dbg !6468
  %6 = load i32, ptr %retval, align 4, !dbg !6468
  ret i32 %6, !dbg !6468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_iommu_del(ptr noundef %event, i32 noundef %flags) #6 align 16 !dbg !6469 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %hwc = alloca ptr, align 8
  %perf_iommu = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6471, metadata !DIExpression()), !dbg !6477
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6472, metadata !DIExpression()), !dbg !6478
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6473, metadata !DIExpression()), !dbg !6480
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6481
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6482
  store ptr %hw, ptr %hwc, align 8, !dbg !6480
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf_iommu) #18, !dbg !6483
  call void @llvm.dbg.declare(metadata ptr %perf_iommu, metadata !6474, metadata !DIExpression()), !dbg !6484
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6475, metadata !DIExpression()), !dbg !6485
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6485
  %pmu = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 13, !dbg !6485
  %2 = load ptr, ptr %pmu, align 8, !dbg !6485
  store ptr %2, ptr %__mptr, align 8, !dbg !6485
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6485
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !6485
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6485
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6486
  %4 = load ptr, ptr %tmp, align 8, !dbg !6485
  store ptr %4, ptr %perf_iommu, align 8, !dbg !6484
  %5 = load ptr, ptr %event.addr, align 8, !dbg !6487
  call void @perf_iommu_stop(ptr noundef %5, i32 noundef 4) #19, !dbg !6488
  %6 = load ptr, ptr %perf_iommu, align 8, !dbg !6489
  %7 = load ptr, ptr %hwc, align 8, !dbg !6490
  %8 = getelementptr inbounds %struct.hw_perf_event, ptr %7, i32 0, i32 0, !dbg !6491
  %iommu_bank = getelementptr inbounds %struct.anon.24, ptr %8, i32 0, i32 0, !dbg !6491
  %9 = load i8, ptr %iommu_bank, align 8, !dbg !6491
  %10 = load ptr, ptr %hwc, align 8, !dbg !6492
  %11 = getelementptr inbounds %struct.hw_perf_event, ptr %10, i32 0, i32 0, !dbg !6493
  %iommu_cntr = getelementptr inbounds %struct.anon.24, ptr %11, i32 0, i32 1, !dbg !6493
  %12 = load i8, ptr %iommu_cntr, align 1, !dbg !6493
  %call = call i32 @clear_avail_iommu_bnk_cntr(ptr noundef %6, i8 noundef zeroext %9, i8 noundef zeroext %12) #19, !dbg !6494
  %13 = load ptr, ptr %event.addr, align 8, !dbg !6495
  call void @perf_event_update_userpage(ptr noundef %13) #19, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf_iommu) #18, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !6497
  ret void, !dbg !6497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_iommu_start(ptr noundef %event, i32 noundef %flags) #6 align 16 !dbg !6498 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %hwc = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on28 = alloca i32, align 4
  %__flags48 = alloca i32, align 4
  %tmp61 = alloca i64, align 8
  %count = alloca i64, align 8
  %iommu = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6500, metadata !DIExpression()), !dbg !6518
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6501, metadata !DIExpression()), !dbg !6519
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6502, metadata !DIExpression()), !dbg !6521
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6522
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6523
  store ptr %hw, ptr %hwc, align 8, !dbg !6521
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6503, metadata !DIExpression()), !dbg !6524
  %1 = load ptr, ptr %hwc, align 8, !dbg !6524
  %state = getelementptr inbounds %struct.hw_perf_event, ptr %1, i32 0, i32 4, !dbg !6524
  %2 = load i32, ptr %state, align 8, !dbg !6524
  %and = and i32 %2, 1, !dbg !6524
  %tobool = icmp ne i32 %and, 0, !dbg !6524
  %lnot = xor i1 %tobool, true, !dbg !6524
  %lnot1 = xor i1 %lnot, true, !dbg !6524
  %lnot2 = xor i1 %lnot1, true, !dbg !6524
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6524
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6524
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6525
  %tobool3 = icmp ne i32 %3, 0, !dbg !6525
  %lnot4 = xor i1 %tobool3, true, !dbg !6525
  %lnot6 = xor i1 %lnot4, true, !dbg !6525
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6525
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6525
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6525
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6525
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6524

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6525

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6526
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6506, metadata !DIExpression()), !dbg !6526
  store i32 2307, ptr %__flags, align 4, !dbg !6526
  br label %do.body9, !dbg !6526

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6527

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6527

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6526

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6529
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.69, i32 281, i32 %4, i64 12) #18, !dbg !6529, !srcloc !6531
  br label %do.cond11, !dbg !6529

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6529

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6526

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6532

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6532

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6525
  br label %do.cond16, !dbg !6526

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6526

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6526

if.end:                                           ; preds = %do.end17, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6524
  %tobool18 = icmp ne i32 %5, 0, !dbg !6524
  %lnot19 = xor i1 %tobool18, true, !dbg !6524
  %lnot21 = xor i1 %lnot19, true, !dbg !6524
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6524
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6524
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6524
  store i64 %expval24, ptr %tmp, align 8, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6534
  %6 = load i64, ptr %tmp, align 8, !dbg !6524
  %tobool25 = icmp ne i64 %6, 0, !dbg !6534
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6535

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6536

if.end27:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #18, !dbg !6537
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !6509, metadata !DIExpression()), !dbg !6537
  %7 = load ptr, ptr %hwc, align 8, !dbg !6537
  %state29 = getelementptr inbounds %struct.hw_perf_event, ptr %7, i32 0, i32 4, !dbg !6537
  %8 = load i32, ptr %state29, align 8, !dbg !6537
  %and30 = and i32 %8, 2, !dbg !6537
  %tobool31 = icmp ne i32 %and30, 0, !dbg !6537
  %lnot32 = xor i1 %tobool31, true, !dbg !6537
  %lnot34 = xor i1 %lnot32, true, !dbg !6537
  %lnot36 = xor i1 %lnot34, true, !dbg !6537
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !6537
  store i32 %lnot.ext37, ptr %__ret_warn_on28, align 4, !dbg !6537
  %9 = load i32, ptr %__ret_warn_on28, align 4, !dbg !6538
  %tobool38 = icmp ne i32 %9, 0, !dbg !6538
  %lnot39 = xor i1 %tobool38, true, !dbg !6538
  %lnot41 = xor i1 %lnot39, true, !dbg !6538
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6538
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6538
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6538
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !6538
  br i1 %tobool45, label %if.then46, label %if.end60, !dbg !6537

if.then46:                                        ; preds = %if.end27
  br label %do.body47, !dbg !6538

do.body47:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags48) #18, !dbg !6539
  call void @llvm.dbg.declare(metadata ptr %__flags48, metadata !6511, metadata !DIExpression()), !dbg !6539
  store i32 2307, ptr %__flags48, align 4, !dbg !6539
  br label %do.body49, !dbg !6539

do.body49:                                        ; preds = %do.body47
  br label %do.cond50, !dbg !6540

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !6540

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !6539

do.body52:                                        ; preds = %do.end51
  %10 = load i32, ptr %__flags48, align 4, !dbg !6542
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.69, i32 284, i32 %10, i64 12) #18, !dbg !6542, !srcloc !6544
  br label %do.cond53, !dbg !6542

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6542

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !6539

do.body55:                                        ; preds = %do.end54
  br label %do.cond56, !dbg !6545

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6545

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags48) #18, !dbg !6538
  br label %do.cond58, !dbg !6539

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !6539

do.end59:                                         ; preds = %do.cond58
  br label %if.end60, !dbg !6539

if.end60:                                         ; preds = %do.end59, %if.end27
  %11 = load i32, ptr %__ret_warn_on28, align 4, !dbg !6537
  %tobool62 = icmp ne i32 %11, 0, !dbg !6537
  %lnot63 = xor i1 %tobool62, true, !dbg !6537
  %lnot65 = xor i1 %lnot63, true, !dbg !6537
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !6537
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !6537
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !6537
  store i64 %expval68, ptr %tmp61, align 8, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #18, !dbg !6547
  %12 = load i64, ptr %tmp61, align 8, !dbg !6537
  %13 = load ptr, ptr %hwc, align 8, !dbg !6548
  %state69 = getelementptr inbounds %struct.hw_perf_event, ptr %13, i32 0, i32 4, !dbg !6549
  store i32 0, ptr %state69, align 8, !dbg !6550
  %14 = load ptr, ptr %event.addr, align 8, !dbg !6551
  call void @perf_iommu_enable_event(ptr noundef %14) #19, !dbg !6552
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6553
  %and70 = and i32 %15, 2, !dbg !6554
  %tobool71 = icmp ne i32 %and70, 0, !dbg !6554
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !6555

if.then72:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #18, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6514, metadata !DIExpression()), !dbg !6557
  store i64 0, ptr %count, align 8, !dbg !6557
  call void @llvm.lifetime.start.p0(i64 8, ptr %iommu) #18, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %iommu, metadata !6517, metadata !DIExpression()), !dbg !6559
  %16 = load ptr, ptr %event.addr, align 8, !dbg !6560
  %call = call ptr @perf_event_2_iommu(ptr noundef %16) #19, !dbg !6561
  store ptr %call, ptr %iommu, align 8, !dbg !6559
  %17 = load ptr, ptr %iommu, align 8, !dbg !6562
  %18 = load ptr, ptr %hwc, align 8, !dbg !6563
  %19 = getelementptr inbounds %struct.hw_perf_event, ptr %18, i32 0, i32 0, !dbg !6564
  %iommu_bank = getelementptr inbounds %struct.anon.24, ptr %19, i32 0, i32 0, !dbg !6564
  %20 = load i8, ptr %iommu_bank, align 8, !dbg !6564
  %21 = load ptr, ptr %hwc, align 8, !dbg !6565
  %22 = getelementptr inbounds %struct.hw_perf_event, ptr %21, i32 0, i32 0, !dbg !6566
  %iommu_cntr = getelementptr inbounds %struct.anon.24, ptr %22, i32 0, i32 1, !dbg !6566
  %23 = load i8, ptr %iommu_cntr, align 1, !dbg !6566
  %call73 = call i32 @amd_iommu_pc_set_reg(ptr noundef %17, i8 noundef zeroext %20, i8 noundef zeroext %23, i8 noundef zeroext 0, ptr noundef %count) #19, !dbg !6567
  call void @llvm.lifetime.end.p0(i64 8, ptr %iommu) #18, !dbg !6568
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #18, !dbg !6568
  br label %if.end74, !dbg !6569

if.end74:                                         ; preds = %if.then72, %if.end60
  %24 = load ptr, ptr %event.addr, align 8, !dbg !6570
  call void @perf_event_update_userpage(ptr noundef %24) #19, !dbg !6571
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6572
  br label %cleanup, !dbg !6572

cleanup:                                          ; preds = %if.end74, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !6572
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6572

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_iommu_stop(ptr noundef %event, i32 noundef %flags) #6 align 16 !dbg !6573 {
entry:
  %event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %hwc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6575, metadata !DIExpression()), !dbg !6583
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6576, metadata !DIExpression()), !dbg !6584
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6577, metadata !DIExpression()), !dbg !6586
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6587
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6588
  store ptr %hw, ptr %hwc, align 8, !dbg !6586
  %1 = load ptr, ptr %hwc, align 8, !dbg !6589
  %state = getelementptr inbounds %struct.hw_perf_event, ptr %1, i32 0, i32 4, !dbg !6591
  %2 = load i32, ptr %state, align 8, !dbg !6591
  %and = and i32 %2, 2, !dbg !6592
  %tobool = icmp ne i32 %and, 0, !dbg !6592
  br i1 %tobool, label %if.then, label %if.end, !dbg !6593

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6594

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %event.addr, align 8, !dbg !6595
  call void @perf_iommu_read(ptr noundef %3) #19, !dbg !6596
  %4 = load ptr, ptr %hwc, align 8, !dbg !6597
  %state1 = getelementptr inbounds %struct.hw_perf_event, ptr %4, i32 0, i32 4, !dbg !6598
  %5 = load i32, ptr %state1, align 8, !dbg !6599
  %or = or i32 %5, 2, !dbg !6599
  store i32 %or, ptr %state1, align 8, !dbg !6599
  %6 = load ptr, ptr %event.addr, align 8, !dbg !6600
  call void @perf_iommu_disable_event(ptr noundef %6) #19, !dbg !6601
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6602
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6578, metadata !DIExpression()), !dbg !6602
  %7 = load ptr, ptr %hwc, align 8, !dbg !6602
  %state2 = getelementptr inbounds %struct.hw_perf_event, ptr %7, i32 0, i32 4, !dbg !6602
  %8 = load i32, ptr %state2, align 8, !dbg !6602
  %and3 = and i32 %8, 1, !dbg !6602
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6602
  %lnot = xor i1 %tobool4, true, !dbg !6602
  %lnot5 = xor i1 %lnot, true, !dbg !6602
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6602
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6602
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !6603
  %tobool6 = icmp ne i32 %9, 0, !dbg !6603
  %lnot7 = xor i1 %tobool6, true, !dbg !6603
  %lnot9 = xor i1 %lnot7, true, !dbg !6603
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6603
  %conv = sext i32 %lnot.ext10 to i64, !dbg !6603
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6603
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6603
  br i1 %tobool11, label %if.then12, label %if.end22, !dbg !6602

if.then12:                                        ; preds = %if.end
  br label %do.body, !dbg !6603

do.body:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6580, metadata !DIExpression()), !dbg !6604
  store i32 2307, ptr %__flags, align 4, !dbg !6604
  br label %do.body13, !dbg !6604

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !6605

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !6605

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !6604

do.body14:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !6607
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.69, i32 344, i32 %10, i64 12) #18, !dbg !6607, !srcloc !6609
  br label %do.cond15, !dbg !6607

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6607

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6604

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6610

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6610

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6603
  br label %do.cond20, !dbg !6604

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6604

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6604

if.end22:                                         ; preds = %do.end21, %if.end
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6602
  %tobool23 = icmp ne i32 %11, 0, !dbg !6602
  %lnot24 = xor i1 %tobool23, true, !dbg !6602
  %lnot26 = xor i1 %lnot24, true, !dbg !6602
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !6602
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !6602
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !6602
  store i64 %expval29, ptr %tmp, align 8, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6612
  %12 = load i64, ptr %tmp, align 8, !dbg !6602
  %13 = load ptr, ptr %hwc, align 8, !dbg !6613
  %state30 = getelementptr inbounds %struct.hw_perf_event, ptr %13, i32 0, i32 4, !dbg !6614
  %14 = load i32, ptr %state30, align 8, !dbg !6615
  %or31 = or i32 %14, 1, !dbg !6615
  store i32 %or31, ptr %state30, align 8, !dbg !6615
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6616
  br label %cleanup, !dbg !6616

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !6616
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6616

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_iommu_read(ptr noundef %event) #6 align 16 !dbg !6617 {
entry:
  %event.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %hwc = alloca ptr, align 8
  %iommu = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6619, metadata !DIExpression()), !dbg !6623
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #18, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6620, metadata !DIExpression()), !dbg !6625
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6621, metadata !DIExpression()), !dbg !6627
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6628
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6629
  store ptr %hw, ptr %hwc, align 8, !dbg !6627
  call void @llvm.lifetime.start.p0(i64 8, ptr %iommu) #18, !dbg !6630
  call void @llvm.dbg.declare(metadata ptr %iommu, metadata !6622, metadata !DIExpression()), !dbg !6631
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6632
  %call = call ptr @perf_event_2_iommu(ptr noundef %1) #19, !dbg !6633
  store ptr %call, ptr %iommu, align 8, !dbg !6631
  %2 = load ptr, ptr %iommu, align 8, !dbg !6634
  %3 = load ptr, ptr %hwc, align 8, !dbg !6636
  %4 = getelementptr inbounds %struct.hw_perf_event, ptr %3, i32 0, i32 0, !dbg !6637
  %iommu_bank = getelementptr inbounds %struct.anon.24, ptr %4, i32 0, i32 0, !dbg !6637
  %5 = load i8, ptr %iommu_bank, align 8, !dbg !6637
  %6 = load ptr, ptr %hwc, align 8, !dbg !6638
  %7 = getelementptr inbounds %struct.hw_perf_event, ptr %6, i32 0, i32 0, !dbg !6639
  %iommu_cntr = getelementptr inbounds %struct.anon.24, ptr %7, i32 0, i32 1, !dbg !6639
  %8 = load i8, ptr %iommu_cntr, align 1, !dbg !6639
  %call1 = call i32 @amd_iommu_pc_get_reg(ptr noundef %2, i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext 0, ptr noundef %count) #19, !dbg !6640
  %tobool = icmp ne i32 %call1, 0, !dbg !6640
  br i1 %tobool, label %if.then, label %if.end, !dbg !6641

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6642

if.end:                                           ; preds = %entry
  %9 = load i64, ptr %count, align 8, !dbg !6643
  %and = and i64 %9, 281474976710655, !dbg !6643
  store i64 %and, ptr %count, align 8, !dbg !6643
  %10 = load i64, ptr %count, align 8, !dbg !6644
  %11 = load ptr, ptr %event.addr, align 8, !dbg !6644
  %count2 = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 17, !dbg !6644
  %a = getelementptr inbounds %struct.local64_t, ptr %count2, i32 0, i32 0, !dbg !6644
  call void @local_add(i64 noundef %10, ptr noundef %a) #19, !dbg !6644
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6645
  br label %cleanup, !dbg !6645

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iommu) #18, !dbg !6645
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !6645
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #18, !dbg !6645
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6645

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @csource_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6646 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6648, metadata !DIExpression()), !dbg !6651
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6650, metadata !DIExpression()), !dbg !6651
  br label %do.body, !dbg !6651

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6652

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6651
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.55) #19, !dbg !6651
  %conv = sext i32 %call to i64, !dbg !6651
  ret i64 %conv, !dbg !6651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @devid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6654 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6656, metadata !DIExpression()), !dbg !6659
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6657, metadata !DIExpression()), !dbg !6659
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6658, metadata !DIExpression()), !dbg !6659
  br label %do.body, !dbg !6659

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6660

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6659
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.57) #19, !dbg !6659
  %conv = sext i32 %call to i64, !dbg !6659
  ret i64 %conv, !dbg !6659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pasid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6662 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6664, metadata !DIExpression()), !dbg !6667
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6665, metadata !DIExpression()), !dbg !6667
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6666, metadata !DIExpression()), !dbg !6667
  br label %do.body, !dbg !6667

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6668

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6667
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.59) #19, !dbg !6667
  %conv = sext i32 %call to i64, !dbg !6667
  ret i64 %conv, !dbg !6667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @domid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6670 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6672, metadata !DIExpression()), !dbg !6675
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6673, metadata !DIExpression()), !dbg !6675
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6674, metadata !DIExpression()), !dbg !6675
  br label %do.body, !dbg !6675

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6676

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6675
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.61) #19, !dbg !6675
  %conv = sext i32 %call to i64, !dbg !6675
  ret i64 %conv, !dbg !6675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @devid_mask_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6678 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6680, metadata !DIExpression()), !dbg !6683
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6682, metadata !DIExpression()), !dbg !6683
  br label %do.body, !dbg !6683

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6684

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6683
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.63) #19, !dbg !6683
  %conv = sext i32 %call to i64, !dbg !6683
  ret i64 %conv, !dbg !6683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pasid_mask_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6686 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6688, metadata !DIExpression()), !dbg !6691
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6689, metadata !DIExpression()), !dbg !6691
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6690, metadata !DIExpression()), !dbg !6691
  br label %do.body, !dbg !6691

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6692

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6691
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.65) #19, !dbg !6691
  %conv = sext i32 %call to i64, !dbg !6691
  ret i64 %conv, !dbg !6691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @domid_mask_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !6694 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6696, metadata !DIExpression()), !dbg !6699
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6697, metadata !DIExpression()), !dbg !6699
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6698, metadata !DIExpression()), !dbg !6699
  br label %do.body, !dbg !6699

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6700

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6699
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.67) #19, !dbg !6699
  %conv = sext i32 %call to i64, !dbg !6699
  ret i64 %conv, !dbg !6699
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_iommu_cpumask_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #6 align 16 !dbg !6702 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6704, metadata !DIExpression()), !dbg !6707
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6705, metadata !DIExpression()), !dbg !6708
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6706, metadata !DIExpression()), !dbg !6709
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6710
  %call = call i64 @cpumap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %0, ptr noundef @iommu_cpumask) #19, !dbg !6711
  ret i64 %call, !dbg !6712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_to_pagebuf(i1 noundef zeroext %list, ptr noundef %buf, ptr noundef %mask) #7 align 16 !dbg !6713 {
entry:
  %list.addr = alloca i8, align 1
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %frombool = zext i1 %list to i8
  store i8 %frombool, ptr %list.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6719, metadata !DIExpression()), !dbg !6722
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6720, metadata !DIExpression()), !dbg !6723
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6721, metadata !DIExpression()), !dbg !6724
  %0 = load i8, ptr %list.addr, align 1, !dbg !6725, !range !6130, !noundef !938
  %tobool = trunc i8 %0 to i1, !dbg !6725
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6726
  %2 = load ptr, ptr %mask.addr, align 8, !dbg !6727
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !6727
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6727
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6728
  %call = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext %tobool, ptr noundef %1, ptr noundef %arraydecay, i32 noundef %3) #19, !dbg !6729
  %conv = sext i32 %call to i64, !dbg !6729
  ret i64 %conv, !dbg !6730
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6731 dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_sampling_event(ptr noundef %event) #7 align 16 !dbg !6736 {
entry:
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6740, metadata !DIExpression()), !dbg !6741
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6742
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6743
  %1 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 3, !dbg !6744
  %2 = load i64, ptr %1, align 8, !dbg !6744
  %cmp = icmp ne i64 %2, 0, !dbg !6745
  ret i1 %cmp, !dbg !6746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_next_avail_iommu_bnk_cntr(ptr noundef %event) #6 align 16 !dbg !6747 {
entry:
  %event.addr = alloca ptr, align 8
  %piommu = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %max_cntrs = alloca i32, align 4
  %max_banks = alloca i32, align 4
  %shift = alloca i32, align 4
  %bank = alloca i32, align 4
  %cntr = alloca i32, align 4
  %flags = alloca i64, align 8
  %retval3 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %__dummy23 = alloca i64, align 8
  %__dummy224 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6749, metadata !DIExpression()), !dbg !6769
  call void @llvm.lifetime.start.p0(i64 8, ptr %piommu) #18, !dbg !6770
  call void @llvm.dbg.declare(metadata ptr %piommu, metadata !6750, metadata !DIExpression()), !dbg !6771
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6751, metadata !DIExpression()), !dbg !6772
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6772
  %pmu = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 13, !dbg !6772
  %1 = load ptr, ptr %pmu, align 8, !dbg !6772
  store ptr %1, ptr %__mptr, align 8, !dbg !6772
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6772
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !6772
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6773
  %3 = load ptr, ptr %tmp, align 8, !dbg !6772
  store ptr %3, ptr %piommu, align 8, !dbg !6771
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_cntrs) #18, !dbg !6774
  call void @llvm.dbg.declare(metadata ptr %max_cntrs, metadata !6753, metadata !DIExpression()), !dbg !6775
  %4 = load ptr, ptr %piommu, align 8, !dbg !6776
  %max_counters = getelementptr inbounds %struct.perf_amd_iommu, ptr %4, i32 0, i32 5, !dbg !6777
  %5 = load i8, ptr %max_counters, align 1, !dbg !6777
  %conv = zext i8 %5 to i32, !dbg !6776
  store i32 %conv, ptr %max_cntrs, align 4, !dbg !6775
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_banks) #18, !dbg !6778
  call void @llvm.dbg.declare(metadata ptr %max_banks, metadata !6754, metadata !DIExpression()), !dbg !6779
  %6 = load ptr, ptr %piommu, align 8, !dbg !6780
  %max_banks1 = getelementptr inbounds %struct.perf_amd_iommu, ptr %6, i32 0, i32 4, !dbg !6781
  %7 = load i8, ptr %max_banks1, align 8, !dbg !6781
  %conv2 = zext i8 %7 to i32, !dbg !6780
  store i32 %conv2, ptr %max_banks, align 4, !dbg !6779
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #18, !dbg !6782
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !6755, metadata !DIExpression()), !dbg !6783
  call void @llvm.lifetime.start.p0(i64 4, ptr %bank) #18, !dbg !6782
  call void @llvm.dbg.declare(metadata ptr %bank, metadata !6756, metadata !DIExpression()), !dbg !6784
  call void @llvm.lifetime.start.p0(i64 4, ptr %cntr) #18, !dbg !6782
  call void @llvm.dbg.declare(metadata ptr %cntr, metadata !6757, metadata !DIExpression()), !dbg !6785
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6758, metadata !DIExpression()), !dbg !6787
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval3) #18, !dbg !6788
  call void @llvm.dbg.declare(metadata ptr %retval3, metadata !6759, metadata !DIExpression()), !dbg !6789
  br label %do.body, !dbg !6790

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6760, metadata !DIExpression()), !dbg !6791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6763, metadata !DIExpression()), !dbg !6791
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6791
  %conv4 = zext i1 %cmp to i32, !dbg !6791
  store i32 1, ptr %tmp5, align 4, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !6792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !6792
  %8 = load i32, ptr %tmp5, align 4, !dbg !6791
  %9 = load ptr, ptr %piommu, align 8, !dbg !6792
  %lock = getelementptr inbounds %struct.perf_amd_iommu, ptr %9, i32 0, i32 7, !dbg !6792
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #19, !dbg !6792
  store i64 %call, ptr %flags, align 8, !dbg !6792
  br label %do.cond, !dbg !6792

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6792

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %bank, align 4, !dbg !6793
  br label %for.cond, !dbg !6795

for.cond:                                         ; preds = %for.inc19, %do.end
  %10 = load i32, ptr %bank, align 4, !dbg !6796
  %11 = load i32, ptr %max_banks, align 4, !dbg !6798
  %cmp6 = icmp ult i32 %10, %11, !dbg !6799
  br i1 %cmp6, label %for.body, label %for.end21, !dbg !6800

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %cntr, align 4, !dbg !6801
  br label %for.cond8, !dbg !6804

for.cond8:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %cntr, align 4, !dbg !6805
  %13 = load i32, ptr %max_cntrs, align 4, !dbg !6807
  %cmp9 = icmp ult i32 %12, %13, !dbg !6808
  br i1 %cmp9, label %for.body11, label %for.end, !dbg !6809

for.body11:                                       ; preds = %for.cond8
  %14 = load i32, ptr %bank, align 4, !dbg !6810
  %15 = load i32, ptr %bank, align 4, !dbg !6812
  %mul = mul i32 %15, 3, !dbg !6813
  %add = add i32 %14, %mul, !dbg !6814
  %16 = load i32, ptr %cntr, align 4, !dbg !6815
  %add12 = add i32 %add, %16, !dbg !6816
  store i32 %add12, ptr %shift, align 4, !dbg !6817
  %17 = load ptr, ptr %piommu, align 8, !dbg !6818
  %cntr_assign_mask = getelementptr inbounds %struct.perf_amd_iommu, ptr %17, i32 0, i32 6, !dbg !6820
  %18 = load i64, ptr %cntr_assign_mask, align 8, !dbg !6820
  %19 = load i32, ptr %shift, align 4, !dbg !6821
  %sh_prom = zext i32 %19 to i64, !dbg !6821
  %shl = shl i64 1, %sh_prom, !dbg !6821
  %and = and i64 %18, %shl, !dbg !6822
  %tobool = icmp ne i64 %and, 0, !dbg !6822
  br i1 %tobool, label %if.then, label %if.else, !dbg !6823

if.then:                                          ; preds = %for.body11
  br label %for.inc, !dbg !6824

if.else:                                          ; preds = %for.body11
  %20 = load i32, ptr %shift, align 4, !dbg !6826
  %sh_prom13 = zext i32 %20 to i64, !dbg !6826
  %shl14 = shl i64 1, %sh_prom13, !dbg !6826
  %21 = load ptr, ptr %piommu, align 8, !dbg !6828
  %cntr_assign_mask15 = getelementptr inbounds %struct.perf_amd_iommu, ptr %21, i32 0, i32 6, !dbg !6829
  %22 = load i64, ptr %cntr_assign_mask15, align 8, !dbg !6830
  %or = or i64 %22, %shl14, !dbg !6830
  store i64 %or, ptr %cntr_assign_mask15, align 8, !dbg !6830
  %23 = load i32, ptr %bank, align 4, !dbg !6831
  %conv16 = trunc i32 %23 to i8, !dbg !6831
  %24 = load ptr, ptr %event.addr, align 8, !dbg !6832
  %hw = getelementptr inbounds %struct.perf_event, ptr %24, i32 0, i32 26, !dbg !6833
  %25 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6834
  %iommu_bank = getelementptr inbounds %struct.anon.24, ptr %25, i32 0, i32 0, !dbg !6834
  store i8 %conv16, ptr %iommu_bank, align 8, !dbg !6835
  %26 = load i32, ptr %cntr, align 4, !dbg !6836
  %conv17 = trunc i32 %26 to i8, !dbg !6836
  %27 = load ptr, ptr %event.addr, align 8, !dbg !6837
  %hw18 = getelementptr inbounds %struct.perf_event, ptr %27, i32 0, i32 26, !dbg !6838
  %28 = getelementptr inbounds %struct.hw_perf_event, ptr %hw18, i32 0, i32 0, !dbg !6839
  %iommu_cntr = getelementptr inbounds %struct.anon.24, ptr %28, i32 0, i32 1, !dbg !6839
  store i8 %conv17, ptr %iommu_cntr, align 1, !dbg !6840
  store i32 0, ptr %retval3, align 4, !dbg !6841
  br label %out, !dbg !6842

for.inc:                                          ; preds = %if.then
  %29 = load i32, ptr %cntr, align 4, !dbg !6843
  %inc = add i32 %29, 1, !dbg !6843
  store i32 %inc, ptr %cntr, align 4, !dbg !6843
  br label %for.cond8, !dbg !6844, !llvm.loop !6845

for.end:                                          ; preds = %for.cond8
  br label %for.inc19, !dbg !6847

for.inc19:                                        ; preds = %for.end
  %30 = load i32, ptr %bank, align 4, !dbg !6848
  %inc20 = add i32 %30, 1, !dbg !6848
  store i32 %inc20, ptr %bank, align 4, !dbg !6848
  br label %for.cond, !dbg !6849, !llvm.loop !6850

for.end21:                                        ; preds = %for.cond
  store i32 -28, ptr %retval3, align 4, !dbg !6852
  br label %out, !dbg !6853

out:                                              ; preds = %for.end21, %if.else
  call void @llvm.dbg.label(metadata !6764), !dbg !6854
  br label %do.body22, !dbg !6855

do.body22:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy23) #18, !dbg !6856
  call void @llvm.dbg.declare(metadata ptr %__dummy23, metadata !6765, metadata !DIExpression()), !dbg !6856
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy224) #18, !dbg !6856
  call void @llvm.dbg.declare(metadata ptr %__dummy224, metadata !6768, metadata !DIExpression()), !dbg !6856
  %cmp25 = icmp eq ptr %__dummy23, %__dummy224, !dbg !6856
  %conv26 = zext i1 %cmp25 to i32, !dbg !6856
  store i32 1, ptr %tmp27, align 4, !dbg !6856
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy224) #18, !dbg !6857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy23) #18, !dbg !6857
  %31 = load i32, ptr %tmp27, align 4, !dbg !6856
  %32 = load ptr, ptr %piommu, align 8, !dbg !6857
  %lock28 = getelementptr inbounds %struct.perf_amd_iommu, ptr %32, i32 0, i32 7, !dbg !6857
  %33 = load i64, ptr %flags, align 8, !dbg !6857
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock28, i64 noundef %33) #19, !dbg !6857
  br label %do.cond29, !dbg !6857

do.cond29:                                        ; preds = %do.body22
  br label %do.end30, !dbg !6857

do.end30:                                         ; preds = %do.cond29
  %34 = load i32, ptr %retval3, align 4, !dbg !6858
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval3) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %cntr) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %bank) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_banks) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_cntrs) #18, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 8, ptr %piommu) #18, !dbg !6859
  ret i32 %34, !dbg !6860
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6861 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6866 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clear_avail_iommu_bnk_cntr(ptr noundef %perf_iommu, i8 noundef zeroext %bank, i8 noundef zeroext %cntr) #6 align 16 !dbg !6869 {
entry:
  %retval = alloca i32, align 4
  %perf_iommu.addr = alloca ptr, align 8
  %bank.addr = alloca i8, align 1
  %cntr.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  %max_banks = alloca i32, align 4
  %max_cntrs = alloca i32, align 4
  %shift = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  store ptr %perf_iommu, ptr %perf_iommu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %perf_iommu.addr, metadata !6873, metadata !DIExpression()), !dbg !6888
  store i8 %bank, ptr %bank.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bank.addr, metadata !6874, metadata !DIExpression()), !dbg !6889
  store i8 %cntr, ptr %cntr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cntr.addr, metadata !6875, metadata !DIExpression()), !dbg !6890
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !6891
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6876, metadata !DIExpression()), !dbg !6892
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_banks) #18, !dbg !6893
  call void @llvm.dbg.declare(metadata ptr %max_banks, metadata !6877, metadata !DIExpression()), !dbg !6894
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_cntrs) #18, !dbg !6893
  call void @llvm.dbg.declare(metadata ptr %max_cntrs, metadata !6878, metadata !DIExpression()), !dbg !6895
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #18, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !6879, metadata !DIExpression()), !dbg !6897
  store i32 0, ptr %shift, align 4, !dbg !6897
  %0 = load ptr, ptr %perf_iommu.addr, align 8, !dbg !6898
  %max_banks1 = getelementptr inbounds %struct.perf_amd_iommu, ptr %0, i32 0, i32 4, !dbg !6899
  %1 = load i8, ptr %max_banks1, align 8, !dbg !6899
  %conv = zext i8 %1 to i32, !dbg !6898
  store i32 %conv, ptr %max_banks, align 4, !dbg !6900
  %2 = load ptr, ptr %perf_iommu.addr, align 8, !dbg !6901
  %max_counters = getelementptr inbounds %struct.perf_amd_iommu, ptr %2, i32 0, i32 5, !dbg !6902
  %3 = load i8, ptr %max_counters, align 1, !dbg !6902
  %conv2 = zext i8 %3 to i32, !dbg !6901
  store i32 %conv2, ptr %max_cntrs, align 4, !dbg !6903
  %4 = load i8, ptr %bank.addr, align 1, !dbg !6904
  %conv3 = zext i8 %4 to i32, !dbg !6904
  %5 = load i32, ptr %max_banks, align 4, !dbg !6906
  %cmp = icmp sgt i32 %conv3, %5, !dbg !6907
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6908

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8, ptr %cntr.addr, align 1, !dbg !6909
  %conv5 = zext i8 %6 to i32, !dbg !6909
  %7 = load i32, ptr %max_cntrs, align 4, !dbg !6910
  %cmp6 = icmp sgt i32 %conv5, %7, !dbg !6911
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6912

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6913

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i8, ptr %bank.addr, align 1, !dbg !6914
  %conv8 = zext i8 %8 to i32, !dbg !6914
  %9 = load i8, ptr %cntr.addr, align 1, !dbg !6915
  %conv9 = zext i8 %9 to i32, !dbg !6915
  %add = add i32 %conv8, %conv9, !dbg !6916
  %10 = load i8, ptr %bank.addr, align 1, !dbg !6917
  %conv10 = zext i8 %10 to i32, !dbg !6917
  %mul = mul i32 %conv10, 3, !dbg !6918
  %add11 = add i32 %add, %mul, !dbg !6919
  store i32 %add11, ptr %shift, align 4, !dbg !6920
  br label %do.body, !dbg !6921

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !6922
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6880, metadata !DIExpression()), !dbg !6922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !6922
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6883, metadata !DIExpression()), !dbg !6922
  %cmp12 = icmp eq ptr %__dummy, %__dummy2, !dbg !6922
  %conv13 = zext i1 %cmp12 to i32, !dbg !6922
  store i32 1, ptr %tmp, align 4, !dbg !6922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !6923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !6923
  %11 = load i32, ptr %tmp, align 4, !dbg !6922
  %12 = load ptr, ptr %perf_iommu.addr, align 8, !dbg !6923
  %lock = getelementptr inbounds %struct.perf_amd_iommu, ptr %12, i32 0, i32 7, !dbg !6923
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #19, !dbg !6923
  store i64 %call, ptr %flags, align 8, !dbg !6923
  br label %do.cond, !dbg !6923

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6923

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %shift, align 4, !dbg !6924
  %sh_prom = zext i32 %13 to i64, !dbg !6925
  %shl = shl i64 1, %sh_prom, !dbg !6925
  %not = xor i64 %shl, -1, !dbg !6926
  %14 = load ptr, ptr %perf_iommu.addr, align 8, !dbg !6927
  %cntr_assign_mask = getelementptr inbounds %struct.perf_amd_iommu, ptr %14, i32 0, i32 6, !dbg !6928
  %15 = load i64, ptr %cntr_assign_mask, align 8, !dbg !6929
  %and = and i64 %15, %not, !dbg !6929
  store i64 %and, ptr %cntr_assign_mask, align 8, !dbg !6929
  br label %do.body14, !dbg !6930

do.body14:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy15) #18, !dbg !6931
  call void @llvm.dbg.declare(metadata ptr %__dummy15, metadata !6884, metadata !DIExpression()), !dbg !6931
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy216) #18, !dbg !6931
  call void @llvm.dbg.declare(metadata ptr %__dummy216, metadata !6887, metadata !DIExpression()), !dbg !6931
  %cmp17 = icmp eq ptr %__dummy15, %__dummy216, !dbg !6931
  %conv18 = zext i1 %cmp17 to i32, !dbg !6931
  store i32 1, ptr %tmp19, align 4, !dbg !6931
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy216) #18, !dbg !6932
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy15) #18, !dbg !6932
  %16 = load i32, ptr %tmp19, align 4, !dbg !6931
  %17 = load ptr, ptr %perf_iommu.addr, align 8, !dbg !6932
  %lock20 = getelementptr inbounds %struct.perf_amd_iommu, ptr %17, i32 0, i32 7, !dbg !6932
  %18 = load i64, ptr %flags, align 8, !dbg !6932
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock20, i64 noundef %18) #19, !dbg !6932
  br label %do.cond21, !dbg !6932

do.cond21:                                        ; preds = %do.body14
  br label %do.end22, !dbg !6932

do.end22:                                         ; preds = %do.cond21
  store i32 0, ptr %retval, align 4, !dbg !6933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6933

cleanup:                                          ; preds = %do.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #18, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_cntrs) #18, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_banks) #18, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !6934
  %19 = load i32, ptr %retval, align 4, !dbg !6934
  ret i32 %19, !dbg !6934
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6935 dso_local void @perf_event_update_userpage(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_iommu_enable_event(ptr noundef %ev) #6 align 16 !dbg !6936 {
entry:
  %ev.addr = alloca ptr, align 8
  %iommu = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %bank = alloca i8, align 1
  %cntr = alloca i8, align 1
  %reg = alloca i64, align 8
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !6938, metadata !DIExpression()), !dbg !6944
  call void @llvm.lifetime.start.p0(i64 8, ptr %iommu) #18, !dbg !6945
  call void @llvm.dbg.declare(metadata ptr %iommu, metadata !6939, metadata !DIExpression()), !dbg !6946
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !6947
  %call = call ptr @perf_event_2_iommu(ptr noundef %0) #19, !dbg !6948
  store ptr %call, ptr %iommu, align 8, !dbg !6946
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !6949
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6940, metadata !DIExpression()), !dbg !6950
  %1 = load ptr, ptr %ev.addr, align 8, !dbg !6951
  %hw = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 26, !dbg !6952
  store ptr %hw, ptr %hwc, align 8, !dbg !6950
  call void @llvm.lifetime.start.p0(i64 1, ptr %bank) #18, !dbg !6953
  call void @llvm.dbg.declare(metadata ptr %bank, metadata !6941, metadata !DIExpression()), !dbg !6954
  %2 = load ptr, ptr %hwc, align 8, !dbg !6955
  %3 = getelementptr inbounds %struct.hw_perf_event, ptr %2, i32 0, i32 0, !dbg !6956
  %iommu_bank = getelementptr inbounds %struct.anon.24, ptr %3, i32 0, i32 0, !dbg !6956
  %4 = load i8, ptr %iommu_bank, align 8, !dbg !6956
  store i8 %4, ptr %bank, align 1, !dbg !6954
  call void @llvm.lifetime.start.p0(i64 1, ptr %cntr) #18, !dbg !6957
  call void @llvm.dbg.declare(metadata ptr %cntr, metadata !6942, metadata !DIExpression()), !dbg !6958
  %5 = load ptr, ptr %hwc, align 8, !dbg !6959
  %6 = getelementptr inbounds %struct.hw_perf_event, ptr %5, i32 0, i32 0, !dbg !6960
  %iommu_cntr = getelementptr inbounds %struct.anon.24, ptr %6, i32 0, i32 1, !dbg !6960
  %7 = load i8, ptr %iommu_cntr, align 1, !dbg !6960
  store i8 %7, ptr %cntr, align 1, !dbg !6958
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #18, !dbg !6961
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !6943, metadata !DIExpression()), !dbg !6962
  store i64 0, ptr %reg, align 8, !dbg !6962
  %8 = load ptr, ptr %hwc, align 8, !dbg !6963
  %9 = getelementptr inbounds %struct.hw_perf_event, ptr %8, i32 0, i32 0, !dbg !6963
  %conf = getelementptr inbounds %struct.anon.24, ptr %9, i32 0, i32 3, !dbg !6963
  %10 = load i64, ptr %conf, align 8, !dbg !6963
  %and = and i64 %10, 255, !dbg !6963
  store i64 %and, ptr %reg, align 8, !dbg !6964
  %11 = load ptr, ptr %iommu, align 8, !dbg !6965
  %12 = load i8, ptr %bank, align 1, !dbg !6966
  %13 = load i8, ptr %cntr, align 1, !dbg !6967
  %call1 = call i32 @amd_iommu_pc_set_reg(ptr noundef %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext 8, ptr noundef %reg) #19, !dbg !6968
  %14 = load ptr, ptr %hwc, align 8, !dbg !6969
  %15 = getelementptr inbounds %struct.hw_perf_event, ptr %14, i32 0, i32 0, !dbg !6969
  %conf1 = getelementptr inbounds %struct.anon.24, ptr %15, i32 0, i32 4, !dbg !6969
  %16 = load i64, ptr %conf1, align 8, !dbg !6969
  %and2 = and i64 %16, 65535, !dbg !6969
  store i64 %and2, ptr %reg, align 8, !dbg !6970
  %17 = load ptr, ptr %hwc, align 8, !dbg !6971
  %18 = getelementptr inbounds %struct.hw_perf_event, ptr %17, i32 0, i32 0, !dbg !6971
  %conf3 = getelementptr inbounds %struct.anon.24, ptr %18, i32 0, i32 3, !dbg !6971
  %19 = load i64, ptr %conf3, align 8, !dbg !6971
  %shr = lshr i64 %19, 8, !dbg !6971
  %and4 = and i64 %shr, 65535, !dbg !6971
  %20 = load i64, ptr %reg, align 8, !dbg !6972
  %shl = shl i64 %20, 32, !dbg !6973
  %or = or i64 %and4, %shl, !dbg !6974
  store i64 %or, ptr %reg, align 8, !dbg !6975
  %21 = load i64, ptr %reg, align 8, !dbg !6976
  %tobool = icmp ne i64 %21, 0, !dbg !6976
  br i1 %tobool, label %if.then, label %if.end, !dbg !6978

if.then:                                          ; preds = %entry
  %22 = load i64, ptr %reg, align 8, !dbg !6979
  %or5 = or i64 %22, 2147483648, !dbg !6979
  store i64 %or5, ptr %reg, align 8, !dbg !6979
  br label %if.end, !dbg !6980

if.end:                                           ; preds = %if.then, %entry
  %23 = load ptr, ptr %iommu, align 8, !dbg !6981
  %24 = load i8, ptr %bank, align 1, !dbg !6982
  %25 = load i8, ptr %cntr, align 1, !dbg !6983
  %call6 = call i32 @amd_iommu_pc_set_reg(ptr noundef %23, i8 noundef zeroext %24, i8 noundef zeroext %25, i8 noundef zeroext 32, ptr noundef %reg) #19, !dbg !6984
  %26 = load ptr, ptr %hwc, align 8, !dbg !6985
  %27 = getelementptr inbounds %struct.hw_perf_event, ptr %26, i32 0, i32 0, !dbg !6985
  %conf17 = getelementptr inbounds %struct.anon.24, ptr %27, i32 0, i32 4, !dbg !6985
  %28 = load i64, ptr %conf17, align 8, !dbg !6985
  %shr8 = lshr i64 %28, 32, !dbg !6985
  %and9 = and i64 %shr8, 1048575, !dbg !6985
  store i64 %and9, ptr %reg, align 8, !dbg !6986
  %29 = load ptr, ptr %hwc, align 8, !dbg !6987
  %30 = getelementptr inbounds %struct.hw_perf_event, ptr %29, i32 0, i32 0, !dbg !6987
  %conf10 = getelementptr inbounds %struct.anon.24, ptr %30, i32 0, i32 3, !dbg !6987
  %31 = load i64, ptr %conf10, align 8, !dbg !6987
  %shr11 = lshr i64 %31, 40, !dbg !6987
  %and12 = and i64 %shr11, 1048575, !dbg !6987
  %32 = load i64, ptr %reg, align 8, !dbg !6988
  %shl13 = shl i64 %32, 32, !dbg !6989
  %or14 = or i64 %and12, %shl13, !dbg !6990
  store i64 %or14, ptr %reg, align 8, !dbg !6991
  %33 = load i64, ptr %reg, align 8, !dbg !6992
  %tobool15 = icmp ne i64 %33, 0, !dbg !6992
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !6994

if.then16:                                        ; preds = %if.end
  %34 = load i64, ptr %reg, align 8, !dbg !6995
  %or17 = or i64 %34, 2147483648, !dbg !6995
  store i64 %or17, ptr %reg, align 8, !dbg !6995
  br label %if.end18, !dbg !6996

if.end18:                                         ; preds = %if.then16, %if.end
  %35 = load ptr, ptr %iommu, align 8, !dbg !6997
  %36 = load i8, ptr %bank, align 1, !dbg !6998
  %37 = load i8, ptr %cntr, align 1, !dbg !6999
  %call19 = call i32 @amd_iommu_pc_set_reg(ptr noundef %35, i8 noundef zeroext %36, i8 noundef zeroext %37, i8 noundef zeroext 16, ptr noundef %reg) #19, !dbg !7000
  %38 = load ptr, ptr %hwc, align 8, !dbg !7001
  %39 = getelementptr inbounds %struct.hw_perf_event, ptr %38, i32 0, i32 0, !dbg !7001
  %conf120 = getelementptr inbounds %struct.anon.24, ptr %39, i32 0, i32 4, !dbg !7001
  %40 = load i64, ptr %conf120, align 8, !dbg !7001
  %shr21 = lshr i64 %40, 16, !dbg !7001
  %and22 = and i64 %shr21, 65535, !dbg !7001
  store i64 %and22, ptr %reg, align 8, !dbg !7002
  %41 = load ptr, ptr %hwc, align 8, !dbg !7003
  %42 = getelementptr inbounds %struct.hw_perf_event, ptr %41, i32 0, i32 0, !dbg !7003
  %conf23 = getelementptr inbounds %struct.anon.24, ptr %42, i32 0, i32 3, !dbg !7003
  %43 = load i64, ptr %conf23, align 8, !dbg !7003
  %shr24 = lshr i64 %43, 24, !dbg !7003
  %and25 = and i64 %shr24, 65535, !dbg !7003
  %44 = load i64, ptr %reg, align 8, !dbg !7004
  %shl26 = shl i64 %44, 32, !dbg !7005
  %or27 = or i64 %and25, %shl26, !dbg !7006
  store i64 %or27, ptr %reg, align 8, !dbg !7007
  %45 = load i64, ptr %reg, align 8, !dbg !7008
  %tobool28 = icmp ne i64 %45, 0, !dbg !7008
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !7010

if.then29:                                        ; preds = %if.end18
  %46 = load i64, ptr %reg, align 8, !dbg !7011
  %or30 = or i64 %46, 2147483648, !dbg !7011
  store i64 %or30, ptr %reg, align 8, !dbg !7011
  br label %if.end31, !dbg !7012

if.end31:                                         ; preds = %if.then29, %if.end18
  %47 = load ptr, ptr %iommu, align 8, !dbg !7013
  %48 = load i8, ptr %bank, align 1, !dbg !7014
  %49 = load i8, ptr %cntr, align 1, !dbg !7015
  %call32 = call i32 @amd_iommu_pc_set_reg(ptr noundef %47, i8 noundef zeroext %48, i8 noundef zeroext %49, i8 noundef zeroext 24, ptr noundef %reg) #19, !dbg !7016
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #18, !dbg !7017
  call void @llvm.lifetime.end.p0(i64 1, ptr %cntr) #18, !dbg !7017
  call void @llvm.lifetime.end.p0(i64 1, ptr %bank) #18, !dbg !7017
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !7017
  call void @llvm.lifetime.end.p0(i64 8, ptr %iommu) #18, !dbg !7017
  ret void, !dbg !7017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @perf_event_2_iommu(ptr noundef %ev) #7 align 16 !dbg !7018 {
entry:
  %ev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !7022, metadata !DIExpression()), !dbg !7025
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7023, metadata !DIExpression()), !dbg !7026
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !7026
  %pmu = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 13, !dbg !7026
  %1 = load ptr, ptr %pmu, align 8, !dbg !7026
  store ptr %1, ptr %__mptr, align 8, !dbg !7026
  %2 = load ptr, ptr %__mptr, align 8, !dbg !7026
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !7026
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !7027
  %3 = load ptr, ptr %tmp, align 8, !dbg !7026
  %iommu = getelementptr inbounds %struct.perf_amd_iommu, ptr %3, i32 0, i32 2, !dbg !7028
  %4 = load ptr, ptr %iommu, align 8, !dbg !7028
  ret ptr %4, !dbg !7029
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7030 dso_local i32 @amd_iommu_pc_set_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_iommu_disable_event(ptr noundef %event) #6 align 16 !dbg !7033 {
entry:
  %event.addr = alloca ptr, align 8
  %iommu = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %reg = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7035, metadata !DIExpression()), !dbg !7039
  call void @llvm.lifetime.start.p0(i64 8, ptr %iommu) #18, !dbg !7040
  call void @llvm.dbg.declare(metadata ptr %iommu, metadata !7036, metadata !DIExpression()), !dbg !7041
  %0 = load ptr, ptr %event.addr, align 8, !dbg !7042
  %call = call ptr @perf_event_2_iommu(ptr noundef %0) #19, !dbg !7043
  store ptr %call, ptr %iommu, align 8, !dbg !7041
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #18, !dbg !7044
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !7037, metadata !DIExpression()), !dbg !7045
  %1 = load ptr, ptr %event.addr, align 8, !dbg !7046
  %hw = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 26, !dbg !7047
  store ptr %hw, ptr %hwc, align 8, !dbg !7045
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #18, !dbg !7048
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !7038, metadata !DIExpression()), !dbg !7049
  store i64 0, ptr %reg, align 8, !dbg !7049
  %2 = load ptr, ptr %iommu, align 8, !dbg !7050
  %3 = load ptr, ptr %hwc, align 8, !dbg !7051
  %4 = getelementptr inbounds %struct.hw_perf_event, ptr %3, i32 0, i32 0, !dbg !7052
  %iommu_bank = getelementptr inbounds %struct.anon.24, ptr %4, i32 0, i32 0, !dbg !7052
  %5 = load i8, ptr %iommu_bank, align 8, !dbg !7052
  %6 = load ptr, ptr %hwc, align 8, !dbg !7053
  %7 = getelementptr inbounds %struct.hw_perf_event, ptr %6, i32 0, i32 0, !dbg !7054
  %iommu_cntr = getelementptr inbounds %struct.anon.24, ptr %7, i32 0, i32 1, !dbg !7054
  %8 = load i8, ptr %iommu_cntr, align 1, !dbg !7054
  %call1 = call i32 @amd_iommu_pc_set_reg(ptr noundef %2, i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext 8, ptr noundef %reg) #19, !dbg !7055
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #18, !dbg !7056
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #18, !dbg !7056
  call void @llvm.lifetime.end.p0(i64 8, ptr %iommu) #18, !dbg !7056
  ret void, !dbg !7056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7057 dso_local i32 @amd_iommu_pc_get_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_add(i64 noundef %i, ptr noundef %l) #7 align 16 !dbg !7058 {
entry:
  %i.addr = alloca i64, align 8
  %l.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7063, metadata !DIExpression()), !dbg !7065
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !7064, metadata !DIExpression()), !dbg !7066
  %0 = load ptr, ptr %l.addr, align 8, !dbg !7067
  %a = getelementptr inbounds %struct.local_t, ptr %0, i32 0, i32 0, !dbg !7068
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %a, i32 0, i32 0, !dbg !7069
  %1 = load i64, ptr %i.addr, align 8, !dbg !7070
  call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #18, !dbg !7071, !srcloc !7072
  ret void, !dbg !7073
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !7074 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7078, metadata !DIExpression()), !dbg !7081
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7079, metadata !DIExpression()), !dbg !7082
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7080, metadata !DIExpression()), !dbg !7083
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7084
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7086
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7087
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !7088
  br i1 %call, label %if.end, label %if.then, !dbg !7089

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7090

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7091
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7092
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7093
  store ptr %3, ptr %prev1, align 8, !dbg !7094
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7095
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7096
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7097
  store ptr %5, ptr %next2, align 8, !dbg !7098
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7099
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7100
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7101
  store ptr %7, ptr %prev3, align 8, !dbg !7102
  br label %do.body, !dbg !7103

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7104

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7106

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7104

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7108
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7108
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7108
  store volatile ptr %9, ptr %next6, align 8, !dbg !7108
  br label %do.end7, !dbg !7108

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7104

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !7111 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7115, metadata !DIExpression()), !dbg !7118
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7116, metadata !DIExpression()), !dbg !7119
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7117, metadata !DIExpression()), !dbg !7120
  ret i1 true, !dbg !7121
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7122 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7129, metadata !DIExpression()), !dbg !7131
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7130, metadata !DIExpression()), !dbg !7132
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7133
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7134
  %div = sdiv i64 %1, 64, !dbg !7134
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7135
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !7136
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7137
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7138
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !7139
  ret void, !dbg !7140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !7141 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7145, metadata !DIExpression()), !dbg !7146
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7147
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #19, !dbg !7148
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !7149
  ret i32 %1, !dbg !7150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7151 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7159, metadata !DIExpression()), !dbg !7161
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7160, metadata !DIExpression()), !dbg !7162
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7163
  %1 = load i64, ptr %size.addr, align 8, !dbg !7164
  %conv = trunc i64 %1 to i32, !dbg !7164
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !7165
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7166
  %3 = load i64, ptr %size.addr, align 8, !dbg !7166
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !7166
  ret void, !dbg !7167
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7168 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7171, metadata !DIExpression()), !dbg !7173
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7172, metadata !DIExpression()), !dbg !7174
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7175
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7177
  br i1 %1, label %if.then, label %if.else, !dbg !7178

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7179
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7179
  %shr = ashr i64 %3, 3, !dbg !7179
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7179
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7181
  %and = and i64 %4, 7, !dbg !7181
  %sh_prom = trunc i64 %and to i32, !dbg !7181
  %shl = shl i32 1, %sh_prom, !dbg !7181
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !7182, !srcloc !7183
  br label %if.end, !dbg !7184

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7185
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7187
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !7188, !srcloc !7189
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7190
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !7191 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7196, metadata !DIExpression()), !dbg !7198
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7197, metadata !DIExpression()), !dbg !7199
  ret i1 true, !dbg !7200
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !7201 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7206, metadata !DIExpression()), !dbg !7209
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7207, metadata !DIExpression()), !dbg !7210
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7208, metadata !DIExpression()), !dbg !7211
  ret void, !dbg !7212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !7213 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7217, metadata !DIExpression()), !dbg !7219
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7218, metadata !DIExpression()), !dbg !7220
  ret void, !dbg !7221
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(0,1) }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838}
!llvm.ident = !{!5839}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_iommu__318_489_amd_iommu_pc_init6319", scope: !2, file: !3, line: 489, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/events/amd/.iommu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/events/amd/iommu\22 -D KBUILD_BASENAME=\22iommu\22 -D KBUILD_MODNAME=\22iommu\22 -D __KBUILD_MODNAME=kmod_iommu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/events/amd/iommu.ll arch/x86/events/amd/iommu.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !260, globals: !5607, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/events/amd/iommu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "704b54d2b9ac9a987cd5500ad09ad824")
!4 = !{!5, !13, !18, !23, !119, !125, !141, !149, !156, !165, !173, !179, !186, !192, !198, !205, !213, !220, !229, !234, !239, !245, !250}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !120, line: 16, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "TT_NONE", value: 0)
!123 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!124 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !157, line: 593, baseType: !34, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!160 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!161 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!162 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!163 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!164 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !166, line: 9, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!167 = !{!168, !169, !170, !171, !172}
!168 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!169 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!170 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!171 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!172 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !174, line: 54, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "USRQUOTA", value: 0)
!177 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!178 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !180, line: 15, baseType: !7, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!181 = !{!182, !183, !184, !185}
!182 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!183 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!184 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!185 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !187, line: 26, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!190 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!191 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !193, line: 45, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!196 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!197 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !199, line: 487, baseType: !7, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!200 = !{!201, !202, !203, !204}
!201 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!202 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!203 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!204 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !206, line: 620, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!207 = !{!208, !209, !210, !211, !212}
!208 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!209 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!210 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!211 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!212 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !206, line: 597, baseType: !34, size: 32, elements: !214)
!214 = !{!215, !216, !217, !218, !219}
!215 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!216 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!217 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!218 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!219 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !199, line: 547, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228}
!222 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!223 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!224 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!225 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!226 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!227 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!228 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !199, line: 564, baseType: !7, size: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!233 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !199, line: 577, baseType: !7, size: 32, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!238 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !199, line: 503, baseType: !7, size: 32, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!243 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!244 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 10, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!247 = !{!248, !249}
!248 = !DIEnumerator(name: "false", value: 0)
!249 = !DIEnumerator(name: "true", value: 1)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !251, line: 364, baseType: !7, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!252 = !{!253, !254, !255, !256, !257, !258, !259}
!253 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!254 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!255 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!256 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!257 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!258 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!259 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!260 = !{!32, !261, !262, !51, !5587, !34, !5601, !5603, !5605, !7}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_iommu_event_desc", file: !3, line: 82, size: 320, elements: !264)
!264 = !{!265, !5586}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !263, file: !3, line: 83, baseType: !266, size: 256)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !199, line: 106, size: 256, elements: !267)
!267 = !{!268, !274, !5582}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !266, file: !199, line: 107, baseType: !269, size: 128)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !270, line: 30, size: 128, elements: !271)
!270 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !270, line: 31, baseType: !28, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !269, file: !270, line: 32, baseType: !36, size: 16, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !266, file: !199, line: 108, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !282, !5581, !327}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !281)
!281 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !199, line: 705, size: 5824, elements: !284)
!284 = !{!285, !5236, !5237, !5240, !5241, !5294, !5364, !5365, !5366, !5367, !5368, !5375, !5467, !5480, !5490, !5494, !5496, !5497, !5498, !5502, !5509, !5510, !5513, !5516, !5520, !5523, !5524, !5525, !5526, !5527, !5528, !5558, !5559, !5560, !5563, !5566, !5575, !5576, !5577, !5578, !5579, !5580}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !199, line: 706, baseType: !286, size: 512)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !287, line: 64, size: 512, elements: !288)
!287 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!288 = !{!289, !290, !291, !293, !340, !5225, !5226, !5231, !5232, !5233, !5234, !5235}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 65, baseType: !28, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !286, file: !287, line: 66, baseType: !109, size: 128, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !287, line: 67, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !286, file: !287, line: 68, baseType: !294, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !287, line: 168, size: 768, elements: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !295, file: !287, line: 169, baseType: !109, size: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !295, file: !287, line: 170, baseType: !71, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !295, file: !287, line: 171, baseType: !286, size: 512, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !295, file: !287, line: 172, baseType: !301, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !287, line: 133, size: 192, elements: !304)
!304 = !{!305, !312, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !303, file: !287, line: 134, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!34, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !287, line: 135, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!28, !310}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !303, file: !287, line: 136, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!34, !310, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !287, line: 125, size: 20736, elements: !324)
!324 = !{!325, !330, !334, !335, !339}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !323, file: !287, line: 126, baseType: !326, size: 192)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 192, elements: !328)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!328 = !{!329}
!329 = !DISubrange(count: 3)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !323, file: !287, line: 127, baseType: !331, size: 4096, offset: 192)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 4096, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !323, file: !287, line: 128, baseType: !34, size: 32, offset: 4288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !323, file: !287, line: 129, baseType: !336, size: 16384, offset: 4320)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 2048)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !323, file: !287, line: 130, baseType: !34, size: 32, offset: 20704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !286, file: !287, line: 69, baseType: !341, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !287, line: 116, size: 384, elements: !344)
!344 = !{!345, !349, !363, !5189, !5217, !5221}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !343, file: !287, line: 117, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !292}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !343, file: !287, line: 118, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !270, line: 254, size: 128, elements: !353)
!353 = !{!354, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !352, file: !270, line: 255, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!278, !292, !358, !327}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !352, file: !270, line: 256, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!278, !292, !358, !28, !47}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !343, file: !287, line: 119, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !270, line: 84, size: 320, elements: !368)
!368 = !{!369, !370, !374, !5185, !5187}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !270, line: 85, baseType: !28, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !367, file: !270, line: 86, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!36, !292, !358, !34}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !367, file: !270, line: 88, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!36, !292, !378, !34}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !270, line: 175, size: 512, elements: !380)
!380 = !{!381, !382, !383, !384, !5176, !5180, !5181}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !379, file: !270, line: 176, baseType: !269, size: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !379, file: !270, line: 177, baseType: !47, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !379, file: !270, line: 178, baseType: !32, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !379, file: !270, line: 179, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !390)
!390 = !{!391, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5170, !5171, !5172, !5173, !5174, !5175}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !389, file: !14, line: 473, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !394)
!394 = !{!395, !396, !397, !405, !406, !413, !414, !417, !418, !4948, !4949, !4950, !4951, !4952, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4992, !4995, !4996, !4997, !5006, !5007, !5008, !5009}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !393, file: !14, line: 642, baseType: !36, size: 16)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !393, file: !14, line: 643, baseType: !38, size: 16, offset: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !393, file: !14, line: 644, baseType: !398, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !399, line: 23, baseType: !400)
!399 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 21, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !399, line: 22, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !393, file: !14, line: 645, baseType: !109, size: 128, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !393, file: !14, line: 646, baseType: !407, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !399, line: 28, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 26, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !408, file: !399, line: 27, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !393, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !393, file: !14, line: 650, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !393, file: !14, line: 651, baseType: !415, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !393, file: !14, line: 654, baseType: !419, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !422)
!422 = !{!423, !4782, !4792, !4796, !4800, !4804, !4808, !4812, !4816, !4820, !4824, !4825, !4829, !4833, !4870, !4899, !4903, !4909, !4913, !4917, !4921, !4925, !4929, !4935, !4939}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !421, file: !14, line: 1967, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !392, !427, !7}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !429, line: 82, size: 1536, elements: !430)
!429 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!430 = !{!431, !432, !442, !450, !451, !471, !472, !476, !489, !4765, !4766, !4767, !4768, !4774, !4775, !4776}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !428, file: !429, line: 84, baseType: !7, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !428, file: !429, line: 85, baseType: !433, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !434, line: 275, baseType: !435)
!434 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !434, line: 275, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !435, file: !434, line: 275, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !434, line: 69, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !434, line: 64, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !439, file: !434, line: 65, baseType: !7, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !428, file: !429, line: 86, baseType: !443, size: 128, offset: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !444, line: 38, size: 128, elements: !445)
!444 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!445 = !{!446, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !444, line: 39, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !443, file: !444, line: 39, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !428, file: !429, line: 87, baseType: !427, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !428, file: !429, line: 88, baseType: !452, size: 128, offset: 256)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !429, line: 49, size: 128, elements: !453)
!453 = !{!454, !468}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !429, line: 50, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !429, line: 50, size: 64, elements: !456)
!456 = !{!457, !464}
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !429, line: 51, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !455, file: !429, line: 51, size: 64, elements: !459)
!459 = !{!460, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !458, file: !429, line: 52, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !458, file: !429, line: 52, baseType: !461, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !455, file: !429, line: 54, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !467)
!467 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !429, line: 56, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !428, file: !429, line: 89, baseType: !392, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !428, file: !429, line: 91, baseType: !473, size: 256, offset: 448)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !428, file: !429, line: 94, baseType: !477, size: 64, offset: 704)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !478, line: 25, size: 64, elements: !479)
!478 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !478, line: 26, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !478, line: 26, size: 64, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !481, file: !478, line: 28, baseType: !466, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !478, line: 30, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !478, line: 30, size: 64, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !485, file: !478, line: 31, baseType: !71, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !485, file: !478, line: 32, baseType: !34, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !428, file: !429, line: 95, baseType: !490, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !429, line: 128, size: 1024, align: 512, elements: !493)
!493 = !{!494, !498, !499, !506, !512, !516, !520, !524, !525, !529, !533, !4755, !4759}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !492, file: !429, line: 129, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!34, !427, !7}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !492, file: !429, line: 130, baseType: !495, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !492, file: !429, line: 131, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!34, !503, !505}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !492, file: !429, line: 132, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!34, !503, !7, !28, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !492, file: !429, line: 134, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!34, !503}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !492, file: !429, line: 135, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!34, !427}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !492, file: !429, line: 136, baseType: !521, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !427}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !492, file: !429, line: 137, baseType: !521, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !492, file: !429, line: 138, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !427, !392}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !492, file: !429, line: 139, baseType: !530, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!327, !427, !327, !34}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !492, file: !429, line: 140, baseType: !534, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !4754}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !539, line: 70, size: 256, elements: !540)
!539 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!540 = !{!541, !542, !4750, !4751}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !538, file: !539, line: 71, baseType: !427, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !538, file: !539, line: 72, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !545)
!545 = !{!546, !547, !550, !551, !552, !553, !1032, !4460, !4500, !4585, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4602, !4606, !4607, !4610, !4613, !4616, !4619, !4620, !4621, !4662, !4684, !4685, !4686, !4687, !4688, !4689, !4692, !4693, !4700, !4701, !4702, !4703, !4704, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !544, file: !14, line: 1191, baseType: !109, size: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !544, file: !14, line: 1192, baseType: !548, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !461)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !544, file: !14, line: 1193, baseType: !99, size: 8, offset: 160)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !544, file: !14, line: 1194, baseType: !51, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !544, file: !14, line: 1195, baseType: !53, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !544, file: !14, line: 1196, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !556)
!556 = !{!557, !558, !559, !565, !569, !573, !577, !1017, !1018, !1022, !1024, !1025, !1026, !1028, !1029, !1030, !1031}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !14, line: 2367, baseType: !28, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !555, file: !14, line: 2368, baseType: !34, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !555, file: !14, line: 2376, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!34, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !539, line: 21, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !555, file: !14, line: 2377, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !555, file: !14, line: 2378, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!427, !554, !34, !28, !32}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !555, file: !14, line: 2380, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !543}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !555, file: !14, line: 2381, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !580)
!580 = !{!581, !582, !583, !587, !609, !635, !636, !637, !638, !642, !647, !648, !668, !724, !725, !726, !727, !728, !731, !732, !733, !741, !745, !772, !793, !794, !795, !796, !805, !828, !829, !832, !835, !836, !837, !838, !839, !840, !841, !846, !847, !975, !983, !984, !985, !987, !991, !992, !996, !997, !998, !999, !1001, !1002, !1003, !1010, !1011, !1012, !1016}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !579, file: !6, line: 403, baseType: !5, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !579, file: !6, line: 406, baseType: !109, size: 128, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !579, file: !6, line: 409, baseType: !584, size: 448, offset: 192)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 56)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !579, file: !6, line: 417, baseType: !588, size: 768, offset: 640)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !589)
!589 = !{!590, !591, !592, !593, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !588, file: !6, line: 46, baseType: !286, size: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !588, file: !6, line: 47, baseType: !578, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !588, file: !6, line: 48, baseType: !292, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !588, file: !6, line: 49, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !588, file: !6, line: 50, baseType: !597, size: 64, offset: 704)
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
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !603, file: !604, line: 45, baseType: !109, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !579, file: !6, line: 418, baseType: !610, size: 64, offset: 1408)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !612)
!612 = !{!613, !614, !619, !623, !627, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !611, file: !6, line: 54, baseType: !269, size: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !611, file: !6, line: 55, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!278, !610, !618, !327}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !611, file: !6, line: 57, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!278, !610, !618, !28, !47}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !611, file: !6, line: 59, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !578, !28}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !611, file: !6, line: 60, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!34, !578}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !611, file: !6, line: 61, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !578}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !579, file: !6, line: 419, baseType: !28, size: 64, offset: 1472)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !579, file: !6, line: 420, baseType: !28, size: 64, offset: 1536)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !579, file: !6, line: 421, baseType: !292, size: 64, offset: 1600)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !579, file: !6, line: 424, baseType: !639, size: 64, offset: 1664)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !579, file: !6, line: 425, baseType: !643, size: 64, offset: 1728)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !579, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !579, file: !6, line: 435, baseType: !649, size: 256, offset: 1856)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !650, line: 66, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!651 = !{!652, !661, !662, !667}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !649, file: !650, line: 67, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !654, line: 13, baseType: !655)
!654 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !656, file: !37, line: 180, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !649, file: !650, line: 68, baseType: !607, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !649, file: !650, line: 70, baseType: !663, size: 32, offset: 96)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !664, line: 15, size: 32, elements: !665)
!664 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !663, file: !664, line: 20, baseType: !61, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !649, file: !650, line: 72, baseType: !109, size: 128, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !579, file: !6, line: 437, baseType: !669, size: 64, offset: 2112)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !671, line: 69, size: 320, elements: !672)
!671 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!672 = !{!673, !674, !675, !695, !697, !701, !702}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !671, line: 70, baseType: !28, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !670, file: !671, line: 71, baseType: !578, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !670, file: !671, line: 72, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !671, line: 47, size: 256, elements: !679)
!679 = !{!680, !681, !687, !691}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !671, line: 49, baseType: !7, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !678, file: !671, line: 51, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!34, !28, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !678, file: !671, line: 53, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!34, !327, !685}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !678, file: !671, line: 55, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !32}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !670, file: !671, line: 73, baseType: !696, size: 16, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !670, file: !671, line: 74, baseType: !698, size: 8, offset: 208)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !700)
!700 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !671, line: 75, baseType: !95, size: 8, offset: 216)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !671, line: 76, baseType: !703, size: 64, offset: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !671, line: 76, size: 64, elements: !704)
!704 = !{!705, !706, !713}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !703, file: !671, line: 77, baseType: !32, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !703, file: !671, line: 78, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !671, line: 86, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !709, file: !671, line: 87, baseType: !7, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !709, file: !671, line: 88, baseType: !327, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !703, file: !671, line: 79, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !671, line: 92, size: 256, elements: !717)
!717 = !{!718, !719, !720, !722, !723}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !716, file: !671, line: 94, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !716, file: !671, line: 95, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !716, file: !671, line: 96, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !716, file: !671, line: 97, baseType: !676, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !716, file: !671, line: 98, baseType: !32, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !579, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !579, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !579, file: !6, line: 442, baseType: !639, size: 64, offset: 2240)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !579, file: !6, line: 443, baseType: !643, size: 64, offset: 2304)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !579, file: !6, line: 444, baseType: !729, size: 8, offset: 2368)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !730)
!730 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !579, file: !6, line: 451, baseType: !729, size: 8, offset: 2376)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !579, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !579, file: !6, line: 455, baseType: !734, size: 64, offset: 2432)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !736, line: 23, size: 96, elements: !737)
!736 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !735, file: !736, line: 24, baseType: !34, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !735, file: !736, line: 24, baseType: !34, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !735, file: !736, line: 24, baseType: !34, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !579, file: !6, line: 458, baseType: !742, size: 64, offset: 2496)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!34}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !579, file: !6, line: 460, baseType: !746, size: 4032, align: 512, offset: 2560)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 4032, elements: !770)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !748)
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !747, file: !6, line: 363, baseType: !32, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !747, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !747, file: !6, line: 367, baseType: !752, size: 448, offset: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !752, file: !6, line: 320, baseType: !578, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !6, line: 321, baseType: !756, size: 384, offset: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !757, line: 40, size: 384, elements: !758)
!757 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !756, file: !757, line: 41, baseType: !760, size: 384, align: 64)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 384, align: 64, elements: !768)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !762, line: 5, size: 192, align: 64, elements: !763)
!762 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!763 = !{!764, !765, !767}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !761, file: !762, line: 6, baseType: !51, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !761, file: !762, line: 7, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !761, file: !762, line: 8, baseType: !766, size: 64, offset: 128)
!768 = !{!769}
!769 = !DISubrange(count: 2)
!770 = !{!771}
!771 = !DISubrange(count: 7)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !579, file: !6, line: 463, baseType: !773, size: 192, offset: 6592)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !774, line: 8, size: 192, elements: !775)
!774 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!775 = !{!776, !777, !779}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !773, file: !774, line: 10, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !773, file: !774, line: 11, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !773, file: !774, line: 12, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !782, line: 59, size: 48, elements: !783)
!782 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!783 = !{!784, !788, !789, !790, !791, !792}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !781, file: !782, line: 60, baseType: !785, size: 16)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !787)
!787 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !781, file: !782, line: 61, baseType: !785, size: 16, offset: 16)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !781, file: !782, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !781, file: !782, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !782, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !781, file: !782, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !579, file: !6, line: 465, baseType: !51, size: 64, offset: 6784)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !579, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !579, file: !6, line: 470, baseType: !109, size: 128, offset: 6912)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !579, file: !6, line: 471, baseType: !797, size: 64, offset: 7040)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !799, line: 33, size: 96, elements: !800)
!799 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!800 = !{!801, !802, !803, !804}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !798, file: !799, line: 37, baseType: !34, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !798, file: !799, line: 43, baseType: !34, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !798, file: !799, line: 45, baseType: !38, size: 16, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 47, baseType: !38, size: 16, offset: 80)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !579, file: !6, line: 476, baseType: !806, size: 64, offset: 7104)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !808)
!808 = !{!809, !825, !826, !827}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !807, file: !6, line: 379, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !812, line: 204, baseType: !813)
!812 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !812, line: 197, size: 192, elements: !814)
!814 = !{!815, !817, !818, !819, !821, !823}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !813, file: !812, line: 198, baseType: !816, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !812, line: 21, baseType: !462)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !813, file: !812, line: 199, baseType: !99, size: 8, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !813, file: !812, line: 200, baseType: !99, size: 8, offset: 40)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !813, file: !812, line: 201, baseType: !820, size: 16, offset: 48)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !812, line: 17, baseType: !106)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !813, file: !812, line: 202, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !812, line: 16, baseType: !466)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !813, file: !812, line: 203, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !812, line: 22, baseType: !466)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !807, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !807, file: !6, line: 381, baseType: !327, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !807, file: !6, line: 382, baseType: !327, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !579, file: !6, line: 477, baseType: !807, size: 256, offset: 7168)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !579, file: !6, line: 480, baseType: !830, size: 64, offset: 7424)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !579, file: !6, line: 483, baseType: !833, size: 64, offset: 7488)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !579, file: !6, line: 488, baseType: !327, size: 64, offset: 7552)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !579, file: !6, line: 492, baseType: !32, size: 64, offset: 7616)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !579, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !579, file: !6, line: 495, baseType: !32, size: 64, offset: 7744)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !579, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !579, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !579, file: !6, line: 500, baseType: !842, size: 64, offset: 7872)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !844, line: 45, baseType: !845)
!844 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !579, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !579, file: !6, line: 504, baseType: !848, size: 64, offset: 8000)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !851, line: 96, size: 192, elements: !852)
!851 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!852 = !{!853, !854, !935, !939}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !850, file: !851, line: 97, baseType: !7, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !850, file: !851, line: 98, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !851, line: 24, size: 3072, elements: !857)
!857 = !{!858, !860, !861, !862, !863, !887, !888, !889, !890, !908, !920, !921, !932, !933, !934}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !856, file: !851, line: 26, baseType: !859, size: 128)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 128, elements: !768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !856, file: !851, line: 27, baseType: !859, size: 128, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !856, file: !851, line: 28, baseType: !34, size: 32, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !856, file: !851, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !856, file: !851, line: 32, baseType: !864, size: 960, offset: 576)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !865, line: 206, size: 960, elements: !866)
!865 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!866 = !{!867, !876, !881, !883, !884, !886}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !864, file: !865, line: 207, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !869, file: !37, line: 233, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !869, file: !37, line: 234, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !868}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !864, file: !865, line: 208, baseType: !877, size: 256, offset: 64)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 256, elements: !879)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!879 = !{!880}
!880 = !DISubrange(count: 4)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !864, file: !865, line: 209, baseType: !882, size: 256, offset: 320)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !879)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !864, file: !865, line: 213, baseType: !281, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !864, file: !865, line: 215, baseType: !885, size: 256, offset: 640)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !879)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 216, baseType: !95, size: 8, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !856, file: !851, line: 33, baseType: !51, size: 64, offset: 1536)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !856, file: !851, line: 34, baseType: !51, size: 64, offset: 1600)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !856, file: !851, line: 35, baseType: !729, size: 8, offset: 1664)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !856, file: !851, line: 36, baseType: !891, size: 320, offset: 1728)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !892, line: 11, size: 320, elements: !893)
!892 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!893 = !{!894, !901, !902, !907}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !891, file: !892, line: 16, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !896)
!896 = !{!897, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !895, file: !37, line: 199, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !895, file: !37, line: 199, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !891, file: !892, line: 17, baseType: !51, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !891, file: !892, line: 18, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !892, line: 19, baseType: !461, size: 32, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !856, file: !851, line: 37, baseType: !909, size: 256, offset: 2048)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !910, line: 98, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !909, file: !910, line: 99, baseType: !653, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !909, file: !910, line: 100, baseType: !109, size: 128, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !909, file: !910, line: 101, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !910, line: 21, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !856, file: !851, line: 38, baseType: !869, size: 128, align: 64, offset: 2304)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !856, file: !851, line: 39, baseType: !922, size: 64, offset: 2432)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !851, line: 49, size: 768, elements: !924)
!924 = !{!925, !926, !927, !928, !929, !930, !931}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !851, line: 50, baseType: !71, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !923, file: !851, line: 51, baseType: !882, size: 256, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !923, file: !851, line: 53, baseType: !882, size: 256, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !923, file: !851, line: 54, baseType: !51, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !923, file: !851, line: 55, baseType: !922, size: 64, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !923, file: !851, line: 56, baseType: !34, size: 32, offset: 704)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !923, file: !851, line: 57, baseType: !34, size: 32, offset: 736)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !856, file: !851, line: 40, baseType: !51, size: 64, offset: 2496)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !856, file: !851, line: 42, baseType: !34, size: 32, offset: 2560)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !856, file: !851, line: 43, baseType: !849, size: 64, offset: 2624)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !850, file: !851, line: 99, baseType: !936, offset: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !937, line: 211, elements: !938)
!937 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!938 = !{}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !850, file: !851, line: 100, baseType: !940, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !851, line: 63, size: 3008, elements: !942)
!942 = !{!943, !944, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !974}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !941, file: !851, line: 64, baseType: !922, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !941, file: !851, line: 65, baseType: !945, size: 192, offset: 64)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 192, elements: !328)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !941, file: !851, line: 67, baseType: !34, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !941, file: !851, line: 68, baseType: !649, size: 256, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !941, file: !851, line: 69, baseType: !71, size: 32, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !941, file: !851, line: 70, baseType: !649, size: 256, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !941, file: !851, line: 71, baseType: !51, size: 64, offset: 896)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !941, file: !851, line: 72, baseType: !51, size: 64, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !941, file: !851, line: 73, baseType: !51, size: 64, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !941, file: !851, line: 74, baseType: !51, size: 64, offset: 1088)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !941, file: !851, line: 75, baseType: !51, size: 64, offset: 1152)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !941, file: !851, line: 76, baseType: !51, size: 64, offset: 1216)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !941, file: !851, line: 77, baseType: !51, size: 64, offset: 1280)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !941, file: !851, line: 78, baseType: !51, size: 64, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !941, file: !851, line: 79, baseType: !729, size: 8, offset: 1408)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !941, file: !851, line: 80, baseType: !51, size: 64, offset: 1472)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !941, file: !851, line: 81, baseType: !649, size: 256, offset: 1536)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !941, file: !851, line: 82, baseType: !598, size: 256, offset: 1792)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !941, file: !851, line: 84, baseType: !61, size: 32, offset: 2048)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !941, file: !851, line: 87, baseType: !51, size: 64, offset: 2112)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !941, file: !851, line: 88, baseType: !51, size: 64, offset: 2176)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !941, file: !851, line: 89, baseType: !966, size: 704, offset: 2240)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !910, line: 111, size: 704, elements: !967)
!967 = !{!968, !969, !970, !973}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !966, file: !910, line: 112, baseType: !909, size: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !966, file: !910, line: 113, baseType: !891, size: 320, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !966, file: !910, line: 116, baseType: !971, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !910, line: 18, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !966, file: !910, line: 117, baseType: !34, size: 32, offset: 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !941, file: !851, line: 90, baseType: !849, size: 64, offset: 2944)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !579, file: !6, line: 515, baseType: !976, size: 64, offset: 8064)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !978, line: 117, size: 128, elements: !979)
!978 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !977, file: !978, line: 118, baseType: !645, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !977, file: !978, line: 119, baseType: !645, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !977, file: !978, line: 120, baseType: !281, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !579, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !579, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !579, file: !6, line: 520, baseType: !986, size: 64, offset: 8192)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !579, file: !6, line: 523, baseType: !988, size: 64, offset: 8256)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !579, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !579, file: !6, line: 525, baseType: !993, size: 64, offset: 8384)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !579, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !579, file: !6, line: 533, baseType: !32, size: 64, offset: 8512)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !579, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !579, file: !6, line: 535, baseType: !1000, size: 64, offset: 8640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !579, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !579, file: !6, line: 539, baseType: !34, size: 32, offset: 8736)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !579, file: !6, line: 540, baseType: !1004, size: 64, offset: 8768)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1006, line: 32, size: 64, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1005, file: !1006, line: 33, baseType: !645, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1005, file: !1006, line: 34, baseType: !645, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !579, file: !6, line: 563, baseType: !109, size: 128, offset: 8832)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !579, file: !6, line: 565, baseType: !109, size: 128, offset: 8960)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !579, file: !6, line: 568, baseType: !1013, size: 64, offset: 9088)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !579, file: !6, line: 570, baseType: !61, size: 32, offset: 9152)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !14, line: 2382, baseType: !554, size: 64, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !555, file: !14, line: 2383, baseType: !1019, size: 64, offset: 512)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1019, file: !37, line: 195, baseType: !898, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !555, file: !14, line: 2385, baseType: !1023, offset: 576)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !937, line: 206, elements: !938)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !555, file: !14, line: 2386, baseType: !1023, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !555, file: !14, line: 2387, baseType: !1023, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !555, file: !14, line: 2388, baseType: !1027, offset: 576)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, elements: !328)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !555, file: !14, line: 2390, baseType: !1023, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !555, file: !14, line: 2391, baseType: !1023, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !555, file: !14, line: 2392, baseType: !1023, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !555, file: !14, line: 2393, baseType: !1023, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !544, file: !14, line: 1197, baseType: !1033, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1036)
!1036 = !{!1037, !1041, !1045, !1046, !1050, !1056, !1060, !1061, !1062, !1066, !1070, !1074, !1075, !1076, !1082, !1086, !1087, !4385, !4386, !4387, !4388, !4392, !4396, !4443, !4458, !4459}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1035, file: !14, line: 2058, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!392, !543}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1035, file: !14, line: 2059, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !392}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1035, file: !14, line: 2060, baseType: !1042, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1035, file: !14, line: 2062, baseType: !1047, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !392, !34}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1035, file: !14, line: 2063, baseType: !1051, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!34, !392, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1035, file: !14, line: 2064, baseType: !1057, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!34, !392}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1035, file: !14, line: 2065, baseType: !1042, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1035, file: !14, line: 2066, baseType: !574, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1035, file: !14, line: 2067, baseType: !1063, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!34, !543, !34}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1035, file: !14, line: 2068, baseType: !1067, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!34, !543, !13}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1035, file: !14, line: 2069, baseType: !1071, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!34, !543}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1035, file: !14, line: 2070, baseType: !1067, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1035, file: !14, line: 2071, baseType: !1071, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1035, file: !14, line: 2072, baseType: !1077, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!34, !427, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1035, file: !14, line: 2073, baseType: !1083, size: 64, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!34, !543, !778, !327}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1035, file: !14, line: 2074, baseType: !574, size: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1035, file: !14, line: 2076, baseType: !1088, size: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!34, !1091, !427}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1093, line: 17, size: 960, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1124, !1125, !4384}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1092, file: !1093, line: 18, baseType: !327, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1092, file: !1093, line: 19, baseType: !47, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1092, file: !1093, line: 20, baseType: !47, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1092, file: !1093, line: 21, baseType: !47, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1092, file: !1093, line: 22, baseType: !47, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1092, file: !1093, line: 23, baseType: !53, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1092, file: !1093, line: 24, baseType: !53, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1092, file: !1093, line: 25, baseType: !649, size: 256, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1092, file: !1093, line: 26, baseType: !1104, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1093, line: 32, size: 256, elements: !1107)
!1107 = !{!1108, !1112, !1116, !1120}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1106, file: !1093, line: 33, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!32, !1091, !52}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1106, file: !1093, line: 34, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !1091, !32}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1106, file: !1093, line: 35, baseType: !1117, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!32, !1091, !32, !52}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1106, file: !1093, line: 36, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!34, !1091, !32}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1092, file: !1093, line: 27, baseType: !34, size: 32, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1092, file: !1093, line: 28, baseType: !1126, size: 64, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1129)
!1129 = !{!1130, !1141, !1142, !1144, !1145, !1146, !1147, !1148, !4203, !4204, !4213, !4219, !4220, !4374, !4375, !4376, !4377, !4379, !4380, !4383}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !14, line: 995, baseType: !1131, size: 128)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !14, line: 995, size: 128, elements: !1132)
!1132 = !{!1133, !1139, !1140}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1131, file: !14, line: 996, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1135, line: 60, size: 64, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1134, file: !1135, line: 61, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1131, file: !14, line: 997, baseType: !869, size: 128, align: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1131, file: !14, line: 998, baseType: !7, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1128, file: !14, line: 1005, baseType: !71, size: 32, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1128, file: !14, line: 1006, baseType: !1143, size: 32, offset: 160)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1128, file: !14, line: 1007, baseType: !653, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1128, file: !14, line: 1008, baseType: !649, size: 256, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1128, file: !14, line: 1009, baseType: !53, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1128, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1128, file: !14, line: 1011, baseType: !1149, size: 256, offset: 640)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1150)
!1150 = !{!1151, !1172, !4199, !4200, !4201, !4202}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !14, line: 949, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1153, line: 34, baseType: !1154)
!1153 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1153, line: 25, size: 64, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1154, file: !1153, line: 26, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1158, line: 27, baseType: !1159)
!1158 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1158, line: 13, size: 64, elements: !1160)
!1160 = !{!1161, !1171}
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !1158, line: 14, baseType: !1162, size: 32)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1159, file: !1158, line: 14, size: 32, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1162, file: !1158, line: 15, baseType: !61, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1158, line: 16, baseType: !1166, size: 32)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !1158, line: 16, size: 32, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1166, file: !1158, line: 18, baseType: !95, size: 8)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1166, file: !1158, line: 19, baseType: !1170, size: 24, offset: 8)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !328)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1159, file: !1158, line: 26, baseType: !83, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1149, file: !14, line: 950, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !166, line: 59, size: 768, elements: !1175)
!1175 = !{!1176, !1182, !1183, !1184, !1186, !1187, !1188, !1189}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1174, file: !166, line: 61, baseType: !1177, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1178, line: 113, baseType: !1179)
!1178 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1178, line: 111, size: 32, elements: !1180)
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1179, file: !1178, line: 112, baseType: !61, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1174, file: !166, line: 62, baseType: !7, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !166, line: 63, baseType: !71, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1174, file: !166, line: 65, baseType: !1185, size: 256, offset: 128)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !879)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1174, file: !166, line: 66, baseType: !1019, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1174, file: !166, line: 68, baseType: !66, size: 192, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1174, file: !166, line: 69, baseType: !869, size: 128, align: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1174, file: !166, line: 70, baseType: !1190, offset: 768)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, elements: !1909)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !166, line: 54, size: 128, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1191, file: !166, line: 55, baseType: !34, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1191, file: !166, line: 56, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1197, line: 26, size: 1152, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1198 = !{!1199, !1212, !1213, !1214, !4188, !4189, !4190, !4191, !4194, !4195, !4196, !4197, !4198}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1196, file: !1197, line: 27, baseType: !1200, size: 192)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1201, line: 19, size: 192, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1202 = !{!1203, !1210, !1211}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1200, file: !1201, line: 20, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1205, line: 296, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1204, file: !1205, line: 297, baseType: !71, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1204, file: !1205, line: 299, baseType: !261, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1204, file: !1205, line: 300, baseType: !32, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1200, file: !1201, line: 21, baseType: !7, size: 32, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1200, file: !1201, line: 22, baseType: !7, size: 32, offset: 160)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1196, file: !1197, line: 28, baseType: !869, size: 128, align: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1196, file: !1197, line: 29, baseType: !7, size: 32, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1196, file: !1197, line: 30, baseType: !1215, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1217, line: 746, size: 58368, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1218 = !{!1219, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1299, !1310, !1405, !1409, !1412, !1443, !1444, !1445, !1446, !1457, !1459, !1460, !1461, !1462, !1463, !1464, !1475, !1476, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1493, !1494, !1501, !1502, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1990, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2038, !2044, !2114, !2115, !2116, !2117, !2121, !2124, !2131, !2136, !2139, !2142, !2145, !2812, !3011, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3049, !3050, !3051, !3060, !3068, !3069, !3070, !3071, !3072, !3077, !3078, !3079, !3082, !3083, !3086, !3089, !3092, !3100, !3103, !3104, !3190, !3191, !3192, !3193, !3194, !3200, !3201, !3202, !3203, !3204, !3205, !3208, !3211, !3212, !3215, !3216, !3217, !3255, !3256, !3257, !3258, !3259, !3260, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3292, !3295, !3301, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3313, !3385, !3387, !3388, !3389, !3390, !3391, !3392, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3409, !3410, !3411}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1216, file: !1217, line: 752, baseType: !1220, size: 192)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1221, line: 56, size: 192, elements: !1222)
!1221 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !1221, line: 57, baseType: !51, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1220, file: !1221, line: 58, baseType: !51, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1220, file: !1221, line: 59, baseType: !461, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1220, file: !1221, line: 61, baseType: !461, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1216, file: !1217, line: 754, baseType: !7, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1216, file: !1217, line: 767, baseType: !32, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1216, file: !1217, line: 768, baseType: !1177, size: 32, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 770, baseType: !7, size: 32, offset: 352)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1216, file: !1217, line: 771, baseType: !7, size: 32, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1216, file: !1217, line: 774, baseType: !34, size: 32, offset: 416)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1216, file: !1217, line: 775, baseType: !1234, size: 128, offset: 448)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1235, line: 58, size: 128, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1236 = !{!1237, !1238, !1243, !1244}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1234, file: !1235, line: 59, baseType: !1134, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1235, line: 60, baseType: !1239, size: 32, offset: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1235, line: 60, size: 32, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1239, file: !1235, line: 61, baseType: !7, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1239, file: !1235, line: 62, baseType: !61, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1234, file: !1235, line: 65, baseType: !105, size: 16, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1234, file: !1235, line: 65, baseType: !105, size: 16, offset: 112)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1216, file: !1217, line: 776, baseType: !7, size: 32, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1216, file: !1217, line: 777, baseType: !51, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1216, file: !1217, line: 778, baseType: !1215, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1216, file: !1217, line: 787, baseType: !34, size: 32, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1216, file: !1217, line: 788, baseType: !34, size: 32, offset: 800)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1216, file: !1217, line: 790, baseType: !34, size: 32, offset: 832)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1216, file: !1217, line: 792, baseType: !34, size: 32, offset: 864)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1216, file: !1217, line: 793, baseType: !34, size: 32, offset: 896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1216, file: !1217, line: 794, baseType: !34, size: 32, offset: 928)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1216, file: !1217, line: 795, baseType: !7, size: 32, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1216, file: !1217, line: 797, baseType: !1256, size: 2048, offset: 1024)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1217, line: 551, size: 2048, elements: !1257)
!1257 = !{!1258, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1278, !1281, !1282, !1283}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1256, file: !1217, line: 553, baseType: !1259, size: 128)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1217, line: 411, size: 128, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1259, file: !1217, line: 412, baseType: !51, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1259, file: !1217, line: 413, baseType: !461, size: 32, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1256, file: !1217, line: 554, baseType: !761, size: 192, align: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1256, file: !1217, line: 555, baseType: !465, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1256, file: !1217, line: 556, baseType: !465, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1256, file: !1217, line: 558, baseType: !109, size: 128, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1256, file: !1217, line: 559, baseType: !7, size: 32, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1256, file: !1217, line: 561, baseType: !465, size: 64, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1256, file: !1217, line: 562, baseType: !465, size: 64, offset: 704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1256, file: !1217, line: 563, baseType: !465, size: 64, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1256, file: !1217, line: 564, baseType: !465, size: 64, offset: 832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1256, file: !1217, line: 565, baseType: !659, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1256, file: !1217, line: 566, baseType: !465, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1256, file: !1217, line: 568, baseType: !465, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1256, file: !1217, line: 571, baseType: !34, size: 32, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1256, file: !1217, line: 572, baseType: !1277, size: 64, offset: 1152)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1256, file: !1217, line: 574, baseType: !1279, size: 64, offset: 1216)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1217, line: 49, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1256, file: !1217, line: 576, baseType: !1279, size: 64, offset: 1280)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1256, file: !1217, line: 578, baseType: !51, size: 64, offset: 1344)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1256, file: !1217, line: 588, baseType: !1284, size: 512, align: 512, offset: 1536)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1217, line: 497, size: 512, align: 512, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1284, file: !1217, line: 498, baseType: !465, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1284, file: !1217, line: 499, baseType: !465, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1284, file: !1217, line: 500, baseType: !465, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1284, file: !1217, line: 501, baseType: !461, size: 32, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1284, file: !1217, line: 502, baseType: !461, size: 32, offset: 224)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1284, file: !1217, line: 503, baseType: !51, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1284, file: !1217, line: 504, baseType: !51, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1284, file: !1217, line: 505, baseType: !51, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1284, file: !1217, line: 506, baseType: !1295, size: 64, align: 64, offset: 448)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1217, line: 445, size: 64, align: 64, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1295, file: !1217, line: 446, baseType: !7, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1295, file: !1217, line: 447, baseType: !7, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1216, file: !1217, line: 798, baseType: !1300, size: 384, offset: 3072)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1217, line: 592, size: 384, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1300, file: !1217, line: 593, baseType: !109, size: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1300, file: !1217, line: 594, baseType: !51, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1300, file: !1217, line: 595, baseType: !51, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1300, file: !1217, line: 596, baseType: !7, size: 32, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1300, file: !1217, line: 597, baseType: !38, size: 16, offset: 288)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1300, file: !1217, line: 598, baseType: !38, size: 16, offset: 304)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1300, file: !1217, line: 600, baseType: !1309, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1216, file: !1217, line: 799, baseType: !1311, size: 1792, offset: 3456)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1217, line: 610, size: 1792, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1402, !1403}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1311, file: !1217, line: 611, baseType: !761, size: 192, align: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1311, file: !1217, line: 618, baseType: !465, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1311, file: !1217, line: 619, baseType: !465, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1311, file: !1217, line: 620, baseType: !465, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1311, file: !1217, line: 621, baseType: !465, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1311, file: !1217, line: 622, baseType: !465, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1311, file: !1217, line: 629, baseType: !659, size: 64, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1311, file: !1217, line: 630, baseType: !465, size: 64, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !1217, line: 631, baseType: !7, size: 32, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1311, file: !1217, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1311, file: !1217, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1311, file: !1217, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1311, file: !1217, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1311, file: !1217, line: 662, baseType: !1327, size: 512, offset: 704)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1328)
!1328 = !{!1329, !1337, !1338, !1343, !1398, !1399, !1400, !1401}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1327, file: !19, line: 119, baseType: !1330, size: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1331, line: 9, size: 256, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1330, file: !1331, line: 10, baseType: !761, size: 192, align: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1330, file: !1331, line: 11, baseType: !1335, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1336, line: 29, baseType: !659)
!1336 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1327, file: !19, line: 120, baseType: !1335, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1327, file: !19, line: 121, baseType: !1339, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!18, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1327, file: !19, line: 122, baseType: !1344, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1346)
!1346 = !{!1347, !1372, !1373, !1376, !1381, !1382, !1393, !1397}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1345, file: !19, line: 160, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !19, line: 216, baseType: !607, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1349, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1349, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1349, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1349, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1349, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1349, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1349, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1349, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1349, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1349, file: !19, line: 227, baseType: !38, size: 16, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1349, file: !19, line: 228, baseType: !38, size: 16, offset: 208)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1349, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1349, file: !19, line: 235, baseType: !1335, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1349, file: !19, line: 236, baseType: !1342, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1349, file: !19, line: 237, baseType: !1335, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1349, file: !19, line: 238, baseType: !1342, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1349, file: !19, line: 239, baseType: !1369, size: 4096, align: 512, offset: 512)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 4096, align: 512, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 8)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1345, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1345, file: !19, line: 162, baseType: !1374, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1345, file: !19, line: 163, baseType: !1377, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !434, line: 274, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !434, line: 274, size: 32, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1378, file: !434, line: 274, baseType: !438, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1345, file: !19, line: 164, baseType: !1342, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1345, file: !19, line: 165, baseType: !1383, size: 128, offset: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1331, line: 14, size: 128, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1383, file: !1331, line: 15, baseType: !1386, size: 128)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !762, line: 26, size: 128, elements: !1387)
!1387 = !{!1388, !1392}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1386, file: !762, line: 27, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !762, line: 12, size: 64, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1389, file: !762, line: 13, baseType: !766, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1386, file: !762, line: 28, baseType: !766, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1345, file: !19, line: 166, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1335}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1345, file: !19, line: 167, baseType: !1335, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1327, file: !19, line: 123, baseType: !95, size: 8, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1327, file: !19, line: 124, baseType: !95, size: 8, offset: 456)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1327, file: !19, line: 125, baseType: !95, size: 8, offset: 464)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1327, file: !19, line: 126, baseType: !95, size: 8, offset: 472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1311, file: !1217, line: 671, baseType: !1327, size: 512, offset: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1311, file: !1217, line: 679, baseType: !1404, size: 64, offset: 1728)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1216, file: !1217, line: 800, baseType: !1406, size: 64, offset: 5248)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1217, line: 800, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1216, file: !1217, line: 809, baseType: !1410, size: 64, offset: 5312)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1217, line: 70, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1216, file: !1217, line: 825, baseType: !1413, size: 2048, align: 512, offset: 5632)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1217, line: 509, size: 2048, align: 512, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1413, file: !1217, line: 511, baseType: !465, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1413, file: !1217, line: 512, baseType: !465, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1413, file: !1217, line: 513, baseType: !465, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1413, file: !1217, line: 514, baseType: !465, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1413, file: !1217, line: 515, baseType: !465, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1413, file: !1217, line: 516, baseType: !465, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1413, file: !1217, line: 518, baseType: !465, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1413, file: !1217, line: 519, baseType: !465, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1413, file: !1217, line: 520, baseType: !659, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1413, file: !1217, line: 522, baseType: !465, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1413, file: !1217, line: 523, baseType: !465, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1413, file: !1217, line: 524, baseType: !659, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1413, file: !1217, line: 526, baseType: !659, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1413, file: !1217, line: 527, baseType: !465, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1413, file: !1217, line: 529, baseType: !465, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1413, file: !1217, line: 530, baseType: !465, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1413, file: !1217, line: 531, baseType: !465, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1413, file: !1217, line: 532, baseType: !465, size: 64, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1413, file: !1217, line: 533, baseType: !465, size: 64, offset: 1152)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1413, file: !1217, line: 535, baseType: !465, size: 64, offset: 1216)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1413, file: !1217, line: 536, baseType: !465, size: 64, offset: 1280)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1413, file: !1217, line: 537, baseType: !465, size: 64, offset: 1344)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1413, file: !1217, line: 538, baseType: !465, size: 64, offset: 1408)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1413, file: !1217, line: 539, baseType: !465, size: 64, offset: 1472)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1413, file: !1217, line: 540, baseType: !465, size: 64, offset: 1536)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1413, file: !1217, line: 541, baseType: !465, size: 64, offset: 1600)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1413, file: !1217, line: 542, baseType: !465, size: 64, offset: 1664)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1413, file: !1217, line: 543, baseType: !465, size: 64, offset: 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1216, file: !1217, line: 833, baseType: !7, size: 32, offset: 7680)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1216, file: !1217, line: 836, baseType: !7, size: 32, offset: 7712)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1216, file: !1217, line: 837, baseType: !34, size: 32, offset: 7744)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1216, file: !1217, line: 838, baseType: !1447, size: 64, offset: 7808)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1450, line: 19, baseType: !1451)
!1450 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1450, line: 19, size: 64, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1451, file: !1450, line: 19, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 1)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1216, file: !1217, line: 839, baseType: !1458, size: 64, offset: 7872)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1216, file: !1217, line: 840, baseType: !1449, size: 64, offset: 7936)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1216, file: !1217, line: 841, baseType: !32, size: 64, offset: 8000)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1216, file: !1217, line: 843, baseType: !38, size: 16, offset: 8064)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1216, file: !1217, line: 845, baseType: !38, size: 16, offset: 8080)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1216, file: !1217, line: 848, baseType: !34, size: 32, offset: 8096)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1216, file: !1217, line: 849, baseType: !1465, size: 32, offset: 8128)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1217, line: 718, size: 32, elements: !1466)
!1466 = !{!1467, !1474}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1465, file: !1217, line: 724, baseType: !1468, size: 32)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1217, line: 719, size: 32, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1468, file: !1217, line: 720, baseType: !95, size: 8)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1468, file: !1217, line: 721, baseType: !95, size: 8, offset: 8)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1468, file: !1217, line: 722, baseType: !95, size: 8, offset: 16)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1468, file: !1217, line: 723, baseType: !95, size: 8, offset: 24)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1465, file: !1217, line: 725, baseType: !461, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1216, file: !1217, line: 850, baseType: !109, size: 128, offset: 8192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1216, file: !1217, line: 851, baseType: !1477, size: 64, offset: 8320)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1217, line: 60, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1216, file: !1217, line: 855, baseType: !51, size: 64, offset: 8384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1216, file: !1217, line: 856, baseType: !95, size: 8, offset: 8448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1216, file: !1217, line: 857, baseType: !95, size: 8, offset: 8456)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1216, file: !1217, line: 858, baseType: !34, size: 32, offset: 8480)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1216, file: !1217, line: 859, baseType: !109, size: 128, offset: 8512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1216, file: !1217, line: 860, baseType: !34, size: 32, offset: 8640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1216, file: !1217, line: 861, baseType: !109, size: 128, offset: 8704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1216, file: !1217, line: 873, baseType: !1487, size: 256, offset: 8832)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1217, line: 376, size: 256, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1492}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1487, file: !1217, line: 381, baseType: !51, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1487, file: !1217, line: 384, baseType: !467, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1487, file: !1217, line: 389, baseType: !467, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1487, file: !1217, line: 392, baseType: !467, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1216, file: !1217, line: 875, baseType: !109, size: 128, offset: 9088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1216, file: !1217, line: 877, baseType: !1495, size: 320, offset: 9216)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1496, line: 86, size: 320, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1495, file: !1496, line: 87, baseType: !34, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1495, file: !1496, line: 88, baseType: !109, size: 128, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1495, file: !1496, line: 89, baseType: !109, size: 128, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1216, file: !1217, line: 878, baseType: !761, size: 192, align: 64, offset: 9536)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1216, file: !1217, line: 881, baseType: !1503, size: 64, offset: 9728)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !1505)
!1505 = !{!1506, !1907}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !126, line: 734, baseType: !1507, size: 10240)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !126, line: 734, size: 10240, elements: !1508)
!1508 = !{!1509, !1513, !1526, !1531, !1532, !1533, !1534, !1535, !1536, !1545, !1546, !1547, !1553, !1554, !1555, !1556, !1557, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1594, !1604, !1607, !1652, !1653, !1654, !1657, !1893, !1894, !1897, !1898, !1899, !1905, !1906}
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !126, line: 739, baseType: !1510, size: 512, align: 512)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1507, file: !126, line: 739, size: 512, align: 512, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1510, file: !126, line: 747, baseType: !61, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1507, file: !126, line: 750, baseType: !1514, size: 128, offset: 512)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1515, line: 218, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1516 = !{!1517, !1524, !1525}
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 219, baseType: !1518, size: 32)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 219, size: 32, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1518, file: !1515, line: 220, baseType: !71, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1518, file: !1515, line: 221, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1515, line: 197, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1515, line: 197, elements: !938)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1514, file: !1515, line: 223, baseType: !7, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1514, file: !1515, line: 224, baseType: !32, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1507, file: !126, line: 752, baseType: !1527, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!51, !1530, !51, !51, !51, !51}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1507, file: !126, line: 756, baseType: !51, size: 64, offset: 704)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1507, file: !126, line: 757, baseType: !51, size: 64, offset: 768)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1507, file: !126, line: 760, baseType: !51, size: 64, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1507, file: !126, line: 761, baseType: !51, size: 64, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1507, file: !126, line: 763, baseType: !51, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1507, file: !126, line: 764, baseType: !1537, size: 64, offset: 1024)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1539, line: 299, baseType: !1540)
!1539 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1539, line: 299, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1540, file: !1539, line: 299, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1544, line: 18, baseType: !51)
!1544 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1507, file: !126, line: 773, baseType: !61, size: 32, offset: 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1507, file: !126, line: 785, baseType: !61, size: 32, offset: 1120)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1507, file: !126, line: 795, baseType: !1548, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1549, file: !126, line: 727, baseType: !465, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1549, file: !126, line: 728, baseType: !34, size: 32, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1507, file: !126, line: 801, baseType: !51, size: 64, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1507, file: !126, line: 804, baseType: !653, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1507, file: !126, line: 806, baseType: !34, size: 32, offset: 1344)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1507, file: !126, line: 808, baseType: !71, size: 32, offset: 1376)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1507, file: !126, line: 823, baseType: !1558, size: 320, offset: 1408)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1559, line: 48, size: 320, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1558, file: !1559, line: 49, baseType: !653, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1558, file: !1559, line: 55, baseType: !653, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1558, file: !1559, line: 57, baseType: !663, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1558, file: !1559, line: 59, baseType: !607, size: 32, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1558, file: !1559, line: 60, baseType: !109, size: 128, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1507, file: !126, line: 825, baseType: !109, size: 128, offset: 1728)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1507, file: !126, line: 845, baseType: !34, size: 32, offset: 1856)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1507, file: !126, line: 849, baseType: !51, size: 64, offset: 1920)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1507, file: !126, line: 850, baseType: !51, size: 64, offset: 1984)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1507, file: !126, line: 852, baseType: !51, size: 64, offset: 2048)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1507, file: !126, line: 853, baseType: !51, size: 64, offset: 2112)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1507, file: !126, line: 854, baseType: !655, size: 64, offset: 2176)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1507, file: !126, line: 855, baseType: !51, size: 64, offset: 2240)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1507, file: !126, line: 856, baseType: !51, size: 64, offset: 2304)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1507, file: !126, line: 857, baseType: !51, size: 64, offset: 2368)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1507, file: !126, line: 858, baseType: !51, size: 64, offset: 2432)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1507, file: !126, line: 865, baseType: !438, size: 32, offset: 2496)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1507, file: !126, line: 867, baseType: !71, size: 32, offset: 2528)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1507, file: !126, line: 869, baseType: !51, size: 64, offset: 2560)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1507, file: !126, line: 869, baseType: !51, size: 64, offset: 2624)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1507, file: !126, line: 869, baseType: !51, size: 64, offset: 2688)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1507, file: !126, line: 869, baseType: !51, size: 64, offset: 2752)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1507, file: !126, line: 870, baseType: !51, size: 64, offset: 2816)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1507, file: !126, line: 870, baseType: !51, size: 64, offset: 2880)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1507, file: !126, line: 870, baseType: !51, size: 64, offset: 2944)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1507, file: !126, line: 871, baseType: !51, size: 64, offset: 3008)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1507, file: !126, line: 871, baseType: !51, size: 64, offset: 3072)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1507, file: !126, line: 871, baseType: !51, size: 64, offset: 3136)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1507, file: !126, line: 871, baseType: !51, size: 64, offset: 3200)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1507, file: !126, line: 873, baseType: !1591, size: 3328, offset: 3264)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1592)
!1592 = !{!1593}
!1593 = !DISubrange(count: 52)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1507, file: !126, line: 875, baseType: !1595, size: 1280, offset: 6592)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1596, size: 1280, elements: !879)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1597, line: 22, size: 320, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1598 = !{!1599, !1600, !1601, !1602}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1596, file: !1597, line: 23, baseType: !607, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1596, file: !1597, line: 24, baseType: !659, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1596, file: !1597, line: 26, baseType: !109, size: 128, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1596, file: !1597, line: 28, baseType: !1603, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1507, file: !126, line: 877, baseType: !1605, size: 64, offset: 7872)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1507, file: !126, line: 880, baseType: !1608, size: 1088, offset: 7936)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1609, line: 72, baseType: !1610)
!1609 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1609, line: 23, size: 1088, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1619, !1620, !1621, !1622, !1649, !1650, !1651}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1610, file: !1609, line: 28, baseType: !465, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1610, file: !1609, line: 38, baseType: !655, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1610, file: !1609, line: 40, baseType: !51, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1610, file: !1609, line: 43, baseType: !1558, size: 320, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1610, file: !1609, line: 44, baseType: !1617, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1609, line: 44, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1610, file: !1609, line: 48, baseType: !51, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1610, file: !1609, line: 59, baseType: !649, size: 256, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1610, file: !1609, line: 60, baseType: !32, size: 64, offset: 896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1610, file: !1609, line: 61, baseType: !1623, size: 64, offset: 960)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1626, line: 13, size: 1216, elements: !1627)
!1626 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1625, file: !1626, line: 14, baseType: !32, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1625, file: !1626, line: 15, baseType: !51, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1625, file: !1626, line: 17, baseType: !51, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1625, file: !1626, line: 17, baseType: !51, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1625, file: !1626, line: 18, baseType: !51, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1625, file: !1626, line: 18, baseType: !51, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1625, file: !1626, line: 19, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1625, file: !1626, line: 21, baseType: !281, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1625, file: !1626, line: 23, baseType: !281, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1625, file: !1626, line: 24, baseType: !281, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1625, file: !1626, line: 25, baseType: !281, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1625, file: !1626, line: 26, baseType: !281, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1625, file: !1626, line: 27, baseType: !281, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1625, file: !1626, line: 28, baseType: !281, size: 64, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1625, file: !1626, line: 29, baseType: !281, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1625, file: !1626, line: 30, baseType: !281, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1625, file: !1626, line: 31, baseType: !281, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1625, file: !1626, line: 32, baseType: !281, size: 64, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1625, file: !1626, line: 33, baseType: !281, size: 64, offset: 1152)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1610, file: !1609, line: 63, baseType: !61, size: 32, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1610, file: !1609, line: 69, baseType: !105, size: 16, offset: 1056)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1610, file: !1609, line: 70, baseType: !785, size: 16, offset: 1072)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1507, file: !126, line: 882, baseType: !51, size: 64, offset: 9024)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1507, file: !126, line: 885, baseType: !71, size: 32, offset: 9088)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1507, file: !126, line: 886, baseType: !1655, size: 64, offset: 9152)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1507, file: !126, line: 901, baseType: !1658, size: 64, offset: 9216)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1660, line: 68, size: 4800, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1661 = !{!1662, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1701, !1702, !1703, !1704, !1814, !1815, !1816, !1875, !1876, !1890, !1892}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1659, file: !1660, line: 69, baseType: !1663, size: 576)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1660, line: 23, size: 576, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1663, file: !1660, line: 24, baseType: !461, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1660, line: 25, baseType: !1667, size: 512, offset: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1663, file: !1660, line: 25, size: 512, elements: !1668)
!1668 = !{!1669, !1678}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1667, file: !1660, line: 26, baseType: !1670, size: 480)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1671, size: 480, elements: !1676)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1660, line: 17, size: 96, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1671, file: !1660, line: 18, baseType: !461, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1671, file: !1660, line: 19, baseType: !461, size: 32, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1671, file: !1660, line: 20, baseType: !461, size: 32, offset: 64)
!1676 = !{!1677}
!1677 = !DISubrange(count: 5)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1660, line: 27, baseType: !1679, size: 128)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !1660, line: 27, size: 128, elements: !1680)
!1680 = !{!1681, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1679, file: !1660, line: 28, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1679, file: !1660, line: 29, baseType: !1682, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1659, file: !1660, line: 70, baseType: !1663, size: 576, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1659, file: !1660, line: 71, baseType: !1663, size: 576, offset: 1152)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1659, file: !1660, line: 72, baseType: !1658, size: 64, offset: 1728)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1659, file: !1660, line: 73, baseType: !34, size: 32, offset: 1792)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1659, file: !1660, line: 74, baseType: !398, size: 32, offset: 1824)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1659, file: !1660, line: 75, baseType: !407, size: 32, offset: 1856)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1659, file: !1660, line: 76, baseType: !1691, size: 192, offset: 1920)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1692, line: 9, size: 192, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1693 = !{!1694, !1695, !1699, !1700}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1691, file: !1692, line: 10, baseType: !653, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1691, file: !1692, line: 11, baseType: !1696, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1692, line: 7, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1691, file: !1692, line: 12, baseType: !7, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1691, file: !1692, line: 13, baseType: !1177, size: 32, offset: 160)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !1660, line: 77, baseType: !51, size: 64, offset: 2112)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1659, file: !1660, line: 80, baseType: !729, size: 8, offset: 2176)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1659, file: !1660, line: 88, baseType: !109, size: 128, offset: 2240)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1659, file: !1660, line: 89, baseType: !1705, size: 64, offset: 2368)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1707, line: 195, size: 1728, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1708 = !{!1709, !1710, !1713, !1718, !1719, !1722, !1723, !1730, !1731, !1732, !1733, !1736, !1737, !1738, !1739, !1740, !1778, !1799}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1706, file: !1707, line: 196, baseType: !1177, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1706, file: !1707, line: 197, baseType: !1711, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1707, line: 28, baseType: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !645)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 198, baseType: !1714, size: 192, offset: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 198, size: 192, elements: !1715)
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1714, file: !1707, line: 199, baseType: !109, size: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1714, file: !1707, line: 200, baseType: !761, size: 192, align: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1706, file: !1707, line: 205, baseType: !1558, size: 320, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1706, file: !1707, line: 206, baseType: !1720, size: 64, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1707, line: 206, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1706, file: !1707, line: 207, baseType: !32, size: 64, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 208, baseType: !1724, size: 64, offset: 704)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 208, size: 64, elements: !1725)
!1725 = !{!1726, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1724, file: !1707, line: 209, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1728, line: 8, baseType: !660)
!1728 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1724, file: !1707, line: 210, baseType: !1727, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1706, file: !1707, line: 212, baseType: !1727, size: 64, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1706, file: !1707, line: 213, baseType: !398, size: 32, offset: 832)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1706, file: !1707, line: 214, baseType: !407, size: 32, offset: 864)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1706, file: !1707, line: 215, baseType: !1734, size: 32, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1707, line: 31, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !461)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1706, file: !1707, line: 216, baseType: !38, size: 16, offset: 928)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1706, file: !1707, line: 217, baseType: !38, size: 16, offset: 944)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1706, file: !1707, line: 221, baseType: !787, size: 16, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1707, line: 228, baseType: !51, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 245, baseType: !1741, size: 320, offset: 1088)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 245, size: 320, elements: !1742)
!1742 = !{!1743, !1770}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1741, file: !1707, line: 246, baseType: !1744, size: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1707, line: 114, size: 320, elements: !1745)
!1745 = !{!1746, !1747, !1759, !1762, !1769}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1744, file: !1707, line: 116, baseType: !51, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1707, line: 117, baseType: !1748, size: 64, offset: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1707, line: 117, size: 64, elements: !1749)
!1749 = !{!1750, !1758}
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1707, line: 118, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1707, line: 118, size: 64, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1751, file: !1707, line: 120, baseType: !105, size: 16)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1751, file: !1707, line: 121, baseType: !1755, size: 48, offset: 16)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 6)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1748, file: !1707, line: 127, baseType: !51, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1744, file: !1707, line: 129, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1707, line: 102, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1744, file: !1707, line: 130, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1707, line: 108, size: 192, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1764, file: !1707, line: 109, baseType: !869, size: 128, align: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1764, file: !1707, line: 110, baseType: !1177, size: 32, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1764, file: !1707, line: 111, baseType: !729, size: 8, offset: 160)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1744, file: !1707, line: 131, baseType: !28, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1707, line: 247, baseType: !1771, size: 320)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !1707, line: 247, size: 320, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1771, file: !1707, line: 248, baseType: !51, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1771, file: !1707, line: 249, baseType: !51, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !1707, line: 250, baseType: !1760, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1771, file: !1707, line: 251, baseType: !1763, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1771, file: !1707, line: 252, baseType: !327, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 260, baseType: !1779, size: 256, offset: 1408)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 260, size: 256, elements: !1780)
!1780 = !{!1781, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1779, file: !1707, line: 261, baseType: !1782, size: 256)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1707, line: 134, size: 256, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1782, file: !1707, line: 135, baseType: !32, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1782, file: !1707, line: 136, baseType: !1786, size: 256)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !879)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !1707, line: 262, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1779, file: !1707, line: 262, size: 256, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1788, file: !1707, line: 264, baseType: !109, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1788, file: !1707, line: 265, baseType: !1792, size: 128, offset: 128)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1793, line: 22, size: 128, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1794 = !{!1795, !1798}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1792, file: !1793, line: 23, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1793, line: 23, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1792, file: !1793, line: 24, baseType: !51, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1706, file: !1707, line: 280, baseType: !1800, size: 64, offset: 1664)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1707, line: 176, size: 192, elements: !1802)
!1802 = !{!1803, !1812, !1813}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1801, file: !1707, line: 177, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1707, line: 171, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!34, !1705, !1808, !1810, !1705}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1801, file: !1707, line: 178, baseType: !1705, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1801, file: !1707, line: 179, baseType: !1760, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1659, file: !1660, line: 90, baseType: !1558, size: 320, offset: 2432)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1659, file: !1660, line: 97, baseType: !909, size: 256, offset: 2752)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1659, file: !1660, line: 99, baseType: !1817, size: 768, offset: 3008)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !1818)
!1818 = !{!1819, !1824}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1817, file: !24, line: 200, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!34, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1817, file: !24, line: 201, baseType: !1825, size: 704, offset: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !1826)
!1826 = !{!1827, !1874}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1825, file: !24, line: 195, baseType: !1828, size: 640)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !1829)
!1829 = !{!1830, !1842, !1843, !1844, !1864, !1865, !1867, !1873}
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !24, line: 174, baseType: !1831, size: 192)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !24, line: 174, size: 192, elements: !1832)
!1832 = !{!1833, !1841}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !24, line: 175, baseType: !1834, size: 192)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !24, line: 175, size: 192, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839, !1840}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1834, file: !24, line: 176, baseType: !45, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1834, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1834, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1834, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1834, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1831, file: !24, line: 182, baseType: !869, size: 128, align: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1828, file: !24, line: 184, baseType: !597, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1828, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1828, file: !24, line: 186, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !1847)
!1847 = !{!1848, !1849, !1853, !1860}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1846, file: !24, line: 205, baseType: !1817, size: 768)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1846, file: !24, line: 206, baseType: !1850, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1823, !1845}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1846, file: !24, line: 207, baseType: !1854, size: 64, offset: 832)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1857, !1858, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1846, file: !24, line: 209, baseType: !1861, size: 64, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!34, !1857, !45}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1828, file: !24, line: 187, baseType: !1823, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1828, file: !24, line: 188, baseType: !1866, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1828, file: !24, line: 189, baseType: !1868, size: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1869, file: !24, line: 158, baseType: !761, size: 192, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1869, file: !24, line: 159, baseType: !1857, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1828, file: !24, line: 190, baseType: !1019, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1825, file: !24, line: 196, baseType: !1389, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1659, file: !1660, line: 100, baseType: !1857, size: 64, offset: 3776)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1659, file: !1660, line: 102, baseType: !1877, size: 64, offset: 3840)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1660, line: 107, size: 1152, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1888}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1878, file: !1660, line: 108, baseType: !895, size: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1878, file: !1660, line: 109, baseType: !1658, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1878, file: !1660, line: 110, baseType: !398, size: 32, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1878, file: !1660, line: 111, baseType: !61, size: 32, offset: 224)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1878, file: !1660, line: 112, baseType: !1885, size: 640, offset: 256)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 640, elements: !1886)
!1886 = !{!1887}
!1887 = !DISubrange(count: 10)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1878, file: !1660, line: 113, baseType: !1889, size: 256, offset: 896)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 256, elements: !879)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1659, file: !1660, line: 103, baseType: !1891, size: 640, offset: 3904)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 640, elements: !1886)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1659, file: !1660, line: 104, baseType: !885, size: 256, offset: 4544)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1507, file: !126, line: 904, baseType: !1530, size: 64, offset: 9280)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1507, file: !126, line: 906, baseType: !1895, size: 64, offset: 9344)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1507, file: !126, line: 930, baseType: !61, size: 32, offset: 9408)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1507, file: !126, line: 933, baseType: !61, size: 32, offset: 9440)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1507, file: !126, line: 935, baseType: !1900, size: 64, offset: 9472)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1900, file: !150, line: 104, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1507, file: !126, line: 940, baseType: !653, size: 64, offset: 9536)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1507, file: !126, line: 942, baseType: !909, size: 256, offset: 9600)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1504, file: !126, line: 986, baseType: !1908, offset: 10240)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !1909)
!1909 = !{!1910}
!1910 = !DISubrange(count: -1)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1216, file: !1217, line: 882, baseType: !1503, size: 64, offset: 9792)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1216, file: !1217, line: 884, baseType: !34, size: 32, offset: 9856)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1216, file: !1217, line: 885, baseType: !34, size: 32, offset: 9888)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1216, file: !1217, line: 886, baseType: !34, size: 32, offset: 9920)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1216, file: !1217, line: 888, baseType: !34, size: 32, offset: 9952)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1216, file: !1217, line: 890, baseType: !51, size: 64, offset: 9984)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1216, file: !1217, line: 893, baseType: !7, size: 32, offset: 10048)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1216, file: !1217, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1216, file: !1217, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1216, file: !1217, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1216, file: !1217, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1216, file: !1217, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1216, file: !1217, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1216, file: !1217, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1216, file: !1217, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1216, file: !1217, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1216, file: !1217, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1216, file: !1217, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1216, file: !1217, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1216, file: !1217, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1216, file: !1217, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1216, file: !1217, line: 969, baseType: !51, size: 64, offset: 10176)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1216, file: !1217, line: 971, baseType: !1934, size: 448, offset: 10240)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !120, line: 25, size: 448, elements: !1935)
!1935 = !{!1936, !1937, !1942}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1934, file: !120, line: 26, baseType: !51, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1934, file: !120, line: 27, baseType: !1938, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!281, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !120, line: 28, baseType: !1943, size: 320, offset: 128)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !120, line: 28, size: 320, elements: !1944)
!1944 = !{!1945, !1955, !1980}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1943, file: !120, line: 37, baseType: !1946, size: 320)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1943, file: !120, line: 30, size: 320, elements: !1947)
!1947 = !{!1948, !1950, !1951, !1952, !1953, !1954}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1946, file: !120, line: 31, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1946, file: !120, line: 32, baseType: !461, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !120, line: 33, baseType: !461, size: 32, offset: 96)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1946, file: !120, line: 34, baseType: !461, size: 32, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1946, file: !120, line: 35, baseType: !465, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1946, file: !120, line: 36, baseType: !1949, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1943, file: !120, line: 47, baseType: !1956, size: 192)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1943, file: !120, line: 39, size: 192, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1979}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1956, file: !120, line: 40, baseType: !1374, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1956, file: !120, line: 41, baseType: !119, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !120, line: 42, baseType: !1961, size: 64, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !120, line: 42, size: 64, elements: !1962)
!1962 = !{!1963, !1971}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1961, file: !120, line: 43, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1966, line: 7, size: 128, elements: !1967)
!1966 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1967 = !{!1968, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1965, file: !1966, line: 8, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1965, file: !1966, line: 9, baseType: !55, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1961, file: !120, line: 44, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1974, line: 7, size: 64, elements: !1975)
!1974 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1975 = !{!1976, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1973, file: !1974, line: 8, baseType: !1977, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1974, line: 5, baseType: !645)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1973, file: !1974, line: 9, baseType: !645, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1956, file: !120, line: 46, baseType: !465, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1943, file: !120, line: 55, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1943, file: !120, line: 49, size: 256, elements: !1982)
!1982 = !{!1983, !1986, !1987, !1988, !1989}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1981, file: !120, line: 50, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !120, line: 14, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1981, file: !120, line: 51, baseType: !34, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1981, file: !120, line: 52, baseType: !34, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1981, file: !120, line: 53, baseType: !51, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1981, file: !120, line: 54, baseType: !51, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1216, file: !1217, line: 973, baseType: !1991, size: 32, offset: 10688)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1216, file: !1217, line: 974, baseType: !1991, size: 32, offset: 10720)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1216, file: !1217, line: 978, baseType: !51, size: 64, offset: 10752)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1216, file: !1217, line: 987, baseType: !1215, size: 64, offset: 10816)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1216, file: !1217, line: 990, baseType: !1215, size: 64, offset: 10880)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1216, file: !1217, line: 995, baseType: !109, size: 128, offset: 10944)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1216, file: !1217, line: 996, baseType: !109, size: 128, offset: 11072)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1216, file: !1217, line: 997, baseType: !1215, size: 64, offset: 11200)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1216, file: !1217, line: 1005, baseType: !109, size: 128, offset: 11264)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1216, file: !1217, line: 1006, baseType: !109, size: 128, offset: 11392)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1216, file: !1217, line: 1009, baseType: !1173, size: 64, offset: 11520)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1216, file: !1217, line: 1010, baseType: !2004, size: 512, offset: 11584)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 512, elements: !879)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1216, file: !1217, line: 1011, baseType: !109, size: 128, offset: 12096)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1216, file: !1217, line: 1012, baseType: !109, size: 128, offset: 12224)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1216, file: !1217, line: 1014, baseType: !597, size: 64, offset: 12352)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1216, file: !1217, line: 1017, baseType: !778, size: 64, offset: 12416)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1216, file: !1217, line: 1020, baseType: !778, size: 64, offset: 12480)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1216, file: !1217, line: 1023, baseType: !32, size: 64, offset: 12544)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1216, file: !1217, line: 1025, baseType: !465, size: 64, offset: 12608)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1216, file: !1217, line: 1026, baseType: !465, size: 64, offset: 12672)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1216, file: !1217, line: 1031, baseType: !465, size: 64, offset: 12736)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1216, file: !1217, line: 1032, baseType: !2015, size: 192, offset: 12800)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1217, line: 324, size: 192, elements: !2016)
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2015, file: !1217, line: 326, baseType: !465, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2015, file: !1217, line: 327, baseType: !465, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2015, file: !1217, line: 328, baseType: !607, size: 32, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1216, file: !1217, line: 1041, baseType: !51, size: 64, offset: 12992)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1216, file: !1217, line: 1042, baseType: !51, size: 64, offset: 13056)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1216, file: !1217, line: 1045, baseType: !465, size: 64, offset: 13120)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1216, file: !1217, line: 1048, baseType: !465, size: 64, offset: 13184)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1216, file: !1217, line: 1051, baseType: !51, size: 64, offset: 13248)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1216, file: !1217, line: 1052, baseType: !51, size: 64, offset: 13312)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1216, file: !1217, line: 1055, baseType: !2027, size: 640, offset: 13376)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2028, line: 132, size: 640, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2029 = !{!2030, !2036, !2037}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2027, file: !2028, line: 133, baseType: !2031, size: 576)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2032, size: 576, elements: !328)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2028, line: 117, size: 192, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2032, file: !2028, line: 118, baseType: !465, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2032, file: !2028, line: 119, baseType: !1383, size: 128, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2027, file: !2028, line: 134, baseType: !7, size: 32, offset: 576)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2027, file: !2028, line: 135, baseType: !7, size: 32, offset: 608)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1216, file: !1217, line: 1058, baseType: !2039, size: 448, offset: 14016)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2028, line: 144, size: 448, elements: !2040)
!2040 = !{!2041, !2042, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2039, file: !2028, line: 145, baseType: !869, size: 128, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2039, file: !2028, line: 146, baseType: !649, size: 256, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2039, file: !2028, line: 147, baseType: !7, size: 32, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1216, file: !1217, line: 1064, baseType: !2045, size: 64, offset: 14464)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2048, line: 110, size: 1472, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2099, !2100, !2101, !2109}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2047, file: !2048, line: 111, baseType: !653, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2047, file: !2048, line: 112, baseType: !398, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2047, file: !2048, line: 113, baseType: !407, size: 32, offset: 96)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2047, file: !2048, line: 114, baseType: !398, size: 32, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2047, file: !2048, line: 115, baseType: !407, size: 32, offset: 160)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2047, file: !2048, line: 116, baseType: !398, size: 32, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2047, file: !2048, line: 117, baseType: !407, size: 32, offset: 224)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2047, file: !2048, line: 118, baseType: !398, size: 32, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2047, file: !2048, line: 119, baseType: !407, size: 32, offset: 288)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2047, file: !2048, line: 120, baseType: !7, size: 32, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2047, file: !2048, line: 121, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2062, line: 24, baseType: !2063)
!2062 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2062, line: 24, size: 64, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2063, file: !2062, line: 24, baseType: !465, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2047, file: !2048, line: 122, baseType: !2061, size: 64, offset: 448)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2047, file: !2048, line: 123, baseType: !2061, size: 64, offset: 512)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2047, file: !2048, line: 124, baseType: !2061, size: 64, offset: 576)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2047, file: !2048, line: 125, baseType: !2061, size: 64, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2047, file: !2048, line: 127, baseType: !99, size: 8, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2047, file: !2048, line: 129, baseType: !1705, size: 64, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2047, file: !2048, line: 130, baseType: !1705, size: 64, offset: 832)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2047, file: !2048, line: 131, baseType: !1705, size: 64, offset: 896)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2047, file: !2048, line: 132, baseType: !1705, size: 64, offset: 960)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2047, file: !2048, line: 135, baseType: !32, size: 64, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2047, file: !2048, line: 137, baseType: !2077, size: 64, offset: 1088)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2079, line: 14, size: 1088, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2078, file: !2079, line: 15, baseType: !1177, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2078, file: !2079, line: 17, baseType: !1596, size: 320, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2078, file: !2079, line: 19, baseType: !51, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2078, file: !2079, line: 20, baseType: !653, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2078, file: !2079, line: 23, baseType: !895, size: 128, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2078, file: !2079, line: 24, baseType: !398, size: 32, offset: 640)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2078, file: !2079, line: 29, baseType: !653, size: 64, offset: 704)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2078, file: !2079, line: 36, baseType: !2089, size: 320, offset: 768)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2090, line: 15, size: 320, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2089, file: !2090, line: 16, baseType: !607, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2089, file: !2090, line: 18, baseType: !34, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2089, file: !2090, line: 19, baseType: !34, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2089, file: !2090, line: 20, baseType: !34, size: 32, offset: 96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2089, file: !2090, line: 21, baseType: !34, size: 32, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2089, file: !2090, line: 22, baseType: !51, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2090, line: 23, baseType: !51, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2047, file: !2048, line: 138, baseType: !1658, size: 64, offset: 1152)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2047, file: !2048, line: 139, baseType: !1877, size: 64, offset: 1216)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2047, file: !2048, line: 140, baseType: !2102, size: 64, offset: 1280)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2048, line: 25, size: 64, elements: !2104)
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2103, file: !2048, line: 26, baseType: !61, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2103, file: !2048, line: 27, baseType: !34, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2103, file: !2048, line: 28, baseType: !2108, offset: 64)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, elements: !1909)
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !2048, line: 142, baseType: !2110, size: 128, offset: 1344)
!2110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2047, file: !2048, line: 142, size: 128, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2110, file: !2048, line: 143, baseType: !34, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2110, file: !2048, line: 144, baseType: !869, size: 128, align: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1216, file: !1217, line: 1067, baseType: !2045, size: 64, offset: 14528)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1216, file: !1217, line: 1070, baseType: !2045, size: 64, offset: 14592)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1216, file: !1217, line: 1074, baseType: !1705, size: 64, offset: 14656)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1216, file: !1217, line: 1084, baseType: !2118, size: 128, offset: 14720)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !2119)
!2119 = !{!2120}
!2120 = !DISubrange(count: 16)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1216, file: !1217, line: 1086, baseType: !2122, size: 64, offset: 14848)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1217, line: 55, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1216, file: !1217, line: 1089, baseType: !2125, size: 64, offset: 14912)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2126, line: 12, size: 64, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2125, file: !2126, line: 13, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2126, line: 8, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1216, file: !1217, line: 1090, baseType: !2132, size: 128, offset: 14976)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2133, line: 13, size: 128, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2134 = !{!2135}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2132, file: !2133, line: 14, baseType: !109, size: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1216, file: !1217, line: 1097, baseType: !2137, size: 64, offset: 15104)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1217, line: 50, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1216, file: !1217, line: 1100, baseType: !2140, size: 64, offset: 15168)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1217, line: 1100, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1216, file: !1217, line: 1103, baseType: !2143, size: 64, offset: 15232)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1217, line: 53, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1216, file: !1217, line: 1107, baseType: !2146, size: 64, offset: 15296)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2148, line: 31, size: 576, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2149 = !{!2150, !2151, !2154, !2157, !2160, !2161, !2164, !2167, !2168}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2147, file: !2148, line: 32, baseType: !1177, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2147, file: !2148, line: 33, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2148, line: 9, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2147, file: !2148, line: 34, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2148, line: 10, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2147, file: !2148, line: 35, baseType: !2158, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2148, line: 8, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2147, file: !2148, line: 36, baseType: !1195, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2147, file: !2148, line: 37, baseType: !2162, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1707, line: 34, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2147, file: !2148, line: 38, baseType: !2165, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2148, line: 38, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2147, file: !2148, line: 39, baseType: !2165, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2147, file: !2148, line: 40, baseType: !2169, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2171, line: 771, size: 384, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2172 = !{!2173, !2174, !2175, !2176}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2170, file: !2171, line: 772, baseType: !1691, size: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2170, file: !2171, line: 773, baseType: !1658, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2170, file: !2171, line: 774, baseType: !1877, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2170, file: !2171, line: 775, baseType: !2177, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2179, line: 209, size: 4736, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!2180 = !{!2181, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2178, file: !2179, line: 215, baseType: !2182, size: 896)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2183, size: 896, elements: !2621)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !2179, line: 152, size: 1600, elements: !2185)
!2185 = !{!2186, !2672, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2790}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2184, file: !2179, line: 154, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !2179, line: 389, size: 7872, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2583, !2589, !2590, !2594, !2595, !2596, !2597, !2598, !2599, !2618, !2619, !2623, !2624, !2625, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2659, !2662, !2663, !2670}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2188, file: !2179, line: 391, baseType: !2184, size: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2188, file: !2179, line: 393, baseType: !51, size: 64, offset: 1600)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2188, file: !2179, line: 401, baseType: !34, size: 32, offset: 1664)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2188, file: !2179, line: 404, baseType: !34, size: 32, offset: 1696)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !2188, file: !2179, line: 417, baseType: !34, size: 32, offset: 1728)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !2188, file: !2179, line: 418, baseType: !34, size: 32, offset: 1760)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !2188, file: !2179, line: 419, baseType: !34, size: 32, offset: 1792)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !2188, file: !2179, line: 432, baseType: !34, size: 32, offset: 1824)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !2188, file: !2179, line: 433, baseType: !34, size: 32, offset: 1856)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !2188, file: !2179, line: 434, baseType: !34, size: 32, offset: 1888)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !2188, file: !2179, line: 436, baseType: !34, size: 32, offset: 1920)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !2188, file: !2179, line: 439, baseType: !7, size: 32, offset: 1952)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2188, file: !2179, line: 441, baseType: !2203, size: 64, offset: 1984)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2205, line: 190, size: 1152, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2575, !2576, !2577, !2578, !2579, !2582}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2204, file: !2205, line: 191, baseType: !61, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2204, file: !2205, line: 192, baseType: !61, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2204, file: !2205, line: 202, baseType: !2203, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2204, file: !2205, line: 203, baseType: !28, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2204, file: !2205, line: 205, baseType: !761, size: 192, align: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2204, file: !2205, line: 207, baseType: !1635, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2204, file: !2205, line: 208, baseType: !7, size: 32, offset: 448)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !2205, line: 209, baseType: !2215, size: 256, offset: 512)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !2205, line: 209, size: 256, elements: !2216)
!2216 = !{!2217, !2226, !2230}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2215, file: !2205, line: 210, baseType: !2218, size: 256)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2205, line: 153, size: 256, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2225}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2218, file: !2205, line: 154, baseType: !51, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2218, file: !2205, line: 156, baseType: !1389, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2218, file: !2205, line: 162, baseType: !2223, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2205, line: 162, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2218, file: !2205, line: 167, baseType: !51, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2215, file: !2205, line: 211, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2205, line: 170, size: 64, elements: !2228)
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2227, file: !2205, line: 171, baseType: !2203, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2215, file: !2205, line: 212, baseType: !2231, size: 256)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2205, line: 174, size: 256, elements: !2232)
!2232 = !{!2233, !2570, !2573, !2574}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2231, file: !2205, line: 175, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2205, line: 271, size: 768, elements: !2237)
!2237 = !{!2238, !2543, !2547, !2548, !2549, !2550, !2551, !2555, !2556, !2557, !2558, !2566}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2236, file: !2205, line: 276, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!34, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2205, line: 251, size: 1216, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2243, file: !2205, line: 253, baseType: !2203, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2243, file: !2205, line: 254, baseType: !1530, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2243, file: !2205, line: 255, baseType: !1091, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2243, file: !2205, line: 256, baseType: !32, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2243, file: !2205, line: 259, baseType: !649, size: 256, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2243, file: !2205, line: 260, baseType: !649, size: 256, offset: 512)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2243, file: !2205, line: 261, baseType: !34, size: 32, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2243, file: !2205, line: 262, baseType: !109, size: 128, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2243, file: !2205, line: 263, baseType: !327, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2243, file: !2205, line: 265, baseType: !47, size: 64, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2243, file: !2205, line: 266, baseType: !729, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2243, file: !2205, line: 267, baseType: !729, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2243, file: !2205, line: 268, baseType: !2258, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2261, line: 563, size: 1024, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2262 = !{!2263, !2319, !2320, !2324, !2328, !2332, !2509, !2513, !2517, !2521, !2522, !2523, !2527, !2531, !2535, !2539}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2260, file: !2261, line: 564, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !2269)
!2269 = !{!2270, !2279, !2280, !2286, !2293, !2294, !2299, !2300, !2305, !2306, !2309, !2310, !2311, !2312, !2313, !2314, !2317}
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !126, line: 628, baseType: !2271, size: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !126, line: 628, size: 128, elements: !2272)
!2272 = !{!2273, !2278}
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !126, line: 629, baseType: !2274, size: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2271, file: !126, line: 629, size: 128, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2274, file: !126, line: 631, baseType: !51, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2274, file: !126, line: 632, baseType: !51, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2271, file: !126, line: 635, baseType: !869, size: 128, align: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2268, file: !126, line: 639, baseType: !1503, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2268, file: !126, line: 640, baseType: !2281, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1539, line: 297, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1539, line: 297, size: 64, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2282, file: !1539, line: 297, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1544, line: 19, baseType: !51)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !126, line: 646, baseType: !2287, size: 64, offset: 256)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !126, line: 646, size: 64, elements: !2288)
!2288 = !{!2289, !2292}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2287, file: !126, line: 647, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !51)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2287, file: !126, line: 648, baseType: !2291, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2268, file: !126, line: 666, baseType: !34, size: 32, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2268, file: !126, line: 667, baseType: !2295, size: 64, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2296, file: !126, line: 580, baseType: !1558, size: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2268, file: !126, line: 670, baseType: !729, size: 8, offset: 448)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2268, file: !126, line: 681, baseType: !2301, size: 256, offset: 512)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !126, line: 678, size: 256, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2301, file: !126, line: 679, baseType: !761, size: 192, align: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2301, file: !126, line: 680, baseType: !51, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2268, file: !126, line: 689, baseType: !109, size: 128, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2268, file: !126, line: 691, baseType: !2307, size: 64, offset: 896)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2268, file: !126, line: 694, baseType: !2258, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2268, file: !126, line: 697, baseType: !51, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2268, file: !126, line: 699, baseType: !1530, size: 64, offset: 1088)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2268, file: !126, line: 700, baseType: !32, size: 64, offset: 1152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2268, file: !126, line: 711, baseType: !653, size: 64, offset: 1216)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2268, file: !126, line: 717, baseType: !2315, size: 64, offset: 1280)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1217, line: 54, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2268, file: !126, line: 722, baseType: !2318, offset: 1344)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !938)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2260, file: !2261, line: 569, baseType: !2264, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2260, file: !2261, line: 571, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!34, !2267, !51}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2260, file: !2261, line: 572, baseType: !2325, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!34, !2267}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2260, file: !2261, line: 578, baseType: !2329, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!34, !2267, !51, !51, !51}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2260, file: !2261, line: 580, baseType: !2333, size: 64, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!2336, !2337}
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2261, line: 512, size: 896, elements: !2339)
!2339 = !{!2340, !2348, !2349, !2356, !2363, !2373, !2502, !2503, !2505, !2507}
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !2261, line: 513, baseType: !2341, size: 320)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2338, file: !2261, line: 513, size: 320, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2341, file: !2261, line: 514, baseType: !2267, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2341, file: !2261, line: 515, baseType: !261, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2341, file: !2261, line: 516, baseType: !51, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2341, file: !2261, line: 517, baseType: !51, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2341, file: !2261, line: 518, baseType: !51, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !2261, line: 520, baseType: !125, size: 32, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2338, file: !2261, line: 522, baseType: !2350, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1544, line: 22, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1544, line: 22, size: 64, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2352, file: !1544, line: 22, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1544, line: 15, baseType: !51)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2338, file: !2261, line: 524, baseType: !2357, size: 64, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1539, line: 372, baseType: !2359)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1539, line: 372, size: 64, elements: !2360)
!2360 = !{!2361}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2359, file: !1539, line: 372, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1544, line: 16, baseType: !51)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !2261, line: 527, baseType: !2364, size: 64, offset: 512)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !2261, line: 527, size: 64, elements: !2365)
!2365 = !{!2366, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2364, file: !2261, line: 528, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1544, line: 21, baseType: !2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1544, line: 21, size: 64, elements: !2369)
!2369 = !{!2370}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2368, file: !1544, line: 21, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1544, line: 14, baseType: !51)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2364, file: !2261, line: 529, baseType: !2351, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2338, file: !2261, line: 534, baseType: !2374, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !2376)
!2376 = !{!2377, !2378, !2496, !2501}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2375, file: !126, line: 75, baseType: !51, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2375, file: !126, line: 83, baseType: !2379, size: 320, offset: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2375, file: !126, line: 83, size: 320, elements: !2380)
!2380 = !{!2381, !2402, !2416, !2420, !2495}
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !126, line: 84, baseType: !2382, size: 320)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !126, line: 84, size: 320, elements: !2383)
!2383 = !{!2384, !2395, !2396, !2401}
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !126, line: 90, baseType: !2385, size: 128)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2382, file: !126, line: 90, size: 128, elements: !2386)
!2386 = !{!2387, !2388, !2393, !2394}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2385, file: !126, line: 91, baseType: !109, size: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !126, line: 94, baseType: !2389, size: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2385, file: !126, line: 94, size: 128, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2389, file: !126, line: 96, baseType: !32, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2389, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2385, file: !126, line: 102, baseType: !109, size: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2385, file: !126, line: 103, baseType: !109, size: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2382, file: !126, line: 106, baseType: !388, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !126, line: 107, baseType: !2397, size: 64, offset: 192)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2382, file: !126, line: 107, size: 64, elements: !2398)
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2397, file: !126, line: 108, baseType: !51, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2397, file: !126, line: 109, baseType: !51, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2382, file: !126, line: 117, baseType: !51, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !126, line: 119, baseType: !2403, size: 320)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !126, line: 119, size: 320, elements: !2404)
!2404 = !{!2405, !2406, !2409, !2410, !2411}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2403, file: !126, line: 124, baseType: !51, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2403, file: !126, line: 125, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2403, file: !126, line: 126, baseType: !51, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2403, file: !126, line: 127, baseType: !51, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !126, line: 128, baseType: !2412, size: 64, offset: 256)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2403, file: !126, line: 128, size: 64, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2412, file: !126, line: 133, baseType: !51, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2412, file: !126, line: 138, baseType: !653, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !126, line: 141, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !126, line: 141, size: 64, elements: !2418)
!2418 = !{!2419}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2417, file: !126, line: 142, baseType: !51, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !126, line: 144, baseType: !2421, size: 128)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !126, line: 144, size: 128, elements: !2422)
!2422 = !{!2423, !2494}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2421, file: !126, line: 146, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !2426)
!2426 = !{!2427, !2437, !2458, !2459, !2460, !2461, !2462, !2476, !2477, !2478}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2425, file: !142, line: 127, baseType: !2428, size: 384)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !2429)
!2429 = !{!2430, !2431, !2433, !2434, !2435, !2436}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2428, file: !142, line: 22, baseType: !51, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2428, file: !142, line: 23, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2428, file: !142, line: 24, baseType: !2432, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2428, file: !142, line: 25, baseType: !51, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2428, file: !142, line: 26, baseType: !51, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2428, file: !142, line: 27, baseType: !51, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2425, file: !142, line: 128, baseType: !2438, size: 128, offset: 384)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2439, line: 105, size: 128, elements: !2440)
!2439 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2438, file: !2439, line: 110, baseType: !51, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2438, file: !2439, line: 118, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2439, line: 95, size: 448, elements: !2445)
!2445 = !{!2446, !2447, !2453, !2454, !2455, !2456, !2457}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2444, file: !2439, line: 96, baseType: !653, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2444, file: !2439, line: 97, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2439, line: 60, baseType: !2450)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2444, file: !2439, line: 98, baseType: !2448, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2444, file: !2439, line: 99, baseType: !729, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2444, file: !2439, line: 100, baseType: !729, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2444, file: !2439, line: 101, baseType: !869, size: 128, align: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2444, file: !2439, line: 102, baseType: !2452, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2425, file: !142, line: 129, baseType: !598, size: 256, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2425, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2425, file: !142, line: 131, baseType: !7, size: 32, offset: 800)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2425, file: !142, line: 132, baseType: !51, size: 64, offset: 832)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2425, file: !142, line: 133, baseType: !2463, size: 64, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2465)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !2466)
!2466 = !{!2467, !2471, !2472}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2465, file: !142, line: 83, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2374}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2465, file: !142, line: 89, baseType: !2333, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2465, file: !142, line: 100, baseType: !2473, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!34, !2424, !51, !51, !34}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2425, file: !142, line: 134, baseType: !32, size: 64, offset: 960)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2425, file: !142, line: 135, baseType: !34, size: 32, offset: 1024)
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2425, file: !142, line: 136, baseType: !2479, size: 128, offset: 1088)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2425, file: !142, line: 136, size: 128, elements: !2480)
!2480 = !{!2481, !2487}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2479, file: !142, line: 137, baseType: !2482, size: 128)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2483, line: 6, size: 128, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2482, file: !2483, line: 7, baseType: !465, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2482, file: !2483, line: 8, baseType: !465, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !142, line: 138, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !142, line: 138, elements: !2489)
!2489 = !{!2490, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2488, file: !142, line: 138, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2488, file: !142, line: 138, elements: !938)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2488, file: !142, line: 138, baseType: !2493)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2482, elements: !1909)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2421, file: !126, line: 147, baseType: !32, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2379, file: !126, line: 161, baseType: !869, size: 128, align: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2375, file: !126, line: 164, baseType: !2497, size: 32, offset: 384)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2375, file: !126, line: 164, size: 32, elements: !2498)
!2498 = !{!2499, !2500}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2497, file: !126, line: 169, baseType: !61, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2497, file: !126, line: 177, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2375, file: !126, line: 181, baseType: !61, size: 32, offset: 416)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2338, file: !2261, line: 535, baseType: !2374, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2338, file: !2261, line: 541, baseType: !2504, size: 64, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2338, file: !2261, line: 545, baseType: !2506, size: 64, offset: 768)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2338, file: !2261, line: 549, baseType: !2508, size: 64, offset: 832)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1539, line: 520, baseType: !2374)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2260, file: !2261, line: 581, baseType: !2510, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!2336, !2337, !7}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2260, file: !2261, line: 582, baseType: !2514, size: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2336, !2337, !51, !51}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2260, file: !2261, line: 584, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!51, !2267}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2260, file: !2261, line: 588, baseType: !2333, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2260, file: !2261, line: 591, baseType: !2333, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2260, file: !2261, line: 597, baseType: !2524, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!34, !2267, !51, !32, !34, !34}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2260, file: !2261, line: 603, baseType: !2528, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!28, !2267}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2260, file: !2261, line: 613, baseType: !2532, size: 64, offset: 832)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!34, !2267, !2315}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2260, file: !2261, line: 625, baseType: !2536, size: 64, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2315, !2267, !51}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2260, file: !2261, line: 633, baseType: !2540, size: 64, offset: 960)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!2374, !2267, !51}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2236, file: !2205, line: 277, baseType: !2544, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2242}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2236, file: !2205, line: 290, baseType: !1121, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2236, file: !2205, line: 292, baseType: !1109, size: 64, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2236, file: !2205, line: 293, baseType: !1117, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2236, file: !2205, line: 294, baseType: !1113, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2236, file: !2205, line: 296, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!278, !2242, !327, !47, !53}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2236, file: !2205, line: 306, baseType: !47, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2236, file: !2205, line: 313, baseType: !729, size: 8, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2236, file: !2205, line: 314, baseType: !2552, size: 64, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2236, file: !2205, line: 317, baseType: !2559, size: 64, offset: 640)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!2562, !2242, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2563, line: 59, baseType: !7)
!2563 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2236, file: !2205, line: 320, baseType: !2567, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!34, !2242, !2267}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2231, file: !2205, line: 176, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2205, line: 35, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2231, file: !2205, line: 177, baseType: !53, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2231, file: !2205, line: 178, baseType: !2203, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2204, file: !2205, line: 215, baseType: !32, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2204, file: !2205, line: 221, baseType: !465, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2204, file: !2205, line: 223, baseType: !38, size: 16, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2204, file: !2205, line: 224, baseType: !36, size: 16, offset: 912)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2204, file: !2205, line: 225, baseType: !2580, size: 64, offset: 960)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2205, line: 36, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2204, file: !2205, line: 227, baseType: !869, size: 128, align: 64, offset: 1024)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !2188, file: !2179, line: 442, baseType: !2584, size: 448, offset: 2048)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !2179, line: 138, size: 448, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2584, file: !2179, line: 140, baseType: !2203, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2584, file: !2179, line: 141, baseType: !51, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2584, file: !2179, line: 142, baseType: !891, size: 320, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !2188, file: !2179, line: 443, baseType: !2584, size: 448, offset: 2496)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !2188, file: !2179, line: 446, baseType: !2591, offset: 2944)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2584, elements: !2592)
!2592 = !{!2593}
!2593 = !DISubrange(count: 0)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !2188, file: !2179, line: 455, baseType: !105, size: 16, offset: 2944)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !2188, file: !2179, line: 456, baseType: !105, size: 16, offset: 2960)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !2188, file: !2179, line: 457, baseType: !105, size: 16, offset: 2976)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !2188, file: !2179, line: 458, baseType: !105, size: 16, offset: 2992)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2188, file: !2179, line: 461, baseType: !2182, size: 896, offset: 3008)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2188, file: !2179, line: 463, baseType: !2600, size: 64, offset: 3904)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !2179, line: 537, size: 41664, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2616}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2601, file: !2179, line: 538, baseType: !2223, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2601, file: !2179, line: 541, baseType: !7, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2601, file: !2179, line: 544, baseType: !34, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2601, file: !2179, line: 547, baseType: !109, size: 128, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2601, file: !2179, line: 548, baseType: !869, size: 128, align: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2601, file: !2179, line: 555, baseType: !2188, size: 7872, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2601, file: !2179, line: 558, baseType: !2187, size: 64, offset: 8256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2601, file: !2179, line: 561, baseType: !61, size: 32, offset: 8320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2601, file: !2179, line: 564, baseType: !7, size: 32, offset: 8352)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2601, file: !2179, line: 567, baseType: !2613, size: 32768, offset: 8384)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !2614)
!2614 = !{!2615}
!2615 = !DISubrange(count: 4096)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2601, file: !2179, line: 570, baseType: !2617, size: 512, offset: 41152)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !332)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !2188, file: !2179, line: 469, baseType: !109, size: 128, offset: 3968)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !2188, file: !2179, line: 478, baseType: !2620, size: 1792, offset: 4096)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !2621)
!2621 = !{!2622}
!2622 = !DISubrange(count: 14)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !2188, file: !2179, line: 487, baseType: !2187, size: 64, offset: 5888)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !2188, file: !2179, line: 488, baseType: !2187, size: 64, offset: 5952)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !2188, file: !2179, line: 491, baseType: !2626, size: 64, offset: 6016)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !2179, line: 327, size: 896, elements: !2628)
!2628 = !{!2629, !2632, !2642, !2643, !2644, !2645, !2646}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2627, file: !2179, line: 332, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2631, line: 64, elements: !938)
!2631 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2627, file: !2179, line: 333, baseType: !2633, size: 192)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !2179, line: 299, size: 192, elements: !2634)
!2634 = !{!2635}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2633, file: !2179, line: 300, baseType: !2636, size: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2637, line: 17, size: 192, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2638 = !{!2639, !2640, !2641}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2636, file: !2637, line: 18, baseType: !465, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2636, file: !2637, line: 19, baseType: !465, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2636, file: !2637, line: 20, baseType: !467, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2627, file: !2179, line: 339, baseType: !2633, size: 192, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2627, file: !2179, line: 347, baseType: !2633, size: 192, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2627, file: !2179, line: 353, baseType: !2633, size: 192, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2627, file: !2179, line: 366, baseType: !2187, size: 64, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2627, file: !2179, line: 367, baseType: !2187, size: 64, offset: 832)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !2188, file: !2179, line: 492, baseType: !109, size: 128, offset: 6080)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2188, file: !2179, line: 495, baseType: !2633, size: 192, offset: 6208)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2188, file: !2179, line: 496, baseType: !2633, size: 192, offset: 6400)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2188, file: !2179, line: 497, baseType: !2015, size: 192, offset: 6592)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !2188, file: !2179, line: 503, baseType: !109, size: 128, offset: 6784)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !2188, file: !2179, line: 504, baseType: !649, size: 256, offset: 6912)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !2188, file: !2179, line: 507, baseType: !66, size: 192, offset: 7168)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !2188, file: !2179, line: 510, baseType: !909, size: 256, offset: 7360)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2188, file: !2179, line: 513, baseType: !2656, size: 64, offset: 7616)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2658, line: 214, elements: !938)
!2658 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2188, file: !2179, line: 516, baseType: !2660, offset: 7680)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2661, line: 76, elements: !938)
!2661 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !2188, file: !2179, line: 519, baseType: !61, size: 32, offset: 7680)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !2188, file: !2179, line: 522, baseType: !2664, size: 128, offset: 7712)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !2179, line: 370, size: 128, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2664, file: !2179, line: 372, baseType: !729, size: 8)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2664, file: !2179, line: 375, baseType: !34, size: 32, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2664, file: !2179, line: 380, baseType: !34, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2664, file: !2179, line: 386, baseType: !34, size: 32, offset: 96)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !2188, file: !2179, line: 529, baseType: !2671, offset: 7872)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, elements: !1909)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2184, file: !2179, line: 157, baseType: !2673, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !2179, line: 669, size: 1984, elements: !2675)
!2675 = !{!2676, !2680, !2684, !2688, !2689, !2690, !2691, !2695, !2699, !2700, !2706, !2710, !2711, !2712, !2716, !2720, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2773, !2774}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2674, file: !2179, line: 670, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!2183, !2183}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2674, file: !2179, line: 671, baseType: !2681, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!34, !2183}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2674, file: !2179, line: 672, baseType: !2685, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2183}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2674, file: !2179, line: 673, baseType: !2685, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2674, file: !2179, line: 674, baseType: !2685, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2674, file: !2179, line: 675, baseType: !2685, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2674, file: !2179, line: 676, baseType: !2692, size: 64, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2183, !34}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2674, file: !2179, line: 677, baseType: !2696, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!34, !1091, !2183}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2674, file: !2179, line: 679, baseType: !2696, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2674, file: !2179, line: 682, baseType: !2701, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!34, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !2179, line: 30, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2674, file: !2179, line: 683, baseType: !2707, size: 64, offset: 640)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !2704}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2674, file: !2179, line: 684, baseType: !2707, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2674, file: !2179, line: 685, baseType: !1013, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2674, file: !2179, line: 686, baseType: !2713, size: 64, offset: 832)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!34, !1215, !2177}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2674, file: !2179, line: 688, baseType: !2717, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !1215, !2177}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2674, file: !2179, line: 689, baseType: !2721, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !1215}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2674, file: !2179, line: 690, baseType: !2721, size: 64, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2674, file: !2179, line: 691, baseType: !2721, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2674, file: !2179, line: 692, baseType: !2685, size: 64, offset: 1152)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2674, file: !2179, line: 694, baseType: !729, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2674, file: !2179, line: 707, baseType: !729, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2674, file: !2179, line: 719, baseType: !729, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2674, file: !2179, line: 722, baseType: !34, size: 32, offset: 1248)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2674, file: !2179, line: 723, baseType: !28, size: 64, offset: 1280)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2674, file: !2179, line: 726, baseType: !28, size: 64, offset: 1344)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2674, file: !2179, line: 729, baseType: !2600, size: 64, offset: 1408)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2674, file: !2179, line: 732, baseType: !1200, size: 192, offset: 1472)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2674, file: !2179, line: 738, baseType: !109, size: 128, offset: 1664)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2674, file: !2179, line: 744, baseType: !2737, size: 64, offset: 1792)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !2179, line: 580, size: 1728, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2749, !2750, !2751, !2755, !2759, !2760, !2761, !2762, !2763, !2767, !2771, !2772}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2738, file: !2179, line: 586, baseType: !2617, size: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2738, file: !2179, line: 587, baseType: !51, size: 64, offset: 512)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2738, file: !2179, line: 593, baseType: !47, size: 64, offset: 576)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2738, file: !2179, line: 596, baseType: !7, size: 32, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2738, file: !2179, line: 604, baseType: !7, size: 32, offset: 672)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2738, file: !2179, line: 610, baseType: !2673, size: 64, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2738, file: !2179, line: 611, baseType: !109, size: 128, offset: 768)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2738, file: !2179, line: 612, baseType: !2748, size: 64, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2738, file: !2179, line: 614, baseType: !2239, size: 64, offset: 960)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2738, file: !2179, line: 615, baseType: !2544, size: 64, offset: 1024)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2738, file: !2179, line: 621, baseType: !2752, size: 64, offset: 1088)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!465, !2183, !2737}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2738, file: !2179, line: 625, baseType: !2756, size: 64, offset: 1152)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!659, !2183, !2737}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2738, file: !2179, line: 628, baseType: !1121, size: 64, offset: 1216)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2738, file: !2179, line: 631, baseType: !1109, size: 64, offset: 1280)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2738, file: !2179, line: 632, baseType: !1117, size: 64, offset: 1344)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2738, file: !2179, line: 633, baseType: !1113, size: 64, offset: 1408)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2738, file: !2179, line: 640, baseType: !2764, size: 64, offset: 1472)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!34, !2183, !2737, !465}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2738, file: !2179, line: 645, baseType: !2768, size: 64, offset: 1536)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!34, !2183, !2737, !659}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2738, file: !2179, line: 654, baseType: !2552, size: 64, offset: 1600)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2738, file: !2179, line: 657, baseType: !2559, size: 64, offset: 1664)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2674, file: !2179, line: 745, baseType: !2737, size: 64, offset: 1856)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2674, file: !2179, line: 754, baseType: !7, size: 32, offset: 1920)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2184, file: !2179, line: 160, baseType: !2438, size: 128, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2184, file: !2179, line: 163, baseType: !109, size: 128, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2184, file: !2179, line: 164, baseType: !109, size: 128, offset: 384)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !2184, file: !2179, line: 167, baseType: !109, size: 128, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2184, file: !2179, line: 173, baseType: !34, size: 32, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2179, line: 175, baseType: !7, size: 32, offset: 672)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !2184, file: !2179, line: 183, baseType: !465, size: 64, offset: 704)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !2184, file: !2179, line: 189, baseType: !61, size: 32, offset: 768)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2184, file: !2179, line: 192, baseType: !909, size: 256, offset: 832)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !2184, file: !2179, line: 193, baseType: !2785, size: 448, offset: 1088)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !910, line: 120, size: 448, elements: !2786)
!2786 = !{!2787, !2788, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2785, file: !910, line: 121, baseType: !909, size: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2785, file: !910, line: 122, baseType: !869, size: 128, align: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2785, file: !910, line: 125, baseType: !971, size: 64, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2184, file: !2179, line: 199, baseType: !2183, size: 64, offset: 1536)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2178, file: !2179, line: 218, baseType: !1177, size: 32, offset: 896)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2178, file: !2179, line: 226, baseType: !2177, size: 64, offset: 960)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2178, file: !2179, line: 229, baseType: !2187, size: 64, offset: 1024)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2178, file: !2179, line: 232, baseType: !34, size: 32, offset: 1088)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2178, file: !2179, line: 241, baseType: !109, size: 128, offset: 1152)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2178, file: !2179, line: 242, baseType: !109, size: 128, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2178, file: !2179, line: 243, baseType: !109, size: 128, offset: 1408)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2178, file: !2179, line: 246, baseType: !109, size: 128, offset: 1536)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2178, file: !2179, line: 255, baseType: !2620, size: 1792, offset: 1664)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2178, file: !2179, line: 258, baseType: !109, size: 128, offset: 3456)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2178, file: !2179, line: 259, baseType: !109, size: 128, offset: 3584)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2178, file: !2179, line: 265, baseType: !895, size: 128, offset: 3712)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2178, file: !2179, line: 271, baseType: !109, size: 128, offset: 3840)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2178, file: !2179, line: 277, baseType: !109, size: 128, offset: 3968)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2178, file: !2179, line: 278, baseType: !109, size: 128, offset: 4096)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2178, file: !2179, line: 279, baseType: !109, size: 128, offset: 4224)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2178, file: !2179, line: 288, baseType: !2187, size: 64, offset: 4352)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2178, file: !2179, line: 289, baseType: !2187, size: 64, offset: 4416)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2178, file: !2179, line: 290, baseType: !2177, size: 64, offset: 4480)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2178, file: !2179, line: 293, baseType: !729, size: 8, offset: 4544)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2178, file: !2179, line: 296, baseType: !869, size: 128, align: 64, offset: 4608)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1216, file: !1217, line: 1110, baseType: !2813, size: 64, offset: 15360)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2815, line: 93, size: 8768, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2865, !2874, !2875, !2877, !2878, !2879, !2882, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2920, !2921, !2928, !2938, !3001, !3002, !3005, !3006, !3007, !3008, !3009, !3010}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2814, file: !2815, line: 94, baseType: !1177, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2814, file: !2815, line: 95, baseType: !61, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2814, file: !2815, line: 96, baseType: !34, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2814, file: !2815, line: 97, baseType: !34, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2814, file: !2815, line: 98, baseType: !109, size: 128, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2814, file: !2815, line: 100, baseType: !66, size: 192, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2814, file: !2815, line: 103, baseType: !1215, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2814, file: !2815, line: 106, baseType: !2825, size: 192, offset: 512)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2826, line: 32, size: 192, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2825, file: !2826, line: 33, baseType: !109, size: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2825, file: !2826, line: 34, baseType: !2830, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2831, line: 25, baseType: !2832)
!2831 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2831, line: 23, size: 64, elements: !2833)
!2833 = !{!2834}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2832, file: !2831, line: 24, baseType: !1454, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2814, file: !2815, line: 109, baseType: !1019, size: 64, offset: 704)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2814, file: !2815, line: 112, baseType: !34, size: 32, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2814, file: !2815, line: 114, baseType: !34, size: 32, offset: 800)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2814, file: !2815, line: 115, baseType: !1215, size: 64, offset: 832)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2814, file: !2815, line: 118, baseType: !34, size: 32, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2814, file: !2815, line: 119, baseType: !7, size: 32, offset: 928)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2814, file: !2815, line: 121, baseType: !2842, size: 64, offset: 960)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2815, line: 80, size: 448, elements: !2844)
!2844 = !{!2845, !2846, !2852}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2843, file: !2815, line: 81, baseType: !61, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2843, file: !2815, line: 82, baseType: !2847, size: 128, offset: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2815, line: 75, size: 128, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2847, file: !2815, line: 76, baseType: !1215, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2847, file: !2815, line: 77, baseType: !2851, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2843, file: !2815, line: 83, baseType: !598, size: 256, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2814, file: !2815, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2814, file: !2815, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2814, file: !2815, line: 138, baseType: !7, size: 32, offset: 1056)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2814, file: !2815, line: 139, baseType: !109, size: 128, offset: 1088)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2814, file: !2815, line: 142, baseType: !1327, size: 512, offset: 1216)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2814, file: !2815, line: 143, baseType: !1335, size: 64, offset: 1728)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2814, file: !2815, line: 150, baseType: !2860, size: 256, offset: 1792)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, size: 256, elements: !768)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2815, line: 38, size: 128, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2861, file: !2815, line: 39, baseType: !465, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2861, file: !2815, line: 40, baseType: !465, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2814, file: !2815, line: 156, baseType: !2866, size: 192, offset: 2048)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2815, line: 66, size: 192, elements: !2867)
!2867 = !{!2868}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2866, file: !2815, line: 67, baseType: !2869, size: 192)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2815, line: 47, size: 192, elements: !2870)
!2870 = !{!2871, !2872, !2873}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2869, file: !2815, line: 48, baseType: !655, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2869, file: !2815, line: 49, baseType: !655, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2869, file: !2815, line: 50, baseType: !655, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2814, file: !2815, line: 160, baseType: !2027, size: 640, offset: 2240)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2814, file: !2815, line: 163, baseType: !2876, size: 256, offset: 2880)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 256, elements: !879)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2814, file: !2815, line: 169, baseType: !1173, size: 64, offset: 3136)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2814, file: !2815, line: 172, baseType: !34, size: 32, offset: 3200)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2814, file: !2815, line: 174, baseType: !2880, size: 64, offset: 3264)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2815, line: 174, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2814, file: !2815, line: 185, baseType: !2883, size: 64, offset: 3328)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !434, line: 860, baseType: !2884)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 853, size: 64, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2884, file: !434, line: 858, baseType: !433, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2884, file: !434, line: 859, baseType: !71, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2814, file: !2815, line: 186, baseType: !465, size: 64, offset: 3392)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2814, file: !2815, line: 186, baseType: !465, size: 64, offset: 3456)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2814, file: !2815, line: 186, baseType: !465, size: 64, offset: 3520)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2814, file: !2815, line: 186, baseType: !465, size: 64, offset: 3584)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2814, file: !2815, line: 187, baseType: !465, size: 64, offset: 3648)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2814, file: !2815, line: 188, baseType: !465, size: 64, offset: 3712)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2814, file: !2815, line: 189, baseType: !2015, size: 192, offset: 3776)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2814, file: !2815, line: 190, baseType: !51, size: 64, offset: 3968)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2814, file: !2815, line: 190, baseType: !51, size: 64, offset: 4032)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2814, file: !2815, line: 190, baseType: !51, size: 64, offset: 4096)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2814, file: !2815, line: 190, baseType: !51, size: 64, offset: 4160)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2814, file: !2815, line: 191, baseType: !51, size: 64, offset: 4224)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2814, file: !2815, line: 191, baseType: !51, size: 64, offset: 4288)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2814, file: !2815, line: 191, baseType: !51, size: 64, offset: 4352)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2814, file: !2815, line: 191, baseType: !51, size: 64, offset: 4416)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2814, file: !2815, line: 192, baseType: !51, size: 64, offset: 4480)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2814, file: !2815, line: 192, baseType: !51, size: 64, offset: 4544)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2814, file: !2815, line: 192, baseType: !51, size: 64, offset: 4608)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2814, file: !2815, line: 192, baseType: !51, size: 64, offset: 4672)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2814, file: !2815, line: 193, baseType: !51, size: 64, offset: 4736)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2814, file: !2815, line: 193, baseType: !51, size: 64, offset: 4800)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2814, file: !2815, line: 194, baseType: !2910, size: 448, offset: 4864)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2911, line: 12, size: 448, elements: !2912)
!2911 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2910, file: !2911, line: 15, baseType: !465, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2910, file: !2911, line: 17, baseType: !465, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2910, file: !2911, line: 19, baseType: !465, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2910, file: !2911, line: 21, baseType: !465, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2910, file: !2911, line: 29, baseType: !465, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2910, file: !2911, line: 35, baseType: !465, size: 64, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2910, file: !2911, line: 44, baseType: !465, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2814, file: !2815, line: 202, baseType: !467, size: 64, offset: 5312)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2814, file: !2815, line: 213, baseType: !2922, size: 2048, offset: 5376)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2923, size: 2048, elements: !2119)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2924, line: 43, size: 128, elements: !2925)
!2924 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2923, file: !2924, line: 44, baseType: !50, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2923, file: !2924, line: 45, baseType: !50, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2814, file: !2815, line: 216, baseType: !2929, size: 448, offset: 7424)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2815, line: 30, size: 448, elements: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2929, file: !2815, line: 31, baseType: !34, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2929, file: !2815, line: 32, baseType: !281, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2929, file: !2815, line: 33, baseType: !51, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2929, file: !2815, line: 34, baseType: !465, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2929, file: !2815, line: 34, baseType: !465, size: 64, offset: 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2929, file: !2815, line: 35, baseType: !51, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2929, file: !2815, line: 35, baseType: !51, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2814, file: !2815, line: 219, baseType: !2939, size: 64, offset: 7872)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2941, line: 41, size: 3456, elements: !2942)
!2941 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2957, !2958, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2940, file: !2941, line: 47, baseType: !106, size: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2940, file: !2941, line: 48, baseType: !462, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2940, file: !2941, line: 54, baseType: !97, size: 8, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2940, file: !2941, line: 55, baseType: !97, size: 8, offset: 72)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2940, file: !2941, line: 73, baseType: !466, size: 64, align: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2940, file: !2941, line: 74, baseType: !466, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2940, file: !2941, line: 81, baseType: !466, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2940, file: !2941, line: 82, baseType: !466, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2940, file: !2941, line: 85, baseType: !466, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2940, file: !2941, line: 86, baseType: !466, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2940, file: !2941, line: 94, baseType: !466, size: 64, offset: 512)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2940, file: !2941, line: 102, baseType: !466, size: 64, offset: 576)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2940, file: !2941, line: 107, baseType: !2956, size: 256, offset: 640)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !474)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2940, file: !2941, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2940, file: !2941, line: 110, baseType: !2959, size: 24, offset: 904)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !328)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2940, file: !2941, line: 111, baseType: !462, size: 32, align: 64, offset: 960)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2940, file: !2941, line: 113, baseType: !462, size: 32, offset: 992)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2940, file: !2941, line: 114, baseType: !462, size: 32, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2940, file: !2941, line: 115, baseType: !462, size: 32, offset: 1056)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2940, file: !2941, line: 117, baseType: !462, size: 32, offset: 1088)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2940, file: !2941, line: 118, baseType: !466, size: 64, align: 64, offset: 1152)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2940, file: !2941, line: 120, baseType: !466, size: 64, offset: 1216)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2940, file: !2941, line: 121, baseType: !466, size: 64, offset: 1280)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2940, file: !2941, line: 122, baseType: !466, size: 64, offset: 1344)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2940, file: !2941, line: 123, baseType: !466, size: 64, offset: 1408)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2940, file: !2941, line: 133, baseType: !466, size: 64, offset: 1472)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2940, file: !2941, line: 137, baseType: !466, size: 64, offset: 1536)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2940, file: !2941, line: 142, baseType: !466, size: 64, offset: 1600)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2940, file: !2941, line: 143, baseType: !466, size: 64, offset: 1664)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2940, file: !2941, line: 146, baseType: !466, size: 64, offset: 1728)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2940, file: !2941, line: 147, baseType: !466, size: 64, offset: 1792)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2940, file: !2941, line: 148, baseType: !466, size: 64, offset: 1856)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2940, file: !2941, line: 149, baseType: !466, size: 64, offset: 1920)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2940, file: !2941, line: 154, baseType: !466, size: 64, offset: 1984)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2940, file: !2941, line: 155, baseType: !466, size: 64, offset: 2048)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2940, file: !2941, line: 156, baseType: !466, size: 64, offset: 2112)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2940, file: !2941, line: 158, baseType: !466, size: 64, offset: 2176)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2940, file: !2941, line: 159, baseType: !466, size: 64, offset: 2240)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2940, file: !2941, line: 162, baseType: !466, size: 64, offset: 2304)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2940, file: !2941, line: 163, baseType: !466, size: 64, offset: 2368)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2940, file: !2941, line: 164, baseType: !466, size: 64, offset: 2432)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2940, file: !2941, line: 167, baseType: !466, size: 64, offset: 2496)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2940, file: !2941, line: 168, baseType: !466, size: 64, offset: 2560)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2940, file: !2941, line: 171, baseType: !466, size: 64, offset: 2624)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2940, file: !2941, line: 172, baseType: !466, size: 64, offset: 2688)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2940, file: !2941, line: 175, baseType: !466, size: 64, offset: 2752)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2940, file: !2941, line: 178, baseType: !466, size: 64, offset: 2816)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2940, file: !2941, line: 179, baseType: !466, size: 64, offset: 2880)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2940, file: !2941, line: 182, baseType: !462, size: 32, offset: 2944)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2940, file: !2941, line: 186, baseType: !466, size: 64, align: 64, offset: 3008)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2940, file: !2941, line: 194, baseType: !466, size: 64, offset: 3072)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2940, file: !2941, line: 195, baseType: !466, size: 64, offset: 3136)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2940, file: !2941, line: 199, baseType: !466, size: 64, offset: 3200)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2940, file: !2941, line: 200, baseType: !466, size: 64, offset: 3264)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2940, file: !2941, line: 203, baseType: !466, size: 64, offset: 3328)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2940, file: !2941, line: 204, baseType: !466, size: 64, offset: 3392)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2814, file: !2815, line: 222, baseType: !7, size: 32, offset: 7936)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2814, file: !2815, line: 223, baseType: !3003, size: 64, offset: 8000)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2815, line: 223, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2814, file: !2815, line: 230, baseType: !729, size: 8, offset: 8064)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2814, file: !2815, line: 231, baseType: !787, size: 16, offset: 8080)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2814, file: !2815, line: 232, baseType: !787, size: 16, offset: 8096)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2814, file: !2815, line: 234, baseType: !1503, size: 64, offset: 8128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2814, file: !2815, line: 237, baseType: !649, size: 256, offset: 8192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2814, file: !2815, line: 243, baseType: !1558, size: 320, offset: 8448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1216, file: !1217, line: 1111, baseType: !3012, size: 64, offset: 15424)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2815, line: 20, size: 16640, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3013, file: !2815, line: 21, baseType: !71, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3013, file: !2815, line: 22, baseType: !1177, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3013, file: !2815, line: 23, baseType: !66, size: 192, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3013, file: !2815, line: 24, baseType: !3019, size: 16384, offset: 256)
!3019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3020, size: 16384, elements: !332)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2826, line: 51, size: 256, elements: !3021)
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3020, file: !2826, line: 52, baseType: !3023, size: 256)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2826, line: 37, size: 256, elements: !3024)
!3024 = !{!3025, !3032, !3033, !3037}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3023, file: !2826, line: 39, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3027, line: 83, baseType: !3028)
!3027 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3027, line: 82, baseType: !3030)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !34}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3023, file: !2826, line: 40, baseType: !51, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3023, file: !2826, line: 46, baseType: !3034, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3027, line: 86, baseType: !3035)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3027, line: 85, baseType: !1014)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3023, file: !2826, line: 48, baseType: !2830, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1216, file: !1217, line: 1112, baseType: !2830, size: 64, offset: 15488)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1216, file: !1217, line: 1113, baseType: !2830, size: 64, offset: 15552)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1216, file: !1217, line: 1115, baseType: !2830, size: 64, offset: 15616)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1216, file: !1217, line: 1116, baseType: !2825, size: 192, offset: 15680)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1216, file: !1217, line: 1117, baseType: !51, size: 64, offset: 15872)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1216, file: !1217, line: 1118, baseType: !47, size: 64, offset: 15936)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1216, file: !1217, line: 1119, baseType: !7, size: 32, offset: 16000)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1216, file: !1217, line: 1121, baseType: !868, size: 64, offset: 16064)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1216, file: !1217, line: 1125, baseType: !3047, size: 64, offset: 16128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1217, line: 43, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1216, file: !1217, line: 1127, baseType: !398, size: 32, offset: 16192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1216, file: !1217, line: 1128, baseType: !7, size: 32, offset: 16224)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1216, file: !1217, line: 1130, baseType: !3052, size: 128, offset: 16256)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3053, line: 37, size: 128, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3052, file: !3053, line: 38, baseType: !34, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3052, file: !3053, line: 39, baseType: !61, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3052, file: !3053, line: 40, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3053, line: 24, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1216, file: !1217, line: 1131, baseType: !3061, size: 256, offset: 16384)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3062, line: 12, size: 256, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3061, file: !3062, line: 13, baseType: !327, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3061, file: !3062, line: 14, baseType: !51, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3061, file: !3062, line: 15, baseType: !51, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3061, file: !3062, line: 16, baseType: !729, size: 8, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1216, file: !1217, line: 1134, baseType: !465, size: 64, offset: 16640)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1216, file: !1217, line: 1135, baseType: !465, size: 64, offset: 16704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1216, file: !1217, line: 1138, baseType: !71, size: 32, offset: 16768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1216, file: !1217, line: 1141, baseType: !607, size: 32, offset: 16800)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1216, file: !1217, line: 1143, baseType: !3073, size: 64, offset: 16832)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1217, line: 735, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3073, file: !1217, line: 736, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1216, file: !1217, line: 1147, baseType: !1386, size: 128, offset: 16896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1216, file: !1217, line: 1149, baseType: !1215, size: 64, offset: 17024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1216, file: !1217, line: 1151, baseType: !3080, size: 64, offset: 17088)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1217, line: 1151, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1216, file: !1217, line: 1188, baseType: !32, size: 64, offset: 17152)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1216, file: !1217, line: 1191, baseType: !3084, size: 64, offset: 17216)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1217, line: 44, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1216, file: !1217, line: 1194, baseType: !3087, size: 64, offset: 17280)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1217, line: 45, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1216, file: !1217, line: 1197, baseType: !3090, size: 64, offset: 17344)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1217, line: 61, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1216, file: !1217, line: 1199, baseType: !3093, size: 64, offset: 17408)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3095, line: 99, size: 128, elements: !3096)
!3095 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3094, file: !3095, line: 100, baseType: !653, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3094, file: !3095, line: 101, baseType: !61, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3094, file: !3095, line: 103, baseType: !38, size: 16, offset: 96)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1216, file: !1217, line: 1202, baseType: !3101, size: 64, offset: 17472)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1217, line: 48, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1216, file: !1217, line: 1205, baseType: !51, size: 64, offset: 17536)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1216, file: !1217, line: 1206, baseType: !3105, size: 64, offset: 17600)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2826, line: 14, baseType: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2826, line: 12, size: 384, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3107, file: !2826, line: 13, baseType: !3110, size: 384)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3107, file: !2826, line: 13, size: 384, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3115}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3110, file: !2826, line: 13, baseType: !34, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3110, file: !2826, line: 13, baseType: !34, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3110, file: !2826, line: 13, baseType: !34, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3110, file: !2826, line: 13, baseType: !3116, size: 256, offset: 128)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3117, line: 37, size: 256, elements: !3118)
!3117 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3118 = !{!3119, !3124, !3137, !3143, !3152, !3179, !3184}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3116, file: !3117, line: 42, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 39, size: 64, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3120, file: !3117, line: 40, baseType: !1992, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3120, file: !3117, line: 41, baseType: !404, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3116, file: !3117, line: 50, baseType: !3125, size: 192)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 45, size: 192, elements: !3126)
!3126 = !{!3127, !3129, !3130, !3136}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3125, file: !3117, line: 46, baseType: !3128, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3125, file: !3117, line: 47, baseType: !34, size: 32, offset: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3125, file: !3117, line: 48, baseType: !3131, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3117, line: 11, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3117, line: 8, size: 64, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3132, file: !3117, line: 9, baseType: !34, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3132, file: !3117, line: 10, baseType: !32, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3125, file: !3117, line: 49, baseType: !34, size: 32, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3116, file: !3117, line: 57, baseType: !3138, size: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 53, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3138, file: !3117, line: 54, baseType: !1992, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3138, file: !3117, line: 55, baseType: !404, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3138, file: !3117, line: 56, baseType: !3131, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3116, file: !3117, line: 66, baseType: !3144, size: 256)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 60, size: 256, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3151}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3144, file: !3117, line: 61, baseType: !1992, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3144, file: !3117, line: 62, baseType: !404, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3144, file: !3117, line: 63, baseType: !34, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3144, file: !3117, line: 64, baseType: !3150, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !280)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3144, file: !3117, line: 65, baseType: !3150, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3116, file: !3117, line: 105, baseType: !3153, size: 256)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 69, size: 256, elements: !3154)
!3154 = !{!3155, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3153, file: !3117, line: 70, baseType: !32, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !3117, line: 79, baseType: !3157, size: 192, offset: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3153, file: !3117, line: 79, size: 192, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3168, !3173}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3157, file: !3117, line: 81, baseType: !34, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3157, file: !3117, line: 86, baseType: !787, size: 16)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3157, file: !3117, line: 92, baseType: !3162, size: 192)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3117, line: 88, size: 192, elements: !3163)
!3163 = !{!3164, !3166, !3167}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3162, file: !3117, line: 89, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !1370)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3162, file: !3117, line: 90, baseType: !32, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3162, file: !3117, line: 91, baseType: !32, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3157, file: !3117, line: 97, baseType: !3169, size: 96)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3117, line: 94, size: 96, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3169, file: !3117, line: 95, baseType: !3165, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3169, file: !3117, line: 96, baseType: !462, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3157, file: !3117, line: 103, baseType: !3174, size: 128)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3117, line: 99, size: 128, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3174, file: !3117, line: 100, baseType: !51, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3174, file: !3117, line: 101, baseType: !462, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3174, file: !3117, line: 102, baseType: !462, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3116, file: !3117, line: 111, baseType: !3180, size: 128)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 108, size: 128, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3180, file: !3117, line: 109, baseType: !281, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3180, file: !3117, line: 110, baseType: !34, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3116, file: !3117, line: 118, baseType: !3185, size: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 114, size: 128, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3185, file: !3117, line: 115, baseType: !32, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3185, file: !3117, line: 116, baseType: !34, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3185, file: !3117, line: 117, baseType: !7, size: 32, offset: 96)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1216, file: !1217, line: 1208, baseType: !2910, size: 448, offset: 17664)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1216, file: !1217, line: 1215, baseType: !465, size: 64, offset: 18112)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1216, file: !1217, line: 1217, baseType: !465, size: 64, offset: 18176)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1216, file: !1217, line: 1219, baseType: !465, size: 64, offset: 18240)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1216, file: !1217, line: 1223, baseType: !3195, size: 64, offset: 18304)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3196, line: 99, baseType: !3197)
!3196 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3196, line: 99, size: 64, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3197, file: !3196, line: 99, baseType: !1454, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1216, file: !1217, line: 1225, baseType: !433, size: 32, offset: 18368)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1216, file: !1217, line: 1226, baseType: !34, size: 32, offset: 18400)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1216, file: !1217, line: 1227, baseType: !34, size: 32, offset: 18432)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1216, file: !1217, line: 1231, baseType: !2177, size: 64, offset: 18496)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1216, file: !1217, line: 1233, baseType: !109, size: 128, offset: 18560)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1216, file: !1217, line: 1240, baseType: !3206, size: 64, offset: 18688)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1217, line: 62, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1216, file: !1217, line: 1242, baseType: !3209, size: 64, offset: 18752)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1217, line: 1242, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1216, file: !1217, line: 1244, baseType: !109, size: 128, offset: 18816)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1216, file: !1217, line: 1245, baseType: !3213, size: 64, offset: 18944)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1217, line: 51, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1216, file: !1217, line: 1246, baseType: !649, size: 256, offset: 19008)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1216, file: !1217, line: 1247, baseType: !7, size: 32, offset: 19264)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1216, file: !1217, line: 1250, baseType: !3218, size: 64, offset: 19328)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !157, line: 912, size: 1792, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3219, file: !157, line: 917, baseType: !607, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3219, file: !157, line: 923, baseType: !649, size: 256, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3219, file: !157, line: 925, baseType: !109, size: 128, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3219, file: !157, line: 926, baseType: !3225, size: 128, offset: 448)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !157, line: 901, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3225, file: !157, line: 902, baseType: !1389, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3225, file: !157, line: 903, baseType: !465, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3219, file: !157, line: 927, baseType: !3225, size: 128, offset: 576)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3219, file: !157, line: 928, baseType: !109, size: 128, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3219, file: !157, line: 930, baseType: !34, size: 32, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3219, file: !157, line: 931, baseType: !34, size: 32, offset: 864)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3219, file: !157, line: 932, baseType: !34, size: 32, offset: 896)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3219, file: !157, line: 934, baseType: !34, size: 32, offset: 928)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3219, file: !157, line: 935, baseType: !34, size: 32, offset: 960)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3219, file: !157, line: 936, baseType: !34, size: 32, offset: 992)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3219, file: !157, line: 937, baseType: !34, size: 32, offset: 1024)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3219, file: !157, line: 939, baseType: !1177, size: 32, offset: 1056)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3219, file: !157, line: 940, baseType: !1215, size: 64, offset: 1088)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3219, file: !157, line: 945, baseType: !465, size: 64, offset: 1152)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3219, file: !157, line: 946, baseType: !465, size: 64, offset: 1216)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3219, file: !157, line: 947, baseType: !465, size: 64, offset: 1280)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3219, file: !157, line: 953, baseType: !3218, size: 64, offset: 1344)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3219, file: !157, line: 954, baseType: !465, size: 64, offset: 1408)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3219, file: !157, line: 955, baseType: !465, size: 64, offset: 1472)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3219, file: !157, line: 956, baseType: !34, size: 32, offset: 1536)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3219, file: !157, line: 958, baseType: !34, size: 32, offset: 1568)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3219, file: !157, line: 960, baseType: !869, size: 128, align: 64, offset: 1600)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3219, file: !157, line: 968, baseType: !3250, size: 64, offset: 1728)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3251, line: 12, baseType: !3252)
!3251 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3251, line: 10, size: 64, elements: !3253)
!3253 = !{!3254}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3252, file: !3251, line: 11, baseType: !653, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1216, file: !1217, line: 1251, baseType: !649, size: 256, offset: 19392)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1216, file: !1217, line: 1252, baseType: !109, size: 128, offset: 19648)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1216, file: !1217, line: 1259, baseType: !2315, size: 64, offset: 19776)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1216, file: !1217, line: 1260, baseType: !787, size: 16, offset: 19840)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1216, file: !1217, line: 1261, baseType: !787, size: 16, offset: 19856)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1216, file: !1217, line: 1314, baseType: !3261, size: 64, offset: 19904)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3263, line: 62, size: 256, align: 256, elements: !3264)
!3263 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3262, file: !3263, line: 75, baseType: !462, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3262, file: !3263, line: 90, baseType: !462, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3262, file: !3263, line: 112, baseType: !466, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !3263, line: 132, baseType: !462, size: 32, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3262, file: !3263, line: 140, baseType: !462, size: 32, offset: 160)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3262, file: !3263, line: 149, baseType: !462, size: 32, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3262, file: !3263, line: 154, baseType: !3272, offset: 224)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !1909)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1216, file: !1217, line: 1315, baseType: !461, size: 32, offset: 19968)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1216, file: !1217, line: 1316, baseType: !461, size: 32, offset: 20000)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1216, file: !1217, line: 1321, baseType: !51, size: 64, offset: 20032)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1216, file: !1217, line: 1325, baseType: !34, size: 32, offset: 20096)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1216, file: !1217, line: 1326, baseType: !34, size: 32, offset: 20128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1216, file: !1217, line: 1327, baseType: !34, size: 32, offset: 20160)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1216, file: !1217, line: 1328, baseType: !34, size: 32, offset: 20192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1216, file: !1217, line: 1329, baseType: !869, size: 128, align: 64, offset: 20224)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1216, file: !1217, line: 1332, baseType: !3282, size: 128, offset: 20352)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3283, line: 51, size: 128, elements: !3284)
!3283 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3284 = !{!3285, !3290, !3291}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3282, file: !3283, line: 60, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3287, line: 7, size: 64, elements: !3288)
!3287 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3286, file: !3287, line: 12, baseType: !1451, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3282, file: !3283, line: 63, baseType: !729, size: 8, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3282, file: !3283, line: 70, baseType: !729, size: 8, offset: 72)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1216, file: !1217, line: 1335, baseType: !3293, size: 64, offset: 20480)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1217, line: 59, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1216, file: !1217, line: 1337, baseType: !3296, size: 128, offset: 20544)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3283, line: 39, size: 128, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3296, file: !3283, line: 40, baseType: !2374, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3296, file: !3283, line: 42, baseType: !462, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3296, file: !3283, line: 43, baseType: !462, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1216, file: !1217, line: 1340, baseType: !3302, size: 64, offset: 20672)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1217, line: 69, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1216, file: !1217, line: 1351, baseType: !34, size: 32, offset: 20736)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1216, file: !1217, line: 1352, baseType: !34, size: 32, offset: 20768)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1216, file: !1217, line: 1354, baseType: !51, size: 64, offset: 20800)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1216, file: !1217, line: 1364, baseType: !465, size: 64, offset: 20864)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1216, file: !1217, line: 1365, baseType: !465, size: 64, offset: 20928)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1216, file: !1217, line: 1412, baseType: !51, size: 64, offset: 20992)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1216, file: !1217, line: 1453, baseType: !3311, size: 64, offset: 21056)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1217, line: 1453, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1216, file: !1217, line: 1457, baseType: !3314, size: 64, offset: 21120)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !3316)
!3316 = !{!3317, !3318, !3337, !3340, !3341, !3374, !3384}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3315, file: !150, line: 62, baseType: !149, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !150, line: 64, baseType: !3319, size: 192, offset: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !150, line: 64, size: 192, elements: !3320)
!3320 = !{!3321, !3332}
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3319, file: !150, line: 65, baseType: !3322, size: 192)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3319, file: !150, line: 65, size: 192, elements: !3323)
!3323 = !{!3324, !3331}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3322, file: !150, line: 66, baseType: !3325, size: 128)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3326, line: 50, size: 128, elements: !3327)
!3326 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3327 = !{!3328, !3329, !3330}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3325, file: !3326, line: 52, baseType: !51, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3325, file: !3326, line: 54, baseType: !7, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3325, file: !3326, line: 55, baseType: !7, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3322, file: !150, line: 67, baseType: !51, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, scope: !3319, file: !150, line: 70, baseType: !3333, size: 192)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3319, file: !150, line: 70, size: 192, elements: !3334)
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3333, file: !150, line: 71, baseType: !869, size: 128, align: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3333, file: !150, line: 72, baseType: !51, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3315, file: !150, line: 76, baseType: !3338, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3315, file: !150, line: 77, baseType: !51, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3315, file: !150, line: 79, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3326, line: 25, size: 256, elements: !3344)
!3344 = !{!3345, !3351, !3355}
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !3343, file: !3326, line: 26, baseType: !3346, size: 128)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3343, file: !3326, line: 26, size: 128, elements: !3347)
!3347 = !{!3348, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3346, file: !3326, line: 27, baseType: !3349, size: 128)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !2119)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3346, file: !3326, line: 28, baseType: !3349, size: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3343, file: !3326, line: 31, baseType: !3352, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3354)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3326, line: 23, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3343, file: !3326, line: 33, baseType: !3356, size: 64, offset: 192)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3343, file: !3326, line: 33, size: 64, elements: !3357)
!3357 = !{!3358, !3364, !3369}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3356, file: !3326, line: 38, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !3326, line: 34, size: 64, elements: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3359, file: !3326, line: 35, baseType: !645, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3359, file: !3326, line: 36, baseType: !95, size: 8, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3359, file: !3326, line: 37, baseType: !95, size: 8, offset: 40)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3356, file: !3326, line: 42, baseType: !3365, size: 16)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !3326, line: 39, size: 16, elements: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3365, file: !3326, line: 40, baseType: !95, size: 8)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3365, file: !3326, line: 41, baseType: !95, size: 8, offset: 8)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3356, file: !3326, line: 46, baseType: !3370, size: 16)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !3326, line: 43, size: 16, elements: !3371)
!3371 = !{!3372, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3370, file: !3326, line: 44, baseType: !95, size: 8)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3370, file: !3326, line: 45, baseType: !95, size: 8, offset: 8)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3315, file: !150, line: 81, baseType: !3375, size: 64, offset: 448)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !3377)
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3376, file: !150, line: 86, baseType: !3338, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3376, file: !150, line: 87, baseType: !51, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3376, file: !150, line: 88, baseType: !51, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3376, file: !150, line: 89, baseType: !51, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3376, file: !150, line: 90, baseType: !729, size: 8, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3376, file: !150, line: 92, baseType: !3375, size: 64, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3315, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1216, file: !1217, line: 1463, baseType: !3386, offset: 21184)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1217, line: 739, elements: !938)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1216, file: !1217, line: 1470, baseType: !869, size: 128, align: 64, offset: 21184)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1216, file: !1217, line: 1471, baseType: !1177, size: 32, offset: 21312)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1216, file: !1217, line: 1472, baseType: !34, size: 32, offset: 21344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1216, file: !1217, line: 1474, baseType: !1215, size: 64, offset: 21376)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1216, file: !1217, line: 1475, baseType: !891, size: 320, offset: 21440)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1216, file: !1217, line: 1478, baseType: !3393, size: 64, offset: 21760)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1217, line: 1478, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1216, file: !1217, line: 1482, baseType: !1177, size: 32, offset: 21824)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1216, file: !1217, line: 1489, baseType: !32, size: 64, offset: 21888)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1216, file: !1217, line: 1504, baseType: !32, size: 64, offset: 21952)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1216, file: !1217, line: 1505, baseType: !466, size: 64, offset: 22016)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1216, file: !1217, line: 1506, baseType: !465, size: 64, offset: 22080)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1216, file: !1217, line: 1507, baseType: !466, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1216, file: !1217, line: 1508, baseType: !466, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1216, file: !1217, line: 1509, baseType: !466, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1216, file: !1217, line: 1510, baseType: !869, size: 128, align: 64, offset: 22208)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1216, file: !1217, line: 1511, baseType: !34, size: 32, offset: 22336)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1216, file: !1217, line: 1515, baseType: !3406, size: 64, offset: 22400)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1135, line: 56, size: 64, elements: !3407)
!3407 = !{!3408}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3406, file: !1135, line: 57, baseType: !1138, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1216, file: !1217, line: 1518, baseType: !3406, size: 64, offset: 22464)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1216, file: !1217, line: 1528, baseType: !869, size: 128, align: 64, offset: 22528)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1216, file: !1217, line: 1552, baseType: !3412, size: 35328, offset: 23040)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3413, line: 430, size: 35328, elements: !3414)
!3413 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3414 = !{!3415, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !4054, !4055, !4056, !4057, !4058, !4059, !4062, !4063, !4064, !4065}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3412, file: !3413, line: 432, baseType: !3416, size: 192)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3417, size: 192, elements: !328)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3418, line: 16, size: 64, elements: !3419)
!3418 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3417, file: !3418, line: 17, baseType: !105, size: 16)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3417, file: !3418, line: 18, baseType: !105, size: 16, offset: 16)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3417, file: !3418, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3417, file: !3418, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3417, file: !3418, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3417, file: !3418, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3417, file: !3418, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3417, file: !3418, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3417, file: !3418, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3417, file: !3418, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3417, file: !3418, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3417, file: !3418, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3417, file: !3418, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3412, file: !3413, line: 436, baseType: !51, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3412, file: !3413, line: 440, baseType: !38, size: 16, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3412, file: !3413, line: 441, baseType: !38, size: 16, offset: 272)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3412, file: !3413, line: 442, baseType: !38, size: 16, offset: 288)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3412, file: !3413, line: 443, baseType: !38, size: 16, offset: 304)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3412, file: !3413, line: 447, baseType: !51, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3412, file: !3413, line: 448, baseType: !51, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3412, file: !3413, line: 459, baseType: !3441, size: 256, offset: 448)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3442, size: 256, elements: !879)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !157, line: 671, size: 8512, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3595, !3596, !3597, !3598, !3604, !3605, !3606, !3607, !3608, !3692, !3693, !3694, !3695, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3815, !3816, !3817, !3818, !3819, !3820, !3835, !3836, !3837, !3838, !3839, !3845, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3862, !4033, !4034, !4035, !4038, !4051, !4052, !4053}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3443, file: !157, line: 678, baseType: !109, size: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3443, file: !157, line: 684, baseType: !109, size: 128, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3443, file: !157, line: 685, baseType: !109, size: 128, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3443, file: !157, line: 689, baseType: !761, size: 192, align: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3443, file: !157, line: 690, baseType: !465, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3443, file: !157, line: 696, baseType: !109, size: 128, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3443, file: !157, line: 698, baseType: !895, size: 128, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3443, file: !157, line: 699, baseType: !109, size: 128, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3443, file: !157, line: 700, baseType: !34, size: 32, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3443, file: !157, line: 703, baseType: !34, size: 32, offset: 1056)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3443, file: !157, line: 705, baseType: !34, size: 32, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3443, file: !157, line: 707, baseType: !7, size: 32, offset: 1120)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3443, file: !157, line: 708, baseType: !3442, size: 64, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3443, file: !157, line: 714, baseType: !3459, size: 64, offset: 1216)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !157, line: 302, size: 2432, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3501, !3502, !3503, !3504, !3505, !3509, !3510, !3514, !3518, !3519, !3523, !3527, !3528, !3529, !3533, !3537, !3541, !3542, !3543, !3547, !3551, !3555, !3560, !3561, !3581, !3585, !3586, !3587, !3591}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3460, file: !157, line: 303, baseType: !109, size: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3460, file: !157, line: 305, baseType: !578, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3460, file: !157, line: 306, baseType: !282, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3460, file: !157, line: 307, baseType: !282, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3460, file: !157, line: 308, baseType: !364, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3460, file: !157, line: 309, baseType: !364, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3460, file: !157, line: 310, baseType: !28, size: 64, offset: 448)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3460, file: !157, line: 311, baseType: !34, size: 32, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3460, file: !157, line: 316, baseType: !34, size: 32, offset: 544)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3460, file: !157, line: 318, baseType: !778, size: 64, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3460, file: !157, line: 319, baseType: !3473, size: 64, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !157, line: 977, size: 1856, elements: !3475)
!3475 = !{!3476, !3491, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3474, file: !157, line: 978, baseType: !3477, size: 896)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !157, line: 873, size: 896, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3477, file: !157, line: 874, baseType: !3459, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3477, file: !157, line: 875, baseType: !3218, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3477, file: !157, line: 877, baseType: !109, size: 128, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3477, file: !157, line: 879, baseType: !109, size: 128, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3477, file: !157, line: 880, baseType: !109, size: 128, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3477, file: !157, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3477, file: !157, line: 885, baseType: !7, size: 32, offset: 544)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3477, file: !157, line: 886, baseType: !7, size: 32, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3477, file: !157, line: 888, baseType: !61, size: 32, offset: 608)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3477, file: !157, line: 889, baseType: !869, size: 128, align: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3477, file: !157, line: 891, baseType: !32, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3477, file: !157, line: 898, baseType: !34, size: 32, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3474, file: !157, line: 979, baseType: !3492, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3474, file: !157, line: 981, baseType: !109, size: 128, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3474, file: !157, line: 982, baseType: !34, size: 32, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3474, file: !157, line: 984, baseType: !34, size: 32, offset: 1120)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3474, file: !157, line: 985, baseType: !34, size: 32, offset: 1152)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3474, file: !157, line: 987, baseType: !607, size: 32, offset: 1184)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3474, file: !157, line: 988, baseType: !1327, size: 512, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3474, file: !157, line: 989, baseType: !1335, size: 64, offset: 1728)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3474, file: !157, line: 990, baseType: !7, size: 32, offset: 1792)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3460, file: !157, line: 320, baseType: !61, size: 32, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3460, file: !157, line: 321, baseType: !34, size: 32, offset: 736)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3460, file: !157, line: 322, baseType: !34, size: 32, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3460, file: !157, line: 325, baseType: !7, size: 32, offset: 800)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3460, file: !157, line: 331, baseType: !3506, size: 64, offset: 832)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3459}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3460, file: !157, line: 332, baseType: !3506, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3460, file: !157, line: 350, baseType: !3511, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!34, !3442}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3460, file: !157, line: 356, baseType: !3515, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !3442, !1503}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3460, file: !157, line: 357, baseType: !3515, size: 64, offset: 1088)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3460, file: !157, line: 385, baseType: !3520, size: 64, offset: 1152)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!34, !3442, !34}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3460, file: !157, line: 386, baseType: !3524, size: 64, offset: 1216)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !3442, !34}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3460, file: !157, line: 406, baseType: !3524, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3460, file: !157, line: 407, baseType: !3524, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3460, file: !157, line: 415, baseType: !3530, size: 64, offset: 1408)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !3442}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3460, file: !157, line: 427, baseType: !3534, size: 64, offset: 1472)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !3459, !7}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3460, file: !157, line: 436, baseType: !3538, size: 64, offset: 1536)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!34, !3459}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3460, file: !157, line: 443, baseType: !3506, size: 64, offset: 1600)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3460, file: !157, line: 450, baseType: !3511, size: 64, offset: 1664)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3460, file: !157, line: 455, baseType: !3544, size: 64, offset: 1728)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3492, !729}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3460, file: !157, line: 461, baseType: !3548, size: 64, offset: 1792)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3550, line: 325, flags: DIFlagFwdDecl)
!3550 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3460, file: !157, line: 469, baseType: !3552, size: 64, offset: 1856)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3492, !3492}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3460, file: !157, line: 476, baseType: !3556, size: 64, offset: 1920)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!32, !3442, !3559, !34, !729}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3460, file: !157, line: 483, baseType: !692, size: 64, offset: 1984)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3460, file: !157, line: 494, baseType: !3562, size: 64, offset: 2048)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!281, !3442, !3565, !51}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !157, line: 1014, size: 448, elements: !3567)
!3567 = !{!3568, !3569, !3572, !3573, !3574, !3575, !3580}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3566, file: !157, line: 1015, baseType: !3442, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3566, file: !157, line: 1016, baseType: !3570, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !157, line: 641, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3566, file: !157, line: 1017, baseType: !51, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3566, file: !157, line: 1018, baseType: !51, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3566, file: !157, line: 1019, baseType: !465, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3566, file: !157, line: 1020, baseType: !3576, size: 64, offset: 320)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3566, file: !157, line: 1020, size: 64, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3576, file: !157, line: 1021, baseType: !32, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3576, file: !157, line: 1022, baseType: !51, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3566, file: !157, line: 1024, baseType: !34, size: 32, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3460, file: !157, line: 506, baseType: !3582, size: 64, offset: 2112)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!34, !112}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3460, file: !157, line: 520, baseType: !3530, size: 64, offset: 2176)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3460, file: !157, line: 530, baseType: !3511, size: 64, offset: 2240)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3460, file: !157, line: 537, baseType: !3588, size: 64, offset: 2304)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!729, !3459, !34}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3460, file: !157, line: 542, baseType: !3592, size: 64, offset: 2368)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!34, !3442, !465}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3443, file: !157, line: 715, baseType: !32, size: 64, offset: 1280)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3443, file: !157, line: 717, baseType: !156, size: 32, offset: 1344)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3443, file: !157, line: 718, baseType: !7, size: 32, offset: 1376)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3443, file: !157, line: 719, baseType: !3599, size: 64, offset: 1408)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3600, line: 26, baseType: !3601)
!3600 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3600, line: 24, size: 64, elements: !3602)
!3602 = !{!3603}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3601, file: !3600, line: 25, baseType: !3250, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3443, file: !157, line: 720, baseType: !655, size: 64, offset: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3443, file: !157, line: 728, baseType: !465, size: 64, offset: 1536)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3443, file: !157, line: 729, baseType: !465, size: 64, offset: 1600)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3443, file: !157, line: 730, baseType: !465, size: 64, offset: 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3443, file: !157, line: 732, baseType: !3609, size: 1088, offset: 1728)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3610, line: 385, size: 1088, elements: !3611)
!3610 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3611 = !{!3612, !3613, !3614, !3615, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3665, !3666, !3673, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3609, file: !3610, line: 390, baseType: !462, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3609, file: !3610, line: 395, baseType: !462, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3609, file: !3610, line: 400, baseType: !466, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3610, line: 402, baseType: !3616, size: 64, offset: 128)
!3616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3610, line: 402, size: 64, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3616, file: !3610, line: 403, baseType: !466, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3616, file: !3610, line: 404, baseType: !466, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3609, file: !3610, line: 407, baseType: !466, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3609, file: !3610, line: 408, baseType: !466, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3609, file: !3610, line: 410, baseType: !466, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3609, file: !3610, line: 411, baseType: !466, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3609, file: !3610, line: 412, baseType: !466, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3609, file: !3610, line: 413, baseType: !466, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3609, file: !3610, line: 414, baseType: !466, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3609, file: !3610, line: 415, baseType: !466, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3609, file: !3610, line: 416, baseType: !466, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3609, file: !3610, line: 417, baseType: !466, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3609, file: !3610, line: 418, baseType: !466, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3609, file: !3610, line: 419, baseType: !466, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3609, file: !3610, line: 420, baseType: !466, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3609, file: !3610, line: 421, baseType: !466, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3609, file: !3610, line: 422, baseType: !466, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3609, file: !3610, line: 423, baseType: !466, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3609, file: !3610, line: 424, baseType: !466, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3609, file: !3610, line: 435, baseType: !466, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3609, file: !3610, line: 436, baseType: !466, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3609, file: !3610, line: 437, baseType: !466, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3609, file: !3610, line: 439, baseType: !466, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3609, file: !3610, line: 440, baseType: !466, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3609, file: !3610, line: 442, baseType: !466, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3609, file: !3610, line: 443, baseType: !466, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3609, file: !3610, line: 444, baseType: !466, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3609, file: !3610, line: 445, baseType: !466, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3609, file: !3610, line: 446, baseType: !466, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3609, file: !3610, line: 447, baseType: !466, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3609, file: !3610, line: 448, baseType: !466, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3609, file: !3610, line: 449, baseType: !466, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3609, file: !3610, line: 450, baseType: !466, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3609, file: !3610, line: 451, baseType: !466, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3609, file: !3610, line: 452, baseType: !466, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3609, file: !3610, line: 453, baseType: !466, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3609, file: !3610, line: 454, baseType: !466, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3609, file: !3610, line: 455, baseType: !466, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3609, file: !3610, line: 456, baseType: !466, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3609, file: !3610, line: 457, baseType: !466, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3609, file: !3610, line: 458, baseType: !466, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3609, file: !3610, line: 459, baseType: !466, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3610, line: 461, baseType: !3661, size: 32, offset: 384)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3610, line: 461, size: 32, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3661, file: !3610, line: 462, baseType: !462, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3661, file: !3610, line: 463, baseType: !462, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3609, file: !3610, line: 466, baseType: !462, size: 32, offset: 416)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3610, line: 467, baseType: !3667, size: 64, offset: 448)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3610, line: 467, size: 64, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3667, file: !3610, line: 468, baseType: !466, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3667, file: !3610, line: 469, baseType: !466, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3667, file: !3610, line: 470, baseType: !466, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3667, file: !3610, line: 471, baseType: !466, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3610, line: 473, baseType: !3674, size: 64, offset: 512)
!3674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3610, line: 473, size: 64, elements: !3675)
!3675 = !{!3676, !3677, !3678, !3679}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3674, file: !3610, line: 474, baseType: !466, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3674, file: !3610, line: 475, baseType: !466, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3674, file: !3610, line: 476, baseType: !466, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3674, file: !3610, line: 477, baseType: !466, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3609, file: !3610, line: 479, baseType: !466, size: 64, offset: 576)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3609, file: !3610, line: 485, baseType: !466, size: 64, offset: 640)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3609, file: !3610, line: 490, baseType: !462, size: 32, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3609, file: !3610, line: 492, baseType: !646, size: 32, offset: 736)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3609, file: !3610, line: 501, baseType: !466, size: 64, offset: 768)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3609, file: !3610, line: 506, baseType: !462, size: 32, offset: 832)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3609, file: !3610, line: 507, baseType: !106, size: 16, offset: 864)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3609, file: !3610, line: 508, baseType: !106, size: 16, offset: 880)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3609, file: !3610, line: 509, baseType: !462, size: 32, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3609, file: !3610, line: 510, baseType: !462, size: 32, offset: 928)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3609, file: !3610, line: 518, baseType: !466, size: 64, offset: 960)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3609, file: !3610, line: 520, baseType: !466, size: 64, offset: 1024)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3443, file: !157, line: 733, baseType: !105, size: 16, offset: 2816)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3443, file: !157, line: 734, baseType: !105, size: 16, offset: 2832)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3443, file: !157, line: 735, baseType: !105, size: 16, offset: 2848)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3443, file: !157, line: 736, baseType: !3696, size: 1536, offset: 2880)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !157, line: 155, size: 1536, elements: !3697)
!3697 = !{!3698, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3782, !3783, !3784, !3785}
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !157, line: 157, baseType: !3699, size: 768)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3696, file: !157, line: 157, size: 768, elements: !3700)
!3700 = !{!3701, !3720, !3724, !3728, !3733, !3755}
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !157, line: 158, baseType: !3702, size: 768)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !157, line: 158, size: 768, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3719}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3702, file: !157, line: 159, baseType: !465, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3702, file: !157, line: 160, baseType: !465, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3702, file: !157, line: 161, baseType: !51, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3702, file: !157, line: 162, baseType: !51, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3702, file: !157, line: 163, baseType: !34, size: 32, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3702, file: !157, line: 164, baseType: !34, size: 32, offset: 288)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3702, file: !157, line: 165, baseType: !34, size: 32, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3702, file: !157, line: 166, baseType: !34, size: 32, offset: 352)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3702, file: !157, line: 168, baseType: !3713, size: 192, offset: 384)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !157, line: 134, size: 192, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3713, file: !157, line: 135, baseType: !465, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3713, file: !157, line: 136, baseType: !7, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3713, file: !157, line: 137, baseType: !34, size: 32, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3713, file: !157, line: 138, baseType: !34, size: 32, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3702, file: !157, line: 169, baseType: !3713, size: 192, offset: 576)
!3720 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !157, line: 171, baseType: !3721, size: 512)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !157, line: 171, size: 512, elements: !3722)
!3722 = !{!3723}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3721, file: !157, line: 172, baseType: !1327, size: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !157, line: 174, baseType: !3725, size: 128)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !157, line: 174, size: 128, elements: !3726)
!3726 = !{!3727}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3725, file: !157, line: 176, baseType: !109, size: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !157, line: 178, baseType: !3729, size: 128)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !157, line: 178, size: 128, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3729, file: !157, line: 179, baseType: !465, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3729, file: !157, line: 180, baseType: !465, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !157, line: 183, baseType: !3734, size: 320)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !157, line: 183, size: 320, elements: !3735)
!3735 = !{!3736, !3744}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3734, file: !157, line: 189, baseType: !3737, size: 192)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3738, line: 14, size: 192, elements: !3739)
!3738 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3739 = !{!3740, !3741, !3742, !3743}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3737, file: !3738, line: 15, baseType: !51, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3737, file: !3738, line: 16, baseType: !51, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3737, file: !3738, line: 17, baseType: !95, size: 8, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3737, file: !3738, line: 18, baseType: !95, size: 8, offset: 136)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3734, file: !157, line: 190, baseType: !3745, size: 128, offset: 192)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3746, line: 21, size: 128, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3747 = !{!3748, !3753}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3745, file: !3746, line: 22, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3746, line: 17, size: 64, elements: !3750)
!3750 = !{!3751}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3749, file: !3746, line: 18, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3745, file: !3746, line: 23, baseType: !3754, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !157, line: 193, baseType: !3756, size: 192)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !157, line: 193, size: 192, elements: !3757)
!3757 = !{!3758, !3759, !3760, !3761, !3762}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3756, file: !157, line: 194, baseType: !95, size: 8)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3756, file: !157, line: 195, baseType: !95, size: 8, offset: 8)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3756, file: !157, line: 196, baseType: !105, size: 16, offset: 16)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3756, file: !157, line: 197, baseType: !465, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3756, file: !157, line: 198, baseType: !465, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3696, file: !157, line: 205, baseType: !1215, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3696, file: !157, line: 211, baseType: !32, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3696, file: !157, line: 214, baseType: !51, size: 64, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3696, file: !157, line: 223, baseType: !34, size: 32, offset: 960)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3696, file: !157, line: 229, baseType: !3599, size: 64, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3696, file: !157, line: 234, baseType: !465, size: 64, offset: 1088)
!3769 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !157, line: 236, baseType: !3770, size: 128, offset: 1152)
!3770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3696, file: !157, line: 236, size: 128, elements: !3771)
!3771 = !{!3772, !3777}
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !3770, file: !157, line: 237, baseType: !3773, size: 128)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3770, file: !157, line: 237, size: 128, elements: !3774)
!3774 = !{!3775, !3776}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3773, file: !157, line: 241, baseType: !465, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3773, file: !157, line: 249, baseType: !3599, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3770, file: !157, line: 251, baseType: !3778, size: 128)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3770, file: !157, line: 251, size: 128, elements: !3779)
!3779 = !{!3780, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3778, file: !157, line: 252, baseType: !465, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3778, file: !157, line: 253, baseType: !465, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3696, file: !157, line: 261, baseType: !465, size: 64, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3696, file: !157, line: 262, baseType: !465, size: 64, offset: 1344)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3696, file: !157, line: 268, baseType: !465, size: 64, offset: 1408)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3696, file: !157, line: 269, baseType: !465, size: 64, offset: 1472)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3443, file: !157, line: 738, baseType: !3218, size: 64, offset: 4416)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3443, file: !157, line: 744, baseType: !3492, size: 64, offset: 4480)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3443, file: !157, line: 745, baseType: !653, size: 64, offset: 4544)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3443, file: !157, line: 751, baseType: !655, size: 64, offset: 4608)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3443, file: !157, line: 752, baseType: !655, size: 64, offset: 4672)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3443, file: !157, line: 757, baseType: !649, size: 256, offset: 4736)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3443, file: !157, line: 758, baseType: !109, size: 128, offset: 4992)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3443, file: !157, line: 759, baseType: !3442, size: 64, offset: 5120)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3443, file: !157, line: 761, baseType: !34, size: 32, offset: 5184)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3443, file: !157, line: 762, baseType: !34, size: 32, offset: 5216)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3443, file: !157, line: 764, baseType: !109, size: 128, offset: 5248)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3443, file: !157, line: 765, baseType: !1215, size: 64, offset: 5376)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3443, file: !157, line: 768, baseType: !649, size: 256, offset: 5440)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3443, file: !157, line: 769, baseType: !61, size: 32, offset: 5696)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3443, file: !157, line: 771, baseType: !3570, size: 64, offset: 5760)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3443, file: !157, line: 772, baseType: !109, size: 128, offset: 5824)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3443, file: !157, line: 773, baseType: !51, size: 64, offset: 5952)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3443, file: !157, line: 774, baseType: !34, size: 32, offset: 6016)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3443, file: !157, line: 777, baseType: !66, size: 192, offset: 6080)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3443, file: !157, line: 778, baseType: !3806, size: 64, offset: 6272)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !3808)
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3807, file: !14, line: 1084, baseType: !1152, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3807, file: !14, line: 1085, baseType: !34, size: 32, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3807, file: !14, line: 1086, baseType: !34, size: 32, offset: 96)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3807, file: !14, line: 1087, baseType: !3806, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3807, file: !14, line: 1088, baseType: !1530, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3807, file: !14, line: 1089, baseType: !869, size: 128, align: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3443, file: !157, line: 781, baseType: !7, size: 32, offset: 6336)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3443, file: !157, line: 782, baseType: !7, size: 32, offset: 6368)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3443, file: !157, line: 783, baseType: !7, size: 32, offset: 6400)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3443, file: !157, line: 784, baseType: !7, size: 32, offset: 6432)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3443, file: !157, line: 785, baseType: !51, size: 64, offset: 6464)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3443, file: !157, line: 786, baseType: !3821, size: 256, offset: 6528)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3822, line: 17, size: 256, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3823 = !{!3824, !3825, !3830}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3821, file: !3822, line: 18, baseType: !1234, size: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3821, file: !3822, line: 19, baseType: !3826, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3821, file: !3822, line: 20, baseType: !3831, size: 64, offset: 192)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3832, line: 16, size: 64, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3833 = !{!3834}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3831, file: !3832, line: 17, baseType: !1215, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3443, file: !157, line: 787, baseType: !869, size: 128, align: 64, offset: 6784)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3443, file: !157, line: 788, baseType: !7, size: 32, offset: 6912)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3443, file: !157, line: 789, baseType: !3831, size: 64, offset: 6976)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3443, file: !157, line: 791, baseType: !61, size: 32, offset: 7040)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3443, file: !157, line: 794, baseType: !3840, size: 192, offset: 7104)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !157, line: 579, size: 192, elements: !3841)
!3841 = !{!3842, !3843, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3840, file: !157, line: 580, baseType: !109, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3840, file: !157, line: 581, baseType: !607, size: 32, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3840, file: !157, line: 582, baseType: !7, size: 32, offset: 160)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3443, file: !157, line: 796, baseType: !3846, size: 64, offset: 7296)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !157, line: 585, size: 128, elements: !3848)
!3848 = !{!3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3847, file: !157, line: 586, baseType: !51, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3847, file: !157, line: 587, baseType: !51, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3443, file: !157, line: 797, baseType: !51, size: 64, offset: 7360)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3443, file: !157, line: 800, baseType: !3442, size: 64, offset: 7424)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3443, file: !157, line: 802, baseType: !3530, size: 64, offset: 7488)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3443, file: !157, line: 803, baseType: !869, size: 128, align: 64, offset: 7552)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3443, file: !157, line: 805, baseType: !1195, size: 64, offset: 7680)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3443, file: !157, line: 806, baseType: !465, size: 64, offset: 7744)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3443, file: !157, line: 808, baseType: !655, size: 64, offset: 7808)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3443, file: !157, line: 810, baseType: !3859, size: 64, offset: 7872)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!465}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3443, file: !157, line: 811, baseType: !3863, size: 64, offset: 7936)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !157, line: 605, baseType: !3864)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3442, !3867, !3972}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !157, line: 1148, size: 2048, align: 512, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3879, !3880, !3881, !3886, !3887, !3894, !3915, !3937, !3947, !3965, !3966, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3868, file: !157, line: 1153, baseType: !465, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3868, file: !157, line: 1154, baseType: !465, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3868, file: !157, line: 1155, baseType: !465, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3868, file: !157, line: 1161, baseType: !465, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3868, file: !157, line: 1165, baseType: !3875, size: 64, offset: 256)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3868, file: !157, line: 1162, size: 64, elements: !3876)
!3876 = !{!3877, !3878}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3875, file: !157, line: 1163, baseType: !461, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3875, file: !157, line: 1164, baseType: !461, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3868, file: !157, line: 1166, baseType: !465, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3868, file: !157, line: 1167, baseType: !465, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3868, file: !157, line: 1171, baseType: !3882, size: 64, offset: 448)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3868, file: !157, line: 1168, size: 64, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3882, file: !157, line: 1169, baseType: !461, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3882, file: !157, line: 1170, baseType: !461, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3868, file: !157, line: 1177, baseType: !465, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3868, file: !157, line: 1178, baseType: !3888, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !157, line: 67, size: 64, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3889, file: !157, line: 68, baseType: !466, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3889, file: !157, line: 69, baseType: !3893, offset: 64)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, elements: !1909)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3868, file: !157, line: 1179, baseType: !3895, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !157, line: 93, size: 256, elements: !3897)
!3897 = !{!3898, !3914}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3896, file: !157, line: 94, baseType: !3899, size: 224)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !157, line: 83, size: 224, elements: !3900)
!3900 = !{!3901, !3907, !3912, !3913}
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !157, line: 84, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3899, file: !157, line: 84, size: 64, elements: !3903)
!3903 = !{!3904, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3902, file: !157, line: 85, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3902, file: !157, line: 86, baseType: !51, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3899, file: !157, line: 88, baseType: !3908, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !157, line: 80, baseType: !3909)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!51, !32, !1635, !51, !51}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3899, file: !157, line: 89, baseType: !32, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3899, file: !157, line: 90, baseType: !461, size: 32, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3896, file: !157, line: 95, baseType: !461, size: 32, offset: 224)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3868, file: !157, line: 1180, baseType: !3916, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !157, line: 123, size: 128, elements: !3918)
!3918 = !{!3919, !3920, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3917, file: !157, line: 124, baseType: !466, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3917, file: !157, line: 125, baseType: !466, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3917, file: !157, line: 126, baseType: !3922, offset: 128)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3923, elements: !1909)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3610, line: 1415, size: 192, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3923, file: !3610, line: 1416, baseType: !466, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3923, file: !3610, line: 1417, baseType: !466, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3923, file: !3610, line: 1418, baseType: !466, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3923, file: !3610, line: 1419, baseType: !466, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3923, file: !3610, line: 1420, baseType: !466, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3923, file: !3610, line: 1421, baseType: !466, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3923, file: !3610, line: 1422, baseType: !466, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3923, file: !3610, line: 1423, baseType: !466, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3923, file: !3610, line: 1424, baseType: !466, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3923, file: !3610, line: 1425, baseType: !466, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3923, file: !3610, line: 1426, baseType: !466, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3923, file: !3610, line: 1427, baseType: !466, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3868, file: !157, line: 1181, baseType: !3938, size: 64, offset: 768)
!3938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3610, line: 1430, size: 64, elements: !3939)
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3938, file: !3610, line: 1431, baseType: !466, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, scope: !3938, file: !3610, line: 1433, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3938, file: !3610, line: 1433, size: 64, elements: !3943)
!3943 = !{!3944, !3945, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3942, file: !3610, line: 1434, baseType: !462, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3942, file: !3610, line: 1435, baseType: !106, size: 16, offset: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3942, file: !3610, line: 1436, baseType: !106, size: 16, offset: 48)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3868, file: !157, line: 1182, baseType: !3948, size: 64, offset: 832)
!3948 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3610, line: 1267, size: 64, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3948, file: !3610, line: 1268, baseType: !466, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !3948, file: !3610, line: 1269, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !3610, line: 1269, size: 64, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3952, file: !3610, line: 1270, baseType: !466, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3952, file: !3610, line: 1271, baseType: !466, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3952, file: !3610, line: 1272, baseType: !466, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3952, file: !3610, line: 1273, baseType: !466, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3952, file: !3610, line: 1274, baseType: !466, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3952, file: !3610, line: 1275, baseType: !466, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3952, file: !3610, line: 1276, baseType: !466, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3952, file: !3610, line: 1277, baseType: !466, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3952, file: !3610, line: 1278, baseType: !466, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3952, file: !3610, line: 1279, baseType: !466, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3952, file: !3610, line: 1280, baseType: !466, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3868, file: !157, line: 1183, baseType: !465, size: 64, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3868, file: !157, line: 1185, baseType: !3967, size: 128, offset: 960)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3968, line: 7, size: 128, elements: !3969)
!3968 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3967, file: !3968, line: 8, baseType: !466, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3967, file: !3968, line: 9, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3974, line: 103, size: 1344, elements: !3975)
!3974 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !4004, !4005, !4006}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3973, file: !3974, line: 109, baseType: !51, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3973, file: !3974, line: 110, baseType: !51, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3973, file: !3974, line: 111, baseType: !51, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3973, file: !3974, line: 112, baseType: !51, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3973, file: !3974, line: 113, baseType: !51, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3973, file: !3974, line: 114, baseType: !51, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3973, file: !3974, line: 117, baseType: !51, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3973, file: !3974, line: 118, baseType: !51, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3973, file: !3974, line: 119, baseType: !51, size: 64, offset: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3973, file: !3974, line: 120, baseType: !51, size: 64, offset: 576)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3973, file: !3974, line: 121, baseType: !51, size: 64, offset: 640)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3973, file: !3974, line: 122, baseType: !51, size: 64, offset: 704)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3973, file: !3974, line: 123, baseType: !51, size: 64, offset: 768)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3973, file: !3974, line: 124, baseType: !51, size: 64, offset: 832)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3973, file: !3974, line: 125, baseType: !51, size: 64, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3973, file: !3974, line: 139, baseType: !51, size: 64, offset: 960)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3973, file: !3974, line: 142, baseType: !51, size: 64, offset: 1024)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !3974, line: 144, baseType: !3994, size: 64, offset: 1088)
!3994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3973, file: !3974, line: 144, size: 64, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3994, file: !3974, line: 146, baseType: !105, size: 16)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3994, file: !3974, line: 148, baseType: !465, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3994, file: !3974, line: 150, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3974, line: 59, size: 64, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3999, file: !3974, line: 61, baseType: !465, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3999, file: !3974, line: 63, baseType: !465, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3999, file: !3974, line: 65, baseType: !465, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3973, file: !3974, line: 153, baseType: !51, size: 64, offset: 1152)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3973, file: !3974, line: 154, baseType: !51, size: 64, offset: 1216)
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !3974, line: 156, baseType: !4007, size: 64, offset: 1280)
!4007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3973, file: !3974, line: 156, size: 64, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4007, file: !3974, line: 158, baseType: !105, size: 16)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4007, file: !3974, line: 160, baseType: !465, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4007, file: !3974, line: 162, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3974, line: 69, size: 64, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4012, file: !3974, line: 71, baseType: !465, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4012, file: !3974, line: 73, baseType: !465, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4012, file: !3974, line: 75, baseType: !465, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4012, file: !3974, line: 77, baseType: !465, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4012, file: !3974, line: 80, baseType: !465, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4012, file: !3974, line: 83, baseType: !465, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4012, file: !3974, line: 86, baseType: !465, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4012, file: !3974, line: 88, baseType: !465, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4012, file: !3974, line: 93, baseType: !465, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4012, file: !3974, line: 100, baseType: !465, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3868, file: !157, line: 1186, baseType: !3967, size: 128, offset: 1088)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3868, file: !157, line: 1187, baseType: !465, size: 64, offset: 1216)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3868, file: !157, line: 1189, baseType: !465, size: 64, offset: 1280)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3868, file: !157, line: 1190, baseType: !465, size: 64, offset: 1344)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3868, file: !157, line: 1191, baseType: !465, size: 64, offset: 1408)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3868, file: !157, line: 1192, baseType: !465, size: 64, offset: 1472)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3868, file: !157, line: 1193, baseType: !465, size: 64, offset: 1536)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3868, file: !157, line: 1194, baseType: !465, size: 64, offset: 1600)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3868, file: !157, line: 1195, baseType: !465, size: 64, offset: 1664)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3443, file: !157, line: 812, baseType: !32, size: 64, offset: 8000)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3443, file: !157, line: 820, baseType: !989, size: 64, offset: 8064)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3443, file: !157, line: 821, baseType: !4036, size: 64, offset: 8128)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !157, line: 821, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3443, file: !157, line: 828, baseType: !4039, size: 64, offset: 8192)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !157, line: 1046, size: 1664, elements: !4041)
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4040, file: !157, line: 1047, baseType: !2184, size: 1600)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4040, file: !157, line: 1048, baseType: !4044, size: 64, offset: 1600)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !157, line: 1039, size: 256, elements: !4046)
!4046 = !{!4047, !4048, !4049, !4050}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4045, file: !157, line: 1040, baseType: !465, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4045, file: !157, line: 1041, baseType: !465, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4045, file: !157, line: 1042, baseType: !465, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4045, file: !157, line: 1043, baseType: !34, size: 32, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3443, file: !157, line: 832, baseType: !32, size: 64, offset: 8256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3443, file: !157, line: 834, baseType: !109, size: 128, offset: 8320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3443, file: !157, line: 842, baseType: !462, size: 32, offset: 8448)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3412, file: !3413, line: 461, baseType: !51, size: 64, offset: 704)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3412, file: !3413, line: 463, baseType: !51, size: 64, offset: 768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3412, file: !3413, line: 465, baseType: !51, size: 64, offset: 832)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3412, file: !3413, line: 466, baseType: !51, size: 64, offset: 896)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3412, file: !3413, line: 467, baseType: !51, size: 64, offset: 960)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3412, file: !3413, line: 473, baseType: !4060, size: 64, offset: 1024)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3413, line: 10, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3412, file: !3413, line: 480, baseType: !51, size: 64, offset: 1088)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3412, file: !3413, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3412, file: !3413, line: 491, baseType: !461, size: 32, offset: 1184)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3412, file: !3413, line: 501, baseType: !4066, size: 33792, offset: 1536)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4067, line: 448, size: 33792, elements: !4068)
!4067 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4068 = !{!4069, !4070, !4071, !4179, !4180, !4186, !4187}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4066, file: !4067, line: 461, baseType: !7, size: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4066, file: !4067, line: 468, baseType: !51, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4066, file: !4067, line: 476, baseType: !4072, size: 64, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4067, line: 356, size: 33280, align: 512, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4073, file: !4067, line: 358, baseType: !7, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4073, file: !4067, line: 361, baseType: !7, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4073, file: !4067, line: 364, baseType: !465, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4073, file: !4067, line: 367, baseType: !465, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4073, file: !4067, line: 370, baseType: !465, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4073, file: !4067, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4073, file: !4067, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4073, file: !4067, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4073, file: !4067, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4073, file: !4067, line: 397, baseType: !4085, size: 32768, offset: 512)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4067, line: 348, size: 32768, elements: !4086)
!4086 = !{!4087, !4102, !4139, !4164, !4177}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4085, file: !4067, line: 349, baseType: !4088, size: 896)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4067, line: 12, size: 896, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4101}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4088, file: !4067, line: 13, baseType: !461, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4088, file: !4067, line: 14, baseType: !461, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4088, file: !4067, line: 15, baseType: !461, size: 32, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4088, file: !4067, line: 16, baseType: !461, size: 32, offset: 96)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4088, file: !4067, line: 17, baseType: !461, size: 32, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4088, file: !4067, line: 18, baseType: !461, size: 32, offset: 160)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4088, file: !4067, line: 19, baseType: !461, size: 32, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4088, file: !4067, line: 22, baseType: !4098, size: 640, offset: 224)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 640, elements: !4099)
!4099 = !{!4100}
!4100 = !DISubrange(count: 20)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4088, file: !4067, line: 25, baseType: !461, size: 32, offset: 864)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4085, file: !4067, line: 350, baseType: !4103, size: 4096, align: 128)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4067, line: 34, size: 4096, align: 128, elements: !4104)
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4124, !4125, !4126, !4128, !4130, !4134}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4103, file: !4067, line: 35, baseType: !105, size: 16)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4103, file: !4067, line: 36, baseType: !105, size: 16, offset: 16)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4103, file: !4067, line: 37, baseType: !105, size: 16, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4103, file: !4067, line: 38, baseType: !105, size: 16, offset: 48)
!4109 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !4067, line: 39, baseType: !4110, size: 128, offset: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !4067, line: 39, size: 128, elements: !4111)
!4111 = !{!4112, !4117}
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !4110, file: !4067, line: 40, baseType: !4113, size: 128)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4110, file: !4067, line: 40, size: 128, elements: !4114)
!4114 = !{!4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4113, file: !4067, line: 41, baseType: !465, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4113, file: !4067, line: 42, baseType: !465, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, scope: !4110, file: !4067, line: 44, baseType: !4118, size: 128)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4110, file: !4067, line: 44, size: 128, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4118, file: !4067, line: 45, baseType: !461, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4118, file: !4067, line: 46, baseType: !461, size: 32, offset: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4118, file: !4067, line: 47, baseType: !461, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4118, file: !4067, line: 48, baseType: !461, size: 32, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4103, file: !4067, line: 51, baseType: !461, size: 32, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4103, file: !4067, line: 52, baseType: !461, size: 32, offset: 224)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4103, file: !4067, line: 55, baseType: !4127, size: 1024, offset: 256)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 1024, elements: !474)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4103, file: !4067, line: 58, baseType: !4129, size: 2048, offset: 1280)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 2048, elements: !332)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4103, file: !4067, line: 60, baseType: !4131, size: 384, offset: 3328)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 384, elements: !4132)
!4132 = !{!4133}
!4133 = !DISubrange(count: 12)
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !4067, line: 62, baseType: !4135, size: 384, offset: 3712)
!4135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !4067, line: 62, size: 384, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4135, file: !4067, line: 63, baseType: !4131, size: 384)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4135, file: !4067, line: 64, baseType: !4131, size: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4085, file: !4067, line: 351, baseType: !4140, size: 1088)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4067, line: 79, size: 1088, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4163}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4140, file: !4067, line: 80, baseType: !461, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4140, file: !4067, line: 81, baseType: !461, size: 32, offset: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4140, file: !4067, line: 82, baseType: !461, size: 32, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4140, file: !4067, line: 83, baseType: !461, size: 32, offset: 96)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4140, file: !4067, line: 84, baseType: !461, size: 32, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4140, file: !4067, line: 85, baseType: !461, size: 32, offset: 160)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4140, file: !4067, line: 86, baseType: !461, size: 32, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4140, file: !4067, line: 88, baseType: !4098, size: 640, offset: 224)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4140, file: !4067, line: 89, baseType: !95, size: 8, offset: 864)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4140, file: !4067, line: 90, baseType: !95, size: 8, offset: 872)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4140, file: !4067, line: 91, baseType: !95, size: 8, offset: 880)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4140, file: !4067, line: 92, baseType: !95, size: 8, offset: 888)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4140, file: !4067, line: 93, baseType: !95, size: 8, offset: 896)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4140, file: !4067, line: 94, baseType: !95, size: 8, offset: 904)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4140, file: !4067, line: 95, baseType: !4157, size: 64, offset: 960)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4159, line: 11, size: 128, elements: !4160)
!4159 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4158, file: !4159, line: 12, baseType: !281, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4158, file: !4159, line: 13, baseType: !3972, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4140, file: !4067, line: 96, baseType: !461, size: 32, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4085, file: !4067, line: 352, baseType: !4165, size: 4608, align: 512)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4067, line: 333, size: 4608, align: 512, elements: !4166)
!4166 = !{!4167, !4168, !4175}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4165, file: !4067, line: 334, baseType: !4103, size: 4096, align: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4165, file: !4067, line: 335, baseType: !4169, size: 512, offset: 4096)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4067, line: 312, size: 512, elements: !4170)
!4170 = !{!4171, !4172, !4173}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4169, file: !4067, line: 313, baseType: !465, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4169, file: !4067, line: 314, baseType: !465, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4169, file: !4067, line: 315, baseType: !4174, size: 384, offset: 128)
!4174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 384, elements: !1756)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4165, file: !4067, line: 336, baseType: !4176, offset: 4608)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !1909)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4085, file: !4067, line: 353, baseType: !4178, size: 32768)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !2614)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4066, file: !4067, line: 484, baseType: !4072, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4066, file: !4067, line: 491, baseType: !4181, size: 128, offset: 256)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4067, line: 404, size: 128, elements: !4182)
!4182 = !{!4183, !4184, !4185}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4181, file: !4067, line: 424, baseType: !465, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4181, file: !4067, line: 432, baseType: !7, size: 32, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4181, file: !4067, line: 440, baseType: !7, size: 32, offset: 96)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4066, file: !4067, line: 498, baseType: !4181, size: 128, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4066, file: !4067, line: 508, baseType: !4073, size: 33280, align: 512, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1196, file: !1197, line: 31, baseType: !3548, size: 64, offset: 448)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1196, file: !1197, line: 32, baseType: !7, size: 32, offset: 512)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1196, file: !1197, line: 33, baseType: !1195, size: 64, offset: 576)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1196, file: !1197, line: 35, baseType: !4192, size: 64, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1197, line: 17, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1196, file: !1197, line: 37, baseType: !1658, size: 64, offset: 704)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1196, file: !1197, line: 38, baseType: !1877, size: 64, offset: 768)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1196, file: !1197, line: 39, baseType: !34, size: 32, offset: 832)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1196, file: !1197, line: 40, baseType: !1691, size: 192, offset: 896)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1196, file: !1197, line: 42, baseType: !34, size: 32, offset: 1088)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1149, file: !14, line: 951, baseType: !165, size: 32, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1149, file: !14, line: 952, baseType: !398, size: 32, offset: 160)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1149, file: !14, line: 952, baseType: !398, size: 32, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1149, file: !14, line: 953, baseType: !34, size: 32, offset: 224)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1128, file: !14, line: 1012, baseType: !2045, size: 64, offset: 896)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1128, file: !14, line: 1013, baseType: !4205, size: 256, offset: 960)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4205, file: !14, line: 971, baseType: !51, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4205, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4205, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4205, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4205, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4205, file: !14, line: 976, baseType: !53, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1128, file: !14, line: 1014, baseType: !4214, size: 128, offset: 1216)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4215, line: 8, size: 128, elements: !4216)
!4215 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4216 = !{!4217, !4218}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4214, file: !4215, line: 9, baseType: !537, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4214, file: !4215, line: 10, baseType: !427, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1128, file: !14, line: 1015, baseType: !392, size: 64, offset: 1344)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1128, file: !14, line: 1016, baseType: !4221, size: 64, offset: 1408)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !4224)
!4224 = !{!4225, !4226, !4230, !4234, !4238, !4266, !4267, !4273, !4286, !4290, !4294, !4295, !4299, !4300, !4304, !4309, !4310, !4314, !4318, !4324, !4325, !4329, !4330, !4334, !4338, !4342, !4347, !4351, !4355, !4359, !4363, !4364, !4370}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4223, file: !14, line: 1915, baseType: !578, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4223, file: !14, line: 1916, baseType: !4227, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!53, !1530, !53, !34}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4223, file: !14, line: 1917, baseType: !4231, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!278, !1530, !327, !47, !52}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4223, file: !14, line: 1918, baseType: !4235, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!278, !1530, !28, !47, !52}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4223, file: !14, line: 1919, baseType: !4239, size: 64, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!278, !4242, !4264}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !4244)
!4244 = !{!4245, !4246, !4247, !4251, !4252, !4253, !4254}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4243, file: !14, line: 374, baseType: !1530, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4243, file: !14, line: 375, baseType: !53, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4243, file: !14, line: 376, baseType: !4248, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4242, !281}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4243, file: !14, line: 377, baseType: !32, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4243, file: !14, line: 378, baseType: !34, size: 32, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4243, file: !14, line: 379, baseType: !105, size: 16, offset: 288)
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4243, file: !14, line: 380, baseType: !4255, size: 64, offset: 320)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4243, file: !14, line: 380, size: 64, elements: !4256)
!4256 = !{!4257, !4260}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4255, file: !14, line: 386, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4255, file: !14, line: 395, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!278, !32}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4223, file: !14, line: 1920, baseType: !4239, size: 64, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4223, file: !14, line: 1921, baseType: !4268, size: 64, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!34, !4242, !4271, !7}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4223, file: !14, line: 1923, baseType: !4274, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!34, !1530, !4277}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !4279)
!4279 = !{!4280, !4285}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4278, file: !14, line: 1859, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !4282)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!729, !4277, !28, !34, !53, !465, !7}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4278, file: !14, line: 1860, baseType: !53, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4223, file: !14, line: 1924, baseType: !4287, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!2562, !1530, !2564}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4223, file: !14, line: 1925, baseType: !4291, size: 64, offset: 576)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!281, !1530, !7, !51}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4223, file: !14, line: 1926, baseType: !4291, size: 64, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4223, file: !14, line: 1927, baseType: !4296, size: 64, offset: 704)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!34, !1530, !2267}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4223, file: !14, line: 1928, baseType: !51, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4223, file: !14, line: 1929, baseType: !4301, size: 64, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!34, !392, !1530}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4223, file: !14, line: 1930, baseType: !4305, size: 64, offset: 896)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!34, !1530, !4308}
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4223, file: !14, line: 1931, baseType: !4301, size: 64, offset: 960)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4223, file: !14, line: 1932, baseType: !4311, size: 64, offset: 1024)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!34, !1530, !53, !53, !34}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4223, file: !14, line: 1933, baseType: !4315, size: 64, offset: 1088)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!34, !34, !1530, !34}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4223, file: !14, line: 1934, baseType: !4319, size: 64, offset: 1152)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!34, !1530, !34, !4322}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4223, file: !14, line: 1935, baseType: !1527, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4223, file: !14, line: 1936, baseType: !4326, size: 64, offset: 1280)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!34, !34}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4223, file: !14, line: 1937, baseType: !4319, size: 64, offset: 1344)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4223, file: !14, line: 1938, baseType: !4331, size: 64, offset: 1408)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!278, !3293, !1530, !52, !47, !7}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4223, file: !14, line: 1939, baseType: !4335, size: 64, offset: 1472)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!278, !1530, !52, !3293, !47, !7}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4223, file: !14, line: 1940, baseType: !4339, size: 64, offset: 1536)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !1530}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4223, file: !14, line: 1941, baseType: !4343, size: 64, offset: 1600)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!34, !1530, !34, !4346, !3559}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4223, file: !14, line: 1942, baseType: !4348, size: 64, offset: 1664)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!281, !1530, !34, !53, !53}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4223, file: !14, line: 1944, baseType: !4352, size: 64, offset: 1728)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !1091, !1530}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4223, file: !14, line: 1948, baseType: !4356, size: 64, offset: 1792)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!278, !1530, !53, !1530, !53, !47, !7}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4223, file: !14, line: 1950, baseType: !4360, size: 64, offset: 1856)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!53, !1530, !53, !1530, !53, !53, !7}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4223, file: !14, line: 1953, baseType: !4311, size: 64, offset: 1920)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4223, file: !14, line: 1954, baseType: !4365, size: 64, offset: 1984)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!34, !4368, !7}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4223, file: !14, line: 1955, baseType: !4371, size: 64, offset: 2048)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!34, !4368, !4271, !7}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1128, file: !14, line: 1018, baseType: !465, size: 64, offset: 1472)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1128, file: !14, line: 1020, baseType: !32, size: 64, offset: 1536)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1128, file: !14, line: 1023, baseType: !32, size: 64, offset: 1600)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1128, file: !14, line: 1027, baseType: !4378, size: 64, offset: 1664)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1128, file: !14, line: 1029, baseType: !388, size: 64, offset: 1728)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1128, file: !14, line: 1030, baseType: !4381, size: 32, offset: 1792)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4382, line: 8, baseType: !461)
!4382 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1128, file: !14, line: 1031, baseType: !4381, size: 32, offset: 1824)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1092, file: !1093, line: 29, baseType: !32, size: 64, offset: 896)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1035, file: !14, line: 2077, baseType: !1088, size: 64, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1035, file: !14, line: 2078, baseType: !1088, size: 64, offset: 1152)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1035, file: !14, line: 2079, baseType: !1088, size: 64, offset: 1216)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1035, file: !14, line: 2081, baseType: !4389, size: 64, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!278, !543, !34, !327, !47, !53}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1035, file: !14, line: 2082, baseType: !4393, size: 64, offset: 1344)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!278, !543, !34, !28, !47, !53}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1035, file: !14, line: 2083, baseType: !4397, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!4400, !392}
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !174, line: 296, size: 1664, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4428, !4429, !4430}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4402, file: !174, line: 297, baseType: !895, size: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4402, file: !174, line: 298, baseType: !109, size: 128, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4402, file: !174, line: 299, baseType: !109, size: 128, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4402, file: !174, line: 300, baseType: !109, size: 128, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4402, file: !174, line: 301, baseType: !649, size: 256, offset: 512)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4402, file: !174, line: 302, baseType: !71, size: 32, offset: 768)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4402, file: !174, line: 303, baseType: !61, size: 32, offset: 800)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4402, file: !174, line: 304, baseType: !543, size: 64, offset: 832)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4402, file: !174, line: 305, baseType: !4413, size: 64, offset: 896)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !174, line: 68, size: 64, elements: !4414)
!4414 = !{!4415, !4427}
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !4413, file: !174, line: 69, baseType: !4416, size: 32)
!4416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4413, file: !174, line: 69, size: 32, elements: !4417)
!4417 = !{!4418, !4419, !4420}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4416, file: !174, line: 70, baseType: !398, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4416, file: !174, line: 71, baseType: !407, size: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4416, file: !174, line: 72, baseType: !4421, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4422, line: 24, baseType: !4423)
!4422 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4422, line: 22, size: 32, elements: !4424)
!4424 = !{!4425}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4423, file: !4422, line: 23, baseType: !4426, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4422, line: 20, baseType: !404)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4413, file: !174, line: 74, baseType: !173, size: 32, offset: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4402, file: !174, line: 306, baseType: !53, size: 64, offset: 960)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4402, file: !174, line: 307, baseType: !51, size: 64, offset: 1024)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4402, file: !174, line: 308, baseType: !4431, size: 576, offset: 1088)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !174, line: 205, size: 576, elements: !4432)
!4432 = !{!4433, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4431, file: !174, line: 206, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !174, line: 66, baseType: !55)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4431, file: !174, line: 207, baseType: !4434, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4431, file: !174, line: 208, baseType: !4434, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4431, file: !174, line: 209, baseType: !4434, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4431, file: !174, line: 210, baseType: !4434, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4431, file: !174, line: 211, baseType: !4434, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4431, file: !174, line: 212, baseType: !4434, size: 64, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4431, file: !174, line: 213, baseType: !1727, size: 64, offset: 448)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4431, file: !174, line: 214, baseType: !1727, size: 64, offset: 512)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1035, file: !14, line: 2085, baseType: !4444, size: 64, offset: 1472)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!281, !543, !4447}
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4449, line: 15, size: 256, elements: !4450)
!4449 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4450 = !{!4451, !4452, !4453, !4454, !4455}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4448, file: !4449, line: 16, baseType: !261, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4448, file: !4449, line: 19, baseType: !34, size: 32, offset: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4448, file: !4449, line: 26, baseType: !51, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4448, file: !4449, line: 33, baseType: !51, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4448, file: !4449, line: 36, baseType: !4456, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1035, file: !14, line: 2087, baseType: !4444, size: 64, offset: 1536)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1035, file: !14, line: 2089, baseType: !574, size: 64, offset: 1600)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !544, file: !14, line: 1198, baseType: !4461, size: 64, offset: 448)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !174, line: 324, size: 704, elements: !4464)
!4464 = !{!4465, !4469, !4473, !4477, !4478, !4479, !4480, !4481, !4486, !4491, !4495}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4463, file: !174, line: 325, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!34, !4401}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4463, file: !174, line: 326, baseType: !4470, size: 64, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4401, !543, !34}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4463, file: !174, line: 327, baseType: !4474, size: 64, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !4401}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4463, file: !174, line: 328, baseType: !4466, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4463, file: !174, line: 329, baseType: !4466, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4463, file: !174, line: 330, baseType: !4466, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4463, file: !174, line: 331, baseType: !1063, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4463, file: !174, line: 334, baseType: !4482, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!4485, !392}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4463, file: !174, line: 335, baseType: !4487, size: 64, offset: 512)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!34, !392, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4463, file: !174, line: 337, baseType: !4492, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!34, !392, !4485}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4463, file: !174, line: 339, baseType: !4496, size: 64, offset: 640)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!34, !543, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !544, file: !14, line: 1199, baseType: !4501, size: 64, offset: 512)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4503)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !174, line: 430, size: 704, elements: !4504)
!4504 = !{!4505, !4511, !4512, !4516, !4517, !4518, !4533, !4556, !4560, !4561, !4584}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4503, file: !174, line: 431, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!34, !543, !34, !34, !4509}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4503, file: !174, line: 432, baseType: !1063, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4503, file: !174, line: 433, baseType: !4513, size: 64, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!34, !543, !7}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4503, file: !174, line: 434, baseType: !4513, size: 64, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4503, file: !174, line: 435, baseType: !1063, size: 64, offset: 256)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4503, file: !174, line: 436, baseType: !4519, size: 64, offset: 320)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!34, !543, !34, !4522}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !174, line: 417, size: 256, elements: !4524)
!4524 = !{!4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4523, file: !174, line: 418, baseType: !34, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4523, file: !174, line: 419, baseType: !7, size: 32, offset: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4523, file: !174, line: 420, baseType: !7, size: 32, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4523, file: !174, line: 422, baseType: !7, size: 32, offset: 96)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4523, file: !174, line: 423, baseType: !7, size: 32, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4523, file: !174, line: 424, baseType: !7, size: 32, offset: 160)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4523, file: !174, line: 425, baseType: !7, size: 32, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4523, file: !174, line: 426, baseType: !7, size: 32, offset: 224)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4503, file: !174, line: 437, baseType: !4534, size: 64, offset: 384)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!34, !543, !4413, !4537}
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !174, line: 345, size: 960, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4538, file: !174, line: 346, baseType: !34, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4538, file: !174, line: 347, baseType: !465, size: 64, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4538, file: !174, line: 348, baseType: !465, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4538, file: !174, line: 349, baseType: !465, size: 64, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4538, file: !174, line: 350, baseType: !465, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4538, file: !174, line: 351, baseType: !465, size: 64, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4538, file: !174, line: 352, baseType: !465, size: 64, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4538, file: !174, line: 353, baseType: !659, size: 64, offset: 448)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4538, file: !174, line: 355, baseType: !659, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4538, file: !174, line: 356, baseType: !34, size: 32, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4538, file: !174, line: 357, baseType: !34, size: 32, offset: 608)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4538, file: !174, line: 358, baseType: !465, size: 64, offset: 640)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4538, file: !174, line: 359, baseType: !465, size: 64, offset: 704)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4538, file: !174, line: 360, baseType: !465, size: 64, offset: 768)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4538, file: !174, line: 361, baseType: !659, size: 64, offset: 832)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4538, file: !174, line: 362, baseType: !34, size: 32, offset: 896)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4503, file: !174, line: 438, baseType: !4557, size: 64, offset: 448)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!34, !543, !4499, !4537}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4503, file: !174, line: 440, baseType: !4534, size: 64, offset: 512)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4503, file: !174, line: 441, baseType: !4562, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!34, !543, !4565}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !174, line: 411, size: 1408, elements: !4567)
!4567 = !{!4568, !4569}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4566, file: !174, line: 412, baseType: !7, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4566, file: !174, line: 413, baseType: !4570, size: 1344, offset: 64)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4571, size: 1344, elements: !328)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !174, line: 397, size: 448, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4583}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4571, file: !174, line: 398, baseType: !7, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4571, file: !174, line: 399, baseType: !7, size: 32, offset: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4571, file: !174, line: 401, baseType: !7, size: 32, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4571, file: !174, line: 402, baseType: !7, size: 32, offset: 96)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4571, file: !174, line: 403, baseType: !7, size: 32, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4571, file: !174, line: 404, baseType: !7, size: 32, offset: 160)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4571, file: !174, line: 405, baseType: !7, size: 32, offset: 192)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4571, file: !174, line: 406, baseType: !467, size: 64, offset: 256)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4571, file: !174, line: 407, baseType: !4582, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !465)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4571, file: !174, line: 408, baseType: !4582, size: 64, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4503, file: !174, line: 442, baseType: !4513, size: 64, offset: 640)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !544, file: !14, line: 1200, baseType: !4586, size: 64, offset: 576)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4588)
!4588 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !544, file: !14, line: 1201, baseType: !51, size: 64, offset: 640)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !544, file: !14, line: 1202, baseType: !51, size: 64, offset: 704)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !544, file: !14, line: 1203, baseType: !51, size: 64, offset: 768)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !544, file: !14, line: 1204, baseType: !427, size: 64, offset: 832)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !544, file: !14, line: 1205, baseType: !1558, size: 320, offset: 896)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !544, file: !14, line: 1206, baseType: !34, size: 32, offset: 1216)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !544, file: !14, line: 1207, baseType: !61, size: 32, offset: 1248)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !544, file: !14, line: 1209, baseType: !32, size: 64, offset: 1280)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !544, file: !14, line: 1211, baseType: !4598, size: 64, offset: 1344)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4601)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !544, file: !14, line: 1223, baseType: !4603, size: 64, offset: 1408)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !444, line: 34, size: 64, elements: !4604)
!4604 = !{!4605}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4603, file: !444, line: 35, baseType: !447, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !544, file: !14, line: 1224, baseType: !109, size: 128, offset: 1472)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !544, file: !14, line: 1225, baseType: !4608, size: 64, offset: 1600)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !544, file: !14, line: 1226, baseType: !4611, size: 64, offset: 1664)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !544, file: !14, line: 1227, baseType: !4614, size: 64, offset: 1728)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !544, file: !14, line: 1228, baseType: !4617, size: 64, offset: 1792)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !544, file: !14, line: 1229, baseType: !895, size: 128, offset: 1856)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !544, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !544, file: !14, line: 1231, baseType: !4622, size: 2496, offset: 2048)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !174, line: 521, size: 2496, elements: !4623)
!4623 = !{!4624, !4625, !4626, !4628, !4660}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4622, file: !174, line: 522, baseType: !7, size: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4622, file: !174, line: 523, baseType: !1558, size: 320, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4622, file: !174, line: 524, baseType: !4627, size: 192, offset: 384)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 192, elements: !328)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4622, file: !174, line: 525, baseType: !4629, size: 1728, offset: 576)
!4629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4630, size: 1728, elements: !328)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !174, line: 222, size: 576, elements: !4631)
!4631 = !{!4632, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4630, file: !174, line: 223, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !174, line: 445, size: 256, elements: !4635)
!4635 = !{!4636, !4637, !4650, !4651}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4634, file: !174, line: 446, baseType: !34, size: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4634, file: !174, line: 447, baseType: !4638, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4640)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !174, line: 312, size: 512, elements: !4641)
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4640, file: !174, line: 313, baseType: !1063, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4640, file: !174, line: 314, baseType: !1063, size: 64, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4640, file: !174, line: 315, baseType: !1063, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4640, file: !174, line: 316, baseType: !1063, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4640, file: !174, line: 317, baseType: !4466, size: 64, offset: 256)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4640, file: !174, line: 318, baseType: !4466, size: 64, offset: 320)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4640, file: !174, line: 319, baseType: !4466, size: 64, offset: 384)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4640, file: !174, line: 320, baseType: !4496, size: 64, offset: 448)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4634, file: !174, line: 448, baseType: !578, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4634, file: !174, line: 449, baseType: !4633, size: 64, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4630, file: !174, line: 224, baseType: !34, size: 32, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4630, file: !174, line: 226, baseType: !109, size: 128, offset: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4630, file: !174, line: 227, baseType: !51, size: 64, offset: 256)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4630, file: !174, line: 228, baseType: !7, size: 32, offset: 320)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4630, file: !174, line: 229, baseType: !7, size: 32, offset: 352)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4630, file: !174, line: 230, baseType: !4434, size: 64, offset: 384)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4630, file: !174, line: 231, baseType: !4434, size: 64, offset: 448)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4630, file: !174, line: 232, baseType: !32, size: 64, offset: 512)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4622, file: !174, line: 526, baseType: !4661, size: 192, offset: 2304)
!4661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4638, size: 192, elements: !328)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !544, file: !14, line: 1233, baseType: !4663, size: 2368, offset: 4544)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !4664)
!4664 = !{!4665, !4666, !4667}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4663, file: !14, line: 1185, baseType: !38, size: 16)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4663, file: !14, line: 1186, baseType: !38, size: 16, offset: 16)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4663, file: !14, line: 1187, baseType: !4668, size: 2304, offset: 64)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4669, size: 2304, elements: !328)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4670, line: 12, size: 768, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4671 = !{!4672, !4680, !4681, !4682, !4683}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4669, file: !4670, line: 13, baseType: !4673, size: 384)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4674, line: 17, size: 384, elements: !4675)
!4674 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4673, file: !4674, line: 18, baseType: !34, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4673, file: !4674, line: 19, baseType: !34, size: 32, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4673, file: !4674, line: 20, baseType: !66, size: 192, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4673, file: !4674, line: 22, baseType: !869, size: 128, align: 64, offset: 256)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4669, file: !4670, line: 14, baseType: !721, size: 64, offset: 384)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4669, file: !4670, line: 15, baseType: !3831, size: 64, offset: 448)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4669, file: !4670, line: 16, baseType: !66, size: 192, offset: 512)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4669, file: !4670, line: 17, baseType: !61, size: 32, offset: 704)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !544, file: !14, line: 1240, baseType: !32, size: 64, offset: 6912)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !544, file: !14, line: 1243, baseType: !461, size: 32, offset: 6976)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !544, file: !14, line: 1245, baseType: !1727, size: 64, offset: 7040)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !544, file: !14, line: 1246, baseType: !1727, size: 64, offset: 7104)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !544, file: !14, line: 1248, baseType: !462, size: 32, offset: 7168)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !544, file: !14, line: 1249, baseType: !4690, size: 64, offset: 7232)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !544, file: !14, line: 1252, baseType: !2956, size: 256, offset: 7296)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !544, file: !14, line: 1253, baseType: !4694, size: 128, offset: 7552)
!4694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4695, line: 21, baseType: !4696)
!4695 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4695, line: 19, size: 128, elements: !4697)
!4697 = !{!4698}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4696, file: !4695, line: 20, baseType: !4699, size: 128)
!4699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !2119)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !544, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !544, file: !14, line: 1261, baseType: !649, size: 256, offset: 7744)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !544, file: !14, line: 1267, baseType: !28, size: 64, offset: 8000)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !544, file: !14, line: 1269, baseType: !490, size: 64, offset: 8064)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !544, file: !14, line: 1271, baseType: !4705, size: 448, offset: 8128)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4449, line: 63, size: 448, elements: !4706)
!4706 = !{!4707, !4712, !4713, !4714, !4715, !4716, !4717}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4705, file: !4449, line: 64, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!51, !4711, !4447}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4705, file: !4449, line: 66, baseType: !4708, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4705, file: !4449, line: 69, baseType: !281, size: 64, offset: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4705, file: !4449, line: 70, baseType: !34, size: 32, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4705, file: !4449, line: 71, baseType: !7, size: 32, offset: 224)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4705, file: !4449, line: 74, baseType: !109, size: 128, offset: 256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4705, file: !4449, line: 85, baseType: !4718, size: 64, offset: 384)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !544, file: !14, line: 1274, baseType: !653, size: 64, offset: 8576)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !544, file: !14, line: 1280, baseType: !653, size: 64, offset: 8640)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !544, file: !14, line: 1283, baseType: !34, size: 32, offset: 8704)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !544, file: !14, line: 1286, baseType: !4381, size: 32, offset: 8736)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !544, file: !14, line: 1289, baseType: !971, size: 64, offset: 8768)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !544, file: !14, line: 1290, baseType: !1019, size: 64, offset: 8832)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !544, file: !14, line: 1297, baseType: !1658, size: 64, offset: 8896)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !544, file: !14, line: 1304, baseType: !4727, size: 64, offset: 8960)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4728, line: 49, size: 64, elements: !4729)
!4728 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4729 = !{!4730}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4727, file: !4728, line: 50, baseType: !4731, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4728, line: 41, size: 512, align: 512, elements: !4733)
!4733 = !{!4734, !4735, !4740}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4732, file: !4728, line: 43, baseType: !71, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4732, file: !4728, line: 45, baseType: !4736, size: 192, offset: 64)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4728, line: 29, size: 192, elements: !4737)
!4737 = !{!4738, !4739}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4736, file: !4728, line: 30, baseType: !109, size: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4736, file: !4728, line: 32, baseType: !281, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4732, file: !4728, line: 46, baseType: !281, size: 64, offset: 256)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !544, file: !14, line: 1305, baseType: !4727, size: 64, offset: 9024)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !544, file: !14, line: 1306, baseType: !869, size: 128, align: 64, offset: 9088)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !544, file: !14, line: 1307, baseType: !909, size: 256, offset: 9216)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !544, file: !14, line: 1309, baseType: !649, size: 256, offset: 9472)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !544, file: !14, line: 1314, baseType: !34, size: 32, offset: 9728)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !544, file: !14, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !544, file: !14, line: 1318, baseType: !109, size: 128, offset: 10304)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !544, file: !14, line: 1320, baseType: !71, size: 32, offset: 10432)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !544, file: !14, line: 1321, baseType: !109, size: 128, offset: 10496)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !538, file: !539, line: 73, baseType: !34, size: 32, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !538, file: !539, line: 74, baseType: !4752, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2062, line: 42, flags: DIFlagFwdDecl)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !492, file: !429, line: 141, baseType: !4756, size: 64, offset: 704)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!34, !4509, !729}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !492, file: !429, line: 142, baseType: !4760, size: 64, offset: 768)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!427, !427, !4763}
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !428, file: !429, line: 96, baseType: !543, size: 64, offset: 832)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !428, file: !429, line: 97, baseType: !51, size: 64, offset: 896)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !428, file: !429, line: 98, baseType: !32, size: 64, offset: 960)
!4768 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 100, baseType: !4769, size: 128, offset: 1024)
!4769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 100, size: 128, elements: !4770)
!4770 = !{!4771, !4772}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4769, file: !429, line: 101, baseType: !109, size: 128)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4769, file: !429, line: 102, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !428, file: !429, line: 104, baseType: !109, size: 128, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !428, file: !429, line: 105, baseType: !109, size: 128, offset: 1280)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !428, file: !429, line: 113, baseType: !4777, size: 128, offset: 1408)
!4777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 109, size: 128, elements: !4778)
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4777, file: !429, line: 110, baseType: !895, size: 128)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4777, file: !429, line: 111, baseType: !443, size: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4777, file: !429, line: 112, baseType: !869, size: 128, align: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !421, file: !14, line: 1968, baseType: !4783, size: 64, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!28, !427, !392, !4786}
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4788, line: 10, size: 128, elements: !4789)
!4788 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4789 = !{!4790, !4791}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4787, file: !4788, line: 11, baseType: !692, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4787, file: !4788, line: 12, baseType: !32, size: 64, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !421, file: !14, line: 1969, baseType: !4793, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!34, !4752, !392, !34}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !421, file: !14, line: 1970, baseType: !4797, size: 64, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!415, !392, !34, !729}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !421, file: !14, line: 1972, baseType: !4801, size: 64, offset: 256)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!34, !427, !327, !34}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !421, file: !14, line: 1974, baseType: !4805, size: 64, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!34, !4752, !392, !427, !36, !729}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !421, file: !14, line: 1976, baseType: !4809, size: 64, offset: 384)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!34, !427, !392, !427}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !421, file: !14, line: 1977, baseType: !4813, size: 64, offset: 448)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!34, !392, !427}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !421, file: !14, line: 1978, baseType: !4817, size: 64, offset: 512)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!34, !4752, !392, !427, !28}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !421, file: !14, line: 1980, baseType: !4821, size: 64, offset: 576)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!34, !4752, !392, !427, !36}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !421, file: !14, line: 1982, baseType: !4813, size: 64, offset: 640)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !421, file: !14, line: 1983, baseType: !4826, size: 64, offset: 704)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!34, !4752, !392, !427, !36, !548}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !421, file: !14, line: 1985, baseType: !4830, size: 64, offset: 768)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!34, !4752, !392, !427, !392, !427, !7}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !421, file: !14, line: 1987, baseType: !4834, size: 64, offset: 832)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!34, !4752, !427, !4837}
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4852, !4861, !4862, !4867, !4868, !4869}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4838, file: !14, line: 227, baseType: !7, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4838, file: !14, line: 228, baseType: !36, size: 16, offset: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, scope: !4838, file: !14, line: 241, baseType: !4843, size: 32, offset: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4838, file: !14, line: 241, size: 32, elements: !4844)
!4844 = !{!4845, !4846}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4843, file: !14, line: 242, baseType: !398, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4843, file: !14, line: 243, baseType: !4847, size: 32)
!4847 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4848, line: 16, baseType: !4849)
!4848 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4848, line: 14, size: 32, elements: !4850)
!4850 = !{!4851}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4849, file: !4848, line: 15, baseType: !403, size: 32)
!4852 = !DIDerivedType(tag: DW_TAG_member, scope: !4838, file: !14, line: 245, baseType: !4853, size: 32, offset: 96)
!4853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4838, file: !14, line: 245, size: 32, elements: !4854)
!4854 = !{!4855, !4856}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4853, file: !14, line: 246, baseType: !407, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4853, file: !14, line: 247, baseType: !4857, size: 32)
!4857 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4848, line: 20, baseType: !4858)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4848, line: 18, size: 32, elements: !4859)
!4859 = !{!4860}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4858, file: !4848, line: 19, baseType: !411, size: 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4838, file: !14, line: 249, baseType: !53, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4838, file: !14, line: 250, baseType: !4863, size: 128, offset: 192)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1728, line: 13, size: 128, elements: !4864)
!4864 = !{!4865, !4866}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4863, file: !1728, line: 14, baseType: !1727, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4863, file: !1728, line: 15, baseType: !281, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4838, file: !14, line: 251, baseType: !4863, size: 128, offset: 320)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4838, file: !14, line: 252, baseType: !4863, size: 128, offset: 448)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4838, file: !14, line: 259, baseType: !1530, size: 64, offset: 576)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !421, file: !14, line: 1988, baseType: !4871, size: 64, offset: 896)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!34, !4752, !4509, !4874, !461, !7}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4876, line: 22, size: 1280, elements: !4877)
!4876 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4877 = !{!4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4875, file: !4876, line: 23, baseType: !461, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4875, file: !4876, line: 24, baseType: !36, size: 16, offset: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4875, file: !4876, line: 25, baseType: !7, size: 32, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4875, file: !4876, line: 26, baseType: !1735, size: 32, offset: 96)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4875, file: !4876, line: 27, baseType: !465, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4875, file: !4876, line: 28, baseType: !465, size: 64, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4875, file: !4876, line: 41, baseType: !465, size: 64, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4875, file: !4876, line: 42, baseType: !548, size: 32, offset: 320)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4875, file: !4876, line: 43, baseType: !548, size: 32, offset: 352)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4875, file: !4876, line: 44, baseType: !398, size: 32, offset: 384)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4875, file: !4876, line: 45, baseType: !407, size: 32, offset: 416)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4875, file: !4876, line: 46, baseType: !53, size: 64, offset: 448)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4875, file: !4876, line: 47, baseType: !4863, size: 128, offset: 512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4875, file: !4876, line: 48, baseType: !4863, size: 128, offset: 640)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4875, file: !4876, line: 49, baseType: !4863, size: 128, offset: 768)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4875, file: !4876, line: 50, baseType: !4863, size: 128, offset: 896)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4875, file: !4876, line: 51, baseType: !465, size: 64, offset: 1024)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4875, file: !4876, line: 52, baseType: !465, size: 64, offset: 1088)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4875, file: !4876, line: 53, baseType: !461, size: 32, offset: 1152)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4875, file: !4876, line: 54, baseType: !461, size: 32, offset: 1184)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4875, file: !4876, line: 55, baseType: !465, size: 64, offset: 1216)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !421, file: !14, line: 1990, baseType: !4900, size: 64, offset: 960)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!278, !427, !327, !47}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !421, file: !14, line: 1991, baseType: !4904, size: 64, offset: 1024)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!34, !392, !4907, !465, !465}
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !421, file: !14, line: 1993, baseType: !4910, size: 64, offset: 1088)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!34, !392, !34}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !421, file: !14, line: 1994, baseType: !4914, size: 64, offset: 1152)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!34, !392, !427, !1530, !7, !36}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !421, file: !14, line: 1997, baseType: !4918, size: 64, offset: 1216)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!34, !4752, !392, !1530, !36}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !421, file: !14, line: 1999, baseType: !4922, size: 64, offset: 1280)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!415, !4752, !427, !34}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !421, file: !14, line: 2001, baseType: !4926, size: 64, offset: 1344)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!34, !4752, !427, !415, !34}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !421, file: !14, line: 2003, baseType: !4930, size: 64, offset: 1408)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!34, !4752, !427, !4933}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !421, file: !14, line: 2005, baseType: !4936, size: 64, offset: 1472)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!34, !427, !4933}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !421, file: !14, line: 2006, baseType: !4940, size: 64, offset: 1536)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!4943, !392}
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4945)
!4945 = !{!4946, !4947}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4944, file: !14, line: 3193, baseType: !1204, size: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4944, file: !14, line: 3194, baseType: !461, size: 32, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !393, file: !14, line: 655, baseType: !543, size: 64, offset: 448)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !393, file: !14, line: 656, baseType: !388, size: 64, offset: 512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !393, file: !14, line: 659, baseType: !32, size: 64, offset: 576)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !393, file: !14, line: 663, baseType: !51, size: 64, offset: 640)
!4952 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !14, line: 671, baseType: !4953, size: 32, offset: 704)
!4953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !14, line: 671, size: 32, elements: !4954)
!4954 = !{!4955, !4957}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4953, file: !14, line: 672, baseType: !4956, size: 32)
!4956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4953, file: !14, line: 673, baseType: !7, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !393, file: !14, line: 675, baseType: !548, size: 32, offset: 736)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !393, file: !14, line: 676, baseType: !53, size: 64, offset: 768)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !393, file: !14, line: 677, baseType: !4863, size: 128, offset: 832)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !393, file: !14, line: 678, baseType: !4863, size: 128, offset: 960)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !393, file: !14, line: 679, baseType: !4863, size: 128, offset: 1088)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !393, file: !14, line: 680, baseType: !71, size: 32, offset: 1216)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !393, file: !14, line: 681, baseType: !38, size: 16, offset: 1248)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !393, file: !14, line: 682, baseType: !95, size: 8, offset: 1264)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !393, file: !14, line: 683, baseType: !95, size: 8, offset: 1272)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !393, file: !14, line: 684, baseType: !4582, size: 64, offset: 1280)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !393, file: !14, line: 691, baseType: !51, size: 64, offset: 1344)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !393, file: !14, line: 692, baseType: !1558, size: 320, offset: 1408)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !393, file: !14, line: 694, baseType: !51, size: 64, offset: 1728)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !393, file: !14, line: 695, baseType: !51, size: 64, offset: 1792)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !393, file: !14, line: 697, baseType: !895, size: 128, offset: 1856)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !393, file: !14, line: 698, baseType: !109, size: 128, offset: 1984)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !393, file: !14, line: 707, baseType: !109, size: 128, offset: 2112)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !393, file: !14, line: 708, baseType: !109, size: 128, offset: 2240)
!4976 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !14, line: 709, baseType: !4977, size: 128, offset: 2368)
!4977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !14, line: 709, size: 128, elements: !4978)
!4978 = !{!4979, !4980}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4977, file: !14, line: 710, baseType: !1019, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4977, file: !14, line: 711, baseType: !869, size: 128, align: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !393, file: !14, line: 713, baseType: !655, size: 64, offset: 2496)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !393, file: !14, line: 714, baseType: !655, size: 64, offset: 2560)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !393, file: !14, line: 715, baseType: !61, size: 32, offset: 2624)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !393, file: !14, line: 716, baseType: !61, size: 32, offset: 2656)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !393, file: !14, line: 717, baseType: !61, size: 32, offset: 2688)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !393, file: !14, line: 719, baseType: !61, size: 32, offset: 2720)
!4987 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !14, line: 721, baseType: !4988, size: 64, offset: 2752)
!4988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !14, line: 721, size: 64, elements: !4989)
!4989 = !{!4990, !4991}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4988, file: !14, line: 722, baseType: !4221, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4988, file: !14, line: 723, baseType: !1042, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !393, file: !14, line: 725, baseType: !4993, size: 64, offset: 2816)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !393, file: !14, line: 726, baseType: !389, size: 1536, align: 64, offset: 2880)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !393, file: !14, line: 727, baseType: !109, size: 128, offset: 4416)
!4997 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !14, line: 728, baseType: !4998, size: 64, offset: 4544)
!4998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !14, line: 728, size: 64, elements: !4999)
!4999 = !{!5000, !5001, !5004, !5005}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4998, file: !14, line: 729, baseType: !3293, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4998, file: !14, line: 730, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4998, file: !14, line: 731, baseType: !327, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4998, file: !14, line: 732, baseType: !7, size: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !393, file: !14, line: 735, baseType: !462, size: 32, offset: 4608)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !393, file: !14, line: 738, baseType: !462, size: 32, offset: 4640)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !393, file: !14, line: 739, baseType: !4690, size: 64, offset: 4672)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !393, file: !14, line: 750, baseType: !32, size: 64, offset: 4736)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !389, file: !14, line: 474, baseType: !1204, size: 128, offset: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !389, file: !14, line: 475, baseType: !1558, size: 320, offset: 192)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !389, file: !14, line: 476, baseType: !261, size: 32, offset: 512)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !389, file: !14, line: 477, baseType: !61, size: 32, offset: 544)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !389, file: !14, line: 482, baseType: !1386, size: 128, offset: 576)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !389, file: !14, line: 483, baseType: !51, size: 64, offset: 704)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !389, file: !14, line: 484, baseType: !51, size: 64, offset: 768)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !389, file: !14, line: 485, baseType: !5018, size: 64, offset: 832)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5020)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !5021)
!5021 = !{!5022, !5026, !5096, !5100, !5104, !5110, !5115, !5119, !5124, !5128, !5132, !5136, !5137, !5141, !5145, !5149, !5154, !5158, !5165, !5166}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5020, file: !14, line: 405, baseType: !5023, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!34, !2374, !1054}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5020, file: !14, line: 406, baseType: !5027, size: 64, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!34, !1530, !5030}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !5032)
!5032 = !{!5033, !5063, !5077}
!5033 = !DIDerivedType(tag: DW_TAG_member, scope: !5031, file: !126, line: 295, baseType: !5034, size: 512)
!5034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5031, file: !126, line: 295, size: 512, elements: !5035)
!5035 = !{!5036, !5062}
!5036 = !DIDerivedType(tag: DW_TAG_member, scope: !5034, file: !126, line: 296, baseType: !5037, size: 448)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5034, file: !126, line: 296, size: 448, elements: !5038)
!5038 = !{!5039, !5040, !5049, !5050, !5051, !5060, !5061}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5037, file: !126, line: 298, baseType: !51, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, scope: !5037, file: !126, line: 299, baseType: !5041, size: 128, offset: 64)
!5041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5037, file: !126, line: 299, size: 128, elements: !5042)
!5042 = !{!5043, !5044}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5041, file: !126, line: 300, baseType: !109, size: 128)
!5044 = !DIDerivedType(tag: DW_TAG_member, scope: !5041, file: !126, line: 302, baseType: !5045, size: 128)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5041, file: !126, line: 302, size: 128, elements: !5046)
!5046 = !{!5047, !5048}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5045, file: !126, line: 303, baseType: !32, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5045, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5037, file: !126, line: 310, baseType: !388, size: 64, offset: 192)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5037, file: !126, line: 311, baseType: !51, size: 64, offset: 256)
!5051 = !DIDerivedType(tag: DW_TAG_member, scope: !5037, file: !126, line: 312, baseType: !5052, size: 64, offset: 320)
!5052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5037, file: !126, line: 312, size: 64, elements: !5053)
!5053 = !{!5054, !5055}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5052, file: !126, line: 313, baseType: !32, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5052, file: !126, line: 314, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !5057)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !5058)
!5058 = !{!5059}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5057, file: !126, line: 256, baseType: !51, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5037, file: !126, line: 316, baseType: !61, size: 32, offset: 384)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5037, file: !126, line: 317, baseType: !61, size: 32, offset: 416)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5034, file: !126, line: 323, baseType: !2375, size: 512, align: 128)
!5063 = !DIDerivedType(tag: DW_TAG_member, scope: !5031, file: !126, line: 325, baseType: !5064, size: 512, offset: 512)
!5064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5031, file: !126, line: 325, size: 512, elements: !5065)
!5065 = !{!5066, !5076}
!5066 = !DIDerivedType(tag: DW_TAG_member, scope: !5064, file: !126, line: 326, baseType: !5067, size: 320)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5064, file: !126, line: 326, size: 320, elements: !5068)
!5068 = !{!5069, !5070, !5071, !5072, !5073, !5074, !5075}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5067, file: !126, line: 327, baseType: !51, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5067, file: !126, line: 328, baseType: !51, size: 64, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5067, file: !126, line: 329, baseType: !51, size: 64, offset: 128)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5067, file: !126, line: 331, baseType: !61, size: 32, offset: 192)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5067, file: !126, line: 332, baseType: !61, size: 32, offset: 224)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5067, file: !126, line: 333, baseType: !61, size: 32, offset: 256)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5067, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5064, file: !126, line: 339, baseType: !2375, size: 512, align: 128)
!5077 = !DIDerivedType(tag: DW_TAG_member, scope: !5031, file: !126, line: 341, baseType: !5078, size: 512, offset: 1024)
!5078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5031, file: !126, line: 341, size: 512, elements: !5079)
!5079 = !{!5080, !5089, !5095}
!5080 = !DIDerivedType(tag: DW_TAG_member, scope: !5078, file: !126, line: 342, baseType: !5081, size: 384)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5078, file: !126, line: 342, size: 384, elements: !5082)
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5081, file: !126, line: 343, baseType: !51, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5081, file: !126, line: 344, baseType: !51, size: 64, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5081, file: !126, line: 346, baseType: !32, size: 64, offset: 128)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5081, file: !126, line: 347, baseType: !32, size: 64, offset: 192)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5081, file: !126, line: 348, baseType: !32, size: 64, offset: 256)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5081, file: !126, line: 349, baseType: !32, size: 64, offset: 320)
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5078, file: !126, line: 352, baseType: !5090, size: 256)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5078, file: !126, line: 352, size: 256, elements: !5091)
!5091 = !{!5092, !5093, !5094}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5090, file: !126, line: 353, baseType: !51, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5090, file: !126, line: 354, baseType: !51, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5090, file: !126, line: 356, baseType: !109, size: 128, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5078, file: !126, line: 359, baseType: !2375, size: 512, align: 128)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5020, file: !14, line: 409, baseType: !5097, size: 64, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!34, !388, !1054}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5020, file: !14, line: 412, baseType: !5101, size: 64, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!729, !388, !5030}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5020, file: !14, line: 414, baseType: !5105, size: 64, offset: 256)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{null, !5108}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5020, file: !14, line: 416, baseType: !5111, size: 64, offset: 320)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!34, !1530, !388, !53, !7, !5114, !3559}
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5020, file: !14, line: 419, baseType: !5116, size: 64, offset: 384)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!34, !1530, !388, !53, !7, !7, !2374, !32}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5020, file: !14, line: 424, baseType: !5120, size: 64, offset: 448)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!5123, !388, !5123}
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !465)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5020, file: !14, line: 425, baseType: !5125, size: 64, offset: 512)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !5030, !47, !47}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5020, file: !14, line: 426, baseType: !5129, size: 64, offset: 576)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!729, !5030, !261}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5020, file: !14, line: 427, baseType: !5133, size: 64, offset: 640)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{null, !5030}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5020, file: !14, line: 428, baseType: !4239, size: 64, offset: 704)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5020, file: !14, line: 433, baseType: !5138, size: 64, offset: 768)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!34, !388, !5030, !5030, !179}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5020, file: !14, line: 435, baseType: !5142, size: 64, offset: 832)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!34, !5030}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5020, file: !14, line: 436, baseType: !5146, size: 64, offset: 896)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!729, !5030, !47, !47}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5020, file: !14, line: 438, baseType: !5150, size: 64, offset: 960)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{null, !5030, !5153, !5153}
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5020, file: !14, line: 439, baseType: !5155, size: 64, offset: 1024)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!34, !388, !2374}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5020, file: !14, line: 442, baseType: !5159, size: 64, offset: 1088)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!34, !5162, !1530, !5164}
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5020, file: !14, line: 444, baseType: !4339, size: 64, offset: 1152)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5020, file: !14, line: 445, baseType: !5167, size: 64, offset: 1216)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!34, !4242, !4264}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !14, line: 486, baseType: !51, size: 64, offset: 896)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !389, file: !14, line: 487, baseType: !1558, size: 320, offset: 960)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !389, file: !14, line: 488, baseType: !4381, size: 32, offset: 1280)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !389, file: !14, line: 489, baseType: !71, size: 32, offset: 1312)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !389, file: !14, line: 490, baseType: !109, size: 128, offset: 1344)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !389, file: !14, line: 491, baseType: !32, size: 64, offset: 1472)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !379, file: !270, line: 180, baseType: !5177, size: 64, offset: 320)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!278, !1530, !292, !378, !327, !53, !47}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !379, file: !270, line: 182, baseType: !5177, size: 64, offset: 384)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !379, file: !270, line: 184, baseType: !5182, size: 64, offset: 448)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!34, !1530, !292, !378, !2267}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !367, file: !270, line: 90, baseType: !5186, size: 64, offset: 192)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !367, file: !270, line: 91, baseType: !5188, size: 64, offset: 256)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !343, file: !287, line: 120, baseType: !5190, size: 64, offset: 192)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!5193, !310}
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5195)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !187, line: 39, size: 384, elements: !5196)
!5196 = !{!5197, !5198, !5202, !5206, !5212, !5216}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5195, file: !187, line: 40, baseType: !186, size: 32)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !5195, file: !187, line: 41, baseType: !5199, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!729}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !5195, file: !187, line: 42, baseType: !5203, size: 64, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!32}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !5195, file: !187, line: 43, baseType: !5207, size: 64, offset: 192)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!1635, !5210}
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !187, line: 19, flags: DIFlagFwdDecl)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !5195, file: !187, line: 44, baseType: !5213, size: 64, offset: 256)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!1635}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !5195, file: !187, line: 45, baseType: !692, size: 64, offset: 320)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !343, file: !287, line: 121, baseType: !5218, size: 64, offset: 256)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!1635, !310}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !343, file: !287, line: 122, baseType: !5222, size: 64, offset: 320)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{null, !310, !1858, !1859}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !286, file: !287, line: 70, baseType: !2203, size: 64, offset: 384)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !286, file: !287, line: 71, baseType: !5227, size: 32, offset: 448)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5228, line: 19, size: 32, elements: !5229)
!5228 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5229 = !{!5230}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5227, file: !5228, line: 20, baseType: !1177, size: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !286, file: !287, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !286, file: !287, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !286, file: !287, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !286, file: !287, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !286, file: !287, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !199, line: 707, baseType: !282, size: 64, offset: 512)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !283, file: !199, line: 709, baseType: !5238, size: 64, offset: 576)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !199, line: 37, flags: DIFlagFwdDecl)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !283, file: !199, line: 711, baseType: !28, size: 64, offset: 640)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !199, line: 712, baseType: !5242, size: 64, offset: 704)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5244)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !199, line: 89, size: 384, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5254, !5259, !5263}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5244, file: !199, line: 90, baseType: !28, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5244, file: !199, line: 91, baseType: !364, size: 64, offset: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5244, file: !199, line: 92, baseType: !5249, size: 64, offset: 128)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!34, !5252, !322}
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5244, file: !199, line: 93, baseType: !5255, size: 64, offset: 192)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!327, !5252, !5258, !1858, !1859}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5244, file: !199, line: 95, baseType: !5260, size: 64, offset: 256)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !282}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5244, file: !199, line: 97, baseType: !5264, size: 64, offset: 320)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5266)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !206, line: 286, size: 1472, elements: !5267)
!5267 = !{!5268, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5266, file: !206, line: 287, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!34, !282}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5266, file: !206, line: 288, baseType: !5260, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5266, file: !206, line: 289, baseType: !5269, size: 64, offset: 128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5266, file: !206, line: 290, baseType: !5269, size: 64, offset: 192)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5266, file: !206, line: 291, baseType: !5269, size: 64, offset: 256)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5266, file: !206, line: 292, baseType: !5269, size: 64, offset: 320)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5266, file: !206, line: 293, baseType: !5269, size: 64, offset: 384)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5266, file: !206, line: 294, baseType: !5269, size: 64, offset: 448)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5266, file: !206, line: 295, baseType: !5269, size: 64, offset: 512)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5266, file: !206, line: 296, baseType: !5269, size: 64, offset: 576)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5266, file: !206, line: 297, baseType: !5269, size: 64, offset: 640)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5266, file: !206, line: 298, baseType: !5269, size: 64, offset: 704)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5266, file: !206, line: 299, baseType: !5269, size: 64, offset: 768)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5266, file: !206, line: 300, baseType: !5269, size: 64, offset: 832)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5266, file: !206, line: 301, baseType: !5269, size: 64, offset: 896)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5266, file: !206, line: 302, baseType: !5269, size: 64, offset: 960)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5266, file: !206, line: 303, baseType: !5269, size: 64, offset: 1024)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5266, file: !206, line: 304, baseType: !5269, size: 64, offset: 1088)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5266, file: !206, line: 305, baseType: !5269, size: 64, offset: 1152)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5266, file: !206, line: 306, baseType: !5269, size: 64, offset: 1216)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5266, file: !206, line: 307, baseType: !5269, size: 64, offset: 1280)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5266, file: !206, line: 308, baseType: !5269, size: 64, offset: 1344)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5266, file: !206, line: 309, baseType: !5269, size: 64, offset: 1408)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !283, file: !199, line: 714, baseType: !5295, size: 64, offset: 768)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5297)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5298, line: 80, size: 1344, elements: !5299)
!5298 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5299 = !{!5300, !5301, !5302, !5303, !5304, !5305, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5363}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5297, file: !5298, line: 81, baseType: !28, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5297, file: !5298, line: 82, baseType: !28, size: 64, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5297, file: !5298, line: 83, baseType: !364, size: 64, offset: 128)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5297, file: !5298, line: 84, baseType: !364, size: 64, offset: 192)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5297, file: !5298, line: 85, baseType: !364, size: 64, offset: 256)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5297, file: !5298, line: 87, baseType: !5306, size: 64, offset: 320)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!34, !282, !5309}
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !193, line: 96, size: 1152, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317, !5318, !5322, !5326, !5327, !5328, !5329, !5330, !5338, !5339, !5340, !5341, !5342, !5343}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5310, file: !193, line: 97, baseType: !28, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5310, file: !193, line: 98, baseType: !5295, size: 64, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5310, file: !193, line: 100, baseType: !578, size: 64, offset: 128)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5310, file: !193, line: 101, baseType: !28, size: 64, offset: 192)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5310, file: !193, line: 103, baseType: !729, size: 8, offset: 256)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5310, file: !193, line: 104, baseType: !192, size: 32, offset: 288)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5310, file: !193, line: 106, baseType: !5319, size: 64, offset: 320)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5321)
!5321 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !193, line: 106, flags: DIFlagFwdDecl)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5310, file: !193, line: 107, baseType: !5323, size: 64, offset: 384)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5325)
!5325 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !193, line: 107, flags: DIFlagFwdDecl)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5310, file: !193, line: 109, baseType: !5269, size: 64, offset: 448)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5310, file: !193, line: 110, baseType: !5260, size: 64, offset: 512)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5310, file: !193, line: 111, baseType: !5269, size: 64, offset: 576)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5310, file: !193, line: 112, baseType: !5260, size: 64, offset: 640)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5310, file: !193, line: 113, baseType: !5331, size: 64, offset: 704)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!34, !282, !5334}
!5334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !206, line: 60, baseType: !5335)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !206, line: 58, size: 32, elements: !5336)
!5336 = !{!5337}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5335, file: !206, line: 59, baseType: !34, size: 32)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5310, file: !193, line: 114, baseType: !5269, size: 64, offset: 768)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5310, file: !193, line: 115, baseType: !364, size: 64, offset: 832)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5310, file: !193, line: 116, baseType: !364, size: 64, offset: 896)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5310, file: !193, line: 118, baseType: !5264, size: 64, offset: 960)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5310, file: !193, line: 119, baseType: !5260, size: 64, offset: 1024)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5310, file: !193, line: 121, baseType: !5344, size: 64, offset: 1088)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !193, line: 121, flags: DIFlagFwdDecl)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5297, file: !5298, line: 88, baseType: !5249, size: 64, offset: 384)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5297, file: !5298, line: 89, baseType: !5269, size: 64, offset: 448)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5297, file: !5298, line: 90, baseType: !5260, size: 64, offset: 512)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5297, file: !5298, line: 91, baseType: !5260, size: 64, offset: 576)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5297, file: !5298, line: 92, baseType: !5260, size: 64, offset: 640)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5297, file: !5298, line: 94, baseType: !5269, size: 64, offset: 704)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5297, file: !5298, line: 95, baseType: !5269, size: 64, offset: 768)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5297, file: !5298, line: 97, baseType: !5331, size: 64, offset: 832)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5297, file: !5298, line: 98, baseType: !5269, size: 64, offset: 896)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5297, file: !5298, line: 100, baseType: !5269, size: 64, offset: 960)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5297, file: !5298, line: 102, baseType: !5269, size: 64, offset: 1024)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5297, file: !5298, line: 103, baseType: !5260, size: 64, offset: 1088)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5297, file: !5298, line: 105, baseType: !5264, size: 64, offset: 1152)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5297, file: !5298, line: 107, baseType: !5360, size: 64, offset: 1216)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5362)
!5362 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5298, line: 107, flags: DIFlagFwdDecl)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5297, file: !5298, line: 109, baseType: !729, size: 8, offset: 1280)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !283, file: !199, line: 715, baseType: !5309, size: 64, offset: 832)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !283, file: !199, line: 717, baseType: !32, size: 64, offset: 896)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !283, file: !199, line: 719, baseType: !32, size: 64, offset: 960)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !283, file: !199, line: 721, baseType: !649, size: 256, offset: 1024)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !283, file: !199, line: 725, baseType: !5369, size: 448, offset: 1280)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !199, line: 517, size: 448, elements: !5370)
!5370 = !{!5371, !5372, !5373, !5374}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5369, file: !199, line: 518, baseType: !109, size: 128)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5369, file: !199, line: 519, baseType: !109, size: 128, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5369, file: !199, line: 520, baseType: !109, size: 128, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5369, file: !199, line: 521, baseType: !198, size: 32, offset: 384)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !283, file: !199, line: 726, baseType: !5376, size: 2496, offset: 1728)
!5376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !206, line: 663, size: 2496, elements: !5377)
!5377 = !{!5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5460, !5464}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5376, file: !206, line: 664, baseType: !5334, size: 32)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5376, file: !206, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5376, file: !206, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5376, file: !206, line: 667, baseType: !729, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5376, file: !206, line: 668, baseType: !729, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5376, file: !206, line: 669, baseType: !729, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5376, file: !206, line: 670, baseType: !729, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5376, file: !206, line: 671, baseType: !729, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5376, file: !206, line: 672, baseType: !729, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5376, file: !206, line: 673, baseType: !729, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5376, file: !206, line: 674, baseType: !729, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5376, file: !206, line: 675, baseType: !461, size: 32, offset: 64)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5376, file: !206, line: 676, baseType: !71, size: 32, offset: 96)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5376, file: !206, line: 678, baseType: !109, size: 128, offset: 128)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5376, file: !206, line: 679, baseType: !598, size: 256, offset: 256)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5376, file: !206, line: 680, baseType: !5394, size: 64, offset: 512)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5396, line: 43, size: 1536, elements: !5397)
!5396 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5397 = !{!5398, !5399, !5400, !5401, !5402, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5395, file: !5396, line: 44, baseType: !28, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5395, file: !5396, line: 45, baseType: !34, size: 32, offset: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5395, file: !5396, line: 46, baseType: !109, size: 128, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5395, file: !5396, line: 47, baseType: !71, size: 32, offset: 256)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5395, file: !5396, line: 48, baseType: !5403, size: 64, offset: 320)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !206, line: 629, flags: DIFlagFwdDecl)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5395, file: !5396, line: 49, baseType: !891, size: 320, offset: 384)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5395, file: !5396, line: 50, baseType: !51, size: 64, offset: 704)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5395, file: !5396, line: 51, baseType: !1335, size: 64, offset: 768)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5395, file: !5396, line: 52, baseType: !1335, size: 64, offset: 832)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5395, file: !5396, line: 53, baseType: !1335, size: 64, offset: 896)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5395, file: !5396, line: 54, baseType: !1335, size: 64, offset: 960)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5395, file: !5396, line: 55, baseType: !1335, size: 64, offset: 1024)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5395, file: !5396, line: 56, baseType: !51, size: 64, offset: 1088)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5395, file: !5396, line: 57, baseType: !51, size: 64, offset: 1152)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5395, file: !5396, line: 58, baseType: !51, size: 64, offset: 1216)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5395, file: !5396, line: 59, baseType: !51, size: 64, offset: 1280)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5395, file: !5396, line: 60, baseType: !51, size: 64, offset: 1344)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5395, file: !5396, line: 61, baseType: !282, size: 64, offset: 1408)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5395, file: !5396, line: 62, baseType: !729, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5395, file: !5396, line: 63, baseType: !729, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5376, file: !206, line: 681, baseType: !729, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5376, file: !206, line: 682, baseType: !729, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5376, file: !206, line: 683, baseType: !729, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5376, file: !206, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5376, file: !206, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5376, file: !206, line: 690, baseType: !1327, size: 512, offset: 640)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5376, file: !206, line: 691, baseType: !465, size: 64, offset: 1152)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5376, file: !206, line: 692, baseType: !909, size: 256, offset: 1216)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5376, file: !206, line: 693, baseType: !66, size: 192, offset: 1472)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5376, file: !206, line: 694, baseType: !5403, size: 64, offset: 1664)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5376, file: !206, line: 695, baseType: !61, size: 32, offset: 1728)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5376, file: !206, line: 696, baseType: !61, size: 32, offset: 1760)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5376, file: !206, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5376, file: !206, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5376, file: !206, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5376, file: !206, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5376, file: !206, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5376, file: !206, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5376, file: !206, line: 703, baseType: !729, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5376, file: !206, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5376, file: !206, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5376, file: !206, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5376, file: !206, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5376, file: !206, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5376, file: !206, line: 709, baseType: !7, size: 32, offset: 1824)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5376, file: !206, line: 710, baseType: !205, size: 32, offset: 1856)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5376, file: !206, line: 711, baseType: !213, size: 32, offset: 1888)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5376, file: !206, line: 712, baseType: !213, size: 32, offset: 1920)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5376, file: !206, line: 713, baseType: !34, size: 32, offset: 1952)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5376, file: !206, line: 714, baseType: !34, size: 32, offset: 1984)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5376, file: !206, line: 715, baseType: !465, size: 64, offset: 2048)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5376, file: !206, line: 716, baseType: !465, size: 64, offset: 2112)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5376, file: !206, line: 717, baseType: !465, size: 64, offset: 2176)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5376, file: !206, line: 718, baseType: !465, size: 64, offset: 2240)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5376, file: !206, line: 720, baseType: !5455, size: 64, offset: 2304)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !206, line: 632, size: 64, elements: !5457)
!5457 = !{!5458, !5459}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5456, file: !206, line: 633, baseType: !71, size: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5456, file: !206, line: 634, baseType: !7, size: 32, offset: 32)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5376, file: !206, line: 721, baseType: !5461, size: 64, offset: 2368)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{null, !282, !645}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5376, file: !206, line: 722, baseType: !5465, size: 64, offset: 2432)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !206, line: 722, flags: DIFlagFwdDecl)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !283, file: !199, line: 727, baseType: !5468, size: 64, offset: 4224)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !206, line: 742, size: 1792, elements: !5470)
!5470 = !{!5471, !5472, !5473, !5477, !5478, !5479}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5469, file: !206, line: 743, baseType: !5266, size: 1472)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5469, file: !206, line: 744, baseType: !5269, size: 64, offset: 1472)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5469, file: !206, line: 745, baseType: !5474, size: 64, offset: 1536)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{null, !282, !729}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5469, file: !206, line: 746, baseType: !5269, size: 64, offset: 1600)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5469, file: !206, line: 747, baseType: !5260, size: 64, offset: 1664)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5469, file: !206, line: 748, baseType: !5260, size: 64, offset: 1728)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !283, file: !199, line: 736, baseType: !5481, size: 128, offset: 4288)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !199, line: 529, size: 128, elements: !5482)
!5482 = !{!5483, !5487}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5481, file: !199, line: 531, baseType: !5484, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5486, line: 13, flags: DIFlagFwdDecl)
!5486 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5481, file: !199, line: 532, baseType: !5488, size: 64, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !199, line: 49, flags: DIFlagFwdDecl)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !283, file: !199, line: 738, baseType: !5491, size: 64, offset: 4416)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5493)
!5493 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !199, line: 738, flags: DIFlagFwdDecl)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !283, file: !199, line: 740, baseType: !5495, size: 64, offset: 4480)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !283, file: !199, line: 741, baseType: !465, size: 64, offset: 4544)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !283, file: !199, line: 746, baseType: !465, size: 64, offset: 4608)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !283, file: !199, line: 747, baseType: !5499, size: 64, offset: 4672)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5501)
!5501 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !199, line: 747, flags: DIFlagFwdDecl)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !283, file: !199, line: 749, baseType: !5503, size: 64, offset: 4736)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !199, line: 428, size: 128, elements: !5505)
!5505 = !{!5506, !5507, !5508}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5504, file: !199, line: 433, baseType: !7, size: 32)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5504, file: !199, line: 434, baseType: !7, size: 32, offset: 32)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5504, file: !199, line: 435, baseType: !51, size: 64, offset: 64)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !283, file: !199, line: 751, baseType: !109, size: 128, offset: 4800)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !283, file: !199, line: 762, baseType: !5511, size: 64, offset: 4928)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !199, line: 762, flags: DIFlagFwdDecl)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !283, file: !199, line: 770, baseType: !5514, offset: 4992)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5515, line: 5, elements: !938)
!5515 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !283, file: !199, line: 772, baseType: !5517, size: 64, offset: 4992)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5519, line: 18, flags: DIFlagFwdDecl)
!5519 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !283, file: !199, line: 773, baseType: !5521, size: 64, offset: 5056)
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5298, line: 22, flags: DIFlagFwdDecl)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !283, file: !199, line: 776, baseType: !34, size: 32, offset: 5120)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !283, file: !199, line: 778, baseType: !548, size: 32, offset: 5152)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !283, file: !199, line: 779, baseType: !461, size: 32, offset: 5184)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !283, file: !199, line: 781, baseType: !71, size: 32, offset: 5216)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !283, file: !199, line: 782, baseType: !109, size: 128, offset: 5248)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !283, file: !199, line: 784, baseType: !5529, size: 64, offset: 5376)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5531)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5532, line: 52, size: 768, elements: !5533)
!5532 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5533 = !{!5534, !5535, !5536, !5537, !5538, !5542, !5546, !5547, !5548, !5549, !5553, !5557}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5531, file: !5532, line: 53, baseType: !28, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5531, file: !5532, line: 55, baseType: !364, size: 64, offset: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5531, file: !5532, line: 56, baseType: !364, size: 64, offset: 128)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5531, file: !5532, line: 58, baseType: !5249, size: 64, offset: 192)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5531, file: !5532, line: 59, baseType: !5539, size: 64, offset: 256)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{!327, !5252, !5258}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5531, file: !5532, line: 61, baseType: !5543, size: 64, offset: 320)
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = !DISubroutineType(types: !5545)
!5545 = !{null, !5529}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5531, file: !5532, line: 62, baseType: !5260, size: 64, offset: 384)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5531, file: !5532, line: 64, baseType: !5269, size: 64, offset: 448)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5531, file: !5532, line: 66, baseType: !5193, size: 64, offset: 512)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5531, file: !5532, line: 67, baseType: !5550, size: 64, offset: 576)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!1635, !5252}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5531, file: !5532, line: 69, baseType: !5554, size: 64, offset: 640)
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !5252, !1858, !1859}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5531, file: !5532, line: 71, baseType: !5264, size: 64, offset: 704)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !283, file: !199, line: 785, baseType: !364, size: 64, offset: 5440)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !283, file: !199, line: 787, baseType: !5260, size: 64, offset: 5504)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !283, file: !199, line: 788, baseType: !5561, size: 64, offset: 5568)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !199, line: 46, flags: DIFlagFwdDecl)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !283, file: !199, line: 789, baseType: !5564, size: 64, offset: 5632)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !199, line: 48, flags: DIFlagFwdDecl)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !283, file: !199, line: 791, baseType: !5567, size: 64, offset: 5696)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !199, line: 597, size: 128, elements: !5569)
!5569 = !{!5570, !5571, !5572, !5573, !5574}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5568, file: !199, line: 598, baseType: !220, size: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5568, file: !199, line: 599, baseType: !229, size: 32, offset: 32)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5568, file: !199, line: 600, baseType: !234, size: 32, offset: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5568, file: !199, line: 601, baseType: !729, size: 8, offset: 96)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5568, file: !199, line: 602, baseType: !729, size: 8, offset: 104)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !283, file: !199, line: 793, baseType: !239, size: 32, offset: 5760)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !283, file: !199, line: 795, baseType: !729, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !283, file: !199, line: 796, baseType: !729, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !283, file: !199, line: 797, baseType: !729, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !283, file: !199, line: 798, baseType: !729, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !283, file: !199, line: 799, baseType: !729, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !266, file: !199, line: 110, baseType: !5583, size: 64, offset: 192)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!278, !282, !5581, !28, !47}
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !263, file: !3, line: 84, baseType: !28, size: 64, offset: 256)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_amd_iommu", file: !3, line: 35, size: 2944, elements: !5589)
!5589 = !{!5590, !5591, !5592, !5596, !5597, !5598, !5599, !5600}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5588, file: !3, line: 36, baseType: !109, size: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !5588, file: !3, line: 37, baseType: !3460, size: 2432, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5588, file: !3, line: 38, baseType: !5593, size: 64, offset: 2560)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DICompositeType(tag: DW_TAG_structure_type, name: "amd_iommu", file: !5595, line: 13, flags: DIFlagFwdDecl)
!5595 = !DIFile(filename: "./include/linux/amd-iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cfafef366ae93246726255df25a850b")
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5588, file: !3, line: 39, baseType: !2118, size: 128, offset: 2624)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "max_banks", scope: !5588, file: !3, line: 40, baseType: !95, size: 8, offset: 2752)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "max_counters", scope: !5588, file: !3, line: 41, baseType: !95, size: 8, offset: 2760)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "cntr_assign_mask", scope: !5588, file: !3, line: 42, baseType: !465, size: 64, offset: 2816)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5588, file: !3, line: 43, baseType: !607, size: 32, offset: 2880)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5604, size: 64)
!5604 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !281)
!5607 = !{!0, !5608, !5613, !5618, !5623, !5625, !5628, !5630, !5632, !5634, !5636, !5638, !5643, !5645, !5647, !5649, !5651, !5653, !5655, !5657, !5660, !5662, !5664, !5666, !5668, !5670, !5672, !5674, !5676, !5678, !5680, !5682, !5684, !5686, !5688, !5690, !5692, !5694, !5696, !5698, !5703, !5705, !5708, !5710, !5712, !5714, !5719, !5721, !5723, !5725, !5730, !5733, !5735, !5737, !5742, !5747, !5750, !5753, !5756, !5758, !5761, !5763, !5765, !5767, !5769, !5771, !5773, !5775, !5777, !5779, !5781, !5783, !5785, !5790, !5792, !5794, !5796, !5798, !5803, !5805, !5807, !5809, !5811, !5814, !5816, !5818, !5823, !5825, !5827, !5829}
!5608 = !DIGlobalVariableExpression(var: !5609, expr: !DIExpression())
!5609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !5610, isLocal: true, isDefinition: true)
!5610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 136, elements: !5611)
!5611 = !{!5612}
!5612 = !DISubrange(count: 17)
!5613 = !DIGlobalVariableExpression(var: !5614, expr: !DIExpression())
!5614 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !5615, isLocal: true, isDefinition: true)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 104, elements: !5616)
!5616 = !{!5617}
!5617 = !DISubrange(count: 13)
!5618 = !DIGlobalVariableExpression(var: !5619, expr: !DIExpression())
!5619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !5620, isLocal: true, isDefinition: true)
!5620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 144, elements: !5621)
!5621 = !{!5622}
!5622 = !DISubrange(count: 18)
!5623 = !DIGlobalVariableExpression(var: !5624, expr: !DIExpression())
!5624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !5615, isLocal: true, isDefinition: true)
!5625 = !DIGlobalVariableExpression(var: !5626, expr: !DIExpression())
!5626 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !5627, isLocal: true, isDefinition: true)
!5627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !2621)
!5628 = !DIGlobalVariableExpression(var: !5629, expr: !DIExpression())
!5629 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !5615, isLocal: true, isDefinition: true)
!5630 = !DIGlobalVariableExpression(var: !5631, expr: !DIExpression())
!5631 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !5610, isLocal: true, isDefinition: true)
!5632 = !DIGlobalVariableExpression(var: !5633, expr: !DIExpression())
!5633 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !5615, isLocal: true, isDefinition: true)
!5634 = !DIGlobalVariableExpression(var: !5635, expr: !DIExpression())
!5635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !2118, isLocal: true, isDefinition: true)
!5636 = !DIGlobalVariableExpression(var: !5637, expr: !DIExpression())
!5637 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !5615, isLocal: true, isDefinition: true)
!5638 = !DIGlobalVariableExpression(var: !5639, expr: !DIExpression())
!5639 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !5640, isLocal: true, isDefinition: true)
!5640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 176, elements: !5641)
!5641 = !{!5642}
!5642 = !DISubrange(count: 22)
!5643 = !DIGlobalVariableExpression(var: !5644, expr: !DIExpression())
!5644 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !5615, isLocal: true, isDefinition: true)
!5645 = !DIGlobalVariableExpression(var: !5646, expr: !DIExpression())
!5646 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !5640, isLocal: true, isDefinition: true)
!5647 = !DIGlobalVariableExpression(var: !5648, expr: !DIExpression())
!5648 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !5615, isLocal: true, isDefinition: true)
!5649 = !DIGlobalVariableExpression(var: !5650, expr: !DIExpression())
!5650 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !5640, isLocal: true, isDefinition: true)
!5651 = !DIGlobalVariableExpression(var: !5652, expr: !DIExpression())
!5652 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !5615, isLocal: true, isDefinition: true)
!5653 = !DIGlobalVariableExpression(var: !5654, expr: !DIExpression())
!5654 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !5640, isLocal: true, isDefinition: true)
!5655 = !DIGlobalVariableExpression(var: !5656, expr: !DIExpression())
!5656 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !5615, isLocal: true, isDefinition: true)
!5657 = !DIGlobalVariableExpression(var: !5658, expr: !DIExpression())
!5658 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !5659, isLocal: true, isDefinition: true)
!5659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 96, elements: !4132)
!5660 = !DIGlobalVariableExpression(var: !5661, expr: !DIExpression())
!5661 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !5615, isLocal: true, isDefinition: true)
!5662 = !DIGlobalVariableExpression(var: !5663, expr: !DIExpression())
!5663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !5659, isLocal: true, isDefinition: true)
!5664 = !DIGlobalVariableExpression(var: !5665, expr: !DIExpression())
!5665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !5615, isLocal: true, isDefinition: true)
!5666 = !DIGlobalVariableExpression(var: !5667, expr: !DIExpression())
!5667 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !5620, isLocal: true, isDefinition: true)
!5668 = !DIGlobalVariableExpression(var: !5669, expr: !DIExpression())
!5669 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !5615, isLocal: true, isDefinition: true)
!5670 = !DIGlobalVariableExpression(var: !5671, expr: !DIExpression())
!5671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !5620, isLocal: true, isDefinition: true)
!5672 = !DIGlobalVariableExpression(var: !5673, expr: !DIExpression())
!5673 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !5615, isLocal: true, isDefinition: true)
!5674 = !DIGlobalVariableExpression(var: !5675, expr: !DIExpression())
!5675 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !5620, isLocal: true, isDefinition: true)
!5676 = !DIGlobalVariableExpression(var: !5677, expr: !DIExpression())
!5677 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !5615, isLocal: true, isDefinition: true)
!5678 = !DIGlobalVariableExpression(var: !5679, expr: !DIExpression())
!5679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !5659, isLocal: true, isDefinition: true)
!5680 = !DIGlobalVariableExpression(var: !5681, expr: !DIExpression())
!5681 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !5615, isLocal: true, isDefinition: true)
!5682 = !DIGlobalVariableExpression(var: !5683, expr: !DIExpression())
!5683 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !5659, isLocal: true, isDefinition: true)
!5684 = !DIGlobalVariableExpression(var: !5685, expr: !DIExpression())
!5685 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !5615, isLocal: true, isDefinition: true)
!5686 = !DIGlobalVariableExpression(var: !5687, expr: !DIExpression())
!5687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !5627, isLocal: true, isDefinition: true)
!5688 = !DIGlobalVariableExpression(var: !5689, expr: !DIExpression())
!5689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !5615, isLocal: true, isDefinition: true)
!5690 = !DIGlobalVariableExpression(var: !5691, expr: !DIExpression())
!5691 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !5620, isLocal: true, isDefinition: true)
!5692 = !DIGlobalVariableExpression(var: !5693, expr: !DIExpression())
!5693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !5615, isLocal: true, isDefinition: true)
!5694 = !DIGlobalVariableExpression(var: !5695, expr: !DIExpression())
!5695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !3165, isLocal: true, isDefinition: true)
!5696 = !DIGlobalVariableExpression(var: !5697, expr: !DIExpression())
!5697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !5615, isLocal: true, isDefinition: true)
!5698 = !DIGlobalVariableExpression(var: !5699, expr: !DIExpression())
!5699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !5700, isLocal: true, isDefinition: true)
!5700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 168, elements: !5701)
!5701 = !{!5702}
!5702 = !DISubrange(count: 21)
!5703 = !DIGlobalVariableExpression(var: !5704, expr: !DIExpression())
!5704 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !5615, isLocal: true, isDefinition: true)
!5705 = !DIGlobalVariableExpression(var: !5706, expr: !DIExpression())
!5706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !5707, isLocal: true, isDefinition: true)
!5707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !4099)
!5708 = !DIGlobalVariableExpression(var: !5709, expr: !DIExpression())
!5709 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !5615, isLocal: true, isDefinition: true)
!5710 = !DIGlobalVariableExpression(var: !5711, expr: !DIExpression())
!5711 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !2118, isLocal: true, isDefinition: true)
!5712 = !DIGlobalVariableExpression(var: !5713, expr: !DIExpression())
!5713 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !5615, isLocal: true, isDefinition: true)
!5714 = !DIGlobalVariableExpression(var: !5715, expr: !DIExpression())
!5715 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !5716, isLocal: true, isDefinition: true)
!5716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !5717)
!5717 = !{!5718}
!5718 = !DISubrange(count: 9)
!5719 = !DIGlobalVariableExpression(var: !5720, expr: !DIExpression())
!5720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !5615, isLocal: true, isDefinition: true)
!5721 = !DIGlobalVariableExpression(var: !5722, expr: !DIExpression())
!5722 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !3165, isLocal: true, isDefinition: true)
!5723 = !DIGlobalVariableExpression(var: !5724, expr: !DIExpression())
!5724 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !5615, isLocal: true, isDefinition: true)
!5725 = !DIGlobalVariableExpression(var: !5726, expr: !DIExpression())
!5726 = distinct !DIGlobalVariable(name: "amd_iommu_v2_event_descs", scope: !2, file: !3, line: 101, type: !5727, isLocal: true, isDefinition: true)
!5727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 8000, elements: !5728)
!5728 = !{!5729}
!5729 = !DISubrange(count: 25)
!5730 = !DIGlobalVariableExpression(var: !5731, expr: !DIExpression())
!5731 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !5732, isLocal: true, isDefinition: true)
!5732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !879)
!5733 = !DIGlobalVariableExpression(var: !5734, expr: !DIExpression())
!5734 = distinct !DIGlobalVariable(scope: null, file: !251, line: 480, type: !5700, isLocal: true, isDefinition: true)
!5735 = !DIGlobalVariableExpression(var: !5736, expr: !DIExpression())
!5736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !5615, isLocal: true, isDefinition: true)
!5737 = !DIGlobalVariableExpression(var: !5738, expr: !DIExpression())
!5738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !5739, isLocal: true, isDefinition: true)
!5739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 576, elements: !5740)
!5740 = !{!5741}
!5741 = !DISubrange(count: 72)
!5742 = !DIGlobalVariableExpression(var: !5743, expr: !DIExpression())
!5743 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !5744, isLocal: true, isDefinition: true)
!5744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 384, elements: !5745)
!5745 = !{!5746}
!5746 = !DISubrange(count: 48)
!5747 = !DIGlobalVariableExpression(var: !5748, expr: !DIExpression())
!5748 = distinct !DIGlobalVariable(name: "iommu_pmu", scope: !2, file: !3, line: 406, type: !5749, isLocal: true, isDefinition: true)
!5749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3460)
!5750 = !DIGlobalVariableExpression(var: !5751, expr: !DIExpression())
!5751 = distinct !DIGlobalVariable(name: "amd_iommu_attr_groups", scope: !2, file: !3, line: 399, type: !5752, isLocal: true, isDefinition: true)
!5752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !879)
!5753 = !DIGlobalVariableExpression(var: !5754, expr: !DIExpression())
!5754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !5755, isLocal: true, isDefinition: true)
!5755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 56, elements: !770)
!5756 = !DIGlobalVariableExpression(var: !5757, expr: !DIExpression())
!5757 = distinct !DIGlobalVariable(name: "amd_iommu_format_group", scope: !2, file: !3, line: 70, type: !367, isLocal: true, isDefinition: true)
!5758 = !DIGlobalVariableExpression(var: !5759, expr: !DIExpression())
!5759 = distinct !DIGlobalVariable(name: "iommu_format_attrs", scope: !2, file: !3, line: 59, type: !5760, isLocal: true, isDefinition: true)
!5760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 512, elements: !1370)
!5761 = !DIGlobalVariableExpression(var: !5762, expr: !DIExpression())
!5762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !3165, isLocal: true, isDefinition: true)
!5763 = !DIGlobalVariableExpression(var: !5764, expr: !DIExpression())
!5764 = distinct !DIGlobalVariable(name: "format_attr_csource", scope: !2, file: !3, line: 51, type: !266, isLocal: true, isDefinition: true)
!5765 = !DIGlobalVariableExpression(var: !5766, expr: !DIExpression())
!5766 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !5659, isLocal: true, isDefinition: true)
!5767 = !DIGlobalVariableExpression(var: !5768, expr: !DIExpression())
!5768 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1755, isLocal: true, isDefinition: true)
!5769 = !DIGlobalVariableExpression(var: !5770, expr: !DIExpression())
!5770 = distinct !DIGlobalVariable(name: "format_attr_devid", scope: !2, file: !3, line: 52, type: !266, isLocal: true, isDefinition: true)
!5771 = !DIGlobalVariableExpression(var: !5772, expr: !DIExpression())
!5772 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !5615, isLocal: true, isDefinition: true)
!5773 = !DIGlobalVariableExpression(var: !5774, expr: !DIExpression())
!5774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !1755, isLocal: true, isDefinition: true)
!5775 = !DIGlobalVariableExpression(var: !5776, expr: !DIExpression())
!5776 = distinct !DIGlobalVariable(name: "format_attr_pasid", scope: !2, file: !3, line: 54, type: !266, isLocal: true, isDefinition: true)
!5777 = !DIGlobalVariableExpression(var: !5778, expr: !DIExpression())
!5778 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !5627, isLocal: true, isDefinition: true)
!5779 = !DIGlobalVariableExpression(var: !5780, expr: !DIExpression())
!5780 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !1755, isLocal: true, isDefinition: true)
!5781 = !DIGlobalVariableExpression(var: !5782, expr: !DIExpression())
!5782 = distinct !DIGlobalVariable(name: "format_attr_domid", scope: !2, file: !3, line: 53, type: !266, isLocal: true, isDefinition: true)
!5783 = !DIGlobalVariableExpression(var: !5784, expr: !DIExpression())
!5784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !5627, isLocal: true, isDefinition: true)
!5785 = !DIGlobalVariableExpression(var: !5786, expr: !DIExpression())
!5786 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !5787, isLocal: true, isDefinition: true)
!5787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 88, elements: !5788)
!5788 = !{!5789}
!5789 = !DISubrange(count: 11)
!5790 = !DIGlobalVariableExpression(var: !5791, expr: !DIExpression())
!5791 = distinct !DIGlobalVariable(name: "format_attr_devid_mask", scope: !2, file: !3, line: 55, type: !266, isLocal: true, isDefinition: true)
!5792 = !DIGlobalVariableExpression(var: !5793, expr: !DIExpression())
!5793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !5627, isLocal: true, isDefinition: true)
!5794 = !DIGlobalVariableExpression(var: !5795, expr: !DIExpression())
!5795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !5787, isLocal: true, isDefinition: true)
!5796 = !DIGlobalVariableExpression(var: !5797, expr: !DIExpression())
!5797 = distinct !DIGlobalVariable(name: "format_attr_pasid_mask", scope: !2, file: !3, line: 57, type: !266, isLocal: true, isDefinition: true)
!5798 = !DIGlobalVariableExpression(var: !5799, expr: !DIExpression())
!5799 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !5800, isLocal: true, isDefinition: true)
!5800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 120, elements: !5801)
!5801 = !{!5802}
!5802 = !DISubrange(count: 15)
!5803 = !DIGlobalVariableExpression(var: !5804, expr: !DIExpression())
!5804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !5787, isLocal: true, isDefinition: true)
!5805 = !DIGlobalVariableExpression(var: !5806, expr: !DIExpression())
!5806 = distinct !DIGlobalVariable(name: "format_attr_domid_mask", scope: !2, file: !3, line: 56, type: !266, isLocal: true, isDefinition: true)
!5807 = !DIGlobalVariableExpression(var: !5808, expr: !DIExpression())
!5808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !5800, isLocal: true, isDefinition: true)
!5809 = !DIGlobalVariableExpression(var: !5810, expr: !DIExpression())
!5810 = distinct !DIGlobalVariable(name: "amd_iommu_cpumask_group", scope: !2, file: !3, line: 147, type: !367, isLocal: true, isDefinition: true)
!5811 = !DIGlobalVariableExpression(var: !5812, expr: !DIExpression())
!5812 = distinct !DIGlobalVariable(name: "iommu_cpumask_attrs", scope: !2, file: !3, line: 142, type: !5813, isLocal: true, isDefinition: true)
!5813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 128, elements: !768)
!5814 = !DIGlobalVariableExpression(var: !5815, expr: !DIExpression())
!5815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !3165, isLocal: true, isDefinition: true)
!5816 = !DIGlobalVariableExpression(var: !5817, expr: !DIExpression())
!5817 = distinct !DIGlobalVariable(name: "dev_attr_cpumask", scope: !2, file: !3, line: 140, type: !266, isLocal: true, isDefinition: true)
!5818 = !DIGlobalVariableExpression(var: !5819, expr: !DIExpression())
!5819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !5820, isLocal: true, isDefinition: true)
!5820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 224, elements: !5821)
!5821 = !{!5822}
!5822 = !DISubrange(count: 28)
!5823 = !DIGlobalVariableExpression(var: !5824, expr: !DIExpression())
!5824 = distinct !DIGlobalVariable(name: "perf_amd_iommu_list", scope: !2, file: !3, line: 46, type: !109, isLocal: true, isDefinition: true)
!5825 = !DIGlobalVariableExpression(var: !5826, expr: !DIExpression())
!5826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !5755, isLocal: true, isDefinition: true)
!5827 = !DIGlobalVariableExpression(var: !5828, expr: !DIExpression())
!5828 = distinct !DIGlobalVariable(name: "amd_iommu_events_group", scope: !2, file: !3, line: 78, type: !367, isLocal: true, isDefinition: true)
!5829 = !DIGlobalVariableExpression(var: !5830, expr: !DIExpression())
!5830 = distinct !DIGlobalVariable(name: "iommu_cpumask", scope: !2, file: !3, line: 132, type: !1449, isLocal: true, isDefinition: true)
!5831 = !{i32 7, !"Dwarf Version", i32 5}
!5832 = !{i32 2, !"Debug Info Version", i32 3}
!5833 = !{i32 1, !"wchar_size", i32 2}
!5834 = !{i32 8, !"cf-protection-branch", i32 1}
!5835 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5836 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5837 = !{i32 1, !"Code Model", i32 2}
!5838 = !{i32 1, !"override-stack-alignment", i32 8}
!5839 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5840 = distinct !DISubprogram(name: "__initstub__kmod_iommu__318_489_amd_iommu_pc_init6", scope: !3, file: !3, line: 489, type: !743, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5841 = !DILocation(line: 489, column: 1, scope: !5840)
!5842 = distinct !DISubprogram(name: "amd_iommu_pc_init", scope: !3, file: !3, line: 455, type: !743, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5843 = !{!5844, !5845, !5846}
!5844 = !DILocalVariable(name: "i", scope: !5842, file: !3, line: 457, type: !7)
!5845 = !DILocalVariable(name: "cnt", scope: !5842, file: !3, line: 457, type: !7)
!5846 = !DILocalVariable(name: "ret", scope: !5842, file: !3, line: 458, type: !34)
!5847 = !DILocation(line: 457, column: 2, scope: !5842)
!5848 = !DILocation(line: 457, column: 15, scope: !5842)
!5849 = !DILocation(line: 457, column: 18, scope: !5842)
!5850 = !DILocation(line: 458, column: 2, scope: !5842)
!5851 = !DILocation(line: 458, column: 6, scope: !5842)
!5852 = !DILocation(line: 461, column: 7, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 461, column: 6)
!5854 = !DILocation(line: 461, column: 6, scope: !5842)
!5855 = !DILocation(line: 462, column: 3, scope: !5853)
!5856 = !DILocation(line: 464, column: 8, scope: !5842)
!5857 = !DILocation(line: 464, column: 6, scope: !5842)
!5858 = !DILocation(line: 465, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 465, column: 6)
!5860 = !DILocation(line: 465, column: 6, scope: !5842)
!5861 = !DILocation(line: 466, column: 10, scope: !5859)
!5862 = !DILocation(line: 466, column: 3, scope: !5859)
!5863 = !DILocation(line: 473, column: 9, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 473, column: 2)
!5865 = !DILocation(line: 473, column: 7, scope: !5864)
!5866 = !DILocation(line: 473, column: 14, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 473, column: 2)
!5868 = !DILocation(line: 473, column: 18, scope: !5867)
!5869 = !DILocation(line: 473, column: 16, scope: !5867)
!5870 = !DILocation(line: 473, column: 2, scope: !5864)
!5871 = !DILocation(line: 474, column: 24, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 473, column: 51)
!5873 = !DILocation(line: 474, column: 9, scope: !5872)
!5874 = !DILocation(line: 474, column: 7, scope: !5872)
!5875 = !DILocation(line: 475, column: 8, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 475, column: 7)
!5877 = !DILocation(line: 475, column: 7, scope: !5872)
!5878 = !DILocation(line: 476, column: 7, scope: !5876)
!5879 = !DILocation(line: 476, column: 4, scope: !5876)
!5880 = !DILocation(line: 477, column: 2, scope: !5872)
!5881 = !DILocation(line: 473, column: 47, scope: !5867)
!5882 = !DILocation(line: 473, column: 2, scope: !5867)
!5883 = distinct !{!5883, !5870, !5884, !5885, !5886}
!5884 = !DILocation(line: 477, column: 2, scope: !5864)
!5885 = !{!"llvm.loop.mustprogress"}
!5886 = !{!"llvm.loop.unroll.disable"}
!5887 = !DILocation(line: 479, column: 7, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 479, column: 6)
!5889 = !DILocation(line: 479, column: 6, scope: !5842)
!5890 = !DILocation(line: 480, column: 32, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 479, column: 12)
!5892 = !DILocation(line: 480, column: 3, scope: !5891)
!5893 = !DILocation(line: 481, column: 3, scope: !5891)
!5894 = !DILocation(line: 485, column: 2, scope: !5842)
!5895 = !DILocation(line: 486, column: 2, scope: !5842)
!5896 = !DILocation(line: 487, column: 1, scope: !5842)
!5897 = !DISubprogram(name: "amd_iommu_pc_supported", scope: !5595, file: !5595, line: 199, type: !5200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5898 = distinct !DISubprogram(name: "_init_events_attrs", scope: !3, file: !3, line: 380, type: !743, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5899 = !{!5900, !5901, !5902}
!5900 = !DILocalVariable(name: "i", scope: !5898, file: !3, line: 382, type: !34)
!5901 = !DILocalVariable(name: "j", scope: !5898, file: !3, line: 382, type: !34)
!5902 = !DILocalVariable(name: "attrs", scope: !5898, file: !3, line: 383, type: !5186)
!5903 = !DILocation(line: 382, column: 2, scope: !5898)
!5904 = !DILocation(line: 382, column: 6, scope: !5898)
!5905 = !DILocation(line: 382, column: 13, scope: !5898)
!5906 = !DILocation(line: 383, column: 2, scope: !5898)
!5907 = !DILocation(line: 383, column: 21, scope: !5898)
!5908 = !DILocation(line: 385, column: 2, scope: !5898)
!5909 = !DILocation(line: 385, column: 34, scope: !5898)
!5910 = !DILocation(line: 385, column: 9, scope: !5898)
!5911 = !DILocation(line: 385, column: 37, scope: !5898)
!5912 = !DILocation(line: 385, column: 42, scope: !5898)
!5913 = !DILocation(line: 385, column: 47, scope: !5898)
!5914 = !DILocation(line: 386, column: 4, scope: !5898)
!5915 = distinct !{!5915, !5908, !5914, !5885, !5886}
!5916 = !DILocation(line: 388, column: 18, scope: !5898)
!5917 = !DILocation(line: 388, column: 20, scope: !5898)
!5918 = !DILocation(line: 388, column: 10, scope: !5898)
!5919 = !DILocation(line: 388, column: 8, scope: !5898)
!5920 = !DILocation(line: 389, column: 7, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 389, column: 6)
!5922 = !DILocation(line: 389, column: 6, scope: !5898)
!5923 = !DILocation(line: 390, column: 3, scope: !5921)
!5924 = !DILocation(line: 392, column: 9, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 392, column: 2)
!5926 = !DILocation(line: 392, column: 7, scope: !5925)
!5927 = !DILocation(line: 392, column: 14, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 392, column: 2)
!5929 = !DILocation(line: 392, column: 18, scope: !5928)
!5930 = !DILocation(line: 392, column: 16, scope: !5928)
!5931 = !DILocation(line: 392, column: 2, scope: !5925)
!5932 = !DILocation(line: 393, column: 40, scope: !5928)
!5933 = !DILocation(line: 393, column: 15, scope: !5928)
!5934 = !DILocation(line: 393, column: 43, scope: !5928)
!5935 = !DILocation(line: 393, column: 48, scope: !5928)
!5936 = !DILocation(line: 393, column: 3, scope: !5928)
!5937 = !DILocation(line: 393, column: 9, scope: !5928)
!5938 = !DILocation(line: 393, column: 12, scope: !5928)
!5939 = !DILocation(line: 392, column: 22, scope: !5928)
!5940 = !DILocation(line: 392, column: 2, scope: !5928)
!5941 = distinct !{!5941, !5931, !5942, !5885, !5886}
!5942 = !DILocation(line: 393, column: 48, scope: !5925)
!5943 = !DILocation(line: 395, column: 33, scope: !5898)
!5944 = !DILocation(line: 395, column: 31, scope: !5898)
!5945 = !DILocation(line: 396, column: 2, scope: !5898)
!5946 = !DILocation(line: 397, column: 1, scope: !5898)
!5947 = !DISubprogram(name: "amd_iommu_get_num_iommus", scope: !5595, file: !5595, line: 198, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5948 = distinct !DISubprogram(name: "init_one_iommu", scope: !3, file: !3, line: 418, type: !5949, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5951)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!34, !7}
!5951 = !{!5952, !5953, !5954}
!5952 = !DILocalVariable(name: "idx", arg: 1, scope: !5948, file: !3, line: 418, type: !7)
!5953 = !DILocalVariable(name: "perf_iommu", scope: !5948, file: !3, line: 420, type: !5587)
!5954 = !DILocalVariable(name: "ret", scope: !5948, file: !3, line: 421, type: !34)
!5955 = !DILocation(line: 418, column: 47, scope: !5948)
!5956 = !DILocation(line: 420, column: 2, scope: !5948)
!5957 = !DILocation(line: 420, column: 25, scope: !5948)
!5958 = !DILocation(line: 421, column: 2, scope: !5948)
!5959 = !DILocation(line: 421, column: 6, scope: !5948)
!5960 = !DILocation(line: 423, column: 15, scope: !5948)
!5961 = !DILocation(line: 423, column: 13, scope: !5948)
!5962 = !DILocation(line: 424, column: 7, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 424, column: 6)
!5964 = !DILocation(line: 424, column: 6, scope: !5948)
!5965 = !DILocation(line: 425, column: 3, scope: !5963)
!5966 = !DILocation(line: 427, column: 2, scope: !5948)
!5967 = !DILocation(line: 427, column: 2, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 427, column: 2)
!5969 = !DILocation(line: 429, column: 2, scope: !5948)
!5970 = !DILocation(line: 429, column: 14, scope: !5948)
!5971 = !DILocation(line: 429, column: 29, scope: !5948)
!5972 = !DILocation(line: 430, column: 43, scope: !5948)
!5973 = !DILocation(line: 430, column: 29, scope: !5948)
!5974 = !DILocation(line: 430, column: 2, scope: !5948)
!5975 = !DILocation(line: 430, column: 14, scope: !5948)
!5976 = !DILocation(line: 430, column: 27, scope: !5948)
!5977 = !DILocation(line: 431, column: 56, scope: !5948)
!5978 = !DILocation(line: 431, column: 29, scope: !5948)
!5979 = !DILocation(line: 431, column: 2, scope: !5948)
!5980 = !DILocation(line: 431, column: 14, scope: !5948)
!5981 = !DILocation(line: 431, column: 27, scope: !5948)
!5982 = !DILocation(line: 432, column: 59, scope: !5948)
!5983 = !DILocation(line: 432, column: 29, scope: !5948)
!5984 = !DILocation(line: 432, column: 2, scope: !5948)
!5985 = !DILocation(line: 432, column: 14, scope: !5948)
!5986 = !DILocation(line: 432, column: 27, scope: !5948)
!5987 = !DILocation(line: 434, column: 7, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 434, column: 6)
!5989 = !DILocation(line: 434, column: 19, scope: !5988)
!5990 = !DILocation(line: 434, column: 25, scope: !5988)
!5991 = !DILocation(line: 435, column: 7, scope: !5988)
!5992 = !DILocation(line: 435, column: 19, scope: !5988)
!5993 = !DILocation(line: 435, column: 29, scope: !5988)
!5994 = !DILocation(line: 436, column: 7, scope: !5988)
!5995 = !DILocation(line: 436, column: 19, scope: !5988)
!5996 = !DILocation(line: 434, column: 6, scope: !5948)
!5997 = !DILocation(line: 437, column: 9, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 436, column: 33)
!5999 = !DILocation(line: 437, column: 3, scope: !5998)
!6000 = !DILocation(line: 438, column: 3, scope: !5998)
!6001 = !DILocation(line: 441, column: 11, scope: !5948)
!6002 = !DILocation(line: 441, column: 23, scope: !5948)
!6003 = !DILocation(line: 441, column: 62, scope: !5948)
!6004 = !DILocation(line: 441, column: 2, scope: !5948)
!6005 = !DILocation(line: 443, column: 27, scope: !5948)
!6006 = !DILocation(line: 443, column: 39, scope: !5948)
!6007 = !DILocation(line: 443, column: 44, scope: !5948)
!6008 = !DILocation(line: 443, column: 56, scope: !5948)
!6009 = !DILocation(line: 443, column: 8, scope: !5948)
!6010 = !DILocation(line: 443, column: 6, scope: !5948)
!6011 = !DILocation(line: 444, column: 7, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 444, column: 6)
!6013 = !DILocation(line: 444, column: 6, scope: !5948)
!6014 = !DILocation(line: 445, column: 3, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 445, column: 3)
!6016 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 444, column: 12)
!6017 = !DILocation(line: 445, column: 3, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 445, column: 3)
!6019 = !DILocation(line: 447, column: 18, scope: !6016)
!6020 = !DILocation(line: 447, column: 30, scope: !6016)
!6021 = !DILocation(line: 447, column: 3, scope: !6016)
!6022 = !DILocation(line: 448, column: 2, scope: !6016)
!6023 = !DILocation(line: 449, column: 3, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 449, column: 3)
!6025 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 448, column: 9)
!6026 = !DILocation(line: 449, column: 3, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 449, column: 3)
!6028 = !DILocation(line: 450, column: 9, scope: !6025)
!6029 = !DILocation(line: 450, column: 3, scope: !6025)
!6030 = !DILocation(line: 452, column: 9, scope: !5948)
!6031 = !DILocation(line: 452, column: 2, scope: !5948)
!6032 = !DILocation(line: 453, column: 1, scope: !5948)
!6033 = !DISubprogram(name: "kfree", scope: !251, file: !251, line: 227, type: !6034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{null, !1635}
!6036 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !1450, file: !1450, line: 469, type: !6037, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{null, !7, !6039}
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!6040 = !{!6041, !6042}
!6041 = !DILocalVariable(name: "cpu", arg: 1, scope: !6036, file: !1450, line: 469, type: !7)
!6042 = !DILocalVariable(name: "dstp", arg: 2, scope: !6036, file: !1450, line: 469, type: !6039)
!6043 = !DILocation(line: 469, column: 58, scope: !6036)
!6044 = !DILocation(line: 469, column: 79, scope: !6036)
!6045 = !DILocation(line: 471, column: 24, scope: !6036)
!6046 = !DILocation(line: 471, column: 10, scope: !6036)
!6047 = !DILocation(line: 471, column: 30, scope: !6036)
!6048 = !DILocation(line: 471, column: 2, scope: !6036)
!6049 = !DILocation(line: 472, column: 1, scope: !6036)
!6050 = distinct !DISubprogram(name: "kcalloc", scope: !251, file: !251, line: 666, type: !6051, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6053)
!6051 = !DISubroutineType(types: !6052)
!6052 = !{!32, !47, !47, !261}
!6053 = !{!6054, !6055, !6056}
!6054 = !DILocalVariable(name: "n", arg: 1, scope: !6050, file: !251, line: 666, type: !47)
!6055 = !DILocalVariable(name: "size", arg: 2, scope: !6050, file: !251, line: 666, type: !47)
!6056 = !DILocalVariable(name: "flags", arg: 3, scope: !6050, file: !251, line: 666, type: !261)
!6057 = !DILocation(line: 666, column: 55, scope: !6050)
!6058 = !DILocation(line: 666, column: 65, scope: !6050)
!6059 = !DILocation(line: 666, column: 77, scope: !6050)
!6060 = !DILocation(line: 668, column: 23, scope: !6050)
!6061 = !DILocation(line: 668, column: 26, scope: !6050)
!6062 = !DILocation(line: 668, column: 32, scope: !6050)
!6063 = !DILocation(line: 668, column: 38, scope: !6050)
!6064 = !DILocation(line: 668, column: 9, scope: !6050)
!6065 = !DILocation(line: 668, column: 2, scope: !6050)
!6066 = distinct !DISubprogram(name: "_iommu_event_show", scope: !3, file: !3, line: 87, type: !276, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6067)
!6067 = !{!6068, !6069, !6070, !6071, !6072}
!6068 = !DILocalVariable(name: "dev", arg: 1, scope: !6066, file: !3, line: 87, type: !282)
!6069 = !DILocalVariable(name: "attr", arg: 2, scope: !6066, file: !3, line: 88, type: !5581)
!6070 = !DILocalVariable(name: "buf", arg: 3, scope: !6066, file: !3, line: 88, type: !327)
!6071 = !DILocalVariable(name: "event", scope: !6066, file: !3, line: 90, type: !262)
!6072 = !DILocalVariable(name: "__mptr", scope: !6073, file: !3, line: 91, type: !32)
!6073 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 91, column: 3)
!6074 = !DILocation(line: 87, column: 49, scope: !6066)
!6075 = !DILocation(line: 88, column: 30, scope: !6066)
!6076 = !DILocation(line: 88, column: 42, scope: !6066)
!6077 = !DILocation(line: 90, column: 2, scope: !6066)
!6078 = !DILocation(line: 90, column: 31, scope: !6066)
!6079 = !DILocation(line: 91, column: 3, scope: !6073)
!6080 = !DILocation(line: 91, column: 3, scope: !6066)
!6081 = !DILocation(line: 92, column: 17, scope: !6066)
!6082 = !DILocation(line: 92, column: 30, scope: !6066)
!6083 = !DILocation(line: 92, column: 37, scope: !6066)
!6084 = !DILocation(line: 92, column: 9, scope: !6066)
!6085 = !DILocation(line: 93, column: 1, scope: !6066)
!6086 = !DILocation(line: 92, column: 2, scope: !6066)
!6087 = !DISubprogram(name: "sprintf", scope: !6088, file: !6088, line: 10, type: !6089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!34, !327, !28, null}
!6091 = distinct !DISubprogram(name: "kmalloc_array", scope: !251, file: !251, line: 629, type: !6051, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6092)
!6092 = !{!6093, !6094, !6095, !6096}
!6093 = !DILocalVariable(name: "n", arg: 1, scope: !6091, file: !251, line: 629, type: !47)
!6094 = !DILocalVariable(name: "size", arg: 2, scope: !6091, file: !251, line: 629, type: !47)
!6095 = !DILocalVariable(name: "flags", arg: 3, scope: !6091, file: !251, line: 629, type: !261)
!6096 = !DILocalVariable(name: "bytes", scope: !6091, file: !251, line: 631, type: !47)
!6097 = !DILocation(line: 629, column: 61, scope: !6091)
!6098 = !DILocation(line: 629, column: 71, scope: !6091)
!6099 = !DILocation(line: 629, column: 83, scope: !6091)
!6100 = !DILocation(line: 631, column: 2, scope: !6091)
!6101 = !DILocation(line: 631, column: 9, scope: !6091)
!6102 = !DILocation(line: 633, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6091, file: !251, line: 633, column: 6)
!6104 = !DILocation(line: 633, column: 6, scope: !6091)
!6105 = !DILocation(line: 634, column: 3, scope: !6103)
!6106 = !DILocation(line: 635, column: 27, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6091, file: !251, line: 635, column: 6)
!6108 = !DILocation(line: 635, column: 6, scope: !6107)
!6109 = !DILocation(line: 635, column: 30, scope: !6107)
!6110 = !DILocation(line: 635, column: 54, scope: !6107)
!6111 = !DILocation(line: 635, column: 33, scope: !6107)
!6112 = !DILocation(line: 635, column: 6, scope: !6091)
!6113 = !DILocation(line: 636, column: 18, scope: !6107)
!6114 = !DILocation(line: 636, column: 25, scope: !6107)
!6115 = !DILocation(line: 636, column: 10, scope: !6107)
!6116 = !DILocation(line: 636, column: 3, scope: !6107)
!6117 = !DILocation(line: 637, column: 19, scope: !6091)
!6118 = !DILocation(line: 637, column: 26, scope: !6091)
!6119 = !DILocation(line: 637, column: 9, scope: !6091)
!6120 = !DILocation(line: 637, column: 2, scope: !6091)
!6121 = !DILocation(line: 638, column: 1, scope: !6091)
!6122 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6123, file: !6123, line: 51, type: !6124, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6126)
!6123 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!729, !729}
!6126 = !{!6127}
!6127 = !DILocalVariable(name: "overflow", arg: 1, scope: !6122, file: !6123, line: 51, type: !729)
!6128 = !DILocation(line: 51, column: 60, scope: !6122)
!6129 = !DILocation(line: 53, column: 9, scope: !6122)
!6130 = !{i8 0, i8 2}
!6131 = !DILocation(line: 53, column: 2, scope: !6122)
!6132 = distinct !DISubprogram(name: "kmalloc", scope: !251, file: !251, line: 591, type: !6133, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6135)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!32, !47, !261}
!6135 = !{!6136, !6137, !6138}
!6136 = !DILocalVariable(name: "size", arg: 1, scope: !6132, file: !251, line: 591, type: !47)
!6137 = !DILocalVariable(name: "flags", arg: 2, scope: !6132, file: !251, line: 591, type: !261)
!6138 = !DILocalVariable(name: "index", scope: !6139, file: !251, line: 594, type: !7)
!6139 = distinct !DILexicalBlock(scope: !6140, file: !251, line: 593, column: 42)
!6140 = distinct !DILexicalBlock(scope: !6132, file: !251, line: 593, column: 6)
!6141 = !DILocation(line: 591, column: 61, scope: !6132)
!6142 = !DILocation(line: 591, column: 73, scope: !6132)
!6143 = !DILocation(line: 593, column: 27, scope: !6140)
!6144 = !DILocation(line: 593, column: 6, scope: !6140)
!6145 = !DILocation(line: 593, column: 33, scope: !6140)
!6146 = !DILocation(line: 593, column: 36, scope: !6140)
!6147 = !DILocation(line: 593, column: 6, scope: !6132)
!6148 = !DILocation(line: 594, column: 3, scope: !6139)
!6149 = !DILocation(line: 594, column: 16, scope: !6139)
!6150 = !DILocation(line: 596, column: 7, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6139, file: !251, line: 596, column: 7)
!6152 = !DILocation(line: 596, column: 12, scope: !6151)
!6153 = !DILocation(line: 596, column: 7, scope: !6139)
!6154 = !DILocation(line: 597, column: 25, scope: !6151)
!6155 = !DILocation(line: 597, column: 31, scope: !6151)
!6156 = !DILocation(line: 597, column: 11, scope: !6151)
!6157 = !DILocation(line: 597, column: 4, scope: !6151)
!6158 = !DILocation(line: 599, column: 11, scope: !6139)
!6159 = !DILocation(line: 599, column: 9, scope: !6139)
!6160 = !DILocation(line: 601, column: 33, scope: !6139)
!6161 = !DILocation(line: 601, column: 40, scope: !6139)
!6162 = !DILocation(line: 601, column: 20, scope: !6139)
!6163 = !DILocation(line: 601, column: 5, scope: !6139)
!6164 = !DILocation(line: 601, column: 51, scope: !6139)
!6165 = !DILocation(line: 602, column: 5, scope: !6139)
!6166 = !DILocation(line: 602, column: 12, scope: !6139)
!6167 = !DILocation(line: 600, column: 10, scope: !6139)
!6168 = !DILocation(line: 600, column: 3, scope: !6139)
!6169 = !DILocation(line: 603, column: 2, scope: !6140)
!6170 = !DILocation(line: 604, column: 19, scope: !6132)
!6171 = !DILocation(line: 604, column: 25, scope: !6132)
!6172 = !DILocation(line: 604, column: 9, scope: !6132)
!6173 = !DILocation(line: 604, column: 2, scope: !6132)
!6174 = !DILocation(line: 605, column: 1, scope: !6132)
!6175 = !DISubprogram(name: "__kmalloc", scope: !251, file: !251, line: 488, type: !6133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6176 = !DISubprogram(name: "kmalloc_large", scope: !251, file: !251, line: 531, type: !6133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6177 = distinct !DISubprogram(name: "__kmalloc_index", scope: !251, file: !251, line: 444, type: !6178, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!7, !47, !729}
!6180 = !{!6181, !6182}
!6181 = !DILocalVariable(name: "size", arg: 1, scope: !6177, file: !251, line: 444, type: !47)
!6182 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6177, file: !251, line: 445, type: !729)
!6183 = !DILocation(line: 444, column: 60, scope: !6177)
!6184 = !DILocation(line: 445, column: 16, scope: !6177)
!6185 = !DILocation(line: 447, column: 7, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 447, column: 6)
!6187 = !DILocation(line: 447, column: 6, scope: !6177)
!6188 = !DILocation(line: 448, column: 3, scope: !6186)
!6189 = !DILocation(line: 450, column: 6, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 450, column: 6)
!6191 = !DILocation(line: 450, column: 11, scope: !6190)
!6192 = !DILocation(line: 450, column: 6, scope: !6177)
!6193 = !DILocation(line: 451, column: 3, scope: !6190)
!6194 = !DILocation(line: 453, column: 32, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 453, column: 6)
!6196 = !DILocation(line: 453, column: 37, scope: !6195)
!6197 = !DILocation(line: 453, column: 42, scope: !6195)
!6198 = !DILocation(line: 453, column: 45, scope: !6195)
!6199 = !DILocation(line: 453, column: 50, scope: !6195)
!6200 = !DILocation(line: 453, column: 6, scope: !6177)
!6201 = !DILocation(line: 454, column: 3, scope: !6195)
!6202 = !DILocation(line: 455, column: 32, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 455, column: 6)
!6204 = !DILocation(line: 455, column: 37, scope: !6203)
!6205 = !DILocation(line: 455, column: 43, scope: !6203)
!6206 = !DILocation(line: 455, column: 46, scope: !6203)
!6207 = !DILocation(line: 455, column: 51, scope: !6203)
!6208 = !DILocation(line: 455, column: 6, scope: !6177)
!6209 = !DILocation(line: 456, column: 3, scope: !6203)
!6210 = !DILocation(line: 457, column: 6, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 457, column: 6)
!6212 = !DILocation(line: 457, column: 11, scope: !6211)
!6213 = !DILocation(line: 457, column: 6, scope: !6177)
!6214 = !DILocation(line: 457, column: 26, scope: !6211)
!6215 = !DILocation(line: 458, column: 6, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 458, column: 6)
!6217 = !DILocation(line: 458, column: 11, scope: !6216)
!6218 = !DILocation(line: 458, column: 6, scope: !6177)
!6219 = !DILocation(line: 458, column: 26, scope: !6216)
!6220 = !DILocation(line: 459, column: 6, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 459, column: 6)
!6222 = !DILocation(line: 459, column: 11, scope: !6221)
!6223 = !DILocation(line: 459, column: 6, scope: !6177)
!6224 = !DILocation(line: 459, column: 26, scope: !6221)
!6225 = !DILocation(line: 460, column: 6, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 460, column: 6)
!6227 = !DILocation(line: 460, column: 11, scope: !6226)
!6228 = !DILocation(line: 460, column: 6, scope: !6177)
!6229 = !DILocation(line: 460, column: 26, scope: !6226)
!6230 = !DILocation(line: 461, column: 6, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 461, column: 6)
!6232 = !DILocation(line: 461, column: 11, scope: !6231)
!6233 = !DILocation(line: 461, column: 6, scope: !6177)
!6234 = !DILocation(line: 461, column: 26, scope: !6231)
!6235 = !DILocation(line: 462, column: 6, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 462, column: 6)
!6237 = !DILocation(line: 462, column: 11, scope: !6236)
!6238 = !DILocation(line: 462, column: 6, scope: !6177)
!6239 = !DILocation(line: 462, column: 26, scope: !6236)
!6240 = !DILocation(line: 463, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 463, column: 6)
!6242 = !DILocation(line: 463, column: 11, scope: !6241)
!6243 = !DILocation(line: 463, column: 6, scope: !6177)
!6244 = !DILocation(line: 463, column: 26, scope: !6241)
!6245 = !DILocation(line: 464, column: 6, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 464, column: 6)
!6247 = !DILocation(line: 464, column: 11, scope: !6246)
!6248 = !DILocation(line: 464, column: 6, scope: !6177)
!6249 = !DILocation(line: 464, column: 26, scope: !6246)
!6250 = !DILocation(line: 465, column: 6, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 465, column: 6)
!6252 = !DILocation(line: 465, column: 11, scope: !6251)
!6253 = !DILocation(line: 465, column: 6, scope: !6177)
!6254 = !DILocation(line: 465, column: 26, scope: !6251)
!6255 = !DILocation(line: 466, column: 6, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 466, column: 6)
!6257 = !DILocation(line: 466, column: 11, scope: !6256)
!6258 = !DILocation(line: 466, column: 6, scope: !6177)
!6259 = !DILocation(line: 466, column: 26, scope: !6256)
!6260 = !DILocation(line: 467, column: 6, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 467, column: 6)
!6262 = !DILocation(line: 467, column: 11, scope: !6261)
!6263 = !DILocation(line: 467, column: 6, scope: !6177)
!6264 = !DILocation(line: 467, column: 26, scope: !6261)
!6265 = !DILocation(line: 468, column: 6, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 468, column: 6)
!6267 = !DILocation(line: 468, column: 11, scope: !6266)
!6268 = !DILocation(line: 468, column: 6, scope: !6177)
!6269 = !DILocation(line: 468, column: 26, scope: !6266)
!6270 = !DILocation(line: 469, column: 6, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 469, column: 6)
!6272 = !DILocation(line: 469, column: 11, scope: !6271)
!6273 = !DILocation(line: 469, column: 6, scope: !6177)
!6274 = !DILocation(line: 469, column: 26, scope: !6271)
!6275 = !DILocation(line: 470, column: 6, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 470, column: 6)
!6277 = !DILocation(line: 470, column: 11, scope: !6276)
!6278 = !DILocation(line: 470, column: 6, scope: !6177)
!6279 = !DILocation(line: 470, column: 26, scope: !6276)
!6280 = !DILocation(line: 471, column: 6, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 471, column: 6)
!6282 = !DILocation(line: 471, column: 11, scope: !6281)
!6283 = !DILocation(line: 471, column: 6, scope: !6177)
!6284 = !DILocation(line: 471, column: 26, scope: !6281)
!6285 = !DILocation(line: 472, column: 6, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 472, column: 6)
!6287 = !DILocation(line: 472, column: 11, scope: !6286)
!6288 = !DILocation(line: 472, column: 6, scope: !6177)
!6289 = !DILocation(line: 472, column: 26, scope: !6286)
!6290 = !DILocation(line: 473, column: 6, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 473, column: 6)
!6292 = !DILocation(line: 473, column: 11, scope: !6291)
!6293 = !DILocation(line: 473, column: 6, scope: !6177)
!6294 = !DILocation(line: 473, column: 26, scope: !6291)
!6295 = !DILocation(line: 474, column: 6, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 474, column: 6)
!6297 = !DILocation(line: 474, column: 11, scope: !6296)
!6298 = !DILocation(line: 474, column: 6, scope: !6177)
!6299 = !DILocation(line: 474, column: 27, scope: !6296)
!6300 = !DILocation(line: 475, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 475, column: 6)
!6302 = !DILocation(line: 475, column: 11, scope: !6301)
!6303 = !DILocation(line: 475, column: 6, scope: !6177)
!6304 = !DILocation(line: 475, column: 32, scope: !6301)
!6305 = !DILocation(line: 477, column: 50, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6177, file: !251, line: 477, column: 6)
!6307 = !DILocation(line: 477, column: 6, scope: !6177)
!6308 = !DILocation(line: 478, column: 3, scope: !6306)
!6309 = !DILocation(line: 478, column: 3, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !251, line: 478, column: 3)
!6311 = distinct !DILexicalBlock(scope: !6306, file: !251, line: 478, column: 3)
!6312 = !{i32 -2141835579}
!6313 = !DILocation(line: 478, column: 3, scope: !6311)
!6314 = !DILocation(line: 480, column: 3, scope: !6306)
!6315 = !DILocation(line: 480, column: 3, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6306, file: !251, line: 480, column: 3)
!6317 = !DILocation(line: 480, column: 3, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6316, file: !251, line: 480, column: 3)
!6319 = !DILocation(line: 480, column: 3, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6316, file: !251, line: 480, column: 3)
!6321 = !{i64 2153131920, i64 2153131949, i64 2153131995, i64 2153132053, i64 2153132107, i64 2153132161, i64 2153132216, i64 2153132247}
!6322 = !DILocation(line: 483, column: 2, scope: !6177)
!6323 = !DILocation(line: 484, column: 1, scope: !6177)
!6324 = !DISubprogram(name: "kmalloc_trace", scope: !251, file: !251, line: 525, type: !6325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6325 = !DISubroutineType(types: !6326)
!6326 = !{!32, !3548, !261, !47}
!6327 = distinct !DISubprogram(name: "kmalloc_type", scope: !251, file: !251, line: 401, type: !6328, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6330)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!250, !261, !51}
!6330 = !{!6331, !6332}
!6331 = !DILocalVariable(name: "flags", arg: 1, scope: !6327, file: !251, line: 401, type: !261)
!6332 = !DILocalVariable(name: "caller", arg: 2, scope: !6327, file: !251, line: 401, type: !51)
!6333 = !DILocation(line: 401, column: 67, scope: !6327)
!6334 = !DILocation(line: 401, column: 88, scope: !6327)
!6335 = !DILocation(line: 407, column: 6, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6327, file: !251, line: 407, column: 6)
!6337 = !DILocation(line: 407, column: 6, scope: !6327)
!6338 = !DILocation(line: 413, column: 3, scope: !6336)
!6339 = !DILocation(line: 423, column: 38, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6327, file: !251, line: 423, column: 6)
!6341 = !DILocation(line: 423, column: 44, scope: !6340)
!6342 = !DILocation(line: 423, column: 6, scope: !6327)
!6343 = !DILocation(line: 424, column: 3, scope: !6340)
!6344 = !DILocation(line: 426, column: 3, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6327, file: !251, line: 425, column: 6)
!6346 = !DILocation(line: 429, column: 1, scope: !6327)
!6347 = !DISubprogram(name: "__compiletime_assert_227", scope: !251, file: !251, line: 478, type: !1014, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6348 = distinct !DISubprogram(name: "kzalloc", scope: !251, file: !251, line: 719, type: !6133, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6349)
!6349 = !{!6350, !6351}
!6350 = !DILocalVariable(name: "size", arg: 1, scope: !6348, file: !251, line: 719, type: !47)
!6351 = !DILocalVariable(name: "flags", arg: 2, scope: !6348, file: !251, line: 719, type: !261)
!6352 = !DILocation(line: 719, column: 52, scope: !6348)
!6353 = !DILocation(line: 719, column: 64, scope: !6348)
!6354 = !DILocation(line: 721, column: 17, scope: !6348)
!6355 = !DILocation(line: 721, column: 23, scope: !6348)
!6356 = !DILocation(line: 721, column: 29, scope: !6348)
!6357 = !DILocation(line: 721, column: 9, scope: !6348)
!6358 = !DILocation(line: 721, column: 2, scope: !6348)
!6359 = !DISubprogram(name: "get_amd_iommu", scope: !5595, file: !5595, line: 206, type: !6360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{!5593, !7}
!6362 = !DISubprogram(name: "amd_iommu_pc_get_max_banks", scope: !5595, file: !5595, line: 200, type: !6363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!95, !7}
!6365 = !DISubprogram(name: "amd_iommu_pc_get_max_counters", scope: !5595, file: !5595, line: 201, type: !6363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6366 = !DISubprogram(name: "snprintf", scope: !6088, file: !6088, line: 12, type: !6367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!34, !327, !47, !28, null}
!6369 = !DISubprogram(name: "perf_pmu_register", scope: !157, file: !157, line: 1080, type: !6370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!34, !3459, !28, !34}
!6372 = !DISubprogram(name: "_printk", scope: !6373, file: !6373, line: 153, type: !6374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6373 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!34, !28, null}
!6376 = distinct !DISubprogram(name: "list_add_tail", scope: !6377, file: !6377, line: 181, type: !6378, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6380)
!6377 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6378 = !DISubroutineType(types: !6379)
!6379 = !{null, !112, !112}
!6380 = !{!6381, !6382}
!6381 = !DILocalVariable(name: "new", arg: 1, scope: !6376, file: !6377, line: 181, type: !112)
!6382 = !DILocalVariable(name: "head", arg: 2, scope: !6376, file: !6377, line: 181, type: !112)
!6383 = !DILocation(line: 181, column: 52, scope: !6376)
!6384 = !DILocation(line: 181, column: 75, scope: !6376)
!6385 = !DILocation(line: 183, column: 13, scope: !6376)
!6386 = !DILocation(line: 183, column: 18, scope: !6376)
!6387 = !DILocation(line: 183, column: 24, scope: !6376)
!6388 = !DILocation(line: 183, column: 30, scope: !6376)
!6389 = !DILocation(line: 183, column: 2, scope: !6376)
!6390 = !DILocation(line: 184, column: 1, scope: !6376)
!6391 = distinct !DISubprogram(name: "perf_iommu_event_init", scope: !3, file: !3, line: 206, type: !3512, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6392)
!6392 = !{!6393, !6394}
!6393 = !DILocalVariable(name: "event", arg: 1, scope: !6391, file: !3, line: 206, type: !3442)
!6394 = !DILocalVariable(name: "hwc", scope: !6391, file: !3, line: 208, type: !6395)
!6395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!6396 = !DILocation(line: 206, column: 53, scope: !6391)
!6397 = !DILocation(line: 208, column: 2, scope: !6391)
!6398 = !DILocation(line: 208, column: 24, scope: !6391)
!6399 = !DILocation(line: 208, column: 31, scope: !6391)
!6400 = !DILocation(line: 208, column: 38, scope: !6391)
!6401 = !DILocation(line: 211, column: 6, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 211, column: 6)
!6403 = !DILocation(line: 211, column: 13, scope: !6402)
!6404 = !DILocation(line: 211, column: 18, scope: !6402)
!6405 = !DILocation(line: 211, column: 26, scope: !6402)
!6406 = !DILocation(line: 211, column: 33, scope: !6402)
!6407 = !DILocation(line: 211, column: 38, scope: !6402)
!6408 = !DILocation(line: 211, column: 23, scope: !6402)
!6409 = !DILocation(line: 211, column: 6, scope: !6391)
!6410 = !DILocation(line: 212, column: 3, scope: !6402)
!6411 = !DILocation(line: 219, column: 24, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 219, column: 6)
!6413 = !DILocation(line: 219, column: 6, scope: !6412)
!6414 = !DILocation(line: 219, column: 31, scope: !6412)
!6415 = !DILocation(line: 219, column: 34, scope: !6412)
!6416 = !DILocation(line: 219, column: 41, scope: !6412)
!6417 = !DILocation(line: 219, column: 54, scope: !6412)
!6418 = !DILocation(line: 219, column: 6, scope: !6391)
!6419 = !DILocation(line: 220, column: 3, scope: !6412)
!6420 = !DILocation(line: 222, column: 6, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 222, column: 6)
!6422 = !DILocation(line: 222, column: 13, scope: !6421)
!6423 = !DILocation(line: 222, column: 17, scope: !6421)
!6424 = !DILocation(line: 222, column: 6, scope: !6391)
!6425 = !DILocation(line: 223, column: 3, scope: !6421)
!6426 = !DILocation(line: 226, column: 15, scope: !6391)
!6427 = !DILocation(line: 226, column: 22, scope: !6391)
!6428 = !DILocation(line: 226, column: 27, scope: !6391)
!6429 = !DILocation(line: 226, column: 2, scope: !6391)
!6430 = !DILocation(line: 226, column: 7, scope: !6391)
!6431 = !DILocation(line: 226, column: 13, scope: !6391)
!6432 = !DILocation(line: 227, column: 15, scope: !6391)
!6433 = !DILocation(line: 227, column: 22, scope: !6391)
!6434 = !DILocation(line: 227, column: 27, scope: !6391)
!6435 = !DILocation(line: 227, column: 2, scope: !6391)
!6436 = !DILocation(line: 227, column: 7, scope: !6391)
!6437 = !DILocation(line: 227, column: 13, scope: !6391)
!6438 = !DILocation(line: 229, column: 2, scope: !6391)
!6439 = !DILocation(line: 230, column: 1, scope: !6391)
!6440 = distinct !DISubprogram(name: "perf_iommu_add", scope: !3, file: !3, line: 348, type: !3521, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6441)
!6441 = !{!6442, !6443, !6444}
!6442 = !DILocalVariable(name: "event", arg: 1, scope: !6440, file: !3, line: 348, type: !3442)
!6443 = !DILocalVariable(name: "flags", arg: 2, scope: !6440, file: !3, line: 348, type: !34)
!6444 = !DILocalVariable(name: "retval", scope: !6440, file: !3, line: 350, type: !34)
!6445 = !DILocation(line: 348, column: 46, scope: !6440)
!6446 = !DILocation(line: 348, column: 57, scope: !6440)
!6447 = !DILocation(line: 350, column: 2, scope: !6440)
!6448 = !DILocation(line: 350, column: 6, scope: !6440)
!6449 = !DILocation(line: 352, column: 2, scope: !6440)
!6450 = !DILocation(line: 352, column: 9, scope: !6440)
!6451 = !DILocation(line: 352, column: 12, scope: !6440)
!6452 = !DILocation(line: 352, column: 18, scope: !6440)
!6453 = !DILocation(line: 355, column: 41, scope: !6440)
!6454 = !DILocation(line: 355, column: 11, scope: !6440)
!6455 = !DILocation(line: 355, column: 9, scope: !6440)
!6456 = !DILocation(line: 356, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 356, column: 6)
!6458 = !DILocation(line: 356, column: 6, scope: !6440)
!6459 = !DILocation(line: 357, column: 10, scope: !6457)
!6460 = !DILocation(line: 357, column: 3, scope: !6457)
!6461 = !DILocation(line: 359, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 359, column: 6)
!6463 = !DILocation(line: 359, column: 12, scope: !6462)
!6464 = !DILocation(line: 359, column: 6, scope: !6440)
!6465 = !DILocation(line: 360, column: 20, scope: !6462)
!6466 = !DILocation(line: 360, column: 3, scope: !6462)
!6467 = !DILocation(line: 362, column: 2, scope: !6440)
!6468 = !DILocation(line: 363, column: 1, scope: !6440)
!6469 = distinct !DISubprogram(name: "perf_iommu_del", scope: !3, file: !3, line: 365, type: !3525, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6470)
!6470 = !{!6471, !6472, !6473, !6474, !6475}
!6471 = !DILocalVariable(name: "event", arg: 1, scope: !6469, file: !3, line: 365, type: !3442)
!6472 = !DILocalVariable(name: "flags", arg: 2, scope: !6469, file: !3, line: 365, type: !34)
!6473 = !DILocalVariable(name: "hwc", scope: !6469, file: !3, line: 367, type: !6395)
!6474 = !DILocalVariable(name: "perf_iommu", scope: !6469, file: !3, line: 368, type: !5587)
!6475 = !DILocalVariable(name: "__mptr", scope: !6476, file: !3, line: 369, type: !32)
!6476 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 369, column: 4)
!6477 = !DILocation(line: 365, column: 47, scope: !6469)
!6478 = !DILocation(line: 365, column: 58, scope: !6469)
!6479 = !DILocation(line: 367, column: 2, scope: !6469)
!6480 = !DILocation(line: 367, column: 24, scope: !6469)
!6481 = !DILocation(line: 367, column: 31, scope: !6469)
!6482 = !DILocation(line: 367, column: 38, scope: !6469)
!6483 = !DILocation(line: 368, column: 2, scope: !6469)
!6484 = !DILocation(line: 368, column: 25, scope: !6469)
!6485 = !DILocation(line: 369, column: 4, scope: !6476)
!6486 = !DILocation(line: 369, column: 4, scope: !6469)
!6487 = !DILocation(line: 371, column: 18, scope: !6469)
!6488 = !DILocation(line: 371, column: 2, scope: !6469)
!6489 = !DILocation(line: 374, column: 29, scope: !6469)
!6490 = !DILocation(line: 375, column: 8, scope: !6469)
!6491 = !DILocation(line: 375, column: 13, scope: !6469)
!6492 = !DILocation(line: 375, column: 25, scope: !6469)
!6493 = !DILocation(line: 375, column: 30, scope: !6469)
!6494 = !DILocation(line: 374, column: 2, scope: !6469)
!6495 = !DILocation(line: 377, column: 29, scope: !6469)
!6496 = !DILocation(line: 377, column: 2, scope: !6469)
!6497 = !DILocation(line: 378, column: 1, scope: !6469)
!6498 = distinct !DISubprogram(name: "perf_iommu_start", scope: !3, file: !3, line: 277, type: !3525, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6499 = !{!6500, !6501, !6502, !6503, !6506, !6509, !6511, !6514, !6517}
!6500 = !DILocalVariable(name: "event", arg: 1, scope: !6498, file: !3, line: 277, type: !3442)
!6501 = !DILocalVariable(name: "flags", arg: 2, scope: !6498, file: !3, line: 277, type: !34)
!6502 = !DILocalVariable(name: "hwc", scope: !6498, file: !3, line: 279, type: !6395)
!6503 = !DILocalVariable(name: "__ret_warn_on", scope: !6504, file: !3, line: 281, type: !34)
!6504 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 281, column: 6)
!6505 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 281, column: 6)
!6506 = !DILocalVariable(name: "__flags", scope: !6507, file: !3, line: 281, type: !34)
!6507 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 281, column: 6)
!6508 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 281, column: 6)
!6509 = !DILocalVariable(name: "__ret_warn_on", scope: !6510, file: !3, line: 284, type: !34)
!6510 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 284, column: 2)
!6511 = !DILocalVariable(name: "__flags", scope: !6512, file: !3, line: 284, type: !34)
!6512 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 284, column: 2)
!6513 = distinct !DILexicalBlock(scope: !6510, file: !3, line: 284, column: 2)
!6514 = !DILocalVariable(name: "count", scope: !6515, file: !3, line: 295, type: !465)
!6515 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 294, column: 30)
!6516 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 294, column: 6)
!6517 = !DILocalVariable(name: "iommu", scope: !6515, file: !3, line: 296, type: !5593)
!6518 = !DILocation(line: 277, column: 49, scope: !6498)
!6519 = !DILocation(line: 277, column: 60, scope: !6498)
!6520 = !DILocation(line: 279, column: 2, scope: !6498)
!6521 = !DILocation(line: 279, column: 24, scope: !6498)
!6522 = !DILocation(line: 279, column: 31, scope: !6498)
!6523 = !DILocation(line: 279, column: 38, scope: !6498)
!6524 = !DILocation(line: 281, column: 6, scope: !6504)
!6525 = !DILocation(line: 281, column: 6, scope: !6508)
!6526 = !DILocation(line: 281, column: 6, scope: !6507)
!6527 = !DILocation(line: 281, column: 6, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 281, column: 6)
!6529 = !DILocation(line: 281, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 281, column: 6)
!6531 = !{i64 2155427355, i64 2155427384, i64 2155427430, i64 2155427488, i64 2155427542, i64 2155427596, i64 2155427651, i64 2155427682, i64 2155427990, i64 2155427996, i64 2155428043, i64 2155428066, i64 2155428092}
!6532 = !DILocation(line: 281, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 281, column: 6)
!6534 = !DILocation(line: 281, column: 6, scope: !6505)
!6535 = !DILocation(line: 281, column: 6, scope: !6498)
!6536 = !DILocation(line: 282, column: 3, scope: !6505)
!6537 = !DILocation(line: 284, column: 2, scope: !6510)
!6538 = !DILocation(line: 284, column: 2, scope: !6513)
!6539 = !DILocation(line: 284, column: 2, scope: !6512)
!6540 = !DILocation(line: 284, column: 2, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 284, column: 2)
!6542 = !DILocation(line: 284, column: 2, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 284, column: 2)
!6544 = !{i64 2155428900, i64 2155428929, i64 2155428975, i64 2155429033, i64 2155429087, i64 2155429141, i64 2155429196, i64 2155429227, i64 2155429535, i64 2155429541, i64 2155429588, i64 2155429611, i64 2155429637}
!6545 = !DILocation(line: 284, column: 2, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 284, column: 2)
!6547 = !DILocation(line: 284, column: 2, scope: !6498)
!6548 = !DILocation(line: 285, column: 2, scope: !6498)
!6549 = !DILocation(line: 285, column: 7, scope: !6498)
!6550 = !DILocation(line: 285, column: 13, scope: !6498)
!6551 = !DILocation(line: 292, column: 26, scope: !6498)
!6552 = !DILocation(line: 292, column: 2, scope: !6498)
!6553 = !DILocation(line: 294, column: 6, scope: !6516)
!6554 = !DILocation(line: 294, column: 12, scope: !6516)
!6555 = !DILocation(line: 294, column: 6, scope: !6498)
!6556 = !DILocation(line: 295, column: 3, scope: !6515)
!6557 = !DILocation(line: 295, column: 7, scope: !6515)
!6558 = !DILocation(line: 296, column: 3, scope: !6515)
!6559 = !DILocation(line: 296, column: 21, scope: !6515)
!6560 = !DILocation(line: 296, column: 48, scope: !6515)
!6561 = !DILocation(line: 296, column: 29, scope: !6515)
!6562 = !DILocation(line: 302, column: 24, scope: !6515)
!6563 = !DILocation(line: 302, column: 31, scope: !6515)
!6564 = !DILocation(line: 302, column: 36, scope: !6515)
!6565 = !DILocation(line: 302, column: 48, scope: !6515)
!6566 = !DILocation(line: 302, column: 53, scope: !6515)
!6567 = !DILocation(line: 302, column: 3, scope: !6515)
!6568 = !DILocation(line: 304, column: 2, scope: !6516)
!6569 = !DILocation(line: 304, column: 2, scope: !6515)
!6570 = !DILocation(line: 306, column: 29, scope: !6498)
!6571 = !DILocation(line: 306, column: 2, scope: !6498)
!6572 = !DILocation(line: 307, column: 1, scope: !6498)
!6573 = distinct !DISubprogram(name: "perf_iommu_stop", scope: !3, file: !3, line: 329, type: !3525, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6574)
!6574 = !{!6575, !6576, !6577, !6578, !6580}
!6575 = !DILocalVariable(name: "event", arg: 1, scope: !6573, file: !3, line: 329, type: !3442)
!6576 = !DILocalVariable(name: "flags", arg: 2, scope: !6573, file: !3, line: 329, type: !34)
!6577 = !DILocalVariable(name: "hwc", scope: !6573, file: !3, line: 331, type: !6395)
!6578 = !DILocalVariable(name: "__ret_warn_on", scope: !6579, file: !3, line: 344, type: !34)
!6579 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 344, column: 2)
!6580 = !DILocalVariable(name: "__flags", scope: !6581, file: !3, line: 344, type: !34)
!6581 = distinct !DILexicalBlock(scope: !6582, file: !3, line: 344, column: 2)
!6582 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 344, column: 2)
!6583 = !DILocation(line: 329, column: 48, scope: !6573)
!6584 = !DILocation(line: 329, column: 59, scope: !6573)
!6585 = !DILocation(line: 331, column: 2, scope: !6573)
!6586 = !DILocation(line: 331, column: 24, scope: !6573)
!6587 = !DILocation(line: 331, column: 31, scope: !6573)
!6588 = !DILocation(line: 331, column: 38, scope: !6573)
!6589 = !DILocation(line: 333, column: 6, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 333, column: 6)
!6591 = !DILocation(line: 333, column: 11, scope: !6590)
!6592 = !DILocation(line: 333, column: 17, scope: !6590)
!6593 = !DILocation(line: 333, column: 6, scope: !6573)
!6594 = !DILocation(line: 334, column: 3, scope: !6590)
!6595 = !DILocation(line: 340, column: 18, scope: !6573)
!6596 = !DILocation(line: 340, column: 2, scope: !6573)
!6597 = !DILocation(line: 341, column: 2, scope: !6573)
!6598 = !DILocation(line: 341, column: 7, scope: !6573)
!6599 = !DILocation(line: 341, column: 13, scope: !6573)
!6600 = !DILocation(line: 343, column: 27, scope: !6573)
!6601 = !DILocation(line: 343, column: 2, scope: !6573)
!6602 = !DILocation(line: 344, column: 2, scope: !6579)
!6603 = !DILocation(line: 344, column: 2, scope: !6582)
!6604 = !DILocation(line: 344, column: 2, scope: !6581)
!6605 = !DILocation(line: 344, column: 2, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 344, column: 2)
!6607 = !DILocation(line: 344, column: 2, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 344, column: 2)
!6609 = !{i64 2155431206, i64 2155431235, i64 2155431281, i64 2155431339, i64 2155431393, i64 2155431447, i64 2155431502, i64 2155431533, i64 2155431841, i64 2155431847, i64 2155431894, i64 2155431917, i64 2155431943}
!6610 = !DILocation(line: 344, column: 2, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 344, column: 2)
!6612 = !DILocation(line: 344, column: 2, scope: !6573)
!6613 = !DILocation(line: 345, column: 2, scope: !6573)
!6614 = !DILocation(line: 345, column: 7, scope: !6573)
!6615 = !DILocation(line: 345, column: 13, scope: !6573)
!6616 = !DILocation(line: 346, column: 1, scope: !6573)
!6617 = distinct !DISubprogram(name: "perf_iommu_read", scope: !3, file: !3, line: 309, type: !3531, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6618 = !{!6619, !6620, !6621, !6622}
!6619 = !DILocalVariable(name: "event", arg: 1, scope: !6617, file: !3, line: 309, type: !3442)
!6620 = !DILocalVariable(name: "count", scope: !6617, file: !3, line: 311, type: !465)
!6621 = !DILocalVariable(name: "hwc", scope: !6617, file: !3, line: 312, type: !6395)
!6622 = !DILocalVariable(name: "iommu", scope: !6617, file: !3, line: 313, type: !5593)
!6623 = !DILocation(line: 309, column: 48, scope: !6617)
!6624 = !DILocation(line: 311, column: 2, scope: !6617)
!6625 = !DILocation(line: 311, column: 6, scope: !6617)
!6626 = !DILocation(line: 312, column: 2, scope: !6617)
!6627 = !DILocation(line: 312, column: 24, scope: !6617)
!6628 = !DILocation(line: 312, column: 31, scope: !6617)
!6629 = !DILocation(line: 312, column: 38, scope: !6617)
!6630 = !DILocation(line: 313, column: 2, scope: !6617)
!6631 = !DILocation(line: 313, column: 20, scope: !6617)
!6632 = !DILocation(line: 313, column: 47, scope: !6617)
!6633 = !DILocation(line: 313, column: 28, scope: !6617)
!6634 = !DILocation(line: 315, column: 27, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6617, file: !3, line: 315, column: 6)
!6636 = !DILocation(line: 315, column: 34, scope: !6635)
!6637 = !DILocation(line: 315, column: 39, scope: !6635)
!6638 = !DILocation(line: 315, column: 51, scope: !6635)
!6639 = !DILocation(line: 315, column: 56, scope: !6635)
!6640 = !DILocation(line: 315, column: 6, scope: !6635)
!6641 = !DILocation(line: 315, column: 6, scope: !6617)
!6642 = !DILocation(line: 317, column: 3, scope: !6635)
!6643 = !DILocation(line: 320, column: 8, scope: !6617)
!6644 = !DILocation(line: 326, column: 2, scope: !6617)
!6645 = !DILocation(line: 327, column: 1, scope: !6617)
!6646 = distinct !DISubprogram(name: "csource_show", scope: !3, file: !3, line: 51, type: !276, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6647)
!6647 = !{!6648, !6649, !6650}
!6648 = !DILocalVariable(name: "dev", arg: 1, scope: !6646, file: !3, line: 51, type: !282)
!6649 = !DILocalVariable(name: "attr", arg: 2, scope: !6646, file: !3, line: 51, type: !5581)
!6650 = !DILocalVariable(name: "page", arg: 3, scope: !6646, file: !3, line: 51, type: !327)
!6651 = !DILocation(line: 51, column: 1, scope: !6646)
!6652 = !DILocation(line: 51, column: 1, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 51, column: 1)
!6654 = distinct !DISubprogram(name: "devid_show", scope: !3, file: !3, line: 52, type: !276, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6655)
!6655 = !{!6656, !6657, !6658}
!6656 = !DILocalVariable(name: "dev", arg: 1, scope: !6654, file: !3, line: 52, type: !282)
!6657 = !DILocalVariable(name: "attr", arg: 2, scope: !6654, file: !3, line: 52, type: !5581)
!6658 = !DILocalVariable(name: "page", arg: 3, scope: !6654, file: !3, line: 52, type: !327)
!6659 = !DILocation(line: 52, column: 1, scope: !6654)
!6660 = !DILocation(line: 52, column: 1, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6654, file: !3, line: 52, column: 1)
!6662 = distinct !DISubprogram(name: "pasid_show", scope: !3, file: !3, line: 54, type: !276, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6663 = !{!6664, !6665, !6666}
!6664 = !DILocalVariable(name: "dev", arg: 1, scope: !6662, file: !3, line: 54, type: !282)
!6665 = !DILocalVariable(name: "attr", arg: 2, scope: !6662, file: !3, line: 54, type: !5581)
!6666 = !DILocalVariable(name: "page", arg: 3, scope: !6662, file: !3, line: 54, type: !327)
!6667 = !DILocation(line: 54, column: 1, scope: !6662)
!6668 = !DILocation(line: 54, column: 1, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 54, column: 1)
!6670 = distinct !DISubprogram(name: "domid_show", scope: !3, file: !3, line: 53, type: !276, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6671)
!6671 = !{!6672, !6673, !6674}
!6672 = !DILocalVariable(name: "dev", arg: 1, scope: !6670, file: !3, line: 53, type: !282)
!6673 = !DILocalVariable(name: "attr", arg: 2, scope: !6670, file: !3, line: 53, type: !5581)
!6674 = !DILocalVariable(name: "page", arg: 3, scope: !6670, file: !3, line: 53, type: !327)
!6675 = !DILocation(line: 53, column: 1, scope: !6670)
!6676 = !DILocation(line: 53, column: 1, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6670, file: !3, line: 53, column: 1)
!6678 = distinct !DISubprogram(name: "devid_mask_show", scope: !3, file: !3, line: 55, type: !276, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6679 = !{!6680, !6681, !6682}
!6680 = !DILocalVariable(name: "dev", arg: 1, scope: !6678, file: !3, line: 55, type: !282)
!6681 = !DILocalVariable(name: "attr", arg: 2, scope: !6678, file: !3, line: 55, type: !5581)
!6682 = !DILocalVariable(name: "page", arg: 3, scope: !6678, file: !3, line: 55, type: !327)
!6683 = !DILocation(line: 55, column: 1, scope: !6678)
!6684 = !DILocation(line: 55, column: 1, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 55, column: 1)
!6686 = distinct !DISubprogram(name: "pasid_mask_show", scope: !3, file: !3, line: 57, type: !276, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6687 = !{!6688, !6689, !6690}
!6688 = !DILocalVariable(name: "dev", arg: 1, scope: !6686, file: !3, line: 57, type: !282)
!6689 = !DILocalVariable(name: "attr", arg: 2, scope: !6686, file: !3, line: 57, type: !5581)
!6690 = !DILocalVariable(name: "page", arg: 3, scope: !6686, file: !3, line: 57, type: !327)
!6691 = !DILocation(line: 57, column: 1, scope: !6686)
!6692 = !DILocation(line: 57, column: 1, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6686, file: !3, line: 57, column: 1)
!6694 = distinct !DISubprogram(name: "domid_mask_show", scope: !3, file: !3, line: 56, type: !276, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6695)
!6695 = !{!6696, !6697, !6698}
!6696 = !DILocalVariable(name: "dev", arg: 1, scope: !6694, file: !3, line: 56, type: !282)
!6697 = !DILocalVariable(name: "attr", arg: 2, scope: !6694, file: !3, line: 56, type: !5581)
!6698 = !DILocalVariable(name: "page", arg: 3, scope: !6694, file: !3, line: 56, type: !327)
!6699 = !DILocation(line: 56, column: 1, scope: !6694)
!6700 = !DILocation(line: 56, column: 1, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 56, column: 1)
!6702 = distinct !DISubprogram(name: "_iommu_cpumask_show", scope: !3, file: !3, line: 134, type: !276, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6703)
!6703 = !{!6704, !6705, !6706}
!6704 = !DILocalVariable(name: "dev", arg: 1, scope: !6702, file: !3, line: 134, type: !282)
!6705 = !DILocalVariable(name: "attr", arg: 2, scope: !6702, file: !3, line: 135, type: !5581)
!6706 = !DILocalVariable(name: "buf", arg: 3, scope: !6702, file: !3, line: 136, type: !327)
!6707 = !DILocation(line: 134, column: 51, scope: !6702)
!6708 = !DILocation(line: 135, column: 33, scope: !6702)
!6709 = !DILocation(line: 136, column: 14, scope: !6702)
!6710 = !DILocation(line: 138, column: 39, scope: !6702)
!6711 = !DILocation(line: 138, column: 9, scope: !6702)
!6712 = !DILocation(line: 138, column: 2, scope: !6702)
!6713 = distinct !DISubprogram(name: "cpumap_print_to_pagebuf", scope: !1450, file: !1450, line: 1167, type: !6714, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6718)
!6714 = !DISubroutineType(types: !6715)
!6715 = !{!278, !729, !327, !6716}
!6716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6717, size: 64)
!6717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!6718 = !{!6719, !6720, !6721}
!6719 = !DILocalVariable(name: "list", arg: 1, scope: !6713, file: !1450, line: 1167, type: !729)
!6720 = !DILocalVariable(name: "buf", arg: 2, scope: !6713, file: !1450, line: 1167, type: !327)
!6721 = !DILocalVariable(name: "mask", arg: 3, scope: !6713, file: !1450, line: 1167, type: !6716)
!6722 = !DILocation(line: 1167, column: 30, scope: !6713)
!6723 = !DILocation(line: 1167, column: 42, scope: !6713)
!6724 = !DILocation(line: 1167, column: 69, scope: !6713)
!6725 = !DILocation(line: 1169, column: 33, scope: !6713)
!6726 = !DILocation(line: 1169, column: 39, scope: !6713)
!6727 = !DILocation(line: 1169, column: 44, scope: !6713)
!6728 = !DILocation(line: 1170, column: 11, scope: !6713)
!6729 = !DILocation(line: 1169, column: 9, scope: !6713)
!6730 = !DILocation(line: 1169, column: 2, scope: !6713)
!6731 = !DISubprogram(name: "bitmap_print_to_pagebuf", scope: !6732, file: !6732, line: 232, type: !6733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6732 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6733 = !DISubroutineType(types: !6734)
!6734 = !{!34, !729, !327, !6735, !34}
!6735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!6736 = distinct !DISubprogram(name: "is_sampling_event", scope: !157, file: !157, line: 1378, type: !6737, scopeLine: 1379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6739)
!6737 = !DISubroutineType(types: !6738)
!6738 = !{!729, !3442}
!6739 = !{!6740}
!6740 = !DILocalVariable(name: "event", arg: 1, scope: !6736, file: !157, line: 1378, type: !3442)
!6741 = !DILocation(line: 1378, column: 57, scope: !6736)
!6742 = !DILocation(line: 1380, column: 9, scope: !6736)
!6743 = !DILocation(line: 1380, column: 16, scope: !6736)
!6744 = !DILocation(line: 1380, column: 21, scope: !6736)
!6745 = !DILocation(line: 1380, column: 35, scope: !6736)
!6746 = !DILocation(line: 1380, column: 2, scope: !6736)
!6747 = distinct !DISubprogram(name: "get_next_avail_iommu_bnk_cntr", scope: !3, file: !3, line: 153, type: !3512, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6748 = !{!6749, !6750, !6751, !6753, !6754, !6755, !6756, !6757, !6758, !6759, !6760, !6763, !6764, !6765, !6768}
!6749 = !DILocalVariable(name: "event", arg: 1, scope: !6747, file: !3, line: 153, type: !3442)
!6750 = !DILocalVariable(name: "piommu", scope: !6747, file: !3, line: 155, type: !5587)
!6751 = !DILocalVariable(name: "__mptr", scope: !6752, file: !3, line: 155, type: !32)
!6752 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 155, column: 34)
!6753 = !DILocalVariable(name: "max_cntrs", scope: !6747, file: !3, line: 156, type: !34)
!6754 = !DILocalVariable(name: "max_banks", scope: !6747, file: !3, line: 157, type: !34)
!6755 = !DILocalVariable(name: "shift", scope: !6747, file: !3, line: 158, type: !461)
!6756 = !DILocalVariable(name: "bank", scope: !6747, file: !3, line: 158, type: !461)
!6757 = !DILocalVariable(name: "cntr", scope: !6747, file: !3, line: 158, type: !461)
!6758 = !DILocalVariable(name: "flags", scope: !6747, file: !3, line: 159, type: !51)
!6759 = !DILocalVariable(name: "retval", scope: !6747, file: !3, line: 160, type: !34)
!6760 = !DILocalVariable(name: "__dummy", scope: !6761, file: !3, line: 162, type: !51)
!6761 = distinct !DILexicalBlock(scope: !6762, file: !3, line: 162, column: 2)
!6762 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 162, column: 2)
!6763 = !DILocalVariable(name: "__dummy2", scope: !6761, file: !3, line: 162, type: !51)
!6764 = !DILabel(scope: !6747, name: "out", file: !3, line: 179)
!6765 = !DILocalVariable(name: "__dummy", scope: !6766, file: !3, line: 180, type: !51)
!6766 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 180, column: 2)
!6767 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 180, column: 2)
!6768 = !DILocalVariable(name: "__dummy2", scope: !6766, file: !3, line: 180, type: !51)
!6769 = !DILocation(line: 153, column: 61, scope: !6747)
!6770 = !DILocation(line: 155, column: 2, scope: !6747)
!6771 = !DILocation(line: 155, column: 25, scope: !6747)
!6772 = !DILocation(line: 155, column: 34, scope: !6752)
!6773 = !DILocation(line: 155, column: 34, scope: !6747)
!6774 = !DILocation(line: 156, column: 2, scope: !6747)
!6775 = !DILocation(line: 156, column: 6, scope: !6747)
!6776 = !DILocation(line: 156, column: 18, scope: !6747)
!6777 = !DILocation(line: 156, column: 26, scope: !6747)
!6778 = !DILocation(line: 157, column: 2, scope: !6747)
!6779 = !DILocation(line: 157, column: 6, scope: !6747)
!6780 = !DILocation(line: 157, column: 18, scope: !6747)
!6781 = !DILocation(line: 157, column: 26, scope: !6747)
!6782 = !DILocation(line: 158, column: 2, scope: !6747)
!6783 = !DILocation(line: 158, column: 6, scope: !6747)
!6784 = !DILocation(line: 158, column: 13, scope: !6747)
!6785 = !DILocation(line: 158, column: 19, scope: !6747)
!6786 = !DILocation(line: 159, column: 2, scope: !6747)
!6787 = !DILocation(line: 159, column: 16, scope: !6747)
!6788 = !DILocation(line: 160, column: 2, scope: !6747)
!6789 = !DILocation(line: 160, column: 6, scope: !6747)
!6790 = !DILocation(line: 162, column: 2, scope: !6747)
!6791 = !DILocation(line: 162, column: 2, scope: !6761)
!6792 = !DILocation(line: 162, column: 2, scope: !6762)
!6793 = !DILocation(line: 164, column: 12, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 164, column: 2)
!6795 = !DILocation(line: 164, column: 7, scope: !6794)
!6796 = !DILocation(line: 164, column: 17, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 164, column: 2)
!6798 = !DILocation(line: 164, column: 24, scope: !6797)
!6799 = !DILocation(line: 164, column: 22, scope: !6797)
!6800 = !DILocation(line: 164, column: 2, scope: !6794)
!6801 = !DILocation(line: 165, column: 13, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 165, column: 3)
!6803 = distinct !DILexicalBlock(scope: !6797, file: !3, line: 164, column: 43)
!6804 = !DILocation(line: 165, column: 8, scope: !6802)
!6805 = !DILocation(line: 165, column: 18, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6802, file: !3, line: 165, column: 3)
!6807 = !DILocation(line: 165, column: 25, scope: !6806)
!6808 = !DILocation(line: 165, column: 23, scope: !6806)
!6809 = !DILocation(line: 165, column: 3, scope: !6802)
!6810 = !DILocation(line: 166, column: 12, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6806, file: !3, line: 165, column: 44)
!6812 = !DILocation(line: 166, column: 20, scope: !6811)
!6813 = !DILocation(line: 166, column: 24, scope: !6811)
!6814 = !DILocation(line: 166, column: 17, scope: !6811)
!6815 = !DILocation(line: 166, column: 30, scope: !6811)
!6816 = !DILocation(line: 166, column: 28, scope: !6811)
!6817 = !DILocation(line: 166, column: 10, scope: !6811)
!6818 = !DILocation(line: 167, column: 8, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6811, file: !3, line: 167, column: 8)
!6820 = !DILocation(line: 167, column: 16, scope: !6819)
!6821 = !DILocation(line: 167, column: 35, scope: !6819)
!6822 = !DILocation(line: 167, column: 33, scope: !6819)
!6823 = !DILocation(line: 167, column: 8, scope: !6811)
!6824 = !DILocation(line: 168, column: 5, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6819, file: !3, line: 167, column: 51)
!6826 = !DILocation(line: 170, column: 33, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6819, file: !3, line: 169, column: 11)
!6828 = !DILocation(line: 170, column: 5, scope: !6827)
!6829 = !DILocation(line: 170, column: 13, scope: !6827)
!6830 = !DILocation(line: 170, column: 30, scope: !6827)
!6831 = !DILocation(line: 171, column: 28, scope: !6827)
!6832 = !DILocation(line: 171, column: 5, scope: !6827)
!6833 = !DILocation(line: 171, column: 12, scope: !6827)
!6834 = !DILocation(line: 171, column: 15, scope: !6827)
!6835 = !DILocation(line: 171, column: 26, scope: !6827)
!6836 = !DILocation(line: 172, column: 28, scope: !6827)
!6837 = !DILocation(line: 172, column: 5, scope: !6827)
!6838 = !DILocation(line: 172, column: 12, scope: !6827)
!6839 = !DILocation(line: 172, column: 15, scope: !6827)
!6840 = !DILocation(line: 172, column: 26, scope: !6827)
!6841 = !DILocation(line: 173, column: 12, scope: !6827)
!6842 = !DILocation(line: 174, column: 5, scope: !6827)
!6843 = !DILocation(line: 165, column: 40, scope: !6806)
!6844 = !DILocation(line: 165, column: 3, scope: !6806)
!6845 = distinct !{!6845, !6809, !6846, !5885, !5886}
!6846 = !DILocation(line: 176, column: 3, scope: !6802)
!6847 = !DILocation(line: 177, column: 2, scope: !6803)
!6848 = !DILocation(line: 164, column: 39, scope: !6797)
!6849 = !DILocation(line: 164, column: 2, scope: !6797)
!6850 = distinct !{!6850, !6800, !6851, !5885, !5886}
!6851 = !DILocation(line: 177, column: 2, scope: !6794)
!6852 = !DILocation(line: 178, column: 9, scope: !6747)
!6853 = !DILocation(line: 178, column: 2, scope: !6747)
!6854 = !DILocation(line: 179, column: 1, scope: !6747)
!6855 = !DILocation(line: 180, column: 2, scope: !6747)
!6856 = !DILocation(line: 180, column: 2, scope: !6766)
!6857 = !DILocation(line: 180, column: 2, scope: !6767)
!6858 = !DILocation(line: 181, column: 9, scope: !6747)
!6859 = !DILocation(line: 182, column: 1, scope: !6747)
!6860 = !DILocation(line: 181, column: 2, scope: !6747)
!6861 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6862, file: !6862, line: 32, type: !6863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6862 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6863 = !DISubroutineType(types: !6864)
!6864 = !{!51, !6865}
!6865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!6866 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6862, file: !6862, line: 43, type: !6867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6867 = !DISubroutineType(types: !6868)
!6868 = !{null, !6865, !51}
!6869 = distinct !DISubprogram(name: "clear_avail_iommu_bnk_cntr", scope: !3, file: !3, line: 184, type: !6870, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6872)
!6870 = !DISubroutineType(types: !6871)
!6871 = !{!34, !5587, !95, !95}
!6872 = !{!6873, !6874, !6875, !6876, !6877, !6878, !6879, !6880, !6883, !6884, !6887}
!6873 = !DILocalVariable(name: "perf_iommu", arg: 1, scope: !6869, file: !3, line: 184, type: !5587)
!6874 = !DILocalVariable(name: "bank", arg: 2, scope: !6869, file: !3, line: 185, type: !95)
!6875 = !DILocalVariable(name: "cntr", arg: 3, scope: !6869, file: !3, line: 185, type: !95)
!6876 = !DILocalVariable(name: "flags", scope: !6869, file: !3, line: 187, type: !51)
!6877 = !DILocalVariable(name: "max_banks", scope: !6869, file: !3, line: 188, type: !34)
!6878 = !DILocalVariable(name: "max_cntrs", scope: !6869, file: !3, line: 188, type: !34)
!6879 = !DILocalVariable(name: "shift", scope: !6869, file: !3, line: 189, type: !34)
!6880 = !DILocalVariable(name: "__dummy", scope: !6881, file: !3, line: 199, type: !51)
!6881 = distinct !DILexicalBlock(scope: !6882, file: !3, line: 199, column: 2)
!6882 = distinct !DILexicalBlock(scope: !6869, file: !3, line: 199, column: 2)
!6883 = !DILocalVariable(name: "__dummy2", scope: !6881, file: !3, line: 199, type: !51)
!6884 = !DILocalVariable(name: "__dummy", scope: !6885, file: !3, line: 201, type: !51)
!6885 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 201, column: 2)
!6886 = distinct !DILexicalBlock(scope: !6869, file: !3, line: 201, column: 2)
!6887 = !DILocalVariable(name: "__dummy2", scope: !6885, file: !3, line: 201, type: !51)
!6888 = !DILocation(line: 184, column: 62, scope: !6869)
!6889 = !DILocation(line: 185, column: 9, scope: !6869)
!6890 = !DILocation(line: 185, column: 18, scope: !6869)
!6891 = !DILocation(line: 187, column: 2, scope: !6869)
!6892 = !DILocation(line: 187, column: 16, scope: !6869)
!6893 = !DILocation(line: 188, column: 2, scope: !6869)
!6894 = !DILocation(line: 188, column: 6, scope: !6869)
!6895 = !DILocation(line: 188, column: 17, scope: !6869)
!6896 = !DILocation(line: 189, column: 2, scope: !6869)
!6897 = !DILocation(line: 189, column: 6, scope: !6869)
!6898 = !DILocation(line: 191, column: 14, scope: !6869)
!6899 = !DILocation(line: 191, column: 26, scope: !6869)
!6900 = !DILocation(line: 191, column: 12, scope: !6869)
!6901 = !DILocation(line: 192, column: 14, scope: !6869)
!6902 = !DILocation(line: 192, column: 26, scope: !6869)
!6903 = !DILocation(line: 192, column: 12, scope: !6869)
!6904 = !DILocation(line: 194, column: 7, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6869, file: !3, line: 194, column: 6)
!6906 = !DILocation(line: 194, column: 14, scope: !6905)
!6907 = !DILocation(line: 194, column: 12, scope: !6905)
!6908 = !DILocation(line: 194, column: 25, scope: !6905)
!6909 = !DILocation(line: 194, column: 29, scope: !6905)
!6910 = !DILocation(line: 194, column: 36, scope: !6905)
!6911 = !DILocation(line: 194, column: 34, scope: !6905)
!6912 = !DILocation(line: 194, column: 6, scope: !6869)
!6913 = !DILocation(line: 195, column: 3, scope: !6905)
!6914 = !DILocation(line: 197, column: 10, scope: !6869)
!6915 = !DILocation(line: 197, column: 17, scope: !6869)
!6916 = !DILocation(line: 197, column: 15, scope: !6869)
!6917 = !DILocation(line: 197, column: 25, scope: !6869)
!6918 = !DILocation(line: 197, column: 29, scope: !6869)
!6919 = !DILocation(line: 197, column: 22, scope: !6869)
!6920 = !DILocation(line: 197, column: 8, scope: !6869)
!6921 = !DILocation(line: 199, column: 2, scope: !6869)
!6922 = !DILocation(line: 199, column: 2, scope: !6881)
!6923 = !DILocation(line: 199, column: 2, scope: !6882)
!6924 = !DILocation(line: 200, column: 42, scope: !6869)
!6925 = !DILocation(line: 200, column: 40, scope: !6869)
!6926 = !DILocation(line: 200, column: 34, scope: !6869)
!6927 = !DILocation(line: 200, column: 2, scope: !6869)
!6928 = !DILocation(line: 200, column: 14, scope: !6869)
!6929 = !DILocation(line: 200, column: 31, scope: !6869)
!6930 = !DILocation(line: 201, column: 2, scope: !6869)
!6931 = !DILocation(line: 201, column: 2, scope: !6885)
!6932 = !DILocation(line: 201, column: 2, scope: !6886)
!6933 = !DILocation(line: 203, column: 2, scope: !6869)
!6934 = !DILocation(line: 204, column: 1, scope: !6869)
!6935 = !DISubprogram(name: "perf_event_update_userpage", scope: !157, file: !157, line: 1105, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6936 = distinct !DISubprogram(name: "perf_iommu_enable_event", scope: !3, file: !3, line: 237, type: !3531, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6937)
!6937 = !{!6938, !6939, !6940, !6941, !6942, !6943}
!6938 = !DILocalVariable(name: "ev", arg: 1, scope: !6936, file: !3, line: 237, type: !3442)
!6939 = !DILocalVariable(name: "iommu", scope: !6936, file: !3, line: 239, type: !5593)
!6940 = !DILocalVariable(name: "hwc", scope: !6936, file: !3, line: 240, type: !6395)
!6941 = !DILocalVariable(name: "bank", scope: !6936, file: !3, line: 241, type: !95)
!6942 = !DILocalVariable(name: "cntr", scope: !6936, file: !3, line: 242, type: !95)
!6943 = !DILocalVariable(name: "reg", scope: !6936, file: !3, line: 243, type: !465)
!6944 = !DILocation(line: 237, column: 56, scope: !6936)
!6945 = !DILocation(line: 239, column: 2, scope: !6936)
!6946 = !DILocation(line: 239, column: 20, scope: !6936)
!6947 = !DILocation(line: 239, column: 47, scope: !6936)
!6948 = !DILocation(line: 239, column: 28, scope: !6936)
!6949 = !DILocation(line: 240, column: 2, scope: !6936)
!6950 = !DILocation(line: 240, column: 24, scope: !6936)
!6951 = !DILocation(line: 240, column: 31, scope: !6936)
!6952 = !DILocation(line: 240, column: 35, scope: !6936)
!6953 = !DILocation(line: 241, column: 2, scope: !6936)
!6954 = !DILocation(line: 241, column: 5, scope: !6936)
!6955 = !DILocation(line: 241, column: 12, scope: !6936)
!6956 = !DILocation(line: 241, column: 17, scope: !6936)
!6957 = !DILocation(line: 242, column: 2, scope: !6936)
!6958 = !DILocation(line: 242, column: 5, scope: !6936)
!6959 = !DILocation(line: 242, column: 12, scope: !6936)
!6960 = !DILocation(line: 242, column: 17, scope: !6936)
!6961 = !DILocation(line: 243, column: 2, scope: !6936)
!6962 = !DILocation(line: 243, column: 6, scope: !6936)
!6963 = !DILocation(line: 245, column: 8, scope: !6936)
!6964 = !DILocation(line: 245, column: 6, scope: !6936)
!6965 = !DILocation(line: 246, column: 23, scope: !6936)
!6966 = !DILocation(line: 246, column: 30, scope: !6936)
!6967 = !DILocation(line: 246, column: 36, scope: !6936)
!6968 = !DILocation(line: 246, column: 2, scope: !6936)
!6969 = !DILocation(line: 248, column: 8, scope: !6936)
!6970 = !DILocation(line: 248, column: 6, scope: !6936)
!6971 = !DILocation(line: 249, column: 8, scope: !6936)
!6972 = !DILocation(line: 249, column: 26, scope: !6936)
!6973 = !DILocation(line: 249, column: 30, scope: !6936)
!6974 = !DILocation(line: 249, column: 23, scope: !6936)
!6975 = !DILocation(line: 249, column: 6, scope: !6936)
!6976 = !DILocation(line: 250, column: 6, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6936, file: !3, line: 250, column: 6)
!6978 = !DILocation(line: 250, column: 6, scope: !6936)
!6979 = !DILocation(line: 251, column: 7, scope: !6977)
!6980 = !DILocation(line: 251, column: 3, scope: !6977)
!6981 = !DILocation(line: 252, column: 23, scope: !6936)
!6982 = !DILocation(line: 252, column: 30, scope: !6936)
!6983 = !DILocation(line: 252, column: 36, scope: !6936)
!6984 = !DILocation(line: 252, column: 2, scope: !6936)
!6985 = !DILocation(line: 254, column: 8, scope: !6936)
!6986 = !DILocation(line: 254, column: 6, scope: !6936)
!6987 = !DILocation(line: 255, column: 8, scope: !6936)
!6988 = !DILocation(line: 255, column: 26, scope: !6936)
!6989 = !DILocation(line: 255, column: 30, scope: !6936)
!6990 = !DILocation(line: 255, column: 23, scope: !6936)
!6991 = !DILocation(line: 255, column: 6, scope: !6936)
!6992 = !DILocation(line: 256, column: 6, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6936, file: !3, line: 256, column: 6)
!6994 = !DILocation(line: 256, column: 6, scope: !6936)
!6995 = !DILocation(line: 257, column: 7, scope: !6993)
!6996 = !DILocation(line: 257, column: 3, scope: !6993)
!6997 = !DILocation(line: 258, column: 23, scope: !6936)
!6998 = !DILocation(line: 258, column: 30, scope: !6936)
!6999 = !DILocation(line: 258, column: 36, scope: !6936)
!7000 = !DILocation(line: 258, column: 2, scope: !6936)
!7001 = !DILocation(line: 260, column: 8, scope: !6936)
!7002 = !DILocation(line: 260, column: 6, scope: !6936)
!7003 = !DILocation(line: 261, column: 8, scope: !6936)
!7004 = !DILocation(line: 261, column: 26, scope: !6936)
!7005 = !DILocation(line: 261, column: 30, scope: !6936)
!7006 = !DILocation(line: 261, column: 23, scope: !6936)
!7007 = !DILocation(line: 261, column: 6, scope: !6936)
!7008 = !DILocation(line: 262, column: 6, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !6936, file: !3, line: 262, column: 6)
!7010 = !DILocation(line: 262, column: 6, scope: !6936)
!7011 = !DILocation(line: 263, column: 7, scope: !7009)
!7012 = !DILocation(line: 263, column: 3, scope: !7009)
!7013 = !DILocation(line: 264, column: 23, scope: !6936)
!7014 = !DILocation(line: 264, column: 30, scope: !6936)
!7015 = !DILocation(line: 264, column: 36, scope: !6936)
!7016 = !DILocation(line: 264, column: 2, scope: !6936)
!7017 = !DILocation(line: 265, column: 1, scope: !6936)
!7018 = distinct !DISubprogram(name: "perf_event_2_iommu", scope: !3, file: !3, line: 232, type: !7019, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7021)
!7019 = !DISubroutineType(types: !7020)
!7020 = !{!5593, !3442}
!7021 = !{!7022, !7023}
!7022 = !DILocalVariable(name: "ev", arg: 1, scope: !7018, file: !3, line: 232, type: !3442)
!7023 = !DILocalVariable(name: "__mptr", scope: !7024, file: !3, line: 234, type: !32)
!7024 = distinct !DILexicalBlock(scope: !7018, file: !3, line: 234, column: 10)
!7025 = !DILocation(line: 232, column: 71, scope: !7018)
!7026 = !DILocation(line: 234, column: 10, scope: !7024)
!7027 = !DILocation(line: 234, column: 10, scope: !7018)
!7028 = !DILocation(line: 234, column: 62, scope: !7018)
!7029 = !DILocation(line: 234, column: 2, scope: !7018)
!7030 = !DISubprogram(name: "amd_iommu_pc_set_reg", scope: !5595, file: !5595, line: 202, type: !7031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7031 = !DISubroutineType(types: !7032)
!7032 = !{!34, !5593, !95, !95, !95, !5495}
!7033 = distinct !DISubprogram(name: "perf_iommu_disable_event", scope: !3, file: !3, line: 267, type: !3531, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7034)
!7034 = !{!7035, !7036, !7037, !7038}
!7035 = !DILocalVariable(name: "event", arg: 1, scope: !7033, file: !3, line: 267, type: !3442)
!7036 = !DILocalVariable(name: "iommu", scope: !7033, file: !3, line: 269, type: !5593)
!7037 = !DILocalVariable(name: "hwc", scope: !7033, file: !3, line: 270, type: !6395)
!7038 = !DILocalVariable(name: "reg", scope: !7033, file: !3, line: 271, type: !465)
!7039 = !DILocation(line: 267, column: 57, scope: !7033)
!7040 = !DILocation(line: 269, column: 2, scope: !7033)
!7041 = !DILocation(line: 269, column: 20, scope: !7033)
!7042 = !DILocation(line: 269, column: 47, scope: !7033)
!7043 = !DILocation(line: 269, column: 28, scope: !7033)
!7044 = !DILocation(line: 270, column: 2, scope: !7033)
!7045 = !DILocation(line: 270, column: 24, scope: !7033)
!7046 = !DILocation(line: 270, column: 31, scope: !7033)
!7047 = !DILocation(line: 270, column: 38, scope: !7033)
!7048 = !DILocation(line: 271, column: 2, scope: !7033)
!7049 = !DILocation(line: 271, column: 6, scope: !7033)
!7050 = !DILocation(line: 273, column: 23, scope: !7033)
!7051 = !DILocation(line: 273, column: 30, scope: !7033)
!7052 = !DILocation(line: 273, column: 35, scope: !7033)
!7053 = !DILocation(line: 273, column: 47, scope: !7033)
!7054 = !DILocation(line: 273, column: 52, scope: !7033)
!7055 = !DILocation(line: 273, column: 2, scope: !7033)
!7056 = !DILocation(line: 275, column: 1, scope: !7033)
!7057 = !DISubprogram(name: "amd_iommu_pc_get_reg", scope: !5595, file: !5595, line: 204, type: !7031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7058 = distinct !DISubprogram(name: "local_add", scope: !3251, file: !3251, line: 31, type: !7059, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7062)
!7059 = !DISubroutineType(types: !7060)
!7060 = !{null, !281, !7061}
!7061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!7062 = !{!7063, !7064}
!7063 = !DILocalVariable(name: "i", arg: 1, scope: !7058, file: !3251, line: 31, type: !281)
!7064 = !DILocalVariable(name: "l", arg: 2, scope: !7058, file: !3251, line: 31, type: !7061)
!7065 = !DILocation(line: 31, column: 35, scope: !7058)
!7066 = !DILocation(line: 31, column: 47, scope: !7058)
!7067 = !DILocation(line: 34, column: 16, scope: !7058)
!7068 = !DILocation(line: 34, column: 19, scope: !7058)
!7069 = !DILocation(line: 34, column: 21, scope: !7058)
!7070 = !DILocation(line: 35, column: 16, scope: !7058)
!7071 = !DILocation(line: 33, column: 2, scope: !7058)
!7072 = !{i64 2154726798}
!7073 = !DILocation(line: 36, column: 1, scope: !7058)
!7074 = distinct !DISubprogram(name: "__list_add", scope: !6377, file: !6377, line: 146, type: !7075, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7077)
!7075 = !DISubroutineType(types: !7076)
!7076 = !{null, !112, !112, !112}
!7077 = !{!7078, !7079, !7080}
!7078 = !DILocalVariable(name: "new", arg: 1, scope: !7074, file: !6377, line: 146, type: !112)
!7079 = !DILocalVariable(name: "prev", arg: 2, scope: !7074, file: !6377, line: 147, type: !112)
!7080 = !DILocalVariable(name: "next", arg: 3, scope: !7074, file: !6377, line: 148, type: !112)
!7081 = !DILocation(line: 146, column: 49, scope: !7074)
!7082 = !DILocation(line: 147, column: 28, scope: !7074)
!7083 = !DILocation(line: 148, column: 28, scope: !7074)
!7084 = !DILocation(line: 150, column: 24, scope: !7085)
!7085 = distinct !DILexicalBlock(scope: !7074, file: !6377, line: 150, column: 6)
!7086 = !DILocation(line: 150, column: 29, scope: !7085)
!7087 = !DILocation(line: 150, column: 35, scope: !7085)
!7088 = !DILocation(line: 150, column: 7, scope: !7085)
!7089 = !DILocation(line: 150, column: 6, scope: !7074)
!7090 = !DILocation(line: 151, column: 3, scope: !7085)
!7091 = !DILocation(line: 153, column: 15, scope: !7074)
!7092 = !DILocation(line: 153, column: 2, scope: !7074)
!7093 = !DILocation(line: 153, column: 8, scope: !7074)
!7094 = !DILocation(line: 153, column: 13, scope: !7074)
!7095 = !DILocation(line: 154, column: 14, scope: !7074)
!7096 = !DILocation(line: 154, column: 2, scope: !7074)
!7097 = !DILocation(line: 154, column: 7, scope: !7074)
!7098 = !DILocation(line: 154, column: 12, scope: !7074)
!7099 = !DILocation(line: 155, column: 14, scope: !7074)
!7100 = !DILocation(line: 155, column: 2, scope: !7074)
!7101 = !DILocation(line: 155, column: 7, scope: !7074)
!7102 = !DILocation(line: 155, column: 12, scope: !7074)
!7103 = !DILocation(line: 156, column: 2, scope: !7074)
!7104 = !DILocation(line: 156, column: 2, scope: !7105)
!7105 = distinct !DILexicalBlock(scope: !7074, file: !6377, line: 156, column: 2)
!7106 = !DILocation(line: 156, column: 2, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7105, file: !6377, line: 156, column: 2)
!7108 = !DILocation(line: 156, column: 2, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7105, file: !6377, line: 156, column: 2)
!7110 = !DILocation(line: 157, column: 1, scope: !7074)
!7111 = distinct !DISubprogram(name: "__list_add_valid", scope: !6377, file: !6377, line: 128, type: !7112, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7114)
!7112 = !DISubroutineType(types: !7113)
!7113 = !{!729, !112, !112, !112}
!7114 = !{!7115, !7116, !7117}
!7115 = !DILocalVariable(name: "new", arg: 1, scope: !7111, file: !6377, line: 128, type: !112)
!7116 = !DILocalVariable(name: "prev", arg: 2, scope: !7111, file: !6377, line: 129, type: !112)
!7117 = !DILocalVariable(name: "next", arg: 3, scope: !7111, file: !6377, line: 130, type: !112)
!7118 = !DILocation(line: 128, column: 55, scope: !7111)
!7119 = !DILocation(line: 129, column: 23, scope: !7111)
!7120 = !DILocation(line: 130, column: 23, scope: !7111)
!7121 = !DILocation(line: 132, column: 2, scope: !7111)
!7122 = distinct !DISubprogram(name: "set_bit", scope: !7123, file: !7123, line: 26, type: !7124, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7128)
!7123 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7124 = !DISubroutineType(types: !7125)
!7125 = !{null, !281, !7126}
!7126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7127, size: 64)
!7127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!7128 = !{!7129, !7130}
!7129 = !DILocalVariable(name: "nr", arg: 1, scope: !7122, file: !7123, line: 26, type: !281)
!7130 = !DILocalVariable(name: "addr", arg: 2, scope: !7122, file: !7123, line: 26, type: !7126)
!7131 = !DILocation(line: 26, column: 42, scope: !7122)
!7132 = !DILocation(line: 26, column: 70, scope: !7122)
!7133 = !DILocation(line: 28, column: 26, scope: !7122)
!7134 = !DILocation(line: 28, column: 33, scope: !7122)
!7135 = !DILocation(line: 28, column: 31, scope: !7122)
!7136 = !DILocation(line: 28, column: 2, scope: !7122)
!7137 = !DILocation(line: 29, column: 15, scope: !7122)
!7138 = !DILocation(line: 29, column: 19, scope: !7122)
!7139 = !DILocation(line: 29, column: 2, scope: !7122)
!7140 = !DILocation(line: 30, column: 1, scope: !7122)
!7141 = distinct !DISubprogram(name: "cpumask_check", scope: !1450, file: !1450, line: 148, type: !7142, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7144)
!7142 = !DISubroutineType(types: !7143)
!7143 = !{!7, !7}
!7144 = !{!7145}
!7145 = !DILocalVariable(name: "cpu", arg: 1, scope: !7141, file: !1450, line: 148, type: !7)
!7146 = !DILocation(line: 148, column: 64, scope: !7141)
!7147 = !DILocation(line: 150, column: 20, scope: !7141)
!7148 = !DILocation(line: 150, column: 2, scope: !7141)
!7149 = !DILocation(line: 151, column: 9, scope: !7141)
!7150 = !DILocation(line: 151, column: 2, scope: !7141)
!7151 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7152, file: !7152, line: 80, type: !7153, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7158)
!7152 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7153 = !DISubroutineType(types: !7154)
!7154 = !{null, !7155, !47}
!7155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7156, size: 64)
!7156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7157)
!7157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7158 = !{!7159, !7160}
!7159 = !DILocalVariable(name: "v", arg: 1, scope: !7151, file: !7152, line: 80, type: !7155)
!7160 = !DILocalVariable(name: "size", arg: 2, scope: !7151, file: !7152, line: 80, type: !47)
!7161 = !DILocation(line: 80, column: 74, scope: !7151)
!7162 = !DILocation(line: 80, column: 84, scope: !7151)
!7163 = !DILocation(line: 82, column: 20, scope: !7151)
!7164 = !DILocation(line: 82, column: 23, scope: !7151)
!7165 = !DILocation(line: 82, column: 2, scope: !7151)
!7166 = !DILocation(line: 83, column: 2, scope: !7151)
!7167 = !DILocation(line: 84, column: 1, scope: !7151)
!7168 = distinct !DISubprogram(name: "arch_set_bit", scope: !7169, file: !7169, line: 52, type: !7124, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7170)
!7169 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7170 = !{!7171, !7172}
!7171 = !DILocalVariable(name: "nr", arg: 1, scope: !7168, file: !7169, line: 52, type: !281)
!7172 = !DILocalVariable(name: "addr", arg: 2, scope: !7168, file: !7169, line: 52, type: !7126)
!7173 = !DILocation(line: 52, column: 19, scope: !7168)
!7174 = !DILocation(line: 52, column: 47, scope: !7168)
!7175 = !DILocation(line: 54, column: 27, scope: !7176)
!7176 = distinct !DILexicalBlock(scope: !7168, file: !7169, line: 54, column: 6)
!7177 = !DILocation(line: 54, column: 6, scope: !7176)
!7178 = !DILocation(line: 54, column: 6, scope: !7168)
!7179 = !DILocation(line: 56, column: 6, scope: !7180)
!7180 = distinct !DILexicalBlock(scope: !7176, file: !7169, line: 54, column: 32)
!7181 = !DILocation(line: 57, column: 12, scope: !7180)
!7182 = !DILocation(line: 55, column: 3, scope: !7180)
!7183 = !{i64 2148048219, i64 2148048258, i64 2148048279, i64 2148048316, i64 2148048339, i64 2148048209}
!7184 = !DILocation(line: 59, column: 2, scope: !7180)
!7185 = !DILocation(line: 61, column: 8, scope: !7186)
!7186 = distinct !DILexicalBlock(scope: !7176, file: !7169, line: 59, column: 9)
!7187 = !DILocation(line: 61, column: 32, scope: !7186)
!7188 = !DILocation(line: 60, column: 3, scope: !7186)
!7189 = !{i64 2148048504, i64 2148048543, i64 2148048564, i64 2148048601, i64 2148048624, i64 2148048494}
!7190 = !DILocation(line: 63, column: 1, scope: !7168)
!7191 = distinct !DISubprogram(name: "kasan_check_write", scope: !7192, file: !7192, line: 44, type: !7193, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7195)
!7192 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7193 = !DISubroutineType(types: !7194)
!7194 = !{!729, !7155, !7}
!7195 = !{!7196, !7197}
!7196 = !DILocalVariable(name: "p", arg: 1, scope: !7191, file: !7192, line: 44, type: !7155)
!7197 = !DILocalVariable(name: "size", arg: 2, scope: !7191, file: !7192, line: 44, type: !7)
!7198 = !DILocation(line: 44, column: 59, scope: !7191)
!7199 = !DILocation(line: 44, column: 75, scope: !7191)
!7200 = !DILocation(line: 46, column: 2, scope: !7191)
!7201 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7202, file: !7202, line: 229, type: !7203, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7205)
!7202 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7203 = !DISubroutineType(types: !7204)
!7204 = !{null, !7155, !47, !34}
!7205 = !{!7206, !7207, !7208}
!7206 = !DILocalVariable(name: "ptr", arg: 1, scope: !7201, file: !7202, line: 229, type: !7155)
!7207 = !DILocalVariable(name: "size", arg: 2, scope: !7201, file: !7202, line: 229, type: !47)
!7208 = !DILocalVariable(name: "type", arg: 3, scope: !7201, file: !7202, line: 230, type: !34)
!7209 = !DILocation(line: 229, column: 60, scope: !7201)
!7210 = !DILocation(line: 229, column: 72, scope: !7201)
!7211 = !DILocation(line: 230, column: 15, scope: !7201)
!7212 = !DILocation(line: 230, column: 23, scope: !7201)
!7213 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1450, file: !1450, line: 140, type: !7214, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7216)
!7214 = !DISubroutineType(types: !7215)
!7215 = !{null, !7, !7}
!7216 = !{!7217, !7218}
!7217 = !DILocalVariable(name: "cpu", arg: 1, scope: !7213, file: !1450, line: 140, type: !7)
!7218 = !DILocalVariable(name: "bits", arg: 2, scope: !7213, file: !1450, line: 140, type: !7)
!7219 = !DILocation(line: 140, column: 60, scope: !7213)
!7220 = !DILocation(line: 140, column: 78, scope: !7213)
!7221 = !DILocation(line: 145, column: 1, scope: !7213)
